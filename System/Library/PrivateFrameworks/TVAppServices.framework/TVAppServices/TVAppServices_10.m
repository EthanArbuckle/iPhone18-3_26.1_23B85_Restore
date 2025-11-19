uint64_t sub_26CCF2A38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
  result = sub_26CD3AC4C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_26CD3B0FC();

    sub_26CD3A54C();
    result = sub_26CD3B13C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26CCF2C5C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26CD3AFDC() & 1;
  }
}

uint64_t sub_26CCF2CB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26CC2524C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_26CCF2D4C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v45 = MEMORY[0x277D84F90];
    sub_26CCEB308(0, v3, 0);
    v6 = v45;
    v7 = v2 + 56;
    v8 = -1 << *(v2 + 32);
    result = sub_26CD3AB6C();
    v9 = result;
    v10 = 0;
    v44 = a2 + 56;
    v37 = v2 + 64;
    v38 = v3;
    v39 = a2;
    v40 = v2 + 56;
    v41 = v2;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v2 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_34;
      }

      v42 = v10;
      v43 = *(v2 + 36);
      v14 = (*(v2 + 48) + 16 * v9);
      v16 = *v14;
      v15 = v14[1];
      if (*(a2 + 16))
      {
        v17 = *(a2 + 40);
        sub_26CD3B0FC();
        swift_bridgeObjectRetain_n();
        sub_26CD3A54C();
        v18 = sub_26CD3B13C();
        v19 = -1 << *(a2 + 32);
        v20 = v18 & ~v19;
        if ((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(a2 + 48) + 16 * v20);
            v23 = *v22 == v16 && v22[1] == v15;
            if (v23 || (sub_26CD3AFDC() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v24 = 1;
        }

        else
        {
LABEL_17:

          v24 = 0;
        }
      }

      else
      {

        v24 = 0;
      }

      v25 = v6;
      v46 = v6;
      v26 = *(v6 + 16);
      v27 = *(v25 + 24);
      v28 = v43;
      if (v26 >= v27 >> 1)
      {
        result = sub_26CCEB308((v27 > 1), v26 + 1, 1);
        v28 = v43;
        v25 = v46;
      }

      *(v25 + 16) = v26 + 1;
      v29 = v25 + 24 * v26;
      *(v29 + 32) = v16;
      *(v29 + 40) = v15;
      *(v29 + 48) = v24;
      v2 = v41;
      v11 = 1 << *(v41 + 32);
      if (v9 >= v11)
      {
        goto LABEL_35;
      }

      v7 = v40;
      v30 = *(v40 + 8 * v13);
      if ((v30 & (1 << v9)) == 0)
      {
        goto LABEL_36;
      }

      v6 = v25;
      if (v28 != *(v41 + 36))
      {
        goto LABEL_37;
      }

      v31 = v30 & (-2 << (v9 & 0x3F));
      if (v31)
      {
        v11 = __clz(__rbit64(v31)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v38;
        a2 = v39;
      }

      else
      {
        v32 = v13 << 6;
        v33 = v13 + 1;
        v12 = v38;
        v34 = (v37 + 8 * v13);
        a2 = v39;
        while (v33 < (v11 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_26CC2FADC(v9, v28, 0);
            v11 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_26CC2FADC(v9, v28, 0);
      }

LABEL_4:
      v10 = v42 + 1;
      v9 = v11;
      if (v42 + 1 == v12)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

uint64_t sub_26CCF3078(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D6AD2F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26CC197B4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for TimedMetadata()
{
  result = qword_2804BD960;
  if (!qword_2804BD960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CCF3174()
{
  result = sub_26CD3A44C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26CCF3378(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCF3398(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26CCF33E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCF3404(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_26CCF3448(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D6AD2F0](v2, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26CCDF144(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26CCF34F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC246B8;

  return sub_26CCF085C(a1, v4, v5, v7, v6);
}

uint64_t sub_26CCF35B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26CC37110;

  return sub_26CCF03F0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26CCF3688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD870, &unk_26CD47430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCF36F8(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = a3;
  v68 = a2;
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F98];
LABEL_16:
    v26 = v68[2];
    if (v26)
    {
      v27 = v68 + 5;
      v28 = MEMORY[0x277D84F90];
      do
      {
        if (v5[2])
        {
          v30 = *(v27 - 1);
          v29 = *v27;

          v31 = sub_26CC181C4(v30, v29);
          if (v32)
          {
            sub_26CC19A84(v5[7] + 40 * v31, &v70);
            sub_26CC2524C(&v70, v73);
            sub_26CC19A84(v73, &v70);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v74 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v28 = sub_26CCBEC4C(0, v28[2] + 1, 1, v28);
              v74 = v28;
            }

            v35 = v28[2];
            v34 = v28[3];
            if (v35 >= v34 >> 1)
            {
              v68 = sub_26CCBEC4C((v34 > 1), v35 + 1, 1, v28);
              v74 = v68;
            }

            else
            {
              v68 = v28;
            }

            v36 = *(&v71 + 1);
            v37 = v72;
            v38 = __swift_mutable_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
            v39 = *(*(v36 - 8) + 64);
            MEMORY[0x28223BE20](v38);
            v41 = &v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v42 + 16))(v41);
            sub_26CCF2CB4(v35, v41, &v74, v36, v37);
            __swift_destroy_boxed_opaque_existential_1(&v70);
            v43 = sub_26CC181C4(v30, v29);
            v45 = v44;

            if (v45)
            {
              v46 = swift_isUniquelyReferenced_nonNull_native();
              v69 = v5;
              if (!v46)
              {
                sub_26CD37230();
                v5 = v69;
              }

              v47 = *(v5[6] + 16 * v43 + 8);

              sub_26CC2524C((v5[7] + 40 * v43), &v70);
              sub_26CD382C8(v43, v5);
              __swift_destroy_boxed_opaque_existential_1(v73);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v73);
              v72 = 0;
              v70 = 0u;
              v71 = 0u;
            }

            v28 = v68;
            sub_26CC1B544(&v70, &qword_2804BD958, &unk_26CD47A00);
          }

          else
          {
          }
        }

        v27 += 2;
        --v26;
      }

      while (v26);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v48 = *(v67 + 16);
    if (v48)
    {
      v49 = (v67 + 40);
      do
      {
        if (v5[2])
        {
          v57 = *(v49 - 1);
          v58 = *v49;

          v59 = sub_26CC181C4(v57, v58);
          v61 = v60;

          if (v61)
          {
            sub_26CC19A84(v5[7] + 40 * v59, &v70);
            sub_26CC2524C(&v70, v73);
            sub_26CC19A84(v73, &v70);
            v62 = swift_isUniquelyReferenced_nonNull_native();
            v74 = v28;
            if ((v62 & 1) == 0)
            {
              v28 = sub_26CCBEC4C(0, v28[2] + 1, 1, v28);
              v74 = v28;
            }

            v64 = v28[2];
            v63 = v28[3];
            if (v64 >= v63 >> 1)
            {
              v28 = sub_26CCBEC4C((v63 > 1), v64 + 1, 1, v28);
              v74 = v28;
            }

            __swift_destroy_boxed_opaque_existential_1(v73);
            v50 = *(&v71 + 1);
            v51 = v72;
            v52 = __swift_mutable_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
            v53 = *(*(v50 - 8) + 64);
            MEMORY[0x28223BE20](v52);
            v55 = &v66 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v56 + 16))(v55);
            sub_26CCF2CB4(v64, v55, &v74, v50, v51);
            __swift_destroy_boxed_opaque_existential_1(&v70);
          }
        }

        v49 += 2;
        --v48;
      }

      while (v48);
    }

    return v28;
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v8 = v4[3];
    v9 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v8);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    sub_26CC19A84(v4, v73);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *&v70 = v5;
    v14 = sub_26CC181C4(v10, v12);
    v16 = v5[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v5[3] < v19)
    {
      sub_26CD3515C(v19, v13);
      v14 = sub_26CC181C4(v10, v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_47;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (v13)
    {
      goto LABEL_10;
    }

    v25 = v14;
    sub_26CD37230();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      v6 = v14;

      v5 = v70;
      v7 = (*(v70 + 56) + 40 * v6);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_26CC2524C(v73, v7);
      goto LABEL_4;
    }

LABEL_11:
    v5 = v70;
    *(v70 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v22 = (v5[6] + 16 * v14);
    *v22 = v10;
    v22[1] = v12;
    sub_26CC2524C(v73, v5[7] + 40 * v14);
    v23 = v5[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_46;
    }

    v5[2] = v24;
LABEL_4:
    v4 += 5;
    if (!--v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_26CD3B02C();
  __break(1u);
  return result;
}

void *sub_26CCF3D04(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = MEMORY[0x277D84FA0];
  v82 = MEMORY[0x277D84FA0];
  v73 = *(a1 + 16);
  if (v73)
  {
    v5 = (a1 + 32);
    v6 = v73;
    do
    {
      v7 = v5[3];
      v8 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v7);
      v9 = (*(v8 + 8))(v7, v8);
      sub_26CC197B4(&v76, v9, v10);

      v5 += 5;
      --v6;
    }

    while (v6);
  }

  v11 = *(a2 + 16);
  v12 = v82;
  if (!v11)
  {

    v75 = v4;
    v74 = MEMORY[0x277D84F90];
    if (!v73)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  v72[0] = v3;
  v13 = 0;
  v14 = (a2 + 32);
  v15 = v82 + 56;
  v74 = MEMORY[0x277D84F90];
  do
  {
    sub_26CC19A84(&v14[5 * v13], v79);
    v16 = v80;
    v17 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    if (*(v12 + 16) && (v21 = v18, v22 = *(v12 + 40), sub_26CD3B0FC(), sub_26CD3A54C(), v23 = sub_26CD3B13C(), v24 = -1 << *(v12 + 32), v25 = v23 & ~v24, ((*(v15 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
    {
      v26 = ~v24;
      while (1)
      {
        v27 = (*(v12 + 48) + 16 * v25);
        v28 = *v27 == v21 && v27[1] == v20;
        if (v28 || (sub_26CD3AFDC() & 1) != 0)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v15 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      sub_26CC19A84(v79, &v76);
      v29 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_26CCBEC4C(0, v74[2] + 1, 1, v74);
        v83[0] = v74;
      }

      v32 = v74[2];
      v31 = v74[3];
      if (v32 >= v31 >> 1)
      {
        v74 = sub_26CCBEC4C((v31 > 1), v32 + 1, 1, v74);
        v83[0] = v74;
      }

      v33 = v77;
      v34 = v78;
      v35 = __swift_mutable_project_boxed_opaque_existential_1(&v76, v77);
      v72[1] = v72;
      v36 = *(*(v33 - 8) + 64);
      MEMORY[0x28223BE20](v35);
      v38 = v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38);
      sub_26CCF2CB4(v32, v38, v83, v33, v34);
      __swift_destroy_boxed_opaque_existential_1(&v76);
    }

    else
    {
LABEL_6:
    }

    ++v13;
    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  while (v13 != v11);

  v75 = v4;
  do
  {
    v40 = v14[3];
    v41 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v40);
    v42 = (*(v41 + 8))(v40, v41);
    sub_26CC197B4(&v76, v42, v43);

    v14 += 5;
    --v11;
  }

  while (v11);
  v4 = v75;
  v3 = v72[0];
  if (v73)
  {
LABEL_28:
    v44 = 0;
    v45 = v3 + 32;
    v46 = v4 + 56;
    do
    {
      sub_26CC19A84(v45 + 40 * v44, v79);
      v47 = v80;
      v48 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v49 = (*(v48 + 8))(v47, v48);
      v51 = v50;
      if (*(v4 + 16) && (v52 = v49, v53 = *(v4 + 40), sub_26CD3B0FC(), sub_26CD3A54C(), v54 = sub_26CD3B13C(), v55 = -1 << *(v4 + 32), v56 = v54 & ~v55, ((*(v46 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0))
      {
        v57 = ~v55;
        while (1)
        {
          v58 = (*(v4 + 48) + 16 * v56);
          v59 = *v58 == v52 && v58[1] == v51;
          if (v59 || (sub_26CD3AFDC() & 1) != 0)
          {
            break;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v46 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_40:

        sub_26CC19A84(v79, &v76);
        v60 = v74;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v83[0] = v60;
        if ((v61 & 1) == 0)
        {
          v74 = sub_26CCBEC4C(0, v74[2] + 1, 1, v74);
          v83[0] = v74;
        }

        v63 = v74[2];
        v62 = v74[3];
        if (v63 >= v62 >> 1)
        {
          v74 = sub_26CCBEC4C((v62 > 1), v63 + 1, 1, v74);
          v83[0] = v74;
        }

        v64 = v77;
        v65 = v78;
        v66 = __swift_mutable_project_boxed_opaque_existential_1(&v76, v77);
        v67 = *(*(v64 - 8) + 64);
        MEMORY[0x28223BE20](v66);
        v69 = v72 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v70 + 16))(v69);
        sub_26CCF2CB4(v63, v69, v83, v64, v65);
        __swift_destroy_boxed_opaque_existential_1(&v76);
      }

      ++v44;
      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    while (v44 != v73);
  }

LABEL_45:

  return v74;
}

void sub_26CCF4354(uint64_t a1, void *a2, char a3, uint64_t a4, __int128 *a5)
{
  swift_beginAccess();
  v10 = *(*(a4 + 16) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(a4 + 16);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v13 + v12 * 8, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      v5 = v17;
      if (v16 == a1 && v17 == a2)
      {
        break;
      }

      v19 = sub_26CD3AFDC();

      if (v19)
      {
        goto LABEL_12;
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v12 += 5;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    sub_26CCEA8B4(v26, a5, &v23);
    if (!v24)
    {
      sub_26CC1B544(&v23, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v23, v25);
    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26CCF21C4(v20);
      *(a4 + 16) = v20;
    }

    if (v11 < v20[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v20[v12], v25);
      *(a4 + 16) = v20;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v5 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v5 postNotificationName:qword_280BB9BB8 object:a4];
    }
  }
}

unint64_t sub_26CCF45B4()
{
  result = qword_2804BD978;
  if (!qword_2804BD978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD978);
  }

  return result;
}

double TVAppPreferencesAccessor.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = [objc_opt_self() standardUserDefaults];
  *&result = 2;
  *(a1 + 8) = xmmword_26CD423B0;
  return result;
}

uint64_t sub_26CCF46C4()
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v4 = *v0;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;

  return MEMORY[0x2822009F8](sub_26CCF4760, 0, 0);
}

uint64_t sub_26CCF4760()
{
  v1 = v0[13];
  v2 = sub_26CD3A59C();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = sub_26CD3A5CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v0[5] = &type metadata for FeatureFlagManager;
  v0[6] = sub_26CC30530();
  *(v0 + 16) = 0;
  v7 = sub_26CD3A29C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v7)
  {
    if (!v6)
    {
      if (qword_280BBB5E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_26CCF4974;

      return TVBagService.bag.getter((v0 + 7));
    }
  }

  else if (!v6)
  {
    v10 = [objc_opt_self() app];
    v4 = sub_26CCB1F84(0xD000000000000019, 0x800000026CD4CD80);
    v6 = v11;
  }

  v12 = v0[12];

  v13 = v0[1];

  return v13(v4, v6);
}

uint64_t sub_26CCF4974()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_26CCF4C00;
  }

  else
  {
    v3 = sub_26CCF4A88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCF4A88()
{
  v2 = v0[11];
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_26CD3A3BC();
  v3 = sub_26CD3A07C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[12];
  if (v5 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    sub_26CC1B544(v6, &qword_2804BCA30, &qword_26CD3DA70);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v0[12];
    v7 = sub_26CD39FAC();
    v8 = v10;
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v11 = v0[12];

  v12 = v0[1];

  return v12(v7, v8);
}

uint64_t sub_26CCF4C00()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

void TVAppPreferencesAccessor.tvAppEnabledOverride.setter(char a1)
{
  v2 = *v1;
  if (a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26CD3A7FC();
  }

  v4 = sub_26CD3A59C();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t TVAppPreferences.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CCF4D74()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_26CD3A4FC();
  if (*(v2 + 16))
  {
    sub_26CC181C4(0xD00000000000001BLL, 0x800000026CD51970);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t TVAppPreferencesAccessor.protocolVersion.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 2 || (v2 = *(v0 + 16), v6 = *v0, v7 = *(v0 + 8), (sub_26CCF4D74() & 1) == 0))
  {
    v3 = sub_26CD3A59C();
    v4 = [v1 integerForKey_];

    if (v4)
    {
      return v4;
    }

    else
    {
      return 91;
    }
  }

  return v2;
}

uint64_t TVAppPreferencesAccessor.tvAppEnabledOverride.getter()
{
  v1 = *v0;
  v2 = sub_26CD3A59C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_26CC1B544(v8, &qword_2804BBDA8, &qword_26CD3D5F0);
    return 2;
  }
}

void sub_26CCF4FD4(_BYTE *a1, void **a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26CD3A7FC();
  }

  v4 = sub_26CD3A59C();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*TVAppPreferencesAccessor.tvAppEnabledOverride.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = TVAppPreferencesAccessor.tvAppEnabledOverride.getter();
  return sub_26CCF50D4;
}

uint64_t sub_26CCF50D4(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_26CD3A7FC();
  }

  v3 = *a1;
  v4 = sub_26CD3A59C();
  [v3 setObject:v2 forKey:v4];

  return swift_unknownObjectRelease();
}

unint64_t sub_26CCF5178()
{
  result = qword_2804BD980;
  if (!qword_2804BD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreferencesInput(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_26CCF5278(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD9A8, &unk_26CD47D50);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_26CC168C0(*(a1 + 56) + 32 * v15, v28);
        *&v27 = v17;
        *(&v27 + 1) = v18;
        v25[2] = v27;
        v26[0] = v28[0];
        v26[1] = v28[1];
        v19 = v27;
        sub_26CC331CC(v26, v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_26CC181C4(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v24;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_26CCF54DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_26CCCAD30(*(a1 + 48) + 40 * v14, v29);
        sub_26CC168C0(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_26CCCAD30(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_26CC168C0(v27 + 8, v22);
        sub_26CC1B544(v26, &qword_2804BD9A0, &unk_26CD47D40);
        v23 = v20;
        sub_26CC331CC(v22, v24);
        v15 = v23;
        sub_26CC331CC(v24, v25);
        sub_26CC331CC(v25, &v23);
        result = sub_26CC181C4(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_26CC331CC(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_26CC331CC(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_26CC1B544(v26, &qword_2804BD9A0, &unk_26CD47D40);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_26CCF57B8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD0, &qword_26CD3CF90);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_26CCCAD30(*(v1 + 48) + 40 * v17, v30);
    sub_26CC168C0(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_26CCCAD30(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_26CC1B544(v27, &qword_2804BD9A0, &unk_26CD47D40);

      goto LABEL_22;
    }

    sub_26CC168C0(v28 + 8, v26);
    sub_26CC1B544(v27, &qword_2804BD9A0, &unk_26CD47D40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_26CC181C4(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

id sub_26CCF5AD4()
{
  result = [objc_allocWithZone(MEMORY[0x277CEE5D0]) init];
  qword_2804D1558 = result;
  return result;
}

uint64_t sub_26CCF5B1C()
{
  v10 = sub_26CD3A9CC();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26CD3AA5C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26CD3A4CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_26CCF753C();
  sub_26CD3A4AC();
  v11 = MEMORY[0x277D84F90];
  sub_26CC1A3A8(&qword_2804BC370, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC378, &unk_26CD40020);
  sub_26CCF7588(&qword_2804BC380, &qword_2804BC378, &unk_26CD40020);
  sub_26CD3AB5C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85268], v10);
  result = sub_26CD3AA6C();
  qword_2804BD990 = result;
  return result;
}

void sub_26CCF5D6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v74 - v3;
  v5 = sub_26CD39D0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v74 - v11;
  v13 = sub_26CD3A07C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  if (byte_2804BD998 != 1)
  {
    v76 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v77 = v17;
    v78 = v15;
    v86 = 0;
    if (qword_2804BBA90 != -1)
    {
      swift_once();
    }

    v19 = qword_2804BD990;
    v20 = swift_allocObject();
    *(v20 + 16) = &v86;
    *(v20 + 24) = v0;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26CCF75DC;
    *(v21 + 24) = v20;
    v79 = v20;
    v84 = sub_26CCF75E4;
    v85 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26CCF5A98;
    v83 = &block_descriptor_10_0;
    v22 = _Block_copy(aBlock);
    v23 = v19;
    v24 = v0;

    dispatch_sync(v23, v22);

    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
    }

    else
    {
      if (v86)
      {
        v75 = v86;
        v25 = &selRef_dataWithJSONObject_options_error_;
        v81 = v24;
        v26 = [v24 request];
        sub_26CD39C6C();

        sub_26CD39C9C();
        v29 = *(v6 + 8);
        v28 = v6 + 8;
        v27 = v29;
        v29(v12, v5);
        v31 = v77;
        v30 = v78;
        if ((*(v77 + 48))(v4, 1, v78) != 1)
        {
          (*(v31 + 32))(v76, v4, v30);
          if (qword_2804BBA88 != -1)
          {
            swift_once();
          }

          v35 = *(off_2804BD988 + 2);
          if (v35)
          {
            v36 = off_2804BD988 + 32;
            v74[1] = off_2804BD988;

            v80 = v28;
            v37 = v10;
            do
            {
              sub_26CC19A84(v36, aBlock);
              v38 = v27;
              v39 = v83;
              v40 = v84;
              __swift_project_boxed_opaque_existential_1(aBlock, v83);
              v41 = v25;
              v42 = [v81 v25[71]];
              sub_26CD39C6C();

              v25 = v41;
              v43 = *(v40 + 2);
              v44 = v40;
              v27 = v38;
              v43(v37, v39, v44);
              __swift_destroy_boxed_opaque_existential_1(aBlock);
              v38(v37, v5);
              v36 += 40;
              --v35;
            }

            while (v35);
          }

          v45 = v75;
          v46 = [v75 headers];
          if (!v46 || (v47 = v46, v48 = sub_26CD3A4FC(), v47, v49 = sub_26CCF57B8(v48), , !v49))
          {
            sub_26CC31D94(MEMORY[0x277D84F90]);
          }

          v50 = v76;
          v51 = [v45 statusCode];
          v52 = objc_allocWithZone(MEMORY[0x277CCAA40]);
          v53 = sub_26CD39FCC();
          v54 = sub_26CD3A59C();
          v55 = MEMORY[0x277D837D0];
          v56 = sub_26CD3A4DC();

          v57 = [v52 initWithURL:v53 statusCode:v51 HTTPVersion:v54 headerFields:v56];

          if (v57)
          {
            v58 = [v45 body];
            v59 = v77;
            if (v58)
            {
              v60 = v58;
              v61 = sub_26CD3A0BC();
              v63 = v62;

              v64 = v81;
              v65 = [v81 client];
              if (v65)
              {
                v66 = v65;
                v67 = sub_26CD3A09C();
                [v66 URLProtocol:v64 didLoadData:v67];
                sub_26CC18C50(v61, v63);

                swift_unknownObjectRelease();
              }

              else
              {
                sub_26CC18C50(v61, v63);
              }
            }

            v69 = v81;
            v70 = [v81 client];
            if (v70)
            {
              [v70 URLProtocol:v69 didReceiveResponse:v57 cacheStoragePolicy:2];
              swift_unknownObjectRelease();
            }

            if (qword_2804BBA80 != -1)
            {
              swift_once();
            }

            v71 = [qword_2804D1558 executedObservable];
            [v71 sendResult_];

            v72 = v81;
            v73 = [v81 client];
            if (v73)
            {
              [v73 URLProtocolDidFinishLoading_];

              swift_unknownObjectRelease();
              (*(v59 + 8))(v50, v78);
            }

            else
            {
              (*(v59 + 8))(v50, v78);
            }
          }

          else
          {
            if (qword_280BBB6B8 != -1)
            {
              swift_once();
            }

            sub_26CD3A99C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_26CD3C1E0;
            *(v68 + 56) = v55;
            *(v68 + 64) = sub_26CC19E10();
            *(v68 + 32) = 0xD000000000000025;
            *(v68 + 40) = 0x800000026CD51A50;
            sub_26CD3A3DC();

            (*(v77 + 8))(v50, v78);
          }

          goto LABEL_16;
        }

        sub_26CC1B544(v4, &qword_2804BCA30, &qword_26CD3DA70);
        if (qword_280BBB6B8 != -1)
        {
          swift_once();
        }

        sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_26CD3C1E0;
        *(v32 + 56) = MEMORY[0x277D837D0];
        *(v32 + 64) = sub_26CC19E10();
        *(v32 + 32) = 0xD00000000000001FLL;
        *(v32 + 40) = 0x800000026CD51A30;
        sub_26CD3A3DC();

LABEL_15:

LABEL_16:
        v34 = v86;

        return;
      }

      if (qword_280BBB6B8 == -1)
      {
LABEL_14:
        sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_26CD3C1E0;
        *(v33 + 56) = MEMORY[0x277D837D0];
        *(v33 + 64) = sub_26CC19E10();
        *(v33 + 32) = 0xD00000000000001ALL;
        *(v33 + 40) = 0x800000026CD51A10;
        sub_26CD3A3DC();
        goto LABEL_15;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  v18 = objc_opt_self();
  do
  {
    [v18 sleepForTimeInterval_];
  }

  while ((byte_2804BD998 & 1) != 0);
}

void sub_26CCF6808(uint64_t a1, void *a2)
{
  v20 = a2;
  v19 = sub_26CD39D0C();
  v3 = *(v19 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804BBA78 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v7 = qword_2804D1550;
    v17 = a1;
    a1 = qword_2804D1550 >> 62 ? sub_26CD3ABAC() : *((qword_2804D1550 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!a1)
    {
      break;
    }

    v8 = 0;
    v18 = v7 & 0xC000000000000001;
    v9 = v3 + 1;
    while (1)
    {
      if (v18)
      {
        v10 = MEMORY[0x26D6AD660](v8, v7);
      }

      else
      {
        if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v7 + 8 * v8 + 32);
      }

      v3 = v10;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v20 request];
      sub_26CD39C6C();

      v13 = sub_26CD39C4C();
      (*v9)(v6, v19);
      v14 = [v3 shouldOverrideURLRequest_];

      if (v14)
      {

        v15 = [v3 response];

        goto LABEL_16;
      }

      ++v8;
      if (v11 == a1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_14:

  v15 = 0;
LABEL_16:
  v16 = *v17;
  *v17 = v15;
}

uint64_t sub_26CCF6AA0(uint64_t a1)
{
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v16 = 0;
  if (qword_2804BBA90 != -1)
  {
    swift_once();
  }

  v6 = qword_2804BD990;
  (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26CCF760C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_26CCF76A4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCF5A98;
  aBlock[3] = &block_descriptor_20;
  v10 = _Block_copy(aBlock);
  v11 = v6;

  dispatch_sync(v11, v10);

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = v16;

    return v13;
  }

  return result;
}

void sub_26CCF6D14(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (qword_2804BBA78 != -1)
  {
    swift_once();
  }

  v4 = qword_2804D1550;
  if (qword_2804D1550 >> 62)
  {
    v5 = sub_26CD3ABAC();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((qword_2804D1550 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D6AD660](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      v9 = sub_26CD39C4C();
      v10 = [v8 shouldOverrideURLRequest_];

      if (v10)
      {
        *a3 = 1;
      }
    }
  }
}

void sub_26CCF7048()
{
  if (qword_2804BBA80 != -1)
  {
    swift_once();
  }

  v0 = [qword_2804D1558 response];
  [v0 stopRunningTasks];

  byte_2804BD998 = 0;
}

id sub_26CCF7210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26CCF753C()
{
  result = qword_2804BC368;
  if (!qword_2804BC368)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804BC368);
  }

  return result;
}

uint64_t sub_26CCF7588(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26CCF75E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_26CCF760C()
{
  v1 = *(sub_26CD39D0C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26CCF6D14(v3, v0 + v2, v4);
}

uint64_t sub_26CCF76B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3[160] = a3;
  v3[159] = a2;
  v3[158] = a1;
  v4 = sub_26CD3A07C();
  v3[161] = v4;
  v5 = *(v4 - 8);
  v3[162] = v5;
  v6 = *(v5 + 64) + 15;
  v3[163] = swift_task_alloc();
  v3[164] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v3[165] = swift_task_alloc();
  v3[166] = swift_task_alloc();
  v3[167] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CCF7800, 0, 0);
}

uint64_t sub_26CCF7800()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1280);
  v2 = objc_opt_self();
  v3 = sub_26CD3A4DC();
  *(v0 + 1248) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v0 + 1248];

  v5 = *(v0 + 1248);
  if (v4)
  {
    v6 = sub_26CD3A0BC();
    v8 = v7;

    *(v0 + 1344) = v6;
    *(v0 + 1352) = v8;
    v9 = sub_26CD39D5C();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CCFB28C();
    sub_26CD39D3C();

    memcpy((v0 + 16), (v0 + 536), 0x208uLL);
    *(v0 + 1216) = *(v0 + 24);
    if (*(v0 + 408) == 1)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      if (*(v0 + 440))
      {
        v21 = *(v0 + 432);
        v22 = *(v0 + 440);
      }

      else
      {
        v21 = *(v0 + 416);
        v22 = *(v0 + 424);
      }
    }

    *(v0 + 1368) = v22;
    *(v0 + 1360) = v21;
    if (*(v0 + 312) == 1)
    {
      v23 = 0;
      v24 = 0;
    }

    else
    {
      if (*(v0 + 344))
      {
        v23 = *(v0 + 336);
        v24 = *(v0 + 344);
      }

      else
      {
        v23 = *(v0 + 320);
        v24 = *(v0 + 328);
      }
    }

    *(v0 + 1384) = v24;
    *(v0 + 1376) = v23;
    sub_26CC1B4DC(v0 + 1216, v0 + 1232, &qword_2804BCCD0, &qword_26CD42A10);
    *(v0 + 1392) = sub_26CCFB2E0(v0 + 16);
    v25 = swift_task_alloc();
    *(v0 + 1400) = v25;
    *v25 = v0;
    v25[1] = sub_26CCF7B50;
    v26 = *(v0 + 1336);
    v27 = *(v0 + 1280);
    v28 = *MEMORY[0x277D85DE8];

    return sub_26CCF8DB0(v26, v27);
  }

  else
  {
    v12 = v5;
    sub_26CD39F8C();

    swift_willThrow();
    v13 = *(v0 + 1336);
    v14 = *(v0 + 1328);
    v15 = *(v0 + 1320);
    v16 = *(v0 + 1312);
    v17 = *(v0 + 1304);

    v18 = *(v0 + 8);
    v19 = *MEMORY[0x277D85DE8];

    return v18();
  }
}

uint64_t sub_26CCF7B50(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1400);
  v6 = *v1;
  *(*v1 + 1408) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CCF7C7C, 0, 0);
}

uint64_t sub_26CCF7C7C()
{
  v108 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  sub_26CC1B4DC(*(v0 + 1336), v1, &qword_2804BCA30, &qword_26CD3DA70);
  v4 = *(v2 + 48);
  v5 = v4(v1, 1, v3);
  v6 = *(v0 + 1408);
  v7 = *(v0 + 1328);
  if (v5 == 1)
  {
    v8 = *(v0 + 1408);

    sub_26CC1B544(v7, &qword_2804BCA30, &qword_26CD3DA70);
  }

  else
  {
    (*(*(v0 + 1296) + 32))(*(v0 + 1312), *(v0 + 1328), *(v0 + 1288));
    if (v6)
    {
      v9 = *(v0 + 1408);
      v10 = *(v0 + 1392);
      v11 = *(v0 + 1312);
      v12 = *(v0 + 1296);
      v13 = *(v0 + 1288);
      *(v0 + 1112) = v13;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1088));
      (*(v12 + 16))(boxed_opaque_existential_1, v11, v13);
      sub_26CC331CC((v0 + 1088), (v0 + 1120));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26CD38DDC((v0 + 1120), 0x52556E6F69746361, 0xE90000000000004CLL, isUniquelyReferenced_nonNull_native);
      *(v0 + 1176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
      *(v0 + 1152) = v9;
      sub_26CC331CC((v0 + 1152), (v0 + 1184));
      v16 = swift_isUniquelyReferenced_nonNull_native();
      sub_26CD38DDC((v0 + 1184), 0x7363697274656DLL, 0xE700000000000000, v16);
      (*(v12 + 8))(v11, v13);
      v17 = v10;
      v18 = *(v0 + 1224);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_5:
      v19 = *(v0 + 1384);
      v20 = *(v0 + 1368);

      sub_26CCFB5C4(v0 + 16);
LABEL_24:
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 1352);
      v32 = *(v0 + 1344);
      v33 = *(v0 + 1336);
      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_26CD3C1E0;
      *(v39 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v39 + 64) = sub_26CC2E6E8();
      *(v39 + 32) = &unk_287DFB700;
      sub_26CD3A3DC();

      sub_26CCFB618();
      swift_allocError();
      *v40 = 2;
      goto LABEL_38;
    }

    (*(*(v0 + 1296) + 8))(*(v0 + 1312), *(v0 + 1288));
  }

  v17 = *(v0 + 1392);
  v18 = *(v0 + 1224);
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_8:
  v21 = *(v0 + 1216);
  v22 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    v37 = *(v0 + 1384);
    v38 = *(v0 + 1368);

    sub_26CCFB5C4(v0 + 16);
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);
    goto LABEL_24;
  }

  v23 = *(v0 + 1368);
  if (!v23)
  {
    v41 = *(v0 + 1384);

    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CCFB5C4(v0 + 16);
LABEL_29:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 1352);
    v32 = *(v0 + 1344);
    v33 = *(v0 + 1336);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_26CD3C1E0;
    *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v43 + 64) = sub_26CC2E6E8();
    *(v43 + 32) = &unk_287DFB6D0;
    sub_26CD3A3DC();

    sub_26CCFB618();
    swift_allocError();
    v36 = 4;
    goto LABEL_37;
  }

  v24 = *(v0 + 1360) & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v23) & 0xF;
  }

  v25 = *(v0 + 1384);
  if (!v24)
  {
    v42 = *(v0 + 1384);

    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CCFB5C4(v0 + 16);

    goto LABEL_29;
  }

  if (!v25)
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);
LABEL_34:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 1352);
    v32 = *(v0 + 1344);
    v33 = *(v0 + 1336);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_26CD3C1E0;
    *(v44 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v44 + 64) = sub_26CC2E6E8();
    *(v44 + 32) = &unk_287DFB6A0;
    sub_26CD3A3DC();

    sub_26CCFB618();
    swift_allocError();
    v36 = 3;
    goto LABEL_37;
  }

  v26 = *(v0 + 1376) & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v25) & 0xF;
  }

  if (!v26)
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);

    goto LABEL_34;
  }

  v27 = *(v0 + 1320);
  v28 = *(v0 + 1288);
  sub_26CC1B4DC(*(v0 + 1336), v27, &qword_2804BCA30, &qword_26CD3DA70);
  v29 = v4(v27, 1, v28);
  v30 = *(v0 + 1320);
  if (v29 == 1)
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);
    sub_26CC1B544(v30, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 1352);
    v32 = *(v0 + 1344);
    v33 = *(v0 + 1336);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26CD3C1E0;
    *(v34 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v34 + 64) = sub_26CC2E6E8();
    *(v34 + 32) = &unk_287DFB670;
    sub_26CD3A3DC();

    sub_26CCFB618();
    swift_allocError();
    v36 = 1;
LABEL_37:
    *v35 = v36;
LABEL_38:
    swift_willThrow();
    sub_26CC18C50(v32, v31);
    v45 = v33;
LABEL_39:
    sub_26CC1B544(v45, &qword_2804BCA30, &qword_26CD3DA70);

    v46 = *(v0 + 1336);
    v47 = *(v0 + 1328);
    v48 = *(v0 + 1320);
    v49 = *(v0 + 1312);
    v50 = *(v0 + 1304);

    v51 = *(v0 + 8);
    v52 = *MEMORY[0x277D85DE8];
    goto LABEL_40;
  }

  (*(*(v0 + 1296) + 32))(*(v0 + 1304), *(v0 + 1320), *(v0 + 1288));
  v54 = *(v0 + 88);
  if (v54 != 2 && (v54 & 1) != 0 && (_s13TVAppServices16PreferencesStoreV26sportsScoreSpoilersAllowedSbvgZ_0() & 1) == 0)
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v67 = *(v0 + 1352);
    v68 = *(v0 + 1344);
    v100 = *(v0 + 1304);
    v103 = *(v0 + 1336);
    v69 = *(v0 + 1296);
    v70 = *(v0 + 1288);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_26CD3C1E0;
    *(v71 + 56) = MEMORY[0x277D837D0];
    *(v71 + 64) = sub_26CC19E10();
    *(v71 + 32) = 0xD000000000000053;
    *(v71 + 40) = 0x800000026CD51B30;
    sub_26CD3A3DC();

    sub_26CCFB618();
    swift_allocError();
    *v72 = 6;
    goto LABEL_73;
  }

  sub_26CD3A61C();
  has_internal_content = os_variant_has_internal_content();

  if (*(v17 + 16))
  {
    v56 = sub_26CC181C4(0x79726F6765746163, 0xE800000000000000);
    if (v57)
    {
      sub_26CC168C0(*(v17 + 56) + 32 * v56, v0 + 1056);
      if ((swift_dynamicCast() & 1) != 0 && !((*(v0 + 1256) != 0) | has_internal_content & 1))
      {
        sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

        sub_26CCFB5C4(v0 + 16);
        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        v67 = *(v0 + 1352);
        v68 = *(v0 + 1344);
        v100 = *(v0 + 1304);
        v103 = *(v0 + 1336);
        v69 = *(v0 + 1296);
        v70 = *(v0 + 1288);
        sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_26CD3C1E0;
        *(v95 + 56) = MEMORY[0x277D837D0];
        *(v95 + 64) = sub_26CC19E10();
        *(v95 + 32) = 0xD00000000000003CLL;
        *(v95 + 40) = 0x800000026CD51AF0;
        sub_26CD3A3DC();

        sub_26CCFB618();
        swift_allocError();
        *v96 = 0;
LABEL_73:
        swift_willThrow();
        sub_26CC18C50(v68, v67);
        (*(v69 + 8))(v100, v70);
LABEL_74:
        v45 = v103;
        goto LABEL_39;
      }
    }
  }

  if (BYSetupAssistantNeedsToRun())
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 1352);
    v59 = *(v0 + 1344);
    v103 = *(v0 + 1336);
    v60 = *(v0 + 1304);
    v61 = *(v0 + 1296);
    v62 = *(v0 + 1288);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_26CD3C1E0;
    *(v63 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v63 + 64) = sub_26CC2E6E8();
    *(v63 + 32) = &unk_287DFB640;
    sub_26CD3A3DC();

    sub_26CCFB618();
    swift_allocError();
    *v64 = 5;
    swift_willThrow();
    sub_26CC18C50(v59, v58);
    (*(v61 + 8))(v60, v62);
    goto LABEL_74;
  }

  sub_26CCFB5C4(v0 + 16);
  v65 = *(v0 + 497);
  if (v65 != 2 && (v65 & 1) == 0)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 1304);
    v74 = *(v0 + 1288);
    v104 = *(v0 + 1280);
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000040, 0x800000026CD51AA0);
    sub_26CC1B8FC();
    v75 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v75);

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_26CD3C1E0;
    *(v76 + 56) = MEMORY[0x277D837D0];
    *(v76 + 64) = sub_26CC19E10();
    *(v76 + 32) = 0;
    *(v76 + 40) = 0xE000000000000000;
    sub_26CD3A3DC();

    v77 = *(v104 + 16);

    if (!v77)
    {
      goto LABEL_67;
    }

    v78 = *(v0 + 1280);
LABEL_65:
    v79 = sub_26CC181C4(0x7363697274656DLL, 0xE700000000000000);
    v80 = *(v0 + 1352);
    v81 = *(v0 + 1344);
    v82 = *(v0 + 1304);
    v101 = v82;
    v105 = *(v0 + 1336);
    v83 = *(v0 + 1296);
    v84 = *(v0 + 1288);
    if (v85)
    {
      sub_26CC168C0(*(*(v0 + 1280) + 56) + 32 * v79, *(v0 + 1272));
      sub_26CC18C50(v81, v80);
      (*(v83 + 8))(v101, v84);
      sub_26CC1B544(v105, &qword_2804BCA30, &qword_26CD3DA70);
    }

    else
    {
      v98 = *(v0 + 1272);
      sub_26CC18C50(v81, v80);
      (*(v83 + 8))(v101, v84);
      sub_26CC1B544(v105, &qword_2804BCA30, &qword_26CD3DA70);
      *v98 = 0u;
      v98[1] = 0u;
    }

    goto LABEL_69;
  }

  v66 = *(*(v0 + 1280) + 16);

  if (v66)
  {
    goto LABEL_65;
  }

LABEL_67:
  v106 = *(v0 + 1336);
  v86 = *(v0 + 1304);
  v87 = *(v0 + 1296);
  v88 = *(v0 + 1288);
  v89 = *(v0 + 1272);
  sub_26CC18C50(*(v0 + 1344), *(v0 + 1352));
  (*(v87 + 8))(v86, v88);
  sub_26CC1B544(v106, &qword_2804BCA30, &qword_26CD3DA70);
  *v89 = 0u;
  v89[1] = 0u;
LABEL_69:
  v102 = *(v0 + 1360);
  v107 = *(v0 + 1376);
  v90 = *(v0 + 1336);
  v91 = *(v0 + 1328);
  v92 = *(v0 + 1320);
  v97 = *(v0 + 1312);
  v99 = *(v0 + 1304);
  v93 = *(v0 + 1264);

  *v93 = v21;
  v93[1] = v18;
  v93[2] = v102;
  v93[3] = v23;
  v93[4] = v107;
  v93[5] = v25;
  v93[6] = v17;
  v51 = *(v0 + 8);
  v94 = *MEMORY[0x277D85DE8];
LABEL_40:

  return v51();
}

uint64_t sub_26CCF8DB0(uint64_t a1, uint64_t a2)
{
  v2[115] = a2;
  v2[114] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CCF8EBC, 0, 0);
}

uint64_t sub_26CCF8EBC()
{
  if (!*(*(v0 + 920) + 16) || (v1 = sub_26CC181C4(0x736E6F69746361, 0xE700000000000000), (v2 & 1) == 0) || (sub_26CC168C0(*(*(v0 + 920) + 56) + 32 * v1, v0 + 416), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD9C8, &qword_26CD47D78), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 912);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26CD3C1E0;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_26CC19E10();
    *(v17 + 32) = 0xD00000000000003BLL;
    *(v17 + 40) = 0x800000026CD51B90;
    sub_26CD3A3DC();

    v18 = sub_26CD3A07C();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    v148 = 0;
    goto LABEL_9;
  }

  v3 = *(v0 + 1000);
  v4 = *(v0 + 992);
  v5 = *(v0 + 904);
  *(v0 + 1008) = v5;
  v6 = sub_26CD3A07C();
  *(v0 + 1016) = v6;
  v7 = *(v6 - 8);
  *(v0 + 1024) = v7;
  v8 = *(v7 + 56);
  v8(v3, 1, 1, v6);
  v8(v4, 1, 1, v6);
  type metadata accessor for AppLibraryHandler();
  swift_initStackObject();
  v9 = sub_26CC53DF8();
  swift_beginAccess();
  v10 = v9[2];

  v11 = sub_26CC37114(v10);

  *(v0 + 1032) = sub_26CCF3078(v11);

  v12 = *(v5 + 16);
  *(v0 + 1040) = v12;
  if (!v12)
  {

    v13 = 0;
    v147 = 0;
    goto LABEL_115;
  }

  v13 = 0;
  v14 = 0;
  v146 = (v0 + 896);
  v147 = 0;
  v15 = MEMORY[0x277D837D0];
  while (1)
  {
    *(v0 + 1064) = v14;
    *(v0 + 1056) = v147;
    *(v0 + 1048) = v13;
    v31 = *(v0 + 1008);
    if (v14 >= *(v31 + 16))
    {
      __break(1u);
LABEL_121:
      *(v0 + 1096) = *(v0 + 840);
      *(v0 + 1104) = *(v0 + 848);
      v145 = swift_task_alloc();
      *(v0 + 1112) = v145;
      *v145 = v0;
      v145[1] = sub_26CCFA178;

      return sub_26CCFB66C();
    }

    v32 = *(v31 + 8 * v14 + 32);
    *(v0 + 1072) = v32;
    strcpy((v0 + 744), "isTvAppAction");
    *(v0 + 758) = -4864;

    sub_26CD3ABFC();
    if (!*(v32 + 16) || (v33 = sub_26CCCA694(v0 + 296), (v34 & 1) == 0))
    {
      sub_26CC579C4(v0 + 296);
LABEL_20:
      v35 = 0;
      goto LABEL_21;
    }

    sub_26CC168C0(*(v32 + 56) + 32 * v33, v0 + 640);
    sub_26CC579C4(v0 + 296);
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v35 = *(v0 + 1128);
LABEL_21:
    v36 = v13;
    *(v0 + 1129) = v35;
    *(v0 + 696) = 1701869940;
    *(v0 + 704) = 0xE400000000000000;
    sub_26CD3ABFC();
    if (*(v32 + 16) && (v37 = sub_26CCCA694(v0 + 136), (v38 & 1) != 0))
    {
      sub_26CC168C0(*(v32 + 56) + 32 * v37, v0 + 512);
      sub_26CC579C4(v0 + 136);
      if (swift_dynamicCast())
      {
        if (*(v0 + 856) == 0xD000000000000015 && 0x800000026CD51BD0 == *(v0 + 864))
        {
          v39 = *(v0 + 864);

LABEL_59:

LABEL_60:
          v13 = v36;
          goto LABEL_13;
        }

        v79 = *(v0 + 864);
        v80 = sub_26CD3AFDC();

        if (v80)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      sub_26CC579C4(v0 + 136);
    }

    if (v35)
    {
      v40 = *(v0 + 1024);
      v41 = *(v0 + 1016);
      v42 = *(v0 + 984);
      sub_26CC1B4DC(*(v0 + 992), v42, &qword_2804BCA30, &qword_26CD3DA70);
      v43 = *(v40 + 48);
      v44 = v43(v42, 1, v41);
      v15 = MEMORY[0x277D837D0];
      LODWORD(v41) = v44;
      sub_26CC1B544(v42, &qword_2804BCA30, &qword_26CD3DA70);
      if (v41 == 1)
      {
        goto LABEL_30;
      }
    }

    v61 = *(v0 + 1024);
    v62 = *(v0 + 1016);
    v63 = *(v0 + 976);
    sub_26CC1B4DC(*(v0 + 1000), v63, &qword_2804BCA30, &qword_26CD3DA70);
    v64 = *(v61 + 48);
    *(v0 + 1080) = v64;
    v65 = v64(v63, 1, v62);
    v66 = *(v0 + 976);
    if (v65 != 1)
    {

      sub_26CC1B544(v66, &qword_2804BCA30, &qword_26CD3DA70);
      goto LABEL_60;
    }

    sub_26CC1B544(*(v0 + 976), &qword_2804BCA30, &qword_26CD3DA70);
    *(v0 + 808) = 0x6449656C646E7562;
    *(v0 + 816) = 0xE900000000000073;
    sub_26CD3ABFC();
    v13 = v36;
    if (*(v32 + 16))
    {
      v67 = sub_26CCCA694(v0 + 376);
      if (v68)
      {
        break;
      }
    }

    sub_26CC579C4(v0 + 376);
LABEL_13:
    v14 = *(v0 + 1064) + 1;
    if (v14 == *(v0 + 1040))
    {
      v133 = *(v0 + 1032);
      v134 = *(v0 + 1008);

      goto LABEL_115;
    }
  }

  sub_26CC168C0(*(v32 + 56) + 32 * v67, v0 + 480);
  sub_26CC579C4(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    goto LABEL_13;
  }

  v69 = *(v0 + 880);
  *(v0 + 1088) = v69;
  v70 = *(v69 + 16);
  if (!v70)
  {
    *(v0 + 824) = 0x6449646E617262;
    *(v0 + 832) = 0xE700000000000000;
    sub_26CD3ABFC();
    if (*(v32 + 16) && (v71 = sub_26CCCA694(v0 + 176), (v72 & 1) != 0))
    {
      sub_26CC168C0(*(v32 + 56) + 32 * v71, v0 + 544);
      sub_26CC579C4(v0 + 176);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_121;
      }
    }

    else
    {
      result = sub_26CC579C4(v0 + 176);
    }

    v70 = *(v69 + 16);
    if (!v70)
    {
      v124 = *(v0 + 1072);

LABEL_110:
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      *(v0 + 792) = 0;
      *(v0 + 800) = 0xE000000000000000;
      sub_26CD3AC6C();
      v126 = *(v0 + 800);
      *(v0 + 776) = *(v0 + 792);
      *(v0 + 784) = v126;
      MEMORY[0x26D6AD060](0xD000000000000056, 0x800000026CD51BF0);
      v127 = MEMORY[0x26D6AD1A0](v69, v15);
      v129 = v128;

      MEMORY[0x26D6AD060](v127, v129);

      v130 = *(v0 + 776);
      v131 = *(v0 + 784);
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_26CD3C1E0;
      *(v132 + 56) = MEMORY[0x277D837D0];
      *(v132 + 64) = sub_26CC19E10();
      *(v132 + 32) = v130;
      *(v132 + 40) = v131;
      v15 = MEMORY[0x277D837D0];
      sub_26CD3A3DC();

      v147 = *(v0 + 1056);
      v13 = *(v0 + 1048);
      goto LABEL_13;
    }
  }

  v111 = 0;
  while (2)
  {
    if (v111 >= *(v69 + 16))
    {
      __break(1u);
      return result;
    }

    v112 = *(v0 + 1032);
    if (!*(v112 + 16))
    {
LABEL_93:
      if (++v111 == v70)
      {
        v125 = *(v0 + 1072);

        v15 = MEMORY[0x277D837D0];
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  v113 = (v69 + 32 + 16 * v111);
  v115 = *v113;
  v114 = v113[1];
  v116 = *(v112 + 40);
  sub_26CD3B0FC();

  sub_26CD3A54C();
  v117 = sub_26CD3B13C();
  v118 = -1 << *(v112 + 32);
  v119 = v117 & ~v118;
  if (((*(v112 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v119) & 1) == 0)
  {
LABEL_92:

    goto LABEL_93;
  }

  v120 = ~v118;
  v121 = *(v0 + 1032);
  while (1)
  {
    v122 = (*(v121 + 48) + 16 * v119);
    v123 = *v122 == v115 && v122[1] == v114;
    if (v123 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    v121 = *(v0 + 1032);
    v119 = (v119 + 1) & v120;
    if (((*(v121 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v119) & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  v43 = *(v0 + 1080);
LABEL_30:
  v45 = *(v0 + 1072);
  *(v0 + 712) = 0xD000000000000015;
  *(v0 + 720) = 0x800000026CD4E1B0;
  sub_26CD3ABFC();
  if (!*(v45 + 16) || (v46 = *(v0 + 1072), v47 = sub_26CCCA694(v0 + 336), (v48 & 1) == 0))
  {
    sub_26CC579C4(v0 + 336);
LABEL_52:
    v59 = 0;
    v55 = 0;
    goto LABEL_53;
  }

  sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v47, v0 + 576);
  sub_26CC579C4(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD9D0, &qword_26CD47D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_52;
  }

  v49 = *v146;
  if (!*(*v146 + 16))
  {
    goto LABEL_87;
  }

  v50 = sub_26CC181C4(0x6576694C5F736F49, 0xE800000000000000);
  if (v51)
  {
    goto LABEL_37;
  }

  if (!*(v49 + 16))
  {
LABEL_87:
    v55 = 0;
    goto LABEL_88;
  }

  v50 = sub_26CC181C4(7565129, 0xE300000000000000);
  if (v52)
  {
LABEL_37:
    v53 = (*(v49 + 56) + 16 * v50);
    v54 = *v53;
    v55 = v53[1];

    if (*(v49 + 16))
    {
      goto LABEL_38;
    }

LABEL_88:

    v59 = 0;
  }

  else
  {
    v55 = 0;
    if (!*(v49 + 16))
    {
      goto LABEL_88;
    }

LABEL_38:
    v56 = sub_26CC181C4(0x6173726576696E55, 0xE90000000000006CLL);
    if ((v57 & 1) == 0)
    {
      goto LABEL_88;
    }

    v58 = (*(v49 + 56) + 16 * v56);
    v60 = *v58;
    v59 = v58[1];
  }

LABEL_53:
  if (*(v0 + 1129) != 1)
  {

    goto LABEL_62;
  }

  v73 = *(v0 + 1016);
  v74 = *(v0 + 968);
  v75 = *(v0 + 1024) + 48;
  sub_26CC1B4DC(*(v0 + 992), v74, &qword_2804BCA30, &qword_26CD3DA70);
  if (v43(v74, 1, v73) != 1)
  {
    v81 = *(v0 + 968);

    sub_26CC1B544(v81, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_62:
    v82 = *(v0 + 1016);
    v83 = *(v0 + 952);
    v84 = *(v0 + 1024) + 48;
    sub_26CC1B4DC(*(v0 + 1000), v83, &qword_2804BCA30, &qword_26CD3DA70);
    if (v43(v83, 1, v82) == 1)
    {
      sub_26CC1B544(*(v0 + 952), &qword_2804BCA30, &qword_26CD3DA70);
      v85 = *(v0 + 1072);
      if (v55)
      {
        v86 = *(v0 + 1056);
        v87 = *(v0 + 1000);
        v88 = *(v0 + 960);

        sub_26CD3A03C();

        sub_26CC1B544(v87, &qword_2804BCA30, &qword_26CD3DA70);
        sub_26CC6FFD0(v88, v87);
        *(v0 + 728) = 0x7363697274656DLL;
        *(v0 + 736) = 0xE700000000000000;
        sub_26CD3ABFC();
        if (*(v85 + 16) && (v89 = *(v0 + 1072), v90 = sub_26CCCA694(v0 + 256), (v91 & 1) != 0))
        {
          sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v90, v0 + 448);
          sub_26CC579C4(v0 + 256);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
          v92 = swift_dynamicCast();
          v93 = *(v0 + 872);
          if (!v92)
          {
            v93 = 0;
          }

          v147 = v93;
          v13 = *(v0 + 1048);
        }

        else
        {
          v96 = *(v0 + 1072);

          sub_26CC579C4(v0 + 256);
          v147 = 0;
          v13 = *(v0 + 1048);
        }

        goto LABEL_84;
      }

      v97 = *(v0 + 1072);
    }

    else
    {
      v94 = *(v0 + 1072);
      v95 = *(v0 + 952);

      sub_26CC1B544(v95, &qword_2804BCA30, &qword_26CD3DA70);
    }

    v147 = *(v0 + 1056);
    v13 = *(v0 + 1048);
    goto LABEL_84;
  }

  v76 = *(v0 + 1048);
  v77 = *(v0 + 968);

  sub_26CC1B544(v77, &qword_2804BCA30, &qword_26CD3DA70);
  if (v59)
  {
    v78 = *(v0 + 960);

    sub_26CD3A03C();
    goto LABEL_76;
  }

  if (v55)
  {
    v98 = *(v0 + 960);
    sub_26CD3A03C();
LABEL_76:
    v99 = *(v0 + 992);
    v100 = *(v0 + 960);

    sub_26CC1B544(v99, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6FFD0(v100, v99);
  }

  v101 = *(v0 + 1072);
  *(v0 + 760) = 0x7363697274656DLL;
  *(v0 + 768) = 0xE700000000000000;
  sub_26CD3ABFC();
  if (*(v101 + 16) && (v102 = *(v0 + 1072), v103 = sub_26CCCA694(v0 + 216), (v104 & 1) != 0))
  {
    sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v103, v0 + 608);
    sub_26CC579C4(v0 + 216);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 888);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v105 = *(v0 + 1072);

    sub_26CC579C4(v0 + 216);
    v13 = 0;
  }

  v147 = *(v0 + 1056);
LABEL_84:
  v106 = *(v0 + 1016);
  v107 = *(v0 + 944);
  v108 = *(v0 + 1024) + 48;
  sub_26CC1B4DC(*(v0 + 1000), v107, &qword_2804BCA30, &qword_26CD3DA70);
  LODWORD(v106) = v43(v107, 1, v106);
  sub_26CC1B544(v107, &qword_2804BCA30, &qword_26CD3DA70);
  if (v106 == 1)
  {
LABEL_12:
    v15 = MEMORY[0x277D837D0];
    goto LABEL_13;
  }

  v109 = *(v0 + 1016);
  v110 = *(v0 + 936);
  sub_26CC1B4DC(*(v0 + 992), v110, &qword_2804BCA30, &qword_26CD3DA70);
  if (v43(v110, 1, v109) == 1)
  {
    sub_26CC1B544(*(v0 + 936), &qword_2804BCA30, &qword_26CD3DA70);
    goto LABEL_12;
  }

  v142 = *(v0 + 1032);
  v143 = *(v0 + 1008);
  v144 = *(v0 + 936);

  sub_26CC1B544(v144, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_115:
  v135 = *(v0 + 1024);
  v136 = *(v0 + 1016);
  v137 = *(v0 + 928);
  sub_26CC1B4DC(*(v0 + 1000), v137, &qword_2804BCA30, &qword_26CD3DA70);
  if ((*(v135 + 48))(v137, 1, v136) == 1)
  {
    v138 = *(v0 + 1000);
    v139 = *(v0 + 992);
    v140 = *(v0 + 928);
    sub_26CC1B544(v138, &qword_2804BCA30, &qword_26CD3DA70);

    sub_26CC1B544(v140, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6FFD0(v139, v138);
  }

  else
  {
    v141 = *(v0 + 928);
    sub_26CC1B544(*(v0 + 992), &qword_2804BCA30, &qword_26CD3DA70);

    sub_26CC1B544(v141, &qword_2804BCA30, &qword_26CD3DA70);
    v13 = v147;
  }

  v148 = v13;
  sub_26CC6FFD0(*(v0 + 1000), *(v0 + 912));
LABEL_9:
  v19 = *(v0 + 1000);
  v20 = *(v0 + 992);
  v21 = *(v0 + 984);
  v22 = *(v0 + 976);
  v23 = *(v0 + 968);
  v24 = *(v0 + 960);
  v25 = *(v0 + 952);
  v26 = *(v0 + 944);
  v27 = *(v0 + 936);
  v28 = *(v0 + 928);

  v29 = *(v0 + 8);

  return v29(v148);
}

uint64_t sub_26CCFA178(uint64_t a1)
{
  v2 = *(*v1 + 1112);
  v4 = *v1;
  *(*v1 + 1120) = a1;

  return MEMORY[0x2822009F8](sub_26CCFA278, 0, 0);
}

uint64_t sub_26CCFA278()
{
  v1 = *(v0 + 1120);
  if (v1)
  {
    v2 = *(v0 + 1104);
    if (*(v1 + 16))
    {
      v3 = sub_26CC181C4(*(v0 + 1096), *(v0 + 1104));
      v5 = v4;

      if (v5)
      {
        v6 = *(v0 + 1088);

        v7 = *(*(v1 + 56) + 8 * v3);

        v8 = *&v7[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appBundleIds];

        goto LABEL_8;
      }
    }

    else
    {
      v10 = *(v0 + 1120);
    }
  }

  else
  {
    v9 = *(v0 + 1104);
  }

  v8 = *(v0 + 1088);
LABEL_8:
  v136 = (v0 + 896);
  v11 = MEMORY[0x277D837D0];
LABEL_9:
  v12 = *(v8 + 16);
  if (!v12)
  {
LABEL_25:
    v27 = *(v0 + 1072);

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    *(v0 + 792) = 0;
    *(v0 + 800) = 0xE000000000000000;
    sub_26CD3AC6C();
    v28 = *(v0 + 800);
    *(v0 + 776) = *(v0 + 792);
    *(v0 + 784) = v28;
    MEMORY[0x26D6AD060](0xD000000000000056, 0x800000026CD51BF0);
    v29 = MEMORY[0x26D6AD1A0](v8, v11);
    v31 = v30;

    MEMORY[0x26D6AD060](v29, v31);

    v32 = *(v0 + 776);
    v33 = *(v0 + 784);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26CD3C1E0;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_26CC19E10();
    *(v34 + 32) = v32;
    *(v34 + 40) = v33;
    sub_26CD3A3DC();

    v35 = *(v0 + 1056);
    v36 = *(v0 + 1048);
    goto LABEL_29;
  }

  v13 = 0;
  v137 = v8 + 32;
  v138 = v8;
  while (1)
  {
    if (v13 >= *(v8 + 16))
    {
      goto LABEL_115;
    }

    v14 = *(v0 + 1032);
    if (*(v14 + 16))
    {
      break;
    }

LABEL_12:
    if (++v13 == v12)
    {
      goto LABEL_25;
    }
  }

  v15 = (v137 + 16 * v13);
  v17 = *v15;
  v16 = v15[1];
  v18 = *(v14 + 40);
  sub_26CD3B0FC();

  sub_26CD3A54C();
  v19 = sub_26CD3B13C();
  v20 = -1 << *(v14 + 32);
  v21 = v19 & ~v20;
  if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
  {
LABEL_11:

    v8 = v138;
    goto LABEL_12;
  }

  v22 = ~v20;
  v23 = *(v0 + 1032);
  while (1)
  {
    v24 = (*(v23 + 48) + 16 * v21);
    v25 = *v24 == v17 && v24[1] == v16;
    if (v25 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    v23 = *(v0 + 1032);
    v21 = (v21 + 1) & v22;
    if (((*(v23 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v26 = *(v0 + 1080);
LABEL_55:
  v59 = *(v0 + 1072);
  *(v0 + 712) = 0xD000000000000015;
  *(v0 + 720) = 0x800000026CD4E1B0;
  sub_26CD3ABFC();
  if (!*(v59 + 16) || (v60 = *(v0 + 1072), v61 = sub_26CCCA694(v0 + 336), (v62 & 1) == 0))
  {
    sub_26CC579C4(v0 + 336);
    goto LABEL_67;
  }

  sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v61, v0 + 576);
  sub_26CC579C4(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD9D0, &qword_26CD47D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_67:
    v74 = 0;
    v63 = 0;
    goto LABEL_68;
  }

  v63 = 0;
  v64 = *v136;
  if (!*(*v136 + 16))
  {
    goto LABEL_89;
  }

  v65 = *v136;
  v66 = sub_26CC181C4(0x6576694C5F736F49, 0xE800000000000000);
  if (v67)
  {
    goto LABEL_62;
  }

  v63 = 0;
  if (!*(v64 + 16))
  {
    goto LABEL_89;
  }

  v66 = sub_26CC181C4(7565129, 0xE300000000000000);
  v63 = 0;
  if (v68)
  {
LABEL_62:
    v69 = (*(v64 + 56) + 16 * v66);
    v70 = *v69;
    v63 = v69[1];
  }

  if (*(v64 + 16) && (v71 = sub_26CC181C4(0x6173726576696E55, 0xE90000000000006CLL), (v72 & 1) != 0))
  {
    v73 = (*(v64 + 56) + 16 * v71);
    v75 = *v73;
    v74 = v73[1];
  }

  else
  {
LABEL_89:

    v74 = 0;
  }

LABEL_68:
  if (*(v0 + 1129) != 1)
  {

    goto LABEL_74;
  }

  v76 = *(v0 + 1016);
  v77 = *(v0 + 968);
  v78 = *(v0 + 1024) + 48;
  sub_26CC1B4DC(*(v0 + 992), v77, &qword_2804BCA30, &qword_26CD3DA70);
  if (v26(v77, 1, v76) != 1)
  {
    v82 = *(v0 + 968);

    sub_26CC1B544(v82, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_74:
    v83 = *(v0 + 1016);
    v84 = *(v0 + 952);
    v85 = *(v0 + 1024) + 48;
    sub_26CC1B4DC(*(v0 + 1000), v84, &qword_2804BCA30, &qword_26CD3DA70);
    if (v26(v84, 1, v83) == 1)
    {
      sub_26CC1B544(*(v0 + 952), &qword_2804BCA30, &qword_26CD3DA70);
      v86 = *(v0 + 1072);
      if (v63)
      {
        v87 = *(v0 + 1056);
        v88 = *(v0 + 1000);
        v89 = *(v0 + 960);

        sub_26CD3A03C();

        sub_26CC1B544(v88, &qword_2804BCA30, &qword_26CD3DA70);
        sub_26CC6FFD0(v89, v88);
        *(v0 + 728) = 0x7363697274656DLL;
        *(v0 + 736) = 0xE700000000000000;
        sub_26CD3ABFC();
        if (*(v86 + 16) && (v90 = *(v0 + 1072), v91 = sub_26CCCA694(v0 + 256), (v92 & 1) != 0))
        {
          sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v91, v0 + 448);
          sub_26CC579C4(v0 + 256);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
          if (swift_dynamicCast())
          {
            v35 = *(v0 + 872);
          }

          else
          {
            v35 = 0;
          }
        }

        else
        {
          v95 = *(v0 + 1072);

          sub_26CC579C4(v0 + 256);
          v35 = 0;
        }

        goto LABEL_85;
      }

      v96 = *(v0 + 1072);
    }

    else
    {
      v93 = *(v0 + 1072);
      v94 = *(v0 + 952);

      sub_26CC1B544(v94, &qword_2804BCA30, &qword_26CD3DA70);
    }

    v35 = *(v0 + 1056);
LABEL_85:
    v36 = *(v0 + 1048);
    goto LABEL_86;
  }

  v79 = *(v0 + 1048);
  v80 = *(v0 + 968);

  sub_26CC1B544(v80, &qword_2804BCA30, &qword_26CD3DA70);
  if (v74)
  {
    v81 = *(v0 + 960);

    sub_26CD3A03C();
    goto LABEL_92;
  }

  if (v63)
  {
    v102 = *(v0 + 960);
    sub_26CD3A03C();
LABEL_92:
    v103 = *(v0 + 992);
    v104 = *(v0 + 960);

    sub_26CC1B544(v103, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6FFD0(v104, v103);
  }

  v105 = *(v0 + 1072);
  *(v0 + 760) = 0x7363697274656DLL;
  *(v0 + 768) = 0xE700000000000000;
  sub_26CD3ABFC();
  if (*(v105 + 16) && (v106 = *(v0 + 1072), v107 = sub_26CCCA694(v0 + 216), (v108 & 1) != 0))
  {
    sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v107, v0 + 608);
    sub_26CC579C4(v0 + 216);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
    if (swift_dynamicCast())
    {
      v36 = *(v0 + 888);
    }

    else
    {
      v36 = 0;
    }

    v35 = *(v0 + 1056);
  }

  else
  {
    v109 = *(v0 + 1072);

    sub_26CC579C4(v0 + 216);
    v36 = 0;
    v35 = *(v0 + 1056);
  }

LABEL_86:
  v97 = *(v0 + 1016);
  v98 = *(v0 + 944);
  v99 = *(v0 + 1024) + 48;
  sub_26CC1B4DC(*(v0 + 1000), v98, &qword_2804BCA30, &qword_26CD3DA70);
  LODWORD(v97) = v26(v98, 1, v97);
  sub_26CC1B544(v98, &qword_2804BCA30, &qword_26CD3DA70);
  if (v97 == 1)
  {
    goto LABEL_29;
  }

  v100 = *(v0 + 1016);
  v101 = *(v0 + 936);
  sub_26CC1B4DC(*(v0 + 992), v101, &qword_2804BCA30, &qword_26CD3DA70);
  if (v26(v101, 1, v100) == 1)
  {
    sub_26CC1B544(*(v0 + 936), &qword_2804BCA30, &qword_26CD3DA70);
    while (1)
    {
LABEL_29:
      v37 = *(v0 + 1064) + 1;
      if (v37 == *(v0 + 1040))
      {
        v112 = *(v0 + 1032);
        v113 = *(v0 + 1008);

        goto LABEL_107;
      }

      *(v0 + 1064) = v37;
      *(v0 + 1056) = v35;
      *(v0 + 1048) = v36;
      v38 = *(v0 + 1008);
      if (v37 >= *(v38 + 16))
      {
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v39 = *(v38 + 8 * v37 + 32);
      *(v0 + 1072) = v39;
      strcpy((v0 + 744), "isTvAppAction");
      *(v0 + 758) = -4864;

      sub_26CD3ABFC();
      if (!*(v39 + 16))
      {
        break;
      }

      v40 = sub_26CCCA694(v0 + 296);
      if ((v41 & 1) == 0)
      {
        break;
      }

      sub_26CC168C0(*(v39 + 56) + 32 * v40, v0 + 640);
      sub_26CC579C4(v0 + 296);
      if (!swift_dynamicCast())
      {
        goto LABEL_36;
      }

      v42 = *(v0 + 1128);
LABEL_37:
      *(v0 + 1129) = v42;
      *(v0 + 696) = 1701869940;
      *(v0 + 704) = 0xE400000000000000;
      sub_26CD3ABFC();
      if (!*(v39 + 16) || (v43 = sub_26CCCA694(v0 + 136), (v44 & 1) == 0))
      {
        sub_26CC579C4(v0 + 136);
        if (!v42)
        {
          goto LABEL_47;
        }

LABEL_46:
        v47 = *(v0 + 1024);
        v48 = *(v0 + 1016);
        v49 = *(v0 + 984);
        sub_26CC1B4DC(*(v0 + 992), v49, &qword_2804BCA30, &qword_26CD3DA70);
        v26 = *(v47 + 48);
        LODWORD(v48) = v26(v49, 1, v48);
        sub_26CC1B544(v49, &qword_2804BCA30, &qword_26CD3DA70);
        if (v48 == 1)
        {
          goto LABEL_55;
        }

        goto LABEL_47;
      }

      sub_26CC168C0(*(v39 + 56) + 32 * v43, v0 + 512);
      sub_26CC579C4(v0 + 136);
      if (swift_dynamicCast())
      {
        if (*(v0 + 856) == 0xD000000000000015 && 0x800000026CD51BD0 == *(v0 + 864))
        {
          v58 = *(v0 + 864);

LABEL_51:

          continue;
        }

        v45 = *(v0 + 864);
        v46 = sub_26CD3AFDC();

        if (v46)
        {
          goto LABEL_51;
        }
      }

      if (v42)
      {
        goto LABEL_46;
      }

LABEL_47:
      v50 = *(v0 + 1024);
      v51 = *(v0 + 1016);
      v52 = *(v0 + 976);
      sub_26CC1B4DC(*(v0 + 1000), v52, &qword_2804BCA30, &qword_26CD3DA70);
      v53 = *(v50 + 48);
      *(v0 + 1080) = v53;
      v54 = v53(v52, 1, v51);
      v55 = *(v0 + 976);
      if (v54 != 1)
      {

        sub_26CC1B544(v55, &qword_2804BCA30, &qword_26CD3DA70);
        continue;
      }

      sub_26CC1B544(*(v0 + 976), &qword_2804BCA30, &qword_26CD3DA70);
      *(v0 + 808) = 0x6449656C646E7562;
      *(v0 + 816) = 0xE900000000000073;
      v11 = MEMORY[0x277D837D0];
      sub_26CD3ABFC();
      if (*(v39 + 16))
      {
        v56 = sub_26CCCA694(v0 + 376);
        if (v57)
        {
          sub_26CC168C0(*(v39 + 56) + 32 * v56, v0 + 480);
          sub_26CC579C4(v0 + 376);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
          if (swift_dynamicCast())
          {
            v8 = *(v0 + 880);
            *(v0 + 1088) = v8;
            if (!*(v8 + 16))
            {
              *(v0 + 824) = 0x6449646E617262;
              *(v0 + 832) = 0xE700000000000000;
              sub_26CD3ABFC();
              if (*(v39 + 16) && (v110 = sub_26CCCA694(v0 + 176), (v111 & 1) != 0))
              {
                sub_26CC168C0(*(v39 + 56) + 32 * v110, v0 + 544);
                sub_26CC579C4(v0 + 176);
                if (swift_dynamicCast())
                {
LABEL_116:
                  *(v0 + 1096) = *(v0 + 840);
                  *(v0 + 1104) = *(v0 + 848);
                  v135 = swift_task_alloc();
                  *(v0 + 1112) = v135;
                  *v135 = v0;
                  v135[1] = sub_26CCFA178;

                  return sub_26CCFB66C();
                }
              }

              else
              {
                sub_26CC579C4(v0 + 176);
              }
            }

            goto LABEL_9;
          }

          goto LABEL_51;
        }
      }

      sub_26CC579C4(v0 + 376);
    }

    sub_26CC579C4(v0 + 296);
LABEL_36:
    v42 = 0;
    goto LABEL_37;
  }

  v132 = *(v0 + 1032);
  v133 = *(v0 + 1008);
  v134 = *(v0 + 936);

  sub_26CC1B544(v134, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_107:
  v114 = *(v0 + 1024);
  v115 = *(v0 + 1016);
  v116 = *(v0 + 928);
  sub_26CC1B4DC(*(v0 + 1000), v116, &qword_2804BCA30, &qword_26CD3DA70);
  if ((*(v114 + 48))(v116, 1, v115) == 1)
  {
    v117 = *(v0 + 1000);
    v118 = *(v0 + 992);
    v119 = *(v0 + 928);
    sub_26CC1B544(v117, &qword_2804BCA30, &qword_26CD3DA70);

    sub_26CC1B544(v119, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6FFD0(v118, v117);
  }

  else
  {
    v120 = *(v0 + 928);
    sub_26CC1B544(*(v0 + 992), &qword_2804BCA30, &qword_26CD3DA70);

    sub_26CC1B544(v120, &qword_2804BCA30, &qword_26CD3DA70);
    v36 = v35;
  }

  sub_26CC6FFD0(*(v0 + 1000), *(v0 + 912));
  v121 = *(v0 + 1000);
  v122 = *(v0 + 992);
  v123 = *(v0 + 984);
  v124 = *(v0 + 976);
  v125 = *(v0 + 968);
  v126 = *(v0 + 960);
  v127 = *(v0 + 952);
  v128 = *(v0 + 944);
  v129 = *(v0 + 936);
  v139 = *(v0 + 928);

  v130 = *(v0 + 8);

  return v130(v36);
}

unint64_t sub_26CCFB28C()
{
  result = qword_2804BD9B8;
  if (!qword_2804BD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD9B8);
  }

  return result;
}

uint64_t sub_26CCFB2E0(uint64_t a1)
{
  v2 = MEMORY[0x277D83B88];
  v20 = MEMORY[0x277D83B88];
  *&v19 = 2;
  sub_26CC331CC(&v19, v18);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v18, 0x656372756F73, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  if ((*(a1 + 88) & 1) == 0)
  {
    v5 = *(a1 + 80);
    v20 = v2;
    *&v19 = v5;
    sub_26CC331CC(&v19, v18);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v18, 0xD000000000000011, 0x800000026CD4E170, v6);
  }

  v7 = *(a1 + 496);
  if (v7)
  {
    v8 = *(a1 + 488);
    v20 = MEMORY[0x277D837D0];
    *&v19 = v8;
    *(&v19 + 1) = v7;
    sub_26CC331CC(&v19, v18);

    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v18, 0x4449646165726874, 0xE800000000000000, v9);
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v10 = *(a1 + 24) * 1000.0;
    v20 = sub_26CD3A1EC();
    __swift_allocate_boxed_opaque_existential_1(&v19);
    sub_26CD3A19C();
    sub_26CC331CC(&v19, v18);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v18, 0x6974617269707865, 0xEE00657461446E6FLL, v11);
  }

  v12 = qword_26CD47E78[*(a1 + 480)];
  v20 = MEMORY[0x277D83E88];
  *&v19 = v12;
  sub_26CC331CC(&v19, v18);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v18, 0x79726F6765746163, 0xE800000000000000, v13);
  v14 = *(a1 + 512);
  if (v14)
  {
    if (*(a1 + 504) == 0xD000000000000013 && v14 == 0x800000026CD51D50)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_26CD3AFDC();
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = MEMORY[0x277D839B0];
  LOBYTE(v19) = v15 & 1;
  sub_26CC331CC(&v19, v18);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v18, 0x6F69737365537369, 0xE90000000000006ELL, v16);
  return v3;
}

unint64_t sub_26CCFB618()
{
  result = qword_2804BD9C0;
  if (!qword_2804BD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD9C0);
  }

  return result;
}

uint64_t sub_26CCFB66C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  v0[37] = swift_task_alloc();
  v2 = sub_26CD39D0C();
  v0[38] = v2;
  v3 = *(v2 - 8);
  v0[39] = v3;
  v4 = *(v3 + 64) + 15;
  v0[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CCFB760, 0, 0);
}

uint64_t sub_26CCFB760()
{
  v1 = qword_2804BD9B0;
  if (qword_2804BD9B0)
  {
    v2 = v0[40];
    v3 = v0[37];

    v4 = v0[1];

    return v4(v1);
  }

  else
  {
    type metadata accessor for UTSURLRequestFactory();
    v6 = swift_task_alloc();
    v0[41] = v6;
    *v6 = v0;
    v6[1] = sub_26CCFB890;
    v7 = v0[37];

    return sub_26CD027F0(v7, 0x736C656E6E616863, 0xE800000000000000, 0, 0xE000000000000000, 0, 0);
  }
}

uint64_t sub_26CCFB890()
{
  v2 = *(*v1 + 328);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_26CCFBBE4;
  }

  else
  {
    v3 = sub_26CCFB9A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCFB9A8()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_26CCFBAC8;
  v6 = v0[40];

  return UTSNetworkManager.execute(request:)(v6);
}

uint64_t sub_26CCFBAC8(uint64_t a1)
{
  v3 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = a1;

  if (v1)
  {

    v4 = sub_26CCFC5D8;
  }

  else
  {
    v4 = sub_26CCFBD64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCFBBE4()
{
  v1 = v0[37];
  (*(v0[39] + 56))(v1, 1, 1, v0[38]);
  sub_26CC1B544(v1, &qword_2804BC3F8, &qword_26CD45490);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v2 + 64) = sub_26CC2E6E8();
  *(v2 + 32) = &unk_287DFB610;
  sub_26CD3A3DC();

  v3 = v0[40];
  v4 = v0[37];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_26CCFBD64()
{
  v1 = [*(v0 + 344) data];
  v2 = sub_26CD3A0BC();
  v4 = v3;

  v5 = Data.asDictionary()();
  sub_26CC18C50(v2, v4);
  if (v5)
  {
    if (*(v5 + 16) && (v6 = sub_26CC181C4(1635017060, 0xE400000000000000), (v7 & 1) != 0))
    {
      sub_26CC168C0(*(v5 + 56) + 32 * v6, v0 + 208);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 272);
        if (*(v8 + 16) && (v9 = sub_26CC181C4(0x736C656E6E616863, 0xE800000000000000), (v10 & 1) != 0))
        {
          sub_26CC168C0(*(v8 + 56) + 32 * v9, v0 + 240);

          if (swift_dynamicCast())
          {
            v11 = 0;
            v12 = *(v0 + 280);
            v15 = *(v12 + 64);
            v14 = v12 + 64;
            v13 = v15;
            v16 = -1;
            v58 = *(v0 + 280);
            v17 = -1 << *(v58 + 32);
            if (-v17 < 64)
            {
              v16 = ~(-1 << -v17);
            }

            v18 = v16 & v13;
            v19 = (63 - v17) >> 6;
            v20 = MEMORY[0x277D84F98];
            v21 = &qword_2804BD9D8;
            v57 = v14;
            while (v18)
            {
LABEL_16:
              v23 = __clz(__rbit64(v18));
              v18 &= v18 - 1;
              v24 = v23 | (v11 << 6);
              v25 = (*(v58 + 48) + 16 * v24);
              v27 = *v25;
              v26 = v25[1];
              sub_26CC168C0(*(v58 + 56) + 32 * v24, v0 + 32);
              *(v0 + 64) = v27;
              *(v0 + 72) = v26;
              sub_26CC331CC((v0 + 32), (v0 + 80));
              v28 = v21;
              sub_26CC1B4DC(v0 + 64, v0 + 112, v21, qword_26CD47D98);
              v29 = *(v0 + 120);

              if (swift_dynamicCast())
              {
                v32 = *(v0 + 288);
                sub_26CC1B4DC(v0 + 64, v0 + 160, v28, qword_26CD47D98);
                v33 = *(v0 + 160);
                v34 = *(v0 + 168);
                v35 = objc_allocWithZone(type metadata accessor for ChannelMetadata());
                v36 = ChannelMetadata.init(from:)(v32);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_26CD38F2C(v36, v33, v34, isUniquelyReferenced_nonNull_native);
                v21 = &qword_2804BD9D8;

                __swift_destroy_boxed_opaque_existential_1((v0 + 176));
                sub_26CC1B544(v0 + 64, &qword_2804BD9D8, qword_26CD47D98);
                v14 = v57;
              }

              else
              {
                if (qword_280BB9C20 != -1)
                {
                  swift_once();
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
                v30 = swift_allocObject();
                *(v30 + 16) = xmmword_26CD3C1E0;
                sub_26CD3AC6C();
                MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD51D10);
                MEMORY[0x26D6AD060](v27, v26);
                *(v30 + 32) = 0;
                *(v30 + 40) = 0xE000000000000000;
                sub_26CD3A98C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
                v31 = swift_allocObject();
                *(v31 + 16) = xmmword_26CD3C1E0;
                *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
                *(v31 + 64) = sub_26CC2E6E8();
                *(v31 + 32) = v30;
                sub_26CD3A3DC();

                v21 = v28;
                sub_26CC1B544(v0 + 64, v28, qword_26CD47D98);
                v14 = v57;
              }
            }

            while (1)
            {
              v22 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v22 >= v19)
              {
                v53 = *(v0 + 344);
                v55 = *(v0 + 312);
                v54 = *(v0 + 320);
                v56 = *(v0 + 304);

                qword_2804BD9B0 = v20;

                (*(v55 + 8))(v54, v56);
                goto LABEL_28;
              }

              v18 = *(v14 + 8 * v22);
              ++v11;
              if (v18)
              {
                v11 = v22;
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_37;
          }
        }

        else
        {
        }

        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        v38 = *(v0 + 344);
        v40 = *(v0 + 312);
        v39 = *(v0 + 320);
        v41 = *(v0 + 304);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v42 = swift_allocObject();
        v59 = xmmword_26CD3C1E0;
        *(v42 + 16) = xmmword_26CD3C1E0;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD00000000000003BLL, 0x800000026CD51CD0);
        v43 = [v38 description];
        goto LABEL_27;
      }
    }

    else
    {
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 344);
    v40 = *(v0 + 312);
    v39 = *(v0 + 320);
    v41 = *(v0 + 304);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v42 = swift_allocObject();
    v59 = xmmword_26CD3C1E0;
    *(v42 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD51C90);
    v43 = [v38 description];
    goto LABEL_27;
  }

  if (qword_280BB9C20 != -1)
  {
LABEL_37:
    swift_once();
  }

  v38 = *(v0 + 344);
  v40 = *(v0 + 312);
  v39 = *(v0 + 320);
  v41 = *(v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v42 = swift_allocObject();
  v59 = xmmword_26CD3C1E0;
  *(v42 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000033, 0x800000026CD51C50);
  v43 = [v38 description];
LABEL_27:
  v44 = v43;
  v45 = sub_26CD3A5CC();
  v47 = v46;

  MEMORY[0x26D6AD060](v45, v47);

  *(v42 + 32) = 0;
  *(v42 + 40) = 0xE000000000000000;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v48 = swift_allocObject();
  *(v48 + 16) = v59;
  *(v48 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v48 + 64) = sub_26CC2E6E8();
  *(v48 + 32) = v42;
  sub_26CD3A3DC();

  (*(v40 + 8))(v39, v41);
  v20 = 0;
LABEL_28:
  v49 = *(v0 + 320);
  v50 = *(v0 + 296);

  v51 = *(v0 + 8);

  return v51(v20);
}

uint64_t sub_26CCFC5D8()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26CD3C1E0;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v1 + 64) = sub_26CC2E6E8();
  *(v1 + 32) = &unk_287DFB610;
  sub_26CD3A3DC();

  v2 = v0[40];
  v3 = v0[37];

  v4 = v0[1];

  return v4(0);
}

unint64_t sub_26CCFC748()
{
  result = qword_2804BD9E0;
  if (!qword_2804BD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD9E0);
  }

  return result;
}

uint64_t sub_26CCFC79C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = sub_26CD3A07C();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26CD3A41C();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v14 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v41 = v13;
  sub_26CD3A3FC();
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_26CD3AC6C();

  v45 = 0xD000000000000029;
  v46 = 0x800000026CD51DC0;
  v15 = *(v2 + 16);
  v33 = *(v2 + 24);
  v34 = v15;
  MEMORY[0x26D6AD060]();
  v16 = v45;
  v17 = v46;
  sub_26CD3A99C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v18 = swift_allocObject();
  v44 = xmmword_26CD3C1E0;
  *(v18 + 16) = xmmword_26CD3C1E0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  v19 = sub_26CC19E10();
  *(v18 + 64) = v19;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  v40 = v14;
  sub_26CD3A3DC();

  sub_26CC1B2F4(v6);
  v20 = v38;
  if ((*(v38 + 48))(v6, 1, v7) == 1)
  {
    sub_26CC1B544(v6, &qword_2804BCA30, &qword_26CD3DA70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v21 = swift_allocObject();
    *(v21 + 16) = v44;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000003BLL, 0x800000026CD4E9D0);
    MEMORY[0x26D6AD060](v34, v33);
    MEMORY[0x26D6AD060](0xD000000000000010, 0x800000026CD51DF0);
    v22 = v46;
    *(v21 + 32) = v45;
    *(v21 + 40) = v22;
    sub_26CD3A98C();
    v23 = swift_allocObject();
    *(v23 + 16) = v44;
    *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v23 + 64) = sub_26CC2E6E8();
    *(v23 + 32) = v21;
    sub_26CD3A3DC();
  }

  else
  {
    v24 = v7;
    v25 = v35;
    (*(v20 + 32))(v35, v6, v24);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_26CD3AC6C();

    v45 = 0xD000000000000028;
    v46 = 0x800000026CD51E10;
    sub_26CC1B8FC();
    v26 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v26);

    v27 = v45;
    v28 = v46;
    sub_26CD3A99C();
    v29 = swift_allocObject();
    *(v29 + 16) = v44;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = v19;
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    sub_26CD3A3DC();

    sub_26CD3A0CC();
    (*(v20 + 8))(v25, v24);
  }

  sub_26CD3AA1C();
  v30 = v41;
  sub_26CD3A3FC();
  return (*(v42 + 8))(v30, v43);
}

uint64_t sub_26CCFCD54()
{
  v1 = v0[3];

  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices17TVAppCacheStorage____lazy_storage___cacheUrl, &qword_2804BC900, &unk_26CD47F10);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_26CCFCE70(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = objc_opt_self();
  v7 = a3;
  v8 = [v6 ams_sharedAccountStore];
  v9 = [v8 *a4];

  return v9;
}

TVAppAccountStoreObjC __swiftcall TVAppAccountStoreObjC.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_26CCFD150(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_26CCFD1C0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_26CCFD210(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id TVAppBagMock.__allocating_init(data:cachedData:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount] = 0;
  *&v5[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data] = a1;
  *&v5[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id TVAppBagMock.init(data:cachedData:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount] = 0;
  *&v2[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data] = a1;
  *&v2[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TVAppBagMock();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_26CCFD3B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CCFD46C;

  return sub_26CCFDD10(a1, a2);
}

uint64_t sub_26CCFD46C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_26CCFD570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_26CCFD594, 0, 0);
}

uint64_t sub_26CCFD594()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  v8 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v9 = sub_26CD3A07C();
  v10 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v8, v10 ^ 1u, 1, v9);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26CCFD6E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC16C10;

  return sub_26CCFDE4C(a1, a2);
}

uint64_t sub_26CCFD798(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CCFF690;

  return sub_26CCFDF94(a1, a2);
}

uint64_t sub_26CCFD850(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CCFF690;

  return sub_26CCFE0DC(a1, a2);
}

uint64_t sub_26CCFD908(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_26CC181C4(a1, a2);
    if (v8)
    {
      sub_26CC168C0(*(v6 + 56) + 32 * v7, v10);

      goto LABEL_6;
    }
  }

  memset(v10, 0, sizeof(v10));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCFD9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_26CC181C4(a1, a2);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  sub_26CC168C0(*(v8 + 56) + 32 * v9, v14);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v11 = sub_26CD3A07C();
  v12 = swift_dynamicCast();
  return (*(*(v11 - 8) + 56))(a3, v12 ^ 1u, 1, v11);
}

uint64_t sub_26CCFDB30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (*(v10 + 16))
  {

    v11 = sub_26CC181C4(a1, a2);
    if (v12)
    {
      sub_26CC168C0(*(v10 + 56) + 32 * v11, v14);

      goto LABEL_6;
    }
  }

  memset(v14, 0, sizeof(v14));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCFDC2C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_26CC181C4(a1, a2);
    if (v8)
    {
      sub_26CC168C0(*(v6 + 56) + 32 * v7, v10);

      goto LABEL_6;
    }
  }

  memset(v10, 0, sizeof(v10));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  sub_26CC54888();
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCFDD10(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_26CCFDD34, 0, 0);
}

uint64_t sub_26CCFDD34()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v8, v9);
}

uint64_t sub_26CCFDE4C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_26CCFDE70, 0, 0);
}

uint64_t sub_26CCFDE70()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
  v8 = swift_dynamicCast();
  v9 = *(v0 + 72);
  if (v8)
  {
    v10 = *(v0 + 72);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_26CCFDF94(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_26CCFDFB8, 0, 0);
}

uint64_t sub_26CCFDFB8()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD460, &unk_26CD45D60);
  v8 = swift_dynamicCast();
  v9 = *(v0 + 72);
  if (v8)
  {
    v10 = *(v0 + 72);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_26CCFE0DC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_26CCFE100, 0, 0);
}

uint64_t sub_26CCFE100()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  sub_26CC54888();
  v8 = swift_dynamicCast();
  v9 = *(v0 + 72);
  if (v8)
  {
    v10 = *(v0 + 72);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_26CCFE218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_26CCFE240, 0, 0);
}

uint64_t sub_26CCFE240()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v10 = swift_dynamicCast();
  (*(*(v8 - 8) + 56))(v9, v10 ^ 1u, 1, v8);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26CCFE380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_26CC181C4(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    memset(v15, 0, sizeof(v15));
    goto LABEL_6;
  }

  sub_26CC168C0(*(v10 + 56) + 32 * v11, v15);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v13 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v13 ^ 1u, 1, a3);
}

uint64_t sub_26CCFE494()
{
  v1 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26CCFE4D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26CCFE5A8()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v6;
    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

id TVAppBagMock.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TVAppBagMock.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVAppBagMock();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t dispatch thunk of TVAppBagMock.string(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CCFD46C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.url(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26CC246B8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of TVAppBagMock.dictionary(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CC16C10;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.array(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CCFF690;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.BOOLean(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CCFF690;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.integer(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xC8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CCFF690;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.double(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CCFF690;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.value<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x110);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26CC37110;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TVAppBagMock.prewarm()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x138);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC37110;

  return v6();
}

uint64_t sub_26CCFF698(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v6[0] = 1;
      v7 = 0x7070415654;
      v8 = 0xE500000000000000;
      v9 = v3;
      v10 = v4;
      swift_bridgeObjectRetain_n();
      sub_26CCDFD30(&v5, v6);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_26CCFF758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v83 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v69 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v69 - v9;
  v10 = sub_26CD3A07C();
  v78 = *(v10 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v69 - v15;
  sub_26CC1B4DC(a1, &v69 - v15, &qword_2804BC3F8, &qword_26CD45490);
  v17 = sub_26CD39D0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v85 = v18 + 48;
  v80 = v19;
  v81 = v18;
  if (!v19(v16, 1, v17))
  {
    sub_26CD39C0C();
  }

  sub_26CD00BDC();
  v20 = &unk_280BBC000;
  v84 = v17;
  v88 = v3;
  v82 = v16;
  v77 = v10;
  v96 = sub_26CD01D24();
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = sub_26CD3A59C();
  v23 = [v21 arrayForKey_];

  if (v23 && (v24 = sub_26CD3A7AC(), v23, v25 = sub_26CC77EFC(v24), , v25))
  {
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  sub_26CCFF698(v25);
  v86 = 0;

  v26 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_installedBundleIdentifiers;
  swift_beginAccess();
  v27 = *(v3 + v26);
  v28 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfoFormatted;
  swift_beginAccess();
  v29 = *(v3 + v28);
  v30 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_testBundleIdentifiers;
  swift_beginAccess();
  v31 = *(v3 + v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA08, &qword_26CD48050);
  inited = swift_initStackObject();
  v89 = xmmword_26CD3C1E0;
  *(inited + 16) = xmmword_26CD3C1E0;
  strcpy((inited + 32), "clientFeatures");
  *(inited + 47) = -18;
  v33 = v96;
  v34 = *(v96 + 16);
  v87 = v96;
  if (v34)
  {
    v35 = v31;
    v36 = sub_26CCDEDD4(v34, 0);
    v76 = sub_26CCE51EC(&v91, (v36 + 4), v34, v33);
    v20 = v91;
    v74 = v94;
    v75 = v93;
    v72 = v27;
    v73 = v95;

    v71 = v29;

    sub_26CC33234();
    if (v76 != v34)
    {
      __break(1u);
      goto LABEL_33;
    }

    v20 = &unk_280BBC000;
    v37 = v71;
    v27 = v72;
  }

  else
  {

    v35 = v31;
    v36 = MEMORY[0x277D84F90];
    v37 = v29;
  }

  *(inited + 48) = v36;
  v38 = sub_26CC32920(inited);
  swift_setDeallocating();
  sub_26CC1B544(inited + 32, &qword_2804BDA10, &unk_26CD48058);
  v39 = sub_26CD39D8C();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_26CD39D7C();
  v91 = v27;
  v92 = v37;
  v93 = v35;
  v94 = v38;
  sub_26CD01E48();
  v33 = v86;
  v42 = sub_26CD39D6C();
  if (v33)
  {

    if (qword_280BB9C20 == -1)
    {
LABEL_13:
      v44 = v20[380];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v45 = swift_allocObject();
      *(v45 + 16) = v89;
      v91 = 0;
      v92 = 0xE000000000000000;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000032, 0x800000026CD52150);
      v90 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      sub_26CD3AD1C();
      v46 = v92;
      *(v45 + 32) = v91;
      *(v45 + 40) = v46;
      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v47 = swift_allocObject();
      *(v47 + 16) = v89;
      *(v47 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v47 + 64) = sub_26CC2E6E8();
      *(v47 + 32) = v45;
      sub_26CD3A3DC();

      (*(v81 + 56))(v83, 1, 1, v84);
      v48 = v82;
      goto LABEL_27;
    }

LABEL_33:
    swift_once();
    goto LABEL_13;
  }

  v49 = v42;
  v50 = v43;

  v48 = v82;
  v51 = v84;
  v52 = v80;
  if (v80(v82, 1, v84))
  {
    sub_26CC18C50(v49, v50);
  }

  else
  {
    sub_26CD39CDC();
    v52 = v80;
  }

  v53 = v52(v48, 1, v51);
  v54 = v88;
  v55 = v52;
  v57 = v78;
  v56 = v79;
  if (!v53)
  {
    v59 = sub_26CD39C5C();
    if (*v58)
    {
      v60 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = *v60;
      *v60 = 0x8000000000000000;
      sub_26CD38A70(0xD000000000000010, 0x800000026CD4BD10, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
      *v60 = v90;
    }

    v59(&v91, 0);
    v51 = v84;
    v57 = v78;
    v56 = v79;
    v55 = v80;
  }

  if (v55(v48, 1, v51))
  {
    (*(v57 + 56))(v56, 1, 1, v77);
  }

  else
  {
    sub_26CD39C9C();
    v56 = v79;
    v62 = v77;
    if ((*(v57 + 48))(v79, 1, v77) != 1)
    {
      v66 = v70;
      (*(v57 + 32))(v70, v56, v62);
      sub_26CD01E9C();
      if (v80(v48, 1, v51))
      {
        (*(v57 + 8))(v66, v62);
      }

      else
      {
        v67 = v69;
        sub_26CD3A05C();

        (*(v57 + 56))(v67, 0, 1, v62);
        sub_26CD39CAC();
        (*(v57 + 8))(v66, v62);
      }

      v68 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest;
      swift_beginAccess();
      sub_26CD0257C(v48, v54 + v68);
      swift_endAccess();
      sub_26CC1B4DC(v48, v83, &qword_2804BC3F8, &qword_26CD45490);
      goto LABEL_27;
    }
  }

  sub_26CC1B544(v56, &qword_2804BCA30, &qword_26CD3DA70);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v63 = v20[380];
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v64 = swift_allocObject();
  *(v64 + 16) = v89;
  *(v64 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v64 + 64) = sub_26CC2E6E8();
  *(v64 + 32) = &unk_287DFC720;
  sub_26CD3A3DC();

  (*(v81 + 56))(v83, 1, 1, v51);
LABEL_27:

  return sub_26CC1B544(v48, &qword_2804BC3F8, &qword_26CD45490);
}

uint64_t sub_26CD00918()
{
  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest, &qword_2804BC3F8, &qword_26CD45490);
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_installedBundleIdentifiers);

  v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_testBundleIdentifiers);

  v3 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers);

  v4 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo);

  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfoFormatted);
}

uint64_t sub_26CD009A8()
{
  v0 = sub_26CD09390();
  v1 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest;

  sub_26CC1B544(v2 + v1, &qword_2804BC3F8, &qword_26CD45490);
  v3 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_installedBundleIdentifiers);

  v4 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_testBundleIdentifiers);

  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers);

  v6 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo);

  v7 = *(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfoFormatted);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfigurationRequestBuilder()
{
  result = qword_280BB9F70;
  if (!qword_280BB9F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CD00AE0()
{
  sub_26CD00B84();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26CD00B84()
{
  if (!qword_280BBB1E0)
  {
    sub_26CD39D0C();
    v0 = sub_26CD3AADC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BBB1E0);
    }
  }
}

uint64_t sub_26CD00BDC()
{
  v2 = sub_26CD39DBC();
  v96 = *(v2 - 8);
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v76 - v8;
  v10 = sub_26CD3A07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v76 - v16;
  sub_26CC589A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26CC1B544(v9, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v18 + 64) = sub_26CC2E6E8();
    *(v18 + 32) = &unk_287DFC5B8;
    sub_26CD3A3DC();

    sub_26CD025EC();
    swift_allocError();
    *v19 = 1;
    return swift_willThrow();
  }

  v87 = v5;
  v88 = v2;
  v90 = v0;
  sub_26CD39FDC();
  v22 = v11 + 8;
  v21 = *(v11 + 8);
  v21(v9, v10);
  (*(v11 + 32))(v17, v15, v10);
  v23 = sub_26CD3A08C();
  if (v1)
  {

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26CD3C1E0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v25 + 64) = sub_26CC2E6E8();
    *(v25 + 32) = &unk_287DFC588;
    sub_26CD3A3DC();

    sub_26CD025EC();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return (v21)(v17, v10);
  }

  v27 = v23;
  v28 = v24;
  sub_26CC18080(0, &qword_2804BDA18, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD938, &unk_26CD479F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26CD42990;
  *(v29 + 32) = sub_26CC18080(0, &unk_280BBB7A8, 0x277CBEAC0);
  *(v29 + 40) = sub_26CC18080(0, &qword_280BBB758, 0x277CBEA60);
  *(v29 + 48) = sub_26CC18080(0, &unk_280BBB748, 0x277CCACA8);
  sub_26CD3A9AC();
  v85 = v27;

  sub_26CC1B4DC(v95, v94, &qword_2804BBDA8, &qword_26CD3D5F0);
  if (!v94[3])
  {
    sub_26CC1B544(v94, &qword_2804BBDA8, &qword_26CD3D5F0);
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_26CD3C1E0;
    *(v52 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v52 + 64) = sub_26CC2E6E8();
    *(v52 + 32) = &unk_287DFC558;
    sub_26CD3A3DC();

    sub_26CD025EC();
    swift_allocError();
    *v53 = 2;
    swift_willThrow();
    sub_26CC18C50(v85, v28);
    sub_26CC1B544(v95, &qword_2804BBDA8, &qword_26CD3D5F0);
    return (v21)(v17, v10);
  }

  v83 = 0;
  v30 = v91;
  if (*(v91 + 16))
  {
    v31 = sub_26CC181C4(0xD000000000000010, 0x800000026CD52250);
    if (v32)
    {
      sub_26CC168C0(*(v30 + 56) + 32 * v31, v94);
      if (swift_dynamicCast())
      {
        v33 = *(v90 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo);
        *(v90 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo) = v91;
      }
    }
  }

  if (*(v30 + 16))
  {
    v34 = sub_26CC181C4(0x6269726373627553, 0xEA00000000006465);
    if (v35)
    {
      sub_26CC168C0(*(v30 + 56) + 32 * v34, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      if (swift_dynamicCast())
      {
        v36 = *(v90 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers);
        *(v90 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers) = v91;
      }
    }
  }

  if (*(v30 + 16))
  {
    v37 = sub_26CC181C4(0x656C6C6174736E49, 0xE900000000000064);
    if (v38)
    {
      sub_26CC168C0(*(v30 + 56) + 32 * v37, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      if (swift_dynamicCast())
      {
        v39 = v28;
        v40 = v91;
        v41 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_installedBundleIdentifiers;
        v42 = v90;
        swift_beginAccess();
        v43 = *(v42 + v41);
        *(v42 + v41) = v40;
        v28 = v39;
      }
    }
  }

  v44 = *(v30 + 16);
  v82 = v21;
  if (!v44)
  {
    goto LABEL_32;
  }

  v45 = sub_26CC181C4(1953719636, 0xE400000000000000);
  if ((v46 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_26CC168C0(*(v30 + 56) + 32 * v45, v94);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  if (swift_dynamicCast())
  {
    v47 = v28;
    v48 = v91;
    v49 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_testBundleIdentifiers;
    v50 = v90;
    swift_beginAccess();
    v51 = *(v50 + v49);
    *(v50 + v49) = v48;
    v28 = v47;
LABEL_32:
  }

  v54 = v90;
  v55 = *(*(v90 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers) + 16);
  if (!v55)
  {
    goto LABEL_49;
  }

  v78 = v28;
  v79 = v22;
  v80 = v17;
  v81 = v10;
  v86 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo;
  v89 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfoFormatted;
  v84 = (v96 + 8);

  v56 = (v77 + 40);
  do
  {
    v58 = *(v56 - 1);
    v57 = *v56;
    v59 = *(v54 + v86);
    v60 = *(v59 + 16);
    swift_bridgeObjectRetain_n();
    if (!v60)
    {
      goto LABEL_42;
    }

    v61 = sub_26CC181C4(v58, v57);
    if ((v62 & 1) == 0)
    {

LABEL_41:

LABEL_42:
      v68 = v58;
      v69 = v57;
      goto LABEL_43;
    }

    sub_26CC168C0(*(v59 + 56) + 32 * v61, v94);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v63 = v93;
    v96 = v92;
    v64 = v87;
    sub_26CD39D9C();
    sub_26CD39DAC();
    v94[0] = v96;
    v94[1] = v63;
    sub_26CC16DCC();
    v65 = sub_26CD3AB1C();
    v67 = v66;
    (*v84)(v64, v88);

    v68 = v58;
    v69 = v57;
    if (v67)
    {

      v68 = v65;
      v69 = v67;
    }

LABEL_43:
    v70 = v89;
    swift_beginAccess();
    v71 = *(v54 + v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v54 + v70) = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v71 = sub_26CCBF3FC(0, *(v71 + 2) + 1, 1, v71);
      *(v54 + v89) = v71;
    }

    v74 = *(v71 + 2);
    v73 = *(v71 + 3);
    if (v74 >= v73 >> 1)
    {
      v71 = sub_26CCBF3FC((v73 > 1), v74 + 1, 1, v71);
    }

    *(v71 + 2) = v74 + 1;
    v75 = &v71[32 * v74];
    *(v75 + 4) = v58;
    *(v75 + 5) = v57;
    *(v75 + 6) = v68;
    *(v75 + 7) = v69;
    v54 = v90;
    *(v90 + v89) = v71;
    swift_endAccess();
    v56 += 2;
    --v55;
  }

  while (v55);

  v10 = v81;
  v17 = v80;
  v28 = v78;
LABEL_49:
  sub_26CC18C50(v85, v28);
  sub_26CC1B544(v95, &qword_2804BBDA8, &qword_26CD3D5F0);
  return v82(v17, v10);
}

uint64_t sub_26CD01860()
{
  v1 = sub_26CD39D0C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[6] = v4;
  type metadata accessor for UTSURLRequestFactory();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_26CD019B8;

  return sub_26CC67CEC(v4, 0x72756769666E6F63, 0xEE00736E6F697461, 0x2F33762F7374752FLL, 0xE800000000000000, 0, 0);
}

uint64_t sub_26CD019B8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_26CD01CAC;
  }

  else
  {
    v3 = sub_26CD01ACC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CD01ACC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v18 = v0[4];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v5(v1, v2, v4);
  v6 = type metadata accessor for ConfigurationRequestBuilder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  (*(v3 + 56))(v9 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest, 1, 1, v4);
  v10 = MEMORY[0x277D84F90];
  *(v9 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_installedBundleIdentifiers) = MEMORY[0x277D84F90];
  *(v9 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_testBundleIdentifiers) = v10;
  *(v9 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers) = v10;
  v11 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo;
  *(v9 + v11) = sub_26CC194BC(v10);
  *(v9 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfoFormatted) = v10;
  v5(v18, v1, v4);
  v12 = sub_26CD0881C(v18);
  v13 = *(v3 + 8);
  v13(v1, v4);

  v13(v2, v4);
  v14 = (v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
  v15 = *(v12 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
  *v14 = 1414745936;
  v14[1] = 0xE400000000000000;

  v16 = v0[1];

  return v16(v12);
}

uint64_t sub_26CD01CAC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_26CD01D24()
{
  v0 = sub_26CC7C09C(&unk_287DFC5E8);
  swift_arrayDestroy();
  v4 = v0;
  v8[0] = 1;
  v9 = 0x7070415654;
  v10 = 0xE500000000000000;
  v11 = 0xD000000000000010;
  v12 = 0x800000026CD52230;
  sub_26CCDFD30(v5, v8);

  v6 = &type metadata for FeatureFlagManager;
  v7 = sub_26CC30530();
  LOBYTE(v5[0]) = 1;
  v1 = sub_26CD3A29C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  if (v1)
  {
    LOBYTE(v5[0]) = 1;
    v5[1] = 0x7070415654;
    v5[2] = 0xE500000000000000;
    v6 = 0x6F74616C70;
    v7 = 0xE500000000000000;
    sub_26CCDFD30(&v3, v5);
  }

  return v4;
}

unint64_t sub_26CD01E48()
{
  result = qword_280BB9F88;
  if (!qword_280BB9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9F88);
  }

  return result;
}

void *sub_26CD01E9C()
{
  v0 = sub_26CD39E2C();
  *&v31 = *(v0 - 8);
  v1 = *(v31 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  v30 = _s13TVAppServices26ContentRestrictionsUtilityO14getCountryCodeSSyFZ_0();
  v8 = v7;
  v9 = sub_26CC40F08();
  v10 = *MEMORY[0x277CEC570];
  if ((v10 & 0x80000000) != 0 || v9 != v10)
  {
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD48010;
    *(v15 + 56) = MEMORY[0x277D837D0];
    v16 = sub_26CC19E10();
    *(v15 + 32) = v30;
    *(v15 + 40) = v8;
    v17 = MEMORY[0x277D84D90];
    *(v15 + 96) = MEMORY[0x277D84D38];
    *(v15 + 104) = v17;
    *(v15 + 64) = v16;
    *(v15 + 72) = v14;

    sub_26CD3A5DC();
    sub_26CD39DFC();

    v11 = sub_26CCBE394(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = v11[2];
    v18 = v11[3];
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      *&v29 = v19 + 1;
      v28 = sub_26CCBE394(v18 > 1, v19 + 1, 1, v11);
      v20 = v29;
      v11 = v28;
    }

    v11[2] = v20;
    (*(v31 + 32))(v11 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19, v6, v0);
    v12 = sub_26CC40EDC();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v12 = sub_26CC40EDC();
  }

  v13 = *MEMORY[0x277CEC570];
  if ((v13 & 0x80000000) != 0 || v12 != v13)
  {
    v21 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD48010;
    *(v22 + 56) = MEMORY[0x277D837D0];
    v23 = sub_26CC19E10();
    *(v22 + 32) = v30;
    *(v22 + 40) = v8;
    v24 = MEMORY[0x277D84D90];
    *(v22 + 96) = MEMORY[0x277D84D38];
    *(v22 + 104) = v24;
    *(v22 + 64) = v23;
    *(v22 + 72) = v21;
    sub_26CD3A5DC();
    sub_26CD39DFC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_26CCBE394(0, v11[2] + 1, 1, v11);
    }

    v26 = v11[2];
    v25 = v11[3];
    if (v26 >= v25 >> 1)
    {
      v11 = sub_26CCBE394(v25 > 1, v26 + 1, 1, v11);
    }

    v11[2] = v26 + 1;
    (*(v31 + 32))(v11 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, v4, v0);
  }

  else
  {
  }

  return v11;
}

uint64_t sub_26CD0257C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD025EC()
{
  result = qword_280BB9C38[0];
  if (!qword_280BB9C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BB9C38);
  }

  return result;
}

unint64_t sub_26CD02654()
{
  result = qword_2804BDA20;
  if (!qword_2804BDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA20);
  }

  return result;
}

uint64_t static UTSURLRequestFactory.create(route:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC246B8;

  return sub_26CD027F0(a1, a2, a3, 0, 0xE000000000000000, 0, 0);
}

uint64_t UTSURLRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CD027F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[43] = a6;
  v7[44] = a7;
  v7[41] = a4;
  v7[42] = a5;
  v7[39] = a2;
  v7[40] = a3;
  v7[38] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378) - 8) + 64) + 15;
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v10 = sub_26CD3A07C();
  v7[50] = v10;
  v11 = *(v10 - 8);
  v7[51] = v11;
  v12 = *(v11 + 64) + 15;
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD02968, 0, 0);
}

uint64_t sub_26CD02968()
{
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = qword_280BBCC18;
  v0[55] = qword_280BBCC18;
  v7 = v2;
  v8 = v1;

  MEMORY[0x26D6AD060](v4, v3);
  v0[56] = v7;
  v0[57] = v8;

  return MEMORY[0x2822009F8](sub_26CD02A3C, v5, 0);
}

uint64_t sub_26CD02A3C()
{
  v1 = v0[55];
  sub_26CD199A8(v0[56], v0[57]);
  v3 = v2;

  v0[58] = v3;

  return MEMORY[0x2822009F8](sub_26CD02ABC, 0, 0);
}

uint64_t sub_26CD02ABC()
{
  v1 = *(v0 + 352);
  if (*(v0 + 464))
  {

    if (!v1)
    {
      *(v0 + 488) = 0;
      v5 = *(v0 + 440);
      v7 = *(v0 + 312);
      v6 = *(v0 + 320);
      v21 = *(v0 + 328);
      v22 = *(v0 + 336);

      MEMORY[0x26D6AD060](v7, v6);
      *(v0 + 496) = v21;
      *(v0 + 504) = v22;
      v4 = sub_26CD02EF4;
      v3 = v5;
      goto LABEL_8;
    }

    v1 = *(v0 + 352);
  }

  else if (!v1)
  {
    *(v0 + 66) = 1;
    v18 = swift_task_alloc();
    *(v0 + 472) = v18;
    *v18 = v0;
    v18[1] = sub_26CD02D34;
    v19 = *(v0 + 440);

    return sub_26CD15604((v0 + 66), 0.0);
  }

  v2 = *(v0 + 344);
  *(v0 + 544) = v1;
  *(v0 + 536) = v2;
  *(v0 + 528) = 0;

  *(v0 + 552) = sub_26CCF3448(&unk_287DF9B58);
  sub_26CD04454(&unk_287DF9B78);
  if (v1)
  {
    v3 = *(v0 + 440);
    v4 = sub_26CD03110;
LABEL_8:

    return MEMORY[0x2822009F8](v4, v3, 0);
  }

  sub_26CC6848C();
  swift_allocError();
  *v8 = 2;
  swift_willThrow();
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v11 = *(v0 + 416);
  v13 = *(v0 + 384);
  v12 = *(v0 + 392);
  v15 = *(v0 + 368);
  v14 = *(v0 + 376);
  v16 = *(v0 + 360);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26CD02D34(void *a1)
{
  v4 = *(*v2 + 472);
  v7 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v5 = sub_26CD04204;
  }

  else
  {

    v5 = sub_26CD02E50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CD02E50()
{
  v0[61] = v0[60];
  v1 = v0[55];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[41];
  v6 = v0[42];

  MEMORY[0x26D6AD060](v3, v2);
  v0[62] = v5;
  v0[63] = v6;

  return MEMORY[0x2822009F8](sub_26CD02EF4, v1, 0);
}

uint64_t sub_26CD02EF4()
{
  v1 = v0[55];
  v2 = sub_26CD199A8(v0[62], v0[63]);
  v4 = v3;

  v0[64] = v2;
  v0[65] = v4;

  return MEMORY[0x2822009F8](sub_26CD02F84, 0, 0);
}

uint64_t sub_26CD02F84()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[61];
  v0[68] = v1;
  v0[67] = v2;
  v0[66] = v3;
  v4 = v0[44];

  v0[69] = sub_26CCF3448(&unk_287DF9B58);
  sub_26CD04454(&unk_287DF9B78);
  if (v1)
  {
    v5 = v0[55];

    return MEMORY[0x2822009F8](sub_26CD03110, v5, 0);
  }

  else
  {

    sub_26CC6848C();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v8 = v0[53];
    v7 = v0[54];
    v9 = v0[52];
    v11 = v0[48];
    v10 = v0[49];
    v13 = v0[46];
    v12 = v0[47];
    v14 = v0[45];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_26CD03110()
{
  v1 = *(v0 + 440);
  swift_beginAccess();
  sub_26CC1B4DC(v1 + 128, v0 + 72, &qword_2804BDA30, qword_26CD482E0);
  if (*(v0 + 72))
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    sub_26CD04534(v0 + 72, v0 + 120);
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
    sub_26CD22CB8(v3, v2, v0 + 16);
    sub_26CD04590(v0 + 120);
    if (*(v0 + 24))
    {
      *(v0 + 256) = *(v0 + 32);
      v4 = *(v0 + 264);
      *(v0 + 560) = *(v0 + 256);
      *(v0 + 568) = v4;
      sub_26CD045E4(v0 + 256, v0 + 288);
      sub_26CC1B544(v0 + 16, &qword_2804BDA38, qword_26CD48278);
      v5 = sub_26CD03260;
      goto LABEL_6;
    }
  }

  else
  {
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
  }

  v5 = sub_26CD03A5C;
LABEL_6:

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CD03260()
{
  if (*(v0 + 560) == *(v0 + 312) && *(v0 + 568) == *(v0 + 320))
  {
    sub_26CC7BDB4(v0 + 256);
    goto LABEL_8;
  }

  v2 = sub_26CD3AFDC();
  sub_26CC7BDB4(v0 + 256);
  if (v2)
  {
LABEL_8:
    v3 = *(v0 + 336);
    v59 = *(v0 + 328);
  }

  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 528);
  v7 = *(v0 + 408);
  v60 = *(v0 + 536);
  v62 = *(v0 + 400);
  v9 = *(v0 + 384);
  v8 = *(v0 + 392);
  v10 = *(v0 + 320);
  *(v0 + 272) = *(v0 + 312);
  *(v0 + 280) = v10;
  *(swift_task_alloc() + 16) = v4;
  sub_26CC86D6C();
  sub_26CD3A92C();

  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  *(v0 + 200) = *(v0 + 168);
  *(v0 + 216) = v11;
  *(v0 + 224) = v12;
  sub_26CC86DC0();
  sub_26CD3A66C();

  sub_26CD3A03C();

  sub_26CD3A02C();

  sub_26CC1B544(v9, &qword_2804BCA30, &qword_26CD3DA70);
  v13 = *(v7 + 48);
  if (v13(v8, 1, v62) == 1)
  {
    sub_26CC1B544(*(v0 + 392), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 312);
    v14 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v15, v14);
    *(v16 + 32) = 0xD00000000000001BLL;
    *(v16 + 40) = 0x800000026CD522A0;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26CD3C1E0;
    *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v17 + 64) = sub_26CC2E6E8();
    *(v17 + 32) = v16;
    sub_26CD3A3DC();

    sub_26CD044E0();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
LABEL_19:
    v40 = *(v0 + 424);
    v39 = *(v0 + 432);
    v41 = *(v0 + 416);
    v43 = *(v0 + 384);
    v42 = *(v0 + 392);
    v45 = *(v0 + 368);
    v44 = *(v0 + 376);
    v46 = *(v0 + 360);

    v47 = *(v0 + 8);
    goto LABEL_20;
  }

  v20 = *(v0 + 360);
  v19 = *(v0 + 368);
  v21 = *(*(v0 + 408) + 32);
  (v21)(*(v0 + 432), *(v0 + 392), *(v0 + 400));
  sub_26CD39E6C();
  sub_26CC1B4DC(v19, v20, &qword_2804BC628, &qword_26CD41378);
  v22 = sub_26CD39EAC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    v24 = *(v0 + 400);
    v25 = *(v0 + 408);
    v26 = *(v0 + 376);
    sub_26CC1B544(*(v0 + 360), &qword_2804BC628, &qword_26CD41378);
    (*(v25 + 56))(v26, 1, 1, v24);
LABEL_16:
    sub_26CC1B544(*(v0 + 376), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 432);
    v31 = *(v0 + 400);
    v32 = *(v0 + 408);
    v33 = *(v0 + 368);
    v35 = *(v0 + 312);
    v34 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v35, v34);
    *(v36 + 32) = 0xD000000000000025;
    *(v36 + 40) = 0x800000026CD522C0;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    *(v37 + 32) = v36;
    sub_26CD3A3DC();

    sub_26CC6848C();
    swift_allocError();
    *v38 = 5;
    swift_willThrow();
    sub_26CC1B544(v33, &qword_2804BC628, &qword_26CD41378);
    (*(v32 + 8))(v30, v31);
    goto LABEL_19;
  }

  v27 = *(v0 + 400);
  v28 = *(v0 + 376);
  v29 = *(v0 + 360);
  sub_26CD39E7C();
  (*(v23 + 8))(v29, v22);
  if (v13(v28, 1, v27) == 1)
  {
    goto LABEL_16;
  }

  v50 = *(v0 + 424);
  v49 = *(v0 + 432);
  v51 = *(v0 + 408);
  v52 = *(v0 + 416);
  v53 = *(v0 + 392);
  v54 = *(v0 + 400);
  v61 = *(v0 + 384);
  v58 = *(v0 + 376);
  v55 = *(v0 + 368);
  v63 = *(v0 + 360);
  v56 = *(v0 + 304);
  v21(v50);
  (*(v51 + 16))(v52, v50, v54);
  sub_26CD39C7C();
  v57 = *(v51 + 8);
  v57(v50, v54);
  sub_26CC1B544(v55, &qword_2804BC628, &qword_26CD41378);
  v57(v49, v54);

  v47 = *(v0 + 8);
LABEL_20:

  return v47();
}

uint64_t sub_26CD03A5C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 408);
  v58 = *(v0 + 400);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 320);
  *(v0 + 272) = *(v0 + 312);
  *(v0 + 280) = v8;
  *(swift_task_alloc() + 16) = v1;
  sub_26CC86D6C();
  sub_26CD3A92C();

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  *(v0 + 200) = *(v0 + 168);
  *(v0 + 216) = v9;
  *(v0 + 224) = v10;
  sub_26CC86DC0();
  sub_26CD3A66C();

  sub_26CD3A03C();

  sub_26CD3A02C();

  sub_26CC1B544(v7, &qword_2804BCA30, &qword_26CD3DA70);
  v11 = *(v5 + 48);
  if (v11(v6, 1, v58) == 1)
  {
    sub_26CC1B544(*(v0 + 392), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v13, v12);
    *(v14 + 32) = 0xD00000000000001BLL;
    *(v14 + 40) = 0x800000026CD522A0;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = v14;
    sub_26CD3A3DC();

    sub_26CD044E0();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
LABEL_11:
    v38 = *(v0 + 424);
    v37 = *(v0 + 432);
    v39 = *(v0 + 416);
    v41 = *(v0 + 384);
    v40 = *(v0 + 392);
    v43 = *(v0 + 368);
    v42 = *(v0 + 376);
    v44 = *(v0 + 360);

    v45 = *(v0 + 8);
    goto LABEL_12;
  }

  v18 = *(v0 + 360);
  v17 = *(v0 + 368);
  v19 = *(*(v0 + 408) + 32);
  (v19)(*(v0 + 432), *(v0 + 392), *(v0 + 400));
  sub_26CD39E6C();
  sub_26CC1B4DC(v17, v18, &qword_2804BC628, &qword_26CD41378);
  v20 = sub_26CD39EAC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    v22 = *(v0 + 400);
    v23 = *(v0 + 408);
    v24 = *(v0 + 376);
    sub_26CC1B544(*(v0 + 360), &qword_2804BC628, &qword_26CD41378);
    (*(v23 + 56))(v24, 1, 1, v22);
LABEL_8:
    sub_26CC1B544(*(v0 + 376), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 432);
    v29 = *(v0 + 400);
    v30 = *(v0 + 408);
    v31 = *(v0 + 368);
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v33, v32);
    *(v34 + 32) = 0xD000000000000025;
    *(v34 + 40) = 0x800000026CD522C0;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_26CD3C1E0;
    *(v35 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v35 + 64) = sub_26CC2E6E8();
    *(v35 + 32) = v34;
    sub_26CD3A3DC();

    sub_26CC6848C();
    swift_allocError();
    *v36 = 5;
    swift_willThrow();
    sub_26CC1B544(v31, &qword_2804BC628, &qword_26CD41378);
    (*(v30 + 8))(v28, v29);
    goto LABEL_11;
  }

  v25 = *(v0 + 400);
  v26 = *(v0 + 376);
  v27 = *(v0 + 360);
  sub_26CD39E7C();
  (*(v21 + 8))(v27, v20);
  if (v11(v26, 1, v25) == 1)
  {
    goto LABEL_8;
  }

  v48 = *(v0 + 424);
  v47 = *(v0 + 432);
  v49 = *(v0 + 408);
  v50 = *(v0 + 416);
  v51 = *(v0 + 392);
  v52 = *(v0 + 400);
  v57 = *(v0 + 384);
  v56 = *(v0 + 376);
  v53 = *(v0 + 368);
  v59 = *(v0 + 360);
  v54 = *(v0 + 304);
  v19(v48);
  (*(v49 + 16))(v50, v48, v52);
  sub_26CD39C7C();
  v55 = *(v49 + 8);
  v55(v48, v52);
  sub_26CC1B544(v53, &qword_2804BC628, &qword_26CD41378);
  v55(v47, v52);

  v45 = *(v0 + 8);
LABEL_12:

  return v45();
}

uint64_t sub_26CD04204()
{
  v1 = v0[60];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];

  v10 = v0[1];

  return v10();
}

uint64_t static UTSURLRequestFactory.create(route:basePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26CC37110;

  return sub_26CD027F0(a1, a2, a3, a4, a5, 0, 0);
}

unint64_t sub_26CD043B4()
{
  result = qword_2804BDA28;
  if (!qword_2804BDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA28);
  }

  return result;
}

unint64_t sub_26CD044E0()
{
  result = qword_280BBA9B0;
  if (!qword_280BBA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBA9B0);
  }

  return result;
}

uint64_t sub_26CD04640()
{
  v1[37] = v0;
  v2 = sub_26CD39E2C();
  v1[38] = v2;
  v3 = *(v2 - 8);
  v1[39] = v3;
  v4 = *(v3 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v6 = sub_26CD39D0C();
  v1[44] = v6;
  v7 = *(v6 - 8);
  v1[45] = v7;
  v8 = *(v7 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v9 = sub_26CD3A07C();
  v1[51] = v9;
  v10 = *(v9 - 8);
  v1[52] = v10;
  v11 = *(v10 + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD04844, 0, 0);
}

uint64_t sub_26CD04844()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[43];
  v7 = v0[37];
  v8 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  v0[55] = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v0[56] = v9;
  v0[57] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33 = v9;
  v35 = v7;
  v9(v3, v7 + v8, v4);
  sub_26CD39C9C();
  v10 = *(v5 + 8);
  v0[58] = v10;
  v0[59] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v4);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_26CC1B544(v0[43], &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v11 = v0[48];
    v12 = v0[44];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000004BLL, 0x800000026CD52330);
    v33(v11, v35 + v8, v12);
    sub_26CD05DEC();
    v14 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v14);

    v10(v11, v12);
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = v13;
    sub_26CD3A3DC();

    sub_26CC6848C();
    swift_allocError();
    *v16 = 4;
    swift_willThrow();
    v18 = v0[53];
    v17 = v0[54];
    v20 = v0[49];
    v19 = v0[50];
    v22 = v0[47];
    v21 = v0[48];
    v23 = v0[46];
    v25 = v0[42];
    v24 = v0[43];
    v34 = v0[41];
    v36 = v0[40];

    v26 = v0[1];

    return v26();
  }

  else
  {
    (*(v0[52] + 32))(v0[54], v0[43], v0[51]);
    v28 = sub_26CD39FFC();
    v30 = v29;
    v0[60] = v28;
    v0[61] = v29;
    v31 = swift_task_alloc();
    v0[62] = v31;
    *v31 = v0;
    v31[1] = sub_26CD04C7C;
    v32 = v0[37];

    return sub_26CD05E44(v28, v30);
  }
}

uint64_t sub_26CD04C7C(uint64_t a1)
{
  v2 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = a1;

  return MEMORY[0x2822009F8](sub_26CD04D7C, 0, 0);
}

uint64_t sub_26CD04D7C()
{
  v1 = v0[54];
  v2 = URL.queryParameters.getter();
  v3 = v0[63];
  if (v2)
  {
    v4 = v2;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v0[39];
      v9 = *(v6 + 16);
      v8 = v6 + 16;
      v7 = v9;
      v29 = (*(v8 + 64) + 32) & ~*(v8 + 64);
      v10 = v3 + v29;
      v11 = *(v8 + 56);
      v30 = v9;
      v31 = MEMORY[0x277D84F90];
      do
      {
        v14 = v0[41];
        v7(v14, v10, v0[38]);
        v15 = swift_task_alloc();
        *(v15 + 16) = v14;

        LOBYTE(v14) = sub_26CCF1604(sub_26CD076F0, v15, v4);

        if ((v14 & 1) == 0)
        {
          v7(v0[40], v0[41], v0[38]);
          v16 = v31;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_26CCBE394(0, v31[2] + 1, 1, v31);
          }

          v18 = v16[2];
          v17 = v16[3];
          if (v18 >= v17 >> 1)
          {
            v16 = sub_26CCBE394(v17 > 1, v18 + 1, 1, v16);
          }

          v12 = v0[40];
          v13 = v0[38];
          v16[2] = v18 + 1;
          v31 = v16;
          (*(v8 + 16))(v16 + v29 + v18 * v11, v12, v13);
        }

        (*(v8 - 8))(v0[41], v0[38]);
        v10 += v11;
        --v5;
        v7 = v30;
      }

      while (v5);
    }

    v19 = v0[63];
  }

  v20 = v0[54];
  v21 = v0[55];
  v23 = v0[52];
  v22 = v0[53];
  v24 = v0[51];
  v25 = v0[42];
  v26 = v0[37];
  sub_26CD3A05C();

  (*(v23 + 16))(v25, v22, v24);
  (*(v23 + 56))(v25, 0, 1, v24);
  swift_beginAccess();
  sub_26CD39CAC();
  swift_endAccess();
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  v27 = qword_280BBCC18;
  v0[64] = qword_280BBCC18;

  return MEMORY[0x2822009F8](sub_26CD05088, v27, 0);
}

uint64_t sub_26CD05088()
{
  v1 = *(v0 + 512);
  swift_beginAccess();
  sub_26CD07680(v1 + 128, v0 + 72);
  if (*(v0 + 72))
  {
    v3 = *(v0 + 480);
    v2 = *(v0 + 488);
    sub_26CD04534(v0 + 72, v0 + 120);
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
    sub_26CD22CB8(v3, v2, v0 + 16);

    sub_26CD04590(v0 + 120);
    if (*(v0 + 24))
    {
      *(v0 + 66) = *(v0 + 65);
      sub_26CC1B544(v0 + 16, &qword_2804BDA38, qword_26CD48278);
      v4 = sub_26CD051C0;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(v0 + 488);

    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
  }

  v4 = sub_26CD05718;
LABEL_6:

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD051C0()
{
  if (*(v0 + 66))
  {
    v1 = *(v0 + 424);
    v2 = objc_allocWithZone(MEMORY[0x277CCAB70]);
    v3 = sub_26CD39FCC();
    v4 = [v2 initWithURL_];
    *(v0 + 520) = v4;

    if (qword_280BB9C28 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 464);
    v54 = *(v0 + 472);
    v51 = *(v0 + 448);
    v52 = *(v0 + 456);
    v5 = *(v0 + 440);
    v6 = *(v0 + 392);
    v7 = *(v0 + 352);
    v8 = *(v0 + 296);
    v9 = sub_26CD3A59C();
    MGGetSInt32Answer();

    v10 = sub_26CD3A59C();

    v11 = sub_26CD3A59C();
    [v4 setValue:v10 forHTTPHeaderField:v11];

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = sub_26CD3A59C();
    v14 = [v12 integerForKey_];

    v15 = 91;
    if (v14)
    {
      v15 = v14;
    }

    *(v0 + 288) = v15;
    sub_26CD3AF8C();
    v16 = sub_26CD3A59C();

    v17 = sub_26CD3A59C();
    [v4 setValue:v16 forHTTPHeaderField:v17];

    v18 = sub_26CD3A59C();
    v19 = sub_26CD3A59C();
    [v4 setValue:v18 forHTTPHeaderField:v19];

    v51(v6, v8 + v5, v7);
    v20 = sub_26CD39CCC();
    v22 = v21;
    v53(v6, v7);
    if (v22 >> 60 == 15)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_26CD3A09C();
      sub_26CC1D1B8(v20, v22);
    }

    v39 = *(v0 + 448);
    v56 = *(v0 + 456);
    v40 = *(v0 + 440);
    v41 = *(v0 + 384);
    v43 = *(v0 + 360);
    v42 = *(v0 + 368);
    v44 = *(v0 + 352);
    v45 = *(v0 + 296);
    [v4 setHTTPBody_];

    v46 = sub_26CD3A59C();
    [v4 setHTTPMethod_];

    sub_26CD39C6C();
    swift_beginAccess();
    v47 = *(v43 + 40);
    *(v0 + 528) = v47;
    *(v0 + 536) = (v43 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
    v47(v45 + v40, v41, v44);
    swift_endAccess();
    type metadata accessor for NetworkRequestSigningManager();
    v39(v42, v45 + v40, v44);
    v48 = swift_task_alloc();
    *(v0 + 544) = v48;
    *v48 = v0;
    v48[1] = sub_26CD05834;
    v50 = *(v0 + 368);
    v49 = *(v0 + 376);

    return sub_26CC60760(v49, v50);
  }

  else
  {
    v24 = *(v0 + 432);
    v25 = *(v0 + 408);
    v26 = *(*(v0 + 416) + 8);
    v26(*(v0 + 424), v25);
    v26(v24, v25);
    v28 = *(v0 + 424);
    v27 = *(v0 + 432);
    v30 = *(v0 + 392);
    v29 = *(v0 + 400);
    v32 = *(v0 + 376);
    v31 = *(v0 + 384);
    v33 = *(v0 + 368);
    v35 = *(v0 + 336);
    v34 = *(v0 + 344);
    v36 = *(v0 + 328);
    v55 = *(v0 + 320);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_26CD05718()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = *(v0[52] + 8);
  v3(v0[53], v2);
  v3(v1, v2);
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[49];
  v6 = v0[50];
  v9 = v0[47];
  v8 = v0[48];
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];
  v13 = v0[41];
  v16 = v0[40];

  v14 = v0[1];

  return v14();
}

uint64_t sub_26CD05834()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 472);
  (*(v2 + 464))(*(v2 + 368), *(v2 + 352));
  if (v0)
  {
    v6 = sub_26CD05B18;
  }

  else
  {
    v6 = sub_26CD059A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26CD059A4()
{
  v22 = *(v0 + 528);
  v23 = *(v0 + 536);
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 408);
  v6 = *(v0 + 376);
  v7 = *(v0 + 352);
  v8 = *(v0 + 296);

  v9 = *(v4 + 8);
  v9(v3, v5);
  v9(v1, v5);
  swift_beginAccess();
  v22(v8 + v2, v6, v7);
  swift_endAccess();
  v11 = *(v0 + 424);
  v10 = *(v0 + 432);
  v13 = *(v0 + 392);
  v12 = *(v0 + 400);
  v15 = *(v0 + 376);
  v14 = *(v0 + 384);
  v16 = *(v0 + 368);
  v18 = *(v0 + 336);
  v17 = *(v0 + 344);
  v19 = *(v0 + 328);
  v24 = *(v0 + 320);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_26CD05B18()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v9 = *(v0 + 392);
  v8 = *(v0 + 400);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 368);
  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 328);
  v18 = *(v0 + 320);
  v19 = *(v0 + 552);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26CD05C44()
{
  v1 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  v2 = sub_26CD39D0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UTSNetworkRequestDecorator()
{
  result = qword_2804BDA48;
  if (!qword_2804BDA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CD05D54()
{
  result = sub_26CD39D0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_26CD05DEC()
{
  result = qword_2804BDA60;
  if (!qword_2804BDA60)
  {
    sub_26CD39D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA60);
  }

  return result;
}

uint64_t sub_26CD05E44(uint64_t a1, uint64_t a2)
{
  v3[70] = v2;
  v3[69] = a2;
  v3[68] = a1;
  v4 = sub_26CD39D0C();
  v3[71] = v4;
  v5 = *(v4 - 8);
  v3[72] = v5;
  v6 = *(v5 + 64) + 15;
  v3[73] = swift_task_alloc();
  v7 = sub_26CD39E2C();
  v3[74] = v7;
  v8 = *(v7 - 8);
  v3[75] = v8;
  v9 = *(v8 + 64) + 15;
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD05F80, 0, 0);
}

uint64_t sub_26CD05F80()
{
  *(v0 + 528) = MEMORY[0x277D84FA0];
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBCC18;
  *(v0 + 632) = qword_280BBCC18;

  return MEMORY[0x2822009F8](sub_26CD06024, v1, 0);
}

uint64_t sub_26CD06024()
{
  v1 = v0[79];
  v0[80] = sub_26CD19808(v0[68], v0[69]);

  return MEMORY[0x2822009F8](sub_26CD06098, 0, 0);
}

uint64_t sub_26CD06098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 640);
  if (v4)
  {
    v5 = 0;
    v6 = v4 + 64;
    v7 = -1;
    v8 = -1 << *(v4 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v4 + 64);
    v10 = (63 - v8) >> 6;
    v45 = (*(v3 + 600) + 8);
    v11 = MEMORY[0x277D837D0];
    v44 = *(v3 + 640);
    if (!v9)
    {
      goto LABEL_8;
    }

    do
    {
      while (1)
      {
        v12 = v5;
LABEL_15:
        v15 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v16 = v15 | (v12 << 6);
        v17 = (*(v4 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        sub_26CC168C0(*(v4 + 56) + 32 * v16, v3 + 328);
        *(v3 + 216) = v19;
        *(v3 + 224) = v18;
        sub_26CC331CC((v3 + 328), (v3 + 232));

        v14 = v12;
LABEL_16:
        *(v3 + 168) = *(v3 + 216);
        *(v3 + 184) = *(v3 + 232);
        *(v3 + 200) = *(v3 + 248);
        if (!*(v3 + 176))
        {

          v27 = *(v3 + 528);
          goto LABEL_23;
        }

        v20 = *(v3 + 168);
        sub_26CC331CC((v3 + 184), (v3 + 360));
        if (swift_dynamicCast())
        {
          break;
        }

        v5 = v14;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      v48 = v14;
      v21 = *(v3 + 624);
      v22 = *(v3 + 616);
      v46 = *(v3 + 592);
      v23 = *(v3 + 512);
      v24 = v11;
      v25 = *(v3 + 520);
      sub_26CD39DFC();

      v11 = v24;

      v26 = v22;
      v4 = v44;
      sub_26CCDEE64(v21, v26);
      a1 = (*v45)(v21, v46);
      v5 = v48;
    }

    while (v9);
LABEL_8:
    if (v10 <= v5 + 1)
    {
      v13 = v5 + 1;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        v9 = 0;
        *(v3 + 248) = 0u;
        *(v3 + 232) = 0u;
        *(v3 + 216) = 0u;
        goto LABEL_16;
      }

      v9 = *(v6 + 8 * v12);
      ++v5;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
LABEL_23:
    v28 = v27 + 56;
    v29 = -1;
    v30 = -1 << *(v27 + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & *(v27 + 56);
    v32 = (63 - v30) >> 6;
    v49 = *(v3 + 600);
    v47 = (v49 + 8);

    v33 = 0;
    while (v31)
    {
LABEL_31:
      v35 = a1;
      (*(v49 + 16))(*(v3 + 608), *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v31)) | (v33 << 6)), *(v3 + 592));
      v36 = sub_26CD39E0C();
      v38 = *(v3 + 608);
      v39 = *(v3 + 592);
      if (v36 == 26227 && v37 == 0xE200000000000000)
      {

        (*v47)(v38, v39);
LABEL_41:

        a2 = *(v3 + 632);
        a1 = sub_26CD066F8;
        a3 = 0;

        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      v31 &= v31 - 1;
      v41 = sub_26CD3AFDC();

      (*v47)(v38, v39);
      a1 = v35;
      if (v41)
      {
        goto LABEL_41;
      }
    }

    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        v42 = swift_task_alloc();
        *(v3 + 648) = v42;
        *v42 = v3;
        v42[1] = sub_26CD064F4;

        return sub_26CCCA3E8();
      }

      v31 = *(v28 + 8 * v34);
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26CD064F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 648);
  v8 = *v3;
  *(*v3 + 656) = v2;

  if (v2)
  {
    v9 = sub_26CD074CC;
  }

  else
  {
    *(v6 + 664) = a2;
    *(v6 + 672) = a1;
    v9 = sub_26CD0662C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26CD0662C()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[75];
  v6 = v0[74];
  sub_26CD39DFC();

  sub_26CCDEE64(v3, v4);
  (*(v5 + 8))(v3, v6);
  v7 = v0[79];

  return MEMORY[0x2822009F8](sub_26CD066F8, v7, 0);
}

uint64_t sub_26CD066F8()
{
  v1 = *(v0 + 632);
  swift_beginAccess();
  sub_26CD07680(v1 + 128, v0 + 72);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 552);
    v3 = *(v0 + 544);
    sub_26CD04534(v0 + 72, v0 + 120);
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
    sub_26CD22CB8(v3, v2, v0 + 16);
    sub_26CD04590(v0 + 120);
    if (*(v0 + 24))
    {
      *(v0 + 68) = *(v0 + 64);
      sub_26CC1B544(v0 + 16, &qword_2804BDA38, qword_26CD48278);
      v4 = sub_26CD06824;
      goto LABEL_6;
    }
  }

  else
  {
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
  }

  v4 = sub_26CD069E4;
LABEL_6:

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD06824()
{
  v16 = v0;
  if (*(v0 + 68))
  {
    if (qword_2804BBA20 != -1)
    {
      swift_once();
    }

    v1 = off_2804BC780;
    *(v0 + 680) = off_2804BC780;
    v2 = v1[2];
    v3 = swift_task_alloc();
    *(v0 + 688) = v3;
    *v3 = v0;
    v3[1] = sub_26CD06AEC;

    return sub_26CC7F9DC();
  }

  v5 = *(v0 + 528);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *(v0 + 600);
  v8 = sub_26CCDEBD0(*(v5 + 16), 0);
  v9 = sub_26CCE4C98(&v15, (v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80))), v6, v5);
  sub_26CC33234();
  if (v9 != v6)
  {
    __break(1u);
LABEL_10:

    v8 = MEMORY[0x277D84F90];
  }

  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 584);

  v14 = *(v0 + 8);

  return v14(v8);
}

uint64_t sub_26CD069E4()
{
  v13 = v0;
  v1 = v0[66];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[75];
    v4 = sub_26CCDEBD0(*(v1 + 16), 0);
    v5 = sub_26CCE4C98(&v12, (v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80))), v2, v1);
    sub_26CC33234();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[73];

  v10 = v0[1];

  return v10(v4);
}

uint64_t sub_26CD06AEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v7 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {
    v5 = sub_26CD06C04;
  }

  else
  {
    v5 = sub_26CD07050;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CD06C04()
{
  v31 = v0;
  v1 = *(v0 + 704);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(*(v0 + 680) + 16);
  v7 = *(v6 + OBJC_IVAR____TtC13TVAppServices15LocationManager_accessQueue);
  *(swift_task_alloc() + 16) = v6;
  sub_26CD3A9EC();

  v8 = *(v0 + 66);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_26CD3AC6C();
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD00000000000001FLL, 0x800000026CD523A0);
  v9 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v9, v4);
  sub_26CD05DEC();
  v10 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v10);

  (*(v3 + 8))(v2, v4);
  MEMORY[0x26D6AD060](0x1000000000000012, 0x800000026CD523C0);
  *(v0 + 67) = v8;
  sub_26CD3AD1C();
  MEMORY[0x26D6AD060](0x72724520A280E220, 0xAC000000203A726FLL);
  *(v0 + 536) = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  v12 = sub_26CD3A5FC();
  MEMORY[0x26D6AD060](v12);

  v14 = *(v0 + 464);
  v13 = *(v0 + 472);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 704);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  v29 = 0xD00000000000001DLL;
  v30 = 0x800000026CD523E0;
  MEMORY[0x26D6AD060](v14, v13);

  *(v16 + 32) = 0xD00000000000001DLL;
  *(v16 + 40) = 0x800000026CD523E0;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v17 + 64) = sub_26CC2E6E8();
  *(v17 + 32) = v16;
  sub_26CD3A3DC();

  v18 = *(v0 + 528);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v0 + 600);
    v21 = sub_26CCDEBD0(*(v18 + 16), 0);
    v22 = sub_26CCE4C98(&v29, (v21 + ((*(v20 + 80) + 32) & ~*(v20 + 80))), v19, v18);
    sub_26CC33234();
    if (v22 == v19)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v21 = MEMORY[0x277D84F90];
LABEL_7:
  v23 = *(v0 + 624);
  v24 = *(v0 + 616);
  v25 = *(v0 + 608);
  v26 = *(v0 + 584);

  v27 = *(v0 + 8);

  return v27(v21);
}

uint64_t sub_26CD07050()
{
  v42 = v0;
  v1 = v0 + 66;
  v2 = v0[87];
  if (*(v2 + 16))
  {
    v3 = sub_26CC181C4(0x656475746974616CLL, 0xE800000000000000);
    v4 = v0[87];
    if (v5)
    {
      sub_26CC168C0(*(v4 + 56) + 32 * v3, (v0 + 33));
      if (swift_dynamicCast())
      {
        v6 = v0[61];
        if (*(v2 + 16) && (v7 = v0[60], v8 = v0[87], v9 = sub_26CC181C4(0x64757469676E6F6CLL, 0xE900000000000065), (v10 & 1) != 0))
        {
          v11 = v0[87];
          sub_26CC168C0(*(v4 + 56) + 32 * v9, (v0 + 37));

          if (swift_dynamicCast())
          {
            v12 = v0[78];
            v13 = v0[77];
            v14 = v0[75];
            v39 = v0[74];
            v15 = v0[62];
            v16 = v0[63];
            v40 = v7;
            v41 = v6;
            MEMORY[0x26D6AD060](44, 0xE100000000000000);
            MEMORY[0x26D6AD060](v15, v16);

            sub_26CD39DFC();

            sub_26CCDEE64(v12, v13);
            (*(v14 + 8))(v12, v39);
            goto LABEL_14;
          }
        }

        else
        {
          v19 = v0[87];
        }
      }

      else
      {
        v18 = v0[87];
      }
    }

    else
    {
      v17 = v0[87];
    }
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[70];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26CD3C1E0;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000053, 0x800000026CD52400);
  v25 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  (*(v21 + 16))(v20, v23 + v25, v22);
  sub_26CD05DEC();
  v26 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v26);

  (*(v21 + 8))(v20, v22);
  *(v24 + 32) = 0;
  *(v24 + 40) = 0xE000000000000000;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26CD3C1E0;
  *(v27 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v27 + 64) = sub_26CC2E6E8();
  *(v27 + 32) = v24;
  sub_26CD3A3DC();

LABEL_14:
  v28 = *v1;
  v29 = *(*v1 + 16);
  if (v29)
  {
    v30 = v0[75];
    v31 = sub_26CCDEBD0(v29, 0);
    v32 = sub_26CCE4C98(&v40, (v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80))), v29, v28);
    sub_26CC33234();
    if (v32 == v29)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v31 = MEMORY[0x277D84F90];
LABEL_18:
  v33 = v0[78];
  v34 = v0[77];
  v35 = v0[76];
  v36 = v0[73];

  v37 = v0[1];

  return v37(v31);
}

uint64_t sub_26CD074CC()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 656);
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v2 + 64) = sub_26CC2E6E8();
  *(v2 + 32) = &unk_287DF9A30;
  sub_26CD3A3DC();

  v3 = *(v0 + 632);

  return MEMORY[0x2822009F8](sub_26CD066F8, v3, 0);
}

uint64_t sub_26CD0760C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_26CD39E0C() == v1 && v3 == v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26CD3AFDC();
  }

  return v5 & 1;
}

uint64_t sub_26CD07680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA30, qword_26CD482E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26CD07710(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_26CD39D0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  if (a1 && ((*(v14 + 56))(v12, 1, 1, v13), sub_26CD08730(), sub_26CD3AD8C(), (*(v14 + 48))(v12, 1, v13) != 1))
  {
    v24 = *(v14 + 32);
    v24(v18, v12, v13);
    v24(v20, v18, v13);
    v31 = [objc_opt_self() defaultSession];
    v30 = sub_26CD39C4C();
    v36 = sub_26CD08788;
    v37 = a5;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_26CD1FB4C;
    v35 = &block_descriptor_23;
    v25 = _Block_copy(&aBlock);

    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;
    v36 = sub_26CD087E4;
    v37 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_26CD22A98;
    v35 = &block_descriptor_29;
    v27 = _Block_copy(&aBlock);

    v29 = v30;
    v28 = v31;
    [v31 createDataTaskWithRequest:v30 activity:0 dataTaskCreationCompletionHandler:v25 requestCompletionHandler:v27];
    _Block_release(v27);
    _Block_release(v25);

    (*(v14 + 8))(v20, v13);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26CD3C1E0;
    *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v21 + 64) = sub_26CC2E6E8();
    *(v21 + 32) = &unk_287DFC750;
    sub_26CD3A3DC();

    sub_26CD044E0();
    v22 = swift_allocError();
    *v23 = 1;
    a3(0, v22);
  }
}

uint64_t sub_26CD07BA8()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA78, &qword_26CD48350);
  *v2 = v0;
  v2[1] = sub_26CD07C90;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_26CD0863C, v4, v3);
}

uint64_t sub_26CD07C90()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_26CD07E6C;
  }

  else
  {
    v3 = sub_26CD07DA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CD07DA4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_26CD08644();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

void sub_26CD07E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_26CD39D0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  v16 = sub_26CD13AD8();
  (*(v5 + 16))(v8, a2 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v4);
  v17 = sub_26CD39C4C();
  (*(v5 + 8))(v8, v4);
  v18 = [v16 requestByEncodingRequest:v17 parameters:0];

  v19 = swift_allocObject();
  v19[2] = sub_26CD08698;
  v19[3] = v15;
  v19[4] = a2;
  aBlock[4] = sub_26CD08724;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CD22A98;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);

  [v18 addFinishBlock_];
  _Block_release(v20);
}

uint64_t sub_26CD0817C(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    swift_getErrorValue();
    v4 = sub_26CD3B08C();
    MEMORY[0x26D6AD060](v4);

    *(v3 + 32) = 0xD000000000000023;
    *(v3 + 40) = 0x800000026CD52530;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC2E6E8();
    *(v5 + 32) = v3;
    sub_26CD3A3DC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
    return sub_26CD3A81C();
  }

  else
  {
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
    return sub_26CD3A82C();
  }
}

uint64_t sub_26CD08380()
{
  v1 = OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request;
  v2 = sub_26CD39D0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AMSMediaRequestHandler()
{
  result = qword_2804BDA68;
  if (!qword_2804BDA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CD08480()
{
  result = sub_26CD39D0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26CD08518@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request;
  v4 = sub_26CD39D0C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_26CD08590()
{
  result = *(v0 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t sub_26CD085B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC30618;

  return sub_26CD07B88();
}

unint64_t sub_26CD08644()
{
  result = qword_2804BDA80;
  if (!qword_2804BDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA80);
  }

  return result;
}

uint64_t sub_26CD08698(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358) - 8) + 80);

  return sub_26CD0817C(a1, a2);
}

unint64_t sub_26CD08730()
{
  result = qword_2804BDA90;
  if (!qword_2804BDA90)
  {
    sub_26CD39D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA90);
  }

  return result;
}

id sub_26CD08788(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask);
  *(v1 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = a1;
  v3 = a1;

  return [v3 resume];
}

uint64_t sub_26CD087E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26CD0881C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody) = xmmword_26CD48360;
  v4 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
  *v4 = 5522759;
  v4[1] = 0xE300000000000000;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_timeout) = 0x404E000000000000;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_cachePolicy) = 0;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_queryParams) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_path) = MEMORY[0x277D84F90];
  v5 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType);
  *v5 = 0xD000000000000010;
  v5[1] = 0x800000026CD4BD10;
  v6 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultNetworkStorefrontName);
  *v6 = 26227;
  v6[1] = 0xE200000000000000;
  v7 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultLocaleQueryName);
  *v7 = 0x656C61636F6CLL;
  v7[1] = 0xE600000000000000;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_isRequestBuilt) = 0;
  v8 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_storefront);
  *v8 = 0;
  v8[1] = 0;
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_26CD3A59C();
  [v9 integerForKey_];

  v11 = (v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultProtocolVersion);
  *v11 = sub_26CD3AF8C();
  v11[1] = v12;
  v13 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
  v14 = sub_26CD39D0C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v2 + v13, a1, v14);
  v16 = sub_26CD39BFC();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 5522759;
  }

  v19 = (v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
  v20 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  *v19 = v18;
  v19[1] = v21;

  if (v18 == 5522759 && v21 == 0xE300000000000000)
  {
  }

  else
  {
    v22 = sub_26CD3AFDC();

    if ((v22 & 1) == 0)
    {
      v23 = sub_26CD39CCC();
      v25 = v24;
      (*(v15 + 8))(a1, v14);
      v26 = (v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v27 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v28 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8);
      *v26 = v23;
      v26[1] = v25;
      sub_26CC1D1B8(v27, v28);
      return v2;
    }
  }

  (*(v15 + 8))(a1, v14);
  return v2;
}

uint64_t sub_26CD08B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26CD39E2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  v16 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_storefront);
  v17 = *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_storefront + 8);
  v51 = v13;
  if (v17)
  {
    v18 = *v16;
    v19 = v8;
    v21 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultNetworkStorefrontName);
    v20 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultNetworkStorefrontName + 8);

    v8 = v19;
    v22 = v51;
    sub_26CD39DFC();

    swift_beginAccess();
    sub_26CCDEE64(v15, v12);
    (*(v19 + 8))(v15, v22);
    swift_endAccess();
    sub_26CC56118();
    if (v23)
    {
LABEL_3:
      v24 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultLocaleQueryName);
      v25 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultLocaleQueryName + 8);
      sub_26CD39DFC();

      swift_beginAccess();
      sub_26CCDEE64(v15, v12);
      (*(v8 + 8))(v15, v22);
      swift_endAccess();
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26CD3C1E0;
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 64) = sub_26CC2E6E8();
    *(v26 + 32) = &unk_287DFACB0;
    sub_26CD3A3DC();

    v22 = v51;
    sub_26CC56118();
    if (v27)
    {
      goto LABEL_3;
    }
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26CD3C1E0;
  *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v28 + 64) = sub_26CC2E6E8();
  *(v28 + 32) = &unk_287DFACE0;
  sub_26CD3A3DC();

  v22 = v51;
LABEL_10:
  if (qword_280BB9C28 != -1)
  {
    swift_once();
  }

  v29 = sub_26CD3A59C();
  v48 = MGGetSInt32Answer();

  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && qword_280BBAD00)
  {

    sub_26CD39DFC();

    swift_beginAccess();
    sub_26CCDEE64(v15, v12);
    (*(v8 + 8))(v15, v22);
    swift_endAccess();
    v30 = v3;
  }

  else
  {
    v44 = v12;
    v45 = v8;
    v46 = v4;
    v47 = v3;
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v31 = swift_allocObject();
    v43 = xmmword_26CD3C1E0;
    *(v31 + 16) = xmmword_26CD3C1E0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v31 + 56) = v32;
    v33 = sub_26CC2E6E8();
    *(v31 + 64) = v33;
    *(v31 + 32) = &unk_287DFA580;
    sub_26CD3A3DC();

    sub_26CD3A98C();
    v34 = swift_allocObject();
    *(v34 + 16) = v43;
    *(v34 + 56) = v32;
    *(v34 + 64) = v33;
    *(v34 + 32) = &unk_287DFAD10;
    sub_26CD3A3DC();

    v4 = v46;
    v30 = v47;
    v22 = v51;
    v12 = v44;
    v8 = v45;
  }

  sub_26CD39DFC();

  swift_beginAccess();
  sub_26CCDEE64(v15, v12);
  v35 = *(v8 + 8);
  v35(v15, v22);
  swift_endAccess();
  v36 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultProtocolVersion);
  v37 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultProtocolVersion + 8);
  sub_26CD39DFC();
  swift_beginAccess();
  sub_26CCDEE64(v15, v12);
  v35(v15, v22);
  swift_endAccess();
  sub_26CD09F6C();
  v38 = v49;
  sub_26CD09504(v49);
  v39 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v39, v38, v30);
  swift_endAccess();
  v40 = v2 + v39;
  v41 = v50;
  (*(v4 + 16))(v50, v40, v30);
  return (*(v4 + 56))(v41, 0, 1, v30);
}

uint64_t sub_26CD09390()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
  v3 = sub_26CD39D0C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_26CC1D1B8(*(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody), *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8));
  v4 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_queryParams);

  v6 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_path);

  v7 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType + 8);

  v8 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultNetworkStorefrontName + 8);

  v9 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultLocaleQueryName + 8);

  v10 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_storefront + 8);

  v11 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultProtocolVersion + 8);

  return v0;
}

uint64_t sub_26CD09504@<X0>(uint64_t a1@<X8>)
{
  v88 = sub_26CD39F9C();
  v3 = *(v88 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26CD39D0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (v1[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_isRequestBuilt] == 1)
  {
    v10 = &OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
    if (qword_280BB9C20 == -1)
    {
LABEL_3:
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_26CD3C1E0;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_26CC19E10();
      *(v11 + 32) = 0xD00000000000003CLL;
      *(v11 + 40) = 0x800000026CD52660;
      sub_26CD3A3DC();

      v12 = *v10;
      swift_beginAccess();
      return (*(v7 + 16))(a1, &v1[v12], v6);
    }

LABEL_42:
    swift_once();
    goto LABEL_3;
  }

  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_isRequestBuilt;
  v84 = v6;
  v89 = v1;
  v14 = *(v1 + 2);
  v82 = a1;
  if (v14)
  {
    v79 = v7;
    v80 = v3;
    a1 = v14 + 64;
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v85 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
    v7 = (v15 + 63) >> 6;
    v86 = v14;
    swift_bridgeObjectRetain_n();
    v18 = 0;
    v10 = v85;
    while (v17)
    {
      v19 = v18;
      v20 = v86;
LABEL_14:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = (v19 << 10) | (16 * v21);
      v23 = *(v20 + 7);
      v24 = (*(v20 + 6) + v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + v22);
      v28 = *v27;
      v6 = v27[1];
      v29 = v89;
      swift_beginAccess();

      v1 = v10 + v29;
      sub_26CD39CBC();
      swift_endAccess();
    }

    v20 = v86;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v7)
      {

        v3 = v80;
        v7 = v79;
        goto LABEL_17;
      }

      v17 = *(a1 + 8 * v19);
      ++v18;
      if (v17)
      {
        v18 = v19;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_17:
  v30 = v89;
  v31 = &v89[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody];
  v32 = *&v89[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8];
  if (v32 >> 60 != 15)
  {
    v33 = *v31;
    swift_beginAccess();
    sub_26CCC706C(v33, v32);
    sub_26CCAE954(v33, v32);
    sub_26CD39CDC();
    swift_endAccess();
    sub_26CC1D1B8(v33, v32);
  }

  v34 = *&v30[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method];
  v35 = *&v30[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method + 8];
  v36 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
  swift_beginAccess();

  sub_26CD39C0C();
  swift_endAccess();
  v37 = *(v7 + 16);
  v38 = v83;
  v39 = v84;
  v85 = v7 + 16;
  v80 = v37;
  (v37)(v83, &v30[v36], v84);
  v40 = sub_26CD39BFC();
  v42 = v41;
  (*(v7 + 8))(v38, v39);
  if (v42)
  {
    if (v40 == 1414745936 && v42 == 0xE400000000000000)
    {
    }

    else
    {
      v43 = sub_26CD3AFDC();

      if ((v43 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v44 = *v31;
    v45 = v31[1];
    swift_beginAccess();
    sub_26CCC706C(v44, v45);
    sub_26CD39CDC();
    swift_endAccess();
  }

LABEL_25:
  v46 = *&v30[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_timeout];
  swift_beginAccess();
  sub_26CD39C3C();
  v47 = *&v30[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_cachePolicy];
  sub_26CD39C1C();
  swift_endAccess();
  v48 = *(*&v30[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_path] + 16);
  if (v48)
  {
    v83 = v36;
    LODWORD(v86) = *MEMORY[0x277CC91D8];
    v49 = (v3 + 104);
    v50 = (v3 + 8);

    v51 = (v79 + 40);
    do
    {
      v54 = *(v51 - 1);
      v55 = *v51;

      v56 = sub_26CD094A4();
      v57 = sub_26CD39C8C();
      v59 = v58;
      v60 = sub_26CD3A07C();
      if ((*(*(v60 - 8) + 48))(v59, 1, v60))
      {

        v57(v92, 0);
        (v56)(v90, 0);
      }

      else
      {
        v91[0] = v54;
        v91[1] = v55;
        v53 = v87;
        v52 = v88;
        (*v49)(v87, v86, v88);
        sub_26CC16DCC();
        sub_26CD3A01C();
        (*v50)(v53, v52);
        v57(v92, 0);
        (v56)(v90, 0);
      }

      v51 += 2;
      --v48;
    }

    while (v48);

    v30 = v89;
    v36 = v83;
  }

  v61 = sub_26CD094A4();
  v62 = sub_26CD39C8C();
  v64 = v63;
  v65 = sub_26CD3A07C();
  if ((*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    v62(v91, 0);
    (v61)(v92, 0);
  }

  else
  {
    v66 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_queryParams;
    swift_beginAccess();
    v67 = *&v30[v66];
    v68 = *(v67 + 16);
    if (v68)
    {
      v86 = v61;
      v69 = sub_26CCDEBD0(v68, 0);
      v70 = *(sub_26CD39E2C() - 8);
      v71 = sub_26CCE4C98(v90, (v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80))), v68, v67);
      v87 = v90[4];
      v88 = v71;

      result = sub_26CC33234();
      if (v88 != v68)
      {
        __break(1u);
        return result;
      }

      v30 = v89;
      v61 = v86;
    }

    sub_26CD3A00C();

    v62(v91, 0);
    (v61)(v92, 0);
  }

  v72 = sub_26CD094A4();
  v74 = sub_26CD39C5C();
  if (*v73)
  {
    v75 = v73;
    v76 = *&v30[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType];
    v77 = *&v30[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType + 8];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = *v75;
    *v75 = 0x8000000000000000;
    sub_26CD38A70(v76, v77, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
    *v75 = v91[0];
  }

  v74(v92, 0);
  (v72)(v90, 0);
  v30[v81] = 1;
  return (v80)(v82, &v30[v36], v84);
}

uint64_t sub_26CD09F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA98, &unk_26CD48410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD3C1E0;
  strcpy((inited + 32), "Content-Type");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v2 = (v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType);
  v3 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType + 8);
  *(inited + 48) = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType);
  *(inited + 56) = v3;

  v4 = sub_26CC31D94(inited);
  swift_setDeallocating();
  sub_26CD0A280(inited + 32);
  v5 = *(v0 + 16);
  *(v0 + 16) = v4;

  v7 = (v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
  v8 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_26CCC706C(*v7, *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8));
    sub_26CCC706C(v9, v8);
    sub_26CC1D1B8(v9, v8);
    sub_26CC1D1B8(v9, v8);
    v10 = swift_initStackObject();
    strcpy((v10 + 32), "Content-Type");
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 45) = 0;
    *(v10 + 46) = -5120;
    v11 = v2[1];
    *(v10 + 48) = *v2;
    *(v10 + 56) = v11;

    v12 = sub_26CC31D94(v10);
    swift_setDeallocating();
    sub_26CD0A280(v10 + 32);
    v13 = *(v0 + 16);
    *(v0 + 16) = v12;
  }

  return result;
}

uint64_t sub_26CD0A0EC()
{
  sub_26CD09390();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RequestBuilder()
{
  result = qword_280BBAF98;
  if (!qword_280BBAF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CD0A198()
{
  result = sub_26CD39D0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_26CD0A280(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBB68, &qword_26CD3C678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CD0A2FC()
{
  result = qword_2804BDAA0;
  if (!qword_2804BDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices28PlatformSpecificLocalizationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_26CD0A37C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 520))
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

uint64_t sub_26CD0A3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 520) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 520) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_26CD0A4C0(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x696373656C616F63;
      break;
    case 2:
      result = 0x4579616C70736964;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6449797469746E65;
      break;
    case 5:
      result = 0x65726F6353736168;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x76546E4F7369;
      break;
    case 8:
    case 9:
    case 10:
    case 11:
      result = 0x657A696C61636F6CLL;
      break;
    case 12:
      result = 0x54676E6974746573;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x6449646165726874;
      break;
    case 15:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CD0A678(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAE8, &qword_26CD486F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v52[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD0D3B0();
  sub_26CD3B16C();
  *&v80 = *v3;
  LOBYTE(v78[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAB8, &qword_26CD486E0);
  sub_26CD0D5A0(&qword_2804BDAF0, sub_26CD0D618);
  sub_26CD3AF1C();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    LOBYTE(v80) = 1;
    sub_26CD3AECC();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v80) = 2;
    sub_26CD3AEEC();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v80) = 3;
    sub_26CD3AEFC();
    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    LOBYTE(v80) = 4;
    sub_26CD3AECC();
    v19 = *(v3 + 72);
    LOBYTE(v80) = 5;
    sub_26CD3AEDC();
    v20 = *(v3 + 80);
    v21 = *(v3 + 88);
    LOBYTE(v80) = 6;
    sub_26CD3AEFC();
    v22 = *(v3 + 89);
    LOBYTE(v80) = 7;
    sub_26CD3AEDC();
    v23 = *(v3 + 112);
    v101[2] = *(v3 + 128);
    v24 = *(v3 + 128);
    v101[3] = *(v3 + 144);
    v25 = *(v3 + 144);
    v101[4] = *(v3 + 160);
    v26 = *(v3 + 160);
    v101[5] = *(v3 + 176);
    v27 = *(v3 + 112);
    v101[0] = *(v3 + 96);
    v101[1] = v27;
    v82 = v24;
    v83 = v25;
    v28 = *(v3 + 176);
    v84 = v26;
    v85 = v28;
    v80 = v101[0];
    v81 = v23;
    v79 = 8;
    sub_26CD0D66C(v101, v78);
    sub_26CD0D6DC();
    sub_26CD3AF1C();
    v78[2] = v82;
    v78[3] = v83;
    v78[4] = v84;
    v78[5] = v85;
    v78[0] = v80;
    v78[1] = v81;
    sub_26CD0D4AC(v78);
    v29 = *(v3 + 240);
    v30 = *(v3 + 208);
    v97 = *(v3 + 224);
    v98 = v29;
    v31 = *(v3 + 240);
    v32 = *(v3 + 272);
    v99 = *(v3 + 256);
    v100 = v32;
    v33 = *(v3 + 208);
    v96[0] = *(v3 + 192);
    v96[1] = v33;
    v74 = v97;
    v75 = v31;
    v34 = *(v3 + 272);
    v76 = v99;
    v77 = v34;
    v72 = v96[0];
    v73 = v30;
    v71 = 9;
    sub_26CD0D66C(v96, v70);
    sub_26CD3AF1C();
    v70[2] = v74;
    v70[3] = v75;
    v70[4] = v76;
    v70[5] = v77;
    v70[0] = v72;
    v70[1] = v73;
    sub_26CD0D4AC(v70);
    v35 = *(v3 + 336);
    v36 = *(v3 + 304);
    v92 = *(v3 + 320);
    v93 = v35;
    v37 = *(v3 + 336);
    v38 = *(v3 + 368);
    v94 = *(v3 + 352);
    v95 = v38;
    v39 = *(v3 + 304);
    v91[0] = *(v3 + 288);
    v91[1] = v39;
    v66 = v92;
    v67 = v37;
    v40 = *(v3 + 368);
    v68 = v94;
    v69 = v40;
    v64 = v91[0];
    v65 = v36;
    v63 = 10;
    sub_26CD0D66C(v91, v62);
    sub_26CD3AF1C();
    v62[2] = v66;
    v62[3] = v67;
    v62[4] = v68;
    v62[5] = v69;
    v62[0] = v64;
    v62[1] = v65;
    sub_26CD0D4AC(v62);
    v41 = *(v3 + 432);
    v42 = *(v3 + 400);
    v87 = *(v3 + 416);
    v88 = v41;
    v43 = *(v3 + 432);
    v44 = *(v3 + 464);
    v89 = *(v3 + 448);
    v90 = v44;
    v45 = *(v3 + 400);
    v86[0] = *(v3 + 384);
    v86[1] = v45;
    v59 = v43;
    v60 = v89;
    v61 = *(v3 + 464);
    v56 = v86[0];
    v57 = v42;
    v58 = v87;
    v55 = 11;
    sub_26CD0D66C(v86, v54);
    sub_26CD3AF1C();
    v54[2] = v58;
    v54[3] = v59;
    v54[4] = v60;
    v54[5] = v61;
    v54[0] = v56;
    v54[1] = v57;
    sub_26CD0D4AC(v54);
    v53 = *(v3 + 480);
    v52[14] = 12;
    sub_26CD0D730();
    sub_26CD3AF1C();
    v46 = *(v3 + 481);
    v53 = 13;
    sub_26CD3AEDC();
    v47 = *(v3 + 488);
    v48 = *(v3 + 496);
    v53 = 14;
    sub_26CD3AECC();
    v49 = *(v3 + 504);
    v50 = *(v3 + 512);
    v53 = 15;
    sub_26CD3AECC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CD0ACEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CD0BA2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CD0AD20(uint64_t a1)
{
  v2 = sub_26CD0D3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD0AD5C(uint64_t a1)
{
  v2 = sub_26CD0D3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CD0AD98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26CD0BF44(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x208uLL);
  }

  return result;
}

uint64_t sub_26CD0ADFC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x746963696C706D49;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6E6974656B72614DLL;
  if (v3 == 1)
  {
    v6 = 0x746963696C706D49;
  }

  else
  {
    v5 = 0xE900000000000067;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x746963696C707845;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6E6974656B72614DLL;
    v4 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x746963696C707845;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}