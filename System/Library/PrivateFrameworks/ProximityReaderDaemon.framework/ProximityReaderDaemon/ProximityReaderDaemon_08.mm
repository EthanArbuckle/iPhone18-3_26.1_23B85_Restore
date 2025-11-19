uint64_t sub_2612F7798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2612F9E24(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_2612F9AB8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_26124C718(a1, &qword_27FEA0270, &unk_2613AB400);
    sub_2612F9528(a2, a3, v10);

    return sub_26124C718(v10, &qword_27FEA0270, &unk_2613AB400);
  }

  return result;
}

void sub_2612F7868(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v90 = a5;
  v91 = a4;
  v100 = a6;
  v101 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v92 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v93 = &v85 - v13;
  MEMORY[0x28223BE20](v12);
  v88 = &v85 - v14;
  v15 = sub_26139EE8C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_26139EF7C();
  v102 = *(v98 - 8);
  v20 = *(v102 + 64);
  v21 = MEMORY[0x28223BE20](v98);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v97 = &v85 - v24;
  v95 = sub_2613A1F8C();
  v25 = *(v95 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v95);
  v94 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  v32 = *(a3 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v29);
  v89 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v85 - v36;
  if (qword_27FEAC0C8 != -1)
  {
    swift_once();
  }

  v103 = a3;
  v99 = qword_27FEAC0D0;
  os_unfair_lock_lock((qword_27FEAC0D0 + 16));
  if (qword_27FEAC0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v38 = qword_27FEAC0C0;
  v39 = *(qword_27FEAC0C0 + 16);
  v96 = a2;
  if (v39 && (v40 = sub_26124E5EC(v101, a2), (v41 & 1) != 0))
  {
    sub_2612F95D4(*(v38 + 56) + 48 * v40, &v104);
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0270, &unk_2613AB400);
  v42 = v103;
  v43 = swift_dynamicCast();
  v44 = *(v32 + 56);
  if ((v43 & 1) == 0)
  {
    v87 = v32 + 56;
    v86 = v44;
    v44(v31, 1, 1, v42);
    v85 = *(v25 + 8);
    v85(v31, v95);
    v49 = sub_26124BDB0();
    v50 = v102;
    v51 = v98;
    (*(v102 + 16))(v23, v49, v98);
    *&v104 = v101;
    *(&v104 + 1) = v96;
    (*(v16 + 104))(v19, *MEMORY[0x277CC91D8], v15);
    sub_26124C7CC();
    v52 = v97;
    sub_26139EF6C();
    (*(v16 + 8))(v19, v15);
    v53 = *(v50 + 8);
    v102 = v50 + 8;
    v53(v23, v51);
    if (qword_27FEAC088 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
    v54 = sub_2613A032C();
    v55 = v94;
    if (v54)
    {
      __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
      v64 = sub_2613A02FC();
      v66 = v65;
      v67 = v103;
      v68 = v91;
      sub_26124B218(v103, v103, v55);
      v69 = (*(v32 + 48))(v55, 1, v67);
      if (v69 != 1)
      {
        v70 = *(v32 + 32);
        v71 = v55;
        v72 = v89;
        v70(v89, v71, v67);
        *(&v105 + 1) = v67;
        *&v106 = v68;
        *(&v106 + 1) = v90;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v104);
        (*(v32 + 16))(boxed_opaque_existential_0, v72, v67);
        swift_beginAccess();
        v74 = v96;

        sub_2612F7798(&v104, v101, v74);
        v42 = v103;
        swift_endAccess();
        sub_26124C6C4(v64, v66);
        v53(v97, v98);
        v47 = v100;
        v70(v100, v72, v42);
        v48 = 0;
LABEL_25:
        v45 = v86;
        goto LABEL_26;
      }

      v85(v55, v95);
      __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
      v75 = sub_2613A031C();
      v76 = sub_26129B64C();
      v77 = v88;
      sub_26124AA44(v76, v88);
      v78 = sub_2613A124C();
      v79 = *(v78 - 8);
      v80 = (*(v79 + 48))(v77, 1, v78);
      if (v80 != 1)
      {
        v81 = sub_2613A122C();
        v82 = sub_2613A1D9C();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 67109120;
          *(v83 + 4) = v75 & 1;
          _os_log_impl(&dword_261243000, v81, v82, "Session was deleted [ %{BOOL}d ]", v83, 8u);
          v84 = v83;
          v77 = v88;
          MEMORY[0x266701350](v84, -1, -1);
        }

        sub_26124C6C4(v64, v66);

        v53(v97, v98);
        (*(v79 + 8))(v77, v78);
        goto LABEL_24;
      }

      v53(v97, v98);
      sub_26124C6C4(v64, v66);
      v60 = v77;
    }

    else
    {
      v56 = sub_26129B64C();
      v57 = v93;
      sub_26124AA44(v56, v93);
      v58 = sub_2613A124C();
      v59 = *(v58 - 8);
      if ((*(v59 + 48))(v57, 1, v58) != 1)
      {
        v61 = sub_2613A122C();
        v62 = sub_2613A1D9C();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_261243000, v61, v62, "Could not find session", v63, 2u);
          MEMORY[0x266701350](v63, -1, -1);
        }

        v53(v52, v98);
        (*(v59 + 8))(v57, v58);
        goto LABEL_24;
      }

      v53(v52, v98);
      v60 = v57;
    }

    sub_26124C718(v60, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_24:
    v48 = 1;
    v42 = v103;
    v47 = v100;
    goto LABEL_25;
  }

  v45 = *(v32 + 56);
  v44(v31, 0, 1, v42);
  v46 = *(v32 + 32);
  v46(v37, v31, v42);
  v47 = v100;
  v46(v100, v37, v42);
  v48 = 0;
LABEL_26:
  v45(v47, v48, 1, v42);
  os_unfair_lock_unlock(v99 + 4);
}

uint64_t sub_2612F8524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24[1] = v24 - v6;
  v7 = sub_26139EE8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26139EF7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v24 - v18;
  if (qword_27FEAC0C8 != -1)
  {
    swift_once();
  }

  v25 = qword_27FEAC0D0;
  os_unfair_lock_lock((qword_27FEAC0D0 + 16));
  v20 = sub_26124BDB0();
  (*(v13 + 16))(v17, v20, v12);
  *&v26[0] = a1;
  *(&v26[0] + 1) = a2;
  (*(v8 + 104))(v11, *MEMORY[0x277CC91D8], v7);
  sub_26124C7CC();
  sub_26139EF6C();
  (*(v8 + 8))(v11, v7);
  v21 = *(v13 + 8);
  v21(v17, v12);
  if (qword_27FEAC088 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
  if (sub_2613A032C())
  {
    __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
    v22 = sub_2613A031C();
    if (qword_27FEAC0B8 != -1)
    {
      swift_once();
    }

    memset(v26, 0, 48);
    swift_beginAccess();

    sub_2612F7798(v26, a1, a2);
    swift_endAccess();
    v21(v19, v12);
  }

  else
  {
    v21(v19, v12);
    v22 = 0;
  }

  os_unfair_lock_unlock(v25 + 4);
  return v22 & 1;
}

void sub_2612F8AD0(uint64_t (*a1)(void), uint64_t a2)
{
  v52 = a2;
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v48 - v6;
  v7 = sub_26139EF7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - v14;
  if (qword_27FEAC0C8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v56 = v13;
    v51 = qword_27FEAC0D0;
    os_unfair_lock_lock((qword_27FEAC0D0 + 16));
    if (qword_27FEAC088 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
    v16 = sub_26124BDB0();
    v17 = *(v8 + 16);
    v18 = v56;
    v17(v15, v16, v56);
    v19 = sub_2613A02EC();
    v55 = v8;
    v20 = v19;
    v53 = *(v8 + 8);
    v54 = (v8 + 8);
    v53(v15, v18);
    v13 = sub_2612F9258(v49, v52, v20);
    v21 = v13;
    v22 = qword_27FEAC090;
    v52 = *(v13 + 16);
    if (!v52)
    {
      break;
    }

    v23 = (v8 + 16);
    v24 = v18;
    v25 = v17;
    v8 = 0;
    while (v8 < *(v21 + 16))
    {
      v26 = v23;
      v27 = v25;
      v25(v12, v21 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v8, v24);
      v15 = v22[4];
      v28 = v22;
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      v29 = sub_2613A031C();
      v24 = v56;
      if (v29)
      {
        if (qword_27FEAC0B8 != -1)
        {
          swift_once();
        }

        v30 = sub_26139EEDC();
        v32 = v31;
        swift_beginAccess();
        v15 = sub_26124E5EC(v30, v32);
        v34 = v33;

        if (v34)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = qword_27FEAC0C0;
          v57 = qword_27FEAC0C0;
          qword_27FEAC0C0 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2612F9C7C();
            v36 = v57;
          }

          v37 = *(*(v36 + 48) + 16 * v15 + 8);

          sub_2612F9E24((*(v36 + 56) + 48 * v15), v58);
          sub_2612F98FC(v15, v36);
          qword_27FEAC0C0 = v36;
        }

        else
        {
          memset(v58, 0, sizeof(v58));
        }

        v24 = v56;
        sub_26124C718(v58, &qword_27FEA0270, &unk_2613AB400);
        swift_endAccess();
      }

      ++v8;
      v13 = (v53)(v12, v24);
      v22 = v28;
      v23 = v26;
      v25 = v27;
      if (v52 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    v47 = v13;
    swift_once();
    v13 = v47;
  }

LABEL_17:

  v38 = sub_26129B64C();
  v39 = v48;
  sub_26124AA44(v38, v48);
  v40 = sub_2613A124C();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_26124C718(v39, &qword_27FE9F560, &qword_2613A3CB0);
    v42 = v51;
  }

  else
  {
    v43 = sub_2613A122C();
    v44 = sub_2613A1D9C();
    v45 = os_log_type_enabled(v43, v44);
    v42 = v51;
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_261243000, v43, v44, "All sessions were deleted", v46, 2u);
      MEMORY[0x266701350](v46, -1, -1);
    }

    (*(v41 + 8))(v39, v40);
  }

  os_unfair_lock_unlock(v42 + 4);
}

uint64_t sub_2612F9258(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_26139EF7C();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26128C338(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_26128C338(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

double sub_2612F9528@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26124E5EC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2612F9C7C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2612F9E24((*(v12 + 56) + 48 * v9), a3);
    sub_2612F98FC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_2612F95D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2612F9638(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0278, &qword_2613AB428);
  v36 = a2;
  result = sub_2613A223C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 48 * v21);
      if (v36)
      {
        sub_2612F9E24(v25, v37);
      }

      else
      {
        sub_2612F95D4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2612F9E24(v37, (*(v8 + 56) + 48 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2612F98FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2613A205C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_2613A256C();

      sub_2613A19DC();
      v15 = sub_2613A25CC();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2612F9AB8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26124E5EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2612F9C7C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2612F9638(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26124E5EC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2613A249C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 48 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_2612F9E24(a1, v23);
  }

  else
  {
    sub_2612F9C0C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2612F9C0C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2612F9E24(a4, (a5[7] + 48 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2612F9C7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0278, &qword_2613AB428);
  v2 = *v0;
  v3 = sub_2613A222C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_2612F95D4(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2612F9E24(v25, (*(v4 + 56) + v22));
      }

      while (v12);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

_OWORD *sub_2612F9E24(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_2612F9E60()
{
  type metadata accessor for GlobalState();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  result = sub_2612FA02C();
  v0[3] = result;
  v0[4] = v3;
  qword_281451ED8 = v0;
  return result;
}

void *sub_2612F9EC8()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v0[3] = sub_2612FA02C();
  v0[4] = v2;
  return v0;
}

uint64_t *sub_2612F9F2C()
{
  if (qword_281451F50 != -1)
  {
    swift_once();
  }

  return &qword_281451ED8;
}

void sub_2612F9F80()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2613A25EC();
  v2 = sub_2613A189C();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_2612FA02C()
{
  v27[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - v5;
  v7 = sub_2613A194C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = 37;
  v11 = sub_2613A1BAC();
  *(v11 + 16) = 37;
  *(v11 + 48) = 0u;
  *(v11 + 61) = 0;
  *(v11 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v11 + 32), v27, 0, 0))
  {

    v12 = sub_26129B7C4();
    sub_26124AA44(v12, v4);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v20 = sub_2613A122C();
      v21 = sub_2613A1D8C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_261243000, v20, v21, "Could not retrieve boot session UUID", v22, 2u);
        MEMORY[0x266701350](v22, -1, -1);
      }

      (*(v14 + 8))(v4, v13);
    }

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  sub_2613A192C();
  result = sub_2612FA3C4(v11, v10);
  if (!v16)
  {
    v17 = sub_26129B7C4();
    sub_26124AA44(v17, v6);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "Could not create string from boot session UUID", v26, 2u);
        MEMORY[0x266701350](v26, -1, -1);
      }

      (*(v19 + 8))(v6, v18);
    }

    goto LABEL_10;
  }

LABEL_11:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2612FA3C4(uint64_t a1, char *a2)
{
  v4 = sub_2613A194C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2613A191C();
  v9 = sub_2613A190C();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    sub_2613A192C();
    v11 = sub_2613A190C();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      sub_2613A18FC();
      v12 = sub_2613A190C();
      v10(v8, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_2612FB3C8(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  sub_2613A191C();
  v17 = sub_2613A190C();
  v10(v8, v4);
  if (v17)
  {

LABEL_17:
    v10(a2, v4);
    return v16;
  }

  if ((sub_2613A210C() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_2613A220C();
      __break(1u);
    }

    v19 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithBytes:a1 + 32 length:v8 encoding:sub_2613A193C()];

    if (!v19)
    {
      v10(a2, v4);
      return 0;
    }

    v16 = sub_2613A18CC();

    goto LABEL_17;
  }

  v10(a2, v4);

  return v16;
}

id sub_2612FA6A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0280, &qword_2613AB430);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v12 = result;
    v13 = [result passcodeCreationDate];

    if (v13)
    {
      sub_26139F08C();

      v14 = sub_26139F0BC();
      (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    }

    else
    {
      v14 = sub_26139F0BC();
      (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    }

    sub_2612FB830(v8, v10);
    sub_26139F0BC();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14) == 1)
    {
      sub_26124C718(v10, &qword_27FEA0280, &qword_2613AB430);
      v16 = sub_26129B7C4();
      sub_26124AA44(v16, v3);
      v17 = sub_2613A124C();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v3, 1, v17) == 1)
      {
        return sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v19 = sub_2613A122C();
        v20 = sub_2613A1D8C();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_261243000, v19, v20, "Could not fetch passcode last creation date", v21, 2u);
          MEMORY[0x266701350](v21, -1, -1);
        }

        return (*(v18 + 8))(v3, v17);
      }
    }

    else
    {
      sub_26139F07C();
      return (*(v15 + 8))(v10, v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2612FAA28(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB88, &qword_2613A9B00);
    v2 = sub_2613A224C();
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
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
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
      while (1)
      {
        v17 = __clz(__rbit64(v6)) | (v16 << 6);
        v18 = (*(v1 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        sub_26124C994(*(v1 + 56) + 32 * v17, v32);
        *&v31 = v19;
        *(&v31 + 1) = v20;
        v29[2] = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v21 = v31;
        sub_26125A7B0(v30, v29);

        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_26124E5EC(v21, *(&v21 + 1));
        if (v22)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = v2[6] + 16 * result;
          v13 = *(v12 + 8);
          *v12 = v21;

          v14 = (v2[7] + v11);
          v1 = v10;
          v15 = v14[1];
          *v14 = v27;
          v14[1] = v28;

          v9 = v16;
          if (!v6)
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
          *(v2[6] + 16 * result) = v21;
          v23 = (v2[7] + 16 * result);
          *v23 = v27;
          v23[1] = v28;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_24;
          }

          v2[2] = v26;
          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v16 = v9;
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

char *sub_2612FACA0()
{
  v1 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_26129B7C4();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    v9 = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "[cleanup] Loading partner apps", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    v9 = (*(v8 + 8))(v5, v7);
  }

  v13 = *(v1 + 16);
  MEMORY[0x28223BE20](v9);
  *(&v45 - 2) = sub_2612FB8A0;
  *(&v45 - 1) = v1;
  os_unfair_lock_lock(v13 + 4);
  sub_2612FB8D0(v50);
  v45 = 0;
  os_unfair_lock_unlock(v13 + 4);
  v14 = *&v50[0] + 64;
  v15 = 1 << *(*&v50[0] + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*&v50[0] + 64);
  v18 = (v15 + 63) >> 6;
  v47 = *&v50[0];

  v19 = 0;
  v46 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v19;
    if (!v17)
    {
      break;
    }

LABEL_13:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = (v19 << 10) | (16 * v21);
    v23 = (*(v47 + 48) + v22);
    v25 = *v23;
    v24 = v23[1];
    v26 = (*(v47 + 56) + v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v30 = sub_2613A189C();
    v49[0] = 0;
    v31 = [v29 initWithBundleIdentifier:v30 allowPlaceholder:0 error:v49];

    if (!v31)
    {
      v34 = v49[0];
      v48 = v27;
      v35 = v34;
      v36 = sub_26139EE7C();

      swift_willThrow();
      v27 = v48;

      v33 = 0;
      v45 = 0;
      goto LABEL_19;
    }

    v32 = v49[0];
    if ([v31 isDeletable])
    {

      v33 = 1;
LABEL_19:
      sub_2612FF018(v25, v24, v27, v28, v33 & 1, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_2612FB44C(0, *(v46 + 2) + 1, 1, v46);
      }

      v38 = *(v46 + 2);
      v37 = *(v46 + 3);
      if (v38 >= v37 >> 1)
      {
        v46 = sub_2612FB44C((v37 > 1), v38 + 1, 1, v46);
      }

      v39 = v46;
      *(v46 + 2) = v38 + 1;
      v40 = &v39[40 * v38];
      v41 = v50[0];
      v42 = v50[1];
      v40[64] = v51;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
    }

    else
    {
      v33 = sub_2612FB9D8();
      LODWORD(v48) = v33;

      if (v48 != 2)
      {
        goto LABEL_19;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v20;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v46;
}

void sub_2612FB13C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_2612FBDE4();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_2612FB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_2612BC328(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_26124E5EC(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_2612BC4B0();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_2612FB568(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

void sub_2612FB2B4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_2612FBFAC();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_2612FB320()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_2612FBF44(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_2612FB388()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2612FB3C8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = sub_2613A199C();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2612FB44C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0288, "^F");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2612FB568(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2613A205C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2613A256C();

      sub_2613A19DC();
      v13 = sub_2613A25CC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2612FB718()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2613A189C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_26124C718(v7, &qword_27FEA00C0, &unk_2613A44B0);
    return 0;
  }

  return result;
}

uint64_t sub_2612FB830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0280, &qword_2613AB430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2612FB8A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612FB8E8();
  *a1 = result;
  return result;
}

unint64_t sub_2612FB8E8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2613A189C();
  v2 = [v0 dictionaryForKey_];

  if (!v2 || (v3 = sub_2613A17FC(), v2, v4 = sub_2612FAA28(v3), , !v4))
  {
    v4 = sub_2612BEECC(MEMORY[0x277D84F90]);
  }

  return v4;
}

uint64_t sub_2612FB9D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  type metadata accessor for Mock();
  v7 = sub_26129B284(34);
  if (v7 == 2)
  {
    v12 = sub_26129B7C4();
    sub_26124AA44(v12, v4);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v18 = sub_2613A122C();
      v19 = sub_2613A1D7C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "[cleanup] Mocking internal app install state to uninstalled", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v14 + 8))(v4, v13);
    }

    return 0;
  }

  else if (v7 == 1)
  {
    v8 = sub_26129B7C4();
    sub_26124AA44(v8, v6);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
      return 1;
    }

    else
    {
      v15 = sub_2613A122C();
      v16 = sub_2613A1D7C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "[cleanup] Mocking internal app install state to installed", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v10 + 8))(v6, v9);
      return 1;
    }
  }

  else
  {
    return 2;
  }
}

void sub_2612FBCCC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];

  sub_2612FB8E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2612BC328(v3, v4, v1, v2, isUniquelyReferenced_nonNull_native);

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_2613A17EC();

  v8 = sub_2613A189C();
  [v6 setObject:v7 forKey:v8];
}

uint64_t sub_2612FBDE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2612FBE0C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_2612FB8E8();
  sub_2612FB1AC(0, 0, v1, v2);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_2613A17EC();

  v5 = sub_2613A189C();
  [v3 setObject:v4 forKey:v5];
}

uint64_t sub_2612FBEFC@<X0>(BOOL *a1@<X8>)
{
  v2 = *(sub_2612FB8E8() + 16);

  *a1 = v2 != 0;
  return result;
}

void *sub_2612FBF44@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2612FBFC4()
{
  sub_2612FC04C(&unk_2873BBA08);
  sub_2612FC148(&unk_2873BBA28);
  v0 = sub_2613A17EC();

  v1 = MKBGetDeviceLockState();

  return (v1 < 7) & (0x46u >> v1);
}

unint64_t sub_2612FC04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0298, "BF");
    v3 = sub_2613A224C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26124E5EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2612FC148(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0290, &unk_2613AB480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_2612FC1C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) currentLayout];
  v3 = v2;
  if (v2)
  {
  }

  os_unfair_lock_unlock((v1 + 24));
  return v3 != 0;
}

uint64_t sub_2612FC220()
{
  v0 = swift_allocObject();
  sub_2612FC258();
  return v0;
}

uint64_t sub_2612FC258()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = [objc_opt_self() configurationForContinuityDisplay];
  [v6 setNeedsUserInteractivePriority_];
  v7 = [objc_opt_self() monitorWithConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02A0, ">F");
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *(v1 + 16) = v8;
  v9 = sub_26129B4FC();
  sub_26124AA44(v9, v5);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {

    sub_26124D0CC(v5);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D7C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "ContinuityDisplayMonitor started monitoring", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v5, v10);
  }

  return v1;
}

uint64_t sub_2612FC46C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + 16);

  os_unfair_lock_lock((v6 + 24));
  [*(v6 + 16) invalidate];
  os_unfair_lock_unlock((v6 + 24));

  v7 = sub_26129B4FC();
  sub_26124AA44(v7, v5);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_26124D0CC(v5);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "ContinuityDisplayMonitor finished monitoring", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v9 + 8))(v5, v8);
  }

  v13 = *(v1 + 16);

  return v1;
}

uint64_t sub_2612FC62C()
{
  sub_2612FC46C();

  return swift_deallocClassInstance();
}

uint64_t sub_2612FC684()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612FC6F8()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612FC794@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2613A228C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2612FC7EC(uint64_t a1)
{
  v2 = sub_2612FC9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612FC828(uint64_t a1)
{
  v2 = sub_2612FC9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612FC864(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02A8, "ZF");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FC9F8();
  sub_2613A262C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02B8, &qword_2613AB4F8);
  sub_2612FD430(&qword_27FEA02C0, sub_2612FCA4C);
  sub_2613A23CC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2612FC9F8()
{
  result = qword_27FEA02B0;
  if (!qword_27FEA02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02B0);
  }

  return result;
}

unint64_t sub_2612FCA4C()
{
  result = qword_27FEA02C8;
  if (!qword_27FEA02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02C8);
  }

  return result;
}

void *sub_2612FCAA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2612FCFD0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2612FCAE8()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612FCB5C()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612FCBBC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2613A228C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2612FCC48@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2613A228C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2612FCCA0(uint64_t a1)
{
  v2 = sub_2612FD18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612FCCDC(uint64_t a1)
{
  v2 = sub_2612FD18C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612FCD18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02E0, &qword_2613AB508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FD18C();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = sub_2613A22DC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_2612FCE94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02D0, &qword_2613AB500);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FD18C();
  sub_2613A262C();
  sub_2613A238C();
  return (*(v4 + 8))(v7, v3);
}

void *sub_2612FCFD0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0318, &qword_2613AB8B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FC9F8();
  sub_2613A260C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02B8, &qword_2613AB4F8);
    sub_2612FD430(&qword_27FEA0320, sub_2612FD4B4);
    sub_2613A231C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

unint64_t sub_2612FD18C()
{
  result = qword_27FEA02D8;
  if (!qword_27FEA02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02D8);
  }

  return result;
}

unint64_t sub_2612FD1E4()
{
  result = qword_27FEA02E8;
  if (!qword_27FEA02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02E8);
  }

  return result;
}

unint64_t sub_2612FD23C()
{
  result = qword_27FEA02F0;
  if (!qword_27FEA02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02F0);
  }

  return result;
}

unint64_t sub_2612FD294()
{
  result = qword_27FEA02F8;
  if (!qword_27FEA02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02F8);
  }

  return result;
}

unint64_t sub_2612FD2EC()
{
  result = qword_27FEA0300;
  if (!qword_27FEA0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0300);
  }

  return result;
}

unint64_t sub_2612FD344()
{
  result = qword_27FEA0308;
  if (!qword_27FEA0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0308);
  }

  return result;
}

unint64_t sub_2612FD39C()
{
  result = qword_27FEA0310;
  if (!qword_27FEA0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0310);
  }

  return result;
}

uint64_t sub_2612FD430(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA02B8, &qword_2613AB4F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2612FD4B4()
{
  result = qword_27FEA0328;
  if (!qword_27FEA0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0328);
  }

  return result;
}

unint64_t sub_2612FD524(char a1)
{
  result = 0x6863746142666173;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 9:
      return result;
    case 6:
    case 10:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x6973736553666173;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_2612FD734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2612FEC0C();
  *a2 = result;
  return result;
}

unint64_t sub_2612FD764@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612FD524(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2612FD790(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x746E61686372656DLL;
      break;
    case 2:
      result = 0x4972656E74726170;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6973736553666173;
      break;
    case 5:
      result = 0x6449656C646E7562;
      break;
    case 6:
      result = 0x64697074666173;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x797269707865;
      break;
    case 10:
      result = 0x6E6F73616572;
      break;
    case 11:
      result = 0x746361736E617274;
      break;
    case 12:
      result = 0x64496863746162;
      break;
    case 13:
      result = 0x7A69536863746162;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2612FD960(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2613A241C();
  }

  return v12 & 1;
}

uint64_t sub_2612FDA0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_2613A256C();
  a3(v5);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612FDA90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_2613A19DC();
}

uint64_t sub_2612FDB00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_2613A256C();
  a4(v6);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612FDB68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2612FEC58();
  *a2 = result;
  return result;
}

unint64_t sub_2612FDB98@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612FD790(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2612FDBC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x277D84F90];
  v32 = *(a1 + 16);
  sub_261265DD4(0, v1, 0);
  v2 = v33;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_2613A204C();
  v7 = v32;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_36;
    }

    v12 = *(a1 + 36);
    ++v8;
    v13 = result & 0x3F;
    v14 = 0xE900000000000064;
    v15 = 0x496E6F6973736573;
    switch(*(*(a1 + 48) + result))
    {
      case 1:
        v14 = 0xEA00000000006449;
        v15 = 0x746E61686372656DLL;
        break;
      case 2:
        v15 = 0x4972656E74726170;
        break;
      case 3:
        v15 = 0xD000000000000011;
        v14 = 0x80000002613B7F90;
        break;
      case 4:
        v15 = 0x6973736553666173;
        v14 = 0xEC00000064496E6FLL;
        break;
      case 5:
        v14 = 0xE800000000000000;
        v15 = 0x6449656C646E7562;
        break;
      case 6:
        v14 = 0xE700000000000000;
        v15 = 0x64697074666173;
        break;
      case 7:
        v15 = 0xD000000000000012;
        v14 = 0x80000002613BC310;
        break;
      case 8:
        v15 = 0xD000000000000013;
        v14 = 0x80000002613BC330;
        break;
      case 9:
        v14 = 0xE600000000000000;
        v15 = 0x797269707865;
        break;
      case 0xA:
        v14 = 0xE600000000000000;
        v15 = 0x6E6F73616572;
        break;
      case 0xB:
        v15 = 0x746361736E617274;
        v14 = 0xED000064496E6F69;
        break;
      case 0xC:
        v14 = 0xE700000000000000;
        v15 = 0x64496863746162;
        break;
      case 0xD:
        v14 = 0xE900000000000065;
        v15 = 0x7A69536863746162;
        break;
      case 0xE:
        v15 = 0xD000000000000014;
        v14 = 0x80000002613BC380;
        break;
      default:
        break;
    }

    v17 = *(v33 + 16);
    v16 = *(v33 + 24);
    if (v17 >= v16 >> 1)
    {
      v30 = *(a1 + 36);
      v31 = result;
      v28 = result & 0x3F;
      v29 = v8;
      sub_261265DD4((v16 > 1), v17 + 1, 1);
      v13 = v28;
      v8 = v29;
      v7 = v32;
      v12 = v30;
      result = v31;
    }

    *(v33 + 16) = v17 + 1;
    v18 = v33 + 16 * v17;
    *(v18 + 32) = v15;
    *(v18 + 40) = v14;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_37;
    }

    v19 = *(v4 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_38;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_39;
    }

    v20 = v19 & (-2 << v13);
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          v26 = v8;
          sub_26124A218(result, v12, 0);
          v8 = v26;
          v7 = v32;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      v27 = v8;
      sub_26124A218(result, v12, 0);
      v8 = v27;
      v7 = v32;
    }

LABEL_4:
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2612FDFF8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612FD790(a1);
  v8 = v7;
  swift_beginAccess();

  v9 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_2612BC328(a2, a3, v6, v8, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v12;
  swift_endAccess();
}

uint64_t sub_2612FE0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = *(v1 + 16);
  v9 = sub_2612FD510(*(v1 + 16));
  v10 = sub_2612FDBC4(v9);

  v11 = sub_2612BEFE0(v10);

  swift_beginAccess();
  v12 = *(v1 + 24);
  v13 = *(v12 + 16);
  if (v13)
  {
    v32 = v1;
    v33 = v8;
    v34 = v7;
    v35 = a1;
    v14 = sub_2612BB720(v13, 0);
    v15 = sub_2612BC628(&v36, v14 + 4, v13, v12);

    result = sub_2612BF078();
    if (v15 != v13)
    {
      __break(1u);
      return result;
    }

    v7 = v34;
    a1 = v35;
    v8 = v33;
    v2 = v32;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v17 = sub_2612BEFE0(v14);

  v18 = sub_2612BAA68(v11, v17);

  if (v18)
  {
    v19 = sub_2612FD508(v8);
    v20 = *(v2 + 24);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB50, &qword_2613ABE40);
    v38 = sub_2612BF080();
    *&v36 = v20;

    return sub_2612B64A4(v19, &v36, a1);
  }

  else
  {
    v21 = sub_26129B7C4();
    sub_26124AA44(v21, v7);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v7, 1, v22) == 1)
    {
      result = sub_26124D0CC(v7);
    }

    else
    {

      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v36 = v27;
        *v26 = 136315138;
        v28 = sub_2612FD524(v8);
        v30 = sub_26124C11C(v28, v29, &v36);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_261243000, v24, v25, "The event %s is missing required fields", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x266701350](v27, -1, -1);
        MEMORY[0x266701350](v26, -1, -1);
      }

      result = (*(v23 + 8))(v7, v22);
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_2612FE420()
{
  sub_2613A211C();

  v1 = sub_2612FD524(*(v0 + 16));
  MEMORY[0x2666FFEA0](v1);

  MEMORY[0x2666FFEA0](0x3D3D3D3D3D3D3D20, 0xEA00000000000A3DLL);
  swift_beginAccess();
  v2 = *(v0 + 24);

  v3 = sub_2613A180C();
  v5 = v4;

  MEMORY[0x2666FFEA0](v3, v5);

  return 0x3D3D3D3D3D3D3D3DLL;
}

uint64_t sub_2612FE548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0340, qword_2613ABA80);
    v3 = sub_2613A20DC();
    v4 = 0;
    v5 = v3 + 56;
    v24 = a1 + 32;
    v23 = v1;
    while (1)
    {
      v6 = *(v24 + v4++);
      v7 = *(v3 + 40);
      sub_2613A256C();
      sub_2613A19DC();

      result = sub_2613A25CC();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        while (1)
        {
          v14 = 0xE900000000000064;
          v15 = 0x496E6F6973736573;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v15 = 0x746E61686372656DLL;
              v14 = 0xEA00000000006449;
              break;
            case 2:
              v15 = 0x4972656E74726170;
              break;
            case 3:
              v15 = 0xD000000000000011;
              v14 = 0x80000002613B7F90;
              break;
            case 4:
              v15 = 0x6973736553666173;
              v14 = 0xEC00000064496E6FLL;
              break;
            case 5:
              v14 = 0xE800000000000000;
              v15 = 0x6449656C646E7562;
              break;
            case 6:
              v14 = 0xE700000000000000;
              v15 = 0x64697074666173;
              break;
            case 7:
              v15 = 0xD000000000000012;
              v14 = 0x80000002613BC310;
              break;
            case 8:
              v15 = 0xD000000000000013;
              v14 = 0x80000002613BC330;
              break;
            case 9:
              v14 = 0xE600000000000000;
              v15 = 0x797269707865;
              break;
            case 0xA:
              v14 = 0xE600000000000000;
              v15 = 0x6E6F73616572;
              break;
            case 0xB:
              v15 = 0x746361736E617274;
              v14 = 0xED000064496E6F69;
              break;
            case 0xC:
              v14 = 0xE700000000000000;
              v15 = 0x64496863746162;
              break;
            case 0xD:
              v14 = 0xE900000000000065;
              v15 = 0x7A69536863746162;
              break;
            case 0xE:
              v15 = 0xD000000000000014;
              v14 = 0x80000002613BC380;
              break;
            default:
              break;
          }

          v16 = 0x496E6F6973736573;
          v17 = 0xE900000000000064;
          switch(v6)
          {
            case 1:
              v17 = 0xEA00000000006449;
              if (v15 == 0x746E61686372656DLL)
              {
                goto LABEL_48;
              }

              goto LABEL_49;
            case 2:
              if (v15 != 0x4972656E74726170)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 3:
              v17 = 0x80000002613B7F90;
              if (v15 != 0xD000000000000011)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 4:
              v17 = 0xEC00000064496E6FLL;
              if (v15 != 0x6973736553666173)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 5:
              v17 = 0xE800000000000000;
              if (v15 != 0x6449656C646E7562)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 6:
              v17 = 0xE700000000000000;
              v18 = 0x697074666173;
              goto LABEL_44;
            case 7:
              v17 = 0x80000002613BC310;
              if (v15 != 0xD000000000000012)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 8:
              v17 = 0x80000002613BC330;
              if (v15 != 0xD000000000000013)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 9:
              v17 = 0xE600000000000000;
              if (v15 != 0x797269707865)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 10:
              v17 = 0xE600000000000000;
              v16 = 0x6E6F73616572;
              goto LABEL_47;
            case 11:
              v17 = 0xED000064496E6F69;
              if (v15 != 0x746361736E617274)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 12:
              v17 = 0xE700000000000000;
              v18 = 0x496863746162;
LABEL_44:
              if (v15 != (v18 & 0xFFFFFFFFFFFFLL | 0x64000000000000))
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 13:
              v17 = 0xE900000000000065;
              if (v15 != 0x7A69536863746162)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 14:
              v17 = 0x80000002613BC380;
              if (v15 != 0xD000000000000014)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            default:
LABEL_47:
              if (v15 != v16)
              {
                goto LABEL_49;
              }

LABEL_48:
              if (v14 == v17)
              {

                goto LABEL_4;
              }

LABEL_49:
              v19 = sub_2613A241C();

              if (v19)
              {
                goto LABEL_4;
              }

              v10 = (v10 + 1) & v9;
              v11 = v10 >> 6;
              v12 = *(v5 + 8 * (v10 >> 6));
              v13 = 1 << v10;
              if ((v12 & (1 << v10)) == 0)
              {
                goto LABEL_54;
              }

              break;
          }
        }
      }

LABEL_54:
      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (v4 == v23)
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

uint64_t sub_2612FEC0C()
{
  v0 = sub_2613A228C();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2612FEC58()
{
  v0 = sub_2613A228C();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2612FECA8()
{
  result = qword_27FEA0330;
  if (!qword_27FEA0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0330);
  }

  return result;
}

unint64_t sub_2612FED00()
{
  result = qword_27FEA0338;
  if (!qword_27FEA0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafMonitorEventBuilder.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafMonitorEventBuilder.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafMonitorEventBuilder.EventField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafMonitorEventBuilder.EventField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2612FF018@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_2612FF028()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2613A256C();
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A258C();
  return sub_2613A25CC();
}

uint64_t sub_2612FF0A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2613A19DC();
  sub_2613A19DC();
  return sub_2613A258C();
}

uint64_t sub_2612FF0FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2613A256C();
  sub_2613A19DC();
  sub_2613A19DC();
  sub_2613A258C();
  return sub_2613A25CC();
}

unint64_t sub_2612FF17C()
{
  result = qword_27FEA0348;
  if (!qword_27FEA0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0348);
  }

  return result;
}

uint64_t sub_2612FF1D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_2613A241C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_2613A241C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2612FF284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2612FF2CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2612FF320()
{
  v0 = *sub_2612F9F2C();

  v2 = sub_2612F9F7C(v1);

  MEMORY[0x266700B50](v3);
  return v2;
}

uint64_t sub_2612FF364()
{
  v0 = *sub_2612F9F2C();

  v2 = sub_2612F9F7C(v1);

  MEMORY[0x266700B50](v3);
  return v2;
}

uint64_t sub_2612FF3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002613BC400 == a2 || (sub_2613A241C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613BC420 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2613A241C();

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

uint64_t sub_2612FF4E0(uint64_t a1)
{
  v2 = sub_2612FF6E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612FF51C(uint64_t a1)
{
  v2 = sub_2612FF6E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612FF558(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0350, &qword_2613ABB40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FF6E0();
  sub_2613A262C();
  v12 = 0;
  sub_2613A23DC();
  if (!v1)
  {
    v11 = 1;
    sub_2613A23AC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2612FF6E0()
{
  result = qword_27FEACD60[0];
  if (!qword_27FEACD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEACD60);
  }

  return result;
}

void sub_2612FF734(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2612FFA74(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_2612FF764(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_2612FF558(a1);
}

uint64_t sub_2612FF784()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2613A256C();
  sub_2613A25AC();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x266700A30](*&v3);
  return sub_2613A25CC();
}

uint64_t sub_2612FF7F0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2613A25AC();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x266700A30](*&v3);
}

uint64_t sub_2612FF83C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2613A256C();
  sub_2613A25AC();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x266700A30](*&v3);
  return sub_2613A25CC();
}

uint64_t sub_2612FF8D0()
{
  sub_2613A211C();
  MEMORY[0x2666FFEA0](0xD000000000000017, 0x80000002613BC3E0);
  v0 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v0);

  MEMORY[0x2666FFEA0](0x7265746E49202C5DLL, 0xEF5B202D206C6176);
  sub_2613A1D2C();
  MEMORY[0x2666FFEA0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2612FF9C8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_2612FF8D0();
}

BOOL sub_2612FF9D4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) < *(a2 + 8);
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_2612FF9FC(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) >= *(a1 + 8);
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_2612FFA24(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 8) >= *(a2 + 8);
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_2612FFA4C(uint64_t a1, uint64_t a2)
{
  if (*a2 == *a1)
  {
    return *(a2 + 8) < *(a1 + 8);
  }

  else
  {
    return *a2 < *a1;
  }
}

double sub_2612FFA74(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEA0360, &qword_2613ABDB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FF6E0();
  sub_2613A260C();
  v13 = 0;
  sub_2613A233C();
  v12 = 1;
  sub_2613A22FC();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

unint64_t sub_2612FFC24()
{
  result = qword_27FEA0358;
  if (!qword_27FEA0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0358);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPUTimestamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CPUTimestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_2612FFCE4()
{
  result = qword_27FEAD170[0];
  if (!qword_27FEAD170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAD170);
  }

  return result;
}

unint64_t sub_2612FFD3C()
{
  result = qword_27FEAD280;
  if (!qword_27FEAD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAD280);
  }

  return result;
}

unint64_t sub_2612FFD94()
{
  result = qword_27FEAD288[0];
  if (!qword_27FEAD288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAD288);
  }

  return result;
}

id sub_2612FFDEC()
{
  result = [objc_allocWithZone(type metadata accessor for AppleAccountMonitor()) init];
  qword_27FEAEE08 = result;
  return result;
}

uint64_t *sub_2612FFE1C()
{
  if (qword_27FEAD310 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEE08;
}

uint64_t sub_2612FFE6C()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2612FFEB0(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2612FFF00()
{
  v0[OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount] = 0;
  v1 = &v0[OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isStarted] = 0;
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for AppleAccountMonitor();
  v4 = objc_msgSendSuper2(&v17, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  v6 = *MEMORY[0x277CB8BA0];
  *(inited + 32) = sub_2613A18CC();
  *(inited + 40) = v7;
  v8 = v4;
  sub_261300EF4(inited);
  swift_setDeallocating();
  sub_26130105C(inited + 32);
  v9 = objc_allocWithZone(MEMORY[0x277CB8F80]);
  v10 = v8;
  v11 = sub_2613A1D3C();

  v12 = [v9 initWithAccountTypes:v11 delegate:v10];

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v16[4] = sub_2613010B0;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_261300748;
  v16[3] = &block_descriptor_9;
  v14 = _Block_copy(v16);

  [v12 registerWithCompletion_];
  _Block_release(v14);

  return v10;
}

uint64_t sub_261300140(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  if (a2)
  {
    v15 = a2;
    v16 = sub_26129B7C4();
    sub_26124AA44(v16, v14);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {

      return sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = a2;
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v56 = a2;
        v57 = v30;
        *v29 = 136315138;
        v31 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v32 = sub_2613A195C();
        v34 = sub_26124C11C(v32, v33, &v57);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_261243000, v27, v28, "Could not register store: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x266701350](v30, -1, -1);
        MEMORY[0x266701350](v29, -1, -1);
      }

      else
      {
      }

      return (*(v18 + 8))(v14, v17);
    }
  }

  v54 = a3;
  v55 = v12;
  if (!a1)
  {
    goto LABEL_29;
  }

  if (!(a1 >> 62))
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_29:
    v48 = sub_26129B7C4();
    sub_26124AA44(v48, v11);
    v49 = sub_2613A124C();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v11, 1, v49) == 1)
    {
      return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    v51 = sub_2613A122C();
    v52 = sub_2613A1D9C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_261243000, v51, v52, "No primary account", v53, 2u);
      MEMORY[0x266701350](v53, -1, -1);
    }

    return (*(v50 + 8))(v11, v49);
  }

LABEL_28:
  v20 = sub_2613A221C();
  if (!v20)
  {
    goto LABEL_29;
  }

LABEL_7:
  v21 = 0;
  v22 = *MEMORY[0x277CEC688];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x2667005C0](v21, a1);
    }

    else
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v23 = *(a1 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if ([v23 aa:v22 isAccountClass:?])
    {
      break;
    }

    ++v21;
    if (v25 == v20)
    {
      goto LABEL_29;
    }
  }

  v35 = sub_26129B7C4();
  v36 = v55;
  sub_26124AA44(v35, v55);
  v37 = sub_2613A124C();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_26124C718(v36, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v39 = v24;
    v40 = sub_2613A122C();
    v41 = sub_2613A1D9C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138739971;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&dword_261243000, v40, v41, "Primary account: %{sensitive}@)", v42, 0xCu);
      sub_26124C718(v43, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v43, -1, -1);
      v36 = v55;
      MEMORY[0x266701350](v42, -1, -1);
    }

    (*(v38 + 8))(v36, v37);
  }

  v45 = [v24 aa_isSandboxAccount];

  v46 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
  v47 = v54;
  result = swift_beginAccess();
  *(v47 + v46) = v45;
  return result;
}

uint64_t sub_261300748(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_261301138();
    v4 = sub_2613A1B7C();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_261300800()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_2612FBDE4();
  os_unfair_lock_unlock(v1 + 4);
}

id sub_261300874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleAccountMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261300968(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  result = [a1 aa:*MEMORY[0x277CEC688] isAccountClass:?];
  if (result)
  {
    v9 = sub_26129B7C4();
    sub_26124AA44(v9, v7);
    v10 = sub_2613A124C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      v12 = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D9C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "accountWasRemoved", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      v12 = (*(v11 + 8))(v7, v10);
    }

    result = (*((*MEMORY[0x277D85000] & *v2) + 0x70))(v12);
    if (result)
    {
      v16 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
      result = swift_beginAccess();
      *(v2 + v16) = 0;
      v17 = v2 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler;
      v18 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler);
      if (v18)
      {
        v19 = *(v17 + 1);

        v18(v20);
        return sub_26124A228(v18);
      }
    }
  }

  return result;
}

uint64_t sub_261300C18(void *a1, const char *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  result = [a1 aa:*MEMORY[0x277CEC688] isAccountClass:?];
  if (result)
  {
    v11 = sub_26129B7C4();
    sub_26124AA44(v11, v9);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D9C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, a2, v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v13 + 8))(v9, v12);
    }

    v17 = [a1 aa_isSandboxAccount];
    result = (*((*MEMORY[0x277D85000] & *v4) + 0x70))();
    if (v17 != (result & 1))
    {
      v18 = OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isSandboxAccount;
      result = swift_beginAccess();
      *(v4 + v18) = v17;
      v19 = v4 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler;
      v20 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler);
      if (v20)
      {
        v21 = *(v19 + 1);

        v20(v22);
        return sub_26124A228(v20);
      }
    }
  }

  return result;
}

uint64_t sub_261300EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB80, &unk_2613ABA70);
    v3 = sub_2613A20DC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2613A256C();

      sub_2613A19DC();
      result = sub_2613A25CC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2613A241C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2613010D0()
{
  v1 = v0[2];
  if ((*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isStarted) & 1) == 0)
  {
    v3 = v0[3];
    v2 = v0[4];
    *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_isStarted) = 1;
    v4 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon19AppleAccountMonitor_accountChangeHandler);
    v5 = *v4;
    v6 = v4[1];
    *v4 = v3;
    v4[1] = v2;

    return sub_26124A228(v5);
  }

  return result;
}

unint64_t sub_261301138()
{
  result = qword_27FEA0408;
  if (!qword_27FEA0408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEA0408);
  }

  return result;
}

uint64_t sub_261301184()
{
  if (*v0)
  {
    result = 0x7265766F63736964;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_2613011CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2613A241C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEE00736D65744979)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2613A241C();

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

uint64_t sub_2613012B0(uint64_t a1)
{
  v2 = sub_2613014F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2613012EC(uint64_t a1)
{
  v2 = sub_2613014F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261301328(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0418, "Z>");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613014F0();
  sub_2613A262C();
  v15 = 0;
  sub_2613A23BC();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0420, &qword_2613ABE18);
    sub_2613040C8(&qword_27FEA0428, sub_261301544);
    sub_2613A23CC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2613014F0()
{
  result = qword_27FEAD320;
  if (!qword_27FEAD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAD320);
  }

  return result;
}

unint64_t sub_261301544()
{
  result = qword_27FEA0430;
  if (!qword_27FEA0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0430);
  }

  return result;
}

uint64_t sub_261301598@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2613023EC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2613015E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[10];
  v5 = v0[11];

  return MEMORY[0x2821A50D0](v1, v2, v3, v4, v6, v5);
}

uint64_t sub_261301668()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6369706F74;
  if (v1 != 5)
  {
    v3 = 0x6369706F74627573;
  }

  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x754274756F79616CLL;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
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

uint64_t sub_261301760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2613026EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261301788(uint64_t a1)
{
  v2 = sub_2613025F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2613017C4(uint64_t a1)
{
  v2 = sub_2613025F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261301800(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0438, &qword_2613ABE20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613025F0();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_2613A238C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v23) = 1;
    sub_2613A238C();
    v15 = v3[4];
    LOBYTE(v23) = 2;
    sub_2613A23BC();
    v23 = *(v3 + 5);
    v22 = 3;
    sub_261302644();
    sub_2613A237C();
    *&v23 = v3[7];
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0448, &qword_2613ABE28);
    sub_261303FF0(&qword_27FEA0450, sub_261302698);
    sub_2613A237C();
    v16 = v3[8];
    v17 = v3[9];
    LOBYTE(v23) = 5;
    sub_2613A238C();
    v18 = v3[10];
    v19 = v3[11];
    LOBYTE(v23) = 6;
    sub_2613A238C();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_261301ACC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_261302950(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_261301B30()
{
  if (*v0)
  {
    return 0x6D756D6978616DLL;
  }

  else
  {
    return 0x6D756D696E696DLL;
  }
}

uint64_t sub_261301B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_2613A241C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D756D6978616DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2613A241C();

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

uint64_t sub_261301C40(uint64_t a1)
{
  v2 = sub_261302F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261301C7C(uint64_t a1)
{
  v2 = sub_261302F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261301CB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0460, &qword_2613ABE30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261302F30();
  sub_2613A262C();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0468, &qword_2613ABE38);
  sub_261302F84(&qword_27FEA0470, sub_261303008);
  sub_2613A237C();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_2613A237C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_261301EB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26130305C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_261301EFC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613A261C();
  if (a4)
  {
    if (a4 == 1)
    {
      v10 = a2;
      __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB50, &qword_2613ABE40);
      sub_261303E98(&qword_27FE9FB58);
      sub_2613A245C();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_0(v8, v9);
    sub_2613A244C();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t sub_26130202C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_261303294(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_26130207C()
{
  v1 = 0x6D756D6978616DLL;
  if (*v0 != 1)
  {
    v1 = 0x736C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D756D696E696DLL;
  }
}

uint64_t sub_2613020D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261303464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2613020FC(uint64_t a1)
{
  v2 = sub_261303410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261302138(uint64_t a1)
{
  v2 = sub_261303410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261302174(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0480, &unk_2613ABE48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261303410();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_2613A234C();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    sub_2613A234C();
    v17 = v3[4];
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
    sub_261303E2C(&qword_27FEA0488);
    sub_2613A237C();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_26130238C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_261303578(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_2613023EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04E0, &qword_2613AC5E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2613014F0();
  sub_2613A260C();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_2613A230C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0420, &qword_2613ABE18);
    v10[15] = 1;
    sub_2613040C8(&qword_27FEA04E8, sub_261304140);
    sub_2613A231C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2613025F0()
{
  result = qword_27FEAD328;
  if (!qword_27FEAD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAD328);
  }

  return result;
}

unint64_t sub_261302644()
{
  result = qword_27FEA0440;
  if (!qword_27FEA0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0440);
  }

  return result;
}

unint64_t sub_261302698()
{
  result = qword_27FEA0458;
  if (!qword_27FEA0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0458);
  }

  return result;
}

uint64_t sub_2613026EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754274756F79616CLL && a2 == 0xEF4C5255656C646ELL || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xEE0065676E61526ELL || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613BC4E0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369706F74627573 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_2613A241C();

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

uint64_t sub_261302950@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04C0, &qword_2613AC5E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613025F0();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v42) = 0;
  v11 = sub_2613A22DC();
  v35 = v12;
  LOBYTE(v42) = 1;
  *&v34 = sub_2613A22DC();
  *(&v34 + 1) = v13;
  LOBYTE(v42) = 2;
  v14 = sub_2613A230C();
  LOBYTE(v36) = 3;
  sub_261303F9C();
  sub_2613A22CC();
  v32 = v42;
  v33 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0448, &qword_2613ABE28);
  LOBYTE(v36) = 4;
  sub_261303FF0(&qword_27FEA04D0, sub_261304074);
  v31 = 0;
  sub_2613A22CC();
  v29 = v42;
  LOBYTE(v42) = 5;
  v28 = sub_2613A22DC();
  v30 = v15;
  v54 = 6;
  v27 = sub_2613A22DC();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  *&v36 = v11;
  v18 = v35;
  *(&v36 + 1) = v35;
  v37 = v34;
  v19 = *(&v34 + 1);
  *&v38 = v14;
  v26 = v14;
  v20 = v32;
  *(&v38 + 1) = v32;
  *&v39 = v33;
  *(&v39 + 1) = v29;
  *&v40 = v28;
  v21 = v27;
  *(&v40 + 1) = v30;
  *&v41 = v27;
  *(&v41 + 1) = v17;
  sub_261264584(&v36, &v42);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v42 = v11;
  v43 = v18;
  v44 = v34;
  v45 = v19;
  v46 = v26;
  v47 = v20;
  v48 = v33;
  v49 = v29;
  v50 = v28;
  v51 = v30;
  v52 = v21;
  v53 = v17;
  result = sub_2612645E0(&v42);
  v23 = v39;
  a2[2] = v38;
  a2[3] = v23;
  v24 = v41;
  a2[4] = v40;
  a2[5] = v24;
  v25 = v37;
  *a2 = v36;
  a2[1] = v25;
  return result;
}

unint64_t sub_261302F30()
{
  result = qword_27FEAD330;
  if (!qword_27FEAD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAD330);
  }

  return result;
}

uint64_t sub_261302F84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA0468, &qword_2613ABE38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261303008()
{
  result = qword_27FEA0478;
  if (!qword_27FEA0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0478);
  }

  return result;
}

uint64_t sub_26130305C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04A8, &qword_2613AC5D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261302F30();
  sub_2613A260C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0468, &qword_2613ABE38);
  v11 = 0;
  sub_261302F84(&qword_27FEA04B0, sub_261303F04);
  sub_2613A22CC();
  v9 = v12;
  v11 = 1;
  sub_2613A22CC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

uint64_t sub_261303294(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2613A25FC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_2613A242C();
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v4;
}

unint64_t sub_261303410()
{
  result = qword_27FEAD338[0];
  if (!qword_27FEAD338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAD338);
  }

  return result;
}

uint64_t sub_261303464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756D6978616DLL && a2 == 0xE700000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2613A241C();

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

uint64_t sub_261303578@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0490, &qword_2613AC5D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261303410();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = 0;
  v11 = sub_2613A229C();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  v14 = sub_2613A229C();
  v16 = v15;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  v24 = 2;
  sub_261303E2C(&qword_27FEA0498);
  sub_2613A22CC();
  (*(v6 + 8))(v9, v5);
  v17 = v23;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v19 = v21;
  *a2 = v22;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v17;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityReaderDaemon14OSVersionRangeVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261303830(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_26130388C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityReaderDaemon12VersionRangeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_261303908(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261303950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_261303994(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_261303A10()
{
  result = qword_27FEAD940[0];
  if (!qword_27FEAD940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAD940);
  }

  return result;
}

unint64_t sub_261303A68()
{
  result = qword_27FEADB50[0];
  if (!qword_27FEADB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEADB50);
  }

  return result;
}

unint64_t sub_261303AC0()
{
  result = qword_27FEADD60[0];
  if (!qword_27FEADD60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEADD60);
  }

  return result;
}

unint64_t sub_261303B18()
{
  result = qword_27FEADF70[0];
  if (!qword_27FEADF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEADF70);
  }

  return result;
}

unint64_t sub_261303B70()
{
  result = qword_27FEAE080;
  if (!qword_27FEAE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAE080);
  }

  return result;
}

unint64_t sub_261303BC8()
{
  result = qword_27FEAE088[0];
  if (!qword_27FEAE088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE088);
  }

  return result;
}

unint64_t sub_261303C20()
{
  result = qword_27FEAE110;
  if (!qword_27FEAE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAE110);
  }

  return result;
}

unint64_t sub_261303C78()
{
  result = qword_27FEAE118[0];
  if (!qword_27FEAE118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE118);
  }

  return result;
}

unint64_t sub_261303CD0()
{
  result = qword_27FEAE1A0;
  if (!qword_27FEAE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAE1A0);
  }

  return result;
}

unint64_t sub_261303D28()
{
  result = qword_27FEAE1A8[0];
  if (!qword_27FEAE1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE1A8);
  }

  return result;
}

unint64_t sub_261303D80()
{
  result = qword_27FEAE230;
  if (!qword_27FEAE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAE230);
  }

  return result;
}

unint64_t sub_261303DD8()
{
  result = qword_27FEAE238[0];
  if (!qword_27FEAE238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEAE238);
  }

  return result;
}

uint64_t sub_261303E2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F3E0, "R7");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261303E98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FB50, &qword_2613ABE40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261303F04()
{
  result = qword_27FEA04B8;
  if (!qword_27FEA04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA04B8);
  }

  return result;
}

uint64_t sub_261303F58(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_261303F9C()
{
  result = qword_27FEA04C8;
  if (!qword_27FEA04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA04C8);
  }

  return result;
}

uint64_t sub_261303FF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA0448, &qword_2613ABE28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261304074()
{
  result = qword_27FEA04D8;
  if (!qword_27FEA04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA04D8);
  }

  return result;
}

uint64_t sub_2613040C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA0420, &qword_2613ABE18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261304140()
{
  result = qword_27FEA04F0;
  if (!qword_27FEA04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA04F0);
  }

  return result;
}

uint64_t sub_261304198()
{
  result = *MEMORY[0x277D025F0];
  if (*MEMORY[0x277D025F0])
  {
    result = sub_2613A18CC();
    qword_27FEAE2C8 = result;
    qword_27FEAE2D0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static XpcEventNotification.register()()
{
  v0 = *sub_2612A4A58();
  v3[4] = sub_26130428C;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_261304570;
  v3[3] = &block_descriptor_10;
  v1 = _Block_copy(v3);
  v2 = v0;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v1);
  _Block_release(v1);
}

const char *sub_26130428C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  result = xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]);
  if (result)
  {
    v7 = sub_2613A1A3C();
    v9 = v8;
    if (qword_27FEAE2C0 != -1)
    {
      swift_once();
    }

    v10 = qword_27FEAE2C8 == v7 && qword_27FEAE2D0 == v9;
    if (v10 || (sub_2613A241C() & 1) != 0)
    {

      v11 = *sub_2612F9F2C();

      sub_2612F9F7C(v12);
      sub_2612F9F80();
    }

    else
    {
      v13 = sub_26129B7C4();
      sub_26124AA44(v13, v5);
      v14 = sub_2613A124C();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v5, 1, v14) == 1)
      {

        return sub_26124D0CC(v5);
      }

      else
      {

        v16 = sub_2613A122C();
        v17 = sub_2613A1D9C();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v22 = v19;
          *v18 = 136315138;
          v20 = sub_26124C11C(v7, v9, &v22);

          *(v18 + 4) = v20;
          _os_log_impl(&dword_261243000, v16, v17, "Unexpected event: [ %s ]", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v19);
          MEMORY[0x266701350](v19, -1, -1);
          MEMORY[0x266701350](v18, -1, -1);
        }

        else
        {
        }

        return (*(v15 + 8))(v5, v14);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261304570(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2613045F8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId;
  swift_beginAccess();
  sub_26125A870(v1 + v10, v9, &qword_27FE9F280, &unk_2613A42B0);
  v11 = sub_26139F13C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_26124C718(v9, &qword_27FE9F280, &unk_2613A42B0);
  v13 = *(v12 + 16);
  v13(a1, *(v1 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v11);
  v13(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_261304804(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_261304804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261304874(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_26139F13C();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId;
  swift_beginAccess();
  sub_261304804(v6, v1 + v9);
  return swift_endAccess();
}

void (*sub_26130499C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_26139F13C();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_2613045F8(v10);
  return sub_261304ABC;
}

void sub_261304ABC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId;
    swift_beginAccess();
    sub_261304804(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId;
    swift_beginAccess();
    sub_261304804(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_261304C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v26 = a6;
  v27 = a2;
  v28 = a3;
  v11 = sub_26139F13C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v7 + 48);
  v17 = *(v7 + 52);
  v18 = swift_allocObject();
  v19 = *(**sub_2612C11DC() + 112);

  v19(v20);

  *(v18 + 104) = 0;
  (*(v12 + 56))(v18 + OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId, 1, 1, v11);
  *(v18 + 16) = a4;
  v21 = v25;
  *(v18 + 80) = v26;
  *(v18 + 88) = v21;
  *(v18 + 72) = a5;
  type metadata accessor for PINStore();
  (*(v12 + 16))(v15, a1, v11);

  *(v18 + 24) = sub_261268EC8(v15, v27, v28);
  type metadata accessor for PINHelper();
  sub_2612B5A20(v18 + 32, v29);
  v22 = sub_261324938(a4, v29, a5);
  (*(v12 + 8))(a1, v11);
  *(v18 + 96) = v22;
  return v18;
}

void *sub_261304E30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "IssuerPINTask destroyed", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = v1[2];

  v13 = v1[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 4);
  v14 = v1[9];

  v15 = v1[11];

  v16 = v1[12];

  sub_26124C718(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon13IssuerPINTask____lazy_storage___transactionId, &qword_27FE9F280, &unk_2613A42B0);
  return v1;
}

uint64_t sub_261305024()
{
  sub_261304E30();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26130507C()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for TransactionData(0);
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_26139F13C();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v10 = type metadata accessor for TransactionContainer();
  v1[13] = v10;
  v11 = *(v10 - 8);
  v1[14] = v11;
  v12 = *(v11 + 64) + 15;
  v1[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26130529C);
}

uint64_t sub_26130529C()
{
  v1 = v0[16];
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[16];
  if (v5 == 1)
  {
    sub_26124C718(v0[16], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v7, 0x65746164696C6176, 0xEA00000000002928, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v0[17] = type metadata accessor for Mock();
  if ((sub_26129B0F4(8) & 1) == 0)
  {
    v11 = v0[4];
    v12 = v11[7];
    v13 = v11[8];
    __swift_project_boxed_opaque_existential_1(v11 + 4, v12);
    v14 = (v11[3] + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_pinToken);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v13 + 16);

    v17(v16, v15, v12, v13);
  }

  v18 = *(v0[4] + 16);
  v0[18] = v18;
  v19 = sub_26125B314(*(v18 + 64), *(v18 + 72));
  v0[19] = v19;
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  v21 = (*(*v19 + 376))();
  v0[20] = v21;
  if (!v21)
  {

LABEL_12:
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];
    (*(v27 + 16))(v26, *(v0[4] + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v28);
    sub_261306CA8(v26, 4, 0xD000000000000011, 0x80000002613BC580);
    (*(v27 + 8))(v26, v28);
    goto LABEL_13;
  }

  v22 = (*(*v20 + 400))();
  if (v22 == 2 || (v22 & 1) != 0)
  {
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];
    (*(v24 + 16))(v23, *(v0[4] + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v25);
    sub_261306CA8(v23, 6, 0xD000000000000018, 0x80000002613BC5A0);

    (*(v24 + 8))(v23, v25);
LABEL_13:
    v30 = v0[15];
    v29 = v0[16];
    v32 = v0[11];
    v31 = v0[12];
    v33 = v0[8];
    v34 = v0[5];

    v35 = v0[1];

    return v35(0);
  }

  v38 = v0[10];
  v37 = v0[11];
  v39 = v0[9];
  v40 = v0[4];
  v41 = sub_261287C58();
  v42 = *v41;
  v0[21] = *v41;
  v43 = *(v40 + 24);
  v44 = OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID;
  v45 = *(v38 + 16);
  v0[22] = v45;
  v0[23] = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45(v37, v43 + v44, v39);
  v46 = *(*v42 + 136);

  v51 = (v46 + *v46);
  v47 = v46[1];
  v48 = swift_task_alloc();
  v0[24] = v48;
  *v48 = v0;
  v48[1] = sub_261305904;
  v50 = v0[11];
  v49 = v0[12];

  return v51(v49, v50);
}

uint64_t sub_261305904()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 72);
  v9 = *v0;

  v7 = *(v5 + 8);
  *(v1 + 200) = v7;
  *(v1 + 208) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);

  return MEMORY[0x2822009F8](sub_261305A8C);
}

uint64_t sub_261305A8C()
{
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[25];
    v63 = v0[26];
    v4 = v0[22];
    v5 = v0[23];
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[4];
    sub_26124C718(v2, &qword_27FE9F568, &unk_2613AC620);
    v4(v8, *(v10 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v9);
    sub_261306CA8(v8, 31, 0xD000000000000022, 0x80000002613BC5C0);

    v3(v8, v9);
    v11 = 0;
  }

  else
  {
    v12 = v0[19];
    v13 = v0[15];
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[5];
    v61 = v0[6];
    v64 = v0[17];
    v17 = v0[4];
    sub_261308DFC(v2, v13, type metadata accessor for TransactionContainer);
    sub_261281B9C(v15);
    v18 = *(v17 + 24);
    sub_2612A8628(v15, v16);
    (*(v14 + 56))(v16, 0, 1, v61);
    v19 = *(*v18 + 136);

    v19(v16);

    (*(*v12 + 184))(v20);
    sub_26129B284(22);
    v21 = (v13 + *(v1 + 96));
    v62 = *v21;
    if (v21[1])
    {
      v22 = *(v0[4] + 24);

      v23 = sub_2613A053C();
    }

    else
    {
      v24 = *(v0[15] + *(v0[13] + 92) + 8);
      v22 = *(v0[4] + 24);

      if (v24)
      {
        v23 = sub_2613A054C();
      }

      else
      {
        v23 = sub_2613A056C();
      }
    }

    v25 = v0[20];
    v60 = v0[19];
    v26 = v0[18];
    v27 = v0[15];
    v54 = v27;
    v56 = v0[13];
    v28 = v0[8];
    v29 = v0[6];
    (*(*v22 + 208))(v23);

    v30 = (v28 + v29[29]);
    v59 = *v30;
    v57 = v30[1];
    v58 = *(v28 + v29[21]);
    sub_2613A121C();
    v31 = *(v26 + 32);
    v32 = *(v26 + 40);

    sub_2613A115C();

    v33 = *(v25 + 72);
    v55 = *(v25 + 64);
    v34 = (v28 + v29[15]);
    v36 = *v34;
    v35 = v34[1];
    v37 = objc_allocWithZone(MEMORY[0x277CCA980]);

    v38 = sub_2613A189C();
    [v37 initWithString_];

    v39 = (v28 + v29[16]);
    v40 = *v39;
    v41 = v39[1];
    v42 = *(v28 + v29[17]);
    v43 = (v27 + *(v56 + 92));
    v45 = *v43;
    v44 = v43[1];
    objc_allocWithZone(sub_26139FA7C());

    v11 = sub_26139FA6C();

    sub_261308D00(v28, type metadata accessor for TransactionData);
    sub_261308D00(v54, type metadata accessor for TransactionContainer);
  }

  v47 = v0[15];
  v46 = v0[16];
  v49 = v0[11];
  v48 = v0[12];
  v50 = v0[8];
  v51 = v0[5];

  v52 = v0[1];

  return v52(v11);
}

uint64_t sub_261305F4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(**(v0 + 24) + 152);

  v8 = v6(v7);
  LOBYTE(v6) = v9;

  if (v6)
  {

    v10 = *(v0 + 96);
    if (v10)
    {
      (*(*v10 + 144))(sub_261308D60, v5);
    }
  }

  else
  {
    v12 = sub_26129B5FC();
    sub_26125A870(v12, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v8;
        v23 = v18;
        *v17 = 136315138;
        sub_2612B45EC();
        v19 = sub_2613A24FC();
        v21 = sub_26124C11C(v19, v20, &v23);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_261243000, v15, v16, "[IssuerPIN] pinAuthNeeded skipped due to %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x266701350](v18, -1, -1);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v14 + 8))(v4, v13);
    }

    sub_261306268();
  }
}

uint64_t sub_261306268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26 - v2;
  v4 = sub_26139F95C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_26129B5FC();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v5;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "[IssuerPIN] pinAuthNeeded cleanup handler called", v18, 2u);
      v20 = v19;
      v5 = v26;
      MEMORY[0x266701350](v20, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    (*(**(result + 16) + 136))();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_26124C718(v3, &qword_27FEA04F8, &qword_2613AC6F0);
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
      v23 = sub_26139F94C();
      (*(v5 + 8))(v8, v4);
      if (v23)
      {
      }
    }

    v24 = *(**(v22 + 24) + 232);

    v24(v25);
  }

  return result;
}

uint64_t sub_2613065FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = *(**(v4 + 24) + 160);

    v14(30, 0);
  }

  v15 = *(v4 + 96);
  if (v15)
  {
    (*(v9 + 16))(v13, *(v4 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v8);
    (*(*v15 + 152))(v13, a1, a2);
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t sub_261306788(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = sub_26125B314(*(*(v1 + 16) + 64), *(*(v1 + 16) + 72));
  if (!v10)
  {
    v22 = *(**(v1 + 24) + 160);

    v23 = 4;
    v22(4, 0);

    v44 = 4;
    sub_2612B45EC();
    swift_willThrowTypedImpl();
    return v23;
  }

  v11 = v10;
  v41 = v7;
  v13 = *(v1 + 56);
  v12 = *(v1 + 64);
  v42 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 32), v13);
  v43 = v11;
  v15 = *(v11 + 32);
  v14 = *(v11 + 40);
  v16 = *(v12 + 88);

  v17 = v16(v15, v14, a1, 1, v13, v12);
  v19 = v18;

  if (v19 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_13;
    }

    v21 = v9;
    if (*(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v21 = v9;
    if (v20)
    {
      if (v17 == v17 >> 32)
      {
LABEL_13:
        sub_26124A168(v17, v19);
LABEL_14:
        v27 = sub_26129B5FC();
        v28 = v41;
        sub_26125A870(v27, v41, &qword_27FE9F560, &qword_2613A3CB0);
        v29 = sub_2613A124C();
        v30 = *(v29 - 8);
        if ((*(v30 + 48))(v28, 1, v29) == 1)
        {
          sub_26124C718(v28, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v31 = sub_2613A122C();
          v32 = sub_2613A1D9C();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_261243000, v31, v32, "cardBlob failed", v33, 2u);
            MEMORY[0x266701350](v33, -1, -1);
          }

          (*(v30 + 8))(v28, v29);
        }

        v34 = *(**(v42 + 24) + 160);

        v23 = 27;
        v34(27, 0);

        v44 = 27;
        sub_2612B45EC();
        swift_willThrowTypedImpl();

        return v23;
      }
    }

    else if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_13;
    }
  }

  v24 = sub_26129B5FC();
  sub_26125A870(v24, v21, &qword_27FE9F560, &qword_2613A3CB0);
  v25 = sub_2613A124C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = sub_2613A122C();
    v36 = sub_2613A1D9C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261243000, v35, v36, "cardBlob encrypted", v37, 2u);
      MEMORY[0x266701350](v37, -1, -1);
    }

    (*(v26 + 8))(v21, v25);
  }

  v38 = *(v42 + 24);
  v39 = *(*v38 + 184);
  v23 = *v38 + 184;

  sub_26125C348(v17, v19);
  v39(v17, v19);

  sub_26124A168(v17, v19);

  return v23;
}

uint64_t sub_261306CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    *&v29[0] = a3;
    *(&v29[0] + 1) = a4;
    sub_261306EF0(v29, v27);
  }

  if (v4[9])
  {
    v8 = sub_261253D64();
    v9 = sub_261253D64();
    v10 = sub_261396E6C();
    v12 = v11;
    v13 = sub_26125A798();
    sub_261396E70(a1, 0, 0, v8, v9, v10, v12, 2, a2, 0, v13 & 1);
  }

  type metadata accessor for PINMonitorEventBuilder();
  sub_2612BAC20(4);
  v14 = v4[2];
  v15 = *(v14 + 64);
  v16 = *(v14 + 72);

  sub_2612BAC6C(0, v15, v16);

  v17 = sub_26139F0FC();
  sub_2612BAC6C(4u, v17, v18);

  v19 = sub_2613A03AC();
  sub_2612BAC6C(6u, v19, v20);

  v21 = sub_26139FACC();
  sub_2612BAC6C(8u, v21, v22);

  sub_2612BB0C0(v27);
  if (v28)
  {
    v29[0] = v27[0];
    v29[1] = v27[1];
    v29[2] = v28;
    v23 = v4[7];
    v24 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v23);
    (*(v24 + 120))(v29, v23, v24);
    sub_2612A0E50(v29);
  }

  else
  {
    sub_26124C718(v27, &qword_27FE9F8D0, &unk_2613AC6E0);
  }

  v25 = v4[11];
  (v5[10])(0, a2, 0);
}

uint64_t sub_261306EF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = sub_26129B5FC();
  sub_26125A870(v10, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  if (v13 == 1)
  {
    result = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v15 = sub_2613A122C();
    v16 = sub_2613A1D8C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v21 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_26124C11C(v8, v9, &v22);
      _os_log_impl(&dword_261243000, v15, v16, "%{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x266701350](v19, -1, -1);
      v20 = v18;
      a2 = v21;
      MEMORY[0x266701350](v20, -1, -1);
    }

    result = (*(v12 + 8))(v7, v11);
  }

  *a2 = v13 == 1;
  return result;
}

uint64_t sub_261307114()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 96);
  if (v7)
  {
    type metadata accessor for PINMonitorEventBuilder();
    sub_2612BAC20(0);
    (*(v2 + 16))(v6, *(v0 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v1);
    v8 = sub_26139F0FC();
    v10 = v9;
    (*(v2 + 8))(v6, v1);
    sub_2612BAC6C(4u, v8, v10);

    v11 = sub_2613A03AC();
    v13 = sub_2612BAC6C(6u, v11, v12);

    (*(*v7 + 176))(v13);
  }

  return result;
}

uint64_t sub_2613072CC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v60 - v16;
  v18 = sub_26139F95C();
  v66 = *(v18 - 8);
  v67 = v18;
  v19 = *(v66 + 64);
  MEMORY[0x28223BE20](v18);
  v64 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26139F13C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v4 + 96);
  if (v26)
  {
    v61 = a3;
    v27 = *(v4 + 24);
    (*(v22 + 16))(v25, v27 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v21);
    v28 = *(*v27 + 200);
    v62 = v17;
    v29 = v4;

    v31 = v28(v30);
    v33 = v32;

    v34 = sub_2613A027C();
    v35 = v31;
    v4 = v29;
    v17 = v62;
    (*(*v26 + 160))(v25, 0, a2, v61, v35, v33, v34 & 1);

    (*(v22 + 8))(v25, v21);
  }

  v36 = *(**(v4 + 24) + 144);

  v37 = v36(v68);
  v39 = v38;
  v40 = type metadata accessor for TransactionData(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v41 = *(v40 + 96);
    v42 = *(v39 + v41);
    *(v39 + v41) = a1;
    v43 = a1;
  }

  v37(v68, 0);

  (*(**(v4 + 16) + 136))(v44);
  v46 = v66;
  v45 = v67;
  if ((*(v66 + 48))(v17, 1, v67) == 1)
  {
    return sub_26124C718(v17, &qword_27FEA04F8, &qword_2613AC6F0);
  }

  v48 = v64;
  (*(v46 + 32))(v64, v17, v45);
  v49 = sub_26139F94C();
  result = (*(v46 + 8))(v48, v45);
  if (v49)
  {
    v50 = sub_26129B5FC();
    v51 = v65;
    sub_26125A870(v50, v65, &qword_27FE9F560, &qword_2613A3CB0);
    v52 = sub_2613A124C();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_26124C718(v65, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v54 = sub_2613A122C();
      v55 = sub_2613A1D9C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_261243000, v54, v55, "Issuer PIN, returning data early", v56, 2u);
        MEMORY[0x266701350](v56, -1, -1);
      }

      (*(v53 + 8))(v65, v52);
    }

    v57 = sub_2613A1C1C();
    v58 = v63;
    (*(*(v57 - 8) + 56))(v63, 1, 1, v57);
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    v59[4] = v4;

    sub_261266800(0, 0, v58, &unk_2613AC638, v59);
  }

  return result;
}

uint64_t sub_261307938()
{
  (*(**(v0 + 16) + 296))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2613079C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 96);
  if (v13)
  {
    v23 = a3;
    v14 = *(v4 + 24);
    (*(v9 + 16))(v12, v14 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v8);
    v15 = *(*v14 + 200);

    v17 = v15(v16);
    v19 = v18;

    (*(*v13 + 168))(v12, a1, 0, a2, v23, v17, v19);

    (*(v9 + 8))(v12, v8);
  }

  v20 = *(**(v4 + 24) + 160);

  v20(a1, 0);
}

uint64_t sub_261307BA8()
{
  v1 = sub_26139F13C();
  v101 = *(v1 - 8);
  v102 = v1;
  v2 = *(v101 + 64);
  MEMORY[0x28223BE20](v1);
  v104 = v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v103 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = v100 - v8;
  v9 = type metadata accessor for TransactionData(0);
  v10 = *(v9 - 8);
  v108 = v9;
  v109 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v105 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v100 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v107 = v100 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v100 - v23;
  v110 = sub_26129B5FC();
  sub_26125A870(v110, v24, &qword_27FE9F560, &qword_2613A3CB0);
  v25 = sub_2613A124C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(v24, 1, v25);
  v100[1] = v17;
  if (v28 == 1)
  {
    sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
    v29 = v0;
    if ((*(v0 + 104) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = sub_26125A798();
    v44 = sub_261291AA8();
    v100[0] = v26 + 48;
    sub_26129BC3C(v43 & 1, v0, 0xD00000000000001BLL, 0x80000002613BC5F0, v44, v45);

    (*(v26 + 8))(v24, v25);
    v29 = v0;
    if ((*(v0 + 104) & 1) == 0)
    {
LABEL_3:
      v100[0] = v25;
      *(v29 + 104) = 1;
      v30 = *(**(v29 + 24) + 152);

      v32 = v30(v31);
      v34 = v33;

      if (v34)
      {
        v35 = *(**(v29 + 24) + 128);

        v37 = v106;
        v35(v36);
        v38 = v37;

        v39 = v109 + 48;
        v40 = *(v109 + 48);
        if (v40(v38, 1, v108) == 1)
        {
          sub_26124C718(v38, &qword_27FE9F340, &unk_2613A4B40);
          v41 = *(v29 + 88);
          return (*(v29 + 80))(0, 27, 0);
        }

        else
        {
          v109 = v39;
          v51 = v105;
          sub_261308DFC(v38, v105, type metadata accessor for TransactionData);
          v52 = *(**(v29 + 24) + 240);

          LOBYTE(v52) = v52(v53);

          if (v52)
          {
            sub_261306788(v51);
          }

          v65 = *(**(v29 + 24) + 176);

          v67 = v65(v66);
          v69 = v68;

          if (v69 >> 60 == 15)
          {
            v70 = *(v29 + 88);
            (*(v29 + 80))(0, 27, 0);
            return sub_261308D00(v51, type metadata accessor for TransactionData);
          }

          else
          {
            v110 = v29;
            v71 = *(v29 + 24);
            (*(v101 + 16))(v104, v71 + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v102);
            v72 = v108;
            v73 = (v51 + v108[11]);
            v74 = *v73;
            v75 = v73[1];
            v76 = (v51 + v108[32]);
            v77 = v76[1];
            v102 = *v76;
            v78 = *(v51 + v108[26]);
            v79 = *(*v71 + 128);
            v106 = v75;
            v107 = v74;
            sub_26124C778(v74, v75);

            v101 = v77;

            v81 = v103;
            v79(v80);

            if (v40(v81, 1, v72) || (v82 = *(v81 + v108[24])) == 0)
            {
              sub_26124C718(v81, &qword_27FE9F340, &unk_2613A4B40);
            }

            else
            {
              v83 = v82;
              sub_26124C718(v81, &qword_27FE9F340, &unk_2613A4B40);
              sub_2613A027C();
            }

            v84 = v51 + v108[30];
            v85 = *v84;
            v86 = *(v84 + 8);
            v87 = v51 + v108[31];
            v88 = v51;
            v89 = *v87;
            v90 = *(v87 + 8);
            v91 = objc_allocWithZone(sub_26139F66C());
            sub_26124C778(v67, v69);
            v92 = sub_26139F65C();
            v94 = *(v110 + 80);
            v93 = *(v110 + 88);
            v95 = *(**(v110 + 24) + 152);

            v97 = v95(v96);
            v99 = v98;

            v94(v92, v97, v99 & 1);

            sub_26124A168(v67, v69);
            return sub_261308D00(v88, type metadata accessor for TransactionData);
          }
        }
      }

      else
      {
        v46 = v107;
        sub_26125A870(v110, v107, &qword_27FE9F560, &qword_2613A3CB0);
        v47 = v100[0];
        if (v27(v46, 1, v100[0]) == 1)
        {
          sub_26124C718(v46, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v54 = sub_2613A122C();
          v55 = sub_2613A1D8C();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = v26;
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v111 = v58;
            *v57 = 136315138;
            v59 = sub_26139FACC();
            v61 = v29;
            v62 = sub_26124C11C(v59, v60, &v111);

            *(v57 + 4) = v62;
            v29 = v61;
            _os_log_impl(&dword_261243000, v54, v55, "has error %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v58);
            MEMORY[0x266701350](v58, -1, -1);
            v63 = v57;
            v26 = v56;
            v46 = v107;
            MEMORY[0x266701350](v63, -1, -1);
          }

          (*(v26 + 8))(v46, v47);
        }

        v64 = *(v29 + 88);
        return (*(v29 + 80))(0, v32, 0);
      }
    }
  }

  sub_26125A870(v110, v20, &qword_27FE9F560, &qword_2613A3CB0);
  if (v27(v20, 1, v25) == 1)
  {
    return sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v48 = sub_2613A122C();
  v49 = sub_2613A1D9C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_261243000, v48, v49, "already returned, skipping return data/error", v50, 2u);
    MEMORY[0x266701350](v50, -1, -1);
  }

  return (*(v26 + 8))(v20, v25);
}

uint64_t sub_261308774(int a1)
{
  v2 = v1;
  v4 = sub_26139F13C();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  v14 = sub_26129B5FC();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    if (a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(v55) = a1;
    v18 = v11;
    v19 = v15;
    v20 = v2;
    v21 = v17;
    v22 = v16;
    v23 = sub_26125A798();
    v24 = sub_261291AA8();
    v59 = v14;
    v25 = v23 & 1;
    v16 = v22;
    v17 = v21;
    v2 = v20;
    v15 = v19;
    v11 = v18;
    v26 = v55;
    sub_26129BC3C(v25, v2, 0xD000000000000018, 0x80000002613BC610, v24, v27);
    v14 = v59;

    (*(v16 + 8))(v13, v15);
    if (v26)
    {
      goto LABEL_9;
    }
  }

  v28 = *(**(v2 + 24) + 152);

  v28(v29);
  v31 = v30;

  if (v31)
  {
    v55 = v17;
    v32 = *(v2 + 96);
    if (v32)
    {
      type metadata accessor for PINMonitorEventBuilder();
      v53 = v32;
      sub_2612BAC20(2);
      v54 = v16;
      v33 = v56;
      v34 = v57;
      v35 = v58;
      (*(v57 + 16))(v56, *(v2 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon8PINStore_transactionID, v58);
      v36 = sub_26139F0FC();
      v59 = v14;
      v38 = v37;
      (*(v34 + 8))(v33, v35);
      sub_2612BAC6C(4u, v36, v38);
      v16 = v54;

      v14 = v59;

      v39 = sub_2613A03AC();
      sub_2612BAC6C(6u, v39, v40);

      v41 = sub_2613A05AC();
      sub_2612BAC6C(7u, v41, v42);

      v43 = sub_2613A058C();
      v45 = sub_2612BAC6C(8u, v43, v44);

      (*(*v53 + 176))(v45);
    }

    v46 = *(**(v2 + 24) + 160);

    v46(30, 0);

    v17 = v55;
  }

LABEL_9:
  sub_26125A870(v14, v11, &qword_27FE9F560, &qword_2613A3CB0);
  if (v17(v11, 1, v15) == 1)
  {
    v47 = sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v48 = sub_2613A122C();
    v49 = sub_2613A1D8C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_261243000, v48, v49, "Normal return data after UI", v50, 2u);
      MEMORY[0x266701350](v50, -1, -1);
    }

    v47 = (*(v16 + 8))(v11, v15);
  }

  return (*(*v2 + 296))(v47);
}

uint64_t sub_261308D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261308D68()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_261307918(v3, v4, v5, v2);
}

uint64_t sub_261308DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for IssuerPINTask()
{
  result = qword_27FEAE2E0;
  if (!qword_27FEAE2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261308EB8()
{
  sub_261308F88();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_261308F88()
{
  if (!qword_27FEA0500)
  {
    sub_26139F13C();
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEA0500);
    }
  }
}

uint64_t sub_261308FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalContext_terminalOptions;
  swift_beginAccess();
  return sub_261309038(v1 + v3, a1);
}

uint64_t sub_261309038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2613090A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalContext_terminalOptions;
  swift_beginAccess();
  sub_261309108(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_261309108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2613091D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = a7;
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v28 = a7 >> 8;
  v17 = HIWORD(a7);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalContext_terminalOptions;
  v20 = sub_26139F95C();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 96) = v8;
  *(v18 + 97) = v28;
  *(v18 + 98) = v17;
  sub_2613A121C();

  v21 = sub_2613A10CC();
  v23 = v22;

  *(v18 + 64) = v21;
  *(v18 + 72) = v23;
  v24 = sub_2613A10DC();
  v26 = v25;

  *(v18 + 80) = v24;
  *(v18 + 88) = v26;
  return v18;
}

uint64_t sub_261309344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2613093AC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  sub_261309344(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalContext_terminalOptions);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PaymentTerminalContext()
{
  result = qword_27FEAE2F0;
  if (!qword_27FEAE2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26130948C()
{
  sub_261309538();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_261309538()
{
  if (!qword_27FEA0508)
  {
    sub_26139F95C();
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEA0508);
    }
  }
}

void sub_261309590()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 72);

  v4 = sub_26125B314(v2, v3);

  v114 = v4;
  if (v4)
  {
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = v0[4];
  v8 = v0[5];
  v113 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 1, v7);
  (*(v8 + 24))(&v119, v5, v6, v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2613AC780;
  *(v9 + 32) = sub_2613A101C();
  *(v9 + 40) = v10;
  v11 = sub_2612E6298();
  v13 = *v11;
  v12 = v11[1];
  *&v116 = v13;
  *(&v116 + 1) = v12;

  MEMORY[0x2666FFEA0](10272, 0xE200000000000000);
  v14 = sub_2612E62A4();
  v15 = *v14;
  v16 = *(v14 + 1);

  MEMORY[0x2666FFEA0](v15, v16);

  MEMORY[0x2666FFEA0](41, 0xE100000000000000);
  v17 = v116;
  v18 = MEMORY[0x277D837D0];
  *(v9 + 72) = MEMORY[0x277D837D0];
  *(v9 + 48) = v17;
  *(v9 + 80) = sub_2613A109C();
  *(v9 + 88) = v19;
  v21 = v1[4];
  v20 = v1[5];
  *(v9 + 120) = v18;
  *(v9 + 96) = v21;
  *(v9 + 104) = v20;

  *(v9 + 128) = sub_2613A10BC();
  *(v9 + 136) = v22;
  v24 = v1[2];
  v23 = v1[3];
  *(v9 + 168) = v18;
  *(v9 + 144) = v24;
  *(v9 + 152) = v23;

  *(v9 + 176) = sub_2613A105C();
  *(v9 + 184) = v25;
  v26 = v1[8];
  v27 = v1[9];

  v28 = sub_2612CA370(6);
  v29 = v1;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  *&v116 = 3026478;
  *(&v116 + 1) = 0xE300000000000000;
  v36 = MEMORY[0x2666FFE20](v28, v31, v33, v35);
  v38 = v37;

  *&v115[0] = v36;
  *(&v115[0] + 1) = v38;
  sub_2613A1A1C();
  v39 = sub_2613A1FCC();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v112 = v29;
  v47 = v29[8];
  v46 = v29[9];

  sub_26129C02C(6uLL, v47, v46);
  v49 = v48;
  v51 = v50;

  *(v9 + 216) = MEMORY[0x277D83E40];
  v52 = swift_allocObject();
  *(v9 + 192) = v52;
  v117 = v49;
  v118 = v51;
  v53 = MEMORY[0x2666FFE20](v39, v41, v43, v45);
  v55 = v54;

  *&v115[0] = v53;
  *(&v115[0] + 1) = v55;
  sub_261309E5C();
  sub_2613A1A1C();
  v56 = sub_2613A1FCC();
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v52[2] = v56;
  v52[3] = v58;
  v52[4] = v60;
  v52[5] = v62;
  v63 = MEMORY[0x277D837D0];
  *(v9 + 224) = sub_2613A0FEC();
  *(v9 + 232) = v64;
  *&v116 = 0;
  *(&v116 + 1) = 0xE000000000000000;
  if (v120)
  {
    v65 = v119;
  }

  else
  {
    v65 = 0x6E776F6E6B6E75;
  }

  if (v120)
  {
    v66 = v120;
  }

  else
  {
    v66 = 0xE700000000000000;
  }

  MEMORY[0x2666FFEA0](v65, v66);

  v67 = v116;
  *(v9 + 264) = v63;
  *(v9 + 240) = v67;
  *(v9 + 272) = sub_2613A108C();
  *(v9 + 280) = v68;
  *&v116 = 0;
  *(&v116 + 1) = 0xE000000000000000;
  v69 = *(v112 + 98);
  LOWORD(v115[0]) = *(v112 + 48);
  BYTE2(v115[0]) = v69;
  sub_2613A21FC();
  *(v9 + 312) = v63;
  *(v9 + 288) = 0;
  *(v9 + 296) = 0xE000000000000000;
  *(v9 + 320) = sub_2613A102C();
  *(v9 + 328) = v70;
  v71 = v121;
  v72 = MEMORY[0x277D839B0];
  *(v9 + 360) = MEMORY[0x277D839B0];
  *(v9 + 336) = v71;
  *(v9 + 368) = sub_2613A107C();
  *(v9 + 376) = v73;
  v74 = v122;
  *(v9 + 408) = v72;
  *(v9 + 384) = v74;
  *(v9 + 416) = sub_2613A100C();
  *(v9 + 424) = v75;
  v76 = v123;
  *(v9 + 456) = v72;
  *(v9 + 432) = v76;
  *(v9 + 464) = sub_2613A0FFC();
  *(v9 + 472) = v77;
  v78 = v124;
  *(v9 + 504) = v72;
  *(v9 + 480) = v78;
  *(v9 + 512) = sub_2613A106C();
  *(v9 + 520) = v79;
  v80 = v125;
  *(v9 + 552) = v72;
  *(v9 + 528) = v80;
  *(v9 + 560) = sub_2613A10AC();
  *(v9 + 568) = v81;
  *&v116 = 0;
  *(&v116 + 1) = 0xE000000000000000;
  if (v127)
  {
    v82 = v126;
  }

  else
  {
    v82 = 0x7974706D65;
  }

  if (v127)
  {
    v83 = v127;
  }

  else
  {
    v83 = 0xE500000000000000;
  }

  MEMORY[0x2666FFEA0](v82, v83);

  v84 = v116;
  *(v9 + 600) = v63;
  *(v9 + 576) = v84;
  sub_2612C59B8(&v119);
  v85 = sub_261259E78(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (!v114 || (v86 = *(*v114 + 376), v87 = , v88 = v86(v87), , !v88))
  {
    v89 = v113;
    goto LABEL_34;
  }

  v89 = v113;
  v90 = v113[7];
  if (!v90 || (v114[2] != v113[6] || v90 != v114[3]) && (sub_2613A241C() & 1) == 0)
  {

    goto LABEL_34;
  }

  v91 = v88[16];
  v92 = v88[15] & 0xFFFFFFFFFFFFLL;
  if ((v91 & 0x2000000000000000) != 0)
  {
    v92 = HIBYTE(v91) & 0xF;
  }

  if (v92)
  {
    v93 = sub_2613A104C();
    v95 = v94;
    v96 = v88[15];
    v97 = v88[16];
    v118 = v63;
    *&v116 = v96;
    *(&v116 + 1) = v97;
    sub_26125A7B0(&v116, v115);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_261258F20(v115, v93, v95, isUniquelyReferenced_nonNull_native);
  }

  if ((*(*v88 + 200))())
  {
    v99 = sub_2613A103C();
    v101 = v100;
    v118 = v63;
    *&v116 = 0x44455249505845;
    *(&v116 + 1) = 0xE700000000000000;
    sub_26125A7B0(&v116, v115);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    sub_261258F20(v115, v99, v101, v102);

LABEL_34:
    v111 = v89[9];
    (v89[8])(v85, 0);

    return;
  }

  v103 = (*(*v88 + 216))();
  if ((*&v103 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v103 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v103 < 9.22337204e18)
  {
    v104 = v103;
    v105 = sub_2613A103C();
    v107 = v106;
    *&v115[0] = v104 / 60;
    *&v116 = sub_2613A23EC();
    *(&v116 + 1) = v108;
    MEMORY[0x2666FFEA0](58, 0xE100000000000000);
    *&v115[0] = v104 % 60;
    v109 = sub_2613A23EC();
    MEMORY[0x2666FFEA0](v109);

    MEMORY[0x2666FFEA0](0x7466656C20, 0xE500000000000000);
    v118 = MEMORY[0x277D837D0];
    sub_26125A7B0(&v116, v115);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    sub_261258F20(v115, v105, v107, v110);

    goto LABEL_34;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_261309DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v11 = *(**sub_2612C11DC() + 112);

  v11(v12);

  a6[6] = a2;
  a6[7] = a3;
  a6[8] = a4;
  a6[9] = a5;
  return result;
}

unint64_t sub_261309E5C()
{
  result = qword_27FEA0510;
  if (!qword_27FEA0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0510);
  }

  return result;
}

uint64_t sub_261309EB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_261309EF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261309F5C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261309FF8);
}

uint64_t sub_261309FF8()
{
  v1 = v0[7];
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = sub_26124C718(v0[7], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[7];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "[SAF] decline transaction", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[7];

    v5 = (*(v4 + 8))(v10, v3);
  }

  if ((*((*MEMORY[0x277D85000] & *v0[6]) + 0x1B0))(v5))
  {
    sub_261397E34(v0[5]);
  }

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_26130A21C;
  v13 = v0[5];
  v12 = v0[6];

  return sub_26130A45C(v11, v12, v13, (v0 + 2));
}

uint64_t sub_26130A21C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v6 = *v1;

  if (v0)
  {
    *(v2 + 72) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v4 = sub_26130A33C;
  }

  else
  {
    v4 = sub_26130A3F8;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26130A33C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 25);
  type metadata accessor for StoreAndForwardManager();
  v4 = sub_261272A24(v1, v3);
  *(v0 + 32) = v4;
  sub_2612B45EC();
  swift_willThrowTypedImpl();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_26130A3F8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26130A45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[98] = a4;
  v4[97] = a3;
  v4[96] = a2;
  return MEMORY[0x2822009F8](sub_26130A484);
}

uint64_t sub_26130A484()
{
  v9 = *(v0 + 768);
  sub_26130CC3C((v0 + 16));
  v1 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v1;
  *(v0 + 425) = *(v0 + 137);
  v2 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v2;
  v3 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v3;
  v4 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v4;
  v5 = swift_task_alloc();
  *(v0 + 792) = v5;
  *(v5 + 16) = v0 + 304;
  *(v5 + 24) = vextq_s8(v9, v9, 8uLL);
  v6 = swift_task_alloc();
  *(v0 + 800) = v6;
  *v6 = v0;
  v6[1] = sub_26130A594;
  v7 = *(v0 + 768);

  return sub_26130B004(v6, &unk_2613AC848, v5, v0 + 736);
}

uint64_t sub_26130A594()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v6 = *v1;

  if (v0)
  {
    *(v2 + 808) = *(v2 + 736);
    *(v2 + 153) = *(v2 + 744);
    v4 = sub_26130A6B4;
  }

  else
  {
    v4 = sub_26130AA08;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26130A6B4()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 768);

  type metadata accessor for SafMonitorEventDispatcher();
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter;
  v4 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v4;
  *(v0 + 281) = *(v0 + 425);
  v5 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v5;
  v6 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v6;
  v7 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v7;
  v8 = swift_task_alloc();
  *(v0 + 816) = v8;
  *v8 = v0;
  v8[1] = sub_26130A7C4;
  v9 = *(v0 + 808);
  v10 = *(v0 + 776);
  v11 = *(v0 + 153);

  return sub_26129EF48(v2 + v3, v0 + 160, v10, v9, v11);
}

uint64_t sub_26130A7C4()
{
  v1 = *(*v0 + 816);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26130A8C0);
}

uint64_t sub_26130A8C0()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 768)) + 0x1B0))())
  {
    sub_261399030(*(v0 + 776), *(v0 + 808), *(v0 + 153));
  }

  v1 = *(v0 + 153);
  v2 = *(v0 + 808);
  v3 = *(v0 + 784);
  *(v0 + 752) = v2;
  *(v0 + 760) = v1;
  sub_261274084();
  swift_willThrowTypedImpl();
  v4 = *(v0 + 416);
  *(v0 + 544) = *(v0 + 400);
  *(v0 + 560) = v4;
  *(v0 + 569) = *(v0 + 425);
  v5 = *(v0 + 352);
  *(v0 + 480) = *(v0 + 336);
  *(v0 + 496) = v5;
  v6 = *(v0 + 384);
  *(v0 + 512) = *(v0 + 368);
  *(v0 + 528) = v6;
  v7 = *(v0 + 320);
  *(v0 + 448) = *(v0 + 304);
  *(v0 + 464) = v7;
  sub_26124C718(v0 + 448, &qword_27FE9F458, &unk_2613A4BE0);
  *v3 = v2;
  *(v3 + 8) = v1;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26130AA08()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 416);
  *(v0 + 688) = *(v0 + 400);
  *(v0 + 704) = v2;
  v3 = *(v0 + 352);
  *(v0 + 624) = *(v0 + 336);
  *(v0 + 640) = v3;
  v4 = *(v0 + 384);
  *(v0 + 656) = *(v0 + 368);
  *(v0 + 672) = v4;
  v5 = *(v0 + 320);
  *(v0 + 592) = *(v0 + 304);
  *(v0 + 608) = v5;
  *(v0 + 713) = *(v0 + 425);
  sub_26124C718(v0 + 592, &qword_27FE9F458, &unk_2613A4BE0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26130AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[60] = a6;
  v7[61] = a7;
  v7[58] = a4;
  v7[59] = a5;
  v7[56] = a2;
  v7[57] = a3;
  return MEMORY[0x2822009F8](sub_26130AADC);
}

uint64_t sub_26130AADC()
{
  v1 = v0[58];
  v2 = v0[56];
  type metadata accessor for StoreAndForwardManager();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  sub_26126B07C(v3, v4, (v0 + 20));
  sub_26130CD20((v0 + 20), v1);
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_26130ABB8;
  v6 = v0[59];
  v7 = v0[57];

  return sub_26126CAB0(v3, v4, v6);
}

uint64_t sub_26130ABB8(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 496);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v6 + 488);
    *v9 = a1;
    *(v9 + 8) = a2;
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26130AD20);
  }
}

uint64_t sub_26130AD20()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  type metadata accessor for SafMonitorEventDispatcher();
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter;
  *(v0 + 16) = *v2;
  v4 = v2[4];
  v6 = v2[1];
  v5 = v2[2];
  *(v0 + 64) = v2[3];
  *(v0 + 80) = v4;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v8 = v2[6];
  v7 = v2[7];
  v9 = v2[5];
  *(v0 + 137) = *(v2 + 121);
  *(v0 + 112) = v8;
  *(v0 + 128) = v7;
  *(v0 + 96) = v9;
  sub_26125A870(v0 + 16, v0 + 304, &qword_27FE9F458, &unk_2613A4BE0);
  v10 = swift_task_alloc();
  *(v0 + 504) = v10;
  *v10 = v0;
  v10[1] = sub_26130AE34;
  v11 = *(v0 + 472);

  return sub_26129EB38(v1 + v3, v0 + 16, v11);
}

uint64_t sub_26130AE34()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v4 = *v0;

  sub_26124C718(v1 + 16, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_26130AF48);
}

uint64_t sub_26130AF48()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 480)) + 0x1B0))())
  {
    sub_261399030(*(v0 + 472), 0, 255);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26130B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = v4;
  v5[14] = a4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_26130B02C);
}

uint64_t sub_26130B02C()
{
  v1 = v0[13];
  sub_26130C424();
  v2 = v0[13];
  v3 = sub_26130C608(0x80000002613BC760);
  v0[15] = v3;
  v4 = v3;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v0[13]) + 0x180))();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    type metadata accessor for StoreAndForwardManager();
    v7 = sub_261269430();
    v13 = *((*v5 & *v0[13]) + 0x188);

    v13(v14);
  }

  v0[16] = v7;
  v15 = (v0[11] + *v0[11]);
  v8 = *(v0[11] + 4);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_26130B2D4;
  v10 = v0[12];
  v11 = v0[10];

  return v15(v11, v4, v7, v0 + 7);
}

uint64_t sub_26130B2D4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;

  if (v0)
  {
    *(v2 + 144) = *(v2 + 56);
    *(v2 + 49) = *(v2 + 64);
    v4 = sub_26130B3F4;
  }

  else
  {
    v4 = sub_26130B474;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26130B3F4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);

  v3 = *(v0 + 49);
  v4 = *(v0 + 112);
  *v4 = *(v0 + 144);
  *(v4 + 8) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26130B474()
{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26130B668(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_26139F13C();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_26139F11C();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_26130B794;

  return sub_261309F5C(v9);
}

uint64_t sub_26130B794(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;

  v8 = v4[6];
  v9 = v4[2];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v1)
  {
    sub_2612B45EC();
    v10 = swift_allocError();
    *v11 = a1;
    v12 = sub_26139EE6C();
    (*(v8 + 16))(v8, v12);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  v13 = v5[5];
  _Block_release(v5[6]);

  v14 = *(v7 + 8);

  return v14();
}

uint64_t sub_26130B98C()
{
  *(v1 + 72) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26130BA28);
}

uint64_t sub_26130BA28()
{
  v1 = v0[10];
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[10];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "[SAF] status", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[10];

    (*(v4 + 8))(v9, v3);
  }

  v10 = v0[9];
  sub_26130C424();
  v11 = v0[9];
  v12 = sub_26130C608(0x80000002613BC760);
  v0[11] = v12;
  v13 = MEMORY[0x277D85000];
  v14 = (*((*MEMORY[0x277D85000] & *v0[9]) + 0x180))();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    type metadata accessor for StoreAndForwardManager();
    v15 = sub_261269430();
    v20 = *((*v13 & *v0[9]) + 0x188);

    v20(v21);
  }

  v0[12] = v15;
  v17 = *(v12 + 80);
  v16 = *(v12 + 88);
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_26130BDDC;

  return sub_26126BF78(v17, v16);
}

uint64_t sub_26130BDDC(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 104);
  v7 = *v3;
  *(*v3 + 112) = a1;

  if (v2)
  {
    *(v5 + 49) = a2;
    v8 = sub_26130BF80;
  }

  else
  {
    v8 = sub_26130BF04;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26130BF04()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[14];

  return v4(v5);
}

uint64_t sub_26130BF80()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 49);
  type metadata accessor for StoreAndForwardManager();
  v6 = sub_261272A24(v3, v5);
  *(v0 + 56) = v6;
  sub_2612B45EC();
  swift_willThrowTypedImpl();

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_26130C1C0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_26130C268;

  return sub_26130B98C();
}

uint64_t sub_26130C268(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v4 + 24);
  if (v1)
  {
    sub_2612B45EC();
    v9 = swift_allocError();
    *v10 = a1;
    v11 = sub_26139EE6C();
    (v8)[2](v8, 0, v11);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_26130C424()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v12 - v4;
  if ((*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) & 1) == 0)
  {
    v6 = sub_26129B5FC();
    sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v9 = sub_2613A122C();
      v10 = sub_2613A1D8C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_261243000, v9, v10, "[SAF] no entitlement", v11, 2u);
        MEMORY[0x266701350](v11, -1, -1);
      }

      (*(v8 + 8))(v5, v7);
    }

    v12 = 0;
    v13 = 2;
    sub_261274084();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26130C608(uint64_t a1)
{
  v42 = a1;
  v2 = sub_26139FDCC();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139FAEC();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26139FB7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v35 - v18;
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x2A0))(v17);
  if (!result)
  {
    v35 = v6;
    v36 = v14;
    v21 = v40;
    v37 = v9;
    v38 = v11;
    v39 = v10;
    v45 = v5;
    v22 = sub_26129B5FC();
    sub_26125A870(v22, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v19, 1, v23) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
      v25 = v2;
      v27 = v36;
      v26 = v37;
    }

    else
    {
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();
      v30 = os_log_type_enabled(v28, v29);
      v25 = v2;
      v27 = v36;
      if (v30)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v28, v29, "[SAF] no context", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v24 + 8))(v19, v23);
      v26 = v37;
    }

    (*(v41 + 104))(v26, *MEMORY[0x277D43868], v35);
    (*(v21 + 104))(v45, *MEMORY[0x277D43978], v25);
    v32 = objc_opt_self();

    v33 = [v32 processInfo];
    v34 = [v33 processName];

    sub_2613A18CC();
    sub_26139FB6C();
    sub_26139FDBC();
    v43 = 0;
    v44 = 2;
    sub_261274084();
    swift_willThrowTypedImpl();
    (*(v38 + 8))(v27, v39);
    return 0;
  }

  return result;
}

uint64_t sub_26130CADC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_26130C1C0(v2, v3);
}

uint64_t sub_26130CB88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_26130B668(v2, v3, v4);
}

double sub_26130CC3C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
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

uint64_t sub_26130CC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4[4];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_261262AA4;

  return sub_26130AAB4(v12, a2, a3, v9, v10, v11, a4);
}

uint64_t sub_26130CD20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F458, &unk_2613A4BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26130CE8C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_26130CEDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_26130CF30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v59 = a7;
  v60 = a8;
  v58 = a6;
  v55 = a4;
  v56 = a5;
  v57 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v55 - v16;
  v18 = objc_allocWithZone(v9);
  v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession] = 0;
  v19 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0518, &unk_2613AC888);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0520, &unk_2613AC898);
  v22 = type metadata accessor for TransactionUIManager(0);
  *&v18[v19] = sub_26127B4E0(0, v20, v21, v22);
  v23 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0528, &unk_2613AC8A8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0530, &qword_2613AC8B8);
  v26 = type metadata accessor for RegistrationUIManager(0);
  *&v18[v23] = sub_26127B4E0(1u, v24, v25, v26);
  v27 = *(**sub_2612C11DC() + 112);

  v27(v28);

  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cachedSAFManager] = 0;
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask] = 0;
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_analyticsTask] = 0;
  v29 = &v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion];
  *v29 = 0;
  v29[1] = 0;
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask] = 0;
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask] = 0;
  v30 = &v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion];
  *v30 = 0;
  v30[1] = 0;
  v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling] = 0;
  v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive] = 0;
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask] = 0;
  v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup] = 0;
  v31 = &v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion];
  *v31 = 0;
  v31[1] = 0;
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_context] = 0;
  v32 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuation;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v34 = *(*(v33 - 8) + 56);
  v34(&v18[v32], 1, 1, v33);
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout] = 0;
  v34(&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuation], 1, 1, v33);
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout] = 0;
  v35 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_continuityDisplayMonitor;
  type metadata accessor for ContinuityDisplayMonitor();
  *&v18[v35] = sub_2612FC220();
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog] = 0;
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_connection] = a1;
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client] = a2;
  v36 = &v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_bundleId];
  v37 = v55;
  v38 = v56;
  *v36 = a3;
  v36[1] = v37;
  v39 = &v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_installId];
  v41 = v58;
  v40 = v59;
  *v39 = v38;
  v39[1] = v41;
  v42 = &v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_seInfo];
  *v42 = v40;
  *(v42 + 1) = v60;
  v42[16] = v57 & 1;
  v43 = a1;
  swift_unknownObjectRetain();
  sub_26128DAD8(v43, v62);
  v44 = &v18[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements];
  v45 = v62[3];
  *(v44 + 2) = v62[2];
  *(v44 + 3) = v45;
  *(v44 + 4) = v63[0];
  *(v44 + 79) = *(v63 + 15);
  v46 = v62[1];
  *v44 = v62[0];
  *(v44 + 1) = v46;
  v61.receiver = v18;
  v61.super_class = v10;
  v47 = objc_msgSendSuper2(&v61, sel_init);
  v48 = sub_26129B5FC();
  sub_26125A870(v48, v17, &qword_27FE9F560, &qword_2613A3CB0);
  v49 = sub_2613A124C();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v17, 1, v49) == 1)
  {

    swift_unknownObjectRelease();
    sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v51 = sub_2613A122C();
    v52 = sub_2613A1D9C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_261243000, v51, v52, "created", v53, 2u);
      MEMORY[0x266701350](v53, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v50 + 8))(v17, v49);
  }

  return v47;
}

id sub_26130D468()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = *(**sub_2612C11DC() + 120);

  v6(v7);

  v8 = *(**&v0[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager] + 568);

  v8(v9);

  v10 = *(**&v0[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager] + 448);

  v10(v11);

  v12 = sub_26129B5FC();
  sub_26125A870(v12, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "destroyed", v17, 2u);
      MEMORY[0x266701350](v17, -1, -1);
    }

    (*(v14 + 8))(v5, v13);
  }

  v18 = type metadata accessor for PaymentTerminalService();
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_dealloc);
}

uint64_t sub_26130D954()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    v9 = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "onDisconnect", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    v9 = (*(v8 + 8))(v5, v7);
  }

  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
  v14 = (*(*v13 + 536))(v9);
  v15 = *v13;
  if (v14)
  {
    if (((*(v15 + 520))() & 1) == 0)
    {
      v16 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
      if (v16)
      {
        v17 = *(*v16 + 296);

        v17(2);
      }

      v18 = &selRef_updateWithTransactionEvent_;
      v19 = 20;
      return [v13 *v18];
    }
  }

  else
  {
    result = (*(v15 + 544))();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v18 = &selRef_errorInDaemonWithError_;
  v19 = 2;
  return [v13 *v18];
}

void *sub_26130DC08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v1, 0xD000000000000016, 0x80000002613BD0E0, v10, v11);

    (*(v8 + 8))(v5, v7);
  }

  [*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client) closed_];
  result = [*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_connection) invalidate];
  if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive) == 1)
  {
    *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive) = 0;
    v13 = MEMORY[0x277D85000];
    v14 = *((*MEMORY[0x277D85000] & *v1) + 0x1B0);
    v15 = v14(result);
    if (v15)
    {
      sub_26139AA34();
    }

    v16 = v14(v15);
    if (v16)
    {
      sub_261391B34(0);
    }

    result = (*((*v13 & *v1) + 0x2A0))(v16);
    if (result)
    {
      v17 = result[8];
      v18 = result[9];

      v19 = j_nullsub_1(v17, v18);
      v21 = v20;
      v27 = &type metadata for ReaderInactive;
      v28 = sub_2613246E4();
      *&v26 = v19;
      *(&v26 + 1) = v21;
      sub_2612B64A4(1, &v26, v29);
      v22 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter);
      v23 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
      v24 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v24 + 120))(v29, v23, v24);
      return sub_2612A0E50(v29);
    }
  }

  return result;
}

void sub_26130DF80(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v5 = v4;
  v34 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v33 = sub_26129B5FC();
  sub_26125A870(v33, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  v32 = *(v17 + 48);
  if (v32(v15, 1, v16) == 1)
  {
    v18 = sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v31 = v16;
    v19 = sub_26125A798();
    v20 = sub_261291AA8();
    v30 = a2;
    v16 = v31;
    sub_26129BC3C(v19 & 1, v5, 0xD00000000000001ELL, 0x80000002613BC8D0, v20, v21);
    a2 = v30;

    v18 = (*(v17 + 8))(v15, v16);
  }

  v22 = (*((*MEMORY[0x277D85000] & *v5) + 0x2A0))(v18);
  if (v22)
  {
    v23 = v22;
    if (sub_26130E39C(a3))
    {
      type metadata accessor for LinkTask();

      v24 = sub_261345EA4(v23, v34, a2, 0);
      (*(*v24 + 200))(a3, a4);
    }

    else
    {
      sub_26125A870(v33, v13, &qword_27FE9F560, &qword_2613A3CB0);
      if (v32(v13, 1, v16) == 1)
      {

        sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v27 = sub_2613A122C();
        v28 = sub_2613A1D9C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_261243000, v27, v28, "linkPreCheck - failed", v29, 2u);
          MEMORY[0x266701350](v29, -1, -1);
        }

        (*(v17 + 8))(v13, v16);
      }
    }
  }

  else
  {
    v35[0] = 0x65746E6F63206F6ELL;
    v35[1] = 0xEA00000000007478;
    sub_261314DEC(v35, &v36);
    v25 = objc_allocWithZone(sub_26139F2CC());
    v26 = sub_26139F2DC();
    a3(0, v26);
  }
}

uint64_t sub_26130E39C(void (*a1)(void, void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19[-1] - v5;
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    v7 = sub_26129B5FC();
    sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
      return 1;
    }

    else
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D9C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "linkPreCheck - ui mode, so always pass", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      (*(v9 + 8))(v6, v8);
      return 1;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80))
    {
      sub_2613A121C();
      if (sub_2613A10FC())
      {
        if (!*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion))
        {
          return 1;
        }

        v19[0] = 0xD000000000000010;
        v19[1] = 0x80000002613BC930;
        sub_261314DEC(v19, &v20);
        v11 = objc_allocWithZone(sub_26139F2CC());
      }

      else
      {
        v19[0] = 0xD000000000000032;
        v19[1] = 0x80000002613BC8F0;
        sub_261314DEC(v19, &v20);
        v16 = objc_allocWithZone(sub_26139F2CC());
      }
    }

    else
    {
      strcpy(v19, "no entitlement");
      HIBYTE(v19[1]) = -18;
      sub_261314DEC(v19, &v20);
      v15 = objc_allocWithZone(sub_26139F2CC());
    }

    v17 = sub_26139F2DC();
    a1(0, v17);

    return 0;
  }
}

void sub_26130E754(uint64_t a1, uint64_t a2, int a3, void (*a4)(void, void *), uint64_t a5)
{
  v6 = v5;
  v47 = a1;
  v48 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v45 = sub_26129B5FC();
  sub_26125A870(v45, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  v44 = *(v18 + 48);
  v19 = v44(v16, 1, v17);
  v46 = a3;
  if (v19 == 1)
  {
    v20 = sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v49 = 0x206B6E696C6572;
    v50 = 0xE700000000000000;
    if (a3)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    v42 = a5;
    v43 = a4;
    if (a3)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    MEMORY[0x2666FFEA0](v21, v22);

    v23 = v49;
    v24 = v50;
    v25 = sub_26125A798();
    sub_26129BC3C(v25 & 1, v6, 0xD000000000000021, 0x80000002613BC950, v23, v24);
    a5 = v42;
    a4 = v43;

    v20 = (*(v18 + 8))(v16, v17);
  }

  v26 = (*((*MEMORY[0x277D85000] & *v6) + 0x2A0))(v20);
  if (v26)
  {
    v27 = v26;
    if (sub_26130E39C(a4))
    {
      v28 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
      v29 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
      v30 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion + 8);
      *v28 = a4;
      v28[1] = a5;

      sub_26124A228(v29);
      type metadata accessor for LinkTask();

      v31 = v48;

      LOBYTE(v30) = v46 & 1;
      v32 = v47;
      v33 = sub_261345EA4(v27, v47, v31, v46 & 1);
      v34 = swift_allocObject();
      *(v34 + 16) = v6;
      *(v34 + 24) = a4;
      *(v34 + 32) = a5;
      *(v34 + 40) = v33;
      *(v34 + 48) = v32;
      *(v34 + 56) = v31;
      *(v34 + 64) = v30;
      *(v34 + 72) = v27;
      v35 = *(*v33 + 192);

      v36 = v6;

      v35(sub_26131FF6C, v34);
    }

    else
    {
      sub_26125A870(v45, v14, &qword_27FE9F560, &qword_2613A3CB0);
      if (v44(v14, 1, v17) == 1)
      {

        sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v39 = sub_2613A122C();
        v40 = sub_2613A1D9C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_261243000, v39, v40, "linkPreCheck - failed", v41, 2u);
          MEMORY[0x266701350](v41, -1, -1);
        }

        (*(v18 + 8))(v14, v17);
      }
    }
  }

  else
  {
    v49 = 0x65746E6F63206F6ELL;
    v50 = 0xEA00000000007478;
    sub_261314DEC(&v49, &v51);
    v37 = objc_allocWithZone(sub_26139F2CC());
    v38 = sub_26139F2DC();
    a4(0, v38);
  }
}

void sub_26130EC44(char a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 *a10)
{
  v43 = a8;
  v16 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v40 - v19;
  if ((a1 & 1) == 0)
  {
    sub_26130EFF0(2, a2);
    return;
  }

  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    goto LABEL_5;
  }

  sub_2613A121C();
  sub_2613A113C();
  if (v21)
  {

LABEL_5:
    v22 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask);
    *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask) = a6;

    *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup) = 0;
    v23 = a10[96];
    v24 = a10[97];
    v25 = a10[98];
    v26 = sub_26129B5FC();
    sub_26125A870(v26, v20, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v20, 1, v27) == 1)
    {
      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v42 = a9;
      v29 = sub_26125A798();
      v30 = sub_261291AA8();
      v41 = v25;
      v16 = v42;
      sub_26129BC3C(v29 & 1, a3, 0xD000000000000020, 0x80000002613BC980, v30, v31);
      v25 = v41;

      (*(v28 + 8))(v20, v27);
    }

    v32 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager);
    (*(*v32 + 368))(a3);
    v33 = *(*v32 + 488);
    v34 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_connection);
    v33(a7, v43, v16 & 1, v34, v23 | (v24 << 8) | (v25 << 16));

    return;
  }

  v44[0] = 0xD000000000000032;
  v44[1] = 0x80000002613BD100;
  sub_261314DEC(v44, &v45);
  v35 = objc_allocWithZone(sub_26139F2CC());
  v36 = sub_26139F2DC();
  a4(0, v36);

  v37 = (a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
  v38 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
  v39 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion + 8);
  *v37 = 0;
  v37[1] = 0;

  sub_26124A228(v38);
}

void *sub_26130EFF0(char a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager);
  if ((*(*v6 + 192))())
  {
    (*(*v6 + 456))();
  }

  if (a1 == 2)
  {
    v7 = v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion;
    v8 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(v7 + 8);
      v10 = a2;
      sub_26124A17C(v8);
      v8(0, a2);
      v11 = v8;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v14 = *(v7 + 8);
      v15 = objc_allocWithZone(sub_26139F2CC());

      v10 = sub_26139F2DC();
      v8(0, v10);
      v11 = v8;
    }

    sub_26124A228(v11);
  }

  else
  {
    v12 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
    if (v12)
    {
      v13 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion + 8);

      v12(a1 & 1, 0);
      sub_26124A228(v12);
    }
  }

LABEL_12:
  v16 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup;
  if ((*(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup) & 1) == 0)
  {
    v17 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask);
    *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask) = 0;

    *(v3 + v16) = 0;
  }

  v18 = (v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
  v19 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion);
  v20 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_registrationCompletion + 8);
  *v18 = 0;
  v18[1] = 0;
  result = sub_26124A228(v19);
  if (*(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) == 1)
  {
    *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) = 0;

    return sub_26130DC08();
  }

  return result;
}