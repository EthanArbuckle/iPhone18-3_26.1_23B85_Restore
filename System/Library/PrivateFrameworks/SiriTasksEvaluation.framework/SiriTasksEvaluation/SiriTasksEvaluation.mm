uint64_t sub_269261830()
{
  v0 = sub_26926B0A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26926B0F0();
  v5 = sub_26926B060();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_26926B0F0();
  v7 = sub_26926B090();
  result = (v6)(v4, v0);
  if (v7 >= v5)
  {
    return v7 - v5 < 0xEA61;
  }

  __break(1u);
  return result;
}

uint64_t sub_269261958()
{
  v0 = sub_26926B1D0();
  v1 = *(v0 - 8);
  v153 = v0;
  v154 = v1;
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v140 = v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v137 = v130 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v130 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v152 = v130 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v147 = v130 - v13;
  MEMORY[0x28223BE20](v12);
  v136 = v130 - v14;
  v139 = sub_26926AEC0();
  v146 = *(v139 - 8);
  v15 = *(v146 + 64);
  v16 = MEMORY[0x28223BE20](v139);
  v135 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v138 = v130 - v18;
  v19 = sub_26926AEA0();
  v144 = *(v19 - 8);
  v145 = v19;
  v20 = *(v144 + 64);
  MEMORY[0x28223BE20](v19);
  v143 = v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26926B1A0();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v142 = v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v130 - v26;
  v28 = sub_26926AEF0();
  v29 = *(v28 - 8);
  v148 = v28;
  v149 = v29;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v141 = v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v150 = v130 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v130 - v36;
  MEMORY[0x28223BE20](v35);
  v151 = v130 - v38;
  v39 = sub_26926B0A0();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = v130 - v45;
  sub_26926B0F0();
  v47 = sub_26926B040();
  v48 = *(v40 + 8);
  v48(v46, v39);
  v49 = *(v47 + 16);
  if (!v49)
  {
    goto LABEL_10;
  }

  v133 = v27;
  v50 = (v47 + 16 + 16 * v49);
  v51 = *v50;
  v52 = v50[1];

  sub_26926B0F0();
  v53 = sub_26926B040();
  v48(v44, v39);
  if (!v53[2])
  {

LABEL_10:

    v72 = sub_269268EA0();
    v74 = v153;
    v73 = v154;
    (*(v154 + 16))(v9, v72, v153);
    v75 = sub_26926B1C0();
    v76 = sub_26926B370();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_26925D000, v75, v76, "One of the tasks has no requests.", v77, 2u);
      MEMORY[0x26D635690](v77, -1, -1);
    }

    (*(v73 + 8))(v9, v74);
    goto LABEL_31;
  }

  v55 = v53[4];
  v54 = v53[5];

  v132 = v51;
  v155 = v51;
  v156 = v52;

  MEMORY[0x26D634F90](12346, 0xE200000000000000);
  v57 = v155;
  v56 = v156;
  v131 = v55;
  v155 = v55;
  v156 = v54;
  v134 = v54;

  MEMORY[0x26D634F90](12346, 0xE200000000000000);
  v58 = v155;
  v59 = v156;
  type metadata accessor for FeatureStoreUtils();
  v60 = sub_26926A28C();
  v61 = static FeatureStoreUtils.retrieveFeature(streamId:interactionId:dataVersion:)(0xD000000000000014, 0x800000026926CA50, v57, v56, v60);

  if (!v61)
  {
LABEL_14:

    v78 = sub_269268EA0();
    v80 = v153;
    v79 = v154;
    v81 = v152;
    (*(v154 + 16))(v152, v78, v153);

    v82 = sub_26926B1C0();
    v83 = sub_26926B370();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v155 = v85;
      *v84 = 136315138;
      v86 = sub_269263040(v132, v52, &v155);

      *(v84 + 4) = v86;
      _os_log_impl(&dword_26925D000, v82, v83, "Could not get NLU stream for previous request %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x26D635690](v85, -1, -1);
      MEMORY[0x26D635690](v84, -1, -1);
    }

    else
    {
    }

    (*(v79 + 8))(v81, v80);
    goto LABEL_31;
  }

  v62 = [v61 json];
  if (!v62)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v152 = v61;
  v63 = v62;
  sub_26926B230();

  v64 = sub_26926A28C();
  v65 = static FeatureStoreUtils.retrieveFeature(streamId:interactionId:dataVersion:)(0xD000000000000014, 0x800000026926CA50, v58, v59, v64);

  if (!v65)
  {
LABEL_19:

    v87 = sub_269268EA0();
    v89 = v153;
    v88 = v154;
    v90 = v147;
    (*(v154 + 16))(v147, v87, v153);
    v91 = v134;

    v92 = sub_26926B1C0();
    v93 = sub_26926B370();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v155 = v95;
      *v94 = 136315138;
      v96 = sub_269263040(v131, v91, &v155);

      *(v94 + 4) = v96;
      _os_log_impl(&dword_26925D000, v92, v93, "Could not get NLU stream for current request %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x26D635690](v95, -1, -1);
      MEMORY[0x26D635690](v94, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v88 + 8))(v90, v89);
LABEL_31:
    v118 = 0;
    return v118 & 1;
  }

  v66 = [v65 json];
  if (!v66)
  {
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v147 = v65;
  v67 = v66;
  sub_26926B230();
  v130[1] = v68;

  v69 = v151;
  sub_26926AEE0();
  sub_26926B190();
  v70 = sub_269263158();
  v71 = v148;
  v133 = v70;
  sub_26926B1B0();
  v97 = v149;
  (*(v149 + 8))(v69, v71);

  (*(v97 + 32))(v69, v37, v71);
  v98 = v150;
  v99 = v141;
  sub_26926AEE0();
  sub_26926B190();
  sub_26926B1B0();
  v100 = v149;
  (*(v149 + 8))(v98, v71);

  (*(v100 + 32))(v98, v99, v71);
  v101 = v146;
  v102 = v143;
  sub_26926AED0();
  v103 = sub_26926AE90();
  v104 = v145;
  v105 = *(v144 + 8);
  v105(v102, v145);
  sub_26926AED0();
  v106 = sub_26926AE90();
  v105(v102, v104);
  if (!*(v103 + 16))
  {

LABEL_28:
    v121 = sub_269268EA0();
    v123 = v153;
    v122 = v154;
    v124 = v136;
    (*(v154 + 16))(v136, v121, v153);
    v125 = sub_26926B1C0();
    v126 = sub_26926B370();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_26925D000, v125, v126, "At least one requests generated no ASR outputs.", v127, 2u);
      MEMORY[0x26D635690](v127, -1, -1);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v122 + 8))(v124, v123);
    v128 = *(v149 + 8);
    v128(v98, v71);
    v128(v151, v71);
    goto LABEL_31;
  }

  v107 = *(v101 + 16);
  v108 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v109 = v138;
  v110 = v139;
  v107(v138, v103 + v108, v139);

  if (!*(v106 + 16))
  {
    (*(v101 + 8))(v109, v110);

    v98 = v150;
    goto LABEL_28;
  }

  v111 = v106 + v108;
  v112 = v135;
  v107(v135, v111, v110);

  v113 = sub_26926AEB0();
  v115 = v114;
  v116 = sub_26926AEB0();
  v118 = sub_26926456C(v116, v117, v113, v115);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v119 = *(v101 + 8);
  v119(v112, v110);
  v119(v109, v110);
  v120 = *(v149 + 8);
  v120(v150, v71);
  v120(v151, v71);
  return v118 & 1;
}

uint64_t sub_2692629C4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_26926B3A0();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_269264340(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_269262A40@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  sub_269264BC4();
  result = sub_26926B390();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_269262A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_2692629C4(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v7[2] = v8;
      v3 = sub_26926395C(sub_269264C18, v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_2692637DC(a1, a2);
  }

  return result;
}

unint64_t sub_269262B74@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26926B2C0();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_269262F34(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_269262F34((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_26926B2B0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_26926B280();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_26926B280();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26926B2C0();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_269262F34(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26926B2C0();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_269262F34(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_269262F34((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26926B280();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_269262F34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302770, &unk_26926BEC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_269263040(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2692631B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_269264D10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_269263158()
{
  result = qword_280302750;
  if (!qword_280302750)
  {
    sub_26926AEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302750);
  }

  return result;
}

unint64_t sub_2692631B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2692632BC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26926B430();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2692632BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_269263308(a1, a2);
  sub_269263438(&unk_2879E06B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_269263308(uint64_t a1, unint64_t a2)
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

  v6 = sub_269263524(v5, 0);
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

  result = sub_26926B430();
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
        v10 = sub_26926B2A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269263524(v10, 0);
        result = sub_26926B410();
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

uint64_t sub_269263438(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_269263598(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_269263524(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302778, &unk_26926C040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_269263598(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302778, &unk_26926C040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26926368C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26926B4C0();
  sub_26926B270();
  v9 = sub_26926B4E0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26926B480() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_269263C68(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2692637DC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_269264394(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_269264C8C(v13, &v17);
    v14 = v17;
    MEMORY[0x26D635690](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t sub_26926395C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_269263A08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302760, &qword_26926BEB0);
  result = sub_26926B3F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_26926B4C0();
      sub_26926B270();
      result = sub_26926B4E0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_269263C68(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_269263A08(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_269263DE8();
      goto LABEL_16;
    }

    sub_269263F44(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26926B4C0();
  sub_26926B270();
  result = sub_26926B4E0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26926B480();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26926B4A0();
  __break(1u);
  return result;
}

void *sub_269263DE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302760, &qword_26926BEB0);
  v2 = *v0;
  v3 = sub_26926B3E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_269263F44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302760, &qword_26926BEB0);
  result = sub_26926B3F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26926B4C0();

      sub_26926B270();
      result = sub_26926B4E0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_26926417C(char *a1, int64_t a2, char a3)
{
  result = sub_26926419C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26926419C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302768, &qword_26926BEB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2692642A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D635040](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26926368C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_269264340(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_269264394(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  v23 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v25 = v5;
  v26 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v26 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a3 + 40);
      sub_26926B4C0();

      sub_26926B270();
      v12 = sub_26926B4E0();
      v13 = -1 << *(a3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v6 + 8 * (v14 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v17 = (*(a3 + 48) + 16 * v14);
    v18 = *v17 == v10 && v17[1] == v9;
    if (!v18)
    {
      v19 = ~v13;
      while ((sub_26926B480() & 1) == 0)
      {
        v14 = (v14 + 1) & v19;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if (((1 << v14) & *(v6 + 8 * (v14 >> 6))) == 0)
        {
          v5 = v25;
          goto LABEL_5;
        }

        v20 = (*(a3 + 48) + 16 * v14);
        if (*v20 == v10 && v20[1] == v9)
        {
          break;
        }
      }
    }

    v21 = *(v24 + 8 * v15);
    *(v24 + 8 * v15) = v21 | v16;
    if ((v21 & v16) != 0)
    {
      v5 = v25;
      goto LABEL_6;
    }

    v22 = v23 + 1;
    v5 = v25;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_28;
    }

    ++v23;
    v18 = v22 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v18)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_26926456C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_26926B1D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v72 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  *&v80 = 32;
  *(&v80 + 1) = 0xE100000000000000;
  v79 = &v80;

  v16 = sub_269262B74(0x7FFFFFFFFFFFFFFFLL, 1, sub_269264D6C, v78, a3, a4, v15);
  *&v80 = 32;
  *(&v80 + 1) = 0xE100000000000000;
  v17 = v9;
  v77 = &v80;

  v75 = sub_269262B74(0x7FFFFFFFFFFFFFFFLL, 1, sub_269264D6C, v76, a1, a2, v18);
  v19 = sub_269268EA0();
  v20 = *(v9 + 16);
  v73 = v8;
  v20(v14, v19, v8);

  v21 = sub_26926B1C0();
  v22 = sub_26926B360();
  v23 = os_log_type_enabled(v21, v22);
  v74 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v71 = v17;
    v26 = v25;
    *&v80 = v25;
    *v24 = 134218242;
    *(v24 + 4) = *(v16 + 16);

    *(v24 + 12) = 2080;
    v27 = MEMORY[0x26D635020](v16, MEMORY[0x277D83E40]);
    v29 = sub_269263040(v27, v28, &v80);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_26925D000, v21, v22, "\n--- FIRST TOKENS (%ld):\n%s\n\n", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v30 = v26;
    v17 = v71;
    MEMORY[0x26D635690](v30, -1, -1);
    MEMORY[0x26D635690](v24, -1, -1);
  }

  else
  {
  }

  v31 = *(v17 + 8);
  v32 = v73;
  v31(v14, v73);
  v33 = v72;
  v20(v72, v19, v32);
  v34 = v75;

  v35 = sub_26926B1C0();
  v36 = sub_26926B360();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v80 = v38;
    *v37 = 134218242;
    *(v37 + 4) = *(v34 + 16);

    *(v37 + 12) = 2080;
    v39 = MEMORY[0x26D635020](v34, MEMORY[0x277D83E40]);
    v41 = v33;
    v42 = sub_269263040(v39, v40, &v80);

    *(v37 + 14) = v42;
    _os_log_impl(&dword_26925D000, v35, v36, "\n--- SECOND TOKENS (%ld):\n%s\n\n", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x26D635690](v38, -1, -1);
    MEMORY[0x26D635690](v37, -1, -1);

    v43 = v41;
    v44 = v73;
  }

  else
  {

    v43 = v33;
    v44 = v32;
  }

  v31(v43, v44);
  v45 = v74;
  swift_getKeyPath();
  v46 = *(v45 + 16);
  v47 = MEMORY[0x277D84F90];
  if (v46)
  {
    v85 = MEMORY[0x277D84F90];
    sub_26926417C(0, v46, 0);
    v48 = v85;
    v49 = (v45 + 56);
    do
    {
      v50 = *(v49 - 1);
      v51 = *v49;
      v80 = *(v49 - 3);
      v81 = v50;
      v82 = v51;

      swift_getAtKeyPath();

      v52 = v83;
      v53 = v84;
      v85 = v48;
      v55 = *(v48 + 16);
      v54 = *(v48 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_26926417C((v54 > 1), v55 + 1, 1);
        v48 = v85;
      }

      *(v48 + 16) = v55 + 1;
      v56 = v48 + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v53;
      v49 += 4;
      --v46;
    }

    while (v46);

    v34 = v75;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  v57 = *(v34 + 16);
  if (v57)
  {
    v85 = v47;
    sub_26926417C(0, v57, 0);
    v58 = v85;
    v59 = (v34 + 56);
    do
    {
      v60 = *(v59 - 1);
      v61 = *v59;
      v80 = *(v59 - 3);
      v81 = v60;
      v82 = v61;

      swift_getAtKeyPath();

      v62 = v83;
      v63 = v84;
      v85 = v58;
      v65 = *(v58 + 16);
      v64 = *(v58 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_26926417C((v64 > 1), v65 + 1, 1);
        v58 = v85;
      }

      *(v58 + 16) = v65 + 1;
      v66 = v58 + 16 * v65;
      *(v66 + 32) = v62;
      *(v66 + 40) = v63;
      v59 += 4;
      --v57;
    }

    while (v57);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v67 = sub_2692642A8(v48);

  v68 = sub_269262A94(v58, v67);

  return v68 & 1;
}

unint64_t sub_269264BC4()
{
  result = qword_280302758;
  if (!qword_280302758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302758);
  }

  return result;
}

uint64_t sub_269264C34(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26926B480() & 1;
  }
}

uint64_t sub_269264C8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269264394(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_269264D10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269264D9C()
{
  v1 = *v0;
  sub_26926B4C0();
  MEMORY[0x26D6351D0](v1);
  return sub_26926B4E0();
}

uint64_t sub_269264E10()
{
  v1 = *v0;
  sub_26926B4C0();
  MEMORY[0x26D6351D0](v1);
  return sub_26926B4E0();
}

unint64_t sub_269264E54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269267DF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_269264F3C(uint64_t a1)
{
  v2 = sub_26926B1D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v9 = sub_26926B170();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = *(v10 + 16);
  v19(&v45 - v17, a1, v9);
  v20 = (*(v10 + 88))(v18, v9);
  if (v20 == *MEMORY[0x277D61528] || v20 == *MEMORY[0x277D614F8])
  {
    v22 = sub_269268EA0();
    (*(v3 + 16))(v8, v22, v2);
    v19(v16, a1, v9);
    v23 = sub_26926B1C0();
    v24 = sub_26926B370();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v3;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = sub_26926B160();
      (*(v10 + 8))(v16, v9);
      *(v26 + 4) = v27;
      _os_log_impl(&dword_26925D000, v23, v24, "Unsupported taskEngagementType: %ld", v26, 0xCu);
      v28 = v26;
      v3 = v25;
      MEMORY[0x26D635690](v28, -1, -1);
    }

    else
    {
      (*(v10 + 8))(v16, v9);
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    if (v20 == *MEMORY[0x277D61518])
    {
      return 2;
    }

    if (v20 == *MEMORY[0x277D614E8])
    {
      return 4;
    }

    if (v20 == *MEMORY[0x277D614D8] || v20 == *MEMORY[0x277D61500] || v20 == *MEMORY[0x277D614E0] || v20 == *MEMORY[0x277D614F0] || v20 == *MEMORY[0x277D61508] || v20 == *MEMORY[0x277D61520])
    {
      return 3;
    }

    v35 = v2;
    v36 = sub_269268EA0();
    (*(v3 + 16))(v48, v36, v2);
    v37 = v47;
    v19(v47, a1, v9);
    v38 = sub_26926B1C0();
    v39 = sub_26926B370();
    if (os_log_type_enabled(v38, v39))
    {
      v41 = swift_slowAlloc();
      v46 = v38;
      v42 = v41;
      *v41 = 134217984;
      v45 = sub_26926B160();
      v43 = *(v10 + 8);
      v43(v37, v9);
      v44 = v46;
      *(v42 + 1) = v45;
      _os_log_impl(&dword_26925D000, v44, v39, "Unknown taskEngagementType: %ld", v42, 0xCu);
      MEMORY[0x26D635690](v42, -1, -1);
    }

    else
    {
      v43 = *(v10 + 8);
      v43(v37, v9);
      v44 = v38;
    }

    (*(v3 + 8))(v48, v35);
    v43(v18, v9);
  }

  return 0;
}

id sub_269265444(uint64_t a1)
{
  v72 = a1;
  v1 = sub_26926B1D0();
  v63 = *(v1 - 8);
  v2 = *(v63 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26926AFF0();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v69 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v59 - v9;
  v10 = sub_26926AFE0();
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v59 - v14;
  v15 = sub_26926B030();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v62 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  v22 = sub_26926B0A0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v59 - v28;
  v64 = [objc_allocWithZone(MEMORY[0x277D58378]) init];
  if (v64)
  {
    sub_26926B0F0();
    sub_26926B080();
    v30 = *(v23 + 8);
    v30(v29, v22);
    v31 = sub_26926B000();
    v34 = *(v16 + 8);
    v32 = v16 + 8;
    v33 = v34;
    v34(v21, v15);
    if (v31)
    {
      v35 = v30;
      v36 = v22;
      LODWORD(v63) = 1;
    }

    else
    {
      v60 = v10;
      sub_26926B0F0();
      v43 = v62;
      sub_26926B080();
      v30(v27, v22);
      v44 = sub_26926B010();
      v59 = v32;
      v33(v43, v15);
      v45 = v30;
      if (v44)
      {
        v35 = v30;
        v36 = v22;
        LODWORD(v63) = 1;
      }

      else
      {
        sub_26926B0F0();
        sub_26926B080();
        v36 = v22;
        v46 = v22;
        v47 = v15;
        v35 = v45;
        v45(v27, v46);
        LODWORD(v63) = sub_26926B020();
        v33(v43, v47);
      }

      v10 = v60;
    }

    sub_26926B0F0();
    v48 = v65;
    sub_26926B050();
    v61 = v36;
    v35(v27, v36);
    v50 = v66;
    v49 = v67;
    (*(v67 + 104))(v66, *MEMORY[0x277D61498], v10);
    sub_269267E08(&qword_280302780, MEMORY[0x277D614A0]);
    sub_26926B2D0();
    sub_26926B2D0();
    v51 = *(v49 + 8);
    v51(v50, v10);
    v51(v48, v10);
    v42 = v64;
    [v64 setIsSuccess_];
    sub_26926B0F0();
    v52 = v68;
    sub_26926B070();
    v35(v27, v61);
    v54 = v69;
    v53 = v70;
    v55 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277D614B0], v71);
    sub_269267E08(&qword_280302788, MEMORY[0x277D614B8]);
    sub_26926B2D0();
    sub_26926B2D0();
    v56 = *(v53 + 8);
    v56(v54, v55);
    v56(v52, v55);
    [v42 setIsExecuted_];
    if (v63)
    {
      v57 = 0;
    }

    else
    {
      v57 = [v42 isSuccess];
    }

    [v42 setIsSuccessfulDirectExecution_];
  }

  else
  {
    v37 = sub_269268EA0();
    v38 = v63;
    (*(v63 + 16))(v4, v37, v1);
    v39 = sub_26926B1C0();
    v40 = sub_26926B370();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26925D000, v39, v40, "Failed to create SELF simpleTaskInfo", v41, 2u);
      MEMORY[0x26D635690](v41, -1, -1);
    }

    (*(v38 + 8))(v4, v1);
    return 0;
  }

  return v42;
}

void *sub_269265BFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_26926B1D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))(a3);
  v13 = v12;
  if (v12)
  {
    [v12 setTaskSuccessType_];
    type metadata accessor for EditableTaskEvaluator();
    if (sub_2692692C4())
    {
      [v13 setIsSuccess_];
      [v13 setIsSuccessfulDirectExecution_];
    }
  }

  else
  {
    v14 = sub_269268EA0();
    (*(v8 + 16))(v11, v14, v7);

    v15 = sub_26926B1C0();
    v16 = sub_26926B370();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_269263040(a1, a2, &v21);
      _os_log_impl(&dword_26925D000, v15, v16, "Failed to create simpleTaskInfo for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26D635690](v18, -1, -1);
      MEMORY[0x26D635690](v17, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  return v13;
}

uint64_t sub_269265E64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v50 = a1;
  v51 = a2;
  v5 = sub_26926B1D0();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26926AF90();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26926AFD0();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26926B170();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  v24 = a3;
  v25 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))(a3);
  v26 = v25;
  if (!v25)
  {
    v37 = v50;
    v38 = sub_269268EA0();
    v39 = v52;
    (*(v52 + 16))(v8, v38, v5);
    v40 = v51;

    v41 = sub_26926B1C0();
    v42 = sub_26926B370();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_269263040(v37, v40, &v54);
      _os_log_impl(&dword_26925D000, v41, v42, "Failed to create simpleTaskInfo for %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x26D635690](v44, -1, -1);
      MEMORY[0x26D635690](v43, -1, -1);
    }

    (*(v39 + 8))(v8, v5);
    return v26;
  }

  [v25 setTaskSuccessType_];
  v27 = [objc_allocWithZone(MEMORY[0x277D58390]) init];
  if (!v27)
  {
    return v26;
  }

  v28 = v27;
  v29 = [objc_allocWithZone(MEMORY[0x277D582D0]) init];
  if (!v29)
  {

    return v26;
  }

  v30 = v29;
  v52 = v24;
  sub_26926B0E0();
  (*(v17 + 104))(v21, *MEMORY[0x277D61518], v16);
  sub_269267E08(&qword_280302790, MEMORY[0x277D61538]);
  sub_26926B2D0();
  sub_26926B2D0();
  v31 = *(v17 + 8);
  v31(v21, v16);
  v31(v23, v16);
  if (v54 != v53)
  {
LABEL_10:
    [v28 setLongRunningTaskInfo_];
    [v26 setTaskSpecificInfo_];

    return v26;
  }

  sub_26926B0C0();
  v32 = v47;
  sub_26926AFC0();
  (*(v45 + 8))(v15, v46);
  sub_26926AF80();
  v34 = v33;
  result = (*(v48 + 8))(v32, v49);
  v36 = v34 * 1000.0;
  if (COERCE__INT64(fabs(v34 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v36 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v36 < 1.84467441e19)
  {
    [v30 setDurationInMs_];
    if ([v30 durationInMs] >> 3 <= 0x270)
    {
      [v26 setIsSuccess_];
      [v26 setIsSuccessfulDirectExecution_];
    }

    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_269266474(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_26926B1D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((*MEMORY[0x277D85000] & *v4) + 0x60))(a3);
  v15 = v14;
  if (v14)
  {
    [v14 setTaskSuccessType_];
  }

  else
  {
    v16 = sub_269268EA0();
    (*(v10 + 16))(v13, v16, v9);

    v17 = sub_26926B1C0();
    v18 = sub_26926B370();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_269263040(a1, a2, &v23);
      _os_log_impl(&dword_26925D000, v17, v18, "Failed to create simpleTaskInfo for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26D635690](v20, -1, -1);
      MEMORY[0x26D635690](v19, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }

  return v15;
}

void sub_2692666A0(unint64_t a1)
{
  v2 = sub_26926B260();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v86 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26926B1D0();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v79 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302798, &qword_26926BEF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v93 = &v79 - v18;
  v95 = sub_26926B130();
  v19 = *(v95 - 8);
  v20 = v19[8].isa;
  MEMORY[0x28223BE20](v95);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_269267E50(MEMORY[0x277D84F90]);
  v100 = v94;
  v98 = a1;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26926B440())
  {
    v88 = v22;
    v80 = v15;
    v22 = 0;
    v25 = v98 & 0xC000000000000001;
    v90 = v98 & 0xFFFFFFFFFFFFFF8;
    v91 = &v19[6];
    v82 = v19 + 4;
    v83 = v13;
    v81 = &v19[1];
    v96 = &v6[1];
    v97 = v6 + 2;
    *&v23 = 136315138;
    v79 = v23;
    v15 = v95;
    v89 = i;
    v84 = v10;
    v92 = v98 & 0xC000000000000001;
    v87 = v5;
    while (1)
    {
      if (v25)
      {
        v26 = MEMORY[0x26D635120](v22, v98);
      }

      else
      {
        if (v22 >= *(v90 + 16))
        {
          goto LABEL_28;
        }

        v26 = *(v98 + 8 * v22 + 32);
      }

      v13 = v26;
      v27 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v28 = [v26 eventBody];
      if (v28 && (v29 = v28, v30 = [v28 taskID], v29, v30))
      {
        v31 = sub_26926B230();
        v6 = v32;

        v33 = v93;
        sub_26926B180();
        if ((*v91)(v33, 1, v15) == 1)
        {
          sub_269267FA8(v33);
          v34 = sub_269268EA0();
          v35 = v83;
          (v97->isa)(v83, v34, v5);

          v19 = sub_26926B1C0();
          v36 = sub_26926B370();

          if (os_log_type_enabled(v19, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v99[0] = v38;
            *v37 = v79;
            v39 = sub_269263040(v31, v6, v99);

            *(v37 + 4) = v39;
            _os_log_impl(&dword_26925D000, v19, v36, "Could not get engagement for taskId %s.", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            v40 = v38;
            i = v89;
            MEMORY[0x26D635690](v40, -1, -1);
            v41 = v37;
            v15 = v95;
            MEMORY[0x26D635690](v41, -1, -1);
          }

          else
          {
          }

          v5 = v87;
          (*v96)(v35, v87);
          v10 = v84;
        }

        else
        {
          v45 = v88;
          (v82->isa)(v88, v33, v15);
          v46 = (*((*MEMORY[0x277D85000] & *v85) + 0x90))(v45);
          if (v46)
          {
            v47 = v5;
            v48 = v46;
            v49 = v100;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v99[0] = v49;
            v19 = v99;
            sub_269267A5C(v48, v31, v6, isUniquelyReferenced_nonNull_native);

            v94 = v99[0];
            v100 = v99[0];
            sub_269268010(v45, &v100);

            v5 = v47;
            v15 = v95;

            (*v81)(v45, v15);
          }

          else
          {
            v51 = sub_269268EA0();
            (v97->isa)(v80, v51, v5);

            v19 = sub_26926B1C0();
            v52 = v5;
            v53 = sub_26926B370();

            if (os_log_type_enabled(v19, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v99[0] = v55;
              *v54 = v79;
              v56 = sub_269263040(v31, v6, v99);

              *(v54 + 4) = v56;
              _os_log_impl(&dword_26925D000, v19, v53, "Could not evaluate %s.", v54, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v55);
              MEMORY[0x26D635690](v55, -1, -1);
              v57 = v54;
              v15 = v95;
              MEMORY[0x26D635690](v57, -1, -1);

              v5 = v87;
              (*v96)(v80, v87);
              (*v81)(v88, v15);
            }

            else
            {

              (*v96)(v80, v52);
              (*v81)(v88, v15);
              v5 = v52;
            }
          }

          i = v89;
        }

        v25 = v92;
      }

      else
      {
        v42 = sub_269268EA0();
        (v97->isa)(v10, v42, v5);
        v6 = sub_26926B1C0();
        v19 = sub_26926B370();
        if (os_log_type_enabled(v6, v19))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_26925D000, v6, v19, "Could not get taskId from event.", v43, 2u);
          v44 = v43;
          v15 = v95;
          MEMORY[0x26D635690](v44, -1, -1);
        }

        (*v96)(v10, v5);
      }

      ++v22;
      if (v27 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
  v97 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v58 = v94 + 64;
  v59 = 1 << *(v94 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v94 + 64);
  v62 = (v59 + 63) >> 6;

  v63 = 0;
  while (v61)
  {
LABEL_40:
    v65 = __clz(__rbit64(v61)) | (v63 << 6);
    v66 = *(v94 + 56);
    v67 = (*(v94 + 48) + 16 * v65);
    v68 = v67[1];
    v98 = *v67;
    v69 = *(v66 + 8 * v65);

    v70 = v69;
    v71 = [v70 jsonData];
    if (!v71)
    {
      goto LABEL_45;
    }

    v72 = v71;
    v73 = sub_26926AE80();
    v75 = v74;

    sub_26926B250();
    sub_26926B240();
    v77 = v76;
    sub_269267F54(v73, v75);
    if (v77)
    {
      v78 = sub_26926B220();

      v99[0] = v98;
      v99[1] = v68;
      [v97 __swift_setObject:v78 forKeyedSubscript:sub_26926B490()];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v61 &= v61 - 1;
  }

  while (1)
  {
    v64 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v64 >= v62)
    {

      return;
    }

    v61 = *(v58 + 8 * v64);
    ++v63;
    if (v61)
    {
      v63 = v64;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_2692670F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26926B130();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26926B1D0();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26926B170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_26926B110();
  v54 = v17;
  sub_26926B0E0();
  v18 = MEMORY[0x277D85000];
  v19 = (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v16);
  (*(v13 + 8))(v16, v12);
  v20 = v19;
  if (v19 > 1u)
  {
    if (v19 == 2)
    {
      v21 = (*((*v18 & *v2) + 0x78))(v53, v54, a1);
    }

    else if (v19 == 3)
    {
      v21 = (*((*v18 & *v2) + 0x70))(v53, v54, a1);
    }

    else
    {
      v21 = (*((*v18 & *v2) + 0x68))(v53, v54, a1);
    }

    goto LABEL_11;
  }

  v22 = v7;
  v24 = v51;
  v23 = v52;
  v25 = v50;
  if (v20)
  {
    v21 = (*((*v18 & *v2) + 0x80))(v53, v54, a1);
LABEL_11:
    v46 = v21;

    return v46;
  }

  v26 = sub_269268EA0();
  v27 = v25;
  v28 = *(v25 + 16);
  v29 = v11;
  v30 = v8;
  v28(v11, v26, v8);
  v31 = v24;
  v32 = v22;
  v33 = v23;
  (*(v24 + 16))(v22, a1, v23);
  v34 = v54;

  v35 = sub_26926B1C0();
  v36 = sub_26926B370();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v49 = v30;
    v38 = v32;
    v39 = v37;
    v48 = swift_slowAlloc();
    v55 = v48;
    *v39 = 136315394;
    v40 = sub_269263040(v53, v34, &v55);

    *(v39 + 4) = v40;
    *(v39 + 12) = 2080;
    v41 = sub_26926B120();
    v43 = v42;
    (*(v31 + 8))(v38, v33);
    v44 = sub_269263040(v41, v43, &v55);

    *(v39 + 14) = v44;
    _os_log_impl(&dword_26925D000, v35, v36, "Task %s has unsupported taskType with taskName: %s", v39, 0x16u);
    v45 = v48;
    swift_arrayDestroy();
    MEMORY[0x26D635690](v45, -1, -1);
    MEMORY[0x26D635690](v39, -1, -1);

    (*(v27 + 8))(v29, v49);
  }

  else
  {

    (*(v24 + 8))(v32, v33);
    (*(v27 + 8))(v29, v30);
  }

  return 0;
}

id SimpleTaskSuccessEvaluator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SimpleTaskSuccessEvaluator.init()()
{
  *&v0[OBJC_IVAR____TtC19SiriTasksEvaluation26SimpleTaskSuccessEvaluator_minStartCallDurationInMs] = 5000;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimpleTaskSuccessEvaluator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SimpleTaskSuccessEvaluator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimpleTaskSuccessEvaluator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_269267740(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26926B4C0();
  sub_26926B270();
  v6 = sub_26926B4E0();

  return sub_269267BD4(a1, a2, v6);
}

uint64_t sub_2692677B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027C0, &qword_26926C038);
  v39 = a2;
  result = sub_26926B460();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_26926B4C0();
      sub_26926B270();
      result = sub_26926B4E0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_269267A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_269267740(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2692677B8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_269267740(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_26926B4B0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_269267C8C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_269267BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26926B480())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_269267C8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027C0, &qword_26926C038);
  v2 = *v0;
  v3 = sub_26926B450();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_269267DF8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_269267E08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269267E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027C0, &qword_26926C038);
    v3 = sub_26926B470();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_269267740(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_269267F54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_269267FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302798, &qword_26926BEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269268010(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  v3 = sub_26926B1D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v114 = &v104[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v104[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v112 = &v104[-v12];
  MEMORY[0x28223BE20](v11);
  v111 = &v104[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302798, &qword_26926BEF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v104[-v16];
  v18 = sub_26926B130();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v104[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v104[-v25];
  v27 = MEMORY[0x28223BE20](v24);
  v109 = &v104[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v104[-v30];
  MEMORY[0x28223BE20](v29);
  v113 = &v104[-v32];
  if (sub_26926B0B0())
  {
    v33 = sub_26926B0D0();
    v35 = v34;
    v114 = v33;
    sub_26926B180();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_269267FA8(v17);
      v36 = sub_269268EA0();
      v37 = v4;
      v38 = v3;
      (*(v4 + 16))(v10, v36, v3);

      v39 = sub_26926B1C0();
      v40 = sub_26926B370();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = v35;
        v43 = swift_slowAlloc();
        v115 = v43;
        *v41 = 136315138;
        v44 = sub_269263040(v114, v42, &v115);

        *(v41 + 4) = v44;
        _os_log_impl(&dword_26925D000, v39, v40, "Could not get previousTaskEngagement with taskId %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x26D635690](v43, -1, -1);
        MEMORY[0x26D635690](v41, -1, -1);
      }

      else
      {
      }

      return (*(v37 + 8))(v10, v38);
    }

    else
    {
      v107 = v35;
      v55 = v113;
      (*(v19 + 32))(v113, v17, v18);
      if (sub_269261830())
      {
        if (sub_269261958())
        {
          v56 = v3;
          v57 = sub_269268EA0();
          v58 = *(v4 + 16);
          v59 = v111;
          v108 = v56;
          v58(v111, v57, v56);
          v60 = v18;
          v61 = *(v19 + 16);
          v61(v31, a1, v18);
          v62 = v109;
          v61(v109, v55, v60);
          v63 = sub_26926B1C0();
          v64 = sub_26926B350();
          v65 = os_log_type_enabled(v63, v64);
          v106 = v19;
          if (v65)
          {
            v66 = swift_slowAlloc();
            v105 = v64;
            v67 = v66;
            v112 = swift_slowAlloc();
            v115 = v112;
            *v67 = 136315394;
            v68 = sub_26926B110();
            v69 = v62;
            v71 = v70;
            v72 = *(v19 + 8);
            v72(v31, v60);
            v73 = sub_269263040(v68, v71, &v115);

            *(v67 + 4) = v73;
            *(v67 + 12) = 2080;
            v74 = sub_26926B110();
            v76 = v75;
            v77 = v60;
            v72(v69, v60);
            v78 = sub_269263040(v74, v76, &v115);

            *(v67 + 14) = v78;
            _os_log_impl(&dword_26925D000, v63, v105, "Task %s is a restatement of %s", v67, 0x16u);
            v79 = v112;
            swift_arrayDestroy();
            MEMORY[0x26D635690](v79, -1, -1);
            MEMORY[0x26D635690](v67, -1, -1);

            (*(v4 + 8))(v111, v108);
          }

          else
          {

            v72 = *(v19 + 8);
            v72(v62, v60);
            v77 = v60;
            v72(v31, v60);
            (*(v4 + 8))(v59, v108);
          }

          v96 = v107;
          v97 = *v110;
          v98 = v114;
          if (!*(*v110 + 16))
          {
            goto LABEL_27;
          }

          v99 = sub_269267740(v114, v107);
          if (v100)
          {
            [*(*(v97 + 56) + 8 * v99) setIsSuccess_];
          }

          if (*(v97 + 16))
          {
            v101 = sub_269267740(v98, v96);
            v103 = v102;

            if (v103)
            {
              [*(*(v97 + 56) + 8 * v101) setIsSuccessfulDirectExecution_];
            }
          }

          else
          {
LABEL_27:
          }

          return (v72)(v113, v77);
        }

        else
        {
          (*(v19 + 8))(v55, v18);
        }
      }

      else
      {
        v80 = sub_269268EA0();
        (*(v4 + 16))(v112, v80, v3);
        (*(v19 + 16))(v26, a1, v18);
        v81 = v107;

        v82 = sub_26926B1C0();
        v83 = sub_26926B350();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v110 = v18;
          v85 = v84;
          v111 = swift_slowAlloc();
          v115 = v111;
          *v85 = 136315394;
          v86 = sub_26926B110();
          v108 = v3;
          v88 = v87;
          v89 = *(v19 + 8);
          v90 = v26;
          v91 = v110;
          v89(v90, v110);
          v92 = sub_269263040(v86, v88, &v115);

          *(v85 + 4) = v92;
          *(v85 + 12) = 2080;
          v93 = sub_269263040(v114, v81, &v115);

          *(v85 + 14) = v93;
          _os_log_impl(&dword_26925D000, v82, v83, "Tasks %s and %s are ineligible for restatement correction.", v85, 0x16u);
          v94 = v111;
          swift_arrayDestroy();
          MEMORY[0x26D635690](v94, -1, -1);
          MEMORY[0x26D635690](v85, -1, -1);

          (*(v4 + 8))(v112, v108);
          return (v89)(v113, v91);
        }

        else
        {

          v95 = *(v19 + 8);
          v95(v26, v18);
          (*(v4 + 8))(v112, v3);
          return (v95)(v55, v18);
        }
      }
    }
  }

  else
  {
    v45 = sub_269268EA0();
    (*(v4 + 16))(v114, v45, v3);
    (*(v19 + 16))(v23, a1, v18);
    v46 = sub_26926B1C0();
    v47 = sub_26926B350();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v115 = v49;
      *v48 = 136315138;
      v50 = sub_26926B110();
      v108 = v3;
      v52 = v51;
      (*(v19 + 8))(v23, v18);
      v53 = sub_269263040(v50, v52, &v115);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_26925D000, v46, v47, "Task %s has no previousTaskId set.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x26D635690](v49, -1, -1);
      MEMORY[0x26D635690](v48, -1, -1);

      return (*(v4 + 8))(v114, v108);
    }

    else
    {

      (*(v19 + 8))(v23, v18);
      return (*(v4 + 8))(v114, v3);
    }
  }
}

unint64_t sub_269268B0C()
{
  result = qword_2803027A8;
  if (!qword_2803027A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803027A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SimpleTaskSuccessEvaluator.TaskSuccessType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SimpleTaskSuccessEvaluator.TaskSuccessType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_269268D54()
{
  result = qword_2803027B8;
  if (!qword_2803027B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803027B8);
  }

  return result;
}

uint64_t sub_269268DA8()
{
  sub_269268FA0();
  result = sub_26926B380();
  qword_281571888 = result;
  return result;
}

uint64_t sub_269268E14()
{
  v0 = sub_26926B1D0();
  __swift_allocate_value_buffer(v0, qword_281571890);
  __swift_project_value_buffer(v0, qword_281571890);
  if (qword_281571878 != -1)
  {
    swift_once();
  }

  v1 = qword_281571888;
  return sub_26926B1E0();
}

uint64_t sub_269268EA0()
{
  if (qword_281571880 != -1)
  {
    swift_once();
  }

  v0 = sub_26926B1D0();

  return __swift_project_value_buffer(v0, qword_281571890);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_269268FA0()
{
  result = qword_281571870;
  if (!qword_281571870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281571870);
  }

  return result;
}

uint64_t sub_269268FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027D8, &qword_26926C088);
  v0 = sub_26926B170();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26926C050;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D61500], v0);
  v6(v5 + v2, *MEMORY[0x277D614D8], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D614F0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D614E0], v0);
  v7 = sub_269269758(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_280302A90 = v7;
  return result;
}

uint64_t sub_269269180()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027D8, &qword_26926C088);
  v0 = sub_26926B170();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26926C060;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D61508], v0);
  v6(v5 + v2, *MEMORY[0x277D61520], v0);
  v7 = sub_269269758(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_280302A98 = v7;
  return result;
}

uint64_t sub_2692692C4()
{
  v0 = sub_26926B170();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26926AFD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26926B0C0();
  v10 = sub_26926B100();
  if (qword_280302A80 != -1)
  {
    swift_once();
  }

  v11 = qword_280302A90;
  sub_26926B0E0();
  LOBYTE(v11) = sub_269269548(v4, v11);
  v12 = *(v1 + 8);
  v12(v4, v0);
  if (v11)
  {
    v13 = sub_269269A50(v9, v10);
  }

  else
  {
    if (qword_280302A88 != -1)
    {
      swift_once();
    }

    v14 = qword_280302A98;
    sub_26926B0E0();
    v15 = sub_269269548(v4, v14);
    v12(v4, v0);
    if ((v15 & 1) == 0)
    {
      (*(v6 + 8))(v9, v5);

      v16 = 0;
      return v16 & 1;
    }

    v13 = sub_269269D4C(v9, v10);
  }

  v16 = v13;

  (*(v6 + 8))(v9, v5);
  return v16 & 1;
}

uint64_t sub_269269548(uint64_t a1, uint64_t a2)
{
  v3 = sub_26926B170();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_26926A248(&qword_2803027C8), v9 = sub_26926B200(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_26926A248(&qword_2803027D0);
      v17 = sub_26926B210();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_269269758(uint64_t a1)
{
  v2 = sub_26926B170();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027E0, &unk_26926C090);
    v10 = sub_26926B400();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_26926A248(&qword_2803027C8);
      v18 = sub_26926B200();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_26926A248(&qword_2803027D0);
          v25 = sub_26926B210();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

BOOL sub_269269A50(uint64_t a1, uint64_t a2)
{
  v38 = sub_26926AFD0();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26926AF20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_26926AFA0();
  v15 = sub_26926AF00();
  v16 = *(v8 + 8);
  v16(v14, v7);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  sub_26926AFA0();
  v17 = sub_26926AF10();
  v18 = v16;
  v19 = v17;
  v21 = v20;
  v34 = v18;
  v35 = v7;
  v18(v14, v7);
  v22 = 0;
  v23 = *(a2 + 16);
  v36 = a2;
  v37 = v23;
  v24 = (v3 + 8);
  do
  {
    v26 = v37 != v22;
    if (v37 == v22)
    {
      break;
    }

    v27 = *(sub_26926B150() - 8);
    v28 = v36 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
    sub_26926B140();
    sub_26926AFA0();
    (*v24)(v6, v38);
    v29 = sub_26926AF10();
    v31 = v30;
    v34(v12, v35);
    if (v19 == v29 && v21 == v31)
    {

      break;
    }

    ++v22;
    v25 = sub_26926B480();
  }

  while ((v25 & 1) == 0);

  return v26;
}

uint64_t sub_269269D4C(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v2 = sub_26926AFD0();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v44 - v7;
  v8 = sub_26926B150();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26926AF70();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  sub_26926AFB0();
  v19 = sub_26926AF30();
  v22 = *(v13 + 8);
  v21 = v13 + 8;
  v20 = v22;
  v22(v18, v12);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  sub_26926AFB0();
  v23 = sub_26926AF50();
  v54 = v24;
  v55 = v23;
  v59 = v21;
  v20(v18, v12);
  v25 = *(v56 + 16);
  if (!v25)
  {
LABEL_15:
    v42 = 0;
    goto LABEL_18;
  }

  v57 = v20;
  v58 = v12;
  v47 = *(v51 + 16);
  v48 = v8;
  v26 = v56 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v56 = v53 + 8;
  v51 += 16;
  v45 = *(v51 + 56);
  v46 = (v51 - 8);
  v47(v11, v26, v8);
  while (1)
  {
    v28 = v50;
    sub_26926B140();
    v29 = v49;
    sub_26926AFB0();
    v30 = *v56;
    v31 = v28;
    v32 = v2;
    (*v56)(v31, v2);
    v33 = sub_26926AF50();
    v35 = v34;
    v57(v29, v58);
    if (v55 != v33)
    {
      goto LABEL_10;
    }

    if (v54 == v35)
    {
    }

    else
    {
LABEL_10:
      v36 = sub_26926B480();

      if ((v36 & 1) == 0)
      {
        v27 = v48;
        (*v46)(v11, v48);
        v2 = v32;
        goto LABEL_5;
      }
    }

    v52 = v26;
    v53 = v25;
    sub_26926B140();
    sub_26926AFB0();
    v37 = v32;
    v30(v6, v32);
    v38 = sub_26926AF40();
    v39 = v57;
    v40 = v58;
    v57(v18, v58);
    if (v38)
    {
      break;
    }

    sub_26926B140();
    sub_26926AFB0();
    v30(v6, v37);
    v41 = sub_26926AF60();
    v39(v18, v40);
    v27 = v48;
    (*v46)(v11, v48);
    v2 = v37;
    v26 = v52;
    v25 = v53;
    if (v41)
    {
      goto LABEL_17;
    }

LABEL_5:
    v26 += v45;
    if (!--v25)
    {
      goto LABEL_15;
    }

    v47(v11, v26, v27);
  }

  (*v46)(v11, v48);
LABEL_17:
  v42 = 1;
LABEL_18:

  return v42;
}

uint64_t sub_26926A248(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26926B170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id FeatureStoreUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureStoreUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStoreUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeatureStoreUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStoreUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26926A49C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26926B3B0();

  return sub_26926A4E0(a1, v5);
}

unint64_t sub_26926A4E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26926ADC0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6350C0](v9, a1);
      sub_26926AD6C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_26926A5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302760, &qword_26926BEB0);
    v3 = sub_26926B400();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_26926B4C0();

      sub_26926B270();
      result = sub_26926B4E0();
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
          result = sub_26926B480();
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

uint64_t _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD4Data8streamId011interactionJ0Say10Foundation0H0VGSS_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_26926B1D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = objc_allocWithZone(MEMORY[0x277D08440]);
  v17 = sub_26926B220();
  v18 = [v16 initWithStreamId_];

  if (v18)
  {
    v38 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302768, &qword_26926BEB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26926C0A0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;

    sub_26926A5A8(inited);
    swift_setDeallocating();
    sub_26926AD18(inited + 32);
    v20 = sub_26926B330();

    v21 = [v18 retrieve_];

    if (v21)
    {
      v22 = sub_26926B1F0();

      v39 = a3;
      v40 = a4;

      sub_26926B3D0();
      if (*(v22 + 16) && (v23 = sub_26926A49C(v41), (v24 & 1) != 0))
      {
        sub_269264D10(*(v22 + 56) + 32 * v23, v42);
        sub_26926AD6C(v41);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027E8, &unk_26926C0E0);
        if (swift_dynamicCast())
        {

          return v39;
        }
      }

      else
      {

        sub_26926AD6C(v41);
      }
    }

    v31 = sub_269268EA0();
    (*(v9 + 16))(v15, v31, v8);

    v32 = sub_26926B1C0();
    v33 = sub_26926B370();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = a3;
      v37 = v35;
      v41[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_269263040(v36, a4, v41);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_269263040(v38, a2, v41);
      _os_log_impl(&dword_26925D000, v32, v33, "Interaction %s does not exist in stream %s.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D635690](v37, -1, -1);
      MEMORY[0x26D635690](v34, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v26 = sub_269268EA0();
    (*(v9 + 16))(v13, v26, v8);

    v27 = sub_26926B1C0();
    v28 = sub_26926B370();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_269263040(a1, a2, v41);
      _os_log_impl(&dword_26925D000, v27, v28, "Failed to extract to feature store because the stream %s is not found", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D635690](v30, -1, -1);
      MEMORY[0x26D635690](v29, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
  }

  return MEMORY[0x277D84F90];
}

id _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD08streamId011interactionI011dataVersionSo20FSFCurareInteraction_pSgSS_SSs6UInt32VtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD4Data8streamId011interactionJ0Say10Foundation0H0VGSS_SStFZ_0(a1, a2, a3, a4);
  if (v6[2])
  {
    v7 = v6[4];
    v8 = v6[5];
    sub_26926AE1C(v7, v8);

    v9 = objc_opt_self();
    v10 = sub_26926AE70();
    v11 = sub_26926B220();
    v12 = [v9 deserialize:v10 dataVersion:a5 interactionId:v11];
    sub_269267F54(v7, v8);
  }

  else
  {

    return 0;
  }

  return v12;
}

uint64_t sub_26926AE1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}