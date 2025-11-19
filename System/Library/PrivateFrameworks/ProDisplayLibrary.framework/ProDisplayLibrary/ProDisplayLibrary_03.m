uint64_t sub_25F7898EC(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v76 = type metadata accessor for Preset(0);
  v8 = MEMORY[0x28223BE20](v76);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v67 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v67 - v15;
  result = MEMORY[0x28223BE20](v14);
  v80 = &v67 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_65;
  }

  v21 = a3 - a2;
  if ((a3 - a2) != 0x8000000000000000 || v20 != -1)
  {
    v22 = (a2 - a1) / v20;
    v86 = a1;
    v85 = a4;
    if (v22 >= v21 / v20)
    {
      v25 = v21 / v20 * v20;
      if (a4 < a2 || a2 + v25 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v48 = a4 + v25;
      if (v25 >= 1)
      {
        v80 = v10;
        v81 = a4;
        v49 = -v20;
        v50 = (a4 + v25);
        v82 = a1;
        v70 = v13;
        v79 = -v20;
        do
        {
          v68 = v48;
          v51 = a2;
          a2 += v49;
          v83 = a2;
          v71 = v51;
          while (1)
          {
            if (v51 <= a1)
            {
              v86 = v51;
              v84 = v68;
              goto LABEL_63;
            }

            v75 = a3;
            v69 = v48;
            v77 = v50;
            v72 = v50 + v49;
            sub_25F78C1F0(v50 + v49, v13, type metadata accessor for Preset);
            sub_25F78C1F0(a2, v80, type metadata accessor for Preset);
            v78 = type metadata accessor for Preset.Info(0);
            v52 = *(v78 + 8);
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
            v74 = &v67;
            v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v53 - 8);
            v55 = &v67 - v54;
            sub_25F76183C(&v13[v52], &v67 - v54, &qword_27FDAFC20);
            v56 = sub_25F82210C();
            v57 = *(v56 - 8);
            v58 = *(v57 + 48);
            result = v58(&v67 - v54, 1, v56);
            if (result == 1)
            {
              goto LABEL_69;
            }

            v73 = &v67;
            MEMORY[0x28223BE20](result);
            v59 = &v67 - v54;
            sub_25F76183C(&v80[v60], &v67 - v54, &qword_27FDAFC20);
            result = v58(&v67 - v54, 1, v56);
            if (result == 1)
            {
              goto LABEL_70;
            }

            v61 = v75;
            a3 = (v75 + v79);
            v62 = sub_25F8220BC();
            v63 = *(v57 + 8);
            v63(v59, v56);
            v63(v55, v56);
            sub_25F78CBE8(v80, type metadata accessor for Preset);
            v13 = v70;
            sub_25F78CBE8(v70, type metadata accessor for Preset);
            a1 = v82;
            a2 = v83;
            v64 = v81;
            if (v62)
            {
              break;
            }

            v65 = v72;
            v48 = v72;
            if (v61 < v77 || a3 >= v77)
            {
              swift_arrayInitWithTakeFrontToBack();
              v49 = v79;
            }

            else
            {
              v66 = v61 == v77;
              v49 = v79;
              if (!v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v50 = v48;
            v51 = v71;
            if (v65 <= v64)
            {
              a2 = v71;
              goto LABEL_62;
            }
          }

          if (v61 < v71 || a3 >= v71)
          {
            swift_arrayInitWithTakeFrontToBack();
            v48 = v69;
            v49 = v79;
          }

          else
          {
            v66 = v61 == v71;
            v48 = v69;
            v49 = v79;
            if (!v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = v77;
        }

        while (v77 > v64);
      }

LABEL_62:
      v86 = a2;
      v84 = v48;
    }

    else
    {
      v23 = v22 * v20;
      if (a4 < a1 || a1 + v23 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        v24 = v16;
      }

      else
      {
        v24 = v16;
        if (a4 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = a4 + v23;
      v84 = a4 + v23;
      if (v23 >= 1 && a2 < a3)
      {
        v27 = &qword_27FDAFC20;
        v73 = v20;
        v74 = a3;
        v79 = v24;
        do
        {
          v82 = a1;
          v83 = a2;
          v28 = v80;
          sub_25F78C1F0(a2, v80, type metadata accessor for Preset);
          v81 = a4;
          sub_25F78C1F0(a4, v24, type metadata accessor for Preset);
          v29 = *(type metadata accessor for Preset.Info(0) + 32);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
          v78 = &v67;
          v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v30 - 8);
          v32 = &v67 - v31;
          sub_25F76183C(v28 + v29, &v67 - v31, v27);
          v33 = sub_25F82210C();
          v34 = *(v33 - 8);
          v35 = *(v34 + 48);
          result = v35(&v67 - v31, 1, v33);
          if (result == 1)
          {
            goto LABEL_67;
          }

          v77 = &v67;
          MEMORY[0x28223BE20](result);
          v36 = &v67 - v31;
          v38 = &v67 - v31;
          v40 = v39;
          sub_25F76183C(v79 + v37, v38, v39);
          result = v35(v36, 1, v33);
          if (result == 1)
          {
            goto LABEL_68;
          }

          v41 = sub_25F8220BC();
          v42 = *(v34 + 8);
          v42(v36, v33);
          v42(v32, v33);
          v24 = v79;
          sub_25F78CBE8(v79, type metadata accessor for Preset);
          sub_25F78CBE8(v80, type metadata accessor for Preset);
          v43 = v82;
          a2 = v83;
          a4 = v81;
          v44 = v74;
          if (v41)
          {
            v45 = v73;
            v27 = v40;
            if (v82 < v83 || v82 >= v73 + v83)
            {
              swift_arrayInitWithTakeFrontToBack();
              a2 += v45;
              v46 = v44;
            }

            else
            {
              v46 = v74;
              if (v82 == v83)
              {
                a2 = v73 + v83;
              }

              else
              {
                swift_arrayInitWithTakeBackToFront();
                a2 += v45;
              }
            }
          }

          else
          {
            v45 = v73;
            v47 = v73 + v81;
            v27 = v40;
            if (v82 < v81 || v82 >= v47)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v44;
            }

            else
            {
              v46 = v74;
              if (v82 != v81)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v85 = v47;
            a4 += v45;
          }

          a1 = v45 + v43;
          v86 = a1;
        }

        while (a4 < v75 && a2 < v46);
      }
    }

LABEL_63:
    sub_25F76D094(&v86, &v85, &v84);
    return 1;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_25F78A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0150) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8) + 48);
  sub_25F76183C(a1, a2, &qword_27FDAFBB0);
  return sub_25F78C1F0(a1 + v4, a2 + v5, type metadata accessor for Preset);
}

uint64_t sub_25F78A264(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_25F78A3C4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_25F78A824(v8, v4, v2);
  result = MEMORY[0x25F8E88D0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_25F78A3C4(unint64_t *a1, uint64_t a2, void *a3)
{
  v38 = a2;
  v39 = a1;
  v50 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0150);
  v5 = MEMORY[0x28223BE20](v48);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v37 - v7;
  v8 = type metadata accessor for Preset(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v43 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10 - 8);
  v42 = &v37 - v12;
  v40 = 0;
  v13 = 0;
  v51 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v51;
    v26 = v42;
    sub_25F76183C(v51[6] + *(v43 + 72) * v24, v42, &qword_27FDAFBB0);
    v27 = v25[7];
    v28 = *(v46 + 72);
    v41 = v24;
    v29 = v27 + v28 * v24;
    v30 = v45;
    sub_25F78C1F0(v29, v45, type metadata accessor for Preset);
    v31 = v47;
    sub_25F76183C(v26, v47, &qword_27FDAFBB0);
    v32 = v48;
    sub_25F78C1F0(v30, v31 + *(v48 + 48), type metadata accessor for Preset);
    v33 = v44;
    sub_25F760FA4(v31, v44, &qword_27FDB0150);
    v34 = *(v32 + 48);
    v35 = v49;
    sub_25F78C1F0(v33 + v34, v49, type metadata accessor for Preset.Info);
    sub_25F78CBE8(v33 + v34, type metadata accessor for Preset);
    LODWORD(v34) = *(v35 + *(v50 + 28));
    sub_25F78CBE8(v35, type metadata accessor for Preset.Info);
    sub_25F760F44(v33, &qword_27FDAFBB0);
    sub_25F78CBE8(v30, type metadata accessor for Preset);
    result = sub_25F760F44(v26, &qword_27FDAFBB0);
    v19 = v52;
    if (v34 == 1)
    {
      *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_25F78A89C(v39, v38, v40, v51);
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_25F78A89C(v39, v38, v40, v51);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v52 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_25F78A824(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_25F78A3C4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_25F78A89C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Preset(0);
  v45 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v43 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v39 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBC8);
  result = sub_25F822A8C();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v20 = result + 64;
  v40 = a4;
  v41 = a1;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v26 = v42;
    v48 = *(v43 + 72);
    sub_25F76183C(v25 + v48 * v24, v42, &qword_27FDAFBB0);
    v27 = a4[7];
    v47 = *(v45 + 72);
    v28 = v27 + v47 * v24;
    v29 = v44;
    sub_25F78C1F0(v28, v44, type metadata accessor for Preset);
    sub_25F760FA4(v26, v49, &qword_27FDAFBB0);
    sub_25F78C4E8(v29, v50, type metadata accessor for Preset);
    sub_25F822DCC();
    sub_25F82217C();
    sub_25F78CC48(&qword_27FDAFCC8, MEMORY[0x28220C090]);
    sub_25F8222CC();
    result = sub_25F822E0C();
    v30 = -1 << *(v17 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      a1 = v41;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v20 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    a1 = v41;
LABEL_26:
    *(v20 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    sub_25F760FA4(v49, *(v17 + 48) + v33 * v48, &qword_27FDAFBB0);
    result = sub_25F78C4E8(v50, *(v17 + 56) + v33 * v47, type metadata accessor for Preset);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v18 = v46;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25F78AD08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD48);
  result = sub_25F822A8C();
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
  v12 = result + 64;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    sub_25F822DCC();
    MEMORY[0x25F8E7E80](v17);
    result = sub_25F822E0C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_25F78AF30(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F76183C(a2, v9, &qword_27FDAFBB0);
  v6[9] = sub_25F78B684(v6);
  v6[10] = sub_25F78B0C0(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_25F78B034;
}

void sub_25F78B034(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_25F760F44(v3, &qword_27FDAFBB0);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_25F78B0C0(void *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0) - 8);
  v9[2] = v10;
  if (v7)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v9[3] = v11;
  v12 = type metadata accessor for Preset(0);
  v9[4] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v9[5] = v13;
  v15 = *(v13 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v9[7] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v13 + 64));
    v9[7] = malloc(v15);
    v16 = malloc(v15);
  }

  v9[8] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBE0) - 8) + 64);
  if (v7)
  {
    v9[9] = swift_coroFrameAlloc();
    v9[10] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v9[9] = malloc(v17);
    v9[10] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v9[11] = v18;
  v20 = *v4;
  v22 = sub_25F75D8B4(a2);
  *(v9 + 104) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a3 & 1) != 0)
    {
LABEL_19:
      v9[12] = v22;
      if (v26)
      {
LABEL_20:
        sub_25F78C4E8(*(*v4 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for Preset);
        v28 = 0;
LABEL_24:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_25F78B3F4;
      }

LABEL_23:
      v28 = 1;
      goto LABEL_24;
    }

    if (v27 >= v25 && (a3 & 1) == 0)
    {
      sub_25F75DC88();
      goto LABEL_19;
    }

    sub_25F75E660(v25, a3 & 1);
    v29 = sub_25F75D8B4(a2);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v9[12] = v29;
      if (v26)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  result = sub_25F822D2C();
  __break(1u);
  return result;
}

void sub_25F78B3F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + 48);
  v5 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(v2 + 72);
    sub_25F76183C(v5, v6, &qword_27FDAFBE0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 72);
    if (v7 != 1)
    {
      v10 = *(v2 + 8);
      sub_25F78C4E8(v9, *(v2 + 56), type metadata accessor for Preset);
      v11 = *v10;
      v12 = *(v2 + 96);
      v13 = *(v2 + 56);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 48);
        v15 = *(v2 + 24);
        sub_25F76183C(*v2, v15, &qword_27FDAFBB0);
        sub_25F78C4E8(v13, v14, type metadata accessor for Preset);
        sub_25F760B50(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 80);
    sub_25F76183C(v5, v16, &qword_27FDAFBE0);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 80);
    if (v17 != 1)
    {
      v20 = *(v2 + 8);
      sub_25F78C4E8(v9, *(v2 + 64), type metadata accessor for Preset);
      v11 = *v20;
      v12 = *(v2 + 96);
      v13 = *(v2 + 64);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_25F78C4E8(v13, v11[7] + *(*(v2 + 40) + 72) * v12, type metadata accessor for Preset);
      goto LABEL_10;
    }
  }

  sub_25F760F44(v9, &qword_27FDAFBE0);
  if (v8)
  {
    v18 = *(v2 + 96);
    v19 = **(v2 + 8);
    sub_25F760F44(*(v19 + 48) + *(*(v2 + 16) + 72) * v18, &qword_27FDAFBB0);
    sub_25F75FF0C(v18, v19);
  }

LABEL_10:
  v21 = *(v2 + 80);
  v22 = *(v2 + 88);
  v24 = *(v2 + 64);
  v23 = *(v2 + 72);
  v26 = *(v2 + 48);
  v25 = *(v2 + 56);
  v27 = *(v2 + 24);
  sub_25F760F44(v22, &qword_27FDAFBE0);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_25F78B684(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25F78B6AC;
}

uint64_t sub_25F78B6B8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0150);
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - v3;
  v5 = type metadata accessor for Preset(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0180);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v41 = v4;
  v46 = v21;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v42 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    sub_25F76183C(*(v18 + 48) + *(v9 + 72) * v27, v11, &qword_27FDAFBB0);
    sub_25F78C1F0(*(v18 + 56) + *(v43 + 72) * v27, v7, type metadata accessor for Preset);
    v28 = *(v45 + 48);
    v29 = v11;
    v30 = v45;
    sub_25F760FA4(v29, v17, &qword_27FDAFBB0);
    sub_25F78C4E8(v7, &v17[v28], type metadata accessor for Preset);
    v31 = v44;
    (*(v44 + 56))(v17, 0, 1, v30);
    v32 = v42;
    v26 = v23;
LABEL_11:
    *v1 = v18;
    v1[1] = v19;
    v33 = v47;
    v1[2] = v46;
    v1[3] = v26;
    v1[4] = v32;
    v34 = v1[5];
    sub_25F760FA4(v17, v33, &qword_27FDB0180);
    v35 = 1;
    v36 = (*(v31 + 48))(v33, 1, v30);
    v37 = v48;
    if (v36 != 1)
    {
      v38 = v33;
      v39 = v41;
      sub_25F760FA4(v38, v41, &qword_27FDB0150);
      v34(v39);
      sub_25F760F44(v39, &qword_27FDB0150);
      v35 = 0;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
    return (*(*(v40 - 8) + 56))(v37, v35, 1, v40);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v31 = v44;
        v30 = v45;
        (*(v44 + 56))(&v41 - v16, 1, 1, v45);
        v32 = 0;
        goto LABEL_11;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F78BB38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for Preset(0);
  v55 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v47 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v45 - v13;
  v15 = &qword_27FDAFBB0;
  v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v46 = *(v45[0] - 8);
  MEMORY[0x28223BE20](v45[0]);
  v17 = v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0148);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v48 = a1;
  v49 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v50 = v22;
  v51 = 0;
  v52 = v25 & v23;
  v53 = a2;
  v54 = a3;

  v45[1] = a3;

  while (1)
  {
    sub_25F78B6B8(v20);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBA8);
    if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
    {
      sub_25F76E0F0();
    }

    v29 = *(v28 + 48);
    v30 = v15;
    sub_25F760FA4(v20, v17, v15);
    sub_25F78C4E8(&v20[v29], v14, type metadata accessor for Preset);
    v31 = *a5;
    v33 = sub_25F75D8B4(v17);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25F75DC88();
        v40 = *a5;
        if ((v37 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v26 = *(v55 + 72) * v33;
      v27 = v47;
      sub_25F78C1F0(v40[7] + v26, v47, type metadata accessor for Preset);
      sub_25F78CBE8(v14, type metadata accessor for Preset);
      v15 = v30;
      sub_25F760F44(v17, v30);
      sub_25F781E28(v27, v40[7] + v26);
      a4 = 1;
    }

    else
    {
      sub_25F75E660(v36, a4 & 1);
      v38 = sub_25F75D8B4(v17);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v33 = v38;
      v40 = *a5;
      if (v37)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v33 >> 6) + 8] |= 1 << v33;
      v15 = v30;
      sub_25F760FA4(v17, v40[6] + *(v46 + 72) * v33, v30);
      sub_25F78C4E8(v14, v40[7] + *(v55 + 72) * v33, type metadata accessor for Preset);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_25F822D2C();
  __break(1u);
  return result;
}

void sub_25F78BFAC(uint64_t a1)
{
  v3 = type metadata accessor for ProData();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F783140(v5);
  if (!v1)
  {
    v6 = v3[7];
    if (*&v5[v6])
    {
      v7 = *&v5[v6];
    }

    else
    {
      v7 = (*&v5[v3[10]])();
    }

    v8 = *(v7 + 16);

    if (v8)
    {
      sub_25F75D8B4(a1);
      v10 = v9;

      if (v10)
      {
        sub_25F75D978(a1, &v5[v3[5]]);
        sub_25F782BC4(v5);
        sub_25F78CBE8(v5, type metadata accessor for ProData);
        return;
      }
    }

    else
    {
    }

    type metadata accessor for PrefsDataStore.PrefsDataStoreError(0);
    sub_25F78C198();
    swift_allocError();
    sub_25F76183C(a1, v11, &qword_27FDAFBB0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_25F78CBE8(v5, type metadata accessor for ProData);
  }
}

unint64_t sub_25F78C198()
{
  result = qword_27FDB0158;
  if (!qword_27FDB0158)
  {
    type metadata accessor for PrefsDataStore.PrefsDataStoreError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0158);
  }

  return result;
}

uint64_t sub_25F78C1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F78C26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F78C348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFBB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_25F78C40C()
{
  sub_25F761BC0();
  if (v0 <= 0x3F)
  {
    sub_25F761C18();
    if (v1 <= 0x3F)
    {
      sub_25F781D50();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CFString(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25F78C4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F78C550()
{
  v1 = (type metadata accessor for PrefsDataStore(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_25F82217C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F78C67C(uint64_t a1)
{
  v4 = *(type metadata accessor for PrefsDataStore(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F78C76C;

  return sub_25F7875FC(a1, v6, v7, v1 + v5);
}

uint64_t sub_25F78C76C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F78C860()
{
  v1 = (type metadata accessor for PrefsDataStore(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_25F82217C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_25F78C98C()
{
  v1 = *(type metadata accessor for PrefsDataStore(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_25F788010(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F78CA40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F78CA78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F78CC94;

  return sub_25F788200(a1, v4);
}

uint64_t sub_25F78CB30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F78C76C;

  return sub_25F788200(a1, v4);
}

uint64_t sub_25F78CBE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F78CC48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F78CC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_25F8229BC();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_25F8229CC();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_25F8221EC();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = sub_25F82220C();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F78CE94, 0, 0);
}

uint64_t sub_25F78CE94()
{
  v46 = v0;
  v1 = sub_25F822E6C();
  *(v0 + 208) = v1;
  v2 = sub_25F82210C();
  *(v0 + 216) = v2;
  v3 = *(v2 - 8);
  *(v0 + 224) = *(v3 + 64);
  *(v0 + 232) = swift_task_alloc();
  v4 = swift_task_alloc();
  sub_25F8220FC();
  sub_25F8220AC();
  v5 = *(v3 + 8);
  *(v0 + 240) = v5;
  *(v0 + 248) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v4, v2);

  v6 = [objc_opt_self() defaultManager];
  *(v0 + 256) = v6;
  sub_25F821F3C();
  v7 = sub_25F82235C();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    v9 = *(v0 + 192);
    **(v0 + 200) = v1;
    (*(v9 + 104))();
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = sub_25F78D594;
    v11 = *(v0 + 200);
    v12 = *(v0 + 64);

    return sub_25F78FAE0(v12, v11);
  }

  v14 = *(v0 + 240);
  v15 = *(v0 + 216);
  v16 = swift_task_alloc();
  sub_25F8220FC();
  v17 = sub_25F8220BC();
  v14(v16, v15);

  if ((v17 & 1) == 0)
  {
    sub_25F82292C();

    v45[0] = 0x6465746365707865;
    v45[1] = 0xE900000000000020;
    sub_25F821F4C();
    sub_25F791C5C(&qword_27FDB0198, MEMORY[0x28220BE38]);
    v22 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v22);

    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82DCE0);
    sub_25F8221DC();

    v23 = sub_25F8221CC();
    v24 = sub_25F82268C();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 256);
    v27 = *(v0 + 152);
    v28 = *(v0 + 160);
    v29 = *(v0 + 144);
    if (v25)
    {
      v44 = *(v0 + 160);
      v30 = swift_slowAlloc();
      v43 = v26;
      v31 = v17;
      v32 = swift_slowAlloc();
      v45[0] = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_25F75CA94(0x6465746365707865, 0xE900000000000020, v45);
      _os_log_impl(&dword_25F74E000, v23, v24, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      v33 = v32;
      v17 = v31;
      MEMORY[0x25F8E88D0](v33, -1, -1);
      MEMORY[0x25F8E88D0](v30, -1, -1);

      (*(v27 + 8))(v44, v29);
    }

    else
    {

      (*(v27 + 8))(v28, v29);
    }

    (*(v0 + 240))(*(v0 + 232), *(v0 + 216));
    goto LABEL_15;
  }

  v18 = *(v0 + 256);
  sub_25F821F3C();
  v19 = sub_25F82235C();

  v20 = [v18 fileExistsAtPath_];

  if (v20)
  {
    v21 = *(v0 + 256);
    (*(v0 + 240))(*(v0 + 232), *(v0 + 216));

LABEL_15:

    v42 = *(v0 + 8);

    return v42(v17 & 1);
  }

  v35 = *(v0 + 96);
  v34 = *(v0 + 104);
  v36 = *(v0 + 88);
  sub_25F822D5C();
  *(v0 + 40) = xmmword_25F8250D0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v37 = sub_25F7923A8(&qword_27FDB01D8, MEMORY[0x277D85928]);
  sub_25F822D3C();
  sub_25F7923A8(&unk_27FDB01E0, MEMORY[0x277D858F8]);
  sub_25F8229DC();
  v38 = *(v35 + 8);
  *(v0 + 272) = v38;
  *(v0 + 280) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v34, v36);
  v39 = swift_task_alloc();
  *(v0 + 288) = v39;
  *v39 = v0;
  v39[1] = sub_25F78DDAC;
  v41 = *(v0 + 112);
  v40 = *(v0 + 120);

  return MEMORY[0x2822008C8](v41, v0 + 16, v40, v37);
}

uint64_t sub_25F78D594(char a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  *(*v1 + 33) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_25F78D6F4, 0, 0);
}

uint64_t sub_25F78D6F4()
{
  v39 = v0;
  if ((*(v0 + 33) & 1) == 0)
  {
    v10 = *(v0 + 208);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_25F82292C();
    MEMORY[0x25F8E7510](0xD000000000000026, 0x800000025F82DD20);
    *(v0 + 56) = v10;
    v11 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v11);

    MEMORY[0x25F8E7510](0x6E69746961772029, 0xEE0020726F662067);
    sub_25F821F4C();
    sub_25F791C5C(&qword_27FDB0198, MEMORY[0x28220BE38]);
    v12 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v12);

    MEMORY[0x25F8E7510](0x64206562206F7420, 0xEE00646574656C65);
    v14 = v37;
    v13 = v38;
    sub_25F8221DC();

    v15 = sub_25F8221CC();
    v16 = sub_25F82268C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 256);
    v19 = *(v0 + 176);
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    if (!v17)
    {
LABEL_8:

      (*(v21 + 8))(v19, v20);
      goto LABEL_9;
    }

LABEL_6:
    v36 = v18;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_25F75CA94(v14, v13, &v37);
    _os_log_impl(&dword_25F74E000, v15, v16, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x25F8E88D0](v23, -1, -1);
    MEMORY[0x25F8E88D0](v22, -1, -1);

    (*(v21 + 8))(v19, v20);
LABEL_9:

    (*(v0 + 240))(*(v0 + 232), *(v0 + 216));
    v9 = 0;
    goto LABEL_10;
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = swift_task_alloc();
  sub_25F8220FC();
  v4 = sub_25F8220BC();
  v1(v3, v2);

  if ((v4 & 1) == 0)
  {
    sub_25F82292C();

    v37 = 0x6465746365707865;
    v38 = 0xE900000000000020;
    sub_25F821F4C();
    sub_25F791C5C(&qword_27FDB0198, MEMORY[0x28220BE38]);
    v24 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v24);

    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82DCE0);
    v14 = 0x6465746365707865;
    v13 = 0xE900000000000020;
    sub_25F8221DC();

    v15 = sub_25F8221CC();
    v16 = sub_25F82268C();

    v25 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 256);
    v21 = *(v0 + 152);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    if (!v25)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v5 = *(v0 + 256);
  sub_25F821F3C();
  v6 = sub_25F82235C();

  v7 = [v5 fileExistsAtPath_];

  if (v7)
  {
    v8 = *(v0 + 256);
    (*(v0 + 240))(*(v0 + 232), *(v0 + 216));

    v9 = 1;
LABEL_10:

    v26 = *(v0 + 8);

    return v26(v9);
  }

  v29 = *(v0 + 96);
  v28 = *(v0 + 104);
  v30 = *(v0 + 88);
  sub_25F822D5C();
  *(v0 + 40) = xmmword_25F8250D0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v31 = sub_25F7923A8(&qword_27FDB01D8, MEMORY[0x277D85928]);
  sub_25F822D3C();
  sub_25F7923A8(&unk_27FDB01E0, MEMORY[0x277D858F8]);
  sub_25F8229DC();
  v32 = *(v29 + 8);
  *(v0 + 272) = v32;
  *(v0 + 280) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v28, v30);
  v33 = swift_task_alloc();
  *(v0 + 288) = v33;
  *v33 = v0;
  v33[1] = sub_25F78DDAC;
  v35 = *(v0 + 112);
  v34 = *(v0 + 120);

  return MEMORY[0x2822008C8](v35, v0 + 16, v34, v31);
}

uint64_t sub_25F78DDAC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    (*(v2 + 272))(*(v2 + 112), *(v2 + 88));
    v3 = sub_25F78E428;
  }

  else
  {
    v5 = *(v2 + 128);
    v4 = *(v2 + 136);
    v6 = *(v2 + 120);
    (*(v2 + 272))(*(v2 + 112), *(v2 + 88));
    (*(v5 + 8))(v4, v6);
    v3 = sub_25F78DF04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F78DF04()
{
  v34 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = swift_task_alloc();
  sub_25F8220FC();
  v4 = sub_25F8220BC();
  v1(v3, v2);

  if ((v4 & 1) == 0)
  {
    sub_25F82292C();

    v33[0] = 0x6465746365707865;
    v33[1] = 0xE900000000000020;
    sub_25F821F4C();
    sub_25F791C5C(&qword_27FDB0198, MEMORY[0x28220BE38]);
    v9 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v9);

    MEMORY[0x25F8E7510](0xD000000000000016, 0x800000025F82DCE0);
    sub_25F8221DC();

    v10 = sub_25F8221CC();
    v11 = sub_25F82268C();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 256);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);
    if (v12)
    {
      v32 = *(v0 + 160);
      v17 = swift_slowAlloc();
      v31 = v13;
      v18 = v4;
      v19 = swift_slowAlloc();
      v33[0] = v19;
      *v17 = 136315138;
      *(v17 + 4) = sub_25F75CA94(0x6465746365707865, 0xE900000000000020, v33);
      _os_log_impl(&dword_25F74E000, v10, v11, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      v20 = v19;
      v4 = v18;
      MEMORY[0x25F8E88D0](v20, -1, -1);
      MEMORY[0x25F8E88D0](v17, -1, -1);

      (*(v14 + 8))(v32, v16);
    }

    else
    {

      (*(v14 + 8))(v15, v16);
    }

    (*(v0 + 240))(*(v0 + 232), *(v0 + 216));
    goto LABEL_11;
  }

  v5 = *(v0 + 256);
  sub_25F821F3C();
  v6 = sub_25F82235C();

  v7 = [v5 fileExistsAtPath_];

  if (v7)
  {
    v8 = *(v0 + 256);
    (*(v0 + 240))(*(v0 + 232), *(v0 + 216));

LABEL_11:

    v29 = *(v0 + 8);

    return v29(v4 & 1);
  }

  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 88);
  sub_25F822D5C();
  *(v0 + 40) = xmmword_25F8250D0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v24 = sub_25F7923A8(&qword_27FDB01D8, MEMORY[0x277D85928]);
  sub_25F822D3C();
  sub_25F7923A8(&unk_27FDB01E0, MEMORY[0x277D858F8]);
  sub_25F8229DC();
  v25 = *(v22 + 8);
  *(v0 + 272) = v25;
  *(v0 + 280) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v21, v23);
  v26 = swift_task_alloc();
  *(v0 + 288) = v26;
  *v26 = v0;
  v26[1] = sub_25F78DDAC;
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);

  return MEMORY[0x2822008C8](v28, v0 + 16, v27, v24);
}

uint64_t sub_25F78E428()
{
  v16 = v0;
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  sub_25F8221DC();
  v1 = sub_25F8221CC();
  v2 = sub_25F82268C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 296);
  v5 = *(v0 + 256);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  if (v3)
  {
    v14 = *(v0 + 296);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_25F75CA94(0xD00000000000001CLL, 0x800000025F82DD00, &v15);
    _os_log_impl(&dword_25F74E000, v1, v2, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F8E88D0](v10, -1, -1);
    MEMORY[0x25F8E88D0](v9, -1, -1);

    (*(v8 + 8))(v6, v7);
    v11 = v14;
  }

  else
  {

    (*(v8 + 8))(v6, v7);
    v11 = v4;
  }

  (*(v0 + 240))(*(v0 + 232), *(v0 + 216));

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_25F78E680(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_25F8229CC();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = sub_25F8221EC();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F78E7C0, 0, 0);
}

uint64_t sub_25F78E7C0()
{
  v13 = v0;
  sub_25F8221DC();
  v1 = sub_25F8221CC();
  v2 = sub_25F8226AC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[25];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_25F75CA94(0xD000000000000022, 0x800000025F82DC30, &v12);
    _os_log_impl(&dword_25F74E000, v1, v2, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F8E88D0](v8, -1, -1);
    MEMORY[0x25F8E88D0](v7, -1, -1);
  }

  v9 = *(v6 + 8);
  v9(v4, v5);
  v0[30] = v9;
  if (qword_27FDAF858 != -1)
  {
    swift_once();
  }

  v10 = qword_27FDBF7A8;
  v0[31] = qword_27FDBF7A8;

  return MEMORY[0x2822009F8](sub_25F78E99C, v10, 0);
}

uint64_t sub_25F78E99C()
{
  v1 = *(v0 + 248);
  v2 = OBJC_IVAR____TtC17ProDisplayLibrary8Schedule_requestPending;
  *(v0 + 256) = OBJC_IVAR____TtC17ProDisplayLibrary8Schedule_requestPending;
  *(v0 + 344) = *(v1 + v2);
  return MEMORY[0x2822009F8](sub_25F78E9D0, 0, 0);
}

uint64_t sub_25F78E9D0()
{
  v13 = v0;
  if (*(v0 + 344) == 1)
  {
    sub_25F8221DC();
    v1 = sub_25F8221CC();
    v2 = sub_25F82268C();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 240);
    v5 = *(v0 + 224);
    v6 = *(v0 + 192);
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_25F75CA94(0xD000000000000026, 0x800000025F82DCB0, &v12);
      _os_log_impl(&dword_25F74E000, v1, v2, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x25F8E88D0](v8, -1, -1);
      MEMORY[0x25F8E88D0](v7, -1, -1);
    }

    v4(v5, v6);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 248);

    return MEMORY[0x2822009F8](sub_25F78EBF0, v11, 0);
  }
}

uint64_t sub_25F78EBF0()
{
  v1 = v0[31];
  *(v1 + v0[32]) = 1;
  v2 = sub_25F82210C();
  v0[33] = v2;
  v3 = *(v2 - 8);
  v0[34] = v3;
  v0[35] = *(v3 + 64);
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F78ECCC, v1, 0);
}

uint64_t sub_25F78ECCC()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[31];
  v5 = OBJC_IVAR____TtC17ProDisplayLibrary8Schedule_nextEarliestTime;
  v0[38] = OBJC_IVAR____TtC17ProDisplayLibrary8Schedule_nextEarliestTime;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);

  return MEMORY[0x2822009F8](sub_25F78ED84, 0, 0);
}

uint64_t sub_25F78ED84()
{
  v30 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[33];
  v5 = swift_task_alloc();
  v6 = swift_task_alloc();
  sub_25F8220FC();
  sub_25F8220AC();
  v7 = *(v3 + 8);
  v0[39] = v7;
  v0[40] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v6, v4);

  sub_25F791C5C(&qword_27FDB01D0, MEMORY[0x28220BFA8]);
  v8 = sub_25F82230C();
  v9 = (v8 & 1) == 0;
  if (v8)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v5;
  }

  v7(v10, v4);
  (*(v3 + 32))(v1, v11, v4);

  v12 = swift_task_alloc();
  sub_25F8220FC();
  sub_25F82209C();
  v7(v12, v4);

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_25F82292C();
  v0[17] = 0;
  v0[18] = 0xE000000000000000;
  MEMORY[0x25F8E7510](0xD000000000000026, 0x800000025F82DC60);
  sub_25F8225FC();
  MEMORY[0x25F8E7510](0x73646E6F63657320, 0xE800000000000000);
  v14 = v0[17];
  v13 = v0[18];
  sub_25F8221DC();

  v15 = sub_25F8221CC();
  v16 = sub_25F8226AC();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[30];
  v19 = v0[27];
  v20 = v0[24];
  if (v17)
  {
    v28 = v0[30];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_25F75CA94(v14, v13, v29);
    _os_log_impl(&dword_25F74E000, v15, v16, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x25F8E88D0](v22, -1, -1);
    MEMORY[0x25F8E88D0](v21, -1, -1);

    v28(v19, v20);
  }

  else
  {

    v18(v19, v20);
  }

  v23 = sub_25F822E7C();
  v25 = v24;
  sub_25F822D5C();
  v26 = swift_task_alloc();
  v0[41] = v26;
  *v26 = v0;
  v26[1] = sub_25F78F17C;

  return sub_25F79178C(v23, v25, 0, 0, 1);
}

uint64_t sub_25F78F17C()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  *(*v1 + 336) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_25F78F3F0;
  }

  else
  {
    v5 = sub_25F78F2EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F78F2EC()
{
  v1 = v0[20];
  v0[6] = sub_25F78F8D0;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_25F788098;
  v0[5] = &block_descriptor_0;
  v2 = _Block_copy(v0 + 2);

  v1(v2);
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[31];
    isEscapingClosureAtFileLocation = sub_25F78F6F0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](isEscapingClosureAtFileLocation, v4, v5);
}

uint64_t sub_25F78F3F0()
{
  v21 = v0;
  v1 = v0 + 2;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_25F82292C();
  MEMORY[0x25F8E7510](0xD00000000000001ALL, 0x800000025F82DC90);
  swift_getErrorValue();
  sub_25F822C9C();
  sub_25F8221DC();

  v2 = sub_25F8221CC();
  v3 = sub_25F82268C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[42];
  v6 = v0[30];
  v7 = v0[26];
  v8 = v0[24];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v19 = v5;
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_25F75CA94(0, 0xE000000000000000, v20);
    _os_log_impl(&dword_25F74E000, v2, v3, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F8E88D0](v10, -1, -1);
    v11 = v9;
    v1 = v0 + 2;
    MEMORY[0x25F8E88D0](v11, -1, -1);

    v6(v7, v8);

    v12 = v19;
  }

  else
  {

    v6(v7, v8);

    v12 = v5;
  }

  v13 = v0[20];
  v0[6] = sub_25F78F8D0;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_25F788098;
  v0[5] = &block_descriptor_0;
  v14 = _Block_copy(v1);

  v13(v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[31];
    isEscapingClosureAtFileLocation = sub_25F78F6F0;
    v17 = 0;
  }

  return MEMORY[0x2822009F8](isEscapingClosureAtFileLocation, v16, v17);
}

uint64_t sub_25F78F6F0()
{
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[33];
  v5 = v0[31];
  v6 = swift_task_alloc();
  v7 = swift_task_alloc();
  sub_25F8220FC();
  sub_25F8220AC();
  v1(v7, v4);

  swift_beginAccess();
  (*(v3 + 40))(v5 + v2, v6, v4);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_25F78F800, v5, 0);
}

uint64_t sub_25F78F824()
{
  (*(v0 + 312))(*(v0 + 288), *(v0 + 264));

  v1 = *(v0 + 8);

  return v1();
}

id sub_25F78F8D0()
{
  v0 = objc_opt_self();

  return [v0 prebootUpdate];
}

uint64_t sub_25F78F908()
{
  v1 = OBJC_IVAR____TtC17ProDisplayLibrary8Schedule_nextEarliestTime;
  v2 = sub_25F82210C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for Schedule()
{
  result = qword_27FDB01B8;
  if (!qword_27FDB01B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F78F9D4()
{
  result = sub_25F82210C();
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

uint64_t sub_25F78FA84()
{
  type metadata accessor for Schedule();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_25F8220FC();
  *(v0 + OBJC_IVAR____TtC17ProDisplayLibrary8Schedule_requestPending) = 0;
  qword_27FDBF7A8 = v0;
  return result;
}

uint64_t sub_25F78FAE0(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[87] = a1;
  v3 = sub_25F8221EC();
  v2[94] = v3;
  v2[95] = *(v3 - 8);
  v2[96] = swift_task_alloc();
  v4 = sub_25F82220C();
  v2[97] = v4;
  v5 = *(v4 - 8);
  v2[98] = v5;
  v2[99] = *(v5 + 64);
  v2[100] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F78FC08, 0, 0);
}

uint64_t sub_25F78FC08()
{
  v26 = v0;
  sub_25F821F3C();
  sub_25F82240C();

  v1 = sub_25F8221FC();

  if (v1 == -1)
  {
    sub_25F82292C();

    v25[0] = 0xD000000000000012;
    v25[1] = 0x800000025F82DD50;
    sub_25F821F4C();
    sub_25F791C5C(&qword_27FDB0198, MEMORY[0x28220BE38]);
    v13 = sub_25F822C7C();
    MEMORY[0x25F8E7510](v13);

    sub_25F8221DC();

    v14 = sub_25F8221CC();
    v15 = sub_25F82268C();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[96];
    v18 = v0[95];
    v19 = v0[94];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_25F75CA94(0xD000000000000012, 0x800000025F82DD50, v25);
      _os_log_impl(&dword_25F74E000, v14, v15, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x25F8E88D0](v21, -1, -1);
      MEMORY[0x25F8E88D0](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);

    v22 = v0[1];

    return v22(0);
  }

  else
  {
    v2 = v0[100];
    v3 = v0[98];
    v24 = v0[97];
    v4 = v0[93];
    v5 = sub_25F821F4C();
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    v8 = swift_task_alloc();
    v0[101] = v8;
    (*(v6 + 16))();
    (*(v3 + 16))(v2, v4, v24);
    v9 = (*(v6 + 80) + 20) & ~*(v6 + 80);
    v10 = (v7 + *(v3 + 80) + v9) & ~*(v3 + 80);
    v11 = swift_allocObject();
    v0[102] = v11;
    *(v11 + 16) = v1;
    (*(v6 + 32))(v11 + v9, v8, v5);
    (*(v3 + 32))(v11 + v10, v2, v24);
    v12 = swift_task_alloc();
    v0[103] = v12;
    *(v12 + 16) = &unk_25F825170;
    *(v12 + 24) = v11;
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 2, v0 + 104, sub_25F79006C, v0 + 82);
  }
}

uint64_t sub_25F7900B0()
{

  v1 = *(v0 + 833);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25F790144(int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 48) = a1;
  return MEMORY[0x2822009F8](sub_25F790168, 0, 0);
}

uint64_t sub_25F790168()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_25F790268;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 52, 0, 0, 0xD000000000000023, 0x800000025F82DD70, sub_25F7920D4, v2, v5);
}

uint64_t sub_25F790268()
{

  return MEMORY[0x2822009F8](sub_25F790380, 0, 0);
}

uint64_t sub_25F790398(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v95 = a3;
  v96 = a1;
  LODWORD(ObjectType) = a2;
  v87 = sub_25F82220C();
  v85 = *(v87 - 8);
  v4 = MEMORY[0x28223BE20](v87);
  v84 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v62 - v6;
  v82 = sub_25F82225C();
  v99 = *(v82 - 8);
  v7 = MEMORY[0x28223BE20](v82);
  v81 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v62 - v9;
  v93 = sub_25F82221C();
  v98 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v79 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_25F82223C();
  v97 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB01F0);
  v100 = *(v78 - 8);
  v92 = *(v100 + 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v62 - v12;
  v13 = sub_25F8226EC();
  v88 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F82270C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F7920E0(0, &qword_27FDB01F8);
  sub_25F8226FC();
  sub_25F7920E0(0, &qword_27FDB0200);
  v20 = sub_25F8226CC();
  v89 = sub_25F82272C();

  (*(v17 + 8))(v19, v16);
  v21 = sub_25F8226CC();
  aBlock = MEMORY[0x277D84F90];
  sub_25F7923A8(&qword_27FDB0208, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0210);
  sub_25F7923F0(&qword_27FDB0218, &qword_27FDB0210);
  sub_25F82288C();
  v22 = sub_25F82271C();

  (*(v88 + 8))(v15, v13);
  ObjectType = swift_getObjectType();
  v23 = sub_25F821F4C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v76 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v62 - v76;
  v27 = *(v24 + 16);
  v74 = v24 + 16;
  v75 = v27;
  v63 = v23;
  v27(&v62 - v76, v95, v23);
  v28 = v100;
  v29 = *(v100 + 2);
  v72 = v100 + 16;
  v73 = v29;
  v30 = v77;
  v31 = v78;
  v29(v77, v96, v78);
  v32 = *(v24 + 80);
  v33 = v28[80];
  v34 = (v32 + 24) & ~v32;
  v69 = v34;
  v35 = (v25 + v33 + v34) & ~v33;
  v71 = v32 | v33;
  v36 = swift_allocObject();
  *(v36 + 16) = v22;
  v68 = *(v24 + 32);
  v70 = v24 + 32;
  v68(v36 + v34, v26, v23);
  v37 = *(v100 + 4);
  v100 += 32;
  v67 = v37;
  v38 = v31;
  v37(v36 + v35, v30, v31);
  v105 = sub_25F79212C;
  v106 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v102 = 1107296256;
  v66 = &v103;
  v103 = sub_25F7911CC;
  v104 = &block_descriptor_29;
  v39 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v40 = v91;
  sub_25F82222C();
  v41 = v79;
  sub_25F791210();
  v42 = v89;
  sub_25F82273C();
  _Block_release(v39);
  v43 = *(v98 + 8);
  v98 += 8;
  v65 = v43;
  v43(v41, v93);
  v44 = *(v97 + 8);
  v97 += 8;
  v64 = v44;
  v44(v40, v94);

  v62 = v22;
  v88 = swift_getObjectType();
  MEMORY[0x28223BE20](v88);
  v45 = &v62 - v76;
  v46 = v63;
  v75(&v62 - v76, v95, v63);
  v47 = v30;
  v73(v30, v96, v38);
  v48 = swift_allocObject();
  *(v48 + 16) = v42;
  v68(v48 + v69, v45, v46);
  v67(v48 + v35, v47, v38);
  v105 = sub_25F7922A0;
  v106 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v102 = 1107296256;
  v103 = sub_25F7911CC;
  v104 = &block_descriptor_35;
  v49 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v50 = v91;
  sub_25F82222C();
  sub_25F791210();
  sub_25F82273C();
  _Block_release(v49);
  v65(v41, v93);
  v64(v50, v94);

  sub_25F82275C();
  v51 = v81;
  sub_25F82224C();
  v52 = v80;
  MEMORY[0x25F8E7310](v51, v86);
  v53 = *(v99 + 8);
  v99 += 8;
  v100 = v53;
  v54 = v82;
  (v53)(v51, v82);
  v55 = v85;
  v56 = *(v85 + 104);
  v57 = v83;
  v58 = v87;
  v56(v83, *MEMORY[0x277D85180], v87);
  v59 = v84;
  *v84 = 0;
  v56(v59, *MEMORY[0x277D85168], v58);
  MEMORY[0x25F8E7830](v52, v57, v59, v88);
  v60 = *(v55 + 8);
  v60(v59, v58);
  v60(v57, v58);
  (v100)(v52, v54);
  sub_25F82275C();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_25F790F54()
{
  v0 = sub_25F8221EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_25F82274C();
  sub_25F821F4C();
  sub_25F791C5C(&qword_27FDB0198, MEMORY[0x28220BE38]);
  v12 = sub_25F822C7C();
  v13 = v4;
  MEMORY[0x25F8E7510](0x646574656C656420, 0xE800000000000000);
  v6 = v12;
  v5 = v13;
  sub_25F8221DC();

  v7 = sub_25F8221CC();
  v8 = sub_25F8226AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_25F75CA94(v6, v5, &v12);
    _os_log_impl(&dword_25F74E000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F8E88D0](v10, -1, -1);
    MEMORY[0x25F8E88D0](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);

  LOBYTE(v12) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB01F0);
  return sub_25F82259C();
}

uint64_t sub_25F7911CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25F791210()
{
  sub_25F82221C();
  sub_25F7923A8(&qword_27FDB02E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB02E8);
  sub_25F7923F0(&unk_27FDB02F0, &qword_27FDB02E8);
  return sub_25F82288C();
}

uint64_t sub_25F7912E8()
{
  v0 = sub_25F8221EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_25F82274C();
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_25F82292C();

  v12 = 0xD00000000000002DLL;
  v13 = 0x800000025F82DDA0;
  sub_25F821F4C();
  sub_25F791C5C(&qword_27FDB0198, MEMORY[0x28220BE38]);
  v4 = sub_25F822C7C();
  MEMORY[0x25F8E7510](v4);

  v6 = v12;
  v5 = v13;
  sub_25F8221DC();

  v7 = sub_25F8221CC();
  v8 = sub_25F8226AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_25F75CA94(v6, v5, &v12);
    _os_log_impl(&dword_25F74E000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F8E88D0](v10, -1, -1);
    MEMORY[0x25F8E88D0](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);

  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB01F0);
  return sub_25F82259C();
}

uint64_t sub_25F79158C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25F791678;

  return v5();
}

uint64_t sub_25F791678(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25F79178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25F8229BC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25F79188C, 0, 0);
}

uint64_t sub_25F79188C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_25F8229CC();
  v5 = sub_25F7923A8(&qword_27FDB01D8, MEMORY[0x277D85928]);
  sub_25F822D3C();
  sub_25F7923A8(&unk_27FDB01E0, MEMORY[0x277D858F8]);
  sub_25F8229DC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_25F791A1C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_25F791A1C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F791BD8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_25F791BD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F791C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F791CA4()
{
  v1 = sub_25F821F4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 20) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25F82220C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25F791DEC()
{
  v2 = *(sub_25F821F4C() - 8);
  v3 = (*(v2 + 80) + 20) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_25F82220C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_25F791F20;

  return sub_25F790144(v7, v0 + v3, v0 + v6);
}

uint64_t sub_25F791F20(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25F79201C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F78C76C;

  return sub_25F79158C(a1, v4);
}

uint64_t sub_25F7920E0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = sub_25F821F4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB01F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25F7922B8(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_25F821F4C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB01F0) - 8);
  v6 = *(v1 + 16);
  v7 = v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v6, v1 + v3, v7);
}

uint64_t sub_25F7923A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F7923F0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F792458()
{
  v0 = sub_25F82217C();
  __swift_allocate_value_buffer(v0, qword_27FDBF7B0);
  v1 = __swift_project_value_buffer(v0, qword_27FDBF7B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFFF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25F82211C();
  v5 = *(v0 - 8);
  result = (*(v5 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v5 + 32))(v1, v4, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F792588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  __swift_allocate_value_buffer(v3, qword_27FDBF7C8);
  v4 = __swift_project_value_buffer(v3, qword_27FDBF7C8);
  if (qword_27FDAF860 != -1)
  {
    swift_once();
  }

  v22 = 0x800000025F82DDD0;
  v23 = 0x800000025F82DDF0;
  v5 = sub_25F82217C();
  v6 = __swift_project_value_buffer(v5, qword_27FDBF7B0);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  v21[1] = v21;
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_25F82210C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v13 = *(*(v12 - 8) + 56);
  v13(v2, 1, 1, v12);
  v21[0] = v2;
  v14 = v3[8];
  v11((v4 + v14), 1, 1, v10);
  v15 = v3[9];
  v13((v4 + v15), 1, 1, v12);
  v16 = (v4 + v3[5]);
  v17 = v22;
  *v16 = 0xD000000000000015;
  v16[1] = v17;
  v18 = (v4 + v3[6]);
  v19 = v23;
  *v18 = 0xD000000000000151;
  v18[1] = v19;
  *(v4 + v3[7]) = 0;
  sub_25F760E58(v9, v4 + v14, &qword_27FDAFC20);
  return sub_25F760E58(v21[0], v4 + v15, &qword_27FDAFC10);
}

uint64_t sub_25F792884()
{
  v13 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v0 = swift_allocObject();
  v0[1] = xmmword_25F8249B0;
  if (qword_27FDAFB28 != -1)
  {
    swift_once();
  }

  v1 = *&byte_27FDB1418;
  v2 = xmmword_27FDB1428;
  v14[3] = *&byte_27FDB1418;
  v14[4] = xmmword_27FDB1428;
  v4 = xmmword_27FDB13E8;
  v3 = *&byte_27FDB13F8;
  v14[1] = *&byte_27FDB13F8;
  v14[2] = xmmword_27FDB1408;
  v14[0] = xmmword_27FDB13E8;
  v0[4] = xmmword_27FDB1408;
  v0[5] = v1;
  v0[6] = v2;
  v0[2] = v4;
  v0[3] = v3;
  v5 = sub_25F79341C(&unk_2871C3E98, &qword_27FDB03C0);
  *&xmmword_27FDBF7E0 = 2;
  *(&xmmword_27FDBF7E0 + 8) = 0u;
  *&algn_27FDBF7F0[8] = 0u;
  qword_27FDBF808 = 0;
  byte_27FDBF810 = 1;
  *&algn_27FDBF811[7] = 0u;
  *(&xmmword_27FDBF820 + 8) = 0u;
  unk_27FDBF838 = 0u;
  byte_27FDBF848 = 0;
  byte_27FDBF849 = v13;
  xmmword_27FDBF850 = xmmword_25F824920;
  LOBYTE(xmmword_27FDBF860) = 1;
  *(&xmmword_27FDBF860 + 1) = 0;
  unk_27FDBF870 = 0;
  word_27FDBF878 = 256;
  xmmword_27FDBF880 = vdupq_n_s64(0x4054000000000000uLL);
  qword_27FDBF890 = 0;
  unk_27FDBF898 = v0;
  LOBYTE(xmmword_27FDBF8A0) = 6;
  *(&xmmword_27FDBF8A0 + 1) = 0x400199999999999ALL;
  word_27FDBF8B0 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&algn_27FDBF8B2[6] = _Q0;
  qword_27FDBF8C8 = v5;
  dword_27FDBF8D0 = 16843009;
  return sub_25F777DAC(v14, v12);
}

double sub_25F792A08()
{
  LODWORD(xmmword_27FDBF8D8) = 16843009;
  *(&xmmword_27FDBF8D8 + 1) = 0;
  LOWORD(xmmword_27FDBF8E8) = 257;
  *(&xmmword_27FDBF8E8 + 1) = 0x3FF0000000000000;
  LOWORD(xmmword_27FDBF8F8) = 0;
  *(&xmmword_27FDBF8F8 + 1) = 0;
  unk_27FDBF908 = 0;
  byte_27FDBF910 = 1;
  *&xmmword_27FDBF918 = 0x4050000000000000;
  BYTE8(xmmword_27FDBF918) = 0;
  *&xmmword_27FDBF928 = 0;
  BYTE8(xmmword_27FDBF928) = 1;
  xmmword_27FDBF938 = vdupq_n_s64(0x4054000000000000uLL);
  qword_27FDBF948 = 0x4054000000000000;
  *&result = 16843008;
  dword_27FDBF950 = 16843008;
  return result;
}

uint64_t sub_25F792A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03D8);
    v3 = sub_25F82290C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x25F8E7E60](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25F792BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03F0);
    v3 = sub_25F82290C();
    v4 = 0;
    v5 = v3 + 56;
    v60 = v3;
    v61 = a1 + 32;
    while (1)
    {
      v6 = v61 + 56 * v4;
      v62 = *v6;
      v63 = *(v6 + 16);
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);
      v9 = *(v6 + 48);
      sub_25F822DCC();
      if (v9 == 1)
      {
        if (*&v63.f64[0] | *&v62.f64[1] | *&v62.f64[0] | *&v63.f64[1] | *&v7 | *&v8)
        {
          v10 = *&v63.f64[0] | *&v62.f64[1] | *&v63.f64[1] | *&v7 | *&v8;
          if (*&v62.f64[0] == 1 && v10 == 0)
          {
            v13 = v7;
            v16 = 1;
          }

          else if (*&v62.f64[0] == 2 && v10 == 0)
          {
            v13 = v7;
            v16 = 2;
          }

          else
          {
            v13 = v7;
            if (*&v62.f64[0] == 3 && v10 == 0)
            {
              v16 = 3;
            }

            else if (*&v62.f64[0] == 4 && v10 == 0)
            {
              v16 = 4;
            }

            else
            {
              v16 = 5;
            }
          }
        }

        else
        {
          v13 = v7;
          v16 = 0;
        }

        MEMORY[0x25F8E7E80](v16);
      }

      else
      {
        MEMORY[0x25F8E7E80](6);
        v13 = v7;
        Primaries.hash(into:)();
      }

      result = sub_25F822E0C();
      v18 = v60;
      v19 = -1 << *(v60 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = *(v5 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      v24 = *(v60 + 48);
      if (((1 << v20) & v22) != 0)
      {
        v25 = ~v19;
        v26 = v13;
        v28 = v62;
        v27 = v63;
        v29 = *&v63.f64[0] | *&v62.f64[1] | *&v63.f64[1] | *&v13 | *&v8;
        v30 = v29 | *&v62.f64[0];
        v31 = (*&v62.f64[0] - 1) < 4;
        v32 = (*&v62.f64[0] - 1) < 3;
        v33 = v29 == 0;
        if (v29)
        {
          v31 = 0;
          v32 = 0;
          v34 = 0;
        }

        else
        {
          v34 = *&v62.f64[0] == 4;
        }

        if (v29)
        {
          v35 = 0;
        }

        else
        {
          v35 = (*&v62.f64[0] - 1) < 2;
        }

        if (v29)
        {
          v36 = 0;
        }

        else
        {
          v36 = *&v62.f64[0] == 3;
        }

        v37 = v33 && *&v62.f64[0] == 1;
        v38 = v33 && *&v62.f64[0] == 2;
        v39 = v9 ^ 1;
        if (!v30)
        {
          v39 = 1;
        }

        v40 = v39 | v31;
        v41 = v39 | v32;
        result = v39 | v35;
        v42 = v39 | v37;
        if (v30)
        {
          v43 = v9;
        }

        else
        {
          v43 = 0;
        }

        while (1)
        {
          v48 = v24 + 56 * v20;
          v50 = *v48;
          v49 = *(v48 + 16);
          v52 = *(v48 + 32);
          v51 = *(v48 + 40);
          if (*(v48 + 48) == 1)
          {
            v53 = *&v52 | *&v51;
            if (*&v49.f64[0] | *&v50.f64[1] | *&v50.f64[0] | *&v49.f64[1] | v53)
            {
              v54 = *&v49.f64[0] | *&v50.f64[1] | *&v49.f64[1] | v53;
              if (*&v50.f64[0] == 1 && v54 == 0)
              {
                if (v43 && v37)
                {
                  goto LABEL_3;
                }
              }

              else if (*&v50.f64[0] == 2 && v54 == 0)
              {
                if ((v42 & 1) == 0 && v38)
                {
                  goto LABEL_3;
                }
              }

              else if (*&v50.f64[0] == 3 && v54 == 0)
              {
                if ((result & 1) == 0 && v36)
                {
                  goto LABEL_3;
                }
              }

              else if (*&v50.f64[0] == 4 && v54 == 0)
              {
                if ((v41 & 1) == 0 && v34)
                {
                  goto LABEL_3;
                }
              }

              else if ((v40 & 1) == 0)
              {
                goto LABEL_3;
              }
            }

            else if (v9 && !v30)
            {
              goto LABEL_3;
            }
          }

          else if ((v9 & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v50, v62), vceqq_f64(v49, v63)))) & 1) != 0 && v52 == v13 && v51 == v8)
          {
            goto LABEL_3;
          }

          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = *(v5 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if ((v22 & (1 << v20)) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      v28 = v62;
      v27 = v63;
      v26 = v13;
LABEL_52:
      *(v5 + 8 * v21) = v22 | v23;
      v44 = v24 + 56 * v20;
      *v44 = v28;
      *(v44 + 16) = v27;
      *(v44 + 32) = v26;
      *(v44 + 40) = v8;
      *(v44 + 48) = v9;
      v45 = *(v60 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        break;
      }

      *(v60 + 16) = v47;
LABEL_3:
      if (++v4 == v1)
      {
        return v18;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25F792FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03E8);
    v3 = sub_25F82290C();
    v4 = 0;
    v5 = v3 + 56;
    v35 = v1;
    v36 = a1 + 32;
    while (1)
    {
      v6 = v36 + 24 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = *(v6 + 16);
      sub_25F822DCC();
      if (v9 == 1)
      {
        if (*&v8 > 2uLL)
        {
          if (*&v8 ^ 3 | *&v7)
          {
            if (*&v8 ^ 4 | *&v7)
            {
              v10 = 5;
            }

            else
            {
              v10 = 4;
            }
          }

          else
          {
            v10 = 3;
          }
        }

        else if (*&v8 | *&v7)
        {
          if (*&v8 ^ 1 | *&v7)
          {
            v10 = 2;
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x25F8E7E80](v10);
      }

      else
      {
        MEMORY[0x25F8E7E80](6);
        if ((*&v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0.0;
        }

        MEMORY[0x25F8E7EA0](*&v11);
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = 0.0;
        }

        MEMORY[0x25F8E7EA0](*&v12);
      }

      v13 = sub_25F822E0C();
      v14 = -1 << *(v3 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      result = *(v5 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      v19 = *(v3 + 48);
      if (((1 << v15) & result) != 0)
      {
        v20 = ~v14;
        if (*&v8 > 4uLL)
        {
          v21 = v9;
        }

        else
        {
          v21 = 0;
        }

        if (*&v8 ^ 4 | *&v7)
        {
          v22 = 0;
        }

        else
        {
          v22 = v9;
        }

        if (*&v8 ^ 3 | *&v7)
        {
          v23 = 0;
        }

        else
        {
          v23 = v9;
        }

        if (*&v8 ^ 2 | *&v7)
        {
          v24 = 0;
        }

        else
        {
          v24 = v9;
        }

        if (*&v8 ^ 1 | *&v7)
        {
          v25 = 0;
        }

        else
        {
          v25 = v9;
        }

        if (*&v8 | *&v7)
        {
          v26 = 0;
        }

        else
        {
          v26 = v9;
        }

        do
        {
          v27 = v19 + 24 * v15;
          v29 = *v27;
          v28 = *(v27 + 8);
          if (*(v27 + 16) == 1)
          {
            if (*&v29 > 2uLL)
            {
              if (*&v29 ^ 3 | *&v28)
              {
                if (*&v29 ^ 4 | *&v28)
                {
                  if (v21)
                  {
                    goto LABEL_3;
                  }
                }

                else if (v22)
                {
                  goto LABEL_3;
                }
              }

              else if (v23)
              {
                goto LABEL_3;
              }
            }

            else if (*&v29 | *&v28)
            {
              if (*&v29 ^ 1 | *&v28)
              {
                if (v24)
                {
                  goto LABEL_3;
                }
              }

              else if (v25)
              {
                goto LABEL_3;
              }
            }

            else if (v26)
            {
              goto LABEL_3;
            }
          }

          else if ((v9 & 1) == 0 && v29 == v8 && v28 == v7)
          {
            goto LABEL_3;
          }

          v15 = (v15 + 1) & v20;
          v16 = v15 >> 6;
          result = *(v5 + 8 * (v15 >> 6));
          v18 = 1 << v15;
        }

        while ((result & (1 << v15)) != 0);
      }

      *(v5 + 8 * v16) = result | v18;
      v31 = v19 + 24 * v15;
      *v31 = v8;
      *(v31 + 8) = v7;
      *(v31 + 16) = v9;
      v32 = *(v3 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      *(v3 + 16) = v34;
LABEL_3:
      if (++v4 == v35)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25F7932D4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_25F82290C();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_25F822DCC();
      MEMORY[0x25F8E7E80](v11);
      result = sub_25F822E0C();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25F79341C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_25F82290C();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_25F822DCC();
      MEMORY[0x25F8E7E80](v11);
      result = sub_25F822E0C();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (v11 != *(v18 + v14))
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25F793550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB03C8);
    v3 = sub_25F82290C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_25F822DCC();
      sub_25F822DEC();
      result = sub_25F822E0C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25F79368C()
{
  if (qword_27FDAFAB0 != -1)
  {
    swift_once();
  }

  qword_27FDBF960 = qword_27FDC1350;
}

uint64_t sub_25F7936F0()
{
  result = sub_25F792BB0(&unk_2871C3C90);
  qword_27FDBF968 = result;
  return result;
}

double sub_25F793718()
{
  v0 = sub_25F792BD8(&unk_2871C4BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0098);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F823D00;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  *(inited + 56) = xmmword_25F824920;
  *(inited + 72) = 1;
  *(inited + 80) = xmmword_25F824930;
  *(inited + 96) = 1;
  *(inited + 104) = 0;
  *(inited + 112) = 0;
  *(inited + 120) = 0;
  v2 = sub_25F792FCC(inited);
  swift_setDeallocating();
  v3 = sub_25F7932C0(&unk_2871C4CD0);
  xmmword_27FDBF970 = xmmword_25F824940;
  qword_27FDBF980 = v0;
  unk_27FDBF988 = v2;
  xmmword_27FDBF990 = xmmword_25F824950;
  xmmword_27FDBF9A0 = xmmword_25F824960;
  *&xmmword_27FDBF9B0 = v3;
  *(&xmmword_27FDBF9B0 + 8) = xmmword_25F824970;
  *(&xmmword_27FDBF9C0 + 8) = xmmword_25F824980;
  qword_27FDBF9D8 = 0;
  LOBYTE(xmmword_27FDBF9E0) = 0;
  *(&xmmword_27FDBF9E0 + 8) = xmmword_25F824990;
  *&result = 48;
  *(&xmmword_27FDBF9F0 + 8) = xmmword_25F8249A0;
  byte_27FDBFA08 = 0;
  *&xmmword_27FDBFA10 = 1000;
  WORD4(xmmword_27FDBFA10) = 0;
  qword_27FDBFA20 = 0;
  return result;
}

int64x2_t sub_25F79384C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v38 - v1;
  v40 = &v38 - v1;
  v3 = type metadata accessor for Preset.Info(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Preset(0);
  v42 = v7;
  __swift_allocate_value_buffer(v7, qword_27FDBFA28);
  v41 = __swift_project_value_buffer(v7, qword_27FDBFA28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  v39 = *(*(v8 - 8) + 56);
  v39(v2, 1, 1, v8);
  sub_25F82216C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  sub_25F8220FC();
  v12 = sub_25F82210C();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = v4[10];
  v13(&v6[v14], 1, 1, v12);
  v15 = v4[11];
  v39(&v6[v15], 1, 1, v8);
  v16 = &v6[v4[7]];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v6[v4[8]];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v6[v4[9]] = 1;
  sub_25F760E58(v11, &v6[v14], &qword_27FDAFC20);
  sub_25F760E58(v40, &v6[v15], &qword_27FDAFC10);
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25F8249B0;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 0;
  *(v18 + 32) = 0;
  *(v18 + 33) = *v51;
  *(v18 + 36) = *&v51[3];
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  v19 = *v50;
  *(v18 + 52) = *&v50[3];
  *(v18 + 49) = v19;
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  v20 = *v49;
  *(v18 + 68) = *&v49[3];
  *(v18 + 65) = v20;
  *(v18 + 72) = 0;
  *(v18 + 80) = 1;
  v21 = *v48;
  *(v18 + 84) = *&v48[3];
  *(v18 + 81) = v21;
  *(v18 + 88) = 0x400199999999999ALL;
  *(v18 + 96) = 0;
  v22 = *v47;
  *(v18 + 100) = *&v47[3];
  *(v18 + 97) = v22;
  *(v18 + 104) = 0;
  v23 = sub_25F792BC4(&unk_2871C4CF8);
  v45 = 1;
  LOBYTE(v15) = v46;
  v44 = 1;
  v43 = 1;
  LOBYTE(v59[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  LOBYTE(v56[0]) = 1;
  LOBYTE(v55[0]) = 1;
  v24 = v6;
  v25 = v41;
  sub_25F7750B8(v24, v41);
  v26 = v42;
  v27 = v25 + *(v42 + 20);
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  *(v27 + 48) = 1;
  *(v27 + 49) = v56[0];
  *(v27 + 52) = *(v56 + 3);
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0;
  *(v27 + 105) = v15;
  *(v27 + 106) = *&v55[5];
  *(v27 + 110) = v55[7];
  *(v27 + 112) = xmmword_25F824920;
  *(v27 + 128) = 1;
  *(v27 + 132) = *(&v55[1] + 1);
  *(v27 + 129) = *v55;
  *(v27 + 136) = 0;
  *(v27 + 144) = 0;
  *(v27 + 152) = 256;
  *(v27 + 154) = *&v53[7];
  *(v27 + 158) = v54;
  result = vdupq_n_s64(0x4059000000000000uLL);
  *(v27 + 160) = result;
  *(v27 + 176) = 0x3F40624DD2F1A9FCLL;
  *(v27 + 184) = v18;
  *(v27 + 192) = 0;
  *(v27 + 193) = *v53;
  *(v27 + 196) = *&v53[3];
  *(v27 + 200) = 0x400199999999999ALL;
  *(v27 + 208) = 1;
  *(v27 + 210) = *&v51[7];
  *(v27 + 214) = v52;
  __asm { FMOV            V1.2D, #1.0 }

  *(v27 + 216) = _Q1;
  *(v27 + 232) = v23;
  *(v27 + 240) = 16843008;
  v34 = v25 + *(v26 + 24);
  *v34 = 16843009;
  *(v34 + 8) = 0;
  *(v34 + 16) = 257;
  *(v34 + 22) = v62;
  *(v34 + 18) = v61;
  *(v34 + 24) = 0;
  *(v34 + 32) = 1;
  *(v34 + 33) = 0;
  *(v34 + 38) = v60;
  *(v34 + 34) = v59[3];
  *(v34 + 40) = 0;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  v35 = v59[0];
  *(v34 + 60) = *(v59 + 3);
  *(v34 + 57) = v35;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  v36 = v58[0];
  *(v34 + 76) = *(v58 + 3);
  *(v34 + 73) = v36;
  *(v34 + 80) = 0;
  *(v34 + 88) = 1;
  v37 = v57[0];
  *(v34 + 92) = *(v57 + 3);
  *(v34 + 89) = v37;
  *(v34 + 96) = result;
  *(v34 + 112) = 0x4059000000000000;
  *(v34 + 120) = 16843008;
  return result;
}

uint64_t sub_25F793DF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAF890 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_27FDBF9E0;
  v13[8] = xmmword_27FDBF9F0;
  v13[9] = unk_27FDBFA00;
  v2 = unk_27FDBFA00;
  v13[10] = xmmword_27FDBFA10;
  v3 = xmmword_27FDBF9B0;
  v4 = xmmword_27FDBF9A0;
  v13[4] = xmmword_27FDBF9B0;
  v13[5] = xmmword_27FDBF9C0;
  v5 = xmmword_27FDBF9C0;
  v6 = unk_27FDBF9D0;
  v13[6] = unk_27FDBF9D0;
  v13[7] = xmmword_27FDBF9E0;
  v13[0] = xmmword_27FDBF970;
  v13[1] = *&qword_27FDBF980;
  v8 = xmmword_27FDBF970;
  v7 = *&qword_27FDBF980;
  v9 = xmmword_27FDBF990;
  v13[2] = xmmword_27FDBF990;
  v13[3] = xmmword_27FDBF9A0;
  *(a1 + 128) = xmmword_27FDBF9F0;
  *(a1 + 144) = v2;
  *(a1 + 160) = xmmword_27FDBFA10;
  *(a1 + 64) = v3;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  *(a1 + 112) = v1;
  *a1 = v8;
  *(a1 + 16) = v7;
  v14 = qword_27FDBFA20;
  *(a1 + 176) = qword_27FDBFA20;
  *(a1 + 32) = v9;
  *(a1 + 48) = v4;
  return sub_25F775180(v13, v12);
}

uint64_t sub_25F793EE4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAF898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDBFA28);

  return sub_25F77511C(v3, a1);
}

uint64_t sub_25F793F9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FDAF8A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Preset.Info(0);
  v3 = __swift_project_value_buffer(v2, qword_27FDBFA58);

  return sub_25F777C88(v3, a1);
}

uint64_t sub_25F794028(uint64_t *a1)
{
  v6 = MEMORY[0x277D84FA0];
  v2 = sub_25F79B690(a1, &qword_27FDAF840, &xmmword_27FDBF6D0, &xmmword_27FDBF6D0 + 1, sub_25F774750);
  sub_25F795694(v2);
  v3 = sub_25F79DC60(a1, &qword_27FDAF848, qword_27FDBF788, &qword_27FDAF840, &qword_27FDBF6E0, &qword_27FDBF6E8, &xmmword_27FDBF6F0, &xmmword_27FDBF6F0 + 1, &xmmword_27FDBF700, &xmmword_27FDBF700 + 1, (&xmmword_27FDBF740 + 8), &byte_27FDBF768, (&xmmword_27FDBF750 + 8), &xmmword_27FDBF710, &xmmword_27FDBF710 + 1, &dbl_27FDBF720, &xmmword_27FDBF740, &unk_2871C4B80, &qword_27FDBF738, &qword_27FDBF780, sub_25F774884, sub_25F774750);
  sub_25F795694(v3);
  v4 = sub_25F79D4C4(a1);
  sub_25F795694(v4);
  return v6;
}

uint64_t static ProDisplayHardware.validateCustomPreset(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x277D84FA0];
  v6 = sub_25F794E28(a1, a2, a3);
  sub_25F795694(v6);
  v7 = sub_25F7957B0(a1, a2, a3);
  sub_25F795694(v7);
  v8 = sub_25F7978AC(a1, a2, a3);
  sub_25F795694(v8);
  return v10;
}

uint64_t sub_25F7941DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[3];
      v23 = v7[2];
      v24 = v8;
      v25 = v7[4];
      v9 = v7[1];
      v22[0] = *v7;
      v22[1] = v9;
      v19 = v23;
      v20 = v8;
      v21 = v25;
      v17 = v22[0];
      v18 = v9;
      sub_25F777DAC(v22, &v12);
      result = v6(&v17);
      if (v3)
      {
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v12 = v17;
        v13 = v18;
        return sub_25F777E08(&v12);
      }

      if (result)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = sub_25F777E08(&v12);
      v7 += 5;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v10 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v10;
    *(a3 + 64) = v21;
    v11 = v18;
    *a3 = v17;
    *(a3 + 16) = v11;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = 0;
    *(a3 + 72) = 1;
  }

  return result;
}

uint64_t sub_25F794304(uint64_t *a1)
{
  v6 = MEMORY[0x277D84FA0];
  v2 = sub_25F79B690(a1, &qword_27FDAF890, &xmmword_27FDBF970, &xmmword_27FDBF970 + 1, sub_25F793718);
  sub_25F795694(v2);
  v3 = sub_25F79DC60(a1, &qword_27FDAF898, qword_27FDBFA28, &qword_27FDAF890, &qword_27FDBF980, &qword_27FDBF988, &xmmword_27FDBF990, &xmmword_27FDBF990 + 1, &xmmword_27FDBF9A0, &xmmword_27FDBF9A0 + 1, (&xmmword_27FDBF9E0 + 8), &byte_27FDBFA08, (&xmmword_27FDBF9F0 + 8), &xmmword_27FDBF9B0, &xmmword_27FDBF9B0 + 1, &dbl_27FDBF9C0, &xmmword_27FDBF9E0, &unk_2871C4D20, &qword_27FDBF9D8, &qword_27FDBFA20, sub_25F79384C, sub_25F793718);
  sub_25F795694(v3);
  v4 = sub_25F79F324(a1);
  sub_25F795694(v4);
  return v6;
}

uint64_t CustomPresetValidationError.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2) | (*(v1 + 3) << 32);
  v5 = v1[8];
  v6 = *(v1 + 9) | ((*(v1 + 13) | (v1[15] << 16)) << 32);
  v7 = *(v1 + 2);
  v8 = v1[24];
  v10 = *(v1 + 4);
  v9 = *(v1 + 5);
  v11 = *(v1 + 6);
  v12 = v1[56];
  v13 = (v4 << 16) | (v3 << 8) | v2;
  v14 = v6 << 8;
  v15 = (*(v1 + 25) << 8) | ((*(v1 + 29) | (v1[31] << 16)) << 40);
  switch(v12 >> 2)
  {
    case 1u:
      v17 = v1[8];
      v18 = 2;
      goto LABEL_32;
    case 2u:
      MEMORY[0x25F8E7E80](4);
      MEMORY[0x25F8E7E80](v2);
      v34 = v3;
      return MEMORY[0x25F8E7E80](v34);
    case 3u:
      v38 = *(v1 + 2);
      v39 = v14 | v5;
      v40 = v15 | v8;
      v42 = v13;
      v43 = v1[56];
      MEMORY[0x25F8E7E80](8);
      sub_25F799898(a1, v42);
      if (v43)
      {
        if (v39 | v38 | v10 | v9 | v40 | v11)
        {
          v44 = v10 | v38 | v9 | v11 | v40;
          if (v39 == 1 && v44 == 0)
          {
            v34 = 1;
          }

          else if (v39 != 2 || v44)
          {
            if (v39 != 3 || v44)
            {
              if (v39 != 4 || v44)
              {
                v34 = 5;
              }

              else
              {
                v34 = 4;
              }
            }

            else
            {
              v34 = 3;
            }
          }

          else
          {
            v34 = 2;
          }
        }

        else
        {
          v34 = 0;
        }

        return MEMORY[0x25F8E7E80](v34);
      }

      else
      {
        MEMORY[0x25F8E7E80](6);
        return Primaries.hash(into:)();
      }

    case 4u:
      MEMORY[0x25F8E7E80](10);
      sub_25F7996C4(a1, (v4 << 16) | (v3 << 8) | v2);
      return WhitePoint.hash(into:)();
    case 5u:
      *&v25 = (v4 << 16) | (v3 << 8) | v2;
      *&v26 = v14 | v5;
      v27 = 12;
      goto LABEL_71;
    case 6u:
      *&v25 = (v4 << 16) | (v3 << 8) | v2;
      *&v26 = v14 | v5;
      v27 = 13;
      goto LABEL_71;
    case 7u:
      *&v25 = (v4 << 16) | (v3 << 8) | v2;
      *&v26 = v14 | v5;
      v27 = 15;
      goto LABEL_71;
    case 8u:
      *&v25 = (v4 << 16) | (v3 << 8) | v2;
      *&v26 = v14 | v5;
      v27 = 17;
      goto LABEL_71;
    case 9u:
      v20 = v14 | v5;
      v21 = 19;
      goto LABEL_61;
    case 0xAu:
      v22 = 21;
      goto LABEL_69;
    case 0xBu:
      v28 = 22;
      goto LABEL_15;
    case 0xCu:
      v28 = 25;
LABEL_15:
      v31 = a1;
      MEMORY[0x25F8E7E80](v28);
      v32 = v31;
      v33 = (v4 << 16) | (v3 << 8) | v2;
      goto LABEL_56;
    case 0xDu:
      v23 = v1[8];
      v24 = 26;
      goto LABEL_55;
    case 0xEu:
      v23 = v1[8];
      v24 = 27;
LABEL_55:
      v57 = a1;
      MEMORY[0x25F8E7E80](v24);
      sub_25F79946C(v57, (v4 << 16) | (v3 << 8) | v2);
      v33 = v14 | v23;
      v32 = v57;
LABEL_56:

      return sub_25F79946C(v32, v33);
    case 0xFu:
      v35 = v1[8];
      v37 = v13;
      MEMORY[0x25F8E7E80](29);
      sub_25F79946C(a1, v37);
      v34 = v35;
      return MEMORY[0x25F8E7E80](v34);
    case 0x10u:
      v22 = 30;
LABEL_69:
      MEMORY[0x25F8E7E80](v22);
      v34 = v2;
      return MEMORY[0x25F8E7E80](v34);
    case 0x11u:
      *&v25 = (v4 << 16) | (v3 << 8) | v2;
      *&v26 = v14 | v5;
      v27 = 31;
      goto LABEL_71;
    case 0x12u:
      v20 = v14 | v5;
      v21 = 32;
      goto LABEL_61;
    case 0x13u:
      v19 = 33;
      goto LABEL_89;
    case 0x14u:
      v46 = 34;
      goto LABEL_39;
    case 0x15u:
      *&v50 = v14 | v5;
      v51 = *(v1 + 2);
      *&v52 = v15 | v8;
      MEMORY[0x25F8E7E80](35);
      if (COERCE_DOUBLE((v4 << 16) | (v3 << 8) | v2) == 0.0)
      {
        v53 = 0.0;
      }

      else
      {
        *&v53 = (v4 << 16) | (v3 << 8) | v2;
      }

      MEMORY[0x25F8E7EA0](*&v53);
      if (v50 == 0.0)
      {
        v54 = 0.0;
      }

      else
      {
        v54 = v50;
      }

      MEMORY[0x25F8E7EA0](*&v54);
      if (v51 == 0.0)
      {
        v55 = 0.0;
      }

      else
      {
        v55 = v51;
      }

      MEMORY[0x25F8E7EA0](*&v55);
      if (v52 == 0.0)
      {
        v56 = 0.0;
      }

      else
      {
        v56 = v52;
      }

      return MEMORY[0x25F8E7EA0](*&v56);
    case 0x16u:
      v64 = v1[8];
      v65 = 37;
      goto LABEL_91;
    case 0x17u:
      v64 = v1[8];
      v65 = 38;
      goto LABEL_91;
    case 0x18u:
      MEMORY[0x25F8E7E80](39);
      MEMORY[0x25F8E7E80](v2 & 1);
      v34 = v3 & 1;
      return MEMORY[0x25F8E7E80](v34);
    case 0x19u:
      v19 = 40;
      goto LABEL_89;
    case 0x1Au:
      v64 = v1[8];
      v65 = 41;
LABEL_91:
      v66 = a1;
      v67 = v13;
      MEMORY[0x25F8E7E80](v65);
      sub_25F79946C(v66, v67);
      v34 = v64 & 1;
      return MEMORY[0x25F8E7E80](v34);
    case 0x1Bu:
      v19 = 42;
      goto LABEL_89;
    case 0x1Cu:
      v19 = 43;
      goto LABEL_89;
    case 0x1Du:
      v19 = 44;
      goto LABEL_89;
    case 0x1Eu:
      v19 = 45;
      goto LABEL_89;
    case 0x1Fu:
      v46 = 47;
LABEL_39:
      v49 = a1;
      MEMORY[0x25F8E7E80](v46);
      sub_25F799598(v49, (v4 << 16) | (v3 << 8) | v2);
      return sub_25F822DEC();
    case 0x20u:
      v19 = 49;
      goto LABEL_89;
    case 0x21u:
      *&v25 = (v4 << 16) | (v3 << 8) | v2;
      *&v26 = v14 | v5;
      v27 = 51;
LABEL_71:
      v61 = *(v1 + 2);
      MEMORY[0x25F8E7E80](v27);
      if (v25 == 0.0)
      {
        v62 = 0.0;
      }

      else
      {
        v62 = v25;
      }

      MEMORY[0x25F8E7EA0](*&v62);
      if (v26 == 0.0)
      {
        v63 = 0.0;
      }

      else
      {
        v63 = v26;
      }

      MEMORY[0x25F8E7EA0](*&v63);
      if ((v61 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v60 = v61;
      }

      else
      {
        v60 = 0;
      }

      return MEMORY[0x25F8E7EA0](v60);
    case 0x22u:
      v20 = v14 | v5;
      v21 = 54;
      goto LABEL_61;
    case 0x23u:
      v20 = v14 | v5;
      v21 = 55;
      goto LABEL_61;
    case 0x24u:
      v20 = v14 | v5;
      v21 = 56;
LABEL_61:
      v58 = (v4 << 16) | (v3 << 8) | v2;
      MEMORY[0x25F8E7E80](v21);
      if (v4 & 0x7FF000000000 | v58 & 0xFFFFFFFFFFFFFLL)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      MEMORY[0x25F8E7EA0](v59);
      if (v6 & 0x7FF00000000000 | v20 & 0xFFFFFFFFFFFFFLL)
      {
        v60 = v20;
      }

      else
      {
        v60 = 0;
      }

      return MEMORY[0x25F8E7EA0](v60);
    case 0x25u:
      v19 = 57;
      goto LABEL_89;
    case 0x26u:
      v19 = 58;
      goto LABEL_89;
    case 0x27u:
      v19 = 59;
      goto LABEL_89;
    case 0x28u:
      v19 = 60;
LABEL_89:
      MEMORY[0x25F8E7E80](v19);
      sub_25F822DEC();
      return sub_25F822DEC();
    case 0x29u:
      v47 = v15 | v8;
      v48 = v14 | v5;
      if (v12 != 164 || v13 | v7 | v48 | v10 | v9 | v47 | v11)
      {
        v68 = v48 | v7 | v10 | v9 | v47 | v11;
        if (v12 == 164 && (v13 == 1 ? (v69 = v68 == 0) : (v69 = 0), v69))
        {
          v34 = 3;
        }

        else if (v12 == 164 && v13 == 2 && !v68)
        {
          v34 = 5;
        }

        else if (v12 == 164 && v13 == 3 && !v68)
        {
          v34 = 6;
        }

        else if (v12 == 164 && v13 == 4 && !v68)
        {
          v34 = 7;
        }

        else if (v12 == 164 && v13 == 5 && !v68)
        {
          v34 = 9;
        }

        else if (v12 == 164 && v13 == 6 && !v68)
        {
          v34 = 11;
        }

        else if (v12 == 164 && v13 == 7 && !v68)
        {
          v34 = 14;
        }

        else if (v12 == 164 && v13 == 8 && !v68)
        {
          v34 = 16;
        }

        else if (v12 == 164 && v13 == 9 && !v68)
        {
          v34 = 18;
        }

        else if (v12 == 164 && v13 == 10 && !v68)
        {
          v34 = 20;
        }

        else if (v12 == 164 && v13 == 11 && !v68)
        {
          v34 = 23;
        }

        else if (v12 == 164 && v13 == 12 && !v68)
        {
          v34 = 24;
        }

        else if (v12 == 164 && v13 == 13 && !v68)
        {
          v34 = 28;
        }

        else if (v12 == 164 && v13 == 14 && !v68)
        {
          v34 = 36;
        }

        else if (v12 == 164 && v13 == 15 && !v68)
        {
          v34 = 46;
        }

        else if (v12 == 164 && v13 == 16 && !v68)
        {
          v34 = 48;
        }

        else if (v12 == 164 && v13 == 17 && !v68)
        {
          v34 = 50;
        }

        else if (v12 == 164 && v13 == 18 && !v68)
        {
          v34 = 52;
        }

        else
        {
          v34 = 53;
        }
      }

      else
      {
        v34 = 1;
      }

      return MEMORY[0x25F8E7E80](v34);
    default:
      v17 = v1[8];
      v18 = 0;
LABEL_32:
      MEMORY[0x25F8E7E80](v18);
      MEMORY[0x25F8E7E80]((v4 << 16) | (v3 << 8) | v2);
      v34 = v14 | v17;
      return MEMORY[0x25F8E7E80](v34);
  }
}

uint64_t CustomPresetValidationError.hashValue.getter()
{
  sub_25F822DCC();
  CustomPresetValidationError.hash(into:)(v1);
  return sub_25F822E0C();
}

uint64_t sub_25F794DA4()
{
  sub_25F822DCC();
  CustomPresetValidationError.hash(into:)(v1);
  return sub_25F822E0C();
}

uint64_t sub_25F794DE8()
{
  sub_25F822DCC();
  CustomPresetValidationError.hash(into:)(v1);
  return sub_25F822E0C();
}

uint64_t sub_25F794E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v52 - v5;
  v6 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x277D84FA0];
  sub_25F79AE1C(a1, v8);
  v9 = sub_25F8223DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_25F8223BC();
  v53 = sub_25F82237C();
  v13 = v12;
  v14 = *(v10 + 8);
  result = v14(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v59 = v9;
  v60 = v6;
  v56 = v8;
  v58 = v14;
  if (v13 >> 60 != 15)
  {
    v17 = v13 >> 62;
    v52 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v18 = 0;
        goto LABEL_13;
      }

      v20 = *(v53 + 16);
      v19 = *(v53 + 24);
      v18 = v19 - v20;
      if (!__OFSUB__(v19, v20))
      {
LABEL_13:
        v21 = v57;
        v22 = *(v57 + 40);
        v23 = v55;
        v22(&v73, v55, v57);
        v85[8] = v81;
        v85[9] = v82;
        v85[10] = v83;
        v86 = v84;
        v85[4] = v77;
        v85[5] = v78;
        v85[6] = v79;
        v85[7] = v80;
        v85[0] = v73;
        v85[1] = v74;
        v85[2] = v75;
        v85[3] = v76;
        sub_25F79AB7C(v85);
        if (*&v85[0] >= v18)
        {
          v25 = sub_25F79AEE0(v53, v13);
          v8 = v56;
          goto LABEL_27;
        }

        v22(&v61, v23, v21);
        v81 = v69;
        v82 = v70;
        v83 = v71;
        v84 = v72;
        v77 = v65;
        v78 = v66;
        v79 = v67;
        v80 = v68;
        v73 = v61;
        v74 = v62;
        v75 = v63;
        v76 = v64;
        result = sub_25F79AB7C(&v73);
        if (v52 > 1)
        {
          v8 = v56;
          if (v52 != 2)
          {
            v24 = 0;
            goto LABEL_25;
          }

          v27 = *(v53 + 16);
          v26 = *(v53 + 24);
          v28 = __OFSUB__(v26, v27);
          v24 = v26 - v27;
          if (!v28)
          {
            goto LABEL_25;
          }

          __break(1u);
        }

        else
        {
          v8 = v56;
          if (!v52)
          {
            v24 = BYTE6(v13);
LABEL_25:
            *&v93 = v73;
            *(&v93 + 1) = v24;
            v94 = 0;
            sub_25F7BA74C(v91, &v93);
            sub_25F79AEE0(v53, v13);
            *v90 = v91[0];
            *&v90[16] = v91[1];
            *&v90[32] = *v92;
            *&v90[41] = *&v92[9];
            v16 = v90;
            goto LABEL_26;
          }
        }

        LODWORD(v24) = HIDWORD(v53) - v53;
        if (__OFSUB__(HIDWORD(v53), v53))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v24 = v24;
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = BYTE6(v13);
      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v53), v53))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v18 = HIDWORD(v53) - v53;
    goto LABEL_13;
  }

  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  *&v64 = 0;
  BYTE8(v64) = -92;
  sub_25F7BA74C(v85, &v61);
  v16 = v85;
LABEL_26:
  v25 = sub_25F79AB4C(v16);
LABEL_27:
  MEMORY[0x28223BE20](v25);
  sub_25F8223BC();
  v29 = sub_25F82237C();
  v31 = v30;
  result = v58(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v59);
  if (v31 >> 60 == 15)
  {
    *&v85[0] = 1;
    *(v85 + 8) = 0u;
    *(&v85[1] + 8) = 0u;
    *(&v85[2] + 8) = 0u;
    BYTE8(v85[3]) = -92;
    sub_25F7BA74C(&v73, v85);
    v32 = &v73;
LABEL_52:
    sub_25F79AB4C(v32);
    goto LABEL_53;
  }

  v33 = v31 >> 62;
  if ((v31 >> 62) <= 1)
  {
    v34 = v57;
    if (!v33)
    {
      v35 = BYTE6(v31);
      goto LABEL_39;
    }

LABEL_36:
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      v35 = HIDWORD(v29) - v29;
      goto LABEL_39;
    }

    goto LABEL_63;
  }

  v34 = v57;
  if (v33 == 2)
  {
    v37 = *(v29 + 16);
    v36 = *(v29 + 24);
    v35 = v36 - v37;
    if (__OFSUB__(v36, v37))
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
    v35 = 0;
  }

LABEL_39:
  v38 = *(v34 + 40);
  v39 = v55;
  v38(v85, v55, v34);
  sub_25F79AB7C(v85);
  if (*(&v85[0] + 1) < v35)
  {
    v38(&v73, v39, v34);
    result = sub_25F79AB7C(&v73);
    if (v33 > 1)
    {
      v8 = v56;
      if (v33 != 2)
      {
        v40 = 0;
        goto LABEL_51;
      }

      v42 = *(v29 + 16);
      v41 = *(v29 + 24);
      v28 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (!v28)
      {
        goto LABEL_51;
      }

      __break(1u);
    }

    else
    {
      v8 = v56;
      if (!v33)
      {
        v40 = BYTE6(v31);
LABEL_51:
        *&v91[0] = *(&v73 + 1);
        *(&v91[0] + 1) = v40;
        v92[24] = 4;
        sub_25F7BA74C(v90, v91);
        sub_25F79AEE0(v29, v31);
        *v89 = *v90;
        *&v89[16] = *&v90[16];
        *&v89[32] = *&v90[32];
        *&v89[41] = *&v90[41];
        v32 = v89;
        goto LABEL_52;
      }
    }

    LODWORD(v40) = HIDWORD(v29) - v29;
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      v40 = v40;
      goto LABEL_51;
    }

LABEL_65:
    __break(1u);
    return result;
  }

  sub_25F79AEE0(v29, v31);
  v8 = v56;
LABEL_53:
  v43 = v60;
  v44 = v8[*(v60 + 28)];
  if (v44 != 1)
  {
    *&v73 = (v44 << 8) | 1;
    BYTE8(v76) = 8;
    sub_25F7BA74C(v90, &v73);
    sub_25F79AB4C(v90);
  }

  v45 = *(v43 + 32);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v52 - v47;
  sub_25F76183C(&v8[v45], &v52 - v47, &qword_27FDAFC20);
  v49 = sub_25F82210C();
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {
    sub_25F760F44(v48, &qword_27FDAFC20);
    *v90 = 2;
    memset(&v90[8], 0, 48);
    v90[56] = -92;
    sub_25F7BA74C(v89, v90);
    sub_25F79AB4C(v89);
  }

  else
  {
    sub_25F760F44(v48, &qword_27FDAFC20);
  }

  v50 = v54;
  sub_25F76183C(&v8[*(v43 + 36)], v54, &qword_27FDAFC10);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
  {
    sub_25F760F44(v50, &qword_27FDAFC10);
  }

  else
  {
    sub_25F760F44(v50, &qword_27FDAFC10);
    *v89 = 3;
    memset(&v89[8], 0, 48);
    v89[56] = -92;
    sub_25F7BA74C(v87, v89);
    sub_25F79AB4C(v87);
  }

  sub_25F79AE80(v8, type metadata accessor for Preset.Info);
  return v88;
}

uint64_t sub_25F795694(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_25F79AB4C(v16))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v1 + 48) + ((v8 << 12) | (v9 << 6)));
    v12 = v10[1];
    v11 = v10[2];
    v13 = *v10;
    *&v19[9] = *(v10 + 41);
    v18[1] = v12;
    *v19 = v11;
    v18[0] = v13;
    sub_25F79AB14(v18, v16);
    sub_25F7BA74C(v14, v18);
    v16[0] = v14[0];
    v16[1] = v14[1];
    v17[0] = v15[0];
    *(v17 + 9) = *(v15 + 9);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7957B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v349 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for Preset(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v150[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v181 = MEMORY[0x277D84FA0];
  v12 = (a1 + *(v9 + 28));
  v13 = v12[1];
  v342[2] = v12[2];
  v14 = *(v12 + 48);
  v343 = v14;
  v16 = v12[1];
  v154 = *v12;
  *(&v15 + 1) = *(&v154 + 1);
  v155 = v13;
  v342[1] = v16;
  v342[0] = v154;
  v17 = *(v12 + 4);
  v152 = *(v12 + 5);
  v153 = v17;
  v18 = *(v12 + 105);
  v19 = *(v12 + 15);
  v175 = *(v12 + 14);
  v177 = v19;
  LODWORD(v174) = *(v12 + 128);
  LODWORD(v176) = *(v12 + 153);
  v20 = *(v12 + 20);
  v21 = *(v12 + 21);
  v22 = *(v12 + 22);
  v23 = *(v12 + 23);
  v173 = *(v12 + 192);
  v24 = *(v12 + 25);
  v159 = *(v12 + 208);
  v160 = *(v12 + 209);
  *&v15 = *(v12 + 27);
  v164 = v15;
  *&v15 = *(v12 + 28);
  v163 = v15;
  v25 = *(v12 + 29);
  v166 = *(v12 + 240);
  v167 = v25;
  v169 = *(v12 + 241);
  v171 = *(v12 + 242);
  v172 = *(v12 + 243);
  v26 = (*(a3 + 48))(a2, a3);
  v27 = &v11[*(v9 + 28)];
  v28 = v27[22];
  v29 = v27[25];
  v158 = *(v27 + 208);
  v156 = *(v27 + 209);
  v26.n128_f64[0] = v27[27];
  v162 = v26;
  v26.n128_f64[0] = v27[28];
  v161 = v26;
  v30 = *(v27 + 29);
  v168 = *(v27 + 241);
  v170 = *(v27 + 242);
  v151 = *(v27 + 243);
  v165 = v30;

  sub_25F79AE80(v11, type metadata accessor for Preset);
  v179 = a3;
  v180 = v4;
  if (v343)
  {
    LODWORD(v157) = v18;
    v31 = v23;
    v32 = a2;
    goto LABEL_5;
  }

  v178 = *(a3 + 40);
  v178(&v240, a2, a3);
  v258 = v247;
  v259 = v248;
  v260 = v249;
  v261 = v250;
  v254 = v243;
  v255 = v244;
  v256 = v245;
  v257 = v246;
  v251 = v240;
  v252 = v241;
  v253[0] = v242[0];
  v253[1] = v242[1];
  v33 = v241;

  sub_25F79AB7C(&v251);
  v34 = Set<>.containsCustom()(v33);

  v32 = a2;
  if (v34)
  {
    LODWORD(v157) = v18;
    v31 = v23;
LABEL_5:
    v35 = *(a3 + 40);
    v35(&v240, v32, a3);
    v258 = v247;
    v259 = v248;
    v260 = v249;
    v261 = v250;
    v254 = v243;
    v255 = v244;
    v256 = v245;
    v257 = v246;
    v251 = v240;
    v252 = v241;
    v253[0] = v242[0];
    v253[1] = v242[1];
    v36 = v32;
    v37 = v241;

    sub_25F79AB7C(&v251);
    v38 = sub_25F754CAC(v342, v37);

    v178 = v35;
    if ((v38 & 1) == 0)
    {
      v35(&v230, v36, a3);
      v247 = v237[0];
      v248 = v237[1];
      v249 = v238;
      v250 = v239;
      v243 = v233;
      v244 = v234;
      v245 = v235;
      v246 = v236;
      v240 = v230;
      v241 = v231;
      v242[0] = v232[0];
      v242[1] = v232[1];
      v39 = v231;

      sub_25F79AB7C(&v240);
      LOBYTE(v197) = v14;
      v345 = v154;
      v346 = v155;
      v344 = v39;
      *&v347 = v153;
      *(&v347 + 1) = v152;
      v348 = v14 | 0xC;
      sub_25F7BA74C(&v208, &v344);
      v219 = v208;
      v220 = v209;
      v221[0] = v210[0];
      *(v221 + 9) = *(v210 + 9);
      sub_25F79AB4C(&v219);
    }

    v32 = v36;
    v23 = v31;
    if ((v157 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v344 = 4;
  v345 = 0u;
  v346 = 0u;
  v347 = 0u;
  v348 = -92;
  sub_25F7BA74C(&v230, &v344);
  v240 = v230;
  v241 = v231;
  v242[0] = v232[0];
  *(v242 + 9) = *(v232 + 9);
  sub_25F79AB4C(&v240);
  if ((v18 & 1) == 0)
  {
LABEL_8:
    v337 = 5;
    v338 = 0u;
    v339 = 0u;
    v340 = 0u;
    v341 = -92;
    sub_25F7BA74C(&v240, &v337);
    v251 = v240;
    v252 = v241;
    v253[0] = v242[0];
    *(v253 + 9) = *(v242 + 9);
    sub_25F79AB4C(&v251);
  }

LABEL_9:
  v41 = v178;
  v40 = v179;
  v42 = (v179 + 40);
  if (v174)
  {
    v43 = v23;
    v178(&v240, v32, v179);
    v258 = v247;
    v259 = v248;
    v260 = v249;
    v261 = v250;
    v254 = v243;
    v255 = v244;
    v256 = v245;
    v257 = v246;
    v251 = v240;
    v252 = v241;
    v253[0] = v242[0];
    v253[1] = v242[1];
    v44 = *(&v241 + 1);

    sub_25F79AB7C(&v251);
    v45 = v175;
    v46 = sub_25F755234(v175, v177, 1u, v44);

    if (v46)
    {
      v47 = &v208;
    }

    else
    {
      (v41)(&v230, v32, v40);
      v247 = v237[0];
      v248 = v237[1];
      v249 = v238;
      v250 = v239;
      v243 = v233;
      v244 = v234;
      v245 = v235;
      v246 = v236;
      v240 = v230;
      v241 = v231;
      v242[0] = v232[0];
      v242[1] = v232[1];
      v56 = *(&v231 + 1);

      sub_25F79AB7C(&v240);
      LOBYTE(v197) = 1;
      *v333 = v56;
      *&v333[8] = v45;
      *&v333[16] = v177;
      LOBYTE(v334) = 1;
      v336 = 16;
      sub_25F7BA74C(&v208, v333);
      v219 = v208;
      v220 = v209;
      v221[0] = v210[0];
      v47 = &v208;
      *(v221 + 9) = *(v210 + 9);
      sub_25F79AB4C(&v219);
    }

    v23 = v43;
  }

  else
  {
    v178(&v240, v32, v179);
    v258 = v247;
    v259 = v248;
    v260 = v249;
    v261 = v250;
    v254 = v243;
    v255 = v244;
    v256 = v245;
    v257 = v246;
    v251 = v240;
    v252 = v241;
    v253[0] = v242[0];
    v253[1] = v242[1];
    v48 = *(&v241 + 1);

    sub_25F79AB7C(&v251);
    v49 = Set<>.containsCustom()(v48);

    if (v49)
    {
      v174 = v23;
      (v41)(&v230, v32, v40);
      v247 = v237[0];
      v248 = v237[1];
      v249 = v238;
      v250 = v239;
      v243 = v233;
      v244 = v234;
      v245 = v235;
      v246 = v236;
      v240 = v230;
      v241 = v231;
      v242[0] = v232[0];
      v242[1] = v232[1];
      sub_25F79AB7C(&v240);
      v50 = v242[0];
      v51 = v175;
      *&v219 = v175;
      *(&v219 + 1) = v177;
      LOBYTE(v220) = 0;
      WhitePoint.chroma.getter(&v208);
      v47 = &v208;
      if (*&v50 > *&v208 || *&v208 > *(&v50 + 1))
      {
        (v41)(&v219, v32, v40);
        v237[0] = v226;
        v237[1] = v227;
        v238 = v228;
        v239 = v229;
        v233 = v222;
        v234 = v223;
        v235 = v224;
        v236 = v225;
        v230 = v219;
        v231 = v220;
        v232[0] = v221[0];
        v232[1] = v221[1];
        sub_25F79AB7C(&v230);
        v53 = *(&v232[0] + 1);
        v52 = *&v232[0];
        *&v187 = v175;
        *(&v187 + 1) = v177;
        LOBYTE(v188) = 0;
        WhitePoint.chroma.getter(&v183);
        *v333 = __PAIR128__(v53, v52);
        v51 = v175;
        *&v333[16] = v183;
        v336 = 20;
        sub_25F7BA74C(&v197, v333);
        v208 = v197;
        v209 = v198;
        v210[0] = v199[0];
        *(v210 + 9) = *(v199 + 9);
        sub_25F79AB4C(&v208);
      }

      (v41)(&v219, v32, v40);
      v237[0] = v226;
      v237[1] = v227;
      v238 = v228;
      v239 = v229;
      v233 = v222;
      v234 = v223;
      v235 = v224;
      v236 = v225;
      v230 = v219;
      v231 = v220;
      v232[0] = v221[0];
      v232[1] = v221[1];
      sub_25F79AB7C(&v230);
      v54 = v232[1];
      *&v208 = v51;
      *(&v208 + 1) = v177;
      LOBYTE(v209) = 0;
      WhitePoint.chroma.getter(&v197);
      if (*&v54 > *(&v197 + 1) || *(&v197 + 1) > *(&v54 + 1))
      {
        (v41)(&v208, v32, v40);
        v226 = v215;
        v227 = v216;
        v228 = v217;
        v229 = v218;
        v222 = v211;
        v223 = v212;
        v224 = v213;
        v225 = v214;
        v219 = v208;
        v220 = v209;
        v221[0] = v210[0];
        v221[1] = v210[1];
        sub_25F79AB7C(&v219);
        v55 = v221[1];
        *&v183 = v51;
        *(&v183 + 1) = v177;
        LOBYTE(v184) = 0;
        WhitePoint.chroma.getter(&v325);
        v330 = v55;
        v331 = v326;
        v332 = 24;
        sub_25F7BA74C(&v187, &v330);
        v197 = v187;
        v198 = v188;
        v199[0] = v189[0];
        *(v199 + 9) = *(v189 + 9);
        sub_25F79AB4C(&v197);
      }

      v23 = v174;
    }

    else
    {
      *v333 = 6;
      *&v333[8] = 0u;
      v334 = 0u;
      v335 = 0u;
      v336 = -92;
      sub_25F7BA74C(&v230, v333);
      v240 = v230;
      v241 = v231;
      v242[0] = v232[0];
      *(v242 + 9) = *(v232 + 9);
      sub_25F79AB4C(&v240);
      v47 = &v208;
    }
  }

  v57 = &v315;
  if ((v176 & 1) == 0)
  {
    v325 = 7;
    v326 = 0u;
    v327 = 0u;
    v328 = 0u;
    v329 = -92;
    sub_25F7BA74C(&v240, &v325);
    v251 = v240;
    v252 = v241;
    v253[0] = v242[0];
    *(v253 + 9) = *(v242 + 9);
    sub_25F79AB4C(&v251);
  }

  v58 = v180;
  (v41)(&v251, v32, v40);
  v247 = v258;
  v248 = v259;
  v249 = v260;
  v250 = v261;
  v243 = v254;
  v244 = v255;
  v245 = v256;
  v246 = v257;
  v240 = v251;
  v241 = v252;
  v242[0] = v253[0];
  v242[1] = v253[1];
  sub_25F79AB7C(&v240);
  v59 = *(&v246 + 1);
  (v41)(&v230, v32, v40);
  v258 = v237[0];
  v259 = v237[1];
  v260 = v238;
  v261 = v239;
  v254 = v233;
  v255 = v234;
  v256 = v235;
  v257 = v236;
  v251 = v230;
  v252 = v231;
  v253[0] = v232[0];
  v253[1] = v232[1];
  sub_25F79AB7C(&v251);
  if (v59 > v258)
  {
    goto LABEL_183;
  }

  if (v21 < v59 || v21 > v258)
  {
    *&v322 = v59;
    *(&v322 + 1) = v258;
    v323 = v21;
    v324 = 32;
    sub_25F7BA74C(&v219, &v322);
    v230 = v219;
    v231 = v220;
    v232[0] = v221[0];
    *(v232 + 9) = *(v221 + 9);
    sub_25F79AB4C(&v230);
  }

  v58 = v180;
  (v41)(&v219, v32, v40);
  v237[0] = v226;
  v237[1] = v227;
  v238 = v228;
  v239 = v229;
  v233 = v222;
  v234 = v223;
  v235 = v224;
  v236 = v225;
  v230 = v219;
  v231 = v220;
  v232[0] = v221[0];
  v232[1] = v221[1];
  sub_25F79AB7C(&v230);
  v60 = BYTE8(v237[1]);
  if (BYTE8(v237[1]))
  {
    if (v20 != v21)
    {
      *v320 = 8;
      memset(&v320[8], 0, 48);
      v61 = -92;
LABEL_38:
      v321 = v61;
      v58 = &v181;
      sub_25F7BA74C(&v208, v320);
      v219 = v208;
      v220 = v209;
      v221[0] = v210[0];
      *(v221 + 9) = *(v210 + 9);
      sub_25F79AB4C(&v219);
    }
  }

  else
  {
    v62 = vcvtq_f64_s64(*(v237 + 8));
    if (v62.f64[0] > v62.f64[1])
    {
      __break(1u);
      goto LABEL_189;
    }

    if (v20 > v62.f64[1] || v20 < v62.f64[0])
    {
      *v320 = v62;
      *&v320[16] = v20;
      v61 = 28;
      goto LABEL_38;
    }
  }

  if (v20 < v21)
  {
    v315 = 9;
    v316 = 0u;
    v317 = 0u;
    v318 = 0u;
    v319 = -92;
    v58 = &v181;
    sub_25F7BA74C(&v208, &v315);
    v219 = v208;
    v220 = v209;
    v221[0] = v210[0];
    *(v221 + 9) = *(v210 + 9);
    sub_25F79AB4C(&v219);
  }

  v177 = v40 + 40;
  if (v22 != v28)
  {
    *&v313 = v28;
    *(&v313 + 1) = v22;
    v314 = 36;
    v58 = &v181;
    sub_25F7BA74C(&v208, &v313);
    v219 = v208;
    v220 = v209;
    v221[0] = v210[0];
    *(v221 + 9) = *(v210 + 9);
    sub_25F79AB4C(&v219);
  }

  v42 = (v23 + 16);
  v63 = *(v23 + 16);
  if (v63)
  {
    v57 = 0;
    v64 = (v23 + 48);
    while (1)
    {
      if (v57 >= *v42)
      {
        goto LABEL_181;
      }

      v65 = *(v64 - 16);
      v66 = *v64;
      if (v65 <= 2)
      {
        break;
      }

      if (*(v64 - 16) > 4u)
      {
        if (v65 != 5 || ((v66 | v64[48]) & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else if (v65 == 3)
      {
        goto LABEL_53;
      }

LABEL_45:
      v41 = v60 & 1 | 0x28u;
      v308 = *(v64 - 16);
      v312 = v60 & 1 | 0x28;
      v58 = &v181;
      sub_25F7BA74C(&v208, &v308);
      v219 = v208;
      v220 = v209;
      v221[0] = v210[0];
      *(v221 + 9) = *(v210 + 9);
      sub_25F79AB4C(&v219);
      v60 = v41;
LABEL_46:
      v57 = (v57 + 1);
      v64 += 80;
      if (v63 == v57)
      {
        goto LABEL_61;
      }
    }

    if (!*(v64 - 16))
    {
      if (!v64[48])
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_53:
    if ((v66 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v308 = 10;
  v309 = 0u;
  v310 = 0u;
  v311 = 0u;
  v312 = -92;
  sub_25F7BA74C(&v208, &v308);
  v219 = v208;
  v220 = v209;
  v221[0] = v210[0];
  *(v221 + 9) = *(v210 + 9);
  sub_25F79AB4C(&v219);
LABEL_61:
  v176 = v32;

  v57 = 0;
  v68 = sub_25F79ABD0(v67);

  v69 = sub_25F798FCC(v68);

  if (v69[2])
  {
    *&v306[0] = sub_25F812D3C(v69);
    v307 = 44;
    sub_25F7BA74C(&v208, v306);
    v219 = v208;
    v220 = v209;
    v221[0] = v210[0];
    *(v221 + 9) = *(v210 + 9);
    sub_25F79AB4C(&v219);
  }

  else
  {
  }

  v157 = v63;
  v70 = *v42;
  v71 = MEMORY[0x277D84F90];
  if (*v42)
  {
    *&v219 = MEMORY[0x277D84F90];
    sub_25F817D28(0, v70, 0);
    v71 = v219;
    v72 = (v23 + 32);
    v73 = *(v219 + 16);
    do
    {
      v75 = *v72;
      v72 += 80;
      v74 = v75;
      *&v219 = v71;
      v76 = *(v71 + 24);
      if (v73 >= v76 >> 1)
      {
        sub_25F817D28((v76 > 1), v73 + 1, 1);
        v71 = v219;
      }

      *(v71 + 16) = v73 + 1;
      *(v71 + v73++ + 32) = v74;
      --v70;
    }

    while (v70);
  }

  v41 = sub_25F817F80(v71);

  v77 = *(v41 + 32);
  v78 = v77 & 0x3F;
  v58 = ((1 << v77) + 63) >> 6;
  v47 = 8 * v58;

  if (v78 > 0xD)
  {
    goto LABEL_184;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v79);
    bzero(&v150[-((v47 + 15) & 0x3FFFFFFFFFFFFFF0)], v47);
    v80 = 0;
    v81 = 0;
    v82 = 1 << *(v41 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & *(v41 + 56);
    v85 = (v82 + 63) >> 6;
    while (v84)
    {
      v86 = __clz(__rbit64(v84));
      v84 &= v84 - 1;
      v87 = v86 | (v81 << 6);
LABEL_80:
      if (*(*(v41 + 48) + v87) - 2 >= 4)
      {
        *&v150[((v87 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0)] |= 1 << v87;
        v90 = __OFADD__(v80++, 1);
        if (v90)
        {
          __break(1u);
LABEL_84:
          v91 = sub_25F82025C(&v150[-((v47 + 15) & 0x3FFFFFFFFFFFFFF0)], v58, v80, v41);
LABEL_85:
          v92 = *(v41 + 32);
          v93 = v92 & 0x3F;
          v58 = ((1 << v92) + 63) >> 6;
          v47 = 8 * v58;

          v175 = v91;
          if (v93 > 0xD)
          {

            if (swift_stdlib_isStackAllocationSafe())
            {

              goto LABEL_86;
            }

            v149 = swift_slowAlloc();
            v105 = sub_25F79921C(v149, v58, v41, sub_25F798138);

            MEMORY[0x25F8E88D0](v149, -1, -1);
          }

          else
          {
LABEL_86:
            MEMORY[0x28223BE20](v94);
            bzero(&v150[-((v47 + 15) & 0x3FFFFFFFFFFFFFF0)], v47);
            v95 = 0;
            v96 = 0;
            v97 = 1 << *(v41 + 32);
            v98 = -1;
            if (v97 < 64)
            {
              v98 = ~(-1 << v97);
            }

            v99 = v98 & *(v41 + 56);
            v100 = (v97 + 63) >> 6;
            while (1)
            {
              if (v99)
              {
                v101 = __clz(__rbit64(v99));
                v99 &= v99 - 1;
                v102 = v101 | (v96 << 6);
              }

              else
              {
                v103 = v96;
                do
                {
                  v96 = v103 + 1;
                  if (__OFADD__(v103, 1))
                  {
                    goto LABEL_180;
                  }

                  if (v96 >= v100)
                  {
                    goto LABEL_100;
                  }

                  v104 = *(v41 + 56 + 8 * v96);
                  ++v103;
                }

                while (!v104);
                v99 = (v104 - 1) & v104;
                v102 = __clz(__rbit64(v104)) | (v96 << 6);
              }

              if (*(*(v41 + 48) + v102) - 2 <= 3)
              {
                *&v150[((v102 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0)] |= 1 << v102;
                v90 = __OFADD__(v95++, 1);
                if (v90)
                {
                  break;
                }
              }
            }

            __break(1u);
LABEL_100:
            v105 = sub_25F82025C(&v150[-((v47 + 15) & 0x3FFFFFFFFFFFFFF0)], v58, v95, v41);
            v91 = v175;
          }

          v106 = v179;
          if (*(v91 + 16) != 1)
          {
            v301 = 11;
            v302 = 0u;
            v303 = 0u;
            v304 = 0u;
            v305 = -92;
            sub_25F7BA74C(&v208, &v301);
            v219 = v208;
            v220 = v209;
            v221[0] = v210[0];
            *(v221 + 9) = *(v210 + 9);
            sub_25F79AB4C(&v219);
          }

          v107 = *(v105 + 16);
          if (v20 == v21)
          {
            if (v107)
            {
              v296 = v105;
              v300 = 48;

              goto LABEL_108;
            }
          }

          else if (!v107)
          {
            v296 = 12;
            v297 = 0u;
            v298 = 0u;
            v299 = 0u;
            v300 = -92;
LABEL_108:
            sub_25F7BA74C(&v208, &v296);
            v219 = v208;
            v220 = v209;
            v221[0] = v210[0];
            *(v221 + 9) = *(v210 + 9);
            sub_25F79AB4C(&v219);
          }

          v178(&v208, v176, v106);
          v226 = v215;
          v227 = v216;
          v228 = v217;
          v229 = v218;
          v222 = v211;
          v223 = v212;
          v224 = v213;
          v225 = v214;
          v219 = v208;
          v220 = v209;
          v221[0] = v210[0];
          v221[1] = v210[1];
          v108 = v211;

          sub_25F79AB7C(&v219);
          v109 = *(v108 + 16);
          v110 = *(v91 + 16);
          v174 = v105;
          if (v109 <= v110 >> 3)
          {
            *&v197 = v91;

            sub_25F7985BC(v108);

            v112 = v197;
          }

          else
          {

            v111 = sub_25F7986C0(v108, v91);

            v112 = v111;
          }

          v113 = *(v112 + 16);

          v114 = v176;
          v116 = v178;
          v115 = v179;
          if (v113)
          {
            v178(&v197, v176, v179);
            v215 = v204;
            v216 = v205;
            v217 = v206;
            v218 = v207;
            v212 = v201;
            v213 = v202;
            v214 = v203;
            v208 = v197;
            v209 = v198;
            v210[0] = v199[0];
            v210[1] = v199[1];
            v211 = v200;
            v117 = v200;

            sub_25F79AB7C(&v208);
            *&v294 = v117;
            *(&v294 + 1) = v175;
            v295 = 52;

            sub_25F7BA74C(&v183, &v294);
            v187 = v183;
            v188 = v184;
            v189[0] = v185[0];
            *(v189 + 9) = *(v185 + 9);
            sub_25F79AB4C(&v187);
          }

          v116(&v197, v114, v115);
          v215 = v204;
          v216 = v205;
          v217 = v206;
          v218 = v207;
          v212 = v201;
          v213 = v202;
          v214 = v203;
          v208 = v197;
          v209 = v198;
          v210[0] = v199[0];
          v210[1] = v199[1];
          v211 = v200;
          v118 = v200;

          sub_25F79AB7C(&v208);
          if (*(v118 + 16) <= *(v174 + 16) >> 3)
          {
            *&v187 = v174;
            sub_25F7985BC(v118);

            v57 = v187;
          }

          else
          {
            v57 = sub_25F7986C0(v118, v174);
          }

          v119 = v173;
          v47 = v283;
          if (v57[2])
          {
            v178(&v187, v176, v179);
            v204 = v193;
            v205 = v194;
            v206 = v195;
            v207 = v196;
            v200 = v190[0];
            v201 = v190[1];
            v202 = v191;
            v203 = v192;
            v197 = v187;
            v198 = v188;
            v199[0] = v189[0];
            v199[1] = v189[1];
            v120 = *&v190[0];

            sub_25F79AB7C(&v197);
            *&v292 = v120;
            *(&v292 + 1) = v57;
            v293 = 56;
            sub_25F7BA74C(v290, &v292);
            v183 = v290[0];
            v184 = v290[1];
            v185[0] = v291[0];
            *(v185 + 9) = *(v291 + 9);
            sub_25F79AB4C(&v183);
          }

          else
          {
          }

          if (sub_25F761900(v119, v41))
          {
          }

          else
          {
            *&v290[0] = v41;
            *(&v290[0] + 1) = v119;
            BYTE8(v291[1]) = 60;
            sub_25F7BA74C(&v187, v290);
            v197 = v187;
            v198 = v188;
            v199[0] = v189[0];
            *(v199 + 9) = *(v189 + 9);
            sub_25F79AB4C(&v197);
          }

          if ((v119 - 2) <= 3u)
          {
            *&v288[0] = v119;
            v289 = 64;
            sub_25F7BA74C(&v187, v288);
            v197 = v187;
            v198 = v188;
            v199[0] = v189[0];
            *(v199 + 9) = *(v189 + 9);
            sub_25F79AB4C(&v197);
          }

          v58 = v175;
          sub_25F757C58(v175, &v197);

          v41 = v176;
          if (!v197)
          {
            v121 = -1;
            v122 = v42;
            do
            {
              if (v121 - v157 == -1)
              {
                goto LABEL_131;
              }

              if (++v121 >= *v42)
              {
                goto LABEL_182;
              }

              v123 = (v122 + 10);
              v124 = *(v122 + 16);
              v122 += 10;
            }

            while (v124);
            if (*v123)
            {
LABEL_131:
              if (v24 == v29)
              {
                goto LABEL_139;
              }

              *&v285 = v29;
              *(&v285 + 1) = v24;
              v287 = 72;
              sub_25F7BA74C(&v187, &v285);
              v197 = v187;
              v198 = v188;
              v199[0] = v189[0];
              *(v199 + 9) = *(v189 + 9);
              v125 = &v197;
              goto LABEL_138;
            }

            v126 = *(v123 - 1);
            v127 = v178;
            v178(&v187, v176, v179);
            v204 = v193;
            v205 = v194;
            v206 = v195;
            v207 = v196;
            v200 = v190[0];
            v201 = v190[1];
            v202 = v191;
            v203 = v192;
            v197 = v187;
            v198 = v188;
            v199[0] = v189[0];
            v199[1] = v189[1];
            sub_25F79AB7C(&v197);
            v128.n128_u64[0] = *(&v200 + 1);
            if (*(&v200 + 1) > v126 || (v128.n128_u64[0] = v201, *&v201 < v126))
            {
              v127(&v183, v41, v179, v128);
              v193 = v185[6];
              v194 = v185[7];
              v195 = v185[8];
              v196 = v186;
              v190[0] = v185[2];
              v190[1] = v185[3];
              v191 = v185[4];
              v192 = v185[5];
              v187 = v183;
              v188 = v184;
              v189[0] = v185[0];
              v189[1] = v185[1];
              sub_25F79AB7C(&v187);
              v285 = *(v190 + 8);
              v286 = v126;
              v287 = 68;
              sub_25F7BA74C(v281, &v285);
              v283[0] = v281[0];
              v283[1] = v281[1];
              v284[0] = v282[0];
              *(v284 + 9) = *(v282 + 9);
              sub_25F79AB4C(v283);
            }

            if (v24 != v126)
            {
              *v283 = v126;
              *(v283 + 1) = v24;
              BYTE8(v284[1]) = 72;
              sub_25F7BA74C(&v183, v283);
              v187 = v183;
              v188 = v184;
              v189[0] = v185[0];
              *(v189 + 9) = *(v185 + 9);
              v125 = &v187;
LABEL_138:
              sub_25F79AB4C(v125);
            }
          }

LABEL_139:
          if (v159 != v158)
          {
            v129 = 256;
            if (!v159)
            {
              v129 = 0;
            }

            *&v281[0] = v129 | v158;
            BYTE8(v282[1]) = 76;
            sub_25F7BA74C(&v197, v281);
            sub_25F79AB4C(&v197);
          }

          v130 = v178;
          v178(&v197, v41, v179);
          sub_25F79AB7C(&v197);
          v131 = v167;
          if (v203 == 1)
          {
            v132 = sub_25F793550(&unk_2871C4E90);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
            v133 = swift_allocObject();
            *(v133 + 16) = xmmword_25F8249B0;
            *(v133 + 32) = v156;
            v132 = sub_25F793550(v133);
            swift_setDeallocating();
            swift_deallocClassInstance();
          }

          v134 = v160;
          if (sub_25F755428(v160, v132))
          {
          }

          else
          {
            *&v279 = v132;
            *(&v279 + 1) = v134;
            v280 = 80;
            sub_25F7BA74C(&v187, &v279);
            sub_25F79AB4C(&v187);
          }

          *&v135 = v164;
          *&v136 = v162.n128_u64[0];
          if (*&v164 != v162.n128_f64[0] || *&v163 != v161.n128_f64[0])
          {
            *(&v136 + 1) = v161.n128_u64[0];
            *(&v135 + 1) = v163;
            v277[1] = v135;
            v277[0] = v136;
            v278 = 84;
            sub_25F7BA74C(&v187, v277);
            sub_25F79AB4C(&v187);
          }

          if (*(v131 + 16) != 1)
          {
            v272 = 14;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = -92;
            sub_25F7BA74C(&v187, &v272);
            sub_25F79AB4C(&v187);
          }

          v137 = v179;
          v130(&v187, v41, v179);
          v138 = *(&v191 + 1);

          sub_25F79AB7C(&v187);
          if (v138)
          {
          }

          else
          {
            v138 = v165;
          }

          sub_25F757CD4(v131, &v183);
          if (v183 == 2 || (v139 = v183 & 1, (sub_25F761904(v139, v138) & 1) != 0))
          {
          }

          else
          {
            *&v270 = v138;
            *(&v270 + 1) = v139;
            v271 = 88;
            sub_25F7BA74C(&v183, &v270);
            sub_25F79AB4C(&v183);
          }

          sub_25F757CD4(v131, &v183);
          if (v183 == 2)
          {
            v140 = v166;
            goto LABEL_164;
          }

          v140 = v166;
          if (v166 != (v183 & 1))
          {
LABEL_164:
            *&v268 = v131;
            *(&v268 + 1) = v140;
            v269 = 92;

            sub_25F7BA74C(&v183, &v268);
            sub_25F79AB4C(&v183);
          }

          if (v169 != v168)
          {
            v141 = 256;
            if (!v169)
            {
              v141 = 0;
            }

            *&v266[0] = v141 | v168;
            v267 = 96;
            sub_25F7BA74C(&v183, v266);
            sub_25F79AB4C(&v183);
          }

          if (v171 != v170)
          {
            v142 = 256;
            if (!v171)
            {
              v142 = 0;
            }

            *&v264[0] = v142 | v170;
            v265 = 100;
            sub_25F7BA74C(&v183, v264);
            sub_25F79AB4C(&v183);
          }

          v130(&v183, v41, v137);
          v143 = v186;

          sub_25F79AB7C(&v183);
          if (!v143)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0418);
            v144 = swift_allocObject();
            *(v144 + 16) = xmmword_25F8249B0;
            *(v144 + 32) = v151;
            v143 = sub_25F793408(v144);
            swift_setDeallocating();
            swift_deallocClassInstance();
          }

          v145 = v172;
          if (sub_25F761904(v172, v143))
          {
          }

          else
          {
            *&v262 = v143;
            *(&v262 + 1) = v145;
            v263 = 104;
            sub_25F7BA74C(v182, &v262);
            sub_25F79AB4C(v182);
          }

          return v181;
        }
      }
    }

    v88 = v81;
    while (1)
    {
      v81 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v81 >= v85)
      {
        goto LABEL_84;
      }

      v89 = *(v41 + 56 + 8 * v81);
      ++v88;
      if (v89)
      {
        v84 = (v89 - 1) & v89;
        v87 = __clz(__rbit64(v89)) | (v81 << 6);
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

LABEL_189:
  v147 = swift_slowAlloc();

  v148 = sub_25F79921C(v147, v58, v41, sub_25F798124);
  if (!v57)
  {
    v91 = v148;
    swift_bridgeObjectRelease_n();
    MEMORY[0x25F8E88D0](v147, -1, -1);
    goto LABEL_85;
  }

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x25F8E88D0](v147, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_25F7978AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Preset(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x277D84FA0];
  v11 = *(v8 + 24);
  v64 = a1;
  v12 = (a1 + v11);
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = *(v12 + 2);
  v16 = *(v12 + 16);
  v50 = *(v12 + 3);
  v51 = v16;
  v52 = *(v12 + 17);
  v53 = *(v12 + 32);
  v55 = *(v12 + 33);
  v17 = v12[6];
  v56 = *(v12 + 5);
  v49 = v17;
  LODWORD(v17) = *(v12 + 72);
  v57 = *(v12 + 56);
  v58 = LODWORD(v17);
  v62 = *(v12 + 88);
  v19 = v12[12];
  v18 = v12[13];
  v20 = v12[14];
  v66 = *(v12 + 120);
  v68 = *(v12 + 121);
  v70 = *(v12 + 122);
  v72 = *(v12 + 123);
  v21 = *(a3 + 48);
  v59 = a2;
  v60 = v3;
  v61 = a3;
  v21(a2, a3);
  v63 = v7;
  v22 = &v10[*(v7 + 24)];
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v48 = v22[17];
  v54 = v22[33];
  v65 = v22[120];
  v67 = v22[121];
  v69 = v22[122];
  v71 = v22[123];
  sub_25F79AE80(v10, type metadata accessor for Preset);
  if (v13 == v23)
  {
    if (v14 == v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = 256;
    if (!v13)
    {
      v34 = 0;
    }

    *&v136[0] = v34 | v23;
    v137 = 108;
    sub_25F7BA74C(v80, v136);
    v88 = v80[0];
    v89 = v80[1];
    v90[0] = v80[2];
    *(v90 + 9) = *(&v80[2] + 9);
    sub_25F79AB4C(&v88);
    if (v14 == v24)
    {
LABEL_3:
      if (v15 == v25)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  v35 = 256;
  if (!v14)
  {
    v35 = 0;
  }

  *&v134[0] = v35 | v24;
  v135 = 112;
  sub_25F7BA74C(v80, v134);
  v88 = v80[0];
  v89 = v80[1];
  v90[0] = v80[2];
  *(v90 + 9) = *(&v80[2] + 9);
  sub_25F79AB4C(&v88);
  if (v15 != v25)
  {
LABEL_4:
    v27 = 256;
    if (!v15)
    {
      v27 = 0;
    }

    *&v132[0] = v27 | v25;
    v133 = 116;
    sub_25F7BA74C(v80, v132);
    v88 = v80[0];
    v89 = v80[1];
    v90[0] = v80[2];
    *(v90 + 9) = *(&v80[2] + 9);
    sub_25F79AB4C(&v88);
  }

LABEL_7:
  v28 = v52;
  if (v50 != v26)
  {
    v29 = 256;
    if (!v50)
    {
      v29 = 0;
    }

    *&v130[0] = v29 | v26;
    v131 = 120;
    sub_25F7BA74C(v80, v130);
    v88 = v80[0];
    v89 = v80[1];
    v90[0] = v80[2];
    *(v90 + 9) = *(&v80[2] + 9);
    sub_25F79AB4C(&v88);
  }

  v30 = v61;
  v31 = v59;
  if ((v51 & 1) == 0)
  {
    v125 = 15;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = -92;
    sub_25F7BA74C(v80, &v125);
    v88 = v80[0];
    v89 = v80[1];
    v90[0] = v80[2];
    *(v90 + 9) = *(&v80[2] + 9);
    sub_25F79AB4C(&v88);
  }

  v32 = *(v30 + 40);
  v32(v80, v31, v30);
  v90[6] = v84;
  v90[7] = v85;
  v91 = v86;
  v92 = v87;
  v90[2] = v80[4];
  v90[3] = v81;
  v90[4] = v82;
  v90[5] = v83;
  v88 = v80[0];
  v89 = v80[1];
  v90[0] = v80[2];
  v90[1] = v80[3];
  sub_25F79AB7C(&v88);
  if (BYTE9(v91) == 1)
  {
    v33 = sub_25F793550(&unk_2871C4EB8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_25F8249B0;
    *(v36 + 32) = v48;
    v33 = sub_25F793550(v36);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  if (sub_25F755428(v28, v33))
  {
  }

  else
  {
    *&v123 = v33;
    *(&v123 + 1) = v28;
    v124 = 124;
    sub_25F7BA74C(v80, &v123);
    sub_25F79AB4C(v80);
  }

  if ((v53 & 1) == 0)
  {
    v118 = 16;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = -92;
    sub_25F7BA74C(v80, &v118);
    sub_25F79AB4C(v80);
  }

  if (v55 != v54)
  {
    v37 = 256;
    if (!v55)
    {
      v37 = 0;
    }

    *&v116[0] = v37 | v54;
    v117 = 0x80;
    sub_25F7BA74C(v80, v116);
    sub_25F79AB4C(v80);
  }

  if (v56)
  {
    v111 = 17;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = -92;
    sub_25F7BA74C(v80, &v111);
    sub_25F79AB4C(v80);
  }

  if ((v57 & 1) == 0)
  {
    v38 = v49;
    v39 = v49;
    v32(v80, v31, v30);
    sub_25F79AB7C(v80);
    v40.n128_u64[0] = *(&v81 + 1);
    if (*(&v81 + 1) > v39 || (v40.n128_u64[0] = v82, *&v82 < v39))
    {
      (v32)(&v73, v31, v30, v40);
      sub_25F79AB7C(&v73);
      v108 = v78;
      v109 = v38;
      v110 = -124;
      sub_25F7BA74C(v106, &v108);
      sub_25F79AB4C(v106);
    }
  }

  if ((v58 & 1) == 0)
  {
    *&v80[0] = 18;
    *(v80 + 8) = 0u;
    *(&v80[1] + 8) = 0u;
    *(&v80[2] + 8) = 0u;
    BYTE8(v80[3]) = -92;
    sub_25F7BA74C(&v73, v80);
    sub_25F79AB4C(&v73);
  }

  if ((v62 & 1) == 0)
  {
    v73 = 19;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = -92;
    sub_25F7BA74C(v106, &v73);
    sub_25F79AB4C(v106);
  }

  v41 = *(v64 + *(v63 + 20) + 168);
  if (v20 == v41)
  {
    if (v19 == v41)
    {
      goto LABEL_44;
    }

LABEL_63:
    *v104 = v41;
    *(v104 + 1) = v19;
    v105 = -116;
    sub_25F7BA74C(v102, v104);
    sub_25F79AB4C(v102);
    if (v18 == v41)
    {
      goto LABEL_45;
    }

    goto LABEL_64;
  }

  *&v106[0] = *(v64 + *(v63 + 20) + 168);
  *(v106 + 1) = v20;
  v107 = -120;
  sub_25F7BA74C(v104, v106);
  sub_25F79AB4C(v104);
  if (v19 != v41)
  {
    goto LABEL_63;
  }

LABEL_44:
  if (v18 == v41)
  {
    goto LABEL_45;
  }

LABEL_64:
  *v102 = v41;
  *(v102 + 1) = v18;
  v103 = -112;
  sub_25F7BA74C(v100, v102);
  sub_25F79AB4C(v100);
LABEL_45:
  if (v66 != v65)
  {
    v42 = 256;
    if (!v66)
    {
      v42 = 0;
    }

    *&v100[0] = v42 | v65;
    v101 = -108;
    sub_25F7BA74C(v98, v100);
    sub_25F79AB4C(v98);
  }

  if (v68 != v67)
  {
    v43 = 256;
    if (!v68)
    {
      v43 = 0;
    }

    *&v98[0] = v43 | v67;
    v99 = -104;
    sub_25F7BA74C(v96, v98);
    sub_25F79AB4C(v96);
  }

  if (v70 != v69)
  {
    v44 = 256;
    if (!v70)
    {
      v44 = 0;
    }

    *&v96[0] = v44 | v69;
    v97 = -100;
    sub_25F7BA74C(v94, v96);
    sub_25F79AB4C(v94);
  }

  if (v72 != v71)
  {
    v45 = 256;
    if (!v72)
    {
      v45 = 0;
    }

    *&v94[0] = v45 | v71;
    v95 = -96;
    sub_25F7BA74C(v79, v94);
    sub_25F79AB4C(v79);
  }

  return v93;
}

uint64_t sub_25F79814C(uint64_t *a1)
{
  v6 = MEMORY[0x277D84FA0];
  v2 = sub_25F79B690(a1, &qword_27FDAF950, &xmmword_27FDC02A0, &xmmword_27FDC02A0 + 1, sub_25F7DAEB8);
  sub_25F795694(v2);
  v3 = sub_25F79DC60(a1, &qword_27FDAF958, qword_27FDC0358, &qword_27FDAF950, &qword_27FDC02B0, &qword_27FDC02B8, &xmmword_27FDC02C0, &xmmword_27FDC02C0 + 1, &xmmword_27FDC02D0, &xmmword_27FDC02D0 + 1, (&xmmword_27FDC0310 + 8), &byte_27FDC0338, (&xmmword_27FDC0320 + 8), &xmmword_27FDC02E0, &xmmword_27FDC02E0 + 1, &dbl_27FDC02F0, &xmmword_27FDC0310, &unk_2871C4500, &qword_27FDC0308, &qword_27FDC0350, sub_25F7DAFFC, sub_25F7DAEB8);
  sub_25F795694(v3);
  v4 = sub_25F79AEF4(a1);
  sub_25F795694(v4);
  return v6;
}

uint64_t sub_25F798268(uint64_t *a1)
{
  v6 = MEMORY[0x277D84FA0];
  v2 = sub_25F79B690(a1, &qword_27FDAFA90, &xmmword_27FDC1270, &xmmword_27FDC1270 + 1, sub_25F7F1658);
  sub_25F795694(v2);
  v3 = sub_25F79DC60(a1, &qword_27FDAFA98, qword_27FDC1328, &qword_27FDAFA90, &qword_27FDC1280, &qword_27FDC1288, &xmmword_27FDC1290, &xmmword_27FDC1290 + 1, &xmmword_27FDC12A0, &xmmword_27FDC12A0 + 1, (&xmmword_27FDC12E0 + 8), &byte_27FDC1308, &qword_27FDC12F8, &xmmword_27FDC12B0, &xmmword_27FDC12B0 + 1, &dbl_27FDC12C0, &xmmword_27FDC12E0, &unk_2871C4840, &qword_27FDC12D8, &qword_27FDC1320, sub_25F7F1784, sub_25F7F1658);
  sub_25F795694(v3);
  v4 = sub_25F79C58C(a1);
  sub_25F795694(v4);
  return v6;
}

uint64_t sub_25F798384(uint64_t *a1)
{
  v6 = MEMORY[0x277D84FA0];
  v2 = sub_25F79B690(a1, &qword_27FDAFAC8, &xmmword_27FDC1370, &xmmword_27FDC1370 + 1, sub_25F8017F4);
  sub_25F795694(v2);
  v3 = sub_25F79DC60(a1, &qword_27FDAFAD0, qword_27FDC1428, &qword_27FDAFAC8, &qword_27FDC1380, &qword_27FDC1388, &xmmword_27FDC1390, &xmmword_27FDC1390 + 1, &xmmword_27FDC13A0, &xmmword_27FDC13A0 + 1, (&xmmword_27FDC13E0 + 8), &byte_27FDC1408, (&xmmword_27FDC13F0 + 8), &xmmword_27FDC13B0, &xmmword_27FDC13B0 + 1, &dbl_27FDC13C0, &xmmword_27FDC13E0, &unk_2871C49E0, &qword_27FDC13D8, &qword_27FDC1420, sub_25F801928, sub_25F8017F4);
  sub_25F795694(v3);
  v4 = sub_25F79CD28(a1);
  sub_25F795694(v4);
  return v6;
}

uint64_t sub_25F7984A0(uint64_t *a1)
{
  v6 = MEMORY[0x277D84FA0];
  v2 = sub_25F79B690(a1, &qword_27FDAFB48, &xmmword_27FDC17A0, &xmmword_27FDC17A0 + 1, sub_25F81B7D0);
  sub_25F795694(v2);
  v3 = sub_25F79DC60(a1, &qword_27FDAFB50, qword_27FDC1858, &qword_27FDAFB48, &qword_27FDC17B0, &qword_27FDC17B8, &xmmword_27FDC17C0, &xmmword_27FDC17C0 + 1, &xmmword_27FDC17D0, &xmmword_27FDC17D0 + 1, (&xmmword_27FDC1810 + 8), &byte_27FDC1838, (&xmmword_27FDC1820 + 8), &xmmword_27FDC17E0, &xmmword_27FDC17E0 + 1, &dbl_27FDC17F0, &xmmword_27FDC1810, &unk_2871C46A0, &qword_27FDC1808, &qword_27FDC1850, sub_25F81B904, sub_25F81B7D0);
  sub_25F795694(v3);
  v4 = sub_25F79BDF0(a1);
  sub_25F795694(v4);
  return v6;
}

uint64_t sub_25F7985BC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_25F798B40(*(*(v2 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_25F7986C0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v47 << 6)));
        sub_25F822DCC();
        MEMORY[0x25F8E7E80](v5);
        v19 = sub_25F822E0C();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v5);
      v40 = sub_25F798C50(v39, v14, v6, v2, v49);

      MEMORY[0x25F8E88D0](v39, -1, -1);
      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    MEMORY[0x28223BE20](v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v29 | (v47 << 6)));
      sub_25F822DCC();
      v2 = &v48;
      MEMORY[0x25F8E7E80](v5);
      v30 = sub_25F822E0C();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_25F82025C(v14, v42, v44, v6);
LABEL_43:
    sub_25F76E0F0();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

unint64_t sub_25F798B40@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  sub_25F822DCC();
  MEMORY[0x25F8E7E80](a1);
  result = sub_25F822E0C();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F7BC8F4();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + v8);
    result = sub_25F798E24(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 7;
  }

  return result;
}

uint64_t sub_25F798C50(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_25F822DCC();
    MEMORY[0x25F8E7E80](v17);
    result = sub_25F822E0C();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_25F82025C(v7, a2, v9, a3);
}

unint64_t sub_25F798E24(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25F8228AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_25F822DCC();
        MEMORY[0x25F8E7E80](v10);
        v11 = sub_25F822E0C() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_25F798FCC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_25F79912C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_25F7992AC(v8, v4, v2);
  result = MEMORY[0x25F8E88D0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_25F79912C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_25F78AD08(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_25F78AD08(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_25F79921C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_25F799324(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_25F7992AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_25F79912C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_25F799324(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_25F82025C(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F79946C(uint64_t a1, uint64_t a2)
{
  result = sub_25F822E0C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_25F822DCC();
    MEMORY[0x25F8E7E80](v12);
    result = sub_25F822E0C();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x25F8E7E80](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F799598(uint64_t a1, uint64_t a2)
{
  result = sub_25F822E0C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return MEMORY[0x25F8E7E80](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      do
      {
LABEL_9:
        v8 &= v8 - 1;
        sub_25F822DCC();
        sub_25F822DEC();
        result = sub_25F822E0C();
        v4 ^= result;
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7996C4(uint64_t a1, uint64_t a2)
{
  result = sub_25F822E0C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_17:
    v13 = *(a2 + 48) + 24 * (__clz(__rbit64(v8)) | (v5 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    sub_25F822DCC();
    if (v16 == 1)
    {
      if (v14 > 2)
      {
        if (v14 ^ 3 | v15)
        {
          if (v14 ^ 4 | v15)
          {
            v17 = 5;
          }

          else
          {
            v17 = 4;
          }
        }

        else
        {
          v17 = 3;
        }
      }

      else if (v14 | v15)
      {
        if (v14 ^ 1 | v15)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        v17 = 0;
      }

      MEMORY[0x25F8E7E80](v17);
    }

    else
    {
      MEMORY[0x25F8E7E80](6);
      if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }

      MEMORY[0x25F8E7EA0](v10);
      if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x25F8E7EA0](v11);
    }

    v8 &= v8 - 1;
    result = sub_25F822E0C();
    v4 ^= result;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      return MEMORY[0x25F8E7E80](v4);
    }

    v8 = *(a2 + 56 + 8 * v12);
    ++v5;
    if (v8)
    {
      v5 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F799898(uint64_t a1, uint64_t a2)
{
  result = sub_25F822E0C();
  v29 = a2;
  v4 = 0;
  v5 = 0;
  v8 = *(a2 + 56);
  v7 = a2 + 56;
  v6 = v8;
  v9 = 1 << *(v7 - 24);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v31 = v4;
LABEL_13:
    v15 = *(v29 + 48) + 56 * (__clz(__rbit64(v11)) | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    v20 = *(v15 + 32);
    v30 = *(v15 + 40);
    v21 = *(v15 + 48);
    sub_25F822DCC();
    if (v21 != 1)
    {
      MEMORY[0x25F8E7E80](6);
      Primaries.hash(into:)();
LABEL_5:
      v13 = v31;
      goto LABEL_6;
    }

    if (!(v19 | v17 | v16 | v18 | v20 | v30))
    {
      MEMORY[0x25F8E7E80](0);
      goto LABEL_5;
    }

    v22 = v16;
    v23 = v19 | v17 | v18 | v20 | v30;
    v24 = v16 == 1 && v23 == 0;
    v13 = v31;
    if (v24)
    {
      v28 = 1;
    }

    else if (v22 == 2 && v23 == 0)
    {
      v28 = 2;
    }

    else if (v22 == 3 && v23 == 0)
    {
      v28 = 3;
    }

    else if (v22 == 4 && v23 == 0)
    {
      v28 = 4;
    }

    else
    {
      v28 = 5;
    }

    MEMORY[0x25F8E7E80](v28);
LABEL_6:
    v11 &= v11 - 1;
    result = sub_25F822E0C();
    v4 = result ^ v13;
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      return MEMORY[0x25F8E7E80](v4);
    }

    v11 = *(v7 + 8 * v14);
    ++v5;
    if (v11)
    {
      v31 = v4;
      v5 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s17ProDisplayLibrary27CustomPresetValidationErrorO2eeoiySbAC_ACtFZ_0(__int128 *a1, _OWORD *a2)
{
  v2 = a1[1];
  v69 = *a1;
  v70 = v2;
  *v71 = a1[2];
  v3 = *v71;
  v4 = a2[1];
  *v72 = *a2;
  *&v72[16] = v4;
  v6 = *a2;
  v5 = a2[1];
  *&v72[32] = a2[2];
  *&v72[41] = *(a2 + 41);
  *&v71[9] = *(a1 + 41);
  v73[0] = v69;
  v73[1] = v2;
  v74[0] = v3;
  *(v74 + 9) = *&v71[9];
  v74[2] = v6;
  v74[3] = v5;
  v75[0] = a2[2];
  *(v75 + 9) = *(a2 + 41);
  v7 = *(&v69 + 9) | ((*(&v69 + 13) | (HIBYTE(v69) << 16)) << 32);
  v8 = *(&v70 + 9) | ((*(&v70 + 13) | (HIBYTE(v2) << 16)) << 32);
  v9 = BYTE8(v2);
  v10 = v69 | (BYTE1(v69) << 8) | (*(&v69 + 2) << 16) | (WORD3(v69) << 48);
  v11 = v7 << 8;
  v12 = *v71;
  v13 = v71[24];
  v14 = v8 << 8;
  v15 = *&v71[9] >> 56;
  switch(v71[24] >> 2)
  {
    case 1:
      if ((v72[56] & 0xFC) != 4)
      {
        goto LABEL_112;
      }

      goto LABEL_49;
    case 2:
      if ((v72[56] & 0xFC) != 8)
      {
        goto LABEL_112;
      }

      sub_25F760F44(v73, &qword_27FDB0408);
      if (v69 != v72[0])
      {
        goto LABEL_114;
      }

      v21 = BYTE1(v69) == v72[1];
      return v21 & 1;
    case 3:
      v27 = v72[56];
      if ((v72[56] & 0xFC) != 0xC)
      {
        goto LABEL_111;
      }

      v52 = v2;
      v28 = BYTE8(v69);
      v49 = *&v72[24];
      v50 = *&v72[8];
      v48 = *&v72[40];
      v29 = sub_25F804C7C(v10, *v72);
      sub_25F79AB14(v72, &v57);
      sub_25F79AB14(&v69, &v57);
      sub_25F760F44(v73, &qword_27FDB0408);
      if ((v29 & 1) == 0)
      {
        goto LABEL_114;
      }

      v57 = v28;
      v58 = v7;
      v60 = BYTE6(v7);
      v59 = WORD2(v7);
      v61 = v52;
      v62 = v9;
      v63 = v8;
      v65 = BYTE6(v8);
      v64 = WORD2(v8);
      v66 = v12;
      v67 = v15;
      v68 = v13 & 1;
      v53 = v50;
      v54 = v49;
      v55 = v48;
      v56 = v27 & 1;
      v21 = _s17ProDisplayLibrary10ColorSpaceO2eeoiySbAC_ACtFZ_0(&v57, &v53);
      return v21 & 1;
    case 4:
      if ((v72[56] & 0xFC) != 0x10)
      {
        goto LABEL_111;
      }

      v17 = v2;
      v18 = BYTE8(v69);
      v51 = *&v72[8];
      v19 = v72[24];
      v20 = sub_25F8050A8(v10, *v72);
      sub_25F79AB14(v72, &v57);
      sub_25F79AB14(&v69, &v57);
      sub_25F760F44(v73, &qword_27FDB0408);
      if ((v20 & 1) == 0)
      {
        goto LABEL_114;
      }

      v57 = v18;
      v58 = v7;
      v60 = BYTE6(v7);
      v59 = WORD2(v7);
      v61 = v17;
      v62 = v9 & 1;
      v53 = v51;
      LOBYTE(v54) = v19 & 1;
      v21 = _s17ProDisplayLibrary10WhitePointO2eeoiySbAC_ACtFZ_0(&v57, &v53);
      return v21 & 1;
    case 5:
      if ((v72[56] & 0xFC) != 0x14)
      {
        goto LABEL_112;
      }

      goto LABEL_84;
    case 6:
      if ((v72[56] & 0xFC) != 0x18)
      {
        goto LABEL_112;
      }

      goto LABEL_84;
    case 7:
      if ((v72[56] & 0xFC) != 0x1C)
      {
        goto LABEL_112;
      }

      goto LABEL_84;
    case 8:
      if ((v72[56] & 0xFC) == 0x20)
      {
        goto LABEL_84;
      }

      goto LABEL_112;
    case 9:
      if ((v72[56] & 0xFC) != 0x24)
      {
        goto LABEL_112;
      }

      goto LABEL_79;
    case 0xA:
      if ((v72[56] & 0xFC) == 0x28)
      {
        goto LABEL_82;
      }

      goto LABEL_112;
    case 0xB:
      if ((v72[56] & 0xFC) != 0x2C)
      {
        goto LABEL_111;
      }

      goto LABEL_29;
    case 0xC:
      if ((v72[56] & 0xFC) != 0x30)
      {
        goto LABEL_111;
      }

LABEL_29:
      v16 = *v72;
      goto LABEL_30;
    case 0xD:
      if ((v72[56] & 0xFC) != 0x34)
      {
        goto LABEL_75;
      }

      goto LABEL_17;
    case 0xE:
      if ((v72[56] & 0xFC) != 0x38)
      {
LABEL_75:

LABEL_111:

        goto LABEL_112;
      }

LABEL_17:
      if ((sub_25F8053D4(v10, *v72) & 1) == 0)
      {
        sub_25F79AB14(v72, &v57);
        v45 = &v69;
        goto LABEL_113;
      }

      v10 = (v7 << 8) | BYTE8(v69);
      v16 = *&v72[8];
LABEL_30:
      v22 = sub_25F8053D4(v10, v16);
      sub_25F79AB14(v72, &v57);
      sub_25F79AB14(&v69, &v57);
      sub_25F760F44(v73, &qword_27FDB0408);
      return v22 & 1;
    case 0xF:
      if ((v72[56] & 0xFC) != 0x3C)
      {
        goto LABEL_111;
      }

      v24 = BYTE8(v69);
      v25 = v72[8];
      v26 = sub_25F8053D4(v10, *v72);
      sub_25F79AB14(v72, &v57);
      sub_25F79AB14(&v69, &v57);
      sub_25F760F44(v73, &qword_27FDB0408);
      if ((v26 & 1) == 0)
      {
        goto LABEL_114;
      }

      v21 = v24 == v25;
      return v21 & 1;
    case 0x10:
      if ((v72[56] & 0xFC) != 0x40)
      {
        goto LABEL_112;
      }

LABEL_82:
      sub_25F760F44(v73, &qword_27FDB0408);
      v21 = v69 == v72[0];
      return v21 & 1;
    case 0x11:
      if ((v72[56] & 0xFC) != 0x44)
      {
        goto LABEL_112;
      }

      goto LABEL_84;
    case 0x12:
      if ((v72[56] & 0xFC) == 0x48)
      {
        goto LABEL_79;
      }

      goto LABEL_112;
    case 0x13:
      if ((v72[56] & 0xFC) != 0x4C)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x14:
      if ((v72[56] & 0xFC) == 0x50)
      {
        goto LABEL_65;
      }

      goto LABEL_111;
    case 0x15:
      if ((v72[56] & 0xFC) != 0x54)
      {
        goto LABEL_112;
      }

      v40 = *&v2;
      sub_25F760F44(v73, &qword_27FDB0408);
      v21 = 0;
      if (*v72 == COERCE_DOUBLE(v69 | (BYTE1(v69) << 8) | (*(&v69 + 2) << 16) | (WORD3(v69) << 48)) && *&v72[8] == COERCE_DOUBLE((v7 << 8) | BYTE8(v69)))
      {
        v21 = *&v72[24] == COERCE_DOUBLE(v14 | v9) && *&v72[16] == v40;
      }

      return v21 & 1;
    case 0x16:
      if ((v72[56] & 0xFC) != 0x58)
      {
        goto LABEL_111;
      }

      goto LABEL_108;
    case 0x17:
      if ((v72[56] & 0xFC) == 0x5C)
      {
        goto LABEL_108;
      }

      goto LABEL_111;
    case 0x18:
      if ((v72[56] & 0xFC) != 0x60)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x19:
      if ((v72[56] & 0xFC) != 0x64)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x1A:
      if ((v72[56] & 0xFC) != 0x68)
      {
        goto LABEL_111;
      }

LABEL_108:
      v37 = BYTE8(v69);
      v38 = v72[8];
      v39 = sub_25F80B428(v10, *v72);
      goto LABEL_109;
    case 0x1B:
      if ((v72[56] & 0xFC) != 0x6C)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x1C:
      if ((v72[56] & 0xFC) != 0x70)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x1D:
      if ((v72[56] & 0xFC) != 0x74)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x1E:
      if ((v72[56] & 0xFC) != 0x78)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x1F:
      if ((v72[56] & 0xFC) != 0x7C)
      {
        goto LABEL_111;
      }

LABEL_65:
      v37 = BYTE8(v69);
      v38 = v72[8];
      v39 = sub_25F805544(v10, *v72);
LABEL_109:
      v44 = v39;
      sub_25F79AB14(v72, &v57);
      sub_25F79AB14(&v69, &v57);
      sub_25F760F44(v73, &qword_27FDB0408);
      if ((v44 & 1) == 0)
      {
        goto LABEL_114;
      }

      v21 = v37 ^ v38 ^ 1;
      return v21 & 1;
    case 0x20:
      if ((v72[56] & 0xFC) != 0x80)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x21:
      if ((v72[56] & 0xFC) != 0x84)
      {
        goto LABEL_112;
      }

LABEL_84:
      v43 = *&v2;
      v41 = *&v72[16];
      sub_25F760F44(v73, &qword_27FDB0408);
      v21 = 0;
      if (*v72 != COERCE_DOUBLE(v69 | (BYTE1(v69) << 8) | (*(&v69 + 2) << 16) | (WORD3(v69) << 48)) || *&v72[8] != COERCE_DOUBLE((v7 << 8) | BYTE8(v69)))
      {
        return v21 & 1;
      }

      v42 = v43;
      goto LABEL_87;
    case 0x22:
      if ((v72[56] & 0xFC) != 0x88)
      {
        goto LABEL_112;
      }

      goto LABEL_79;
    case 0x23:
      if ((v72[56] & 0xFC) != 0x8C)
      {
        goto LABEL_112;
      }

      goto LABEL_79;
    case 0x24:
      if ((v72[56] & 0xFC) != 0x90)
      {
        goto LABEL_112;
      }

LABEL_79:
      v41 = *&v72[8];
      sub_25F760F44(v73, &qword_27FDB0408);
      if (*v72 != COERCE_DOUBLE(v69 | (BYTE1(v69) << 8) | (*(&v69 + 2) << 16) | (WORD3(v69) << 48)))
      {
        goto LABEL_114;
      }

      *&v42 = (v7 << 8) | BYTE8(v69);
LABEL_87:
      v21 = v41 == v42;
      return v21 & 1;
    case 0x25:
      if ((v72[56] & 0xFC) != 0x94)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x26:
      if ((v72[56] & 0xFC) == 0x98)
      {
        goto LABEL_105;
      }

      goto LABEL_112;
    case 0x27:
      if ((v72[56] & 0xFC) != 0x9C)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    case 0x28:
      if ((v72[56] & 0xFC) != 0xA0)
      {
        goto LABEL_112;
      }

LABEL_105:
      sub_25F760F44(v73, &qword_27FDB0408);
      if ((v69 ^ v72[0]))
      {
        goto LABEL_114;
      }

      v21 = BYTE1(v69) ^ v72[1] ^ 1;
      return v21 & 1;
    case 0x29:
      v32 = v14 | BYTE8(v2);
      v33 = v11 | BYTE8(v69);
      if (v71[24] != 164 || v2 | v10 | *v71 | v33 | v32 | *&v71[8] | v15)
      {
        v46 = v33 | v2 | *v71 | v32 | *&v71[8] | v15;
        if (v71[24] == 164 && v10 == 1 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 1)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 2 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 2)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 3 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 3)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 4 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 4)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 5 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 5)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 6 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 6)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 7 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 7)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 8 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 8)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 9 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 9)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 10 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 10)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 11 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 11)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 12 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 12)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 13 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 13)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 14 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 14)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 15 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 15)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 16 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 16)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 17 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 17)
          {
            goto LABEL_112;
          }
        }

        else if (v71[24] == 164 && v10 == 18 && !v46)
        {
          if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 18)
          {
            goto LABEL_112;
          }
        }

        else if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164 || *v72 != 19)
        {
          goto LABEL_112;
        }

        v36 = *&v72[8];
        v47 = vorrq_s8(*&v72[24], *&v72[40]);
        v35 = *&vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)) | *&v72[16];
      }

      else
      {
        if ((v72[56] & 0xFC) != 0xA4 || v72[56] != 164)
        {
          goto LABEL_112;
        }

        v34 = vorrq_s8(*&v72[24], *&v72[40]);
        v35 = *&vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL)) | *&v72[16];
        v36 = *&v72[8] | *v72;
      }

      if (!(v35 | v36))
      {
        sub_25F760F44(v73, &qword_27FDB0408);
        v21 = 1;
        return v21 & 1;
      }

LABEL_112:
      v45 = v72;
LABEL_113:
      sub_25F79AB14(v45, &v57);
      sub_25F760F44(v73, &qword_27FDB0408);
LABEL_114:
      v21 = 0;
      return v21 & 1;
    default:
      if (v72[56] > 3u)
      {
        goto LABEL_112;
      }

LABEL_49:
      v30 = v11 | BYTE8(v69);
      sub_25F760F44(v73, &qword_27FDB0408);
      v21 = (v69 | (BYTE1(v69) << 8) | (*(&v69 + 2) << 16) | (WORD3(v69) << 48)) == *v72 && v30 == *&v72[8];
      return v21 & 1;
  }
}

unint64_t sub_25F79A968()
{
  result = qword_27FDB0400;
  if (!qword_27FDB0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDB0400);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17ProDisplayLibrary27CustomPresetValidationErrorO(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 0xA3)
  {
    return v1 >> 2;
  }

  else
  {
    return (*a1 + 41);
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25F79A9F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x57 && *(a1 + 57))
  {
    return (*a1 + 87);
  }

  v3 = ((*(a1 + 56) >> 2) & 0xFFFFFFBF | (((*(a1 + 56) >> 1) & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x56)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F79AA48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x56)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 87;
    if (a3 >= 0x57)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x57)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 2 * (((-a2 & 0x40) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t sub_25F79AAC8(uint64_t result, unsigned int a2)
{
  if (a2 < 0x29)
  {
    *(result + 56) = *(result + 56) & 1 | (4 * a2);
  }

  else
  {
    *result = a2 - 41;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = -92;
  }

  return result;
}

uint64_t sub_25F79ABD0(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v40 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 5)
  {
    v8 = i[1];
    v35 = *i;
    v36 = v8;
    v9 = i[3];
    v37 = i[2];
    v38 = v9;
    v39 = i[4];
    v10 = v35;
    v11 = sub_25F75DB5C(v35);
    v13 = v1[2];
    v14 = (v12 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v12;
    if (v1[3] >= v15)
    {
      v19 = v11;
      sub_25F777DAC(&v35, v34);
      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_25F777DAC(&v35, v34);
      sub_25F75F2EC(v15, 1);
      v1 = v40;
      v17 = sub_25F75DB5C(v10);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v19 = v17;
      if (v16)
      {
LABEL_12:
        v28 = v1[7];
        v29 = *(v28 + 8 * v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v28 + 8 * v19) = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_25F75BE3C(0, *(v29 + 2) + 1, 1, v29);
          *(v28 + 8 * v19) = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v29 = sub_25F75BE3C((v31 > 1), v32 + 1, 1, v29);
          *(v28 + 8 * v19) = v29;
        }

        *(v29 + 2) = v32 + 1;
        v4 = &v29[80 * v32];
        *(v4 + 2) = v35;
        v5 = v36;
        v6 = v37;
        v7 = v39;
        *(v4 + 5) = v38;
        *(v4 + 6) = v7;
        *(v4 + 3) = v5;
        *(v4 + 4) = v6;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFD50);
    v20 = swift_allocObject();
    v21 = v37;
    v22 = v38;
    v23 = v35;
    v20[3] = v36;
    v20[4] = v21;
    v24 = v39;
    v20[5] = v22;
    v20[6] = v24;
    v20[1] = xmmword_25F8249B0;
    v20[2] = v23;
    v1[(v19 >> 6) + 8] |= 1 << v19;
    *(v1[6] + v19) = v10;
    *(v1[7] + 8 * v19) = v20;
    v25 = v1[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_18;
    }

    v1[2] = v27;
LABEL_4:
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_25F822D2C();
  __break(1u);
  return result;
}

uint64_t sub_25F79AE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Preset.Info(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F79AE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F79AEE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F76D178(a1, a2);
  }

  return a1;
}

uint64_t sub_25F79AEF4(uint64_t a1)
{
  v51 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for Preset(0);
  v42 = a1;
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v32 = v3[16];
  v33 = v3[17];
  v35 = v3[32];
  v36 = v3[33];
  v37 = *(v3 + 5);
  v31 = *(v3 + 6);
  v38 = v3[56];
  v39 = v3[72];
  v40 = v3[88];
  v9 = *(v3 + 12);
  v8 = *(v3 + 13);
  v10 = *(v3 + 14);
  v45 = v3[120];
  v47 = v3[121];
  v48 = v3[122];
  v49 = v3[123];
  if (qword_27FDAF958 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v11 = (__swift_project_value_buffer(v2, qword_27FDC0358) + *(v2 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v30 = v11[17];
  v34 = v11[33];
  v43 = v11[120];
  v44 = v11[121];
  v46 = v11[122];
  v16 = v11[123];
  if (v4 == v12)
  {
    if (v5 == v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 256;
    if (!v4)
    {
      v20 = 0;
    }

    *&v99[0] = v20 | v12;
    v100 = 108;
    sub_25F7BA74C(&v94, v99);
    v97[0] = v94;
    v97[1] = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_25F79AB4C(v97);
    if (v5 == v13)
    {
LABEL_5:
      if (v6 == v14)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  v21 = 256;
  if (!v5)
  {
    v21 = 0;
  }

  *&v97[0] = v21 | v13;
  v98[24] = 112;
  sub_25F7BA74C(&v91, v97);
  v94 = v91;
  v95 = v92;
  *v96 = *v93;
  *&v96[9] = *&v93[9];
  sub_25F79AB4C(&v94);
  if (v6 != v14)
  {
LABEL_6:
    v17 = 256;
    if (!v6)
    {
      v17 = 0;
    }

    *&v94 = v17 | v14;
    v96[24] = 116;
    sub_25F7BA74C(v90, &v94);
    v91 = *v90;
    v92 = *&v90[16];
    *v93 = *&v90[32];
    *&v93[9] = *&v90[41];
    sub_25F79AB4C(&v91);
  }

LABEL_9:
  if (v7 != v15)
  {
    v18 = 256;
    if (!v7)
    {
      v18 = 0;
    }

    *&v91 = v18 | v15;
    v93[24] = 120;
    sub_25F7BA74C(&v87, &v91);
    *v90 = v87;
    *&v90[16] = v88;
    *&v90[32] = *v89;
    *&v90[41] = *&v89[9];
    sub_25F79AB4C(v90);
  }

  if ((v32 & 1) == 0)
  {
    *v90 = 15;
    memset(&v90[8], 0, 48);
    v90[56] = -92;
    sub_25F7BA74C(v86, v90);
    v87 = *v86;
    v88 = *&v86[16];
    *v89 = *&v86[32];
    *&v89[9] = *&v86[41];
    sub_25F79AB4C(&v87);
  }

  if (qword_27FDAF950 != -1)
  {
    swift_once();
  }

  if (BYTE9(xmmword_27FDC0340) == 1)
  {
    v19 = sub_25F793550(&unk_2871C4528);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDB0410);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_25F8249B0;
    *(v22 + 32) = v30;
    v19 = sub_25F793550(v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  if ((sub_25F755428(v33, v19) & 1) == 0)
  {
    *&v87 = v19;
    *(&v87 + 1) = v33;
    v89[24] = 124;
    sub_25F7BA74C(v86, &v87);
    sub_25F79AB4C(v86);
    if (v35)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if ((v35 & 1) == 0)
  {
LABEL_31:
    *v86 = 16;
    memset(&v86[8], 0, 48);
    v86[56] = -92;
    sub_25F7BA74C(v84, v86);
    sub_25F79AB4C(v84);
  }

LABEL_32:
  if (v36 != v34)
  {
    v23 = 256;
    if (!v36)
    {
      v23 = 0;
    }

    *&v84[0] = v23 | v34;
    v85 = 0x80;
    sub_25F7BA74C(&v79, v84);
    sub_25F79AB4C(&v79);
  }

  if (v37)
  {
    v79 = 17;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = -92;
    sub_25F7BA74C(&v76, &v79);
    sub_25F79AB4C(&v76);
  }

  if ((v38 & 1) == 0 && (*&xmmword_27FDC02F8 > v31 || *(&xmmword_27FDC02F8 + 1) < v31))
  {
    v76 = xmmword_27FDC02F8;
    v77 = v31;
    v78 = -124;
    sub_25F7BA74C(&v71, &v76);
    sub_25F79AB4C(&v71);
  }

  if ((v39 & 1) == 0)
  {
    v71 = 18;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = -92;
    sub_25F7BA74C(&v66, &v71);
    sub_25F79AB4C(&v66);
  }

  if ((v40 & 1) == 0)
  {
    v66 = 19;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = -92;
    sub_25F7BA74C(v64, &v66);
    sub_25F79AB4C(v64);
  }

  v24 = *(v42 + *(v41 + 20) + 168);
  if (v10 == v24)
  {
    if (v9 == v24)
    {
      goto LABEL_48;
    }

LABEL_67:
    *v62 = v24;
    *(v62 + 1) = v9;
    v63 = -116;
    sub_25F7BA74C(v60, v62);
    sub_25F79AB4C(v60);
    if (v8 == v24)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

  *&v64[0] = *(v42 + *(v41 + 20) + 168);
  *(v64 + 1) = v10;
  v65 = -120;
  sub_25F7BA74C(v62, v64);
  sub_25F79AB4C(v62);
  if (v9 != v24)
  {
    goto LABEL_67;
  }

LABEL_48:
  if (v8 == v24)
  {
    goto LABEL_49;
  }

LABEL_68:
  *v60 = v24;
  *(v60 + 1) = v8;
  v61 = -112;
  sub_25F7BA74C(v58, v60);
  sub_25F79AB4C(v58);
LABEL_49:
  if (v45 != v43)
  {
    v25 = 256;
    if (!v45)
    {
      v25 = 0;
    }

    *&v58[0] = v25 | v43;
    v59 = -108;
    sub_25F7BA74C(v56, v58);
    sub_25F79AB4C(v56);
  }

  if (v47 != v44)
  {
    v26 = 256;
    if (!v47)
    {
      v26 = 0;
    }

    *&v56[0] = v26 | v44;
    v57 = -104;
    sub_25F7BA74C(v54, v56);
    sub_25F79AB4C(v54);
  }

  if (v48 != v46)
  {
    v27 = 256;
    if (!v48)
    {
      v27 = 0;
    }

    *&v54[0] = v27 | v46;
    v55 = -100;
    sub_25F7BA74C(v52, v54);
    sub_25F79AB4C(v52);
  }

  if (v49 != v16)
  {
    v28 = 256;
    if (!v49)
    {
      v28 = 0;
    }

    *&v52[0] = v28 | v16;
    v53 = -96;
    sub_25F7BA74C(v50, v52);
    sub_25F79AB4C(v50);
  }

  return v51;
}

void *sub_25F79B690(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v55 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for Preset.Info(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x277D84FA0];
  sub_25F79AE1C(a1, v11);
  v56 = v9;
  v12 = sub_25F8223DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_25F8223BC();
  v15 = sub_25F82237C();
  v17 = v16;
  v54 = *(v13 + 8);
  result = v54(&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v53 = v8;
  if (v17 >> 60 != 15)
  {
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 != 2)
      {
        v21 = 0;
        goto LABEL_13;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      v21 = v22 - v23;
      if (!__OFSUB__(v22, v23))
      {
LABEL_13:
        if (*v55 != -1)
        {
          result = swift_once();
        }

        v24 = *v52;
        if (*v52 >= v21)
        {
          v26 = sub_25F79AEE0(v15, v17);
          goto LABEL_29;
        }

        if (v20 > 1)
        {
          if (v20 != 2)
          {
            v25 = 0;
            goto LABEL_27;
          }

          v28 = *(v15 + 16);
          v27 = *(v15 + 24);
          v29 = __OFSUB__(v27, v28);
          v25 = v27 - v28;
          if (!v29)
          {
            goto LABEL_27;
          }

          __break(1u);
        }

        else if (!v20)
        {
          v25 = BYTE6(v17);
LABEL_27:
          *&v69[0] = v24;
          *(&v69[0] + 1) = v25;
          v71 = 0;
          sub_25F7BA74C(v68, v69);
          sub_25F79AEE0(v15, v17);
          v65 = *v68;
          v66 = *&v68[16];
          v67[0] = *&v68[32];
          *(v67 + 9) = *&v68[41];
          v19 = &v65;
          goto LABEL_28;
        }

        LODWORD(v25) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v25 = v25;
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v21 = BYTE6(v17);
      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v21 = HIDWORD(v15) - v15;
    goto LABEL_13;
  }

  memset(v69, 0, sizeof(v69));
  v70 = 0;
  v71 = -92;
  sub_25F7BA74C(v68, v69);
  v19 = v68;
LABEL_28:
  v26 = sub_25F79AB4C(v19);
LABEL_29:
  MEMORY[0x28223BE20](v26);
  sub_25F8223BC();
  v30 = sub_25F82237C();
  v32 = v31;
  v54(&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  if (v32 >> 60 != 15)
  {
    v34 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      result = v55;
      v33 = v56;
      if (v34 != 2)
      {
        v35 = 0;
        goto LABEL_41;
      }

      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      v35 = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    else
    {
      result = v55;
      v33 = v56;
      if (!v34)
      {
        v35 = BYTE6(v32);
LABEL_41:
        if (*result != -1)
        {
          result = swift_once();
        }

        v38 = *v51;
        if (*v51 >= v35)
        {
          sub_25F79AEE0(v30, v32);
          goto LABEL_56;
        }

        if (v34 > 1)
        {
          if (v34 != 2)
          {
            v39 = 0;
            goto LABEL_55;
          }

          v41 = *(v30 + 16);
          v40 = *(v30 + 24);
          v29 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (!v29)
          {
            goto LABEL_55;
          }

          __break(1u);
        }

        else if (!v34)
        {
          v39 = BYTE6(v32);
LABEL_55:
          *v68 = v38;
          *&v68[8] = v39;
          v68[56] = 4;
          sub_25F7BA74C(&v65, v68);
          sub_25F79AEE0(v30, v32);
          *v64 = v65;
          *&v64[16] = v66;
          *&v64[32] = v67[0];
          *&v64[41] = *(v67 + 9);
          sub_25F79AB4C(v64);
          goto LABEL_56;
        }

        LODWORD(v39) = HIDWORD(v30) - v30;
        if (!__OFSUB__(HIDWORD(v30), v30))
        {
          v39 = v39;
          goto LABEL_55;
        }

LABEL_68:
        __break(1u);
        return result;
      }
    }

    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v35 = HIDWORD(v30) - v30;
      goto LABEL_41;
    }

    goto LABEL_66;
  }

  *v68 = 1;
  memset(&v68[8], 0, 48);
  v68[56] = -92;
  sub_25F7BA74C(&v65, v68);
  sub_25F79AB4C(&v65);
  v33 = v56;
LABEL_56:
  v42 = v11[v33[7]];
  if (v42 != 1)
  {
    *&v65 = (v42 << 8) | 1;
    BYTE8(v67[1]) = 8;
    sub_25F7BA74C(v64, &v65);
    sub_25F79AB4C(v64);
  }

  v43 = v33[8];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC20);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v50 - v45;
  sub_25F76183C(&v11[v43], &v50 - v45, &qword_27FDAFC20);
  v47 = sub_25F82210C();
  if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
  {
    sub_25F760F44(v46, &qword_27FDAFC20);
    *v64 = 2;
    memset(&v64[8], 0, 48);
    v64[56] = -92;
    sub_25F7BA74C(&v59, v64);
    sub_25F79AB4C(&v59);
  }

  else
  {
    sub_25F760F44(v46, &qword_27FDAFC20);
  }

  v48 = v53;
  sub_25F76183C(&v11[v33[9]], v53, &qword_27FDAFC10);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAFC18);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {
    sub_25F760F44(v48, &qword_27FDAFC10);
  }

  else
  {
    sub_25F760F44(v48, &qword_27FDAFC10);
    v59 = 3;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = -92;
    sub_25F7BA74C(v57, &v59);
    sub_25F79AB4C(v57);
  }

  sub_25F79AE80(v11, type metadata accessor for Preset.Info);
  return v58;
}