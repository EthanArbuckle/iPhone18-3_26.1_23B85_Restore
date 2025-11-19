void *sub_20BFFBFDC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_20BFFC080(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
    }

    v9 = a5(result, a2, a3);

    return v9;
  }

  return result;
}

void *sub_20BFFC110(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BFFF744(v13, a2, a3, a4, a5, a6, a7);
    v15 = v14;
    swift_bridgeObjectRelease_n();

    return v15;
  }

  return result;
}

void *sub_20BFFC1CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, void, uint64_t *, void *, uint64_t (*)(uint64_t a1, uint64_t a2, char a3)))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v9;
    }

    v10 = a5(result, a2, a3, a4, MEMORY[0x277D527B8], &qword_27C762F00, &unk_20C152DE0, sub_20B583F4C);

    return v10;
  }

  return result;
}

void *sub_20BFFC294(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, void, void *, void *, uint64_t (*)(uint64_t a1, uint64_t a2, char a3)))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v9;
    }

    v10 = a5(result, a2, a3, a4, MEMORY[0x277D52800], &unk_27C766C00, &unk_20C15E820, sub_20B583F4C);

    return v10;
  }

  return result;
}

uint64_t sub_20BFFC35C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

void sub_20BFFC3EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a1;
  v6 = sub_20C138034();
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v55 = v11;
  v56 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v48 = 0;
  v49 = a4 + 56;
  v53 = a4;
  v54 = v7;
  v51 = (v7 + 8);
  v52 = v7 + 16;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v57 = (v17 - 1) & v17;
LABEL_12:
    v22 = v19 | (v10 << 6);
    v23 = *(v56 + 48);
    v24 = *(v54 + 72);
    v50 = v22;
    (*(v54 + 16))(v58, v23 + v24 * v22, v6, v8);
    v25 = sub_20C138024();
    v27 = v26;
    if (*(a4 + 16) && (v28 = v25, sub_20C13E164(), sub_20C13CA64(), v29 = sub_20C13E1B4(), v30 = -1 << *(a4 + 32), v31 = v29 & ~v30, v32 = v49, ((*(v49 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
    {
      v33 = ~v30;
      while (1)
      {
        v34 = (*(a4 + 48) + 16 * v31);
        v35 = *v34 == v28 && v34[1] == v27;
        if (v35 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v31 = (v31 + 1) & v33;
        if (((*(v32 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v36 = 1;
    }

    else
    {
LABEL_21:
      v36 = 0;
    }

    v37 = v58;
    v38 = sub_20C137FF4();
    v40 = v39;
    v59 = v38;
    v60 = v39;
    v42 = v41 & 1;
    v61 = v41 & 1;
    v62 = 8;
    sub_20B852060();
    sub_20B8520B4();
    v43 = sub_20C133C04();
    sub_20B583F4C(v38, v40, v42);
    v6 = v55;
    (*v51)(v37, v55);
    a4 = v53;
    v17 = v57;
    if (v36)
    {
      if (v43)
      {
        *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v48++, 1))
        {
          __break(1u);
LABEL_28:
          v45 = v56;

          sub_20BC0D95C(v47, v46, v48, v45);
          return;
        }
      }
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v18)
    {
      goto LABEL_28;
    }

    v21 = *(v13 + 8 * v10);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v57 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20BFFC758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = *MEMORY[0x277D85DE8];
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v59 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v46 = v10;
    v47 = v3;
    v45[1] = v45;
    MEMORY[0x28223BE20](v12);
    v48 = v45 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v48, v11);
    v49 = 0;
    v10 = 0;
    v3 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = a2 + 56;
    v51 = (v7 + 8);
    v56 = a1;
    v57 = a2;
    v18 = v7;
    v52 = a2 + 56;
    v53 = v7 + 16;
    v54 = v7;
    v55 = v6;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v58 = (v15 - 1) & v15;
LABEL_13:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v18 + 72);
      v50 = v22;
      (*(v18 + 16))(v59, v23 + v24 * v22, v6);
      v25 = sub_20C138024();
      v27 = v26;
      if (*(a2 + 16) && (v28 = v25, sub_20C13E164(), sub_20C13CA64(), v29 = sub_20C13E1B4(), v30 = -1 << *(a2 + 32), v31 = v29 & ~v30, ((*(v17 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (1)
        {
          v33 = (*(a2 + 48) + 16 * v31);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v17 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v7 = 1;
      }

      else
      {
LABEL_22:
        v7 = 0;
      }

      v35 = v59;
      v36 = sub_20C137FF4();
      v38 = v37;
      v61 = v36;
      v62 = v37;
      v40 = v39 & 1;
      v63 = v39 & 1;
      v60 = 8;
      sub_20B852060();
      sub_20B8520B4();
      v11 = sub_20C133C04();
      sub_20B583F4C(v36, v38, v40);
      v6 = v55;
      (*v51)(v35, v55);
      a1 = v56;
      a2 = v57;
      v18 = v54;
      v17 = v52;
      v15 = v58;
      if (v7)
      {
        if (v11)
        {
          *&v48[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
          if (__OFADD__(v49++, 1))
          {
            __break(1u);
LABEL_29:
            v42 = sub_20BC0D95C(v48, v46, v49, a1);

            return v42;
          }
        }
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_29;
      }

      v21 = *(v3 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v58 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_32:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v44 = swift_slowAlloc();

  v42 = sub_20BFFBFDC(v44, v10, a1, a2, sub_20BFFC3EC);

  MEMORY[0x20F2F6A40](v44, -1, -1);

  return v42;
}

void *sub_20BFFCC34(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = a4;
  v104 = a3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120);
  v8 = *(v95 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v78 - v11;
  MEMORY[0x28223BE20](v12);
  v92 = &v78 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  v86 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v14;
  MEMORY[0x28223BE20](v15);
  v83 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B50);
  MEMORY[0x28223BE20](v17 - 8);
  v123 = &v78 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764400);
  v19 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v81 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v78 = &v78 - v22;
  v23 = sub_20C138204();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v78 - v27;
  v29 = *(a1 + 56);
  v106 = a1 + 56;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v105 = (v30 + 63) >> 6;
  v121 = v24 + 16;
  v115 = v8 + 16;
  v89 = v9 + 7;
  v114 = v8 + 32;
  v94 = v8;
  v113 = v8 + 8;
  v88 = v24 + 32;
  v82 = (v24 + 56);
  v99 = (v19 + 56);
  v98 = (v24 + 8);
  v97 = (v19 + 48);
  v79 = v19;
  v80 = (v19 + 32);
  v33 = v28;
  v103 = a1;

  v35 = 0;
  v87 = MEMORY[0x277D84F90];
  v101 = a2;
  v122 = v23;
  v119 = v24;
  v120 = v33;
LABEL_4:
  v36 = v35;
  while (v32)
  {
    v35 = v36;
LABEL_10:
    v37 = *(v103 + 48) + *(v24 + 72) * (__clz(__rbit64(v32)) | (v35 << 6));
    v117 = *(v24 + 16);
    v117(v33, v37, v23);
    v38 = sub_20C1381E4();
    v39 = v5;
    v40 = sub_20BFF3A9C(v38, MEMORY[0x277D502D0], MEMORY[0x277D502C0]);

    if (*(*a2 + 16) || *(*v104 + 16))
    {
      v109 = sub_20B527580(v40);

      v41 = *a2;
      v42 = *v104;

      v43 = MEMORY[0x277D50568];
      v44 = sub_20BFF386C(v41, MEMORY[0x277D50568]);

      v45 = sub_20BFF386C(v42, v43);
      v118 = v39;

      __swift_project_boxed_opaque_existential_1((v96 + 96), *(v96 + 120));
      v46 = v116;
      sub_20C139F64();
      v47 = swift_allocObject();
      *(v47 + 16) = v44;
      *(v47 + 24) = v45;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_20BFFFC78;
      *(v48 + 24) = v47;
      v49 = v94;
      v112 = *(v94 + 16);
      v50 = v93;
      v51 = v95;
      v112(v93, v46, v95);
      v111 = *(v49 + 80);
      v52 = (v111 + 16) & ~v111;
      v110 = v52;
      v53 = (v89 + v52) & 0xFFFFFFFFFFFFFFF8;
      v107 = v53;
      v54 = swift_allocObject();
      v108 = *(v49 + 32);
      v108(v54 + v52, v50, v51);
      v55 = (v54 + v53);
      *v55 = sub_20BFFFC94;
      v55[1] = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770BE8);
      v56 = v92;
      sub_20C137C94();

      v109 = *(v49 + 8);
      v57 = v116;
      v109(v116, v51);
      v58 = v90;
      v117(v90, v120, v122);
      v59 = v119;
      v60 = (*(v119 + 80) + 16) & ~*(v119 + 80);
      v61 = swift_allocObject();
      (*(v59 + 32))(v61 + v60, v58, v122);
      v112(v57, v56, v51);
      v62 = v107;
      v63 = swift_allocObject();
      v108(v63 + v110, v57, v51);
      v64 = (v63 + v62);
      *v64 = sub_20BFFFD8C;
      v64[1] = v61;
      sub_20C137C94();
      v109(v56, v51);
      v23 = v122;
      v33 = v120;
    }

    else
    {
      v118 = v5;

      v67 = v83;
      v33 = v120;
      v117(v83, v120, v23);
      (*v82)(v67, 0, 1, v23);
      v68 = v84;
      sub_20BF28D00(v67, v84);
      v69 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v70 = swift_allocObject();
      sub_20BFFFC08(v68, v70 + v69);
      sub_20C137CA4();
      sub_20B520158(v67, &qword_27C7643F0);
    }

    v32 &= v32 - 1;
    v65 = v123;
    v66 = v102;
    (*v99)(v123, 0, 1, v102);
    (*v98)(v33, v23);
    if ((*v97)(v65, 1, v66) != 1)
    {
      v71 = *v80;
      v72 = v78;
      v73 = v102;
      (*v80)(v78, v123, v102);
      v71(v81, v72, v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v118;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v87 = sub_20BC0898C(0, v87[2] + 1, 1, v87);
      }

      v76 = v87[2];
      v75 = v87[3];
      if (v76 >= v75 >> 1)
      {
        v87 = sub_20BC0898C(v75 > 1, v76 + 1, 1, v87);
      }

      v77 = v87;
      v87[2] = v76 + 1;
      result = (v71)(v77 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v76, v81, v102);
      a2 = v101;
      v24 = v119;
      goto LABEL_4;
    }

    result = sub_20B520158(v123, &qword_27C771B50);
    v36 = v35;
    a2 = v101;
    v5 = v118;
    v24 = v119;
  }

  while (1)
  {
    v35 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v35 >= v105)
    {

      return v87;
    }

    v32 = *(v106 + 8 * v35);
    ++v36;
    if (v32)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_20BFFD7F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v45 = a1;
  v6 = sub_20C138034();
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v11 = 0;
  v52 = v12;
  v53 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v48 = v7 + 16;
  v49 = v7;
  v55 = a4 + 56;
  v56 = a4;
  v50 = (v7 + 8);
  v51 = v10;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v54 = (v18 - 1) & v18;
LABEL_13:
    v23 = v20 | (v11 << 6);
    v24 = *(v53 + 48);
    v25 = *(v49 + 72);
    v47 = v23;
    (*(v49 + 16))(v10, v24 + v25 * v23, v6, v8);
    v26 = sub_20C137FF4();
    v28 = v27;
    v57 = v26;
    v58 = v27;
    v30 = v29 & 1;
    v59 = v29 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0);
    sub_20C133BD4();
    sub_20B583F4C(v26, v28, v30);
    if (v60 != 9 && *(v56 + 16) && (v31 = v56, sub_20C13E164(), sub_20C135984(), sub_20C13CA64(), , v32 = sub_20C13E1B4(), v33 = -1 << *(v31 + 32), v34 = v32 & ~v33, ((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
    {
      v35 = ~v33;
      while (1)
      {
        v36 = sub_20C135984();
        v38 = v37;
        if (v36 == sub_20C135984() && v38 == v39)
        {
          break;
        }

        v41 = sub_20C13DFF4();

        if (v41)
        {
          goto LABEL_25;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_25:
      v10 = v51;
      v6 = v52;
      (*v50)(v51, v52);
      *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v42 = __OFADD__(v46++, 1);
      v18 = v54;
      if (v42)
      {
        __break(1u);
LABEL_28:
        v43 = v53;

        sub_20BC0D95C(v45, v44, v46, v43);
        return;
      }
    }

    else
    {
LABEL_5:
      v10 = v51;
      v6 = v52;
      (*v50)(v51, v52);
      v18 = v54;
    }
  }

  v21 = v11;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v19)
    {
      goto LABEL_28;
    }

    v22 = *(v14 + 8 * v11);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v54 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20BFFDBBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_33:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v38 = swift_slowAlloc();

      v36 = sub_20BFFBFDC(v38, v10, a1, a2, sub_20BFFD7F8);

      MEMORY[0x20F2F6A40](v38, -1, -1);

      return v36;
    }
  }

  v40 = v10;
  v41 = v3;
  v39[1] = v39;
  MEMORY[0x28223BE20](v12);
  v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v11);
  v13 = 0;
  v14 = 0;
  v10 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v52 = a2 + 56;
  v53 = a2;
  v48 = a1;
  v49 = v7;
  v45 = (v7 + 8);
  v46 = v7 + 16;
  v47 = v6;
  while (2)
  {
    v43 = v13;
    while (1)
    {
      if (!v17)
      {
        v20 = v14;
        while (1)
        {
          v14 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v14 >= v18)
          {
            goto LABEL_30;
          }

          v21 = *(v10 + 8 * v14);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v50 = (v21 - 1) & v21;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      v19 = __clz(__rbit64(v17));
      v50 = (v17 - 1) & v17;
LABEL_15:
      v22 = v19 | (v14 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v44 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v11 = sub_20C137FF4();
      v26 = v25;
      v55 = v11;
      v56 = v25;
      v28 = v27 & 1;
      v57 = v27 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0);
      sub_20C133BD4();
      sub_20B583F4C(v11, v26, v28);
      a2 = v53;
      if (v54 != 9)
      {
        if (*(v53 + 16))
        {
          sub_20C13E164();
          sub_20C135984();
          v11 = v29;
          sub_20C13CA64();

          v30 = sub_20C13E1B4();
          v31 = -1 << *(a2 + 32);
          v3 = v30 & ~v31;
          if ((*(v52 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
          {
            break;
          }
        }
      }

LABEL_7:
      v6 = v47;
      (*v45)(v51, v47);
      a1 = v48;
      v17 = v50;
    }

    v7 = ~v31;
    while (1)
    {
      v11 = sub_20C135984();
      v33 = v32;
      if (v11 == sub_20C135984() && v33 == v34)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_27;
      }

      v3 = (v3 + 1) & v7;
      a2 = v53;
      if (((*(v52 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_27:
    v6 = v47;
    (*v45)(v51, v47);
    *&v42[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
    v13 = v43 + 1;
    a2 = v53;
    a1 = v48;
    v17 = v50;
    if (!__OFADD__(v43, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_30:
  v36 = sub_20BC0D95C(v42, v40, v43, a1);

  return v36;
}

uint64_t sub_20BFFE0E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_20C138204();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_20C1381A4();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_20C13E164(), sub_20C13CA64(), v29 = sub_20C13E1B4(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_20BC10E08(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_20BFFC110(v38, v10, a1, v39, MEMORY[0x277D53C88], sub_20BC10E08, MEMORY[0x277D53C68]);

  MEMORY[0x20F2F6A40](v38, -1, -1);

  return v36;
}

void sub_20BFFE574(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a4;
  v36 = a2;
  v37 = a1;
  v50 = sub_20C1361E4();
  v8 = MEMORY[0x28223BE20](v50);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v7;
  v38 = 0;
  v10 = 0;
  v45 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v40 = v7 + 8;
  v41 = v7 + 16;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v46 = (v16 - 1) & v16;
    v47 = v5;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = *(v45 + 48);
    v23 = v42;
    v24 = v43;
    v25 = *(v43 + 72);
    v39 = v21;
    (*(v43 + 16))(v42, v22 + v25 * v21, v50, v8);
    v26 = sub_20C1361D4();
    v28 = v27;
    v48[4] = v26;
    v48[5] = v27;
    v30 = v29 & 1;
    v49 = v29 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00);
    sub_20C133BB4();
    v31 = sub_20B583F4C(v26, v28, v30);
    v48[0] = v48[2];
    v48[1] = v48[3];
    MEMORY[0x28223BE20](v31);
    *(&v35 - 2) = v48;
    v32 = v47;
    LOBYTE(v26) = sub_20B79692C(sub_20B606CAC, (&v35 - 4), v44);
    v5 = v32;

    (*(v24 + 8))(v23, v50);
    v16 = v46;
    if (v26)
    {
      *(v37 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_15:
        v34 = v45;

        sub_20BC12950(v37, v36, v38, v34);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_15;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v46 = (v20 - 1) & v20;
      v47 = v5;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20BFFE844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v48 = sub_20C1361E4();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v50 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v9;
    v39[1] = v39;
    MEMORY[0x28223BE20](v11);
    v41 = v39 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v10);
    v42 = 0;
    v9 = 0;
    v49 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v44 = v6 + 8;
    v45 = v6 + 16;
    v46 = v6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v51 = (v16 - 1) & v16;
      v52 = v3;
LABEL_12:
      v21 = v18 | (v9 << 6);
      v22 = v48;
      v23 = *(v49 + 48);
      v24 = *(v6 + 72);
      v43 = v21;
      v25 = v47;
      (*(v6 + 16))(v47, v23 + v24 * v21, v48);
      v26 = sub_20C1361D4();
      v28 = v27;
      v55 = v26;
      v56 = v27;
      v30 = v29 & 1;
      v57 = v29 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00);
      sub_20C133BB4();
      v31 = sub_20B583F4C(v26, v28, v30);
      v10 = v54;
      v53[0] = v53[2];
      v53[1] = v54;
      MEMORY[0x28223BE20](v31);
      v39[-2] = v53;
      v32 = v52;
      v33 = sub_20B79692C(sub_20B606CAC, &v39[-4], v50);
      v3 = v32;

      v6 = v46;
      (*(v46 + 8))(v25, v22);
      v16 = v51;
      if (v33)
      {
        *&v41[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
LABEL_16:
          v35 = sub_20BC12950(v41, v40, v42, v49);

          return v35;
        }
      }
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
        v52 = v3;
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

  v35 = sub_20BFFBFDC(v37, v9, a1, v38, sub_20BFFE574);

  MEMORY[0x20F2F6A40](v37, -1, -1);

  return v35;
}

uint64_t sub_20BFFEC64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_20C138024();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_20C13E164(), sub_20C13CA64(), v29 = sub_20C13E1B4(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_20BC0D95C(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_20BFFC110(v38, v10, a1, v39, MEMORY[0x277D53BA0], sub_20BC0D95C, MEMORY[0x277D53B80]);

  MEMORY[0x20F2F6A40](v38, -1, -1);

  return v36;
}

void sub_20BFFF0F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v29 = a2;
  v30 = a1;
  v36 = sub_20C133B74();
  v6 = MEMORY[0x28223BE20](v36);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5;
  v8 = 0;
  v38 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v33 = v5 + 16;
  v31 = 0;
  v32 = v5 + 8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_11:
    v19 = v34;
    v20 = v35;
    v21 = v16 | (v8 << 6);
    v22 = v36;
    (*(v35 + 16))(v34, *(v38 + 48) + *(v35 + 72) * v21, v36, v6);
    v23 = sub_20C133B24();
    v39 = &v29;
    v41[0] = v23;
    v41[1] = v24;
    MEMORY[0x28223BE20](v23);
    *(&v29 - 2) = v41;
    v25 = v42;
    v26 = sub_20B79692C(sub_20B606CAC, (&v29 - 4), v37);
    v42 = v25;

    (*(v20 + 8))(v19, v22);
    v14 = v40;
    if (v26)
    {
      *(v30 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_15:
        v28 = v38;

        sub_20BC12C78(v30, v29, v31, v28);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v40 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20BFFF380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43[2] = *MEMORY[0x277D85DE8];
  v38 = sub_20C133B74();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v40 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42 = v3;
    v30 = &v30;
    v31 = v9;
    MEMORY[0x28223BE20](v11);
    v32 = &v30 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v33 = 0;
    v34 = v6;
    v9 = 0;
    v39 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v35 = v6 + 8;
    v36 = v6 + 16;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v41 = (v16 - 1) & v16;
LABEL_12:
      v3 = v38;
      v21 = v18 | (v9 << 6);
      v22 = v37;
      (*(v6 + 16))(v37, *(v39 + 48) + *(v6 + 72) * v21, v38);
      v43[0] = sub_20C133B24();
      v43[1] = v23;
      MEMORY[0x28223BE20](v43[0]);
      *(&v30 - 2) = v43;
      v24 = v42;
      v10 = sub_20B79692C(sub_20B606650, (&v30 - 4), v40);
      v42 = v24;

      v6 = v34;
      (*(v34 + 8))(v22, v3);
      v16 = v41;
      if (v10)
      {
        *&v32[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v26 = sub_20BC12C78(v32, v31, v33, v39);

          return v26;
        }
      }
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
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

  v28 = swift_slowAlloc();
  v29 = v40;

  v26 = sub_20BFFBFDC(v28, v9, a1, v29, sub_20BFFF0F0);

  MEMORY[0x20F2F6A40](v28, -1, -1);

  return v26;
}

void sub_20BFFF744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t))
{
  v49 = a7;
  v44 = a6;
  v43 = a2;
  v45 = a1;
  v9 = a5(0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  v15 = 0;
  v54 = a3;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v46 = 0;
  v47 = v11 + 16;
  v55 = a4 + 56;
  v48 = v11;
  v50 = (v11 + 8);
  v51 = v14;
  v52 = v10;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_13:
    v26 = v23 | (v15 << 6);
    v27 = *(v54 + 48);
    v28 = *(v48 + 72);
    v53 = v26;
    v29 = (*(v48 + 16))(v14, v27 + v28 * v26, v9, v12);
    v30 = v49(v29);
    v32 = v31;
    if (*(a4 + 16) && (v33 = v30, sub_20C13E164(), sub_20C13CA64(), v34 = sub_20C13E1B4(), v35 = -1 << *(a4 + 32), v36 = v34 & ~v35, ((*(v55 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
    {
      v37 = ~v35;
      while (1)
      {
        v38 = (*(a4 + 48) + 16 * v36);
        v39 = *v38 == v33 && v38[1] == v32;
        if (v39 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v55 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v14 = v51;
      v9 = v52;
      (*v50)(v51, v52);
      *(v45 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
LABEL_26:
        v41 = v54;

        v44(v45, v43, v46, v41);
        return;
      }
    }

    else
    {
LABEL_5:

      v14 = v51;
      v9 = v52;
      (*v50)(v51, v52);
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      goto LABEL_26;
    }

    v25 = *(v17 + 8 * v15);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v21 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20BFFFAC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BFFFB7C()
{
  result = qword_27C771B48;
  if (!qword_27C771B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771B48);
  }

  return result;
}

uint64_t sub_20BFFFC08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_46Tm_0()
{
  v1 = sub_20C138204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20BFFFD8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C138204();

  return sub_20BFF6A0C(a1, a2);
}

uint64_t objectdestroy_83Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_20C138204();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20BFFFFDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a4;
  v36 = a2;
  v37 = a1;
  v50 = sub_20C1361E4();
  v8 = MEMORY[0x28223BE20](v50);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v7;
  v38 = 0;
  v10 = 0;
  v45 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v40 = v7 + 8;
  v41 = v7 + 16;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v46 = (v16 - 1) & v16;
    v47 = v5;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = *(v45 + 48);
    v23 = v42;
    v24 = v43;
    v25 = *(v43 + 72);
    v39 = v21;
    (*(v43 + 16))(v42, v22 + v25 * v21, v50, v8);
    v26 = sub_20C1361B4();
    v28 = v27;
    v48[4] = v26;
    v48[5] = v27;
    v30 = v29 & 1;
    v49 = v29 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
    sub_20C133BB4();
    v31 = sub_20B583F4C(v26, v28, v30);
    v48[0] = v48[2];
    v48[1] = v48[3];
    MEMORY[0x28223BE20](v31);
    *(&v35 - 2) = v48;
    v32 = v47;
    LOBYTE(v26) = sub_20B79692C(sub_20B606CAC, (&v35 - 4), v44);
    v5 = v32;

    (*(v24 + 8))(v23, v50);
    v16 = v46;
    if (v26)
    {
      *(v37 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_15:
        v34 = v45;

        sub_20BC12950(v37, v36, v38, v34);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_15;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v46 = (v20 - 1) & v20;
      v47 = v5;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20C0002AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v48 = sub_20C1361E4();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v50 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v9;
    v39[1] = v39;
    MEMORY[0x28223BE20](v11);
    v41 = v39 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v10);
    v42 = 0;
    v9 = 0;
    v49 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v44 = v6 + 8;
    v45 = v6 + 16;
    v46 = v6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v51 = (v16 - 1) & v16;
      v52 = v3;
LABEL_12:
      v21 = v18 | (v9 << 6);
      v22 = v48;
      v23 = *(v49 + 48);
      v24 = *(v6 + 72);
      v43 = v21;
      v25 = v47;
      (*(v6 + 16))(v47, v23 + v24 * v21, v48);
      v26 = sub_20C1361B4();
      v28 = v27;
      v55 = v26;
      v56 = v27;
      v30 = v29 & 1;
      v57 = v29 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
      sub_20C133BB4();
      v31 = sub_20B583F4C(v26, v28, v30);
      v10 = v54;
      v53[0] = v53[2];
      v53[1] = v54;
      MEMORY[0x28223BE20](v31);
      v39[-2] = v53;
      v32 = v52;
      v33 = sub_20B79692C(sub_20B606CAC, &v39[-4], v50);
      v3 = v32;

      v6 = v46;
      (*(v46 + 8))(v25, v22);
      v16 = v51;
      if (v33)
      {
        *&v41[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
LABEL_16:
          v35 = sub_20BC12950(v41, v40, v42, v49);

          return v35;
        }
      }
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
        v52 = v3;
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

  v35 = sub_20BFFBFDC(v37, v9, a1, v38, sub_20BFFFFDC);

  MEMORY[0x20F2F6A40](v37, -1, -1);

  return v35;
}

void sub_20C0006CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a4;
  v36 = a2;
  v37 = a1;
  v50 = sub_20C1361E4();
  v8 = MEMORY[0x28223BE20](v50);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v7;
  v38 = 0;
  v10 = 0;
  v45 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v40 = v7 + 8;
  v41 = v7 + 16;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v46 = (v16 - 1) & v16;
    v47 = v5;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = *(v45 + 48);
    v23 = v42;
    v24 = v43;
    v25 = *(v43 + 72);
    v39 = v21;
    (*(v43 + 16))(v42, v22 + v25 * v21, v50, v8);
    v26 = sub_20C1361B4();
    v28 = v27;
    v48[4] = v26;
    v48[5] = v27;
    v30 = v29 & 1;
    v49 = v29 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
    sub_20C133BB4();
    v31 = sub_20B583F4C(v26, v28, v30);
    v48[0] = v48[2];
    v48[1] = v48[3];
    MEMORY[0x28223BE20](v31);
    *(&v35 - 2) = v48;
    v32 = v47;
    LOBYTE(v26) = sub_20B79692C(sub_20B606CAC, (&v35 - 4), v44);
    v5 = v32;

    (*(v24 + 8))(v23, v50);
    v16 = v46;
    if ((v26 & 1) == 0)
    {
      *(v37 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_15:
        v34 = v45;

        sub_20BC12950(v37, v36, v38, v34);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_15;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v46 = (v20 - 1) & v20;
      v47 = v5;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20C00099C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v48 = sub_20C1361E4();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v50 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v40 = v9;
    v39[1] = v39;
    MEMORY[0x28223BE20](v11);
    v41 = v39 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v10);
    v42 = 0;
    v9 = 0;
    v49 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v44 = v6 + 8;
    v45 = v6 + 16;
    v46 = v6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v51 = (v16 - 1) & v16;
      v52 = v3;
LABEL_12:
      v21 = v18 | (v9 << 6);
      v22 = v48;
      v23 = *(v49 + 48);
      v24 = *(v6 + 72);
      v43 = v21;
      v25 = v47;
      (*(v6 + 16))(v47, v23 + v24 * v21, v48);
      v26 = sub_20C1361B4();
      v28 = v27;
      v55 = v26;
      v56 = v27;
      v30 = v29 & 1;
      v57 = v29 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
      sub_20C133BB4();
      v31 = sub_20B583F4C(v26, v28, v30);
      v10 = v54;
      v53[0] = v53[2];
      v53[1] = v54;
      MEMORY[0x28223BE20](v31);
      v39[-2] = v53;
      v32 = v52;
      v33 = sub_20B79692C(sub_20B606CAC, &v39[-4], v50);
      v3 = v32;

      v6 = v46;
      (*(v46 + 8))(v25, v22);
      v16 = v51;
      if ((v33 & 1) == 0)
      {
        *&v41[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
LABEL_16:
          v35 = sub_20BC12950(v41, v40, v42, v49);

          return v35;
        }
      }
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
        v52 = v3;
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

  v35 = sub_20BFFBFDC(v37, v9, a1, v38, sub_20C0006CC);

  MEMORY[0x20F2F6A40](v37, -1, -1);

  return v35;
}

uint64_t sub_20C000E1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_20C136C64() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BFF482C(a1, v2[2], v2[3], v2[4], v2[5], *(v2 + v6), *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_20C000FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20C0010F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  v7 = sub_20C13A484();
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for MediaPlaybackFailedAnalyticsEvent();
  sub_20B52F9E8(v1 + *(v13 + 24), v12, &unk_27C768AF0);
  v14 = sub_20C138184();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    result = sub_20B520158(v12, &unk_27C768AF0);
    v17 = 0.0;
  }

  else
  {
    sub_20C138134();
    v17 = v18;
    result = (*(v15 + 8))(v12, v14);
  }

  v19 = v17 / 5.0;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v19 = 0.0;
  }

  v20 = round(v19);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v20 * 5) >> 64 != (5 * v20) >> 63)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C15C310;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000020C1BA540;
  sub_20C134324();
  v22 = sub_20C13C914();
  v52 = v13;
  v23 = v22;

  *(inited + 48) = v23;
  strcpy((inited + 56), "activityType");
  v24 = v52;
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  sub_20C1371C4();
  *(inited + 72) = sub_20C13D994();
  *(inited + 80) = 0x5464657370616C65;
  *(inited + 88) = 0xEB00000000656D69;
  *(inited + 96) = sub_20C13D014();
  strcpy((inited + 104), "sessionOrigin");
  *(inited + 118) = -4864;
  sub_20B64B624(v1 + *(v24 + 28), v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = inited + 32;
  if (EnumCaseMultiPayload == 1)
  {
    v26 = sub_20C137EA4();
    (*(*(v26 - 8) + 8))(v9, v26);
  }

  else
  {
    sub_20B64B688(v9);
  }

  v27 = sub_20C13C914();

  *(inited + 120) = v27;
  strcpy((inited + 128), "workoutDevice");
  *(inited + 142) = -4864;
  v28 = *(v24 + 32);
  v53 = v1;
  sub_20B52F9E8(v1 + v28, v6, &unk_27C765CB0);
  v29 = sub_20C136484();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v6, 1, v29) == 1)
  {
    sub_20B520158(v6, &unk_27C765CB0);
  }

  else
  {
    v32 = sub_20C136474();
    v34 = v33;
    (*(v30 + 8))(v6, v29);
    v54 = v32;
    LOBYTE(v55) = v34 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC10);
    sub_20C133BB4();
  }

  v35 = v51;
  *(inited + 144) = sub_20C13D014();
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x800000020C1BA560;
  sub_20B52F9E8(v53 + v28, v35, &unk_27C765CB0);
  if (v31(v35, 1, v29) == 1)
  {
    sub_20B520158(v35, &unk_27C765CB0);
  }

  else
  {
    v36 = v35;
    v37 = sub_20C136464();
    v39 = v38;
    v41 = v40;
    (*(v30 + 8))(v36, v29);
    v54 = v37;
    v55 = v39;
    v56 = v41 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0);
    sub_20C133BB4();
    sub_20B583F4C(v37, v39, v41 & 1);
  }

  v42 = sub_20C13C914();

  *(inited + 168) = v42;
  *(inited + 176) = 0x646F43726F727265;
  *(inited + 184) = 0xE900000000000065;
  swift_getErrorValue();
  sub_20C13E0B4();
  *(inited + 192) = sub_20C13D014();
  *(inited + 200) = 0x6D6F44726F727265;
  *(inited + 208) = 0xEB000000006E6961;
  swift_getErrorValue();
  sub_20C13E0C4();
  v43 = sub_20C13C914();

  *(inited + 216) = v43;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x800000020C1BA580;
  swift_getErrorValue();
  v44 = sub_20C13E0A4();
  if (v44)
  {
    v45 = v44;
    swift_getErrorValue();
    sub_20C13E0B4();
  }

  *(inited + 240) = sub_20C13D014();
  *(inited + 248) = 0xD000000000000015;
  *(inited + 256) = 0x800000020C1BA5A0;
  swift_getErrorValue();
  v46 = sub_20C13E0A4();
  if (v46)
  {
    v47 = v46;
    swift_getErrorValue();
    sub_20C13E0C4();
  }

  v48 = sub_20C13C914();

  *(inited + 264) = v48;
  v49 = sub_20B6B5064(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B60);
  swift_arrayDestroy();
  return v49;
}

uint64_t sub_20C00196C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F2B8];
  v3 = sub_20C13ABF4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for MediaPlaybackFailedAnalyticsEvent()
{
  result = qword_27C771B68;
  if (!qword_27C771B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C001A74()
{
  sub_20C137254();
  if (v0 <= 0x3F)
  {
    sub_20C1344C4();
    if (v1 <= 0x3F)
    {
      sub_20C001B90(319, &qword_27C7631D0, MEMORY[0x277D53C58]);
      if (v2 <= 0x3F)
      {
        sub_20C13A484();
        if (v3 <= 0x3F)
        {
          sub_20C001B90(319, &qword_27C76B320, MEMORY[0x277D529D8]);
          if (v4 <= 0x3F)
          {
            sub_20BB06B24();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20C001B90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20C001D88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = sub_20C13CDF4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_20C13CDA4();
  v10 = v1;
  v11 = sub_20C13CD94();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_20B6383D0(0, 0, v4, &unk_20C189900, v12);
}

uint64_t sub_20C001F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_20C13CDA4();
  v4[4] = sub_20C13CD94();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_20C002030;

  return sub_20C002238();
}

uint64_t sub_20C002030(char a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C002174, v3, v2);
}

uint64_t sub_20C002174()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  [v2 activityDidFinish_];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20C002238()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_20C132E94();
  v1[10] = swift_task_alloc();
  v3 = sub_20C134B14();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = sub_20C1344C4();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = sub_20C13BB84();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C002474, 0, 0);
}

uint64_t sub_20C002474()
{
  v53 = v0;
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[6];
  sub_20C13B444();
  sub_20C13BB64();
  v5 = *(v3 + 8);
  v0[24] = v5;
  v0[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  sub_20C13B444();
  v6 = v4;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1B4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v11 = v0[19];
  if (v9)
  {
    v12 = v0[18];
    v13 = v0[16];
    v45 = v0[15];
    v50 = v0[22];
    v14 = swift_slowAlloc();
    v48 = v5;
    v15 = swift_slowAlloc();
    v52[0] = v15;
    *v14 = 136315138;
    sub_20C135AA4();
    v16 = sub_20C134324();
    v46 = v11;
    v18 = v17;
    (*(v13 + 8))(v12, v45);
    v19 = sub_20B51E694(v16, v18, v52);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20B517000, v7, v8, "Inserting workout %s to UpNextQueue", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);

    v48(v50, v46);
  }

  else
  {

    v5(v10, v11);
  }

  v52[0] = *(v0[6] + OBJC_IVAR____TtC9SeymourUI32AddUpNextQueueShareSheetActivity_upNextQueueItems);

  sub_20C003124(v52);
  v20 = v52[0][2];
  if (v20)
  {
    v21 = v0[14];
    v22 = v0[11];
    v23 = v0[12];
    (*(v23 + 16))(v21, v52[0] + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * (v20 - 1), v22);

    v24 = sub_20C134AD4();
    v25 = (*(v23 + 8))(v21, v22);
    if (v24 == -1)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
  }

  v34 = v0[17];
  v33 = v0[18];
  v36 = v0[15];
  v35 = v0[16];
  v47 = v0[12];
  v49 = v0[11];
  v51 = v0[9];
  v37 = v0[6];
  v44 = v0[13];
  sub_20C135AA4();
  sub_20C134324();
  v38 = *(v35 + 8);
  v38(v33, v36);
  sub_20C135AA4();
  sub_20C1344B4();
  v38(v33, v36);
  sub_20C135AA4();
  sub_20C134464();
  v38(v34, v36);
  sub_20C132E64();
  sub_20C134AA4();
  __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC9SeymourUI32AddUpNextQueueShareSheetActivity_upNextQueueClient), *(v37 + OBJC_IVAR____TtC9SeymourUI32AddUpNextQueueShareSheetActivity_upNextQueueClient + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0);
  v39 = *(sub_20C1351C4() - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C14F980;
  (*(v47 + 16))(v41 + v40, v44, v49);
  swift_storeEnumTagMultiPayload();
  sub_20C139734();

  v42 = swift_task_alloc();
  v0[26] = v42;
  *(v42 + 16) = "SeymourUI/AddUpNextQueueShareSheetActivity.swift";
  *(v42 + 24) = 48;
  *(v42 + 32) = 2;
  *(v42 + 40) = 82;
  *(v42 + 48) = v51;
  v25 = swift_task_alloc();
  v0[27] = v25;
  *v25 = v0;
  v25[1] = sub_20C002A64;
  v30 = sub_20B526A50;
  v29 = 0x800000020C192D10;
  v32 = MEMORY[0x277D84F78] + 8;
  v26 = 0;
  v27 = 0;
  v28 = 0xD000000000000013;
  v31 = v42;

  return MEMORY[0x2822008A0](v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_20C002A64()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {

    v3 = sub_20C002CA8;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20C002BBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C002BBC()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];
  v2 = v0[28] == 0;

  return v1(v2);
}

uint64_t sub_20C002CA8()
{
  v24 = v0;
  v1 = *(v0 + 224);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  (*(v3 + 8))(v2, v4);
  sub_20C13B444();
  v5 = v1;
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 224);
    v22 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v15 = sub_20B51E694(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v6, v7, "Error adding workout to UpNextQueue through activity: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);

    v22(v9, v10);
  }

  else
  {
    v16 = *(v0 + 192);
    v17 = *(v0 + 168);
    v18 = *(v0 + 152);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 224) == 0;

  return v19(v20);
}

id sub_20C002F38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddUpNextQueueShareSheetActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AddUpNextQueueShareSheetActivity()
{
  result = qword_27C771BA0;
  if (!qword_27C771BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C003064()
{
  result = sub_20C135AE4();
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

void sub_20C003124(void **a1)
{
  v2 = *(sub_20C134B14() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DBC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20C0031CC(v5);
  *a1 = v3;
}

void sub_20C0031CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C134B14();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C134B14() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C0035A0(v8, v9, a1, v4);
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
    sub_20C0032F8(0, v2, 1, a1);
  }
}

void sub_20C0032F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C134B14();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C134AD4();
      v28 = sub_20C134AD4();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20C0035A0(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C134B14();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20C003F84(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C134AD4();
      v126 = sub_20C134AD4();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C134AD4();
        v39 = sub_20C134AD4();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
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

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20C003F84(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C134AD4();
    v104 = sub_20C134AD4();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
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

void sub_20C003F84(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C134B14();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C134AD4();
          v45 = sub_20C134AD4();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C134AD4();
        v26 = sub_20C134AD4();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A07B4(&v64, &v63, &v62);
}

uint64_t sub_20C00453C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20C001F80(a1, v4, v5, v6);
}

uint64_t sub_20C0045F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20B51F1D8(i, v7);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    if (!--v1)
    {
      return 0;
    }
  }

  if (v6 != 2)
  {
    sub_20B624748(v4, v5, v6);
    goto LABEL_3;
  }

  sub_20B624748(v4, v5, v6);
  return 1;
}

char *sub_20C004698(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_playButton;
  v13 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v14 = sub_20B8C9328(0);
  v15 = objc_allocWithZone(type metadata accessor for TVButton());
  v16 = sub_20BB87F4C(v14, 1, 1, v15, 0.0, 0.0, 0.0, 0.0);
  v17 = [objc_opt_self() clearColor];
  v18 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v16[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v17 forState:8];
  [*&v16[v18] setBackgroundColor:v17 forState:4];
  [*&v16[v18] setBackgroundColor:v17 forState:1];
  [*&v16[v18] setBackgroundColor:v17 forState:0];

  [*&v16[v18] setShadowOpacity:0 forUserInterfaceStyle:0.25];
  [*&v16[v18] setShadowOpacity:2 forUserInterfaceStyle:0.25];
  [*&v16[v18] setShadowOpacity:1 forUserInterfaceStyle:0.25];
  [*&v16[v18] setShadowRadius_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v12] = v16;
  v19 = OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_spinner;
  v20 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v19] = v20;
  v79.receiver = v6;
  v79.super_class = type metadata accessor for StartWorkoutView();
  v21 = objc_msgSendSuper2(&v79, sel_initWithFrame_, a2, a3, a4, a5);
  v22 = sub_20C1380F4();
  sub_20C0134C0(v22, v76);
  v23 = v77;
  v24 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  v75 = a1;
  v25 = (*(v24 + 56))(a1, v23, v24);
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_destroy_boxed_opaque_existential_1(v76);
  v26 = OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_playButton;
  v27 = *&v21[OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_playButton];
  v28 = *&v27[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  v29 = v27;
  result = [v28 contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v31 = result;

  [v31 addSubview_];
  v32 = OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_spinner;
  v33 = *&v21[OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_spinner];
  v34 = v21;
  [v34 addSubview_];
  [v34 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14FF90;
  v36 = [*&v21[v26] centerXAnchor];
  v37 = [v34 &selRef_handleMenuButtonTapped + 2];
  v38 = [v36 constraintEqualToAnchor_];

  *(v35 + 32) = v38;
  v39 = [*&v21[v26] centerYAnchor];
  v40 = [v34 centerYAnchor];

  v41 = [v39 &selRef:v40 alertControllerReleasedDictationButton:? + 5];
  *(v35 + 40) = v41;
  v42 = [*&v21[v26] widthAnchor];
  v43 = [v42 constraintEqualToConstant_];

  *(v35 + 48) = v43;
  v44 = [*&v21[v26] heightAnchor];
  v45 = [v44 &selRef_visibleCells + 1];

  *(v35 + 56) = v45;
  v46 = [*&v21[v32] centerXAnchor];
  v47 = [v34 centerXAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v35 + 64) = v48;
  v74 = v32;
  v49 = [*&v21[v32] heightAnchor];
  v50 = [v49 constraintEqualToConstant_];

  *(v35 + 72) = v50;
  v51 = [v25 centerXAnchor];
  v52 = *&v21[v26];
  v53 = *&v52[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  v54 = v52;
  result = [v53 contentView];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v55 = result;

  v56 = [v55 centerXAnchor];
  v57 = [v51 constraintEqualToAnchor_];

  *(v35 + 80) = v57;
  v58 = [v25 centerYAnchor];
  v59 = *&v21[v26];
  v60 = *&v59[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  v61 = v59;
  result = [v60 contentView];
  if (result)
  {
    v62 = result;

    v63 = objc_opt_self();
    v64 = [v62 centerYAnchor];

    v65 = [v58 constraintEqualToAnchor_];
    *(v35 + 88) = v65;
    v66 = [v25 widthAnchor];
    v67 = [*&v21[v26] widthAnchor];
    v68 = [v66 constraintEqualToAnchor_];

    *(v35 + 96) = v68;
    v69 = [v25 heightAnchor];
    v70 = [*&v21[v26] heightAnchor];
    v71 = [v69 constraintEqualToAnchor_];

    *(v35 + 104) = v71;
    sub_20B5E29D0();
    v72 = sub_20C13CC54();

    [v63 activateConstraints_];

    [*&v21[v26] setAlpha_];
    [*&v21[v74] setAlpha_];
    [*&v21[v74] startAnimating];

    v73 = sub_20C1344C4();
    (*(*(v73 - 8) + 8))(v75, v73);

    return v34;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_20C004ED8(char a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_spinner);
    [v2 stopAnimating];
    [v2 setAlpha_];
    v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_playButton);
    v4 = sel_setAlpha_;
    v5 = 1.0;
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_playButton) setAlpha_];
    v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_spinner);
    [v7 setAlpha_];
    v4 = sel_startAnimating;
    v3 = v7;
  }

  return [v3 v4];
}

id sub_20C004FE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartWorkoutView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C00508C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_playButton;
  v3 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v4 = sub_20B8C9328(0);
  v5 = objc_allocWithZone(type metadata accessor for TVButton());
  v6 = sub_20BB87F4C(v4, 1, 1, v5, 0.0, 0.0, 0.0, 0.0);
  v7 = [objc_opt_self() clearColor];
  v8 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v6[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v7 forState:8];
  [*&v6[v8] setBackgroundColor:v7 forState:4];
  [*&v6[v8] setBackgroundColor:v7 forState:1];
  [*&v6[v8] setBackgroundColor:v7 forState:0];

  [*&v6[v8] setShadowOpacity:0 forUserInterfaceStyle:0.25];
  [*&v6[v8] setShadowOpacity:2 forUserInterfaceStyle:0.25];
  [*&v6[v8] setShadowOpacity:1 forUserInterfaceStyle:0.25];
  [*&v6[v8] setShadowRadius_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v6;
  v9 = OBJC_IVAR____TtC9SeymourUI16StartWorkoutView_spinner;
  v10 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v9) = v10;
  sub_20C13DE24();
  __break(1u);
}

void sub_20C0052A4()
{
  v1 = v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_platform];
  v2 = v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_viewType];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC9SeymourUI16QueueActionsView_actionButtonView;
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_actionButtonView];
  *(v3 + 16) = xmmword_20C150040;
  v56 = v2;
  v57 = v1;
  if (v1 != 1 || (v2 & 1) != 0)
  {
    v16 = [v5 leadingAnchor];
    v17 = [v0 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v3 + 32) = v18;
    v15 = &selRef_setDescriptionTextHighlightColor_;
    v19 = [*&v0[v4] trailingAnchor];
    v20 = [v0 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    *(v3 + 40) = v21;
    v22 = [*&v0[v4] topAnchor];
    v23 = [v0 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:*&v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_layout + 24]];

    *(v3 + 48) = v24;
  }

  else
  {
    v6 = [v5 topAnchor];
    v7 = [v0 topAnchor];
    v8 = &v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_layout];
    v9 = [v6 constraintEqualToAnchor:v7 constant:*&v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_layout + 24]];

    *(v3 + 32) = v9;
    v10 = [*&v0[v4] centerXAnchor];
    v11 = [v0 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v3 + 40) = v12;
    v13 = [*&v0[v4] widthAnchor];
    v14 = [v13 constraintEqualToConstant_];

    *(v3 + 48) = v14;
    v15 = &selRef_setDescriptionTextHighlightColor_;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v26 = *&v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_workoutsMetadataLabel];
  v27 = [v26 leadingAnchor];
  v28 = [v0 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(inited + 32) = v29;
  v30 = [v26 v15[352]];
  v31 = [v0 v15[352]];
  v32 = [v30 &selRef:v31 alertControllerReleasedDictationButton:? + 5];

  *(inited + 40) = v32;
  v55 = inited;
  v33 = [v26 topAnchor];
  v34 = [*&v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_actionButtonView] bottomAnchor];
  v54 = &v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_layout];
  v35 = [v33 constraintEqualToAnchor:v34 constant:*&v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_layout + 8]];

  *(inited + 48) = v35;
  if (((v57 == 0) & v56) != 0)
  {
    v36 = -44.0;
  }

  else
  {
    v36 = -16.0;
  }

  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_20C14FE90;
  v38 = *&v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_totalDurationLabel];
  v39 = [v38 leadingAnchor];
  v40 = [v0 leadingAnchor];
  v41 = [v39 &selRef:v40 alertControllerReleasedDictationButton:? + 5];

  *(v37 + 32) = v41;
  v42 = [v38 v15[352]];
  v43 = [v0 v15[352]];
  v44 = [v42 &selRef:v43 alertControllerReleasedDictationButton:? + 5];

  *(v37 + 40) = v44;
  v45 = [v38 topAnchor];
  v46 = [v26 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:*v54];

  *(v37 + 48) = v47;
  v48 = [v38 bottomAnchor];
  v49 = [v0 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:v36];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v51) = v58;
  [v50 setPriority_];
  *(v37 + 56) = v50;
  v52 = objc_opt_self();
  sub_20B8D9310(v55);
  sub_20B8D9310(v37);
  sub_20B5E29D0();
  v53 = sub_20C13CC54();

  [v52 activateConstraints_];
}

id sub_20C0059A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueueActionsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20C005AAC()
{
  result = qword_27C771C08;
  if (!qword_27C771C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771C08);
  }

  return result;
}

id sub_20C005B2C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_workoutsMetadataLabel];
  v3 = &v0[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_mediaTagStringBuilder];
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
  v4 = sub_20C138544();
  v5 = [v4 string];

  if (!v5)
  {
    sub_20C13C954();
    v5 = sub_20C13C914();
  }

  [v2 setText_];

  v6 = *&v1[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_totalDurationLabel];
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
  v7 = sub_20C138544();
  v8 = [v7 string];

  if (!v8)
  {
    sub_20C13C954();
    v8 = sub_20C13C914();
  }

  [v6 setText_];

  [v1 setHidden_];
  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_zeroHeightConstraint];

  return [v9 setActive_];
}

void sub_20C005CC4()
{
  sub_20C1380F4();
  v1 = sub_20C138104();
  v2 = sub_20C138104();
  v3 = 16.0;
  if (v1 == v2)
  {
    v3 = 24.0;
  }

  v4 = v0 + OBJC_IVAR____TtC9SeymourUI16QueueActionsView_layout;
  *v4 = xmmword_20C186E30;
  *(v4 + 16) = 0x407A900000000000;
  *(v4 + 24) = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI16QueueActionsView_totalDurationLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setTextAlignment_];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  [v6 setFont_];

  *(v0 + v5) = v6;
  v9 = OBJC_IVAR____TtC9SeymourUI16QueueActionsView_workoutsMetadataLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setTextAlignment_];
  v11 = [v7 preferredFontForTextStyle_];
  [v11 pointSize];
  v13 = v12;

  v14 = [v7 boldSystemFontOfSize_];
  [v10 setFont_];

  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16QueueActionsView_zeroHeightConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

id sub_20C006080()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TVLibraryGalleryViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  sub_20B795A48(0);
  sub_20B796584();
  [v0 setRestoresFocusAfterTransition_];
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_dataProvider];
  [*(*(v1 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  [*(*(v1 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInsetAdjustmentBehavior_];
  result = [*(*(v1 + 16) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_activationState) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_activationState) = 1;
  }

  return result;
}

void sub_20C0061CC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TVLibraryGalleryViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];

    v3 = *(*&v0[OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_dataProvider] + 16);
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
    v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
    v5 = v3;
    [v4 bounds];
    sub_20B9D8614(v6, v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_20C00657C(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVLibraryGalleryViewController();
  v16.receiver = v2;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1 & 1);
  v15 = v2;
  sub_20C132E84();
  sub_20C006E68(&unk_27C771C50);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 viewControllers];
    sub_20B62BB28();
    v12 = sub_20C13CC74();

    v15 = v2;
    MEMORY[0x28223BE20](v13);
    *(&v14 - 2) = &v15;
    LOBYTE(v11) = sub_20B79AEEC(sub_20B5978BC, (&v14 - 4), v12);

    if ((v11 & 1) == 0)
    {
      v15 = v2;
      sub_20C006E68(&qword_27C771C60);
      sub_20C138C64();
    }
  }
}

id sub_20C006828()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVLibraryGalleryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVLibraryGalleryViewController()
{
  result = qword_27C771C40;
  if (!qword_27C771C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C0069B0()
{
  sub_20C1352F4();
  if (v0 <= 0x3F)
  {
    sub_20B595A38();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20C006B3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20C006B94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20C006CD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20C006D88()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20C006DEC()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20C006E68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TVLibraryGalleryViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C006EB8(uint64_t a1)
{
  v94 = a1;
  v97 = *v1;
  v102 = sub_20C1321D4();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v98 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v82 - v6;
  MEMORY[0x28223BE20](v7);
  v103 = &v82 - v8;
  v96 = sub_20C132144();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v91 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_20C132154();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v82 - v12;
  v95 = sub_20C132164();
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v90 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C132EE4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - v20;
  v22 = sub_20C132254();
  v83 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = (v106 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_containerBuilder);
  sub_20C132454();
  (*(v23 + 104))(v25, *MEMORY[0x277CE9CC0], v22);
  v26[1] = 2;
  v84 = v17;
  sub_20C132ED4();
  sub_20C132104();
  v27 = *(v15 + 8);
  v85 = v15 + 8;
  v28 = v17;
  v29 = v14;
  v27(v28, v14);
  v30 = type metadata accessor for ContainerNodeBuilder();
  sub_20C131F24();
  (*(v19 + 8))(v21, v18);
  *v26 = 1;
  v31 = sub_20C131F44();
  v32 = &v26[v30[7]];
  *v32 = v31;
  v32[8] = v33;
  v34 = sub_20C131FD4();
  v35 = &v26[v30[8]];
  *v35 = v34;
  v35[8] = v36;
  v37 = sub_20C131FE4();
  v38 = &v26[v30[9]];
  *v38 = v37;
  *(v38 + 1) = v39;
  v38[20] = v40;
  *(v38 + 4) = v41;
  v38[21] = v42;
  v43 = sub_20C132384();
  v44 = &v26[v30[10]];
  *v44 = v43 & 0xFFFFFFFFFFLL;
  v44[12] = v45;
  *(v44 + 2) = v46;
  v44[13] = 0;
  v47 = sub_20C132004();
  v49 = v48;
  v51 = v50;
  LOBYTE(v19) = v52;
  (*(v23 + 8))(v25, v83);
  v53 = &v26[v30[11]];
  *v53 = v47;
  *(v53 + 1) = v49;
  *(v53 + 2) = v51;
  v53[24] = v19;
  v54 = v106;
  *(v106 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_parent + 8) = 0;
  swift_unknownObjectWeakInit();
  v55 = v94;
  v56 = sub_20C1371C4();
  type metadata accessor for BurnBarBubbleNodeBuilder();
  swift_allocObject();
  *(v54 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_bubbleNodeBuilder) = sub_20BB0DC8C(v56, 0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = [objc_opt_self() bundleForClass_];
  v59 = v88;
  v60 = v86;
  v61 = v89;
  (*(v88 + 104))(v86, *MEMORY[0x277CE9BD8], v89);
  (*(v59 + 16))(v87, v60, v61);
  (*(v93 + 104))(v91, *MEMORY[0x277CE9BC8], v96);
  v62 = swift_allocObject();
  *(v62 + 16) = 0x7261426E727542;
  *(v62 + 24) = 0xE700000000000000;
  *(v62 + 32) = v58;
  *(v62 + 40) = xmmword_20C189D20;
  *(v62 + 56) = 0xE700000000000000;
  v63 = v90;
  sub_20C132124();
  (*(v59 + 8))(v60, v61);
  v64 = v92;
  v65 = v63;
  v66 = v95;
  (*(v92 + 32))(v54 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_burnBarAsset, v65, v95);
  v67 = v99;
  (*(v64 + 16))(v99, v54 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_burnBarAsset, v66);
  v68 = v100;
  v69 = v102;
  (*(v100 + 104))(v67, *MEMORY[0x277CE9C40], v102);
  v70 = v84;
  sub_20C132ED4();
  v71 = v98;
  sub_20C1320E4();
  v27(v70, v29);
  (*(v68 + 8))(v67, v69);
  sub_20C1323A4();
  v72 = v101;
  v73 = v105;
  v74 = v71;
  sub_20C131FF4();
  v75 = v104;
  v76 = *(v104 + 8);
  v76(v74, v73);
  sub_20C132414();
  v107 = v77;
  v108 = v78;
  v79 = v103;
  sub_20C131F54();
  v80 = sub_20C137254();
  (*(*(v80 - 8) + 8))(v55, v80);
  v76(v72, v73);
  (*(v75 + 32))(v54 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_burnBarNode, v79, v73);
  return v54;
}

uint64_t sub_20C00790C()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_parent);

  v1 = OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_burnBarAsset;
  v2 = sub_20C132164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_burnBarNode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BurnBarNodeBuilder()
{
  result = qword_27C771C70;
  if (!qword_27C771C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C007A78()
{
  type metadata accessor for ContainerNodeBuilder();
  if (v0 <= 0x3F)
  {
    sub_20C132164();
    if (v1 <= 0x3F)
    {
      sub_20B592D08();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20C007C20()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_bubbleNodeBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FA0);
  v2 = sub_20C132164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C152DF0;
  v7 = *(v3 + 16);
  v7(v6 + v5, v1 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_modalityAsset, v2);
  v7(v6 + v5 + v4, v1 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_fallbackAsset, v2);
  v7(v6 + v5 + 2 * v4, v1 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_middleBubbleAsset, v2);
  v7(v6 + v5 + 3 * v4, v1 + OBJC_IVAR____TtC9SeymourUI24BurnBarBubbleNodeBuilder_behindBubbleAsset, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F980;
  v7(v8 + v5, v10 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_burnBarAsset, v2);
  sub_20B8D9970(v8);
  return v6;
}

uint64_t sub_20C007E04@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v1 - 8);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v27 = *(v3 - 8);
  v4 = v27;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v26 - v8;
  sub_20C0081F8();
  v33 = v9;
  v34 = v10;
  sub_20BB108B4(v6);
  sub_20C131F54();
  v29 = *(v4 + 8);
  v29(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
  v11 = sub_20C132264();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14F320;
  v16 = v15 + v14;
  v17 = OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_burnBarNode;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v19 = v28;
  (*(*(v18 - 8) + 16))(v16, v28 + v17, v18);
  v20 = *(v12 + 104);
  v20(v16, *MEMORY[0x277CE9CE0], v11);
  (*(v27 + 16))(v16 + v13, v32, v3);
  v20(v16 + v13, *MEMORY[0x277CE9CE8], v11);
  v21 = OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_containerBuilder;
  swift_beginAccess();
  v22 = v19 + v21;
  v23 = v30;
  sub_20B6B5ADC(v22, v30);
  sub_20B7E27F8(v6);

  sub_20B593250(v23);
  sub_20C1323A4();
  sub_20C131FF4();
  v24 = v29;
  v29(v6, v3);
  return v24(v32, v3);
}

uint64_t sub_20C0081A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20C0082A0(char a1)
{
  *(*(v1 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_bubbleNodeBuilder) + 48) = a1;
  sub_20BB0F020();
  v2 = v1 + OBJC_IVAR____TtC9SeymourUI18BurnBarNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20C008330(uint64_t a1, uint64_t a2)
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
  v12[1] = sub_20B594268;

  return sub_20B6A39A8(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_20C008408(unint64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_17;
  }

  v3 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v3;
  }

  v4 = a1;
  v14 = MEMORY[0x277D84F90];
  result = sub_20BB5E2D4(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_18;
  }

  v3 = v14;
  if (qword_27C760D18 != -1)
  {
    goto LABEL_19;
  }

  while (a2 >= v4)
  {
    v7 = 0;
    v10 = v4 - 1;
    while (v7 < v5)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_15;
      }

      __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771C88);
      sub_20C00AC78();
      sub_20C13D094();
      v4 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v4 >= v9 >> 1)
      {
        sub_20BB5E2D4((v9 > 1), v4 + 1, 1);
      }

      *(v3 + 16) = v4 + 1;
      *(v3 + v4 + 32) = v13;
      ++v7;
      if ((v10 + v7) >= a2)
      {
        goto LABEL_16;
      }

      if (v8 == v5)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_20C0085CC(uint64_t a1)
{
  v46 = sub_20C133244();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v35 = v1;
  v51 = MEMORY[0x277D84F90];
  sub_20BB5E294(0, v8, 0);
  v9 = v51;
  v10 = a1 + 56;
  result = sub_20C13DAA4();
  v12 = result;
  v13 = 0;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v8;
  v38 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    v49 = 1 << v12;
    v50 = v12 >> 6;
    v16 = *(a1 + 36);
    v47 = v13;
    v48 = v16;
    v17 = *(a1 + 48);
    v18 = v42;
    v19 = *(v42 + 16);
    v20 = v9;
    v21 = v45;
    v22 = v7;
    v23 = v46;
    v19(v45, v17 + *(v42 + 72) * v12, v46);
    v24 = *(v44 + 48);
    v19(v22, v21, v23);
    *(v22 + v24) = 1;
    v25 = v21;
    v9 = v20;
    (*(v18 + 8))(v25, v23);
    v51 = v20;
    v27 = *(v20 + 16);
    v26 = *(v20 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_20BB5E294(v26 > 1, v27 + 1, 1);
      v9 = v51;
    }

    *(v9 + 16) = v27 + 1;
    result = sub_20C00AC08(v22, v9 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v27);
    a1 = v39;
    v14 = 1 << *(v39 + 32);
    if (v12 >= v14)
    {
      goto LABEL_23;
    }

    v10 = v38;
    v28 = *(v38 + 8 * v50);
    if ((v28 & v49) == 0)
    {
      goto LABEL_24;
    }

    if (v48 != *(v39 + 36))
    {
      goto LABEL_25;
    }

    v7 = v22;
    v29 = v28 & (-2 << (v12 & 0x3F));
    if (v29)
    {
      v14 = __clz(__rbit64(v29)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v15 = v47;
    }

    else
    {
      v30 = v50 << 6;
      v31 = v50 + 1;
      v32 = (v36 + 8 * v50);
      while (v31 < (v14 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_20B526EA4(v12, v48, 0);
          v14 = __clz(__rbit64(v33)) + v30;
          goto LABEL_19;
        }
      }

      result = sub_20B526EA4(v12, v48, 0);
LABEL_19:
      v15 = v47;
    }

    v13 = v15 + 1;
    v12 = v14;
    if (v13 == v37)
    {
      return v9;
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

void sub_20C008994(int64_t a1, int64_t a2, uint64_t a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    goto LABEL_40;
  }

  v35 = a2;
  v32 = a3;
  v33 = a1;
  if (a1)
  {
    v37 = MEMORY[0x277D84F90];
    sub_20BB5E1E0(0, a1, 0);
    v10 = v35;
    if (v35 < 0)
    {
      goto LABEL_41;
    }

    v11 = 0;
    v12 = v37;
    do
    {
      if (v10)
      {
        v34 = v12;
        v36 = MEMORY[0x277D84F90];
        sub_20BB5E220(0, v35, 0);
        v10 = v35;
        v13 = v36;
        v14 = 0;
        do
        {
          MEMORY[0x20F2EA980](v14, v11);
          v36 = v13;
          v16 = *(v13 + 16);
          v15 = *(v13 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_20BB5E220(v15 > 1, v16 + 1, 1);
            v10 = v35;
            v13 = v36;
          }

          ++v14;
          *(v13 + 16) = v16 + 1;
          (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v9, v6);
        }

        while (v10 != v14);
        v12 = v34;
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      v37 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_20BB5E1E0((v17 > 1), v18 + 1, 1);
        v10 = v35;
        v12 = v37;
      }

      ++v11;
      *(v12 + 16) = v19;
      *(v12 + 8 * v18 + 32) = v13;
    }

    while (v11 != v33);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
    v20 = MEMORY[0x277D84F90];
    if (!v19)
    {
LABEL_34:

      sub_20B717420(v20);

      return;
    }
  }

  v21 = 0;
  v20 = MEMORY[0x277D84F90];
  while (v21 < *(v12 + 16))
  {
    v22 = *(v12 + 8 * v21 + 32);
    v23 = *(v22 + 16);
    v24 = v20[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_36;
    }

    v26 = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v25 <= v20[3] >> 1)
    {
      if (*(v22 + 16))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v28 = v24 + v23;
      }

      else
      {
        v28 = v24;
      }

      v20 = sub_20BC07618(isUniquelyReferenced_nonNull_native, v28, 1, v20);
      if (*(v22 + 16))
      {
LABEL_30:
        if ((v20[3] >> 1) - v20[2] < v23)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        v12 = v26;
        if (v23)
        {
          v29 = v20[2];
          v30 = __OFADD__(v29, v23);
          v31 = v29 + v23;
          if (v30)
          {
            goto LABEL_39;
          }

          v20[2] = v31;
        }

        goto LABEL_19;
      }
    }

    v12 = v26;
    if (v23)
    {
      goto LABEL_37;
    }

LABEL_19:
    if (v19 == ++v21)
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
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_20C008D14(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, int64_t a5, int64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a1;
  v55 = sub_20C132EE4();
  v15 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54[3] = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v56 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20B6B4474(MEMORY[0x277D84F90]);
  sub_20C008994(a3, a4, v20);
  v63 = v22;
  v64 = v21;
  v65 = v24;
  v66 = v23;
  if (a5 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    __break(1u);
    __break(1u);
    swift_unexpectedError();
    __break(1u);

    __break(1u);
    return result;
  }

  v58 = a7;
  v25 = MEMORY[0x277D84F90];
  v60 = a8;
  if (a5)
  {
    v57 = a2;
    v59 = a6;
    v67[0] = MEMORY[0x277D84F90];
    sub_20BB5E264(0, a5, 0);
    v25 = v67[0];
    v26 = *(v67[0] + 16);
    v27 = a5;
    do
    {
      v67[0] = v25;
      v28 = *(v25 + 24);
      if (v26 >= v28 >> 1)
      {
        sub_20BB5E264((v28 > 1), v26 + 1, 1);
        v25 = v67[0];
      }

      *(v25 + 16) = v26 + 1;
      *(v25 + v26++ + 32) = 0;
      --a5;
    }

    while (a5);
    a6 = v59;
    a5 = v27;
    a2 = v57;
  }

  if (a6 < 0)
  {
    goto LABEL_24;
  }

  v57 = a5;
  v54[0] = v15;
  v54[1] = v18;
  v54[2] = v17;
  v59 = a3;
  v62 = a4;
  v29 = sub_20C008408(0, a6, a2);
  v30 = sub_20BEF6CA0(v25);

  v67[0] = v30;
  sub_20B8DA0E8(v29);
  v31 = *(v67[0] + 16);
  if (v31)
  {
    v32 = (v67[0] + 32);
    v33 = MEMORY[0x277D84F90];
    do
    {
      v35 = *v32++;
      v34 = v35;
      if (v35 != 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_20BC07640(0, *(v33 + 2) + 1, 1, v33);
        }

        v37 = *(v33 + 2);
        v36 = *(v33 + 3);
        if (v37 >= v36 >> 1)
        {
          v33 = sub_20BC07640((v36 > 1), v37 + 1, 1, v33);
        }

        *(v33 + 2) = v37 + 1;
        v33[v37 + 32] = v34;
      }

      --v31;
    }

    while (v31);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v38 = sub_20B901148(v33, a2, v64, v63, v66, v65);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = sub_20B6D2924(v44, v42);
  v46 = sub_20C0085CC(v45);

  if (*(v46 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A20);
    v47 = sub_20C13DE84();
  }

  else
  {
    v47 = MEMORY[0x277D84F98];
  }

  v67[0] = v47;
  sub_20C009D00(v46, 1, v67);
  v48 = v67[0];

  v49 = sub_20C00A628(v48, v38, v40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67[0] = v44;
  sub_20C00A864(v49, sub_20C009C60, 0, isUniquelyReferenced_nonNull_native, v67);

  sub_20C008994(v38, v40, v67[0]);
  v52 = v51;

  return v52;
}

uint64_t WorkoutPlanArtwork.init(identifier:modalityIdentifiersCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_20C132EB4();
  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v6;
  if (v6 > v6 >> 32)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v11 = v6;
  v12 = sub_20C132714();
  if (v12)
  {
    v13 = v12;
    v14 = sub_20C132734();
    if (__OFSUB__(v10, v14))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v15 = v10 - v14 + v13;
    v6 = sub_20C132724();
    if (v15)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_8:
    if (v9 != 2)
    {
      goto LABEL_13;
    }

    v11 = v6;
    v16 = *(v6 + 16);
    v17 = sub_20C132714();
    if (!v17)
    {
LABEL_49:
      sub_20C132724();
      goto LABEL_50;
    }

    v18 = v17;
    v19 = sub_20C132734();
    if (__OFSUB__(v16, v19))
    {
      goto LABEL_47;
    }

    v20 = v16 - v19 + v18;
    sub_20C132724();
    if (!v20)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_12:
    v6 = v11;
LABEL_13:
    sub_20B7197A0(v6, v8);
    v45 = sub_20C134634();
    v46 = sub_20C00A24C(&qword_27C76E100, MEMORY[0x277D508E8]);
    __swift_allocate_boxed_opaque_existential_1(v44);
    sub_20C134624();
    if (qword_27C760C00 != -1)
    {
      swift_once();
    }

    v21 = qword_27C760BF8;
    v22 = qword_27C79C6B0;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = qword_27C79C6A8;
    __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v24 = sub_20C13C7A4();
    if (v24 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24;
    }

    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
      v26 = sub_20C13DB34();
      if (v26)
      {
LABEL_23:
        v26 = v25 % v26;
        if ((v23 & 0xC000000000000001) == 0)
        {
          if (v26 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v27 = *(v23 + 8 * v26 + 32);
            goto LABEL_26;
          }

          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        v27 = MEMORY[0x20F2F5430](v26, v23);
LABEL_26:
        v28 = v27;
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
            sub_20C009B44();
            sub_20C13DE04();
            v29 = v43;
            __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
            sub_20C13DE04();
            v30 = v43;
            v32 = 2;
            v33 = 3;
            v31 = 1.15;
            goto LABEL_41;
          }

          if (a2 == 3)
          {
            __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
            sub_20C009B44();
            sub_20C13DE04();
            v29 = v43;
            __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
            sub_20C13DE04();
            v30 = v43;
            v32 = 2;
            v33 = 4;
            v31 = 0.8;
            goto LABEL_41;
          }
        }

        else
        {
          if (!a2)
          {
            v31 = 0.0;
            v30 = 0;
            v29 = 0;
            v33 = 0;
            v32 = 0;
            goto LABEL_41;
          }

          if (a2 == 1)
          {
            __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
            sub_20C009B44();
            sub_20C13DE04();
            v29 = 0;
            v30 = v43;
            v31 = 1.5;
            v32 = 1;
            v33 = 3;
LABEL_41:
            v34 = sub_20C008D14(v32 * v33, v44, v32, v33, v29, v30, a2, a1);
            v36 = v35;
            v38 = v37;
            v40 = v39;
            v41 = sub_20C132EE4();
            (*(*(v41 - 8) + 8))(a1, v41);
            result = __swift_destroy_boxed_opaque_existential_1(v44);
            *a3 = v22;
            a3[1] = 1.0;
            a3[2] = v31;
            *(a3 + 3) = v28;
            a3[4] = 1.5;
            *(a3 + 5) = v34;
            *(a3 + 6) = v36;
            *(a3 + 7) = v38;
            *(a3 + 8) = v40;
            return result;
          }
        }

        __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
        sub_20C009B44();
        sub_20C13DE04();
        v29 = v43;
        if (v43 == 4)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
          sub_20C13DE04();
          v30 = 4;
          v32 = 2;
          v33 = 5;
          v29 = 4;
        }

        else
        {
          __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
          sub_20C13DE04();
          if (v43 == 1)
          {
            v30 = 1;
            v32 = 2;
            v33 = 5;
            v29 = 1;
          }

          else
          {
            v30 = v43;
            v32 = 2;
            v33 = 5;
          }
        }

        v31 = 0.65;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_51:
  result = sub_20C132724();
  __break(1u);
  return result;
}

unint64_t sub_20C009B44()
{
  result = qword_27C771C80;
  if (!qword_27C771C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771C80);
  }

  return result;
}

unint64_t *sub_20C009B98(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20C00A294(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_20C009C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18) + 48);
  LOBYTE(v4) = *(a1 + v4);
  v6 = sub_20C133244();
  result = (*(*(v6 - 8) + 16))(a2, a1, v6);
  *(a2 + v5) = v4;
  return result;
}

void sub_20C009D00(uint64_t a1, char a2, void *a3)
{
  v7 = sub_20C133244();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18);
  MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  sub_20B52F9E8(a1 + v17, v54 - v14, &qword_27C763A18);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = v15[v16];
  v19 = *a3;
  v20 = sub_20B65A98C(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_20BA0AE6C(v25, a2 & 1);
    v20 = sub_20B65A98C(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_20C13E054();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v18;
  v31 = v20;
  sub_20BA10A78();
  v20 = v31;
  v18 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v55 + 8))(v10, v62);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = v18;
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + v35) = v32;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_20B52F9E8(v39, v15, &qword_27C763A18);
      v61(v10, v15, v62);
      v41 = v15[v57];
      v42 = *a3;
      v43 = sub_20B65A98C(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_20BA0AE6C(v47, 1);
        v43 = sub_20B65A98C(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
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
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD00000000000001BLL, 0x800000020C1B67A0);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](39, 0xE100000000000000);
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C00A24C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C00A294(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v35 = a2;
  v38 = a5;
  v47 = a4;
  v36 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18);
  MEMORY[0x28223BE20](v46);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_20C133244();
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v14 = 0;
  v48 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v42 = v11 + 16;
  v43 = v21;
  v44 = v16;
  v45 = v11;
  v40 = v11 + 8;
  while (v20)
  {
    v49 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
    v23 = v50;
LABEL_12:
    v26 = v48;
    v27 = v45;
    v28 = *(v45 + 16);
    v28(v23, v48[6] + *(v45 + 72) * v22, v10, v12);
    v29 = v26[7];
    v39 = v22;
    LOBYTE(v26) = *(v29 + v22);
    (v28)(v9, v23, v10);
    v9[*(v46 + 48)] = v26;
    v30 = v41;
    sub_20B52F9E8(v9, v41, &qword_27C767A18);
    v31 = sub_20C133234();
    v32 = *(v27 + 8);
    v32(v30, v10);
    if (v31 >= v47)
    {
      sub_20C00ABA0(v9);
      v32(v50, v10);
      v21 = v43;
      v16 = v44;
      v20 = v49;
    }

    else
    {
      sub_20B52F9E8(v9, v30, &qword_27C767A18);
      v33 = sub_20C133224();
      sub_20C00ABA0(v9);
      v32(v30, v10);
      v32(v50, v10);
      v21 = v43;
      v16 = v44;
      v20 = v49;
      if (v33 < v38)
      {
        *(v36 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_17:
          sub_20B6CE26C(v36, v35, v37, v48);
          return;
        }
      }
    }
  }

  v24 = v14;
  v23 = v50;
  while (1)
  {
    v14 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      goto LABEL_17;
    }

    v25 = v16[v14];
    ++v24;
    if (v25)
    {
      v49 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) | (v14 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_20C00A628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  swift_bridgeObjectRetain_n();
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_20C009B98(v15, v9, a1, a2, a3);
      MEMORY[0x20F2F6A40](v15, -1, -1);

      goto LABEL_6;
    }
  }

  v16[0] = v16;
  MEMORY[0x28223BE20](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_20C00A294((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:

  return v13;
}

uint64_t sub_20C00A864(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = sub_20C133244();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A08);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_20BEF598C(v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_20B6D87E8();
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = v14[v22];
    v25 = *v50;
    v27 = sub_20B65A98C(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_20BA10A78();
      }
    }

    else
    {
      sub_20BA0AE6C(v30, a4 & 1);
      v32 = sub_20B65A98C(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + v27) = v24;
      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20C00ABA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C00AC08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C00AC78()
{
  result = qword_27C771C90;
  if (!qword_27C771C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771C90);
  }

  return result;
}

uint64_t sub_20C00ACDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D523F8];
  v3 = sub_20C135ED4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_20C00ADE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_20C138034();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C136594();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = sub_20BEDEF08(*(a1 + 16), 0);
    v11 = sub_20BEE2CD4(v35, &v10[(*(v4 + 80) + 32) & ~*(v4 + 80)], v8, a1);
    v30 = v35[3];
    v31 = v11;
    v29 = v35[4];

    sub_20B583EDC();
    if (v31 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = v9;
LABEL_5:
  v35[0] = v10;
  sub_20C00D760(v35);
  v12 = v35[0];
  v13 = v35[0][2];
  if (v13)
  {
    v26 = a2;
    v35[0] = v9;
    sub_20BB5D604(0, v13, 0);
    v14 = v35[0];
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v17 = *(v15 + 64);
    v25[1] = v12;
    v18 = v12 + ((v17 + 32) & ~v17);
    v29 = *(v15 + 56);
    v30 = v16;
    v31 = v15;
    v19 = (v15 - 8);
    v20 = v33;
    v28 = v34 + 32;
    v21 = v27;
    do
    {
      v30(v6, v18, v20);
      sub_20C138024();
      sub_20C137FF4();
      sub_20C136554();
      (*v19)(v6, v20);
      v35[0] = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        sub_20BB5D604(v22 > 1, v23 + 1, 1);
        v21 = v27;
        v14 = v35[0];
      }

      v14[2] = v23 + 1;
      (*(v34 + 32))(v14 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v23, v21, v32);
      v18 = v29 + v18;
      --v13;
    }

    while (v13);

    a2 = v26;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  sub_20C02BC6C(v14, a2);
}

uint64_t sub_20C00B174()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v37 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - v11;
  v38 = v12;
  MEMORY[0x28223BE20](v13);
  v41 = &v37 - v14;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_bookmarkType))
  {
    v15 = sub_20B716148(&unk_282287280);
    sub_20C1380F4();
    v16 = sub_20C138104();
    if (v16 == sub_20C138104())
    {
      v17 = sub_20BE8BF14(&unk_282287230);
      sub_20B722BD4(v17, v15);
    }
  }

  else
  {
    sub_20BE8BF14(&unk_282287258);
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_bookmarkClient), *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_bookmarkClient + 24));
  sub_20C13A1B4();

  v18 = swift_allocObject();
  *(v18 + 16) = sub_20C00FF48;
  *(v18 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v5, v2);
  v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B6331FC;
  v21[1] = v18;

  v22 = v40;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20C01003C;
  *(v23 + 24) = v1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20B849B38;
  *(v24 + 24) = v23;
  v25 = v37;
  v26 = v39;
  v27 = v42;
  (*(v37 + 16))(v39, v22, v42);
  v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = (v38 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v25 + 32))(v30 + v28, v26, v27);
  v31 = (v30 + v29);
  *v31 = sub_20B66A8B4;
  v31[1] = v24;

  v32 = v41;
  sub_20C137C94();
  v33 = *(v25 + 8);
  v33(v22, v27);
  v34 = sub_20C137CB4();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_20B5DF6DC, v35);

  return (v33)(v32, v27);
}

uint64_t sub_20C00B684(int a1)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-v6];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v23[-v9];
  v11 = sub_20C02A560();
  sub_20B8CAB64(v11, v7);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v24;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20C00FF00;
  *(v14 + 24) = v13;
  (*(v2 + 16))(v4, v7, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v15, v4, v1);
  v18 = (v17 + v16);
  *v18 = sub_20B8C71E8;
  v18[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v19 = v25;
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (*(v8 + 8))(v10, v19);
}

uint64_t sub_20C00B9EC@<X0>(uint64_t *a1@<X0>, int a2@<W2>, BOOL *a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (result)
  {
    sub_20C00BA80(a2, v5);
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t sub_20C00BA80(int a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v5 = sub_20C13C554();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_lazyLockupFetcher);
  v10 = *(sub_20C02A560() + 16);

  if (v10)
  {

    v11 = sub_20C033244(v9, a2, v3);
  }

  else
  {
    v44 = v6;
    v12 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_platform);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_20C14F980;
    v13 = swift_allocObject();
    v14 = v13;
    if (v12 == 3)
    {
      *(v13 + 16) = xmmword_20C189DE0;
      *(v13 + 32) = 0;
    }

    else
    {
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 1;
    }

    v15 = (v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_storefrontLocalizer);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_storefrontLocalizer), *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_storefrontLocalizer + 24));
    *(v14 + 40) = sub_20C138D34();
    *(v14 + 48) = v16;
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    *(v14 + 56) = sub_20C138D34();
    *(v14 + 64) = v17;
    v18 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_galleryIcon);
    *(v14 + 72) = v18;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0;
    *(v14 + 96) = 0;
    *(v11 + 32) = v14 | 0x1000000000000006;
    v19 = v18;
    v6 = v44;
  }

  v20 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_descriptorIdentifier);
  v21 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_descriptorIdentifier + 8);
  v46 = 0uLL;
  LOBYTE(v47) = 1;
  *(&v47 + 1) = 0;
  *&v48 = 0;
  WORD4(v48) = 128;
  v49 = 0uLL;
  *&v50 = v20;
  *(&v50 + 1) = v21;
  v51 = 0uLL;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = v11;
  *&v53[0] = MEMORY[0x277D84F90];
  *(v53 + 8) = 0u;
  *(&v53[1] + 8) = 0u;
  *(&v53[2] + 1) = 0;
  v54 = 2;
  nullsub_1(&v46);
  v22 = v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row;
  v23 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 144);
  v55[8] = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 128);
  v55[9] = v23;
  v56 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 160);
  v24 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v55[4] = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 64);
  v55[5] = v24;
  v25 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 112);
  v55[6] = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 96);
  v55[7] = v25;
  v26 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 16);
  v55[0] = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row);
  v55[1] = v26;
  v27 = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v55[2] = *(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 32);
  v55[3] = v27;
  v28 = v53[2];
  *(v22 + 128) = v53[1];
  *(v22 + 144) = v28;
  *(v22 + 160) = v54;
  v29 = v51;
  *(v22 + 64) = v50;
  *(v22 + 80) = v29;
  v30 = v53[0];
  *(v22 + 96) = v52;
  *(v22 + 112) = v30;
  v31 = v47;
  *v22 = v46;
  *(v22 + 16) = v31;
  v32 = v49;
  *(v22 + 32) = v48;
  *(v22 + 48) = v32;

  sub_20B520158(v55, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v35 = v6;
      v36 = sub_20B61DFB8(v3, result);
      if (v37)
      {
        v39 = v36;
        v40 = v37;
        v41 = v38;
        sub_20B5E2E18();
        *v8 = sub_20C13D374();
        (*(v35 + 104))(v8, *MEMORY[0x277D85200], v5);
        v42 = sub_20C13C584();
        result = (*(v35 + 8))(v8, v5);
        if ((v42 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        if ((v45 & 0x80) != 0)
        {
          sub_20C10DDFC(v3, v39, v45 & 1, v34);
        }

        else
        {
          sub_20B6218A4(v39, v40, v41, v3, v45 & 1, v34);
        }
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20C00BED4()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_bookmarkClient);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_subscriptionCache);

  return v0;
}

uint64_t sub_20C00C064()
{
  sub_20C00BED4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BookmarkGalleryShelf()
{
  result = qword_27C771D08;
  if (!qword_27C771D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C00C110()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_20C00C204()
{
  sub_20B8C9C90();
  sub_20C00B174();
  swift_getObjectType();
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20C00C414(uint64_t a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v6;
    v34 = v9;
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[BookmarkedWorkoutGalleryShelf] archived sessions updated, updating shelf", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v11 + 8))(v13, v10);

    v19 = sub_20C13AEB4();
    v20 = v33;
    sub_20C02CCD0(v19, v33);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_20C01003C;
    *(v21 + 24) = v15;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B849B38;
    *(v22 + 24) = v21;
    v23 = v32;
    (*(v2 + 16))(v32, v20, v1);
    v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v25 = swift_allocObject();
    (*(v2 + 32))(v25 + v24, v23, v1);
    v26 = (v25 + ((v3 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20B66A8B4;
    v26[1] = v22;

    v27 = v34;
    sub_20C137C94();
    v28 = *(v2 + 8);
    v28(v20, v1);
    v29 = sub_20C137CB4();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29(sub_20B5DF6DC, v30);

    return (v28)(v27, v1);
  }

  return result;
}

uint64_t sub_20C00C844(uint64_t a1, const char *a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, a2, v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C00B174();
  }

  return result;
}

uint64_t sub_20C00C9B8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20C00FEA8;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20C00CC7C(unsigned int *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_20C13BB84();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v23) = v13;
    sub_20C00CFB0(a3, a4, v12 | (v13 << 32), a5 & 1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_20B75FBFC(a3, a4, &v20);
    if (v20 == 2)
    {
      sub_20C13B4E4();

      v15 = sub_20C13BB74();
      v16 = sub_20C13D1D4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136446210;
        *(v17 + 4) = sub_20B51E694(a3, a4, &v23);
        _os_log_impl(&dword_20B517000, v15, v16, "No download entry for identifier: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x20F2F6A40](v18, -1, -1);
        MEMORY[0x20F2F6A40](v17, -1, -1);
      }

      (*(v19 + 8))(v11, v9);
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25[0] = v22[0];
      *(v25 + 9) = *(v22 + 9);
      if (BYTE8(v21) == 255 || (BYTE8(v21) & 1) == 0 || ((1 << v24) & 0x1DD) != 0)
      {
        if (v20 & 1) != 0 || (a5)
        {
          sub_20B75DE1C(a3, a4, &v23, 0);
        }

        else
        {
          sub_20B75D680(a3, a4, &v23);
        }
      }

      else if (v24 == 1)
      {
        sub_20B75E1A8(a3, a4, &v23, 0);
      }

      sub_20B520158(&v20, &qword_27C764BC0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20C00CFB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = a1;
  v8 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v42 = a2;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3 > 2)
    {
      if ((a3 - 4) < 2)
      {
        v19 = MEMORY[0x277D51478];
        goto LABEL_11;
      }

      if (a3 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!a3)
      {
        v21 = *(v12 + 104);
        if (a4)
        {
          v40 = MEMORY[0x277D51480];
        }

        else
        {
          v40 = MEMORY[0x277D513C0];
        }

        v20 = *v40;
        goto LABEL_12;
      }

      if (a3 != 1)
      {
        v19 = MEMORY[0x277D51480];
        goto LABEL_11;
      }
    }

    v19 = MEMORY[0x277D51440];
    goto LABEL_11;
  }

LABEL_2:
  v19 = MEMORY[0x277D51420];
LABEL_11:
  v20 = *v19;
  v21 = *(v12 + 104);
LABEL_12:
  v21(v14, v20, v11, v16);
  (*(v12 + 32))(v18, v14, v11);
  v22 = sub_20C136664();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v12 + 16))(&v10[v8[5]], v18, v11);
  v23 = v8[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v25 = v8[8];
  v26 = *MEMORY[0x277D52408];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v10[v25], v26, v27);
  (*(v28 + 56))(&v10[v25], 0, 1, v27);
  v29 = v8[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
  v32 = v8[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v10[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v35 = &v10[v8[7]];
  v36 = v42;
  *v35 = v41;
  *(v35 + 1) = v36;
  v37 = &v10[v8[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v10[v8[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA03FC(v4, v10, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B8C70F4(v10, type metadata accessor for ShelfMetricAction);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_20C00D3FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C00D474@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

double sub_20C00D53C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = sub_20C134014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v3 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_lazyLockupFetcher) + 160);
  if (*(v11 + 16))
  {

    v12 = sub_20B65AA60(a1, a2);
    if (v13)
    {
      (*(v8 + 16))(v10, *(v11 + 56) + *(v8 + 72) * v12, v7);

      *(a3 + 24) = v7;
      *(a3 + 32) = &off_2822D8E58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(v8 + 32))(boxed_opaque_existential_1, v10, v7);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_20C00D6A0()
{
  v0 = sub_20C02C2CC();
  v1 = sub_20BEF69F4(v0);

  return v1;
}

uint64_t sub_20C00D6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_20C02D360(a3, a4);
  if (result)
  {

    return sub_20C00B684(a5 & 1 | 0xFFFFFF80);
  }

  return result;
}

void sub_20C00D760(void **a1)
{
  v2 = *(sub_20C138034() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A1078(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20C00D808(v5);
  *a1 = v3;
}

void sub_20C00D808(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C138034();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C138034() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20C00DCD4(v8, v9, a1, v4);
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
    sub_20C00D934(0, v2, 1, a1);
  }
}

void sub_20C00D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C138034();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C138004();
      v32 = v59;
      sub_20C138004();
      v62 = sub_20C132DF4();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20C00DCD4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C138034();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20C00E8D4(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C138004();
      v34 = v159;
      sub_20C138004();
      LODWORD(v149) = sub_20C132DF4();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C138004();
        v46 = v159;
        sub_20C138004();
        LOBYTE(v162) = sub_20C132DF4() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20C00E8D4(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C138004();
    v120 = v159;
    sub_20C138004();
    LODWORD(v162) = sub_20C132DF4();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_20C00E8D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C138034();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
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

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C138004();
            v48 = v66;
            sub_20C138004();
            v68 = sub_20C132DF4();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
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

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C138004();
        v28 = v66;
        sub_20C138004();
        v68 = sub_20C132DF4();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A0B04(&v75, &v74, &v73);
}

uint64_t sub_20C00EFB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);

  return sub_20C137C94();
}

uint64_t sub_20C00F060(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v11 = v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row;
  sub_20B5D8060(v34);
  v12 = v34[9];
  *(v11 + 128) = v34[8];
  *(v11 + 144) = v12;
  *(v11 + 160) = v35;
  v13 = v34[5];
  *(v11 + 64) = v34[4];
  *(v11 + 80) = v13;
  v14 = v34[7];
  *(v11 + 96) = v34[6];
  *(v11 + 112) = v14;
  v15 = v34[1];
  *v11 = v34[0];
  *(v11 + 16) = v15;
  v16 = v34[3];
  *(v11 + 32) = v34[2];
  *(v11 + 48) = v16;
  *(v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_bookmarkType) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v33, v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v33, v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_eventHub) = v33[0];
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_platform) = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v33, v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v33, v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_subscriptionCache);
  v17 = (v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_descriptorIdentifier);
  *v17 = a4;
  v17[1] = a5;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v5 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D84F90];
  *(v18 + 152) = MEMORY[0x277D84F90];

  v20 = sub_20B6B0C04(v19);
  v21 = MEMORY[0x277D84FA0];
  *(v18 + 160) = v20;
  *(v18 + 168) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v18 + 136) = 20;
  *(v18 + 144) = a3;
  *(v18 + 145) = 0;
  *(v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_lazyLockupFetcher) = v18;
  v22 = sub_20C13C914();
  if (a1)
  {
    v23 = "LIBRARY_YOUR_WORKOUTS";
    v24 = "";
    v25 = 0xD000000000000020;
    v26 = 0xD000000000000015;
  }

  else
  {
    v26 = 0xD000000000000018;
    v23 = "LIBRARY_YOUR_MEDITATIONS";
    v24 = "KOUTS_SUBHEADING";
    v25 = 0xD000000000000023;
  }

  v27 = [objc_opt_self() smm:v22 systemImageNamed:?];

  *(v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_galleryIcon) = v27;
  v28 = (v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_titleText);
  *v28 = v26;
  v28[1] = v24 | 0x8000000000000000;
  v29 = (v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_secondaryText);
  *v29 = v25;
  v29[1] = v23 | 0x8000000000000000;
  type metadata accessor for DownloadSubscriptionCoordinator();
  swift_allocObject();
  v30 = sub_20B8CB478();
  v31 = (v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_downloadSubscriptionCoordinator);
  *v31 = v30;
  v31[1] = &off_2822B2B58;
  *(v30 + 24) = &off_2822FFBD0;
  swift_unknownObjectWeakAssign();
  *(*(v6 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_downloadSubscriptionCoordinator) + 40) = &off_2822FFBB8;
  swift_unknownObjectWeakAssign();
  return v6;
}

uint64_t sub_20C00F524(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  v8 = sub_20C136594();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767450);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_20C134A74();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = &v50 - v22;
  v23 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8C702C(v62, v25, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20B8C70F4(v25, type metadata accessor for ShelfItemAction);
  if (EnumCaseMultiPayload == 13)
  {
    sub_20C02C020(v60, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return sub_20B520158(v16, &qword_27C767450);
    }

    else
    {
      v28 = v61;
      sub_20B8C6FC8(v16, v61);
      sub_20B8C702C(v28, v20, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v50;
        (*(v50 + 32))(v13, v20, v11);
        v30 = sub_20C133E44();
        v32 = v31;
        (*(v29 + 8))(v13, v11);
      }

      else
      {
        v34 = v51;
        v33 = v52;
        (*(v51 + 32))(v10, v20, v52);
        v30 = sub_20C136564();
        v32 = v35;
        (*(v34 + 8))(v10, v33);
      }

      v36 = v54;
      sub_20B8CA380(v30, v32, v54);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v30;
      *(v38 + 32) = v32;
      *(v38 + 40) = 0;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20C00FE5C;
      *(v39 + 24) = v38;
      v41 = v56;
      v40 = v57;
      v42 = v53;
      (*(v56 + 16))(v53, v36, v57);
      v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v44 = swift_allocObject();
      (*(v41 + 32))(v44 + v43, v42, v40);
      v45 = (v44 + ((v3 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v45 = sub_20B8C70B8;
      v45[1] = v39;
      v46 = v55;
      sub_20C137C94();
      (*(v41 + 8))(v36, v40);
      v47 = v59;
      v48 = sub_20C137CB4();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v48(sub_20B52347C, v49);

      (*(v58 + 8))(v46, v47);
      return sub_20B8C70F4(v61, MEMORY[0x277D50C70]);
    }
  }

  return result;
}

uint64_t sub_20C00FC3C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_platform))
  {
    goto LABEL_7;
  }

  v3 = v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 112);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 144);
  v56 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 128);
  v57 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 64);
  v53 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v54 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 96);
  v55 = v4;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 16);
  v49[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row);
  v49[1] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 32);
  v51 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 48);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 80);
  v46 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 64);
  v47 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 16);
  v42 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row);
  v43 = v14;
  v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 32);
  v45 = v12;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 144);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 112);
  v39 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 128);
  v40 = v15;
  v38 = v16;
  v59[0] = v49[0];
  v59[1] = v10;
  v59[4] = v52;
  v59[5] = v9;
  v58 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 160);
  v48 = *(v1 + OBJC_IVAR____TtC9SeymourUI20BookmarkGalleryShelf_row + 96);
  v17 = *(&v54 + 1);
  v41 = *(v3 + 160);
  v18 = *(v3 + 96);
  v59[2] = v50;
  v59[3] = v8;
  v19 = *(v3 + 144);
  v65 = *(v3 + 160);
  v63 = v56;
  v64 = v19;
  v62 = v5;
  v60 = v18;
  v61 = *(&v54 + 1);
  if (sub_20B5EAF8C(v59) == 1)
  {
    v30 = v46;
    v31 = v47;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v32 = v48;
    v33 = *(&v54 + 1);
    v37 = v41;
    v35 = v39;
    v36 = v40;
    v34 = v38;
    sub_20B5EAED4(v49, v25);
    sub_20B520158(&v26, &qword_27C762340);
LABEL_7:
    v23 = 1;
    return v23 & 1;
  }

  v30 = v46;
  v31 = v47;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v32 = v48;
  v33 = *(&v54 + 1);
  v37 = v41;
  v35 = v39;
  v36 = v40;
  v34 = v38;
  sub_20B5EAED4(v49, v25);

  sub_20B520158(&v26, &qword_27C762340);
  v20 = *(v17 + 16);
  if (!v20)
  {

    goto LABEL_7;
  }

  v21 = *(v17 + 8 * v20 + 24);

  v22 = sub_20B969AA8(a1, v21);

  v23 = v22 ^ 1;
  return v23 & 1;
}

uint64_t sub_20C00FF74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_20C010054(uint64_t a1, unsigned __int8 a2, double a3)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_20C0104D4(a1, a3);
      return;
    }

    if (a1)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a3;
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = [objc_opt_self() bundleForClass_];
      v10 = sub_20C132964();
      v12 = v11;

      type metadata accessor for PillConfiguration();
      v13 = swift_allocObject();
      *(v13 + 17) = 0;
      v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.109803922 alpha:{1.0, 0xE000000000000000}];
      v15 = [v14 CGColor];

      *(v13 + 128) = v15;
      *(v13 + 136) = xmmword_20C189EF0;
      *(v13 + 152) = xmmword_20C189EF0;
      *(v13 + 48) = v10;
      *(v13 + 56) = v12;
      *(v13 + 32) = sub_20C0110C8;
      *(v13 + 40) = v7;
      *(v13 + 24) = 0;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 16) = 1;
      return;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
    type metadata accessor for ProgressConfiguration();
    v5 = swift_allocObject();
    *(v5 + 24) = a1;
    *(v5 + 32) = a3;
    *(v5 + 16) = 1;
    return;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
LABEL_13:
      type metadata accessor for SeymourLocalizationBundle();
      v18 = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      v20 = sub_20C132964();
      v22 = v21;

      sub_20C010DB8(v20, v22);

      return;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    type metadata accessor for NoBackgroundConfiguration();
    v17 = swift_allocObject();
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 24) = sub_20C0110D0;
    *(v17 + 32) = v25;
    *(v17 + 40) = v26;
  }

  else
  {
    if ((a1 - 2) >= 2)
    {
      type metadata accessor for IndefiniteSpinnerConfiguration();
      v23 = swift_allocObject();
      *(v23 + 32) = 0xD000000000000014;
      *(v23 + 40) = 0x800000020C19A7B0;
      *(v23 + 24) = 0x4000000000000000;
      *(v23 + 16) = 1;
      return;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    type metadata accessor for NoBackgroundConfiguration();
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 40) = v16;
  }

  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 0;
  *(v17 + 16) = 1;
}

double sub_20C0104D4(unsigned __int8 a1, double a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v7 = sub_20C132964();
      v9 = v8;

      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, 0xE000000000000000}];
      v12 = [v11 CGColor];

      v13 = [objc_opt_self() systemBackgroundColor];
      type metadata accessor for PillConfiguration();
      v14 = swift_allocObject();
      *(v14 + 17) = 0;
      v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.109803922 alpha:1.0];
      v16 = [v15 CGColor];

      v4 = v14;
      *(v14 + 120) = v13;
      *(v14 + 128) = v16;
      *(v14 + 136) = xmmword_20C189EF0;
      *(v14 + 152) = xmmword_20C189EF0;
      *(v14 + 48) = v7;
      *(v14 + 56) = v9;
      *(v14 + 32) = sub_20C011394;
      *(v14 + 40) = v10;
      *(v14 + 24) = v12;
      goto LABEL_9;
    }

    type metadata accessor for SeymourLocalizationBundle();
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v30 = sub_20C132964();
    v32 = v31;

    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, 0xE000000000000000}];
    type metadata accessor for PillConfiguration();
    v24 = swift_allocObject();
    *(v24 + 17) = 0;
    v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.109803922 alpha:1.0];
    v35 = [v34 CGColor];

    v4 = v24;
    *(v24 + 128) = v35;
    *(v24 + 136) = xmmword_20C189EF0;
    *(v24 + 152) = xmmword_20C189EF0;
    *(v24 + 48) = v30;
    *(v24 + 56) = v32;
    v27 = sub_20C0110D8;
    *(v24 + 40) = v33;
LABEL_8:
    *(v24 + 24) = 0;
    *(v24 + 32) = v27;
    *(v24 + 120) = v23;
    goto LABEL_9;
  }

  if (a1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    type metadata accessor for SeymourLocalizationBundle();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = sub_20C132964();
    v22 = v21;

    v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:{1.0, 0xE000000000000000}];
    type metadata accessor for PillConfiguration();
    v24 = swift_allocObject();
    *(v24 + 17) = 0;
    v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.109803922 alpha:1.0];
    v26 = [v25 CGColor];

    v4 = v24;
    *(v24 + 128) = v26;
    *(v24 + 136) = xmmword_20C189EF0;
    *(v24 + 152) = xmmword_20C189EF0;
    *(v24 + 48) = v20;
    *(v24 + 56) = v22;
    v27 = sub_20C0110E0;
    *(v24 + 40) = v17;
    goto LABEL_8;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  type metadata accessor for NoBackgroundConfiguration();
  v4 = swift_allocObject();
  *(v4 + 17) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 24) = sub_20C011394;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
LABEL_9:
  *(v4 + 112) = 0;
  result = 0.0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 1;
  return result;
}

id sub_20C010A54(void *a1)
{
  v1 = sub_20C0110FC(a1);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    v4 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
    v8 = v3;
    v3 = [v8 imageWithAlignmentRectInsets_];
  }

  return v3;
}

id sub_20C010B38(void *a1)
{
  v1 = sub_20C0110FC(a1);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() smm:v2 systemImageNamed:v1 withConfiguration:?];

  return v3;
}

id sub_20C010BBC(void *a1)
{
  v1 = sub_20C0110FC(a1);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() smm:v2 systemImageNamed:?];

  v4 = [v3 imageWithConfiguration_];
  return v4;
}

id sub_20C010C54(void *a1)
{
  v1 = sub_20C0110FC(a1);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() smm:v2 systemImageNamed:?];

  v4 = [v3 imageWithConfiguration_];
  return v4;
}

id sub_20C010CF8(void *a1)
{
  v1 = sub_20B7C6A74(a1);
  v2 = [objc_opt_self() configurationWithFont_];

  v3 = v2;
  v4 = sub_20C13C914();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  return v5;
}

uint64_t sub_20C010DB8(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D76940];
  v23 = *MEMORY[0x277D743F8];
  v3 = *MEMORY[0x277D76818];
  v30 = MEMORY[0x277D84FA0];
  v21 = v3;
  sub_20B6FF83C(&v26, 1);
  v32 = 1;
  v31 = 0;
  v4 = v30;
  sub_20C13E164();
  v20 = v2;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 >= 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_7;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26 = v4;
    sub_20B706478(4, v7, isUniquelyReferenced_nonNull_native);
    v4 = v26;
  }

LABEL_7:
  *&v26 = 0;
  *(&v26 + 1) = v21;
  *&v27 = v20;
  DWORD2(v27) = 0;
  v12 = v32;
  BYTE12(v27) = v32;
  BYTE13(v27) = 9;
  *&v28 = v23;
  v13 = v31;
  BYTE8(v28) = v31;
  v29 = v4;
  v14 = swift_allocObject();
  v15 = v27;
  *(v14 + 16) = v26;
  *(v14 + 32) = v15;
  *(v14 + 48) = v28;
  *(v14 + 64) = v29;
  v16 = objc_opt_self();
  sub_20B7B2490(&v26, v25);
  v17 = [v16 systemGrayColor];
  type metadata accessor for NoBackgroundConfiguration();
  v18 = swift_allocObject();
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *(v18 + 64) = 0;
  *(v18 + 24) = sub_20C01137C;
  *(v18 + 32) = v14;
  *(v18 + 40) = v17;
  *(v18 + 72) = v21;
  *(v18 + 80) = v20;
  *(v18 + 88) = (v12 << 32) | 0x90000000000;
  *(v18 + 96) = v23;
  *(v18 + 104) = v13;
  *(v18 + 112) = v4;
  *(v18 + 16) = 0;

  return v18;
}

id sub_20C0110FC(void *a1)
{
  v1 = *MEMORY[0x277D769D0];
  v16 = *MEMORY[0x277D743F8];
  v2 = *MEMORY[0x277D76818];
  v25 = MEMORY[0x277D84FA0];
  v15 = v2;
  sub_20B6FF83C(v18, 1);
  v27 = 1;
  v26 = 0;
  v3 = v25;
  sub_20C13E164();
  v14 = v1;
  sub_20C13CA64();
  v4 = sub_20C13E1B4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(v3 + 48) + v6);
      if (v8 >= 4)
      {
        break;
      }

      v9 = sub_20C13DFF4();

      if (v9)
      {
        goto LABEL_7;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = v3;
    sub_20B706478(4, v6, isUniquelyReferenced_nonNull_native);
    v3 = v18[0];
  }

LABEL_7:
  v18[0] = 0;
  v18[1] = v15;
  v18[2] = v14;
  v19 = 0;
  v20 = v27;
  v21 = 9;
  v22 = v16;
  v23 = v26;
  v24 = v3;
  v11 = sub_20B7C6A74(a1);
  v12 = [objc_opt_self() configurationWithFont_];

  sub_20B7B24EC(v18);
  return v12;
}

uint64_t sub_20C011520()
{
  result = sub_20C13CEC4();
  qword_27C79CF10 = v1;
  return result;
}

uint64_t sub_20C011544()
{
  result = sub_20C13CEB4();
  qword_27C79CF18 = v1;
  return result;
}

uint64_t sub_20C011568()
{
  result = sub_20C13CEC4();
  qword_27C79CF20 = v1;
  return result;
}

uint64_t sub_20C01158C()
{
  v0 = sub_20C13C4A4();
  __swift_allocate_value_buffer(v0, qword_27C79CF28);
  *__swift_project_value_buffer(v0, qword_27C79CF28) = 10;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_20C01161C()
{
  result = sub_20C13E204();
  qword_27C79CF40 = result;
  *algn_27C79CF48 = v1;
  return result;
}

uint64_t BrowsingViewController.navigateToUserActivity(_:annotation:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *a2;
  ObjectType = swift_getObjectType();
  v23 = v13;
  AMSBagProtocol.makeNavigationRequest(with:annotation:)(a1, &v23, ObjectType, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  v19 = (v18 + v17);
  *v19 = sub_20C0134B8;
  v19[1] = v15;
  v20 = v3;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t _s9SeymourUI22BrowsingViewControllerC17navigateToRequesty0A4Core7PromiseVyytGAA010NavigationH0VF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v38 = &v29 - v11;
  sub_20C011F98(a1, v9);
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  v36 = *(v5 + 16);
  v12 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v4;
  v36(v12, v9, v4);
  v13 = *(v5 + 80);
  v31 = v5;
  v14 = (v13 + 16) & ~v13;
  v35 = v14;
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v34 = *(v5 + 32);
  v34(v16 + v14, v12, v4);
  v17 = (v16 + v15);
  v18 = v32;
  *v17 = sub_20C012A34;
  v17[1] = v18;
  type metadata accessor for NavigationRequest();
  v19 = v33;
  v20 = v38;
  sub_20C137C94();
  v21 = v30;
  v22 = *(v31 + 8);
  v22(v9, v30);
  v23 = *&v19[OBJC_IVAR____TtC9SeymourUI22BrowsingViewController_navigationRouter];
  v24 = v20;
  v25 = v21;
  v36(v9, v24, v21);
  v26 = swift_allocObject();
  v34(v26 + v35, v9, v25);
  v27 = (v26 + v15);
  *v27 = j___s9SeymourUI16NavigationRouterC17navigateToRequesty0A4Core7PromiseVyytGAA0cG0VF;
  v27[1] = v23;

  sub_20C137C94();
  return (v22)(v38, v25);
}

uint64_t BrowsingViewController.navigateToURLContext(_:annotation:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *a2;
  ObjectType = swift_getObjectType();
  v23 = v13;
  AMSBagProtocol.makeNavigationRequest(with:annotation:)(a1, &v23, ObjectType, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  v19 = (v18 + v17);
  *v19 = sub_20C0134B8;
  v19[1] = v15;
  v20 = v3;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t BrowsingViewController.navigateToURL(_:annotation:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *a2;
  ObjectType = swift_getObjectType();
  v23 = v13;
  AMSBagProtocol.makeNavigationRequest(with:annotation:)(a1, &v23, ObjectType, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  v19 = (v18 + v17);
  *v19 = sub_20C012A10;
  v19[1] = v15;
  v20 = v3;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_20C011F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v43 = type metadata accessor for NavigationRequest();
  v41 = *(v43 - 8);
  v40 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764770);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v38 - 8);
  v37 = *(v14 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v35 = &v35 - v17;
  sub_20C13B534();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F970);
  sub_20C137C94();
  v18 = swift_allocObject();
  *(v18 + 16) = nullsub_1;
  *(v18 + 24) = 0;
  (*(v8 + 16))(v10, v13, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v19, v10, v7);
  v22 = (v21 + v20);
  *v22 = sub_20BE70DDC;
  v22[1] = v18;
  v23 = v35;
  sub_20C137C94();
  (*(v8 + 8))(v13, v7);
  v24 = v39;
  sub_20BDC6590(v42, v39, type metadata accessor for NavigationRequest);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  sub_20B75B150(v24, v26 + v25);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_20C012B8C;
  *(v27 + 24) = v26;
  v28 = v36;
  v29 = v38;
  (*(v14 + 16))(v36, v23, v38);
  v30 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v31 = (v37 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v14 + 32))(v32 + v30, v28, v29);
  v33 = (v32 + v31);
  *v33 = sub_20B64B960;
  v33[1] = v27;
  sub_20C137C94();
  return (*(v14 + 8))(v23, v29);
}

uint64_t sub_20C012548@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = type metadata accessor for NavigationRequest();
  v24[0] = *(v5 - 8);
  v6 = *(v24[0] + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771D18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BDC6590(a1, v13, type metadata accessor for NavigationResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0x10 || ((1 << EnumCaseMultiPayload) & 0x1B980) == 0)
  {
    sub_20C012A64(v13);
  }

  else
  {
    sub_20C012A64(v13);
    v16 = [a2 popToRootViewControllerAnimated_];
    if (v16)
    {
      v17 = v16;
      sub_20B62BB28();
      v18 = sub_20C13CC74();
    }

    else
    {
      v18 = 0;
    }

    *(swift_allocObject() + 16) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764D58);
    sub_20C137CA4();
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v19(sub_20B52E4A0, v20);

    (*(v8 + 8))(v10, v7);
  }

  sub_20BDC6590(a1, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v21 = (*(v24[0] + 80) + 16) & ~*(v24[0] + 80);
  v22 = swift_allocObject();
  sub_20B75B150(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  return sub_20C137CA4();
}

uint64_t sub_20C0128C4(uint64_t a1)
{
  v2 = type metadata accessor for NavigationRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_20BDC6590(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_20B75B150(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_20C137CA4();
}

uint64_t sub_20C012A64(uint64_t a1)
{
  v2 = type metadata accessor for NavigationResource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C012AC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20C012B8C()
{
  v1 = *(type metadata accessor for NavigationRequest() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20C0128C4(v2);
}

uint64_t sub_20C012C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_29Tm_1()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20C0134C0@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = type metadata accessor for TabletSessionViewFactory();
      v4 = &off_2822FECC0;
    }

    else
    {
      v3 = type metadata accessor for PhoneSessionViewFactory();
      v4 = &off_28229AE30;
    }

    goto LABEL_7;
  }

  if (a1 == 3)
  {
    v3 = type metadata accessor for TVSessionViewFactory();
    v4 = &off_2822CD260;
LABEL_7:
    result = swift_allocObject();
    a2[3] = v3;
    a2[4] = v4;
    *a2 = result;
    return result;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t AVMediaSelectionOption.languageCodeIdentifier.getter()
{
  v1 = v0;
  v2 = sub_20C132FB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB8);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = &v26 - v14;
  v16 = [v1 locale];
  if (v16)
  {
    v17 = v16;
    sub_20C132F84();

    v18 = sub_20C132FD4();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  }

  else
  {
    v18 = sub_20C132FD4();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  }

  sub_20BE95D00(v8, v11);
  sub_20C132FD4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    v20 = &qword_27C76FEB0;
    v21 = v11;
LABEL_8:
    sub_20B520158(v21, v20);
    return 0;
  }

  sub_20C132FC4();
  (*(v19 + 8))(v11, v18);
  sub_20C132FA4();
  (*(v3 + 8))(v5, v2);
  v22 = sub_20C132F24();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    v20 = &qword_27C76FEB8;
    v21 = v15;
    goto LABEL_8;
  }

  v25 = sub_20C132F14();
  (*(v23 + 8))(v15, v22);
  return v25;
}

uint64_t AVMediaSelectionOption.audioFocusSelection.getter()
{
  if (qword_27C7607D0 != -1)
  {
    swift_once();
  }

  if ([v0 hasMediaCharacteristic_])
  {
    return 0;
  }

  if (qword_27C7607D8 != -1)
  {
    swift_once();
  }

  if ([v0 hasMediaCharacteristic_])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_20C0139F0()
{
  if (*(v0 + 24))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v14.origin.x = v3;
    v14.origin.y = v5;
    v14.size.width = v7;
    v14.size.height = v9;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Height = CGRectGetHeight(v15);
    if (Height >= Width)
    {
      v12 = Width;
    }

    else
    {
      v12 = Height;
    }

    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    v13 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    *(v0 + 16) = (v12 - (v13 + *&qword_27C799F50)) * 0.5;
    *(v0 + 24) = 0;
  }
}