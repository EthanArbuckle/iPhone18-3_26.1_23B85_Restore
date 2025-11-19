void sub_1B4E8F0E8(uint64_t a1)
{
  v84 = sub_1B4F67244();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v84, v6);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5748, &qword_1B4F73F38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = &v66 - v19;
  v21 = *(a1 + 16);
  v22 = *v1;
  v23 = *(*v1 + 2);
  v24 = v23 + v21;
  if (__OFADD__(v23, v21))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v83 = v17;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v14;
  if (!isUniquelyReferenced_nonNull_native || (v26 = *(v22 + 3) >> 1, v26 < v24))
  {
    if (v23 <= v24)
    {
      v27 = v23 + v21;
    }

    else
    {
      v27 = v23;
    }

    v22 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v27, 1, v22, &qword_1EB8F5680, &qword_1B4F73EC0, MEMORY[0x1E69CCF40]);
    v26 = *(v22 + 3) >> 1;
  }

  v28 = *(v22 + 2);
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  v29 = v26 - v28;
  v30 = sub_1B4E93A84(&v86, &v22[v24 + v23 * v28], v26 - v28, a1, MEMORY[0x1E69CCF40]);
  if (v30 < v21)
  {
    goto LABEL_16;
  }

  if (v30)
  {
    v33 = *(v22 + 2);
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v22 + 2) = v35;
  }

  if (v30 != v29)
  {
    sub_1B4E632A0();
LABEL_14:
    *v1 = v22;
    return;
  }

LABEL_17:
  v81 = *(v22 + 2);
  v32 = v87;
  v72 = v86;
  v35 = v89;
  v31 = &v91;
  v67 = v88;
  v36 = v90;
  v70 = v87;
  if (v90)
  {
    v37 = v89;
LABEL_27:
    v79 = (v36 - 1) & v36;
    v41 = v84;
    (*(v2 + 16))(v20, *(v72 + 48) + (__clz(__rbit64(v36)) | (v37 << 6)) * v23, v84, v18);
    v74 = *(v2 + 56);
    v74(v20, 0, 1, v41);
    v40 = v37;
    while (1)
    {
      v42 = v82;
      sub_1B4E21A90(v20, v82, &qword_1EB8F5748, &qword_1B4F73F38);
      v43 = *(v2 + 48);
      v2 += 48;
      v78 = v43;
      if (v43(v42, 1, v41) == 1)
      {
        break;
      }

      v45 = (v4 + 32);
      v69 = (v67 + 64) >> 6;
      v73 = v4 + 56;
      v71 = (v4 + 16);
      v68 = (v4 + 8);
      v44 = v82;
      v80 = v45;
      while (1)
      {
        sub_1B4DD2BC4(v44, &qword_1EB8F5748, &qword_1B4F73F38);
        v46 = *(v22 + 3);
        v47 = v46 >> 1;
        if ((v46 >> 1) < v81 + 1)
        {
          v22 = sub_1B4E78BC8(v46 > 1, v81 + 1, 1, v22, &qword_1EB8F5680, &qword_1B4F73EC0, MEMORY[0x1E69CCF40]);
          v47 = *(v22 + 3) >> 1;
        }

        v48 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F5748, &qword_1B4F73F38);
        if (v78(v48, 1, v84) != 1)
        {
          break;
        }

        v49 = v40;
        v50 = v83;
        v4 = v81;
LABEL_38:
        v40 = v49;
        sub_1B4DD2BC4(v50, &qword_1EB8F5748, &qword_1B4F73F38);
        v81 = v4;
LABEL_33:
        *(v22 + 2) = v4;
        v44 = v82;
        sub_1B4E21A90(v20, v82, &qword_1EB8F5748, &qword_1B4F73F38);
        if (v78(v44, 1, v84) == 1)
        {
          goto LABEL_30;
        }
      }

      v76 = &v22[v24];
      v4 = v81;
      v51 = *v80;
      if (v81 <= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = v81;
      }

      v77 = v52;
      v50 = v83;
      v53 = v84;
      v54 = v85;
      v75 = v51;
      while (1)
      {
        v58 = v54;
        v59 = v50;
        v60 = v53;
        v61 = v51;
        v51(v58, v59, v53);
        if (v4 == v77)
        {
          (*v68)(v85, v60);
          v4 = v77;
          v81 = v77;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v20, &qword_1EB8F5748, &qword_1B4F73F38);
        v81 = v4;
        v61(&v76[v4 * v23], v85, v60);
        v62 = v79;
        if (!v79)
        {
          break;
        }

        v63 = v40;
LABEL_55:
        v79 = (v62 - 1) & v62;
        v56 = v84;
        (*v71)(v20, *(v72 + 48) + (__clz(__rbit64(v62)) | (v63 << 6)) * v23, v84);
        v55 = 0;
        v65 = v63;
LABEL_44:
        v4 = v81 + 1;
        v74(v20, v55, 1, v56);
        v50 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F5748, &qword_1B4F73F38);
        v57 = v78(v50, 1, v56);
        v53 = v56;
        v40 = v65;
        v49 = v65;
        v54 = v85;
        v51 = v75;
        if (v57 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v69 <= v40 + 1)
      {
        v64 = v40 + 1;
      }

      else
      {
        v64 = v69;
      }

      v65 = v64 - 1;
      while (1)
      {
        v63 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v63 >= v69)
        {
          v79 = 0;
          v55 = 1;
          v56 = v84;
          goto LABEL_44;
        }

        v62 = *(v70 + 8 * v63);
        ++v40;
        if (v62)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v41 = v84;
      v74 = *(v2 + 56);
      v74(v20, 1, 1, v84);
      v79 = 0;
    }

    v44 = v82;
LABEL_30:
    sub_1B4DD2BC4(v20, &qword_1EB8F5748, &qword_1B4F73F38);
    sub_1B4E632A0();
    sub_1B4DD2BC4(v44, &qword_1EB8F5748, &qword_1B4F73F38);
    goto LABEL_14;
  }

LABEL_20:
  v38 = (*(v31 - 32) + 64) >> 6;
  if (v38 <= v35 + 1)
  {
    v39 = v35 + 1;
  }

  else
  {
    v39 = v38;
  }

  v40 = v39 - 1;
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      goto LABEL_57;
    }

    v36 = *(v32 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E8F864(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), char *a5, uint64_t a6, unint64_t a7)
{
  v51 = a1;
  v55 = *MEMORY[0x1E69E9840];
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v19 = &v42 - v18;
  LOBYTE(v18) = *(a3 + 32);
  v43 = ((1 << v18) + 63) >> 6;
  v20 = 8 * v43;
  if ((v18 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v49 = v19;
    v50 = v16;
    v42 = a5;
    v45 = &v42;
    MEMORY[0x1EEE9AC00](v16, v17);
    v44 = &v42 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v44, v20);
    a6 = 0;
    v52 = a3;
    v22 = *(a3 + 56);
    a3 += 56;
    v21 = v22;
    v23 = 1 << *(a3 - 24);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v46 = 0;
    v47 = v13 + 16;
    v48 = (v13 + 8);
    while (v25)
    {
      v27 = __clz(__rbit64(v25));
      v53 = (v25 - 1) & v25;
LABEL_12:
      a7 = v27 | (a6 << 6);
      v30 = *(v52 + 48) + *(v13 + 9) * a7;
      v19 = v13;
      v31 = *(v13 + 2);
      a5 = v49;
      v32 = v50;
      v31(v49, v30, v50);
      v33 = v54;
      v34 = v51(a5);
      v54 = v33;
      if (v33)
      {
        (*v48)(a5, v32);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v20 = v34;
      v16 = (*v48)(a5, v32);
      v13 = v19;
      v25 = v53;
      if (v20)
      {
        *&v44[(a7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a7;
        if (__OFADD__(v46++, 1))
        {
          __break(1u);
LABEL_17:
          result = (v42)(v44, v43, v46, v52);
          goto LABEL_18;
        }
      }
    }

    v28 = a6;
    while (1)
    {
      a6 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (a6 >= v26)
      {
        goto LABEL_17;
      }

      v29 = *(a3 + 8 * a6);
      v28 = (v28 + 1);
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v53 = (v29 - 1) & v29;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v38 = v16;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v16 = v38;
  }

  v39 = swift_slowAlloc();
  v40 = v54;
  v41 = sub_1B4E8C808(v39, v43, a3, v51, a2, a6, a7);

  result = MEMORY[0x1B8C831D0](v39, -1, -1);
  if (!v40)
  {
    result = v41;
  }

LABEL_18:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B4E8FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v33 = a2;
  v34 = a7;
  v40 = a4;
  v35 = a1;
  v43 = a6(0);
  v9 = *(*(v43 - 8) + 64);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v43, v10);
  v41 = a3;
  v42 = &v33 - v13;
  v14 = 0;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v38 = v11 + 16;
  v39 = v11;
  v36 = 0;
  v37 = (v11 + 8);
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v23 = v22 | (v14 << 6);
    v24 = v43;
    v25 = v42;
LABEL_11:
    (*(v39 + 16))(v25, *(v41 + 48) + *(v39 + 72) * v23, v24, v12);
    v28 = v40(v25);
    v29 = v25;
    if (v7)
    {
      (*v37)(v25, v24);
      return;
    }

    v30 = v28;
    (*v37)(v29, v24);
    if (v30)
    {
      *(v35 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_16:
        v32 = v41;

        v34(v35, v33, v36, v32);
        return;
      }
    }
  }

  v26 = v14;
  v24 = v43;
  v25 = v42;
  while (1)
  {
    v14 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      goto LABEL_16;
    }

    v27 = *(v16 + 8 * v14);
    ++v26;
    if (v27)
    {
      v20 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v14 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1B4E8FE78(void **a1)
{
  v2 = *(sub_1B4F65C64() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B4E93D2C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B4E92590(v5);
  *a1 = v3;
}

uint64_t sub_1B4E8FF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F670C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F5798, MEMORY[0x1E69CCDC8]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCDC8], &qword_1EB8F57A0, &qword_1B4F73F50);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CCDC8], &qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E90230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F66AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F5788, MEMORY[0x1E69CCA00]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCA00], &qword_1EB8F5790, &qword_1B4F73F48);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CCA00], &qword_1EB8F4DA0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA10]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E90540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F660C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F5778, MEMORY[0x1E69CBE40]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CBE40], &qword_1EB8F5780, &unk_1B4F79F50);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CBE40], &qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E90850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F65DE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F5760, MEMORY[0x1E69CB800]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB800], &qword_1EB8F5768, &unk_1B4F79F40);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CB800], &qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E90B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F66674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F5750, MEMORY[0x1E69CC5E8]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC5E8], &qword_1EB8F5758, &unk_1B4F79F60);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CC5E8], &qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E90E70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B4F68E84();
  sub_1B4F67FE4();
  v7 = sub_1B4F68EC4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B4F68D54() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B4E863C4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1B4E92210(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1B4E90FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F67154();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F5728, MEMORY[0x1E69CCEC8]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCEC8], &qword_1EB8F5730, &qword_1B4F73F28);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CCEC8], &qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E912BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F67A94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F56D8, MEMORY[0x1E69CD370]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CD370], &qword_1EB8F56E0, &qword_1B4F73EF8);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CD370], &qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E915CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F67124();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F56E8, MEMORY[0x1E69CCE28]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCE28], &qword_1EB8F56F0, &qword_1B4F73F00);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CCE28], &qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E918DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F679C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
  v35 = a1;
  v14 = sub_1B4F67F14();
  v33 = v12 + 56;
  v34 = v12;
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v11, *(v34 + 48) + v21 * v16, v6);
      sub_1B4E952A0(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8]);
      v22 = sub_1B4F67F54();
      (*(v19 - 8))(v11, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4E86E38(MEMORY[0x1E69CD2D8], &qword_1EB8F5700, &qword_1B4F73F08);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1B4E91F14(v16, MEMORY[0x1E69CD2D8], &qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1B4E91BEC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_1B4F68924();

    if (v6)
    {
      v7 = sub_1B4E91D98(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  sub_1B4F68E84();
  v10 = *(a1 + 24);
  sub_1B4F68774();
  v11 = sub_1B4F68EC4();
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  sub_1B4DE1BDC();
  while (1)
  {
    v15 = *(*(*(v3 + 48) + 8 * v13) + 24);

    LOBYTE(v15) = sub_1B4F68764();

    if (v15)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B4E86CE8();
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 8 * v13);
  sub_1B4E923D4(v13);
  result = v19;
  *v1 = v20;
  return result;
}

uint64_t sub_1B4E91D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;

  v6 = sub_1B4F688F4();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1B4E7CE00(v7, v6);
  v19 = v8;
  v9 = *(v8 + 40);
  sub_1B4F68E84();
  v10 = *(a2 + 24);

  sub_1B4F68774();
  v11 = sub_1B4F68EC4();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    sub_1B4DE1BDC();
    while (1)
    {
      v15 = *(*(*(v8 + 48) + 8 * v13) + 24);

      LOBYTE(v15) = sub_1B4F68764();

      if (v15)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v16 = *(*(v8 + 48) + 8 * v13);
  sub_1B4E923D4(v13);
  v17 = *(v16 + 24);
  result = sub_1B4F68764();
  if (result)
  {
    *v3 = v19;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B4E91F14(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v40 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    v18 = *v5;

    v19 = sub_1B4F688C4();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v42 = (v19 + 1) & v17;
      v41 = v8[2];
      v47 = v8[9];
      v43 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v41(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_1B4E952A0(v44, v45);
        v28 = sub_1B4F67F14();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v42)
        {
          if (v29 < v42 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v42 && a1 < v29)
        {
          goto LABEL_4;
        }

        v21 = v26;
        v32 = *(v26 + 48);
        v33 = v47 * a1;
        v34 = v32 + v47 * a1;
        v35 = v32 + v24 + v47;
        if (v47 * a1 < v24 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v22 = v25;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v33 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v13;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }
}

unint64_t sub_1B4E92210(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B4F688C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1B4F68E84();

        sub_1B4F67FE4();
        v15 = sub_1B4F68EC4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B4E923D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B4F688C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1B4F68E84();
        v13 = *(v12 + 24);

        sub_1B4F68774();
        v14 = sub_1B4F68EC4();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1B4E92590(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4F68CF4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B4F65C64();
        v6 = sub_1B4F68214();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1B4F65C64() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4E92964(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4E926BC(0, v2, 1, a1);
  }
}

void sub_1B4E926BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B4F65C64();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v52 = &v37 - v14;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v37 - v19;
  v39 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v48 = (v21 - 8);
    v49 = v22;
    v50 = v21;
    v45 = (v21 + 16);
    v46 = v20;
    v24 = (v20 + v23 * (a3 - 1));
    v44 = -v23;
    v25 = a1 - a3;
    v38 = v23;
    v26 = v20 + v23 * a3;
LABEL_5:
    v42 = v24;
    v43 = a3;
    v40 = v26;
    v41 = v25;
    v53 = v25;
    v27 = v24;
    while (1)
    {
      v28 = v51;
      v29 = v49;
      (v49)(v51, v26, v8, v18);
      v30 = v52;
      v29(v52, v27, v8);
      v31 = sub_1B4F65C54();
      v32 = sub_1B4F65C54();
      v33 = *v48;
      (*v48)(v30, v8);
      v33(v28, v8);
      if (v31 >= v32)
      {
LABEL_4:
        a3 = v43 + 1;
        v24 = &v42[v38];
        v25 = v41 - 1;
        v26 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v26, v8);
      swift_arrayInitWithTakeFrontToBack();
      v34(v27, v35, v8);
      v27 += v44;
      v26 += v44;
      if (__CFADD__(v53++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4E92964(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v123 = a1;
  v9 = sub_1B4F65C64();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v127 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v137 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v143 = &v120 - v18;
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v19, v20);
  v142 = &v120 - v23;
  v24 = a3[1];
  v132 = v21;
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v132;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v26 = sub_1B4E9398C(v26);
    }

    v145 = v26;
    v116 = *(v26 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v26[16 * v116];
        v118 = *&v26[16 * v116 + 24];
        sub_1B4E93348(*a3 + *(v9 + 72) * v117, *a3 + *(v9 + 72) * *&v26[16 * v116 + 16], *a3 + *(v9 + 72) * v118, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1B4E9398C(v26);
        }

        if (v116 - 2 >= *(v26 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v26[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v145 = v26;
        sub_1B4E93900(v116 - 1);
        v26 = v145;
        v116 = *(v145 + 2);
        if (v116 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v121 = a4;
  v25 = 0;
  v140 = (v21 + 8);
  v141 = v21 + 16;
  v139 = (v21 + 32);
  v26 = MEMORY[0x1E69E7CC0];
  v125 = a3;
  v144 = v9;
  while (1)
  {
    v133 = v26;
    if (v25 + 1 >= v24)
    {
      v38 = v25 + 1;
    }

    else
    {
      v134 = v24;
      v122 = v6;
      v27 = *a3;
      v124 = v25;
      v28 = v132[9];
      v5 = &v27[v28 * (v25 + 1)];
      v29 = v27;
      v138 = v27;
      v30 = v9;
      v31 = v132[2];
      v32 = v142;
      v31(v142, v5, v30, v22);
      v33 = &v29[v28 * v25];
      v34 = v143;
      v130 = v31;
      (v31)(v143, v33, v30);
      v135 = sub_1B4F65C54();
      v131 = sub_1B4F65C54();
      v35 = v132[1];
      v35(v34, v30);
      v129 = v35;
      v35(v32, v30);
      v36 = v124 + 2;
      v136 = v28;
      v37 = &v138[v28 * (v124 + 2)];
      while (1)
      {
        v38 = v134;
        if (v134 == v36)
        {
          break;
        }

        v39 = v130;
        LODWORD(v138) = v135 < v131;
        v40 = v142;
        v41 = v144;
        (v130)(v142, v37, v144);
        v42 = v143;
        v39(v143, v5, v41);
        v43 = sub_1B4F65C54();
        v44 = sub_1B4F65C54();
        v45 = v129;
        (v129)(v42, v41);
        v45(v40, v41);
        v26 = v133;
        ++v36;
        v37 += v136;
        v5 += v136;
        if (((v138 ^ (v43 >= v44)) & 1) == 0)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v6 = v122;
      v25 = v124;
      a3 = v125;
      v9 = v144;
      if (v135 < v131)
      {
        if (v38 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v38)
        {
          v46 = v136 * (v38 - 1);
          v5 = v38 * v136;
          v134 = v38;
          v47 = v38;
          v48 = v124;
          v49 = v124 * v136;
          do
          {
            if (v48 != --v47)
            {
              v50 = *a3;
              if (!v50)
              {
                goto LABEL_129;
              }

              v51 = *v139;
              (*v139)(v127, &v50[v49], v9);
              if (v49 < v46 || &v50[v49] >= &v50[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v51(&v50[v46], v127, v9);
              a3 = v125;
              v26 = v133;
            }

            ++v48;
            v46 -= v136;
            v5 -= v136;
            v49 += v136;
          }

          while (v48 < v47);
          v6 = v122;
          v25 = v124;
          v38 = v134;
        }
      }
    }

    v52 = a3[1];
    if (v38 < v52)
    {
      if (__OFSUB__(v38, v25))
      {
        goto LABEL_122;
      }

      if (v38 - v25 < v121)
      {
        if (__OFADD__(v25, v121))
        {
          goto LABEL_124;
        }

        if (v25 + v121 >= v52)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v25 + v121;
        }

        if (v5 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1B4E78A4C(0, *(v26 + 2) + 1, 1, v26);
    }

    v54 = *(v26 + 2);
    v53 = *(v26 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v26 = sub_1B4E78A4C((v53 > 1), v54 + 1, 1, v26);
    }

    *(v26 + 2) = v55;
    v56 = &v26[16 * v54];
    *(v56 + 4) = v25;
    *(v56 + 5) = v5;
    v57 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v128 = v5;
    if (v54)
    {
      while (1)
      {
        v5 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v26 + 4);
          v59 = *(v26 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v26[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v26[16 * v5 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v5 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v26[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v26[16 * v5];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v5 - 1;
        if (v5 - 1 >= v55)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v26[16 * v95 + 32];
        v97 = *&v26[16 * v5 + 40];
        sub_1B4E93348(*a3 + v132[9] * v96, *a3 + v132[9] * *&v26[16 * v5 + 32], *a3 + v132[9] * v97, v57);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1B4E9398C(v26);
        }

        if (v95 >= *(v26 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v26[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v145 = v26;
        sub_1B4E93900(v5);
        v26 = v145;
        v55 = *(v145 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v26[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v26[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v26[16 * v5 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v5 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v24 = a3[1];
    v25 = v128;
    if (v128 >= v24)
    {
      goto LABEL_94;
    }
  }

  v122 = v6;
  v99 = *a3;
  v100 = v132[9];
  v138 = v132[2];
  v101 = &v99[v100 * (v38 - 1)];
  v135 = -v100;
  v136 = v99;
  v124 = v25;
  v102 = (v25 - v38);
  v126 = v100;
  v103 = &v99[v38 * v100];
  v128 = v5;
LABEL_85:
  v134 = v38;
  v129 = v103;
  v130 = v102;
  v131 = v101;
  v104 = v101;
  while (1)
  {
    v105 = v142;
    v106 = v138;
    (v138)(v142, v103, v9, v22);
    v107 = v143;
    v106(v143, v104, v144);
    v108 = sub_1B4F65C54();
    v109 = sub_1B4F65C54();
    v110 = *v140;
    v111 = v107;
    v9 = v144;
    (*v140)(v111, v144);
    v110(v105, v9);
    if (v108 >= v109)
    {
LABEL_84:
      v38 = v134 + 1;
      v101 = v131 + v126;
      v102 = v130 - 1;
      v5 = v128;
      v103 = &v129[v126];
      if (v134 + 1 != v128)
      {
        goto LABEL_85;
      }

      v6 = v122;
      v25 = v124;
      a3 = v125;
      v26 = v133;
      if (v128 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v112 = *v139;
    v113 = v137;
    (*v139)(v137, v103, v9);
    swift_arrayInitWithTakeFrontToBack();
    v112(v104, v113, v9);
    v104 += v135;
    v103 += v135;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1B4E93348(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = sub_1B4F65C64();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v64, v10);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v60 = &v50 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v16;
  v67 = a1;
  v66 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v20;
    if (v20 >= 1)
    {
      v35 = -v16;
      v54 = a4;
      v55 = (v8 + 16);
      v53 = (v8 + 8);
      v36 = v34;
      v63 = a1;
      v56 = v35;
      do
      {
        v51 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v39 = a3;
        v57 = v37;
        v58 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v67 = v37;
            v65 = v51;
            goto LABEL_58;
          }

          v40 = v39;
          v52 = v34;
          v62 = v39 + v35;
          v41 = v36 + v35;
          v42 = *v55;
          v43 = v60;
          v44 = v36 + v35;
          v45 = v36;
          v46 = v64;
          (*v55)(v60, v44, v64);
          v47 = v61;
          (v42)(v61, v38, v46);
          v59 = sub_1B4F65C54();
          v48 = sub_1B4F65C54();
          v49 = *v53;
          (*v53)(v47, v46);
          v49(v43, v46);
          if (v59 < v48)
          {
            break;
          }

          v34 = v41;
          v39 = v62;
          if (v40 < v45 || v62 >= v45)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v58;
            a1 = v63;
          }

          else
          {
            v38 = v58;
            a1 = v63;
            if (v40 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v41;
          v35 = v56;
          v37 = v57;
          if (v41 <= v54)
          {
            a2 = v57;
            goto LABEL_57;
          }
        }

        v36 = v45;
        if (v40 < v57 || v62 >= v57)
        {
          a3 = v62;
          a2 = v58;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v63;
          v34 = v52;
          v35 = v56;
        }

        else
        {
          a3 = v62;
          a2 = v58;
          a1 = v63;
          v34 = v52;
          v35 = v56;
          if (v40 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v54);
    }

LABEL_57:
    v67 = a2;
    v65 = v34;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v19;
    v65 = a4 + v19;
    v62 = a3;
    if (v19 >= 1 && a2 < a3)
    {
      v22 = *(v8 + 16);
      v57 = v16;
      v58 = v8 + 16;
      v55 = (v8 + 8);
      v56 = v22;
      do
      {
        v63 = a1;
        v23 = v60;
        v24 = v64;
        v25 = v56;
        v56(v60, a2, v64);
        v26 = v61;
        v25(v61, a4, v24);
        v27 = a2;
        v28 = sub_1B4F65C54();
        v29 = sub_1B4F65C54();
        v30 = *v55;
        (*v55)(v26, v24);
        v30(v23, v24);
        if (v28 >= v29)
        {
          v31 = v57;
          v33 = a4 + v57;
          v32 = v63;
          if (v63 < a4 || v63 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v27;
          }

          else
          {
            a2 = v27;
            if (v63 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v33;
          a4 += v31;
        }

        else
        {
          v31 = v57;
          a2 = v27 + v57;
          v32 = v63;
          if (v63 < v27 || v63 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v63 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v32 + v31;
        v67 = a1;
      }

      while (a4 < v59 && a2 < v62);
    }
  }

LABEL_58:
  sub_1B4E939A0(&v67, &v66, &v65);
}

uint64_t sub_1B4E93900(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B4E9398C(v3);
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

uint64_t sub_1B4E939A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1B4F65C64();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1B4E93A84(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v44 = a5(0);
  v46 = *(v44 - 8);
  v9 = *(v46 + 64);
  v11 = MEMORY[0x1EEE9AC00](v44, v10);
  v45 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11, v13);
  v43 = &v37 - v15;
  v16 = a4 + 56;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v35 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v16;
    *(a1 + 16) = ~v17;
    *(a1 + 24) = v35;
    *(a1 + 32) = v19;
    return a3;
  }

  if (!a3)
  {
    v35 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = -1 << *(a4 + 32);
    v38 = a1;
    result = 0;
    v20 = 0;
    v21 = (63 - v17) >> 6;
    v39 = v46 + 32;
    v40 = v46 + 16;
    a1 = 1;
    v41 = a4 + 56;
    v42 = a3;
    v22 = v43;
    while (v19)
    {
      v48 = a2;
LABEL_15:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v47 = v20;
      v26 = a4;
      v27 = *(a4 + 48);
      v28 = v45;
      v29 = v46;
      v30 = *(v46 + 72);
      v31 = v44;
      (*(v46 + 16))(v45, v27 + v30 * (v25 | (v20 << 6)), v44);
      v32 = *(v29 + 32);
      v32(v22, v28, v31);
      v33 = v48;
      v32(v48, v22, v31);
      a3 = v42;
      if (a1 == v42)
      {
        v17 = v37;
        a1 = v38;
        a4 = v26;
        v35 = v47;
        v16 = v41;
        goto LABEL_25;
      }

      a2 = &v33[v30];
      result = a1;
      v34 = __OFADD__(a1++, 1);
      a4 = v26;
      v20 = v47;
      v16 = v41;
      if (v34)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v16 + 8 * v24);
      ++v23;
      if (v19)
      {
        v48 = a2;
        v20 = v24;
        goto LABEL_15;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v36 = v20 + 1;
    }

    else
    {
      v36 = v21;
    }

    v35 = v36 - 1;
    a3 = result;
    v17 = v37;
    a1 = v38;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B4E93DDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48[2] = *MEMORY[0x1E69E9840];
  v42 = sub_1B4F679C4();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42, v8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v44 = a2;

  if (v10 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v47 = v3;
    v35 = &v35;
    v36 = v11;
    MEMORY[0x1EEE9AC00](v13, v14);
    v37 = &v35 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v12);
    v15 = 0;
    v43 = a1;
    v17 = *(a1 + 56);
    a1 += 56;
    v16 = v17;
    v18 = 1 << *(a1 - 24);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v21 = (v18 + 63) >> 6;
    v40 = v6 + 16;
    v38 = 0;
    v39 = v6 + 8;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v46 = (v20 - 1) & v20;
LABEL_12:
      v3 = v42;
      v25 = v22 | (v15 << 6);
      v11 = v41;
      (*(v6 + 16))(v41, *(v43 + 48) + *(v6 + 72) * v25, v42);
      v26 = sub_1B4F679B4();
      v45 = &v35;
      v48[0] = v26;
      v48[1] = v27;
      MEMORY[0x1EEE9AC00](v26, v27);
      *(&v35 - 2) = v48;
      v28 = v47;
      v12 = sub_1B4EBAEDC(sub_1B4E95280, (&v35 - 4), v44);
      v47 = v28;

      (*(v6 + 8))(v11, v3);
      v20 = v46;
      if ((v12 & 1) == 0)
      {
        *&v37[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_16:
          v30 = sub_1B4EE8688(v37, v36, v38, v43);

          goto LABEL_17;
        }
      }
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v21)
      {
        goto LABEL_16;
      }

      v24 = *(a1 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v46 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  v34 = v44;

  v30 = sub_1B4E8C954(v33, v11, a1, v34, MEMORY[0x1E69CD2D8], sub_1B4EE8688, MEMORY[0x1E69CD2B8], sub_1B4E9533C);

  MEMORY[0x1B8C831D0](v33, -1, -1);

LABEL_17:
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t sub_1B4E941EC(void *a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t (*a4)(void *))
{
  v48 = a3;
  v6 = v4;
  v53[2] = *MEMORY[0x1E69E9840];
  v47 = sub_1B4F67124();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v47, v11);
  v46 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;
  v50 = a2;

  if (v13 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v52 = v6;
    v39[1] = v39;
    v40 = v14;
    MEMORY[0x1EEE9AC00](v16, v17);
    v41 = v39 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v15);
    v42 = 0;
    v18 = 0;
    v49 = a1;
    a4 = (a1 + 7);
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & a1[7];
    v22 = (v19 + 63) >> 6;
    v44 = v9 + 8;
    v45 = v9 + 16;
    v23 = v9;
    while (v21)
    {
      v24 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
LABEL_12:
      v27 = v24 | (v18 << 6);
      v28 = v49[6];
      v29 = *(v23 + 72);
      v43 = v27;
      v14 = v46;
      v6 = v47;
      (*(v23 + 16))(v46, v28 + v29 * v27, v47);
      v30 = sub_1B4F67114();
      v15 = v31;
      a1 = v39;
      v53[0] = v30;
      v53[1] = v31;
      MEMORY[0x1EEE9AC00](v30, v31);
      v39[-2] = v53;
      v32 = v52;
      v9 = sub_1B4EBAEDC(v48, &v39[-4], v50);
      v52 = v32;

      (*(v23 + 8))(v14, v6);
      v21 = v51;
      if ((v9 & 1) == 0)
      {
        *&v41[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
LABEL_16:
          v34 = sub_1B4EE8360(v41, v40, v42, v49);

          goto LABEL_17;
        }
      }
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        goto LABEL_16;
      }

      v26 = *(a4 + v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v38 = v50;

  v34 = sub_1B4E8C954(v37, v14, a1, v38, MEMORY[0x1E69CCE28], sub_1B4EE8360, MEMORY[0x1E69CCE20], a4);

  MEMORY[0x1B8C831D0](v37, -1, -1);

LABEL_17:
  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

void sub_1B4E945E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t), uint64_t (*a8)(void *))
{
  v49 = a7;
  v50 = a8;
  v38 = a2;
  v39 = a6;
  v48 = a4;
  v40 = a1;
  v47 = a5(0);
  v9 = *(*(v47 - 8) + 64);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v47, v10);
  v45 = &v37 - v13;
  v46 = v11;
  v41 = 0;
  v14 = 0;
  v51 = a3;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v43 = v11 + 8;
  v44 = v11 + 16;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v14 << 6);
    v26 = *(v51 + 48);
    v27 = v45;
    v28 = v46;
    v29 = *(v46 + 72);
    v42 = v25;
    v30 = v47;
    v31 = (*(v46 + 16))(v45, v26 + v29 * v25, v47, v12);
    v53[0] = v49(v31);
    v53[1] = v32;
    MEMORY[0x1EEE9AC00](v53[0], v32);
    *(&v37 - 2) = v53;
    v33 = v54;
    v34 = sub_1B4EBAEDC(v50, (&v37 - 4), v48);
    v54 = v33;

    (*(v28 + 8))(v27, v30);
    v20 = v52;
    if ((v34 & 1) == 0)
    {
      *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_15:
        v36 = v51;

        v39(v40, v38, v41, v36);
        return;
      }
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      goto LABEL_15;
    }

    v24 = *(v16 + 8 * v14);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1B4E94874(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v37 = a5;
  v38 = a4;
  v31 = a1;
  v6 = sub_1B4F658C4();
  v7 = *(*(v6 - 8) + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v35 = v9;
  v36 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v34 = v9 + 16;
  v32 = 0;
  v33 = (v9 + 8);
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_12:
    v25 = v22 | (v13 << 6);
    (*(v35 + 16))(v12, *(v36 + 48) + *(v35 + 72) * v25, v6, v10);
    if (sub_1B4F658B4() == v38 && v26 == v37)
    {

      (*v33)(v12, v6);
    }

    else
    {
      v21 = sub_1B4F68D54();

      (*v33)(v12, v6);
      if ((v21 & 1) == 0)
      {
        *(v31 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_18:
          v28 = v36;

          sub_1B4EE8038(v31, v30, v32, v28);
          return;
        }
      }
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_18;
    }

    v24 = *(v15 + 8 * v13);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v19 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E94AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v40 = sub_1B4F658C4();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v40, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v12 = v10 & 0x3F;
  v13 = ((1 << v10) + 63) >> 6;
  v14 = 8 * v13;
  v38 = a3;

  if (v12 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31 = v13;
    v32 = v4;
    v30 = &v30;
    MEMORY[0x1EEE9AC00](v15, v16);
    v33 = &v30 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v14);
    v13 = 0;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 56);
    v4 = (v17 + 63) >> 6;
    v36 = v7 + 16;
    v37 = v7;
    v34 = 0;
    v35 = (v7 + 8);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_13:
      v7 = v20 | (v13 << 6);
      (*(v37 + 16))(v11, *(a1 + 48) + *(v37 + 72) * v7, v40);
      if (sub_1B4F658B4() == v39 && v23 == v38)
      {

        (*v35)(v11, v40);
      }

      else
      {
        v14 = sub_1B4F68D54();

        (*v35)(v11, v40);
        if ((v14 & 1) == 0)
        {
          *&v33[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
          if (__OFADD__(v34++, 1))
          {
            __break(1u);
LABEL_19:
            v25 = sub_1B4EE8038(v33, v31, v34, a1);

            goto LABEL_20;
          }
        }
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v4)
      {
        goto LABEL_19;
      }

      v22 = *(a1 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v19 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = v38;

  v25 = sub_1B4E8C8B0(v28, v13, a1, v39, v29);

  MEMORY[0x1B8C831D0](v28, -1, -1);

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t sub_1B4E94E9C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v22 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v21 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v18 = *(v5 + 16);
    v16 = v5 + 16;
    v17 = v18;
    v19 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    do
    {
      v17(v10, v19, v4);
      v22(v14, v10);
      result = (*(v16 - 8))(v14, v4);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  return result;
}

unint64_t sub_1B4E95094()
{
  result = qword_1EB8F5660;
  if (!qword_1EB8F5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5660);
  }

  return result;
}

uint64_t sub_1B4E95150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4E951B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4E95218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4E952A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Workout.applyingTimestampOffset(_:)()
{
  sub_1B4F67974();

  return sub_1B4F67994();
}

uint64_t sub_1B4E953B4()
{
  sub_1B4F67974();

  return sub_1B4F67994();
}

void sub_1B4E95410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(*(*(a3 + a4 - 24) - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v7);
  v11 = type metadata accessor for TestProperty();
  TestProperty.wrappedValue.setter(v9, v11);
}

void TestProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1B4F67F64();
  v16 = [v5 initWithSuiteName_];

  if (!v16)
  {
    v15 = *(a2 + 16);
    v13 = *(*(v15 - 8) + 8);
    v14 = a1;
    goto LABEL_6;
  }

  v7 = MobileGestalt_get_current_device();
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  MobileGestalt_get_deviceClassNumber();

  if (Platform.internalInstall.getter())
  {
    v17 = *v2;
    v9 = UserDefaultsKeys.rawValue.getter();
    v11 = a2 + 16;
    v10 = *(a2 + 16);
    (*(*(v11 + 8) + 16))(v16, v9, v12, v10);

    v13 = *(*(v10 - 8) + 8);
    v14 = a1;
    v15 = v10;
LABEL_6:

    v13(v14, v15);
    return;
  }

  (*(*(*(a2 + 16) - 8) + 8))(a1);
}

void (*TestProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v13 = *v2;
  static TestProperty.value(for:fallback:)(&v13, &v2[*(a2 + 44)], v8, *(a2 + 24), *(a2 + 32), v11);
  return sub_1B4E95804;
}

void sub_1B4E95804(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    TestProperty.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    TestProperty.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B4E958CC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x9D)
  {
    v7 = 157;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x9D)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 0x63)
      {
        return v15 - 98;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1B4E95A50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x9D)
  {
    v8 = 157;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x9D)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 98;
  }
}

uint64_t CatalogModality.metadata()()
{
  v0 = sub_1B4F64824();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C0, &qword_1B4F711A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  sub_1B4F65994();
  sub_1B4F659F4();
  sub_1B4F65974();
  sub_1B4F65A04();
  sub_1B4F65984();
  sub_1B4F65A14();
  return sub_1B4F66764();
}

uint64_t TransportDispatching.register<A>(event:handler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  (*(a6 + 8))(a4, a6);
  v15 = v13;
  TransportDispatchService.register<A>(event:handler:)(&v15, a2, a3, a5, a7, a8);
}

uint64_t TransportDispatching.register(event:handler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  (*(a5 + 8))(a4, a5);
  v10 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1B4F62074(&v10, sub_1B4E963E4, v8);
}

uint64_t TransportDispatching.register(request:handler:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1B4E95F94(a1, a2, a3, a4, a5, &unk_1F2CDCD30, sub_1B4E96400);
}

{
  return sub_1B4E95F94(a1, a2, a3, a4, a5, &unk_1F2CDCD58, sub_1B4E96408);
}

uint64_t sub_1B4E95F94(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1;
  (*(a5 + 8))(a4, a5);
  v13 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  sub_1B4F5F760(&v13, a7, v11);
}

uint64_t TransportDispatching.register<A>(request:handler:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1B4E9611C(a1, a2, a3, a4, a5, a6, a7, a8, TransportDispatchService.register<A>(request:handler:));
}

{
  return sub_1B4E9611C(a1, a2, a3, a4, a5, a6, a7, a8, TransportDispatchService.register<A>(request:handler:));
}

{
  return sub_1B4E9611C(a1, a2, a3, a4, a5, a6, a7, a8, TransportDispatchService.register<A>(request:handler:));
}

{
  return sub_1B4E9611C(a1, a2, a3, a4, a5, a6, a7, a8, TransportDispatchService.register<A>(request:handler:));
}

uint64_t sub_1B4E9611C(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int16 *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *a1;
  (*(a6 + 8))(a4, a6);
  v16 = v14;
  a9(&v16, a2, a3, a5, a7, a8);
}

uint64_t TransportDispatching.register<A, B>(request:handler:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return sub_1B4E9624C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, TransportDispatchService.register<A, B>(request:handler:));
}

{
  return sub_1B4E9624C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, TransportDispatchService.register<A, B>(request:handler:));
}

uint64_t sub_1B4E9624C(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(__int16 *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = *a1;
  (*(a7 + 8))(a4, a7);
  v19 = v16;
  a12(&v19, a2, a3, a5, a6, a8, a9, a10, a11);
}

id SessionDarwinNotification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SessionDarwinNotification.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionDarwinNotification();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SessionDarwinNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionDarwinNotification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t XPCStreamPublisher.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t XPCStreamPublisher.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t XPCStreamPublisher.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t XPCStreamPublisher.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall XPCStreamPublisher.publish(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8[0] = countAndFlagsBits;
  v8[1] = object;
  v7 = *(v5 + 8);

  v7(v8, &type metadata for XPCStreamEventReceived, &protocol witness table for XPCStreamEventReceived, ObjectType, v5);
}

uint64_t sub_1B4E9684C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  ObjectType = swift_getObjectType();
  v10[0] = a1;
  v10[1] = a2;
  v8 = *(v5 + 8);

  v8(v10, &type metadata for XPCStreamEventReceived, &protocol witness table for XPCStreamEventReceived, ObjectType, v5);
}

uint64_t MetricBackgroundAccountEventOccurred.backgroundAccountEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricBackgroundAccountEventOccurred.init(backgroundAccountEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F67104();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MetricBackgroundAccountEventOccurred()
{
  result = qword_1EDB70500;
  if (!qword_1EDB70500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E96B00()
{
  result = sub_1B4F67104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Subscription.init(handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = sub_1B4F67FA4();
  a5[1] = v10;
  result = (*(a4 + 24))(a3, a4);
  a5[2] = result;
  a5[3] = a1;
  a5[4] = a2;
  return result;
}

uint64_t Subscription.identifier.getter()
{
  v0 = sub_1B4DDC7B4();

  return v0;
}

uint64_t URL.init(templateURLString:pixelWidth:pixelHeight:cropCode:fileType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v41 = a7;
  v42 = a8;
  v40 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v39 - v18;
  v47 = a1;
  v48 = a2;
  sub_1B4DCAC7C();
  v20 = sub_1B4F68874();
  v22 = v21;

  if (!v22)
  {

    goto LABEL_5;
  }

  v39 = a9;
  v47 = v20;
  v48 = v22;
  v45 = 8222587;
  v46 = 0xE300000000000000;
  LODWORD(v43) = a3;
  v43 = sub_1B4F68D04();
  v44 = v23;
  v24 = sub_1B4F68864();
  v26 = v25;

  v47 = v24;
  v48 = v26;
  v45 = 8218747;
  v46 = 0xE300000000000000;
  LODWORD(v43) = a4;
  v43 = sub_1B4F68D04();
  v44 = v27;
  v28 = sub_1B4F68864();
  v30 = v29;

  v47 = v28;
  v48 = v30;
  v44 = a6;
  v45 = 8217467;
  v46 = 0xE300000000000000;
  v43 = v40;
  v31 = sub_1B4F68864();
  v33 = v32;

  v47 = v31;
  v48 = v33;
  v45 = 8218235;
  v46 = 0xE300000000000000;
  v43 = v41;
  v44 = v42;
  sub_1B4F68864();

  sub_1B4F64814();

  v34 = sub_1B4F64824();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v19, 1, v34))
  {
    sub_1B4E97050(v19);
    a9 = v39;
LABEL_5:
    v36 = sub_1B4F64824();
    return (*(*(v36 - 8) + 56))(a9, 1, 1, v36);
  }

  v38 = v39;
  (*(v35 + 32))(v39, v19, v34);
  return (*(v35 + 56))(v38, 0, 1, v34);
}

uint64_t sub_1B4E97050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Artwork.imageURL(cropCode:fileType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v40 - v13;
  v15 = sub_1B4F675D4();
  v17 = v16;
  result = sub_1B4F675B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  v19 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v45 = a1;
  result = sub_1B4F675C4();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v43 = a2;
  v44 = a3;
  v50 = v15;
  v51 = v17;
  sub_1B4DCAC7C();
  v21 = sub_1B4F68874();
  v23 = v22;

  if (!v23)
  {
LABEL_8:
    v38 = sub_1B4F64824();
    return (*(*(v38 - 8) + 56))(a5, 1, 1, v38);
  }

  v41 = a5;
  v50 = v21;
  v51 = v23;
  v48 = 8222587;
  v49 = 0xE300000000000000;
  LODWORD(v46) = v19;
  v24 = sub_1B4F68D04();
  v42 = a4;
  v46 = v24;
  v47 = v25;
  v26 = sub_1B4F68864();
  v28 = v27;

  v50 = v26;
  v51 = v28;
  v48 = 8218747;
  v49 = 0xE300000000000000;
  LODWORD(v46) = v20;
  v46 = sub_1B4F68D04();
  v47 = v29;
  v30 = sub_1B4F68864();
  v32 = v31;

  v50 = v30;
  v51 = v32;
  v48 = 8217467;
  v49 = 0xE300000000000000;
  v46 = v45;
  v47 = v43;
  v33 = sub_1B4F68864();
  v35 = v34;

  v50 = v33;
  v51 = v35;
  v48 = 8218235;
  v49 = 0xE300000000000000;
  v46 = v44;
  v47 = v42;
  sub_1B4F68864();

  sub_1B4F64814();

  v36 = sub_1B4F64824();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v14, 1, v36))
  {
    sub_1B4E97050(v14);
    a5 = v41;
    goto LABEL_8;
  }

  v39 = v41;
  (*(v37 + 32))(v41, v14, v36);
  return (*(v37 + 56))(v39, 0, 1, v36);
}

void *ScoreClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *ScoreClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t ScoreClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ScoreClient.insertScores(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F81D70;
  v6._object = 0x80000001B4F81D90;
  v6._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 234;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65304();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB380], MEMORY[0x1E69CB388], ObjectType, v8);
}

uint64_t ScoreClient.submitScores()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0x635374696D627573;
  v3._object = 0xEE0029287365726FLL;
  v4._object = 0x80000001B4F81D70;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 235;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t ScoreClient.fetchRemoteScores(request:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F81D70;
  v6._object = 0x80000001B4F81DB0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 236;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66024();
  v12 = sub_1B4F65AA4();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CBC58], MEMORY[0x1E69CBC60], MEMORY[0x1E69CB570], MEMORY[0x1E69CB578], ObjectType, v8);
}

uint64_t sub_1B4E979E4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F81D70;
  v6._object = 0x80000001B4F81D90;
  v6._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 234;
  v10 = *(v8 + 16);
  v11 = sub_1B4F65304();
  return v10(&v13, a1, v11, MEMORY[0x1E69CB380], MEMORY[0x1E69CB388], ObjectType, v8);
}

uint64_t sub_1B4E97B08()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0x635374696D627573;
  v3._object = 0xEE0029287365726FLL;
  v4._object = 0x80000001B4F81D70;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 235;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4E97BF8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F81D70;
  v6._object = 0x80000001B4F81DB0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 236;
  v10 = *(v8 + 32);
  v11 = sub_1B4F66024();
  v12 = sub_1B4F65AA4();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CBC58], MEMORY[0x1E69CBC60], MEMORY[0x1E69CB570], MEMORY[0x1E69CB578], ObjectType, v8);
}

id sub_1B4E97E34()
{
  [*&v0[OBJC_IVAR____TtC13SeymourClient12WiFiObserver_wifiInterface] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B4E97E80(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1B4E97F44(a1);
  }
}

void sub_1B4E97EDC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B4E97F44(void *a1)
{
  v3 = sub_1B4F67D54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4F67D74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v1[OBJC_IVAR____TtC13SeymourClient12WiFiObserver_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v1;
  aBlock[4] = sub_1B4E983BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_5;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = v1;
  sub_1B4F67D64();
  v21[1] = MEMORY[0x1E69E7CC0];
  sub_1B4DCD900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DCBA40();
  sub_1B4F688A4();
  MEMORY[0x1B8C81F10](0, v14, v8, v17);
  _Block_release(v17);
  (*(v4 + 8))(v8, v3);
  (*(v10 + 8))(v14, v9);
}

void sub_1B4E981BC(void *a1, uint64_t a2)
{
  if ([a1 type] == 1)
  {
    v4 = [*(a2 + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_wifiInterface) powerOn];
    *(a2 + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_isEnabled) = v4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B4EF7864();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6 = a1;
    oslog = sub_1B4F67C34();
    v7 = sub_1B4F685C4();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_1B4DC2000, oslog, v7, "WiFi interface received unhandled event: %{public}@", v8, 0xCu);
      sub_1B4E983C4(v9);
      MEMORY[0x1B8C831D0](v9, -1, -1);
      MEMORY[0x1B8C831D0](v8, -1, -1);
    }
  }
}

uint64_t sub_1B4E983C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6DF0, &qword_1B4F79210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SeymourClient::NetworkStatus_optional __swiftcall NetworkStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4F68C34();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4E98490(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C62616863616572;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6168636165726E75;
    v4 = 0xEB00000000656C62;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65526E6F69746361;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00646572697571;
  }

  v7 = 0x6C62616863616572;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6168636165726E75;
    v8 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65526E6F69746361;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00646572697571;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4F68D54();
  }

  return v11 & 1;
}

uint64_t sub_1B4E985B4()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4E98670()
{
  *v0;
  *v0;
  sub_1B4F67FE4();
}

uint64_t sub_1B4E98718()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

void sub_1B4E987DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646572697571;
  v4 = 0xE900000000000065;
  v5 = 0x6C62616863616572;
  if (v2 != 1)
  {
    v5 = 0x6168636165726E75;
    v4 = 0xEB00000000656C62;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65526E6F69746361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t NetworkStatus.description.getter()
{
  v1 = 0x6C62616863616572;
  if (*v0 != 1)
  {
    v1 = 0x6168636165726E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65526E6F69746361;
  }
}

unint64_t sub_1B4E988CC()
{
  result = qword_1EB8F5830;
  if (!qword_1EB8F5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5830);
  }

  return result;
}

uint64_t sub_1B4E98920()
{
  v1 = 0x6C62616863616572;
  if (*v0 != 1)
  {
    v1 = 0x6168636165726E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65526E6F69746361;
  }
}

uint64_t getEnumTagSinglePayload for HeartRateDeviceAvailabilityUpdated(unsigned __int8 *a1, unsigned int a2)
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

uint64_t Playback.applyingTimestampOffset(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v7 - v3;
  sub_1B4F67A04();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1B4F67A24();
  return sub_1B4E98B7C(v4);
}

uint64_t sub_1B4E98B7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E98BE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v7 - v3;
  sub_1B4F67A04();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1B4F67A24();
  return sub_1B4E98B7C(v4);
}

void *BookmarkClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E9BEEC(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4E98E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 40);
    v17 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v19 = a4(0);
    (*(*(v19 - 8) + 16))(v14, a1, v19);
    (*(v17 + 8))(v14, v10, a5, ObjectType, v17);
    swift_unknownObjectRelease();
    return sub_1B4E9C68C(v14, a6);
  }

  return result;
}

uint64_t BookmarkClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BookmarkClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t BookmarkClient.queryAllBookmarks()()
{
  v1 = v0;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703C0);
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F81EE0;
  v4._object = 0x80000001B4F81F10;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 45;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v10 = sub_1B4E9C110();
  v11 = sub_1B4E9C194();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t BookmarkClient.queryBookmarks(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F30;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v1 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v19 = 46;
  v18 = a1;
  v10 = *(v7 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4E9C2CC(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  v15 = sub_1B4E9C110();
  v16 = sub_1B4E9C194();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v7);
}

uint64_t BookmarkClient.queryBookmarks(mediaTypes:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F50;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v1 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v19 = 48;
  v18 = a1;
  v10 = *(v7 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5850, &qword_1B4F75218);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v13 = sub_1B4E9C348();
  v14 = sub_1B4E9C2CC(&qword_1EB8F5860, &qword_1EB8F5850, &qword_1B4F75218, sub_1B4E9C3CC);
  v15 = sub_1B4E9C110();
  v16 = sub_1B4E9C194();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v7);
}

uint64_t BookmarkClient.queryBookmarks(referenceTypes:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F70;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v1 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v19 = 56;
  v18 = a1;
  v10 = *(v7 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5870, &qword_1B4F75220);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v13 = sub_1B4E9C420();
  v14 = sub_1B4E9C2CC(&qword_1EB8F5880, &qword_1EB8F5870, &qword_1B4F75220, sub_1B4E9C4A4);
  v15 = sub_1B4E9C110();
  v16 = sub_1B4E9C194();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v7);
}

uint64_t BookmarkClient.queryBookmarkCount(mediaTypes:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F90;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 55;
  v15 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5850, &qword_1B4F75218);
  v12 = sub_1B4E9C348();
  v13 = sub_1B4E9C2CC(&qword_1EB8F5860, &qword_1EB8F5850, &qword_1B4F75218, sub_1B4E9C3CC);
  return v10(&v16, &v15, v11, MEMORY[0x1E69E6530], v12, v13, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t BookmarkClient.filterBookmarks(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81FB0;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 58;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65534();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v13 = sub_1B4E9C110();
  v14 = sub_1B4E9C194();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CB3F8], MEMORY[0x1E69CB400], v13, v14, ObjectType, v8);
}

uint64_t BookmarkClient.queryBookmarkCount(filter:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81FD0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 60;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65534();
  return v10(&v13, a1, v11, MEMORY[0x1E69E6530], MEMORY[0x1E69CB3F8], MEMORY[0x1E69CB400], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t BookmarkClient.queryBookmarkCount(referenceTypes:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._object = 0x80000001B4F81EE0;
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001B4F81FF0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 57;
  v15 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5870, &qword_1B4F75220);
  v12 = sub_1B4E9C420();
  v13 = sub_1B4E9C2CC(&qword_1EB8F5880, &qword_1EB8F5870, &qword_1B4F75220, sub_1B4E9C4A4);
  return v10(&v16, &v15, v11, MEMORY[0x1E69E6530], v12, v13, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t BookmarkClient.insertBookmarks(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82020;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 44;
  v15 = a1;
  v10 = *(v8 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v12 = sub_1B4E9C110();
  v13 = sub_1B4E9C194();
  return v10(&v16, &v15, v11, v12, v13, ObjectType, v8);
}

uint64_t BookmarkClient.removeBookmarks(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82040;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 47;
  v15 = a1;
  v10 = *(v8 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v12 = sub_1B4E9C110();
  v13 = sub_1B4E9C194();
  return v10(&v16, &v15, v11, v12, v13, ObjectType, v8);
}

uint64_t BookmarkClient.queryAllPlaylists()()
{
  v1 = v0;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703C0);
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F81EE0;
  v4._object = 0x80000001B4F82060;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 50;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v10 = sub_1B4E9C4F8();
  v11 = sub_1B4DDAC30();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t BookmarkClient.filterPlaylists(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82080;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 59;
  v10 = *(v8 + 32);
  v11 = sub_1B4F658A4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v13 = sub_1B4E9C4F8();
  v14 = sub_1B4DDAC30();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CB478], MEMORY[0x1E69CB480], v13, v14, ObjectType, v8);
}

uint64_t BookmarkClient.queryPlaylistCount(filter:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F820A0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 61;
  v10 = *(v8 + 32);
  v11 = sub_1B4F658A4();
  return v10(&v13, a1, v11, MEMORY[0x1E69E6530], MEMORY[0x1E69CB478], MEMORY[0x1E69CB480], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t BookmarkClient.queryPlaylist(playlistIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB703C0);
  v7._object = 0x80000001B4F81EE0;
  v8._object = 0x80000001B4F820C0;
  v7._countAndFlagsBits = 0xD000000000000022;
  v8._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 51;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F67A94();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v10);
}

uint64_t BookmarkClient.queryPlaylists(playlistIdentifiers:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._object = 0x80000001B4F81EE0;
  v6._countAndFlagsBits = 0xD000000000000024;
  v6._object = 0x80000001B4F820F0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v1 + 16);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v19 = 53;
  v18 = a1;
  v10 = *(v7 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4E9C2CC(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  v15 = sub_1B4E9C4F8();
  v16 = sub_1B4DDAC30();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v7);
}

uint64_t BookmarkClient.queryPlaylistCount()()
{
  v1 = v0;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703C0);
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F81EE0;
  v4._object = 0x80000001B4F82120;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 54;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t BookmarkClient.insertPlaylist(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82140;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 49;
  v10 = *(v8 + 16);
  v11 = sub_1B4F67A94();
  return v10(&v13, a1, v11, MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v8);
}

uint64_t BookmarkClient.deletePlaylist(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82160;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 52;
  v10 = *(v8 + 16);
  v11 = sub_1B4F67A94();
  return v10(&v13, a1, v11, MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v8);
}

uint64_t sub_1B4E9A814()
{
  v1 = *v0;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703C0);
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F81EE0;
  v4._object = 0x80000001B4F81F10;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 45;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v10 = sub_1B4E9C110();
  v11 = sub_1B4E9C194();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4E9A944(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F30;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v19 = 46;
  v18 = a1;
  v10 = *(v7 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4E9C2CC(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  v15 = sub_1B4E9C110();
  v16 = sub_1B4E9C194();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v7);
}

uint64_t sub_1B4E9AAE4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F50;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v19 = 48;
  v18 = a1;
  v10 = *(v7 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5850, &qword_1B4F75218);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v13 = sub_1B4E9C348();
  v14 = sub_1B4E9C2CC(&qword_1EB8F5860, &qword_1EB8F5850, &qword_1B4F75218, sub_1B4E9C3CC);
  v15 = sub_1B4E9C110();
  v16 = sub_1B4E9C194();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v7);
}

uint64_t sub_1B4E9AC84(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F90;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 55;
  v15 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5850, &qword_1B4F75218);
  v12 = sub_1B4E9C348();
  v13 = sub_1B4E9C2CC(&qword_1EB8F5860, &qword_1EB8F5850, &qword_1B4F75218, sub_1B4E9C3CC);
  return v10(&v16, &v15, v11, MEMORY[0x1E69E6530], v12, v13, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t sub_1B4E9AE08(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F70;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v19 = 56;
  v18 = a1;
  v10 = *(v7 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5870, &qword_1B4F75220);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v13 = sub_1B4E9C420();
  v14 = sub_1B4E9C2CC(&qword_1EB8F5880, &qword_1EB8F5870, &qword_1B4F75220, sub_1B4E9C4A4);
  v15 = sub_1B4E9C110();
  v16 = sub_1B4E9C194();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v7);
}

uint64_t sub_1B4E9AFA8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._object = 0x80000001B4F81EE0;
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001B4F81FF0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 57;
  v15 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5870, &qword_1B4F75220);
  v12 = sub_1B4E9C420();
  v13 = sub_1B4E9C2CC(&qword_1EB8F5880, &qword_1EB8F5870, &qword_1B4F75220, sub_1B4E9C4A4);
  return v10(&v16, &v15, v11, MEMORY[0x1E69E6530], v12, v13, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t sub_1B4E9B12C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81FB0;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 58;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65534();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v13 = sub_1B4E9C110();
  v14 = sub_1B4E9C194();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CB3F8], MEMORY[0x1E69CB400], v13, v14, ObjectType, v8);
}

uint64_t sub_1B4E9B288(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81FD0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 60;
  v10 = *(v8 + 32);
  v11 = sub_1B4F65534();
  return v10(&v13, a1, v11, MEMORY[0x1E69E6530], MEMORY[0x1E69CB3F8], MEMORY[0x1E69CB400], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t sub_1B4E9B3C0(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82080;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 59;
  v10 = *(v8 + 32);
  v11 = sub_1B4F658A4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v13 = sub_1B4E9C4F8();
  v14 = sub_1B4DDAC30();
  return v10(&v16, a1, v11, v12, MEMORY[0x1E69CB478], MEMORY[0x1E69CB480], v13, v14, ObjectType, v8);
}

uint64_t sub_1B4E9B51C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F820A0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 61;
  v10 = *(v8 + 32);
  v11 = sub_1B4F658A4();
  return v10(&v13, a1, v11, MEMORY[0x1E69E6530], MEMORY[0x1E69CB478], MEMORY[0x1E69CB480], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v8);
}

uint64_t sub_1B4E9B654(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB703C0);
  v7._object = 0x80000001B4F81EE0;
  v8._object = 0x80000001B4F820C0;
  v7._countAndFlagsBits = 0xD000000000000022;
  v8._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = 51;
  v15[0] = a1;
  v15[1] = a2;
  v12 = *(v10 + 32);
  v13 = sub_1B4F67A94();
  return v12(&v16, v15, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v10);
}

uint64_t sub_1B4E9B788()
{
  v1 = *v0;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703C0);
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F81EE0;
  v4._object = 0x80000001B4F82120;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 54;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t sub_1B4E9B88C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._object = 0x80000001B4F81EE0;
  v6._countAndFlagsBits = 0xD000000000000024;
  v6._object = 0x80000001B4F820F0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v5, v6);
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v19 = 53;
  v18 = a1;
  v10 = *(v7 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v13 = sub_1B4E9C248();
  v14 = sub_1B4E9C2CC(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  v15 = sub_1B4E9C4F8();
  v16 = sub_1B4DDAC30();
  return v10(&v19, &v18, v11, v12, v13, v14, v15, v16, ObjectType, v7);
}

uint64_t sub_1B4E9BA2C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82020;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 44;
  v15 = a1;
  v10 = *(v8 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v12 = sub_1B4E9C110();
  v13 = sub_1B4E9C194();
  return v10(&v16, &v15, v11, v12, v13, ObjectType, v8);
}

uint64_t sub_1B4E9BB68(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82140;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 49;
  v10 = *(v8 + 16);
  v11 = sub_1B4F67A94();
  return v10(&v13, a1, v11, MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v8);
}

uint64_t sub_1B4E9BC8C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82040;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 47;
  v15 = a1;
  v10 = *(v8 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v12 = sub_1B4E9C110();
  v13 = sub_1B4E9C194();
  return v10(&v16, &v15, v11, v12, v13, ObjectType, v8);
}

uint64_t sub_1B4E9BDC8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82160;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 52;
  v10 = *(v8 + 16);
  v11 = sub_1B4F67A94();
  return v10(&v13, a1, v11, MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v8);
}

void *sub_1B4E9BEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v13 = a1;
  v12 = 4;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F65E64();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4E9C6EC, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CB968], MEMORY[0x1E69CB970]);

  v13 = a1;
  v12 = 5;
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_1B4F65F44();
  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4E9C6F0, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CBB68], MEMORY[0x1E69CBB70]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E9C090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC5A60(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4E9C110()
{
  result = qword_1EB8F5838;
  if (!qword_1EB8F5838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B40, &qword_1B4F6E650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5838);
  }

  return result;
}

unint64_t sub_1B4E9C194()
{
  result = qword_1EB8F5840;
  if (!qword_1EB8F5840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B40, &qword_1B4F6E650);
    sub_1B4DDA840(&qword_1EB8F5848, MEMORY[0x1E69CD2D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5840);
  }

  return result;
}

unint64_t sub_1B4E9C248()
{
  result = qword_1EDB71460;
  if (!qword_1EDB71460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71460);
  }

  return result;
}

uint64_t sub_1B4E9C2CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4E9C348()
{
  result = qword_1EB8F5858;
  if (!qword_1EB8F5858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5850, &qword_1B4F75218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5858);
  }

  return result;
}

unint64_t sub_1B4E9C3CC()
{
  result = qword_1EB8F5868;
  if (!qword_1EB8F5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5868);
  }

  return result;
}

unint64_t sub_1B4E9C420()
{
  result = qword_1EB8F5878;
  if (!qword_1EB8F5878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5870, &qword_1B4F75220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5878);
  }

  return result;
}

unint64_t sub_1B4E9C4A4()
{
  result = qword_1EB8F5888;
  if (!qword_1EB8F5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5888);
  }

  return result;
}

unint64_t sub_1B4E9C4F8()
{
  result = qword_1EDB6DAD8;
  if (!qword_1EDB6DAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5890, &qword_1B4F75228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAD8);
  }

  return result;
}

uint64_t sub_1B4E9C68C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of SearchClientProtocol.fetchSearchLandingShelfTileDescriptors()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4E9CF24;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SearchClientProtocol.fetchSearchResults(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SearchClientProtocol.fetchSearchSuggestions(term:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B4DE0D94;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SearchClientProtocol.insertRecentSearchTerm(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SearchClientProtocol.deleteRecentSearchTerms(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE13F0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SearchClientProtocol.deleteAllRecentSearchTerms(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SearchClientProtocol.queryRecentSearchTerms(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4E2BDB0;

  return v11(a1, a2, a3);
}

uint64_t XPCStream.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCStream.replyRequiredArg.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

SeymourClient::XPCStream __swiftcall XPCStream.init(name:replyRequiredArg:)(Swift::String name, Swift::String_optional replyRequiredArg)
{
  v2->value = name;
  v2[1] = replyRequiredArg;
  result.replyRequiredArg = replyRequiredArg;
  result.name = name;
  return result;
}

uint64_t sub_1B4E9CF94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B4E9CFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CellularDataRestrictedState.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4E9D0C4()
{
  result = qword_1EB8F5898;
  if (!qword_1EB8F5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5898);
  }

  return result;
}

unint64_t sub_1B4E9D11C()
{
  result = qword_1EB8F58A0;
  if (!qword_1EB8F58A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F58A8, &qword_1B4F753A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F58A0);
  }

  return result;
}

void *ContentAvailabilityClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));
  sub_1B4DC9B7C();

  v8 = sub_1B4F68654();
  type metadata accessor for EventHub();
  v9 = swift_allocObject();
  v10 = sub_1B4E9E264(v8, 0, v9);
  v11 = swift_allocObject();
  v12 = sub_1B4E9E32C(v6, v10, v11);

  return v12;
}

uint64_t sub_1B4E9D328(uint64_t a1)
{
  v2 = type metadata accessor for ContentAvailabilityUpdated();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 40);
    v9 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v11 = sub_1B4F66184();
    (*(*(v11 - 8) + 16))(v6, a1, v11);
    (*(v9 + 8))(v6, v2, &protocol witness table for ContentAvailabilityUpdated, ObjectType, v9);
    swift_unknownObjectRelease();
    return sub_1B4E9E670(v6);
  }

  return result;
}

uint64_t sub_1B4E9D470(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);
    v4 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = sub_1B4F670E4();
    v6(a1, v7, &protocol witness table for AllowedContentRatingsUpdated, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B4E9D52C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);
    v5 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8[0] = v2;
    v8[1] = v1;
    v7 = *(v5 + 8);

    v7(v8, &type metadata for StorefrontLanguageUpdated, &protocol witness table for StorefrontLanguageUpdated, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B4E9D5F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 40);
    v1 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, &type metadata for SupportedDeviceChanged, &protocol witness table for SupportedDeviceChanged, ObjectType, v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ContentAvailabilityClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ContentAvailabilityClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ContentAvailabilityClient.fetchAvailableAudioLanguageCodes()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F821E0;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 122;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = sub_1B4E9C248();
  v11 = sub_1B4DCADC0(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t ContentAvailabilityClient.queryAllowedContentRatings()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82210;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 117;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F58B0, &qword_1B4F75418);
  v10 = sub_1B4E9E5A0();
  v11 = sub_1B4DCADC0(&qword_1EDB6DB30, &qword_1EB8F58B0, &qword_1B4F75418, sub_1B4DCAE3C);
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t ContentAvailabilityClient.queryContentAvailability()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82230;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 118;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66184();
  return v8(&v11, v9, MEMORY[0x1E69CBF20], MEMORY[0x1E69CBF28], ObjectType, v6);
}

uint64_t ContentAvailabilityClient.queryStorefrontLanguageCode()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82250;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 119;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v6);
}

uint64_t ContentAvailabilityClient.queryAccountContainsSupportedWatch()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82270;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 120;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v6);
}

uint64_t ContentAvailabilityClient.queryAccountContainsSupportedDevice()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F822A0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 121;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v6);
}

uint64_t sub_1B4E9DDF0()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F821E0;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 122;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = sub_1B4E9C248();
  v11 = sub_1B4DCADC0(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4E9DF54()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82250;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 119;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v6);
}

uint64_t sub_1B4E9E058()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82270;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 120;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v6);
}

uint64_t sub_1B4E9E160()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F822A0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 121;
  return (*(v6 + 24))(&v9, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v6);
}

uint64_t sub_1B4E9E264(uint64_t a1, char a2, uint64_t a3)
{
  v11 = &type metadata for DispatchTimerProvider;
  v12 = &protocol witness table for DispatchTimerProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51A8, &qword_1B4F71180);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = MEMORY[0x1E69E7CC8];
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  *(a3 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B0, &qword_1B4F71188);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *(a3 + 80) = v8;
  sub_1B4E48E04(&v10, a3 + 32);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  return a3;
}

void *sub_1B4E9E32C(uint64_t a1, uint64_t a2, void *a3)
{
  a3[2] = a1;
  a3[3] = &protocol witness table for XPCClient;
  a3[4] = &protocol witness table for XPCClient;
  a3[5] = a2;
  a3[6] = &protocol witness table for EventHub;
  ObjectType = swift_getObjectType();
  v14 = a1;
  v13 = 11;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = sub_1B4F66184();

  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4E9E6D0, v6, ObjectType, v7, &protocol witness table for XPCClient, MEMORY[0x1E69CBF20], MEMORY[0x1E69CBF28]);

  v14 = a1;
  v13 = 10;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = sub_1B4F670E4();
  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4E9E6D4, v8, ObjectType, v9, &protocol witness table for XPCClient, MEMORY[0x1E69CCDF0], MEMORY[0x1E69CCDF8]);

  v14 = a1;
  v13 = 13;
  v10 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4E9E6D8, v10, ObjectType, MEMORY[0x1E69E6158], &protocol witness table for XPCClient, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458]);

  v14 = a1;
  v13 = 14;
  v11 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v13, sub_1B4E9E6CC, v11, ObjectType, &protocol witness table for XPCClient);

  return a3;
}

unint64_t sub_1B4E9E5A0()
{
  result = qword_1EDB6DB38;
  if (!qword_1EDB6DB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F58B0, &qword_1B4F75418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB38);
  }

  return result;
}

uint64_t sub_1B4E9E670(uint64_t a1)
{
  v2 = type metadata accessor for ContentAvailabilityUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PaceMetric.applyingTimestampOffset(_:)()
{
  sub_1B4F64AE4();

  return sub_1B4F64AF4();
}

uint64_t sub_1B4E9E734()
{
  sub_1B4F64AE4();

  return sub_1B4F64AF4();
}

void *AdminClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *AdminClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t AdminClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AdminClient.executeScoresTasks()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F82320;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 233;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t AdminClient.deleteLocalScores()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F82340;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 237;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t AdminClient.pingServer(endpoint:)(char a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F82300;
  v6._object = 0x80000001B4F82360;
  v6._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12 = 281;
  v11 = a1 & 1;
  return (*(v8 + 32))(&v12, &v11, MEMORY[0x1E69CC250], MEMORY[0x1E69E6158], MEMORY[0x1E69CC240], MEMORY[0x1E69CC248], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t AdminClient.createRepresentativeDatabase()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F82380;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 280;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t AdminClient.requestPersistentStoreStatistics(requiredDataProtection:)(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F82300;
  v6._countAndFlagsBits = 0xD000000000000039;
  v6._object = 0x80000001B4F823A0;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 282;
  v15 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F58B8, &qword_1B4F754B8);
  v12 = sub_1B4E9F4D8();
  v13 = sub_1B4E9F554();
  return v10(&v16, &v15, MEMORY[0x1E69E6530], v11, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], v12, v13, ObjectType, v8);
}

uint64_t AdminClient.forceServerSyncBootstrap()()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F823E0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 263;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t AdminClient.queryEffectiveRestriction(for:)(char a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F82300;
  v6._object = 0x80000001B4F82400;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 283;
  v13 = a1 & 1;
  v10 = *(v8 + 32);
  v11 = sub_1B4F64D64();
  return v10(&v14, &v13, MEMORY[0x1E69CBFB0], v11, MEMORY[0x1E69CBFA0], MEMORY[0x1E69CBFA8], MEMORY[0x1E69CB088], MEMORY[0x1E69CB090], ObjectType, v8);
}

uint64_t sub_1B4E9F0B4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F82320;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 233;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4E9F1A4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F82340;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 237;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4E9F2B4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F823E0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 263;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4E9F3A4(char a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F82300;
  v6._object = 0x80000001B4F82400;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 283;
  v13 = a1 & 1;
  v10 = *(v8 + 32);
  v11 = sub_1B4F64D64();
  return v10(&v14, &v13, MEMORY[0x1E69CBFB0], v11, MEMORY[0x1E69CBFA0], MEMORY[0x1E69CBFA8], MEMORY[0x1E69CB088], MEMORY[0x1E69CB090], ObjectType, v8);
}

unint64_t sub_1B4E9F4D8()
{
  result = qword_1EB8F58C0;
  if (!qword_1EB8F58C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F58B8, &qword_1B4F754B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F58C0);
  }

  return result;
}

unint64_t sub_1B4E9F554()
{
  result = qword_1EB8F58C8;
  if (!qword_1EB8F58C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F58B8, &qword_1B4F754B8);
    sub_1B4E9F5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F58C8);
  }

  return result;
}

unint64_t sub_1B4E9F5D8()
{
  result = qword_1EB8F58D0;
  if (!qword_1EB8F58D0)
  {
    sub_1B4F66034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F58D0);
  }

  return result;
}

uint64_t HealthKitSessionReference.init(workout:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 metadata];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = sub_1B4F67EF4();

  if (!*(v6 + 16) || (v7 = sub_1B4DF4344(0xD000000000000022, 0x80000001B4F82450), (v8 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_1B4DC4F2C(*(v6 + 56) + 32 * v7, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v9 = [v3 metadata];

  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = sub_1B4F67EF4();

  if (!*(v10 + 16) || (v11 = sub_1B4DF4344(0xD000000000000029, 0x80000001B4F82480), (v12 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_1B4DC4F2C(*(v10 + 56) + 32 * v11, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

    goto LABEL_12;
  }

  sub_1B4F66B24();

  v13 = 0;
LABEL_13:
  v14 = sub_1B4F66B34();
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

void *Data.compressed(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1B4E9F94C(a1, a2, a3, &selRef_compressedDataUsingAlgorithm_error_);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *Data.decompressed(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1B4E9F94C(a1, a2, a3, &selRef_decompressedDataUsingAlgorithm_error_);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B4E9F94C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B4F64884();
  v12[0] = 0;
  v7 = [v6 *a4];

  v8 = v12[0];
  if (v7)
  {
    v9 = sub_1B4F64894();
  }

  else
  {
    v9 = v8;
    sub_1B4F647C4();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t CoachingEventStarted.coachingEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F652A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CoachingEventStarted.init(coachingEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CoachingEventStarted()
{
  result = qword_1EB8F58D8;
  if (!qword_1EB8F58D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E9FB84()
{
  result = sub_1B4F652A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MultiUserBeginActivityCancelled.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserBeginActivityCancelled.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserBeginActivityCancelled()
{
  result = qword_1EDB6E3A0;
  if (!qword_1EDB6E3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonalizationPrivacyPreferenceUpdated.init(preference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F673D4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PersonalizationPrivacyPreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F673D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for PersonalizationPrivacyPreferenceUpdated()
{
  result = qword_1EDB71598;
  if (!qword_1EDB71598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreMetricUpdated.scoreMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ScoreMetricUpdated.sessionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ScoreMetricUpdated() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ScoreMetricUpdated()
{
  result = qword_1EB8F58E8;
  if (!qword_1EB8F58E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreMetricUpdated.init(scoreMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F64E14();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ScoreMetricUpdated();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4EA0050()
{
  result = sub_1B4F64E14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MindfulMinutesMetric.applyingTimestampOffset(_:)()
{
  sub_1B4F66424();

  return sub_1B4F66444();
}

uint64_t sub_1B4EA011C()
{
  sub_1B4F66424();

  return sub_1B4F66444();
}

uint64_t sub_1B4EA0174(uint64_t a1)
{
  v38 = sub_1B4F64D24();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v38, v5);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v30 = v1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v7, 0);
    v41 = v42;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_1B4F688B4();
    v11 = result;
    v12 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v3;
    v34 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v15 = v37;
      v16 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v11, v38);
      v40 = sub_1B4F64D14();
      v18 = v17;
      result = (*(v3 + 8))(v15, v16);
      v19 = v41;
      v42 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B4E257A4((v20 > 1), v21 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v34;
      v23 = *(v34 + 8 * v14);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v27 = (v31 + 8 * v14);
        v3 = v33;
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1B4DF3104(v11, v39, 0);
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1B4DF3104(v11, v39, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v32)
      {
        return v41;
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

uint64_t CatalogProgram.reference()@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v2 = sub_1B4F64F74();
  v3 = *(v2 - 8);
  v123 = v2;
  v124 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v122 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4F647A4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1B4F67954();
  v107 = *(v121 - 1);
  v11 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v121, v12);
  v120 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1B4F64AC4();
  v106 = *(v119 - 1);
  v14 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v119, v15);
  v118 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1B4F65A34();
  v105 = *(v117 - 1);
  v17 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v117, v18);
  v116 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1B4F67B14();
  v20 = *(v115 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v115, v22);
  v114 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B4F65574();
  v108 = sub_1B4EA0174(v24);

  v111 = v1;
  v25 = sub_1B4F655D4();
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v125 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v26, 0);
    v28 = v125;
    v30 = *(v20 + 16);
    v29 = v20 + 16;
    v113 = v30;
    v31 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v104 = v25;
    v32 = v25 + v31;
    v112 = *(v29 + 56);
    v33 = (v29 - 8);
    do
    {
      v34 = v114;
      v35 = v115;
      v36 = v29;
      v113(v114, v32, v115);
      v37 = sub_1B4F67B04();
      v39 = v38;
      (*v33)(v34, v35);
      v125 = v28;
      v41 = v28[2];
      v40 = v28[3];
      if (v41 >= v40 >> 1)
      {
        sub_1B4E257A4((v40 > 1), v41 + 1, 1);
        v28 = v125;
      }

      v28[2] = v41 + 1;
      v42 = &v28[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
      v32 += v112;
      --v26;
      v29 = v36;
    }

    while (v26);
    v113 = v28;

    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v113 = MEMORY[0x1E69E7CC0];
  }

  v43 = sub_1B4F65554();
  v44 = *(v43 + 16);
  if (v44)
  {
    v125 = v27;
    sub_1B4E257A4(0, v44, 0);
    v45 = v125;
    v46 = *(v105 + 16);
    v47 = *(v105 + 80);
    v112 = v43;
    v48 = v43 + ((v47 + 32) & ~v47);
    v114 = *(v105 + 72);
    v115 = v46;
    v49 = (v105 + 8);
    do
    {
      v50 = v116;
      v51 = v117;
      (v115)(v116, v48, v117);
      v52 = sub_1B4F65974();
      v54 = v53;
      (*v49)(v50, v51);
      v125 = v45;
      v56 = v45[2];
      v55 = v45[3];
      if (v56 >= v55 >> 1)
      {
        sub_1B4E257A4((v55 > 1), v56 + 1, 1);
        v45 = v125;
      }

      v45[2] = v56 + 1;
      v57 = &v45[2 * v56];
      v57[4] = v52;
      v57[5] = v54;
      v48 += v114;
      --v44;
    }

    while (v44);
    v115 = v45;

    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v115 = MEMORY[0x1E69E7CC0];
  }

  v58 = sub_1B4F65564();
  v59 = *(v58 + 16);
  if (v59)
  {
    v125 = v27;
    sub_1B4E257A4(0, v59, 0);
    v60 = v125;
    v61 = *(v106 + 16);
    v62 = *(v106 + 80);
    v114 = v58;
    v63 = v58 + ((v62 + 32) & ~v62);
    v116 = *(v106 + 72);
    v117 = v61;
    v64 = (v106 + 8);
    do
    {
      v65 = v118;
      v66 = v119;
      (v117)(v118, v63, v119);
      v67 = sub_1B4F64AB4();
      v69 = v68;
      (*v64)(v65, v66);
      v125 = v60;
      v71 = v60[2];
      v70 = v60[3];
      if (v71 >= v70 >> 1)
      {
        sub_1B4E257A4((v70 > 1), v71 + 1, 1);
        v60 = v125;
      }

      v60[2] = v71 + 1;
      v72 = &v60[2 * v71];
      v72[4] = v67;
      v72[5] = v69;
      v63 += v116;
      --v59;
    }

    while (v59);
    v117 = v60;

    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v117 = MEMORY[0x1E69E7CC0];
  }

  v73 = sub_1B4F655C4();
  v74 = *(v73 + 16);
  if (v74)
  {
    v125 = v27;
    sub_1B4E257A4(0, v74, 0);
    v75 = v125;
    v76 = *(v107 + 16);
    v77 = *(v107 + 80);
    v116 = v73;
    v78 = v73 + ((v77 + 32) & ~v77);
    v118 = *(v107 + 72);
    v119 = v76;
    v79 = (v107 + 8);
    do
    {
      v80 = v120;
      v81 = v121;
      (v119)(v120, v78, v121);
      v82 = sub_1B4F678D4();
      v84 = v83;
      (*v79)(v80, v81);
      v125 = v75;
      v86 = v75[2];
      v85 = v75[3];
      if (v86 >= v85 >> 1)
      {
        sub_1B4E257A4((v85 > 1), v86 + 1, 1);
        v75 = v125;
      }

      v75[2] = v86 + 1;
      v87 = &v75[2 * v86];
      v87[4] = v82;
      v87[5] = v84;
      v78 += v118;
      --v74;
    }

    while (v74);

    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v88 = sub_1B4F655B4();
  v89 = *(v88 + 16);
  if (v89)
  {
    v125 = v27;
    sub_1B4E257A4(0, v89, 0);
    v90 = v125;
    v91 = *(v124 + 16);
    v92 = *(v124 + 80);
    v119 = v88;
    v93 = v88 + ((v92 + 32) & ~v92);
    v120 = *(v124 + 72);
    v121 = v91;
    v124 += 16;
    v94 = (v124 - 8);
    do
    {
      v95 = v122;
      v96 = v123;
      (v121)(v122, v93, v123);
      v97 = sub_1B4F64F64();
      v99 = v98;
      (*v94)(v95, v96);
      v125 = v90;
      v101 = v90[2];
      v100 = v90[3];
      if (v101 >= v100 >> 1)
      {
        sub_1B4E257A4((v100 > 1), v101 + 1, 1);
        v90 = v125;
      }

      v90[2] = v101 + 1;
      v102 = &v90[2 * v101];
      v102[4] = v97;
      v102[5] = v99;
      v93 += v120;
      --v89;
    }

    while (v89);
  }

  sub_1B4F65594();
  sub_1B4F65584();
  sub_1B4F65544();
  sub_1B4F655A4();
  return sub_1B4F66774();
}

uint64_t ActivityRings.applyingTimestampOffset(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4148, &qword_1B4F6A648);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4150, &qword_1B4F6A650);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v18 - v12;
  v14 = sub_1B4F65CA4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = sub_1B4F64EF4();
  v16 = *(*(v15 - 8) + 56);
  v16(v8, 1, 1, v15);
  v16(v4, 1, 1, v15);
  sub_1B4F65134();
  sub_1B4F65174();
  sub_1B4DD2BC4(v4, &qword_1EB8F4148, &qword_1B4F6A648);
  sub_1B4DD2BC4(v8, &qword_1EB8F4148, &qword_1B4F6A648);
  return sub_1B4DD2BC4(v13, &qword_1EB8F4150, &qword_1B4F6A650);
}

uint64_t sub_1B4EA0FD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4148, &qword_1B4F6A648);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4150, &qword_1B4F6A650);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v18 - v12;
  v14 = sub_1B4F65CA4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = sub_1B4F64EF4();
  v16 = *(*(v15 - 8) + 56);
  v16(v8, 1, 1, v15);
  v16(v4, 1, 1, v15);
  sub_1B4F65134();
  sub_1B4F65174();
  sub_1B4DD2BC4(v4, &qword_1EB8F4148, &qword_1B4F6A648);
  sub_1B4DD2BC4(v8, &qword_1EB8F4148, &qword_1B4F6A648);
  return sub_1B4DD2BC4(v13, &qword_1EB8F4150, &qword_1B4F6A650);
}

unint64_t sub_1B4EA1208(char a1)
{
  result = 0x7953726576726573;
  switch(a1)
  {
    case 1:
    case 5:
    case 16:
    case 24:
    case 42:
      result = 0xD000000000000020;
      break;
    case 2:
    case 39:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 9:
    case 19:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
    case 20:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 10:
    case 23:
      result = 0xD000000000000011;
      break;
    case 11:
    case 26:
    case 36:
    case 37:
    case 43:
      result = 0xD000000000000016;
      break;
    case 12:
    case 28:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000024;
      break;
    case 14:
    case 40:
    case 46:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000023;
      break;
    case 17:
    case 18:
    case 30:
      result = 0xD000000000000019;
      break;
    case 21:
    case 22:
    case 44:
      result = 0xD00000000000001ALL;
      break;
    case 25:
      return result;
    case 27:
      result = 0xD000000000000026;
      break;
    case 29:
      result = 0xD000000000000021;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 32:
      result = 1936746868;
      break;
    case 33:
      result = 0x6573705573706974;
      break;
    case 34:
      result = 0xD000000000000015;
      break;
    case 35:
      result = 0xD000000000000015;
      break;
    case 38:
      result = 0x724265746F6D6572;
      break;
    case 41:
      result = 0xD000000000000015;
      break;
    case 45:
      result = 0x5374756F6B726F77;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1B4EA1644(uint64_t a1)
{
  v2 = sub_1B4EA630C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1680(uint64_t a1)
{
  v2 = sub_1B4EA630C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA16BC(uint64_t a1)
{
  v2 = sub_1B4EA5B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA16F8(uint64_t a1)
{
  v2 = sub_1B4EA5B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1734(uint64_t a1)
{
  v2 = sub_1B4EA5AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1770(uint64_t a1)
{
  v2 = sub_1B4EA5AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA17AC(uint64_t a1)
{
  v2 = sub_1B4EA645C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA17E8(uint64_t a1)
{
  v2 = sub_1B4EA645C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1824(uint64_t a1)
{
  v2 = sub_1B4EA66A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1860(uint64_t a1)
{
  v2 = sub_1B4EA66A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA189C(uint64_t a1)
{
  v2 = sub_1B4EA5E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA18D8(uint64_t a1)
{
  v2 = sub_1B4EA5E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1914(uint64_t a1)
{
  v2 = sub_1B4EA5934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1950(uint64_t a1)
{
  v2 = sub_1B4EA5934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA198C(uint64_t a1)
{
  v2 = sub_1B4EA6264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA19C8(uint64_t a1)
{
  v2 = sub_1B4EA6264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1A04(uint64_t a1)
{
  v2 = sub_1B4EA5838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1A40(uint64_t a1)
{
  v2 = sub_1B4EA5838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1A7C(uint64_t a1)
{
  v2 = sub_1B4EA65AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1AB8(uint64_t a1)
{
  v2 = sub_1B4EA65AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1AF4(uint64_t a1)
{
  v2 = sub_1B4EA588C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1B30(uint64_t a1)
{
  v2 = sub_1B4EA588C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1B6C(uint64_t a1)
{
  v2 = sub_1B4EA64B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1BA8(uint64_t a1)
{
  v2 = sub_1B4EA64B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1BE4(uint64_t a1)
{
  v2 = sub_1B4EA61BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1C20(uint64_t a1)
{
  v2 = sub_1B4EA61BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4EABD14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4EA1C98(uint64_t a1)
{
  v2 = sub_1B4EA573C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1CD4(uint64_t a1)
{
  v2 = sub_1B4EA573C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1D10(uint64_t a1)
{
  v2 = sub_1B4EA5F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1D4C(uint64_t a1)
{
  v2 = sub_1B4EA5F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1D88(uint64_t a1)
{
  v2 = sub_1B4EA63B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1DC4(uint64_t a1)
{
  v2 = sub_1B4EA63B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1E00(uint64_t a1)
{
  v2 = sub_1B4EA6360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1E3C(uint64_t a1)
{
  v2 = sub_1B4EA6360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1E78(uint64_t a1)
{
  v2 = sub_1B4EA6210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1EB4(uint64_t a1)
{
  v2 = sub_1B4EA6210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1EF0(uint64_t a1)
{
  v2 = sub_1B4EA6018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1F2C(uint64_t a1)
{
  v2 = sub_1B4EA6018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1F68(uint64_t a1)
{
  v2 = sub_1B4EA5D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1FA4(uint64_t a1)
{
  v2 = sub_1B4EA5D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1FE0(uint64_t a1)
{
  v2 = sub_1B4EA62B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA201C(uint64_t a1)
{
  v2 = sub_1B4EA62B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2058(uint64_t a1)
{
  v2 = sub_1B4EA5CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2094(uint64_t a1)
{
  v2 = sub_1B4EA5CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA20D0(uint64_t a1)
{
  v2 = sub_1B4EA59DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA210C(uint64_t a1)
{
  v2 = sub_1B4EA59DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2148(uint64_t a1)
{
  v2 = sub_1B4EA6168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2184(uint64_t a1)
{
  v2 = sub_1B4EA6168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA21C0(uint64_t a1)
{
  v2 = sub_1B4EA6408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA21FC(uint64_t a1)
{
  v2 = sub_1B4EA6408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2238(uint64_t a1)
{
  v2 = sub_1B4EA60C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2274(uint64_t a1)
{
  v2 = sub_1B4EA60C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA22B0(uint64_t a1)
{
  v2 = sub_1B4EA58E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA22EC(uint64_t a1)
{
  v2 = sub_1B4EA58E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2328(uint64_t a1)
{
  v2 = sub_1B4EA5FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2364(uint64_t a1)
{
  v2 = sub_1B4EA5FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA23A0(uint64_t a1)
{
  v2 = sub_1B4EA5F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA23DC(uint64_t a1)
{
  v2 = sub_1B4EA5F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2418(uint64_t a1)
{
  v2 = sub_1B4EA5790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2454(uint64_t a1)
{
  v2 = sub_1B4EA5790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2490(uint64_t a1)
{
  v2 = sub_1B4EA6558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA24CC(uint64_t a1)
{
  v2 = sub_1B4EA6558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2508(uint64_t a1)
{
  v2 = sub_1B4EA6654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2544(uint64_t a1)
{
  v2 = sub_1B4EA6654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2580(uint64_t a1)
{
  v2 = sub_1B4EA5A30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA25BC(uint64_t a1)
{
  v2 = sub_1B4EA5A30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA25F8(uint64_t a1)
{
  v2 = sub_1B4EA5DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2634(uint64_t a1)
{
  v2 = sub_1B4EA5DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2670(uint64_t a1)
{
  v2 = sub_1B4EA5E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA26AC(uint64_t a1)
{
  v2 = sub_1B4EA5E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA26E8(uint64_t a1)
{
  v2 = sub_1B4EA606C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2724(uint64_t a1)
{
  v2 = sub_1B4EA606C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2760(uint64_t a1)
{
  v2 = sub_1B4EA6600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA279C(uint64_t a1)
{
  v2 = sub_1B4EA6600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA27D8(uint64_t a1)
{
  v2 = sub_1B4EA5EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2814(uint64_t a1)
{
  v2 = sub_1B4EA5EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2850(uint64_t a1)
{
  v2 = sub_1B4EA6504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA288C(uint64_t a1)
{
  v2 = sub_1B4EA6504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA28C8(uint64_t a1)
{
  v2 = sub_1B4EA5D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2904(uint64_t a1)
{
  v2 = sub_1B4EA5D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2940(uint64_t a1)
{
  v2 = sub_1B4EA6114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA297C(uint64_t a1)
{
  v2 = sub_1B4EA6114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA29B8(uint64_t a1)
{
  v2 = sub_1B4EA5C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA29F4(uint64_t a1)
{
  v2 = sub_1B4EA5C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2A30(uint64_t a1)
{
  v2 = sub_1B4EA5BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2A6C(uint64_t a1)
{
  v2 = sub_1B4EA5BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2AA8(uint64_t a1)
{
  v2 = sub_1B4EA5A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2AE4(uint64_t a1)
{
  v2 = sub_1B4EA5A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2B20(uint64_t a1)
{
  v2 = sub_1B4EA5B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2B5C(uint64_t a1)
{
  v2 = sub_1B4EA5B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2B98(uint64_t a1)
{
  v2 = sub_1B4EA5988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2BD4(uint64_t a1)
{
  v2 = sub_1B4EA5988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2C10(uint64_t a1)
{
  v2 = sub_1B4EA5C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2C4C(uint64_t a1)
{
  v2 = sub_1B4EA5C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2C88(uint64_t a1)
{
  v2 = sub_1B4EA57E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2CC4(uint64_t a1)
{
  v2 = sub_1B4EA57E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Feature.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F58F8, &qword_1B4F75660);
  v345 = *(v4 - 8);
  v346 = v4;
  v5 = *(v345 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v344 = &v209 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5900, &qword_1B4F75668);
  v342 = *(v8 - 8);
  v343 = v8;
  v9 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v341 = &v209 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5908, &qword_1B4F75670);
  v339 = *(v12 - 8);
  v340 = v12;
  v13 = *(v339 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v338 = &v209 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5910, &qword_1B4F75678);
  v336 = *(v16 - 8);
  v337 = v16;
  v17 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v335 = &v209 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5918, &qword_1B4F75680);
  v333 = *(v20 - 8);
  v334 = v20;
  v21 = *(v333 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v332 = &v209 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5920, &qword_1B4F75688);
  v330 = *(v24 - 8);
  v331 = v24;
  v25 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v329 = &v209 - v27;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5928, &qword_1B4F75690);
  v327 = *(v328 - 8);
  v28 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v328, v29);
  v326 = &v209 - v30;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5930, &qword_1B4F75698);
  v324 = *(v325 - 8);
  v31 = *(v324 + 64);
  MEMORY[0x1EEE9AC00](v325, v32);
  v323 = &v209 - v33;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5938, &qword_1B4F756A0);
  v321 = *(v322 - 8);
  v34 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v322, v35);
  v320 = &v209 - v36;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5940, &qword_1B4F756A8);
  v318 = *(v319 - 8);
  v37 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v319, v38);
  v317 = &v209 - v39;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5948, &qword_1B4F756B0);
  v315 = *(v316 - 8);
  v40 = *(v315 + 64);
  MEMORY[0x1EEE9AC00](v316, v41);
  v314 = &v209 - v42;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5950, &qword_1B4F756B8);
  v312 = *(v313 - 8);
  v43 = *(v312 + 64);
  MEMORY[0x1EEE9AC00](v313, v44);
  v311 = &v209 - v45;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5958, &qword_1B4F756C0);
  v309 = *(v310 - 8);
  v46 = *(v309 + 64);
  MEMORY[0x1EEE9AC00](v310, v47);
  v308 = &v209 - v48;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5960, &qword_1B4F756C8);
  v306 = *(v307 - 8);
  v49 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v307, v50);
  v305 = &v209 - v51;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5968, &qword_1B4F756D0);
  v303 = *(v304 - 8);
  v52 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v304, v53);
  v302 = &v209 - v54;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5970, &qword_1B4F756D8);
  v300 = *(v301 - 8);
  v55 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v301, v56);
  v299 = &v209 - v57;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5978, &qword_1B4F756E0);
  v297 = *(v298 - 8);
  v58 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v298, v59);
  v296 = &v209 - v60;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5980, &qword_1B4F756E8);
  v294 = *(v295 - 8);
  v61 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v295, v62);
  v293 = &v209 - v63;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5988, &qword_1B4F756F0);
  v291 = *(v292 - 8);
  v64 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v292, v65);
  v290 = &v209 - v66;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5990, &qword_1B4F756F8);
  v288 = *(v289 - 8);
  v67 = *(v288 + 64);
  MEMORY[0x1EEE9AC00](v289, v68);
  v287 = &v209 - v69;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5998, &qword_1B4F75700);
  v285 = *(v286 - 8);
  v70 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v286, v71);
  v284 = &v209 - v72;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59A0, &qword_1B4F75708);
  v282 = *(v283 - 8);
  v73 = *(v282 + 64);
  MEMORY[0x1EEE9AC00](v283, v74);
  v281 = &v209 - v75;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59A8, &qword_1B4F75710);
  v279 = *(v280 - 8);
  v76 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v280, v77);
  v278 = &v209 - v78;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59B0, &qword_1B4F75718);
  v276 = *(v277 - 8);
  v79 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v277, v80);
  v275 = &v209 - v81;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59B8, &qword_1B4F75720);
  v273 = *(v274 - 8);
  v82 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v274, v83);
  v272 = &v209 - v84;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59C0, &qword_1B4F75728);
  v270 = *(v271 - 8);
  v85 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v271, v86);
  v269 = &v209 - v87;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59C8, &qword_1B4F75730);
  v267 = *(v268 - 8);
  v88 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268, v89);
  v266 = &v209 - v90;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59D0, &qword_1B4F75738);
  v264 = *(v265 - 8);
  v91 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v265, v92);
  v263 = &v209 - v93;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59D8, &qword_1B4F75740);
  v261 = *(v262 - 8);
  v94 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v262, v95);
  v260 = &v209 - v96;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59E0, &qword_1B4F75748);
  v258 = *(v259 - 8);
  v97 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v259, v98);
  v257 = &v209 - v99;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59E8, &qword_1B4F75750);
  v255 = *(v256 - 8);
  v100 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v256, v101);
  v254 = &v209 - v102;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59F0, &qword_1B4F75758);
  v252 = *(v253 - 8);
  v103 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v253, v104);
  v251 = &v209 - v105;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59F8, &qword_1B4F75760);
  v249 = *(v250 - 8);
  v106 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v250, v107);
  v248 = &v209 - v108;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A00, &qword_1B4F75768);
  v246 = *(v247 - 8);
  v109 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v247, v110);
  v245 = &v209 - v111;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A08, &qword_1B4F75770);
  v243 = *(v244 - 8);
  v112 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v244, v113);
  v242 = &v209 - v114;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A10, &qword_1B4F75778);
  v240 = *(v241 - 8);
  v115 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v241, v116);
  v239 = &v209 - v117;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A18, &qword_1B4F75780);
  v237 = *(v238 - 8);
  v118 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v238, v119);
  v236 = &v209 - v120;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A20, &qword_1B4F75788);
  v234 = *(v235 - 8);
  v121 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v235, v122);
  v233 = &v209 - v123;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A28, &qword_1B4F75790);
  v231 = *(v232 - 8);
  v124 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v232, v125);
  v230 = &v209 - v126;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A30, &qword_1B4F75798);
  v228 = *(v229 - 8);
  v127 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229, v128);
  v227 = &v209 - v129;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A38, &qword_1B4F757A0);
  v225 = *(v226 - 8);
  v130 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v226, v131);
  v224 = &v209 - v132;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A40, &qword_1B4F757A8);
  v222 = *(v223 - 8);
  v133 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223, v134);
  v221 = &v209 - v135;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A48, &qword_1B4F757B0);
  v219 = *(v220 - 8);
  v136 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220, v137);
  v218 = &v209 - v138;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A50, &qword_1B4F757B8);
  v216 = *(v217 - 8);
  v139 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217, v140);
  v215 = &v209 - v141;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A58, &qword_1B4F757C0);
  v213 = *(v214 - 8);
  v142 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214, v143);
  v212 = &v209 - v144;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A60, &qword_1B4F757C8);
  v210 = *(v211 - 8);
  v145 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211, v146);
  v148 = &v209 - v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A68, &qword_1B4F757D0);
  v209 = *(v149 - 8);
  v150 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v149, v151);
  v153 = &v209 - v152;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A70, &qword_1B4F757D8);
  v154 = *(v348 - 8);
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v348, v156);
  v158 = &v209 - v157;
  v159 = *v2;
  v160 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4EA573C();
  v347 = v158;
  sub_1B4F68F54();
  v161 = (v154 + 8);
  switch(v159)
  {
    case 1:
      v349 = 1;
      sub_1B4EA6654();
      v186 = v347;
      v187 = v348;
      sub_1B4F68CB4();
      (*(v210 + 8))(v148, v211);
      return (*v161)(v186, v187);
    case 2:
      v349 = 2;
      sub_1B4EA6600();
      v182 = v212;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v213 + 8))(v182, v214);
      return (*v161)(v162, v163);
    case 3:
      v349 = 3;
      sub_1B4EA65AC();
      v184 = v215;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v216 + 8))(v184, v217);
      return (*v161)(v162, v163);
    case 4:
      v349 = 4;
      sub_1B4EA6558();
      v176 = v218;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v219 + 8))(v176, v220);
      return (*v161)(v162, v163);
    case 5:
      v349 = 5;
      sub_1B4EA6504();
      v192 = v221;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v222 + 8))(v192, v223);
      return (*v161)(v162, v163);
    case 6:
      v349 = 6;
      sub_1B4EA64B0();
      v195 = v224;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v225 + 8))(v195, v226);
      return (*v161)(v162, v163);
    case 7:
      v349 = 7;
      sub_1B4EA645C();
      v185 = v227;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v228 + 8))(v185, v229);
      return (*v161)(v162, v163);
    case 8:
      v349 = 8;
      sub_1B4EA6408();
      v198 = v230;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v231 + 8))(v198, v232);
      return (*v161)(v162, v163);
    case 9:
      v349 = 9;
      sub_1B4EA63B4();
      v179 = v233;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v234 + 8))(v179, v235);
      return (*v161)(v162, v163);
    case 10:
      v349 = 10;
      sub_1B4EA6360();
      v197 = v236;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v237 + 8))(v197, v238);
      return (*v161)(v162, v163);
    case 11:
      v349 = 11;
      sub_1B4EA630C();
      v175 = v239;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v240 + 8))(v175, v241);
      return (*v161)(v162, v163);
    case 12:
      v349 = 12;
      sub_1B4EA62B8();
      v178 = v242;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v243 + 8))(v178, v244);
      return (*v161)(v162, v163);
    case 13:
      v349 = 13;
      sub_1B4EA6264();
      v194 = v245;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v246 + 8))(v194, v247);
      return (*v161)(v162, v163);
    case 14:
      v349 = 14;
      sub_1B4EA6210();
      v173 = v248;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v249 + 8))(v173, v250);
      return (*v161)(v162, v163);
    case 15:
      v349 = 15;
      sub_1B4EA61BC();
      v183 = v251;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v252 + 8))(v183, v253);
      return (*v161)(v162, v163);
    case 16:
      v349 = 16;
      sub_1B4EA6168();
      v172 = v254;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v255 + 8))(v172, v256);
      return (*v161)(v162, v163);
    case 17:
      v349 = 17;
      sub_1B4EA6114();
      v190 = v257;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v258 + 8))(v190, v259);
      return (*v161)(v162, v163);
    case 18:
      v349 = 18;
      sub_1B4EA60C0();
      v196 = v260;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v261 + 8))(v196, v262);
      return (*v161)(v162, v163);
    case 19:
      v349 = 19;
      sub_1B4EA606C();
      v203 = v263;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v264 + 8))(v203, v265);
      return (*v161)(v162, v163);
    case 20:
      v349 = 20;
      sub_1B4EA6018();
      v191 = v266;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v267 + 8))(v191, v268);
      return (*v161)(v162, v163);
    case 21:
      v349 = 21;
      sub_1B4EA5FC4();
      v193 = v269;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v270 + 8))(v193, v271);
      return (*v161)(v162, v163);
    case 22:
      v349 = 22;
      sub_1B4EA5F70();
      v201 = v272;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v273 + 8))(v201, v274);
      return (*v161)(v162, v163);
    case 23:
      v349 = 23;
      sub_1B4EA5F1C();
      v204 = v275;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v276 + 8))(v204, v277);
      return (*v161)(v162, v163);
    case 24:
      v349 = 24;
      sub_1B4EA5EC8();
      v181 = v278;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v279 + 8))(v181, v280);
      return (*v161)(v162, v163);
    case 25:
      v349 = 25;
      sub_1B4EA5E74();
      v180 = v281;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v282 + 8))(v180, v283);
      return (*v161)(v162, v163);
    case 26:
      v349 = 26;
      sub_1B4EA5E20();
      v208 = v284;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v285 + 8))(v208, v286);
      return (*v161)(v162, v163);
    case 27:
      v349 = 27;
      sub_1B4EA5DCC();
      v170 = v287;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v288 + 8))(v170, v289);
      return (*v161)(v162, v163);
    case 28:
      v349 = 28;
      sub_1B4EA5D78();
      v205 = v290;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v291 + 8))(v205, v292);
      return (*v161)(v162, v163);
    case 29:
      v349 = 29;
      sub_1B4EA5D24();
      v206 = v293;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v294 + 8))(v206, v295);
      return (*v161)(v162, v163);
    case 30:
      v349 = 30;
      sub_1B4EA5CD0();
      v199 = v296;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v297 + 8))(v199, v298);
      return (*v161)(v162, v163);
    case 31:
      v349 = 31;
      sub_1B4EA5C7C();
      v189 = v299;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v300 + 8))(v189, v301);
      return (*v161)(v162, v163);
    case 32:
      v349 = 32;
      sub_1B4EA5C28();
      v200 = v302;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v303 + 8))(v200, v304);
      return (*v161)(v162, v163);
    case 33:
      v349 = 33;
      sub_1B4EA5BD4();
      v174 = v305;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v306 + 8))(v174, v307);
      return (*v161)(v162, v163);
    case 34:
      v349 = 34;
      sub_1B4EA5B80();
      v171 = v308;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v309 + 8))(v171, v310);
      return (*v161)(v162, v163);
    case 35:
      v349 = 35;
      sub_1B4EA5B2C();
      v168 = v311;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v312 + 8))(v168, v313);
      return (*v161)(v162, v163);
    case 36:
      v349 = 36;
      sub_1B4EA5AD8();
      v169 = v314;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v315 + 8))(v169, v316);
      return (*v161)(v162, v163);
    case 37:
      v349 = 37;
      sub_1B4EA5A84();
      v167 = v317;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v318 + 8))(v167, v319);
      return (*v161)(v162, v163);
    case 38:
      v349 = 38;
      sub_1B4EA5A30();
      v207 = v320;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v321 + 8))(v207, v322);
      return (*v161)(v162, v163);
    case 39:
      v349 = 39;
      sub_1B4EA59DC();
      v202 = v323;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v324 + 8))(v202, v325);
      return (*v161)(v162, v163);
    case 40:
      v349 = 40;
      sub_1B4EA5988();
      v177 = v326;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v327 + 8))(v177, v328);
      return (*v161)(v162, v163);
    case 41:
      v349 = 41;
      sub_1B4EA5934();
      v164 = v329;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      v166 = v330;
      v165 = v331;
      goto LABEL_49;
    case 42:
      v349 = 42;
      sub_1B4EA58E0();
      v164 = v332;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      v166 = v333;
      v165 = v334;
      goto LABEL_49;
    case 43:
      v349 = 43;
      sub_1B4EA588C();
      v164 = v335;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      v166 = v336;
      v165 = v337;
      goto LABEL_49;
    case 44:
      v349 = 44;
      sub_1B4EA5838();
      v164 = v338;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      v166 = v339;
      v165 = v340;
      goto LABEL_49;
    case 45:
      v349 = 45;
      sub_1B4EA57E4();
      v164 = v341;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      v166 = v342;
      v165 = v343;
      goto LABEL_49;
    case 46:
      v349 = 46;
      sub_1B4EA5790();
      v164 = v344;
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      v166 = v345;
      v165 = v346;
LABEL_49:
      (*(v166 + 8))(v164, v165);
      break;
    default:
      v349 = 0;
      sub_1B4EA66A8();
      v162 = v347;
      v163 = v348;
      sub_1B4F68CB4();
      (*(v209 + 8))(v153, v149);
      break;
  }

  return (*v161)(v162, v163);
}

unint64_t sub_1B4EA573C()
{
  result = qword_1EB8F5A78;
  if (!qword_1EB8F5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A78);
  }

  return result;
}

unint64_t sub_1B4EA5790()
{
  result = qword_1EB8F5A80;
  if (!qword_1EB8F5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A80);
  }

  return result;
}

unint64_t sub_1B4EA57E4()
{
  result = qword_1EB8F5A88;
  if (!qword_1EB8F5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A88);
  }

  return result;
}

unint64_t sub_1B4EA5838()
{
  result = qword_1EB8F5A90;
  if (!qword_1EB8F5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A90);
  }

  return result;
}

unint64_t sub_1B4EA588C()
{
  result = qword_1EB8F5A98;
  if (!qword_1EB8F5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A98);
  }

  return result;
}

unint64_t sub_1B4EA58E0()
{
  result = qword_1EB8F5AA0;
  if (!qword_1EB8F5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AA0);
  }

  return result;
}

unint64_t sub_1B4EA5934()
{
  result = qword_1EB8F5AA8;
  if (!qword_1EB8F5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AA8);
  }

  return result;
}

unint64_t sub_1B4EA5988()
{
  result = qword_1EB8F5AB0;
  if (!qword_1EB8F5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AB0);
  }

  return result;
}

unint64_t sub_1B4EA59DC()
{
  result = qword_1EB8F5AB8;
  if (!qword_1EB8F5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AB8);
  }

  return result;
}

unint64_t sub_1B4EA5A30()
{
  result = qword_1EB8F5AC0;
  if (!qword_1EB8F5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AC0);
  }

  return result;
}

unint64_t sub_1B4EA5A84()
{
  result = qword_1EB8F5AC8;
  if (!qword_1EB8F5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AC8);
  }

  return result;
}

unint64_t sub_1B4EA5AD8()
{
  result = qword_1EB8F5AD0;
  if (!qword_1EB8F5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AD0);
  }

  return result;
}

unint64_t sub_1B4EA5B2C()
{
  result = qword_1EB8F5AD8;
  if (!qword_1EB8F5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AD8);
  }

  return result;
}

unint64_t sub_1B4EA5B80()
{
  result = qword_1EB8F5AE0;
  if (!qword_1EB8F5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AE0);
  }

  return result;
}

unint64_t sub_1B4EA5BD4()
{
  result = qword_1EB8F5AE8;
  if (!qword_1EB8F5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AE8);
  }

  return result;
}

unint64_t sub_1B4EA5C28()
{
  result = qword_1EB8F5AF0;
  if (!qword_1EB8F5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AF0);
  }

  return result;
}

unint64_t sub_1B4EA5C7C()
{
  result = qword_1EB8F5AF8;
  if (!qword_1EB8F5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AF8);
  }

  return result;
}

unint64_t sub_1B4EA5CD0()
{
  result = qword_1EB8F5B00;
  if (!qword_1EB8F5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B00);
  }

  return result;
}

unint64_t sub_1B4EA5D24()
{
  result = qword_1EB8F5B08;
  if (!qword_1EB8F5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B08);
  }

  return result;
}

unint64_t sub_1B4EA5D78()
{
  result = qword_1EB8F5B10;
  if (!qword_1EB8F5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B10);
  }

  return result;
}

unint64_t sub_1B4EA5DCC()
{
  result = qword_1EB8F5B18;
  if (!qword_1EB8F5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B18);
  }

  return result;
}

unint64_t sub_1B4EA5E20()
{
  result = qword_1EB8F5B20;
  if (!qword_1EB8F5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B20);
  }

  return result;
}

unint64_t sub_1B4EA5E74()
{
  result = qword_1EB8F5B28;
  if (!qword_1EB8F5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B28);
  }

  return result;
}

unint64_t sub_1B4EA5EC8()
{
  result = qword_1EB8F5B30;
  if (!qword_1EB8F5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B30);
  }

  return result;
}

unint64_t sub_1B4EA5F1C()
{
  result = qword_1EB8F5B38;
  if (!qword_1EB8F5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B38);
  }

  return result;
}

unint64_t sub_1B4EA5F70()
{
  result = qword_1EB8F5B40;
  if (!qword_1EB8F5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B40);
  }

  return result;
}

unint64_t sub_1B4EA5FC4()
{
  result = qword_1EB8F5B48;
  if (!qword_1EB8F5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B48);
  }

  return result;
}

unint64_t sub_1B4EA6018()
{
  result = qword_1EB8F5B50;
  if (!qword_1EB8F5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B50);
  }

  return result;
}

unint64_t sub_1B4EA606C()
{
  result = qword_1EB8F5B58;
  if (!qword_1EB8F5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B58);
  }

  return result;
}

unint64_t sub_1B4EA60C0()
{
  result = qword_1EB8F5B60;
  if (!qword_1EB8F5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B60);
  }

  return result;
}

unint64_t sub_1B4EA6114()
{
  result = qword_1EB8F5B68;
  if (!qword_1EB8F5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B68);
  }

  return result;
}

unint64_t sub_1B4EA6168()
{
  result = qword_1EB8F5B70;
  if (!qword_1EB8F5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B70);
  }

  return result;
}

unint64_t sub_1B4EA61BC()
{
  result = qword_1EB8F5B78;
  if (!qword_1EB8F5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B78);
  }

  return result;
}

unint64_t sub_1B4EA6210()
{
  result = qword_1EB8F5B80;
  if (!qword_1EB8F5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B80);
  }

  return result;
}

unint64_t sub_1B4EA6264()
{
  result = qword_1EB8F5B88;
  if (!qword_1EB8F5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B88);
  }

  return result;
}

unint64_t sub_1B4EA62B8()
{
  result = qword_1EB8F5B90;
  if (!qword_1EB8F5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B90);
  }

  return result;
}

unint64_t sub_1B4EA630C()
{
  result = qword_1EB8F5B98;
  if (!qword_1EB8F5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B98);
  }

  return result;
}

unint64_t sub_1B4EA6360()
{
  result = qword_1EB8F5BA0;
  if (!qword_1EB8F5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BA0);
  }

  return result;
}

unint64_t sub_1B4EA63B4()
{
  result = qword_1EB8F5BA8;
  if (!qword_1EB8F5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BA8);
  }

  return result;
}

unint64_t sub_1B4EA6408()
{
  result = qword_1EB8F5BB0;
  if (!qword_1EB8F5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BB0);
  }

  return result;
}

unint64_t sub_1B4EA645C()
{
  result = qword_1EB8F5BB8;
  if (!qword_1EB8F5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BB8);
  }

  return result;
}