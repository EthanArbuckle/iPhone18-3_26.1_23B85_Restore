uint64_t sub_2304481AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v43 = a2;
  v47 = a4;
  v5 = sub_2304A4084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A4FF4();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v38 - v13;
  v14 = sub_2304A49E4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2304A4FD4();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v38 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v38 - v26;
  v28 = *a1;
  v29 = a1[1];
  sub_2304A49F4();
  v30 = 1;
  if ((*(v6 + 48))(v17, 1, v5) != 1)
  {
    (*(v6 + 32))(v25, v17, v5);
    v30 = 0;
  }

  (*(v6 + 56))(v25, v30, 1, v5);
  v31 = MEMORY[0x277D46780];
  v39 = MEMORY[0x277D46780];
  sub_2304643E0(v25, v27, MEMORY[0x277D46780]);
  sub_2304A4384();
  sub_2304A49C4();

  sub_2304A5214();
  v43 = v29;
  sub_2304A5284();
  sub_230464448(v27, v22, v31);
  v32 = v40;
  sub_2304A4F94();
  v34 = v44;
  v33 = v45;
  (*(v44 + 16))(v42, v32, v45);
  sub_2304A43D4();
  v35 = v47;
  sub_2304A4B74();
  (*(v34 + 8))(v32, v33);
  sub_2304644B0(v27, v39);
  v36 = sub_2304A4B84();
  return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
}

void *sub_2304485C0(void (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v52 = a1;
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54040, &qword_2304A7460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_2304A4B84();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v44 - v12;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = sub_2304A61A4() | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(a3 + 32);
    v14 = ~v17;
    v13 = a3 + 64;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(a3 + 64);
    v16 = a3;
  }

  v21 = 0;
  v44 = v14;
  v22 = (v14 + 64) >> 6;
  v47 = (v46 + 32);
  v48 = (v46 + 48);
  v55 = v16;
  v56 = MEMORY[0x277D84F90];
  v50 = v8;
  v51 = v7;
  v54 = v13;
  if ((v16 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v23 = sub_2304A6234();
  if (!v23)
  {
    goto LABEL_26;
  }

  v25 = v24;
  v59 = v23;
  sub_2304A4A04();
  swift_dynamicCast();
  v26 = v58[0];
  v59 = v25;
  sub_2304A43E4();
  swift_dynamicCast();
  v27 = v58[0];
  v28 = v21;
  v29 = v15;
  if (v26)
  {
    while (1)
    {
      v58[0] = v26;
      v58[1] = v27;
      v33 = v51;
      v34 = v57;
      v52(v58);
      v57 = v34;
      if (v34)
      {

        sub_230433B3C();

        return v56;
      }

      v35 = v50;
      v36 = (*v48)(v33, 1, v50);
      v37 = v33;
      if (v36 == 1)
      {
        result = sub_230464970(v33, &unk_27DB54040, &qword_2304A7460);
        v21 = v28;
        v15 = v29;
        v13 = v54;
        v16 = v55;
        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v38 = *v47;
        v39 = v45;
        (*v47)(v45, v37, v35);
        v38(v49, v39, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = sub_23045A0B8(0, v56[2] + 1, 1, v56, &qword_27DB53F80, &qword_2304A73E0, MEMORY[0x277D46528]);
        }

        v42 = v56[2];
        v41 = v56[3];
        if (v42 >= v41 >> 1)
        {
          v56 = sub_23045A0B8(v41 > 1, v42 + 1, 1, v56, &qword_27DB53F80, &qword_2304A73E0, MEMORY[0x277D46528]);
        }

        v43 = v56;
        v56[2] = v42 + 1;
        result = (v38)(v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v42, v49, v35);
        v21 = v28;
        v15 = v29;
        v13 = v54;
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_10;
        }
      }

LABEL_13:
      v30 = v21;
      v31 = v15;
      v28 = v21;
      if (!v15)
      {
        break;
      }

LABEL_17:
      v29 = (v31 - 1) & v31;
      v32 = (v28 << 9) | (8 * __clz(__rbit64(v31)));
      v26 = *(*(v16 + 48) + v32);
      v27 = *(*(v16 + 56) + v32);

      if (!v26)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      v28 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v28 >= v22)
      {
        goto LABEL_26;
      }

      v31 = *(v13 + 8 * v28);
      ++v30;
      if (v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    sub_230433B3C();
    return v56;
  }

  return result;
}

uint64_t sub_230448A94(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_23045A0B8(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_230448BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v143 = a3;
  v134 = a4;
  v6 = sub_2304A53C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2304A4FD4();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v138 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v148 = &v129 - v15;
  v16 = sub_2304A49E4();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v142 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v147 = &v129 - v21;
  MEMORY[0x28223BE20](v20);
  v152 = &v129 - v22;
  v23 = sub_2304A4FF4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v160 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v139 = &v129 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v145 = &v129 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v137 = &v129 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v154 = &v129 - v36;
  result = MEMORY[0x28223BE20](v35);
  v40 = &v129 - v39;
  if (!*(a1 + 16))
  {
    v146 = MEMORY[0x277D84F98];
    v45 = MEMORY[0x277D84F90];
LABEL_46:
    v113 = v134;
    *v134 = v146;
    v113[1] = v45;
    return result;
  }

  v164 = *(a1 + 16);
  v133 = v38;
  v130 = v7;
  v131 = v6;
  v132 = v10;
  v161 = sub_2304A4984();
  v141 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
  v140 = (a2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
  v155 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v41 = a1 + v155;
  v157 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  v158 = a2;
  swift_beginAccess();
  v42 = v41;
  v44 = *(v24 + 16);
  v43 = v24 + 16;
  v165 = v44;
  v159 = (v43 + 16);
  v135 = (v43 + 24);
  v45 = MEMORY[0x277D84F90];
  v156 = (v43 - 8);
  v146 = MEMORY[0x277D84F98];
  v46 = *(v43 + 56);
  *&v47 = 136446210;
  v144 = v47;
  v151 = v43;
  v153 = v46;
  v136 = v40;
  while (1)
  {
    v162 = v42;
    v163 = v45;
    v165(v40);
    sub_2304A4FB4();
    sub_2304A4F84();
    v48 = sub_2304A4974();

    v49 = *(v158 + v157);
    v166 = v48;
    if ((v49 & 0xC000000000000001) != 0)
    {

      v50 = sub_2304A6224();

      v45 = v48;
      if (!v50)
      {
        goto LABEL_20;
      }

      v167 = v50;
      type metadata accessor for ClientDataSource();
      swift_dynamicCast();
      v51 = v168;
    }

    else
    {
      v45 = v48;
      if (!*(v49 + 16))
      {
        goto LABEL_21;
      }

      v52 = sub_230469CB8(v48);
      if ((v53 & 1) == 0)
      {
LABEL_20:

LABEL_21:
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v83 = sub_2304A5B74();
        __swift_project_value_buffer(v83, qword_28149B008);

        v84 = sub_2304A5B54();
        v85 = sub_2304A5E74();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = v45;
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v168 = v88;
          *v87 = v144;
          v167 = v86;
          sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
          v89 = sub_2304A62D4();
          v91 = sub_23046A5C8(v89, v90, &v168);

          *(v87 + 4) = v91;
          _os_log_impl(&dword_230430000, v84, v85, "Cannot find a zone that does not exist: %{public}s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v88);
          v92 = v88;
          v46 = v153;
          MEMORY[0x23191A000](v92, -1, -1);
          MEMORY[0x23191A000](v87, -1, -1);
        }

        v45 = v163;
        (v165)(v160, v40, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_23045A0B8(0, v45[2] + 1, 1, v45, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        v94 = v45[2];
        v93 = v45[3];
        if (v94 >= v93 >> 1)
        {
          v45 = sub_23045A0B8(v93 > 1, v94 + 1, 1, v45, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        (*v156)(v40, v23);
        v45[2] = v94 + 1;
        result = (*v159)(v45 + v155 + v94 * v46, v160, v23);
        goto LABEL_4;
      }

      v51 = *(*(v49 + 56) + 8 * v52);
    }

    if (!v51)
    {
      goto LABEL_21;
    }

    sub_2304A5234();
    v54 = [*(v143 + v141) remoteToken];
    v55 = sub_2304A5D14();

    v56 = [v54 hasEntitlement_];

    if ((v56 & 1) == 0)
    {
      break;
    }

    v57 = v148;
    sub_2304A4FE4();
    v58 = sub_2304A4084();
    v59 = *(v58 - 8);
    v60 = 1;
    if ((*(v59 + 48))(v57, 1, v58) != 1)
    {
      (*(v59 + 32))(v147, v148, v58);
      v60 = 0;
    }

    v61 = v147;
    (*(v59 + 56))(v147, v60, 1, v58);
    v62 = MEMORY[0x277D464E0];
    v63 = v61;
    v64 = v152;
    sub_2304643E0(v63, v152, MEMORY[0x277D464E0]);
    sub_2304A4FA4();
    sub_230464448(v64, v142, v62);
    v65 = sub_2304A4A04();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();

    v68 = sub_2304A49B4();
    v69 = v140[8];
    __swift_project_boxed_opaque_existential_5Tm(v140, v140[3]);
    v149 = v68;
    sub_2304A4204();
    v150 = v51;
    if (v70)
    {
      (v165)(v154, v40, v23);
      v45 = sub_2304A4FB4();
      sub_2304A4F84();
      v40 = v23;
      sub_2304A4FE4();
      v71 = v137;
      sub_2304A4F94();
      v72 = *v159;
      (*v159)(v145, v71, v23);
      v73 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = v73;
      v75 = sub_230469D9C(v154);
      v77 = *(v73 + 16);
      v78 = (v76 & 1) == 0;
      v79 = __OFADD__(v77, v78);
      v80 = v77 + v78;
      if (v79)
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v81 = v76;
      if (*(v73 + 24) >= v80)
      {
        v40 = v136;
        v45 = v163;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v112 = v75;
          sub_230471724();
          v75 = v112;
        }
      }

      else
      {
        sub_23046EE34(v80, isUniquelyReferenced_nonNull_native);
        v75 = sub_230469D9C(v154);
        v40 = v136;
        v45 = v163;
        if ((v81 & 1) != (v82 & 1))
        {
          result = sub_2304A6314();
          __break(1u);
          return result;
        }
      }

      v107 = v168;
      v146 = v168;
      if (v81)
      {
        v46 = v153;
        (*v135)(v168[7] + v75 * v153, v145, v23);
      }

      else
      {
        v168[(v75 >> 6) + 8] |= 1 << v75;
        v108 = v75 * v153;
        (v165)(v107[6] + v75 * v153, v154, v23);
        v72((v107[7] + v108), v145, v23);
        v109 = v107[2];
        v79 = __OFADD__(v109, 1);
        v110 = v109 + 1;
        if (v79)
        {
          goto LABEL_56;
        }

        v107[2] = v110;
        v46 = v153;
      }

      v111 = *v156;
      (*v156)(v154, v23);
      sub_2304644B0(v152, MEMORY[0x277D464E0]);
      result = v111(v40, v23);
    }

    else
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v95 = sub_2304A5B74();
      __swift_project_value_buffer(v95, qword_28149B008);
      v96 = v166;

      v97 = sub_2304A5B54();
      v98 = sub_2304A5E74();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v168 = v100;
        *v99 = v144;
        v167 = v96;
        sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
        v101 = sub_2304A62D4();
        v103 = sub_23046A5C8(v101, v102, &v168);

        *(v99 + 4) = v103;
        _os_log_impl(&dword_230430000, v97, v98, "Cannot find a record that does not exist: %{public}s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
        v104 = v100;
        v46 = v153;
        MEMORY[0x23191A000](v104, -1, -1);
        MEMORY[0x23191A000](v99, -1, -1);
      }

      (v165)(v139, v40, v23);
      v45 = v163;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_23045A0B8(0, v45[2] + 1, 1, v45, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
      }

      v106 = v45[2];
      v105 = v45[3];
      if (v106 >= v105 >> 1)
      {
        v45 = sub_23045A0B8(v105 > 1, v106 + 1, 1, v45, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
      }

      sub_2304644B0(v152, MEMORY[0x277D464E0]);
      (*v156)(v40, v23);
      v45[2] = v106 + 1;
      result = (*v159)(v45 + v155 + v106 * v46, v139, v23);
    }

LABEL_4:
    v42 = v162 + v46;
    if (!--v164)
    {
      goto LABEL_46;
    }
  }

  if (qword_281499E38 == -1)
  {
    goto LABEL_48;
  }

LABEL_57:
  swift_once();
LABEL_48:
  v114 = sub_2304A5B74();
  __swift_project_value_buffer(v114, qword_28149B008);

  v115 = sub_2304A5B54();
  v116 = sub_2304A5E74();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = v45;
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v168 = v119;
    *v118 = v144;
    v167 = v117;
    sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
    v120 = sub_2304A62D4();
    v122 = sub_23046A5C8(v120, v121, &v168);

    *(v118 + 4) = v122;
    _os_log_impl(&dword_230430000, v115, v116, "Cannot access a record in a zone without entitlement: %{public}s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v119);
    MEMORY[0x23191A000](v119, -1, -1);
    MEMORY[0x23191A000](v118, -1, -1);
  }

  v123 = v132;
  v124 = v131;
  v125 = v130;
  v126 = v163;
  (v165)(v133, v40, v23);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v126 = sub_23045A0B8(0, *(v126 + 2) + 1, 1, v126, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
  }

  v128 = *(v126 + 2);
  v127 = *(v126 + 3);
  if (v128 >= v127 >> 1)
  {
    v126 = sub_23045A0B8(v127 > 1, v128 + 1, 1, v126, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
  }

  *(v126 + 2) = v128 + 1;
  (*v159)(&v126[v155 + v128 * v153], v133, v23);

  (*(v125 + 104))(v123, *MEMORY[0x277D468C0], v124);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();

  return (*v156)(v40, v23);
}

uint64_t sub_230449EC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v5 = *(*(v63 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v63);
  v62 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = v52 - v9;
  MEMORY[0x28223BE20](v8);
  v60 = v52 - v10;
  v71 = sub_2304A4F74();
  v11 = *(v71 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v71);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_devices);
  if (!v16)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
LABEL_23:
    *a2 = v18;
    return result;
  }

  v52[0] = a2;
  v52[1] = v2;
  v72 = MEMORY[0x277D84F90];

  sub_23045FAE4(0, v17, 0);
  v18 = v72;
  v19 = -1 << *(v16 + 32);
  v70 = v16 + 64;
  result = sub_2304A5FB4();
  v20 = result;
  v21 = 0;
  v57 = v11 + 32;
  v58 = v11 + 16;
  v53 = v16 + 72;
  v54 = v17;
  v59 = v15;
  v55 = v11;
  v56 = v16;
  while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v16 + 32))
  {
    if ((*(v70 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_25;
    }

    v66 = 1 << v20;
    v67 = v20 >> 6;
    v24 = *(v16 + 36);
    v64 = v21;
    v65 = v24;
    v25 = v63;
    v26 = *(v63 + 48);
    v27 = *(v16 + 48);
    v28 = sub_2304A4084();
    v29 = *(v28 - 8);
    v30 = v29;
    v31 = v27 + *(v29 + 72) * v20;
    v32 = *(v29 + 16);
    v69 = v18;
    v33 = v60;
    v32(v60, v31, v28);
    v34 = *(v16 + 56);
    v68 = *(v11 + 72);
    v35 = v71;
    (*(v11 + 16))(&v33[v26], v34 + v68 * v20, v71);
    v36 = v61;
    (*(v30 + 32))(v61, v33, v28);
    v37 = *(v11 + 32);
    v38 = &v33[v26];
    v18 = v69;
    v37(v36 + *(v25 + 48), v38, v35);
    v39 = v62;
    sub_230464ABC(v36, v62, &unk_27DB54640, &qword_2304A73F8);
    v40 = *(v25 + 48);
    v41 = v59;
    v37(v59, (v39 + v40), v35);
    (*(v30 + 8))(v39, v28);
    v72 = v18;
    v43 = *(v18 + 16);
    v42 = *(v18 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_23045FAE4(v42 > 1, v43 + 1, 1);
      v18 = v72;
    }

    *(v18 + 16) = v43 + 1;
    v44 = v55;
    result = (v37)(v18 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + v43 * v68, v41, v71);
    v16 = v56;
    v22 = 1 << *(v56 + 32);
    if (v20 >= v22)
    {
      goto LABEL_26;
    }

    v45 = *(v70 + 8 * v67);
    if ((v45 & v66) == 0)
    {
      goto LABEL_27;
    }

    if (v65 != *(v56 + 36))
    {
      goto LABEL_28;
    }

    v11 = v44;
    v46 = v45 & (-2 << (v20 & 0x3F));
    if (v46)
    {
      v22 = __clz(__rbit64(v46)) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v64;
    }

    else
    {
      v47 = v67 << 6;
      v48 = v67 + 1;
      v49 = (v53 + 8 * v67);
      while (v48 < (v22 + 63) >> 6)
      {
        v51 = *v49++;
        v50 = v51;
        v47 += 64;
        ++v48;
        if (v51)
        {
          result = sub_230433B44(v20, v65, 0);
          v22 = __clz(__rbit64(v50)) + v47;
          goto LABEL_20;
        }
      }

      result = sub_230433B44(v20, v65, 0);
LABEL_20:
      v23 = v64;
    }

    v21 = v23 + 1;
    v20 = v22;
    if (v21 == v54)
    {

      a2 = v52[0];
      goto LABEL_23;
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
  return result;
}

void sub_23044A3E0(uint64_t a1, BOOL *a2)
{
  v5 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_devices;
  v6 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_devices);

  v7 = sub_23044A5E8();
  if (v2)
  {

    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v8 = sub_2304A5B74();
    __swift_project_value_buffer(v8, qword_28149B008);
    v9 = v2;
    v10 = sub_2304A5B54();
    v11 = sub_2304A5E74();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_230430000, v10, v11, "Could not determine new device list: %{public}@", v12, 0xCu);
      sub_230464970(v13, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v13, -1, -1);
      MEMORY[0x23191A000](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v16 = v7;
    if (!v6 || (, , v17 = sub_23045969C(v6, v16), , swift_bridgeObjectRelease_n(), (v17 & 1) == 0))
    {
      *a2 = *(a1 + v5) != 0;
      v18 = *(a1 + v5);
      *(a1 + v5) = v16;
    }
  }
}

uint64_t sub_23044A5E8()
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54100, &qword_2304A74D0);
  v2 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v4 = &v43 - v3;
  v5 = sub_2304A4834();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540A0, &qword_2304A7490);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v43 - v14;
  v15 = (v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
  v16 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 32);
  __swift_project_boxed_opaque_existential_5Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  v17 = sub_2304A4554();
  v50 = 0;
  if (v17)
  {
    v18 = v15[4];
    __swift_project_boxed_opaque_existential_5Tm(v15, v15[3]);
    v50 = sub_2304A4574();
  }

  v19 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
  v20 = sub_2304A5404();
  if (v1)
  {

    v21 = sub_2304A51C4();
    v22 = v47;
    (*(*(v21 - 8) + 56))(v47, 1, 1, v21);
  }

  else
  {
    v23 = v20;
    if (*(v20 + 16) && (v24 = sub_230469C40(0xD000000000000011, 0x80000002304A8260), (v25 & 1) != 0))
    {
      v26 = v24;
      v48 = *(v23 + 56);
      v21 = sub_2304A51C4();
      v44 = *(v21 - 8);
      v27 = v48 + *(v44 + 72) * v26;
      v22 = v47;
      (*(v44 + 16))(v47, v27, v21);

      (*(v44 + 56))(v22, 0, 1, v21);
    }

    else
    {

      v21 = sub_2304A51C4();
      v22 = v47;
      (*(*(v21 - 8) + 56))(v47, 1, 1, v21);
    }
  }

  sub_230464B24(v22, v13, &qword_27DB540A0, &qword_2304A7490);
  sub_2304A51C4();
  v28 = *(v21 - 8);
  if ((*(v28 + 48))(v13, 1, v21) == 1)
  {
    sub_230464970(v13, &qword_27DB540A0, &qword_2304A7490);
    LODWORD(v48) = 0;
  }

  else
  {
    LODWORD(v48) = sub_2304A5184();
    (*(v28 + 8))(v13, v21);
  }

  v29 = v15[7];
  __swift_project_boxed_opaque_existential_5Tm(v15, v15[3]);
  sub_2304A4824();
  v30 = sub_2304A4904();
  (*(v45 + 8))(v8, v46);
  v51 = MEMORY[0x277D84F98];
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;

  for (i = 0; v33; i = v36)
  {
    v36 = i;
LABEL_19:
    v37 = __clz(__rbit64(v33)) | (v36 << 6);
    v38 = *(v30 + 48);
    v39 = sub_2304A4084();
    (*(*(v39 - 8) + 16))(v4, v38 + *(*(v39 - 8) + 72) * v37, v39);
    v40 = *(v30 + 56);
    v41 = sub_2304A46C4();
    (*(*(v41 - 8) + 16))(&v4[*(v49 + 48)], v40 + *(*(v41 - 8) + 72) * v37, v41);
    sub_23044AC58(&v51, v4, v48 & 1, v50);
    v33 &= v33 - 1;
    sub_230464970(v4, &unk_27DB54100, &qword_2304A74D0);
  }

  while (1)
  {
    v36 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v36 >= v34)
    {

      sub_230464970(v47, &qword_27DB540A0, &qword_2304A7490);

      return v51;
    }

    v33 = *(v30 + 64 + 8 * v36);
    ++i;
    if (v33)
    {
      goto LABEL_19;
    }
  }

  __break(1u);

  sub_230464970(v4, &unk_27DB54100, &qword_2304A74D0);

  __break(1u);
  return result;
}

uint64_t sub_23044AC58(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v319 = a4;
  v373 = a2;
  v324 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54650, &qword_2304A74D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v323 = &v312 - v7;
  v8 = sub_2304A4024();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v345 = &v312 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_2304A4F74();
  v321 = *(v322 - 8);
  v11 = *(v321 + 64);
  MEMORY[0x28223BE20](v322);
  v320 = &v312 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v335 = &v312 - v15;
  v337 = sub_2304A4544();
  v336 = *(v337 - 8);
  v16 = *(v336 + 64);
  MEMORY[0x28223BE20](v337);
  v318 = &v312 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54680, &unk_2304A7BA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v344 = &v312 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v352 = &v312 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v339 = &v312 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v314 = &v312 - v27;
  v375 = sub_2304A4084();
  v28 = *(v375 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v375);
  v341 = &v312 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v342 = &v312 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v343 = &v312 - v35;
  MEMORY[0x28223BE20](v34);
  v313 = &v312 - v36;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54120, &qword_2304A74F0);
  v37 = *(*(v384 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v384);
  v383 = &v312 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v407 = &v312 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v406 = &v312 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v405 = &v312 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v404 = &v312 - v47;
  MEMORY[0x28223BE20](v46);
  v382 = &v312 - v48;
  v381 = sub_2304A4B64();
  v385 = *(v381 - 8);
  v49 = *(v385 + 64);
  MEMORY[0x28223BE20](v381);
  v380 = &v312 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = sub_2304A4EE4();
  v356 = *(v357 - 8);
  v51 = *(v356 + 64);
  v52 = MEMORY[0x28223BE20](v357);
  v340 = &v312 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v330 = &v312 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v331 = &v312 - v57;
  MEMORY[0x28223BE20](v56);
  v355 = &v312 - v58;
  v349 = sub_2304A4BE4();
  v348 = *(v349 - 8);
  v59 = *(v348 + 64);
  v60 = MEMORY[0x28223BE20](v349);
  v386 = &v312 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v360 = &v312 - v62;
  v63 = sub_2304A4114();
  v402 = *(v63 - 8);
  v403 = v63;
  v64 = *(v402 + 64);
  MEMORY[0x28223BE20](v63);
  v409 = &v312 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_2304A4E94();
  v66 = *(v359 - 8);
  v67 = *(v66 + 64);
  v68 = MEMORY[0x28223BE20](v359);
  v338 = &v312 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v358 = &v312 - v70;
  v347 = sub_2304A46A4();
  v346 = *(v347 - 8);
  v71 = *(v346 + 64);
  v72 = MEMORY[0x28223BE20](v347);
  v327 = &v312 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v76 = &v312 - v75;
  MEMORY[0x28223BE20](v74);
  v399 = &v312 - v77;
  v390 = sub_2304A4434();
  v389 = *(v390 - 8);
  v78 = *(v389 + 64);
  v79 = MEMORY[0x28223BE20](v390);
  v387 = &v312 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v388 = &v312 - v81;
  v367 = sub_2304A44F4();
  v371 = *(v367 - 8);
  v82 = *(v371 + 64);
  v83 = MEMORY[0x28223BE20](v367);
  v317 = &v312 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x28223BE20](v83);
  v315 = &v312 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v329 = &v312 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v408 = &v312 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v350 = &v312 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v400 = &v312 - v94;
  MEMORY[0x28223BE20](v93);
  v362 = &v312 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54100, &qword_2304A74D0);
  v97 = *(*(v96 - 8) + 64);
  v98 = MEMORY[0x28223BE20](v96);
  v316 = &v312 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x28223BE20](v98);
  v334 = &v312 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v333 = &v312 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v332 = &v312 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v328 = &v312 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v326 = &v312 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v353 = &v312 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v354 = &v312 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v401 = &v312 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v118 = &v312 - v117;
  v372 = v116;
  v366 = &v312 - v117;
  v364 = v28;
  v351 = v66;
  if ((a3 & 1) == 0)
  {
    sub_230464B24(v373, &v312 - v117, &unk_27DB54100, &qword_2304A74D0);
    v119 = *(v96 + 48);
    v120 = v362;
    sub_2304A4674();
    v121 = sub_2304A46C4();
    v122 = *(v121 - 8);
    v123 = *(v122 + 8);
    v396 = v122 + 8;
    v397 = v123;
    v123(&v118[v119], v121);
    v124 = v388;
    sub_2304A4494();
    v125 = v120;
    v126 = v76;
    v127 = v375;
    (*(v371 + 8))(v125, v367);
    v128 = sub_2304A4414();
    (*(v389 + 8))(v124, v390);
    v129 = v127;
    v130 = v126;
    v398 = *(v28 + 8);
    v398(v118, v129);
    if (v128 == 7)
    {
      sub_230464B24(v373, v118, &unk_27DB54100, &qword_2304A74D0);
      v131 = *(v372 + 48);
      v132 = v399;
      sub_2304A46B4();
      v133 = &v366[v131];
      v118 = v366;
      v96 = v372;
      v397(v133, v121);
      v134 = v346;
      v135 = v347;
      (*(v346 + 104))(v130, *MEMORY[0x277D46408], v347);
      sub_230464B8C(&qword_27DB54690, MEMORY[0x277D46430]);
      v136 = sub_2304A5D04();
      v137 = *(v134 + 8);
      v137(v130, v135);
      v137(v132, v135);
      v66 = v351;
      v28 = v364;
      result = (v398)(v118, v375);
      if (v136)
      {
        return result;
      }
    }
  }

  v139 = v401;
  sub_230464B24(v373, v401, &unk_27DB54100, &qword_2304A74D0);
  v140 = *(v96 + 48);
  v141 = v400;
  sub_2304A4674();
  v142 = sub_2304A46C4();
  v143 = *(v142 - 8);
  v144 = *(v143 + 8);
  v374 = v142;
  v369 = v144;
  v368 = v143 + 8;
  (v144)(v139 + v140);
  v145 = v409;
  sub_2304A4454();
  v146 = v371 + 8;
  v147 = v141;
  v148 = v367;
  v370 = *(v371 + 8);
  v370(v147, v367);
  v150 = v402;
  v149 = v403;
  v151 = (*(v402 + 88))(v145, v403);
  if (v151 == *MEMORY[0x277D46330])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46730];
  }

  else if (v151 == *MEMORY[0x277D46310])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46710];
  }

  else if (v151 == *MEMORY[0x277D46320])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46720];
  }

  else if (v151 == *MEMORY[0x277D46318])
  {
    v152 = v373;
    v153 = MEMORY[0x277D46718];
  }

  else
  {
    if (v151 != *MEMORY[0x277D46328])
    {
      v311 = *(v66 + 104);
      v152 = v373;
      if (v151 == *MEMORY[0x277D46308])
      {
        v311(v358, *MEMORY[0x277D46708], v359);
      }

      else
      {
        v311(v358, *MEMORY[0x277D46730], v359);
        (*(v150 + 8))(v409, v149);
      }

      goto LABEL_15;
    }

    v152 = v373;
    v153 = MEMORY[0x277D46728];
  }

  (*(v66 + 104))(v358, *v153, v359);
LABEL_15:
  v365 = *(v28 + 8);
  v361 = v28 + 8;
  v365(v139, v375);
  v154 = v152;
  sub_230464B24(v152, v118, &unk_27DB54100, &qword_2304A74D0);
  v155 = *(v372 + 48);
  v156 = v362;
  sub_2304A4674();
  v369(&v118[v155], v374);
  v157 = v388;
  sub_2304A4494();
  v370(v156, v148);
  v409 = sub_2304A4414();
  v159 = v389 + 8;
  v158 = *(v389 + 8);
  v158(v157, v390);
  v160 = v154;
  v161 = v354;
  sub_230464B24(v160, v354, &unk_27DB54100, &qword_2304A74D0);
  v371 = v146;
  v162 = v148;
  v163 = *(v372 + 48);
  v164 = v350;
  sub_2304A4674();
  v369((v161 + v163), v374);
  v165 = v387;
  sub_2304A4494();
  v370(v164, v162);
  sub_2304A4424();
  v389 = v159;
  v379 = v158;
  v158(v165, v390);
  sub_2304A4BB4();
  v166 = v161;
  v167 = v373;
  v168 = v372;
  v169 = v375;
  v170 = v365;
  v365(v166, v375);
  v171 = v366;
  v170(v366, v169);
  v172 = v170;
  sub_230464B24(v167, v171, &unk_27DB54100, &qword_2304A74D0);
  v173 = *(v168 + 48);
  sub_2304A4674();
  v174 = (v171 + v173);
  v175 = v369;
  v369(v174, v374);
  v176 = sub_2304A44D4();
  v370(v156, v367);
  v177 = v363;
  v325 = sub_23043DA28(v176);
  v363 = v177;

  v172(v366, v375);
  v178 = v353;
  sub_230464B24(v167, v353, &unk_27DB54100, &qword_2304A74D0);
  v179 = *(v168 + 48);
  v180 = v408;
  sub_2304A4674();
  v175(v178 + v179, v374);
  v181 = sub_2304A4474();
  v370(v180, v367);
  v182 = *(v181 + 16);
  if (v182)
  {
    v410 = MEMORY[0x277D84F90];
    sub_23045FB28(0, v182, 0);
    v408 = v410;
    v183 = -1 << *(v181 + 32);
    v184 = sub_2304A5FB4();
    v377 = v385 + 32;
    v378 = v181;
    v376 = v181 + 64;
    while (1)
    {
      v403 = v184;
      v391 = v182;
      v185 = *(v181 + 36);
      v186 = v384;
      v187 = *(v384 + 48);
      v188 = v382;
      v392 = v185;
      sub_230460364(v382, v382 + v187, v184, v185, 0, v181);
      v189 = sub_2304A41D4();
      v190 = *(v189 - 8);
      v191 = v404;
      (*(v190 + 32))(v404, v188, v189);
      v192 = *(v186 + 48);
      v193 = sub_2304A41F4();
      v393 = *(v193 - 8);
      v194 = *(v393 + 32);
      v409 = v193;
      v194(v191 + v192, v188 + v187, v193);
      v195 = v405;
      sub_230464B24(v191, v405, &unk_27DB54120, &qword_2304A74F0);
      v402 = *(v186 + 48);
      v196 = sub_2304A41C4();
      v400 = v197;
      v401 = v196;
      v199 = v190 + 8;
      v198 = *(v190 + 8);
      v395 = v189;
      v198(v195, v189);
      v396 = v199;
      v394 = v198;
      v200 = v406;
      sub_230464B24(v191, v406, &unk_27DB54120, &qword_2304A74F0);
      v399 = *(v186 + 48);
      v201 = sub_2304A41A4();
      v397 = v202;
      v398 = v201;
      v198(v200, v189);
      v203 = v191;
      v204 = v407;
      sub_230464B24(v191, v407, &unk_27DB54120, &qword_2304A74F0);
      v205 = *(v186 + 48);
      v206 = v388;
      sub_2304A4194();
      v207 = *(v393 + 8);
      v207(&v204[v205], v193);
      v393 = sub_2304A4414();
      v208 = v390;
      v209 = v379;
      v379(v206, v390);
      v210 = v383;
      sub_230464B24(v203, v383, &unk_27DB54120, &qword_2304A74F0);
      v211 = *(v186 + 48);
      v212 = v387;
      sub_2304A4194();
      v207((v210 + v211), v409);
      sub_2304A4424();
      v209(v212, v208);
      sub_2304A4BB4();
      v213 = v210;
      v215 = v394;
      v214 = v395;
      v394(v213, v395);
      v215(v407, v214);
      v216 = v380;
      sub_2304A4B24();
      sub_230464970(v404, &unk_27DB54120, &qword_2304A74F0);
      v217 = v409;
      v207(&v399[v406], v409);
      v207((v405 + v402), v217);
      v218 = v408;
      v410 = v408;
      v220 = *(v408 + 2);
      v219 = *(v408 + 3);
      if (v220 >= v219 >> 1)
      {
        sub_23045FB28(v219 > 1, v220 + 1, 1);
        v218 = v410;
      }

      *(v218 + 2) = v220 + 1;
      (*(v385 + 32))(&v218[((*(v385 + 80) + 32) & ~*(v385 + 80)) + *(v385 + 72) * v220], v216, v381);
      v181 = v378;
      if (v403 < 0 || v403 >= -(-1 << *(v378 + 32)))
      {
        break;
      }

      if (((*(v376 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v403) & 1) == 0)
      {
        goto LABEL_53;
      }

      if (v392 != *(v378 + 36))
      {
        goto LABEL_54;
      }

      v408 = v218;
      v184 = sub_2304A5FD4();
      v182 = v391 - 1;
      if (v391 == 1)
      {

        v221 = v373;
        v222 = v372;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v408 = MEMORY[0x277D84F90];
  v222 = v372;
  v221 = v373;
LABEL_26:
  v365(v353, v375);
  v223 = v326;
  sub_230464B24(v221, v326, &unk_27DB54100, &qword_2304A74D0);
  v224 = *(v222 + 48);
  v225 = v327;
  sub_2304A46B4();
  v369((v223 + v224), v374);
  v226 = v346;
  v227 = v347;
  v228 = (*(v346 + 88))(v225, v347);
  v229 = v364;
  v230 = v357;
  v231 = v330;
  if (v228 == *MEMORY[0x277D46428])
  {
    (*(v226 + 96))(v225, v227);
    v232 = *v225;
    v233 = v225[1];
    v234 = v314;
    sub_2304A4034();

    if ((*(v229 + 48))(v234, 1, v375) == 1)
    {
      sub_230464970(v234, &qword_27DB53F20, &qword_2304A7388);
      v235 = MEMORY[0x277D46748];
    }

    else
    {
      v239 = v234;
      v240 = *(v229 + 32);
      v241 = v313;
      v242 = v375;
      v240(v313, v239, v375);
      v240(v231, v241, v242);
      v235 = MEMORY[0x277D46768];
    }

    v237 = v331;
    v236 = v356;
    v238 = v365;
    (*(v356 + 104))(v231, *v235, v230);
    (*(v236 + 32))(v237, v231, v230);
    v238(v223, v375);
  }

  else if (v228 == *MEMORY[0x277D46408])
  {
    v236 = v356;
    v237 = v331;
    (*(v356 + 104))(v331, *MEMORY[0x277D46748], v357);
    v238 = v365;
    v365(v223, v375);
  }

  else
  {
    v237 = v331;
    v236 = v356;
    v238 = v365;
    if (v228 == *MEMORY[0x277D46418])
    {
      v243 = MEMORY[0x277D46758];
    }

    else
    {
      if (v228 != *MEMORY[0x277D46410] && v228 != *MEMORY[0x277D46420])
      {
LABEL_55:
        result = sub_2304A62E4();
        __break(1u);
        return result;
      }

      v243 = MEMORY[0x277D46750];
    }

    (*(v356 + 104))(v331, *v243, v357);
    v238(v223, v375);
  }

  (*(v236 + 32))(v355, v237, v230);
  v244 = v328;
  sub_230464B24(v373, v328, &unk_27DB54100, &qword_2304A74D0);
  v245 = *(v372 + 48);
  v246 = v238;
  v247 = v329;
  sub_2304A4674();
  v369((v244 + v245), v374);
  v248 = v335;
  sub_2304A4444();
  v249 = v248;
  v370(v247, v367);
  v250 = v336;
  v251 = v337;
  if ((*(v336 + 48))(v249, 1, v337) == 1)
  {
    sub_230464970(v249, &unk_27DB54110, &unk_2304A74E0);
    v246(v244, v375);
    v252 = 1;
    v253 = v246;
    v254 = v352;
  }

  else
  {
    v255 = v249;
    v256 = v318;
    (*(v250 + 32))(v318, v255, v251);
    v246(v244, v375);
    sub_2304A4534();
    sub_2304A4524();
    sub_2304A4514();
    v254 = v352;
    sub_2304A4F54();
    (*(v250 + 8))(v256, v251);
    v252 = 0;
    v253 = v246;
  }

  v257 = sub_2304A4F64();
  (*(*(v257 - 8) + 56))(v254, v252, 1, v257);
  v258 = v366;
  sub_230464B24(v373, v366, &unk_27DB54100, &qword_2304A74D0);
  v259 = *(v372 + 48);
  v260 = v362;
  sub_2304A4674();
  v369((v258 + v259), v374);
  sub_2304A44B4();
  v370(v260, v367);
  v261 = v339;
  sub_2304A4034();

  v262 = v375;
  v253(v258, v375);
  v263 = v364;
  if ((*(v364 + 48))(v261, 1, v262) == 1)
  {

    sub_230464970(v254, &unk_27DB54680, &unk_2304A7BA0);
    (*(v356 + 8))(v355, v357);
    (*(v348 + 8))(v360, v349);
    (*(v351 + 8))(v358, v359);
    return sub_230464970(v261, &qword_27DB53F20, &qword_2304A7388);
  }

  else
  {
    v264 = v343;
    (*(v263 + 32))(v343, v261, v375);
    v265 = v373;
    if (v319)
    {
      LODWORD(v409) = sub_230495A50(v264, v319) ^ 1;
    }

    else
    {
      LODWORD(v409) = 0;
    }

    v266 = v372;
    v267 = *(v263 + 16);
    v364 = v263 + 16;
    v407 = v267;
    (v267)(v342, v264, v375);
    v268 = v366;
    sub_230464B24(v265, v366, &unk_27DB54100, &qword_2304A74D0);
    v269 = *(v266 + 48);
    sub_2304A4684();
    v270 = v374;
    v271 = v369;
    v369((v268 + v269), v374);
    v272 = v354;
    sub_230464B24(v265, v354, &unk_27DB54100, &qword_2304A74D0);
    v273 = *(v266 + 48);
    v274 = v362;
    sub_2304A4674();
    v271(v272 + v273, v270);
    v275 = sub_2304A44C4();
    v405 = v276;
    v406 = v275;
    v370(v274, v367);
    (*(v348 + 16))(v386, v360, v349);
    (*(v351 + 16))(v338, v358, v359);
    sub_230464B24(v352, v344, &unk_27DB54680, &unk_2304A7BA0);
    (*(v356 + 16))(v340, v355, v357);
    v277 = v332;
    sub_230464B24(v265, v332, &unk_27DB54100, &qword_2304A74D0);
    v278 = *(v266 + 48);
    sub_2304A4664();
    v279 = v277 + v278;
    v280 = v374;
    v271(v279, v374);
    v281 = v265;
    v282 = v333;
    sub_230464B24(v281, v333, &unk_27DB54100, &qword_2304A74D0);
    v283 = *(v266 + 48);
    v284 = v282;
    v285 = v350;
    sub_2304A4674();
    v286 = v280;
    v271(v284 + v283, v280);
    v287 = sub_2304A4484();
    v403 = v288;
    v404 = v287;
    v289 = v367;
    v290 = v370;
    v370(v285, v367);
    v291 = v373;
    v292 = v334;
    sub_230464B24(v373, v334, &unk_27DB54100, &qword_2304A74D0);
    v293 = *(v266 + 48);
    v294 = v315;
    sub_2304A4674();
    v295 = v286;
    v296 = v369;
    v369((v292 + v293), v295);
    v297 = sub_2304A4464();
    v401 = v298;
    v402 = v297;
    v290(v294, v289);
    v299 = v290;
    v300 = v316;
    sub_230464B24(v291, v316, &unk_27DB54100, &qword_2304A74D0);
    v301 = *(v372 + 48);
    v302 = v317;
    sub_2304A4674();
    v296(v300 + v301, v374);
    sub_2304A44E4();
    v299(v302, v289);
    v303 = v320;
    v304 = v342;
    sub_2304A4F14();
    v305 = v375;
    v306 = v365;
    v365(v300, v375);
    v306(v334, v305);
    v306(v333, v305);
    v306(v332, v305);
    v306(v354, v305);
    v306(v366, v305);
    v307 = v343;
    (v407)(v304, v343, v305);
    v308 = v321;
    v309 = v323;
    v310 = v322;
    (*(v321 + 16))(v323, v303, v322);
    (*(v308 + 56))(v309, 0, 1, v310);
    sub_230477C7C(v309, v304);
    (*(v308 + 8))(v303, v310);
    v306(v307, v305);
    sub_230464970(v352, &unk_27DB54680, &unk_2304A7BA0);
    (*(v356 + 8))(v355, v357);
    (*(v348 + 8))(v360, v349);
    return (*(v351 + 8))(v358, v359);
  }
}

void sub_23044D59C(uint64_t *a1, uint64_t a2)
{
  v106 = a2;
  v115 = a1;
  v4 = sub_2304A5124();
  ObjectType = *(v4 - 8);
  v114 = v4;
  v5 = *(ObjectType + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v112 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v110 = &v89 - v9;
  MEMORY[0x28223BE20](v8);
  v109 = &v89 - v10;
  v101 = sub_2304A43F4();
  v103 = *(v101 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2304A44F4();
  v100 = *(v102 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v98 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2304A4644();
  v97 = *(v104 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v104);
  v96 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v107 = &v89 - v19;
  v95 = sub_2304A4B14();
  v94 = *(v95 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v108 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2304A46C4();
  v105 = *(v22 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_2304A51C4();
  v111 = *(v26 - 8);
  v27 = *(v111 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
  v31 = sub_2304A5404();
  if (!v3)
  {
    v32 = v31;
    v91 = v25;
    v89 = v22;
    v90 = v2;
    v92 = v29;
    v33 = v114;
    v93 = 0;
    v34 = v115;
    v35 = sub_2304A5114();
    if (*(v32 + 16))
    {
      v37 = sub_230469C40(v35, v36);
      v39 = v38;

      if (v39)
      {
        v40 = v111;
        v41 = v92;
        (*(v111 + 16))(v92, *(v32 + 56) + *(v111 + 72) * v37, v26);

        if (sub_2304A5184())
        {
          if (sub_2304A5164())
          {
            v42 = v91;
            v43 = v90;
            v44 = v93;
            sub_23044E1A8(v34, v91);
            if (v44)
            {
              (*(v111 + 8))(v41, v26);
            }

            else
            {
              sub_23044E730(v34, v42, v108);
              v81 = *(v43 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService + 8);
              v114 = *(v43 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService);
              v115 = v26;
              v112 = v81;
              ObjectType = swift_getObjectType();
              v82 = sub_2304A3FC4();
              (*(*(v82 - 8) + 56))(v107, 1, 1, v82);
              v83 = v96;
              v84 = v97;
              (*(v97 + 104))(v96, *MEMORY[0x277D463F8], v104);
              v85 = v98;
              sub_2304A4674();
              v86 = v103;
              v87 = v99;
              v88 = v101;
              (*(v103 + 104))(v99, *MEMORY[0x277D463A0], v101);
              sub_2304A4334();
              (*(v86 + 8))(v87, v88);
              (*(v100 + 8))(v85, v102);
              (*(v84 + 8))(v83, v104);
              sub_230464970(v107, &qword_27DB53FE0, &qword_2304A7430);
              (*(v94 + 8))(v108, v95);
              (*(v105 + 8))(v91, v89);
              (*(v111 + 8))(v41, v115);
            }

            return;
          }

          v58 = v33;
          v73 = v34;
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v74 = sub_2304A5B74();
          __swift_project_value_buffer(v74, qword_28149B008);
          v60 = ObjectType;
          v61 = v109;
          (*(ObjectType + 16))(v109, v73, v58);
          v62 = sub_2304A5B54();
          v63 = sub_2304A5E74();
          if (os_log_type_enabled(v62, v63))
          {
            v75 = v61;
            v65 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v115 = v26;
            v67 = v76;
            v116 = v76;
            *v65 = 136446210;
            v77 = sub_2304A5114();
            v79 = v78;
            (*(v60 + 8))(v75, v58);
            v80 = sub_23046A5C8(v77, v79, &v116);

            *(v65 + 4) = v80;
            v72 = "Could not send a message for an unregistered client: %{public}s";
            goto LABEL_22;
          }
        }

        else
        {
          v57 = v34;
          v58 = v33;
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v59 = sub_2304A5B74();
          __swift_project_value_buffer(v59, qword_28149B008);
          v60 = ObjectType;
          v61 = v110;
          (*(ObjectType + 16))(v110, v57, v58);
          v62 = sub_2304A5B54();
          v63 = sub_2304A5E74();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = v61;
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v115 = v26;
            v67 = v66;
            v116 = v66;
            *v65 = 136446210;
            v68 = sub_2304A5114();
            v70 = v69;
            (*(v60 + 8))(v64, v58);
            v71 = sub_23046A5C8(v68, v70, &v116);

            *(v65 + 4) = v71;
            v72 = "Could not send a message for a disabled client: %{public}s";
LABEL_22:
            _os_log_impl(&dword_230430000, v62, v63, v72, v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v67);
            MEMORY[0x23191A000](v67, -1, -1);
            MEMORY[0x23191A000](v65, -1, -1);

            (*(v111 + 8))(v92, v115);
            return;
          }
        }

        (*(v60 + 8))(v61, v58);
        (*(v40 + 8))(v92, v26);
        return;
      }
    }

    else
    {
    }

    v45 = v33;
    v46 = v112;
    v47 = ObjectType;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v48 = sub_2304A5B74();
    __swift_project_value_buffer(v48, qword_28149B008);
    (*(v47 + 16))(v46, v34, v33);
    v49 = sub_2304A5B54();
    v50 = sub_2304A5E74();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v116 = v52;
      *v51 = 136446210;
      v53 = sub_2304A5114();
      v55 = v54;
      (*(v47 + 8))(v46, v45);
      v56 = sub_23046A5C8(v53, v55, &v116);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_230430000, v49, v50, "Could not send a message for an unknown client: %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x23191A000](v52, -1, -1);
      MEMORY[0x23191A000](v51, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v46, v33);
    }
  }
}

uint64_t sub_23044E1A8@<X0>(uint64_t *a1@<X0>, NSObject *a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = sub_2304A53C4();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2304A5124();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2304A4084();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40[-v18];
  v20 = *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 56);
  __swift_project_boxed_opaque_existential_5Tm((v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  v44 = a1;
  sub_2304A50C4();
  sub_2304A48C4();
  v21 = *(v12 + 8);
  v21(v15, v11);
  v22 = sub_2304A46C4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) != 1)
  {
    return (*(v23 + 32))(v43, v19, v22);
  }

  sub_230464970(v19, &unk_27DB53F00, &unk_2304A7B70);
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v24 = sub_2304A5B74();
  __swift_project_value_buffer(v24, qword_28149B008);
  v26 = v45;
  v25 = v46;
  v27 = v47;
  (*(v46 + 16))(v45, v44, v47);
  v28 = sub_2304A5B54();
  v29 = sub_2304A5E74();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v42 = v21;
    v31 = v30;
    v44 = swift_slowAlloc();
    v51 = v44;
    *v31 = 136446210;
    v43 = v28;
    sub_2304A50C4();
    sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0]);
    v32 = sub_2304A62D4();
    v41 = v29;
    v33 = v27;
    v35 = v34;
    v42(v15, v11);
    (*(v25 + 8))(v26, v33);
    v36 = sub_23046A5C8(v32, v35, &v51);

    *(v31 + 4) = v36;
    v37 = v43;
    _os_log_impl(&dword_230430000, v43, v41, "Cannot send message to a relationship that does not exist: %{public}s", v31, 0xCu);
    v38 = v44;
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x23191A000](v38, -1, -1);
    MEMORY[0x23191A000](v31, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v26, v27);
  }

  (*(v48 + 104))(v50, *MEMORY[0x277D468D0], v49);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
  swift_allocError();
  sub_2304A53D4();
  return swift_willThrow();
}

uint64_t sub_23044E730@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v210 = a2;
  v211 = a1;
  v182 = a3;
  v4 = sub_2304A5124();
  v200 = *(v4 - 8);
  v201 = v4;
  v5 = *(v200 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v199 = v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v195 = (v176 - v8);
  v9 = sub_2304A53C4();
  v212 = *(v9 - 8);
  v213 = v9;
  v10 = *(v212 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v181 = v176 - v15;
  v16 = sub_2304A4084();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v180 = v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_2304A4434();
  v192 = *(v191 - 8);
  v19 = *(v192 + 64);
  v20 = MEMORY[0x28223BE20](v191);
  v184 = v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v190 = v176 - v22;
  v189 = sub_2304A4BE4();
  v187 = *(v189 - 8);
  v23 = *(v187 + 64);
  MEMORY[0x28223BE20](v189);
  v188 = v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_2304A52C4();
  v194 = *(v193 - 8);
  v25 = v194[8];
  v26 = MEMORY[0x28223BE20](v193);
  v186 = v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v196 = v176 - v28;
  v29 = sub_2304A5294();
  v198 = *(v29 - 8);
  v30 = *(v198 + 64);
  MEMORY[0x28223BE20](v29);
  v197 = v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2304A44F4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v183 = v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = v176 - v37;
  v39 = sub_2304A41F4();
  v206 = *(v39 - 8);
  v207 = v39;
  v40 = v206[8];
  v41 = MEMORY[0x28223BE20](v39);
  v185 = v176 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v208 = v176 - v43;
  v214 = sub_2304A41D4();
  v209 = *(v214 - 8);
  v44 = *(v209 + 64);
  v45 = MEMORY[0x28223BE20](v214);
  v47 = v176 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = v176 - v48;
  v203 = v3;
  v50 = &v3[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService];
  v51 = *&v3[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService];
  v52 = *(v50 + 1);
  swift_getObjectType();
  v53 = sub_2304A4304();
  if (v54)
  {
    v205 = v54;
    v179 = v53;
    v202 = v12;
    sub_2304A5094();
    v216 = v49;
    sub_2304A5114();
    v55 = v216;
    sub_2304A41B4();
    sub_2304A4674();
    v56 = sub_2304A4474();
    v59 = *(v33 + 8);
    v58 = v33 + 8;
    v57 = v59;
    v59(v38, v32);
    if (*(v56 + 16))
    {
      v60 = sub_230469F44(v55);
      if (v61)
      {
        v176[0] = v57;
        v176[1] = v58;
        v177 = v32;
        v178 = v29;
        v63 = v206;
        v62 = v207;
        v64 = v206 + 2;
        v65 = v206[2];
        v66 = v208;
        v65(v208, *(v56 + 56) + v206[9] * v60, v207);

        v67 = *&v203[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 32];
        __swift_project_boxed_opaque_existential_5Tm(&v203[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore], *&v203[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24]);
        v68 = v204;
        v69 = sub_2304A5484();
        if (v68)
        {

          (v63[1])(v66, v62);
          return (*(v209 + 8))(v216, v214);
        }

        v87 = v69;
        v88 = sub_2304A5114();
        if (*(v87 + 16))
        {
          v90 = sub_230469C40(v88, v89);
          v92 = v91;

          if (v92)
          {
            (*(v198 + 16))(v197, *(v87 + 56) + *(v198 + 72) * v90, v178);

            v93 = sub_2304A5254();
            v94 = sub_2304A5094();
            if (*(v93 + 16))
            {
              v96 = sub_230469C40(v94, v95);
              v98 = v97;

              if (v98)
              {
                v203 = v65;
                v204 = v64;
                v99 = *(v93 + 56) + v194[9] * v96;
                v100 = v193;
                v195 = v194[2];
                v195(v196, v99, v193);

                v101 = v188;
                sub_2304A52B4();
                v102 = v190;
                sub_2304A4194();
                sub_2304A4414();
                v104 = v192 + 8;
                v103 = *(v192 + 8);
                v105 = v102;
                v106 = v191;
                v103(v105, v191);
                v199 = sub_2304A4B94();
                v108 = v107;
                v187 = *(v187 + 8);
                (v187)(v101, v189);
                if (v108)
                {
                  v210 = v103;
                  v192 = v104;

                  if (qword_281499E38 != -1)
                  {
                    swift_once();
                  }

                  v109 = sub_2304A5B74();
                  __swift_project_value_buffer(v109, qword_28149B008);
                  v110 = v186;
                  v195(v186, v196, v100);
                  v111 = v185;
                  v112 = v208;
                  (v203)(v185, v208, v207);
                  v113 = v100;
                  v114 = sub_2304A5B54();
                  v115 = sub_2304A5E74();
                  if (os_log_type_enabled(v114, v115))
                  {
                    v116 = swift_slowAlloc();
                    v205 = swift_slowAlloc();
                    v215[0] = v205;
                    *v116 = 136446466;
                    v117 = v188;
                    LODWORD(v204) = v115;
                    sub_2304A52B4();
                    sub_230464B8C(&qword_27DB54000, MEMORY[0x277D46530]);
                    v118 = v189;
                    v119 = v110;
                    v120 = sub_2304A62D4();
                    v122 = v121;
                    (v187)(v117, v118);
                    v113 = v193;
                    v211 = v194[1];
                    v211(v119, v193);
                    v123 = sub_23046A5C8(v120, v122, v215);

                    *(v116 + 4) = v123;
                    *(v116 + 12) = 2080;
                    v124 = v190;
                    sub_2304A4194();
                    sub_230464B8C(&qword_27DB54008, MEMORY[0x277D463B0]);
                    v125 = v191;
                    v126 = sub_2304A62D4();
                    v128 = v127;
                    v210(v124, v125);
                    v129 = v206[1];
                    v129(v111, v207);
                    v130 = sub_23046A5C8(v126, v128, v215);

                    *(v116 + 14) = v130;
                    _os_log_impl(&dword_230430000, v114, v204, "Cannot send message because remote device is not compatible (local: %{public}s; remote: %s, privacy: .public)", v116, 0x16u);
                    v131 = v205;
                    swift_arrayDestroy();
                    MEMORY[0x23191A000](v131, -1, -1);
                    v132 = v116;
                    v112 = v208;
                    MEMORY[0x23191A000](v132, -1, -1);
                  }

                  else
                  {

                    v129 = v206[1];
                    v129(v111, v207);
                    v211 = v194[1];
                    v211(v110, v113);
                  }

                  v172 = v209;
                  (*(v212 + 104))(v202, *MEMORY[0x277D468D0], v213);
                  sub_2304A53E4();
                  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
                  swift_allocError();
                  sub_2304A53D4();
                  swift_willThrow();
                  v211(v196, v113);
                  (*(v198 + 8))(v197, v178);
                  v129(v112, v207);
                  return (*(v172 + 8))(v216, v214);
                }

                v166 = v183;
                sub_2304A4674();
                v167 = v184;
                sub_2304A4494();
                (v176[0])(v166, v177);
                v168 = sub_2304A4414();
                v103(v167, v106);
                if (v168 <= 7)
                {
                  v173 = sub_2304A5104();
                  v212 = v174;
                  v213 = v173;
                  sub_2304A5094();
                  v135 = v209;
                }

                else
                {
                  sub_2304A4144();
                  v169 = v201;
                  v215[3] = v201;
                  v215[4] = sub_230464B8C(&unk_27DB54010, MEMORY[0x277D46800]);
                  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v215);
                  (*(v200 + 16))(boxed_opaque_existential_1, v211, v169);
                  v171 = sub_2304A4134();
                  v135 = v209;
                  v212 = v175;
                  v213 = v171;
                  __swift_destroy_boxed_opaque_existential_0Tm(v215);
                }

                sub_2304A50E4();
                sub_2304A50A4();
                sub_2304A4B04();
                (v194[1])(v196, v193);
                (*(v198 + 8))(v197, v178);
                (v206[1])(v208, v207);
                return (*(v135 + 8))(v216, v214);
              }
            }

            else
            {
            }

            v135 = v209;
            v151 = v178;

            v152 = v195;
            if (qword_281499E38 != -1)
            {
              swift_once();
            }

            v153 = sub_2304A5B74();
            __swift_project_value_buffer(v153, qword_28149B008);
            v154 = v200;
            v155 = v201;
            (*(v200 + 16))(v152, v211, v201);
            v156 = sub_2304A5B54();
            v157 = sub_2304A5E74();
            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              v159 = swift_slowAlloc();
              v215[0] = v159;
              *v158 = 136446210;
              v160 = sub_2304A5094();
              v161 = v152;
              v163 = v162;
              (*(v154 + 8))(v161, v155);
              v164 = sub_23046A5C8(v160, v163, v215);

              *(v158 + 4) = v164;
              _os_log_impl(&dword_230430000, v156, v157, "Cannot send message if local device does not have a matching message type: %{public}s", v158, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v159);
              MEMORY[0x23191A000](v159, -1, -1);
              v165 = v158;
              v151 = v178;
              MEMORY[0x23191A000](v165, -1, -1);
            }

            else
            {

              (*(v154 + 8))(v152, v155);
            }

            v150 = v206;
            v149 = v207;
            (*(v212 + 104))(v202, *MEMORY[0x277D468D0], v213);
            sub_2304A53E4();
            sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
            swift_allocError();
            sub_2304A53D4();
            swift_willThrow();
            (*(v198 + 8))(v197, v151);
LABEL_40:
            (v150[1])(v208, v149);
            return (*(v135 + 8))(v216, v214);
          }
        }

        else
        {
        }

        v134 = v201;
        v133 = v202;
        v135 = v209;
        v136 = v199;
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v137 = sub_2304A5B74();
        __swift_project_value_buffer(v137, qword_28149B008);
        v138 = v200;
        (*(v200 + 16))(v136, v211, v134);
        v139 = sub_2304A5B54();
        v140 = sub_2304A5E74();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v215[0] = v142;
          *v141 = 136446210;
          v143 = sub_2304A5114();
          v144 = v136;
          v146 = v145;
          (*(v138 + 8))(v144, v134);
          v147 = sub_23046A5C8(v143, v146, v215);

          *(v141 + 4) = v147;
          _os_log_impl(&dword_230430000, v139, v140, "Cannot send message from unknown client: %{public}s", v141, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v142);
          MEMORY[0x23191A000](v142, -1, -1);
          v148 = v141;
          v133 = v202;
          MEMORY[0x23191A000](v148, -1, -1);
        }

        else
        {

          (*(v138 + 8))(v136, v134);
        }

        v150 = v206;
        v149 = v207;
        (*(v212 + 104))(v133, *MEMORY[0x277D468D0], v213);
        sub_2304A53E4();
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();
        goto LABEL_40;
      }
    }

    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v71 = sub_2304A5B74();
    __swift_project_value_buffer(v71, qword_28149B008);
    v72 = v209;
    v73 = v214;
    (*(v209 + 16))(v47, v55, v214);
    v74 = sub_2304A5B54();
    v75 = sub_2304A5E74();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v215[0] = v77;
      *v76 = 136446210;
      sub_230464B8C(&qword_27DB53FF8, MEMORY[0x277D46350]);
      v78 = sub_2304A62D4();
      v80 = v79;
      v81 = *(v72 + 8);
      v81(v47, v214);
      v82 = sub_23046A5C8(v78, v80, v215);
      v73 = v214;

      *(v76 + 4) = v82;
      _os_log_impl(&dword_230430000, v74, v75, "Cannot send message if remote device does not have a matching message type: %{public}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x23191A000](v77, -1, -1);
      MEMORY[0x23191A000](v76, -1, -1);
    }

    else
    {

      v81 = *(v72 + 8);
      v81(v47, v73);
    }

    (*(v212 + 104))(v202, *MEMORY[0x277D468D0], v213);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
    return (v81)(v216, v73);
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v83 = sub_2304A5B74();
    __swift_project_value_buffer(v83, qword_28149B008);
    v84 = sub_2304A5B54();
    v85 = sub_2304A5E74();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_230430000, v84, v85, "Cannot send message if local device does not have an ID", v86, 2u);
      MEMORY[0x23191A000](v86, -1, -1);
    }

    (*(v212 + 104))(v12, *MEMORY[0x277D468D0], v213);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

void sub_230450084(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v119 = a5;
  v118 = a4;
  v130 = a3;
  v111 = a2;
  v142 = a1;
  v141 = sub_2304A5124();
  v139 = *(v141 - 8);
  v7 = *(v139 + 64);
  v8 = MEMORY[0x28223BE20](v141);
  v138 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v136 = &v107 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v107 - v13;
  v140 = v14;
  MEMORY[0x28223BE20](v12);
  v126 = &v107 - v15;
  v16 = sub_2304A43F4();
  v128 = *(v16 - 8);
  v129 = v16;
  v17 = *(v128 + 64);
  MEMORY[0x28223BE20](v16);
  v127 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2304A44F4();
  v116 = *(v117 - 8);
  v19 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v124 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_2304A4644();
  v123 = *(v125 - 8);
  v21 = *(v123 + 64);
  MEMORY[0x28223BE20](v125);
  v122 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v121 = &v107 - v25;
  v115 = sub_2304A4624();
  v114 = *(v115 - 8);
  v26 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v120 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2304A4B14();
  v112 = *(v113 - 8);
  v28 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v131 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2304A46C4();
  v132 = *(v30 - 8);
  v133 = v30;
  v31 = *(v132 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v107 - v33);
  v35 = sub_2304A51C4();
  v137 = *(v35 - 8);
  v36 = *(v137 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = v5;
  v39 = *(v5 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v5 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v5 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
  v40 = sub_2304A5404();
  if (!v6)
  {
    v41 = v40;
    v107 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v108 = v34;
    v42 = v140;
    v109 = v38;
    v43 = v141;
    v110 = 0;
    v44 = v142;
    v45 = sub_2304A5114();
    if (*(v41 + 16))
    {
      v47 = sub_230469C40(v45, v46);
      v49 = v48;

      if (v49)
      {
        v50 = v137;
        (*(v137 + 16))(v109, *(v41 + 56) + *(v137 + 72) * v47, v35);

        if (sub_2304A5184())
        {
          if (sub_2304A5164())
          {
            v51 = v108;
            v52 = ObjectType;
            v53 = v110;
            sub_23044E1A8(v44, v108);
            if (v53)
            {
              (*(v50 + 8))(v109, v35);
            }

            else
            {
              sub_23044E730(v44, v51, v131);
              sub_2304A4614();
              v91 = *(v52 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService + 8);
              v138 = *(v52 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService);
              v136 = v91;
              ObjectType = swift_getObjectType();
              v92 = sub_2304A3FC4();
              (*(*(v92 - 8) + 56))(v121, 1, 1, v92);
              (*(v123 + 104))(v122, *MEMORY[0x277D463F8], v125);
              sub_2304A4674();
              (*(v128 + 104))(v127, *MEMORY[0x277D463A0], v129);
              v93 = v132;
              (*(v132 + 16))(v107, v51, v133);
              v94 = v139;
              (*(v139 + 16))(v126, v44, v43);
              v95 = (*(v93 + 80) + 16) & ~*(v93 + 80);
              v96 = *(v94 + 80);
              v142 = v35;
              v97 = (v31 + v96 + v95) & ~v96;
              v98 = swift_allocObject();
              (*(v93 + 32))(v98 + v95, v107, v133);
              (*(v94 + 32))(v98 + v97, v126, v43);
              v99 = (v98 + ((v42 + v97 + 7) & 0xFFFFFFFFFFFFFFF8));
              v100 = v119;
              *v99 = v118;
              v99[1] = v100;

              v101 = v131;
              v102 = v121;
              v103 = v122;
              v104 = v124;
              v105 = v127;
              v106 = v120;
              sub_2304A4314();

              (*(v128 + 8))(v105, v129);
              (*(v116 + 8))(v104, v117);
              (*(v123 + 8))(v103, v125);
              sub_230464970(v102, &qword_27DB53FE0, &qword_2304A7430);
              (*(v114 + 8))(v106, v115);
              (*(v112 + 8))(v101, v113);
              (*(v132 + 8))(v108, v133);
              (*(v137 + 8))(v109, v142);
            }

            return;
          }

          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v81 = sub_2304A5B74();
          __swift_project_value_buffer(v81, qword_28149B008);
          v82 = v139;
          v83 = v134;
          v84 = v43;
          (*(v139 + 16))(v134, v44, v43);
          v70 = sub_2304A5B54();
          v85 = sub_2304A5E74();
          if (os_log_type_enabled(v70, v85))
          {
            v86 = swift_slowAlloc();
            v142 = v35;
            v72 = v86;
            v74 = swift_slowAlloc();
            v143 = v74;
            *v72 = 136446210;
            v87 = sub_2304A5114();
            v89 = v88;
            (*(v82 + 8))(v83, v84);
            v90 = sub_23046A5C8(v87, v89, &v143);

            *(v72 + 4) = v90;
            v79 = "Could not send a message for an unregistered client: %{public}s";
            v80 = v85;
            goto LABEL_22;
          }

          (*(v82 + 8))(v83, v43);
        }

        else
        {
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v66 = sub_2304A5B74();
          __swift_project_value_buffer(v66, qword_28149B008);
          v67 = v139;
          v68 = v136;
          v69 = v43;
          (*(v139 + 16))(v136, v44, v43);
          v70 = sub_2304A5B54();
          v71 = sub_2304A5E74();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v142 = v35;
            v143 = v73;
            v74 = v73;
            *v72 = 136446210;
            v75 = sub_2304A5114();
            v77 = v76;
            (*(v67 + 8))(v68, v69);
            v78 = sub_23046A5C8(v75, v77, &v143);

            *(v72 + 4) = v78;
            v79 = "Could not send a message for a disabled client: %{public}s";
            v80 = v71;
LABEL_22:
            _os_log_impl(&dword_230430000, v70, v80, v79, v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v74);
            MEMORY[0x23191A000](v74, -1, -1);
            MEMORY[0x23191A000](v72, -1, -1);

            (*(v137 + 8))(v109, v142);
            return;
          }

          (*(v67 + 8))(v68, v43);
        }

        (*(v137 + 8))(v109, v35);
        return;
      }
    }

    else
    {
    }

    v55 = v138;
    v54 = v139;
    v56 = v43;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v57 = sub_2304A5B74();
    __swift_project_value_buffer(v57, qword_28149B008);
    (*(v54 + 16))(v55, v44, v43);
    v58 = sub_2304A5B54();
    v59 = sub_2304A5E74();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v143 = v61;
      *v60 = 136446210;
      v62 = sub_2304A5114();
      v64 = v63;
      (*(v54 + 8))(v55, v56);
      v65 = sub_23046A5C8(v62, v64, &v143);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_230430000, v58, v59, "Could not send a message for an unknown client: %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x23191A000](v61, -1, -1);
      MEMORY[0x23191A000](v60, -1, -1);
    }

    else
    {

      (*(v54 + 8))(v55, v43);
    }
  }
}

uint64_t sub_230450EF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v97 = a5;
  v98 = a4;
  v86 = a3;
  v89 = a2;
  v94 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE8, &qword_2304A7438);
  v5 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v7 = (&v76 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v76 - v10;
  v11 = sub_2304A4084();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v84 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = &v76 - v15;
  v16 = sub_2304A4B14();
  v90 = *(v16 - 8);
  v91 = v16;
  v17 = *(v90 + 8);
  v18 = MEMORY[0x28223BE20](v16);
  v79 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v77 = &v76 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v80 = &v76 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v78 = &v76 - v25;
  MEMORY[0x28223BE20](v24);
  v76 = &v76 - v26;
  v92 = sub_2304A5124();
  v87 = *(v92 - 8);
  v27 = *(v87 + 64);
  v28 = MEMORY[0x28223BE20](v92);
  v82 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v81 = &v76 - v30;
  v88 = sub_2304A4434();
  v31 = *(v88 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v88);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2304A44F4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2304A4854();
  v93 = *(v95 - 8);
  v40 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v99 = &v76 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FF0, &unk_2304A7440);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (&v76 - v44);
  sub_230464B24(v94, &v76 - v44, &qword_27DB53FF0, &unk_2304A7440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = *v45;
    *v7 = *v45;
    swift_storeEnumTagMultiPayload();
    v47 = v46;
    v98(v7);

    return sub_230464970(v7, &qword_27DB53FE8, &qword_2304A7438);
  }

  else
  {
    v94 = v7;
    (*(v93 + 32))(v99, v45, v95);
    sub_2304A4674();
    sub_2304A4494();
    (*(v36 + 8))(v39, v35);
    v49 = sub_2304A4414();
    (*(v31 + 8))(v34, v88);
    if (v49 > 7)
    {
      v62 = v93;
      sub_2304A4144();
      v63 = v77;
      sub_2304A4844();
      v64 = sub_2304A4AA4();
      v66 = v65;
      v67 = *(v90 + 1);
      v68 = v63;
      v69 = v91;
      v67(v68, v91);
      v70 = v79;
      sub_2304A4844();
      sub_2304A4AE4();
      v67(v70, v69);
      sub_230464B8C(&qword_27DB53F10, MEMORY[0x277D46800]);
      v71 = v82;
      v72 = v92;
      sub_2304A4124();
      v73 = v94;
      v74 = v98;
      sub_2304617C4(v64, v66);
      v75 = v87;
      (*(v87 + 16))(v73, v71, v72);
      swift_storeEnumTagMultiPayload();
      v74(v73);
      sub_230464970(v73, &qword_27DB53FE8, &qword_2304A7438);
      (*(v75 + 8))(v71, v72);
      return (*(v62 + 8))(v99, v95);
    }

    else
    {
      v50 = v76;
      v51 = v99;
      sub_2304A4844();
      sub_2304A4AF4();
      v52 = v91;
      v53 = *(v90 + 1);
      v53(v50, v91);
      v90 = "";
      sub_2304A4684();
      v54 = sub_2304A5094();
      v88 = v55;
      v89 = v54;
      v56 = v78;
      sub_2304A4844();
      v86 = sub_2304A4AA4();
      v53(v56, v52);
      v57 = v80;
      sub_2304A4844();
      sub_2304A4AC4();
      v53(v57, v52);
      v58 = v81;
      sub_2304A50F4();
      v59 = v87;
      v60 = v94;
      v61 = v92;
      (*(v87 + 16))(v94, v58, v92);
      swift_storeEnumTagMultiPayload();
      v98(v60);
      sub_230464970(v60, &qword_27DB53FE8, &qword_2304A7438);
      (*(v59 + 8))(v58, v61);
      return (*(v93 + 8))(v51, v95);
    }
  }
}

uint64_t sub_230451870@<X0>(int64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v100 = a2;
  v91 = a3;
  v93 = sub_2304A53C4();
  v92 = *(v93 - 8);
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_230473E0C(v8);

  v10 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v96 = a1;
  v11 = *(a1 + v10);

  v13 = sub_2304623A8(v12, v9);
  v97 = v9;

  v14 = sub_23043D750(v13);
  v90 = v4;

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = 0;
    v98 = *(v14 + 16);
    v99 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
    v18 = v14 + 40;
    v88 = v15 - 1;
    v89 = v14 + 40;
    do
    {
      v95 = v16;
      v19 = (v18 + 16 * v17);
      v20 = v17;
      while (1)
      {
        if (v20 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v22 = *(v19 - 1);
        v21 = *v19;
        v17 = v20 + 1;
        v23 = *(v100 + v99);

        v24 = [v23 remoteToken];
        v25 = sub_2304A5D14();
        v16 = [v24 hasEntitlement_];

        if ((v16 & 1) == 0)
        {
          break;
        }

        v19 += 2;
        ++v20;
        if (v98 == v17)
        {
          v16 = v95;
          goto LABEL_13;
        }
      }

      v16 = v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23045FA3C(0, *(v16 + 16) + 1, 1);
        v16 = v101[0];
      }

      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_23045FA3C((v27 > 1), v28 + 1, 1);
        v16 = v101[0];
      }

      *(v16 + 16) = v28 + 1;
      v29 = v16 + 16 * v28;
      *(v29 + 32) = v22;
      *(v29 + 40) = v21;
      v18 = v89;
    }

    while (v88 != v20);
  }

LABEL_13:

  if (!*(v16 + 16))
  {

    v40 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages;
    v100 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages;
    v41 = v96;
    swift_beginAccess();
    v42 = *(v41 + v40);
    v44 = v42 + 64;
    v43 = *(v42 + 64);
    v102 = MEMORY[0x277D84F90];
    v45 = 1 << *(v42 + 32);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & v43;
    v16 = (v45 + 63) >> 6;
    v48 = v97 + 56;
    v98 = v42;
    swift_bridgeObjectRetain_n();
    v49 = 0;
    while (v47)
    {
      v51 = v47;
LABEL_29:
      v47 = (v51 - 1) & v51;
      if (*(v97 + 16))
      {
        v99 = (v51 - 1) & v51;
        v53 = __clz(__rbit64(v51)) | (v49 << 6);
        v54 = v97;
        v55 = (*(v98 + 48) + 16 * v53);
        v57 = *v55;
        v56 = v55[1];
        v58 = *(*(v98 + 56) + 8 * v53);
        v59 = *(v97 + 40);
        sub_2304A6394();

        sub_2304A5D54();
        v60 = sub_2304A63B4();
        v61 = -1 << *(v54 + 32);
        v62 = v60 & ~v61;
        if ((*(v48 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
        {
          v63 = ~v61;
          while (1)
          {
            v64 = (*(v97 + 48) + 16 * v62);
            v65 = *v64 == v57 && v64[1] == v56;
            if (v65 || (sub_2304A62F4() & 1) != 0)
            {
              break;
            }

            v62 = (v62 + 1) & v63;
            if (((*(v48 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_230448A94(v50, &qword_27DB53F18, &qword_2304A7380, MEMORY[0x277D46800], MEMORY[0x277D46800]);
        }

LABEL_22:

        v47 = v99;
      }
    }

    while (1)
    {
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v52 >= v16)
      {

        v66 = 0;
        v67 = v102;
        v68 = 1 << *(v97 + 32);
        v69 = -1;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        v70 = v69 & *(v97 + 56);
        v71 = (v68 + 63) >> 6;
        while (v70)
        {
LABEL_49:
          v75 = v96;
          v76 = (*(v97 + 48) + ((v66 << 10) | (16 * __clz(__rbit64(v70)))));
          v77 = *v76;
          v16 = v76[1];
          v78 = v100;
          swift_beginAccess();
          v79 = *(v75 + v78);

          v80 = sub_230469C40(v77, v16);
          LOBYTE(v79) = v81;

          if (v79)
          {
            v16 = v96;
            v82 = v100;
            v83 = *(v96 + v100);
            v84 = swift_isUniquelyReferenced_nonNull_native();
            v85 = *(v16 + v82);
            v102 = v85;
            *(v16 + v82) = 0x8000000000000000;
            if (!v84)
            {
              sub_230471078();
              v85 = v102;
            }

            v72 = *(*(v85 + 48) + 16 * v80 + 8);

            v73 = *(*(v85 + 56) + 8 * v80);

            sub_230479570(v80, v85);
            *(v16 + v82) = v85;
          }

          v70 &= v70 - 1;
          swift_endAccess();
        }

        while (1)
        {
          v74 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_57;
          }

          if (v74 >= v71)
          {

            *v91 = v67;
            return result;
          }

          v70 = *(v48 + 8 * v74);
          ++v66;
          if (v70)
          {
            v66 = v74;
            goto LABEL_49;
          }
        }
      }

      v51 = *(v44 + 8 * v52);
      ++v49;
      if (v51)
      {
        v49 = v52;
        goto LABEL_29;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (qword_281499E38 != -1)
  {
LABEL_58:
    swift_once();
  }

  v30 = sub_2304A5B74();
  __swift_project_value_buffer(v30, qword_28149B008);

  v31 = sub_2304A5B54();
  v32 = sub_2304A5E74();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v16;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v101[0] = v35;
    *v34 = 136380675;
    v36 = MEMORY[0x231919340](v33, MEMORY[0x277D837D0]);
    v38 = v37;

    v39 = sub_23046A5C8(v36, v38, v101);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_230430000, v31, v32, "Cannot retrieve incoming messages due to missing entitlements: %{private}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x23191A000](v35, -1, -1);
    MEMORY[0x23191A000](v34, -1, -1);
  }

  else
  {
  }

  (*(v92 + 104))(v94, *MEMORY[0x277D468C0], v93);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
  swift_allocError();
  sub_2304A53D4();
  return swift_willThrow();
}

uint64_t sub_2304520B8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F38, &qword_2304A7398);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2304A7280;
  *(inited + 32) = 0x73746E65696C63;
  *(inited + 40) = 0xE700000000000000;
  v5 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_clients;
  swift_beginAccess();
  v6 = *(a1 + v5);

  sub_23043DF8C(v7);
  v9 = v8;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F40, &qword_2304A73A0);
  *(inited + 48) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0x72756F5361746164;
  *(inited + 88) = 0xEB00000000736563;
  v11 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v12 = *(a1 + v11);

  v14 = sub_23043CC94(v13);

  v15 = sub_2304A4984();
  v16 = MEMORY[0x231919340](v14, v15);
  v18 = v17;

  v19 = MEMORY[0x277D837D0];
  *(inited + 96) = v16;
  *(inited + 104) = v18;
  *(inited + 120) = v19;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000002304A8280;
  v20 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages;
  swift_beginAccess();
  v21 = *(a1 + v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F48, &qword_2304A73A8);
  v22 = sub_2304A5CD4();
  v24 = v23;

  *(inited + 168) = v19;
  *(inited + 144) = v22;
  *(inited + 152) = v24;
  v25 = sub_230462828(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F50, &unk_2304A73B0);
  result = swift_arrayDestroy();
  *a2 = v25;
  return result;
}

uint64_t sub_23045234C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v102 = a5;
  v107 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v100 - v9;
  v10 = sub_2304A5294();
  v104 = *(v10 - 8);
  isa = v104[8].isa;
  v12 = MEMORY[0x28223BE20](v10);
  v103 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v100 - v14);
  v16 = sub_2304A3F34();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2304A3FC4();
  v108 = *(v21 - 8);
  v109 = v21;
  v22 = *(v108 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v106 = (&v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v100 - v26;
  MEMORY[0x28223BE20](v25);
  v110[0] = a2;
  v110[1] = a3;
  v29 = &v100 - v28;
  (*(v17 + 104))(v20, *MEMORY[0x277CC91D8], v16);
  sub_2304645C4();
  sub_2304A3FB4();
  (*(v17 + 8))(v20, v16);
  v30 = [objc_opt_self() defaultManager];
  sub_2304A3F94();
  v31 = sub_2304A5D14();

  v32 = [v30 contentsAtPath_];

  if (v32)
  {
    v33 = sub_2304A3FD4();
    v35 = v34;

    sub_230464B8C(&qword_281499F48, MEMORY[0x277D46850]);
    v105 = v33;
    v36 = v111;
    sub_2304A3ED4();
    if (v36)
    {
      v37 = v108;
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v38 = sub_2304A5B74();
      __swift_project_value_buffer(v38, qword_28149B008);
      v39 = v106;
      v40 = v109;
      (*(v37 + 16))(v106, v29, v109);
      v41 = v36;
      v42 = sub_2304A5B54();
      v43 = sub_2304A5E94();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v104 = v42;
        v45 = v44;
        v46 = swift_slowAlloc();
        v107 = v29;
        v100 = v35;
        v47 = v46;
        v111 = swift_slowAlloc();
        v110[0] = v111;
        *v45 = 136380931;
        sub_230464B8C(&qword_28149AC60, MEMORY[0x277CC9260]);
        v48 = sub_2304A62D4();
        v49 = v40;
        v51 = v50;
        v52 = *(v37 + 8);
        v53 = v39;
        v54 = v49;
        v52(v53, v49);
        v55 = sub_23046A5C8(v48, v51, v110);

        *(v45 + 4) = v55;
        *(v45 + 12) = 2114;
        v56 = v36;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 14) = v57;
        *v47 = v57;
        v58 = v104;
        _os_log_impl(&dword_230430000, v104, v43, "Could not decode predefined descriptor at path %{private}s: %{public}@", v45, 0x16u);
        sub_230464970(v47, &qword_27DB53F30, &qword_2304A7390);
        MEMORY[0x23191A000](v47, -1, -1);
        v59 = v111;
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
        MEMORY[0x23191A000](v59, -1, -1);
        MEMORY[0x23191A000](v45, -1, -1);
        sub_2304617C4(v105, v100);

        return (v52)(v107, v54);
      }

      else
      {
        sub_2304617C4(v105, v35);

        v97 = *(v37 + 8);
        v97(v39, v40);
        return (v97)(v29, v40);
      }
    }

    else
    {
      v100 = v35;
      v76 = sub_2304A5284();
      v77 = v15;
      v78 = v76;
      v80 = v79;
      v81 = v104;
      v82 = v104[2].isa;
      v83 = v101;
      v106 = v77;
      (v82)(v101, v77, v10);
      (v81[7].isa)(v83, 0, 1, v10);
      sub_2304778B8(v83, v78, v80);
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v84 = sub_2304A5B74();
      __swift_project_value_buffer(v84, qword_28149B008);
      v85 = v103;
      (v82)(v103, v106, v10);
      v86 = sub_2304A5B54();
      v87 = sub_2304A5E94();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v107 = v29;
        v111 = 0;
        v90 = v89;
        v110[0] = v89;
        *v88 = 136380675;
        v91 = sub_2304A5284();
        v92 = v85;
        v94 = v93;
        v95 = v81[1].isa;
        v95(v92, v10);
        v96 = sub_23046A5C8(v91, v94, v110);

        *(v88 + 4) = v96;
        _os_log_impl(&dword_230430000, v86, v87, "Loaded predefined descriptor with id %{private}s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        MEMORY[0x23191A000](v90, -1, -1);
        MEMORY[0x23191A000](v88, -1, -1);
        sub_2304617C4(v105, v100);

        v95(v106, v10);
        return (*(v108 + 8))(v107, v109);
      }

      else
      {
        sub_2304617C4(v105, v100);

        v99 = v81[1].isa;
        v99(v85, v10);
        v99(v106, v10);
        return (*(v108 + 8))(v29, v109);
      }
    }
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v61 = sub_2304A5B74();
    __swift_project_value_buffer(v61, qword_28149B008);
    v62 = v108;
    v63 = v29;
    v64 = v29;
    v65 = v109;
    (*(v108 + 16))(v27, v63, v109);
    v66 = sub_2304A5B54();
    v67 = sub_2304A5E94();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v107 = v64;
      v69 = v68;
      v106 = swift_slowAlloc();
      v110[0] = v106;
      *v69 = 136380675;
      sub_230464B8C(&qword_28149AC60, MEMORY[0x277CC9260]);
      v70 = sub_2304A62D4();
      v72 = v71;
      v73 = *(v62 + 8);
      v73(v27, v65);
      v74 = sub_23046A5C8(v70, v72, v110);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_230430000, v66, v67, "Could not load predefined descriptor at path %{private}s", v69, 0xCu);
      v75 = v106;
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      MEMORY[0x23191A000](v75, -1, -1);
      MEMORY[0x23191A000](v69, -1, -1);

      return (v73)(v107, v65);
    }

    else
    {

      v98 = *(v62 + 8);
      v98(v27, v65);
      return (v98)(v64, v65);
    }
  }
}

uint64_t sub_230452EA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2304A6104();

  LODWORD(v9) = *(a1 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_pid);
  v4 = sub_2304A62D4();
  MEMORY[0x2319192E0](v4);

  MEMORY[0x2319192E0](0x656C646E7562203BLL, 0xEC000000203A4449);
  v5 = [*(a1 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
  v6 = [v5 bundleID];

  if (v6)
  {
    sub_2304A5D24();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54160, &qword_2304A7518);
  v7 = sub_2304A5D34();
  MEMORY[0x2319192E0](v7);

  result = MEMORY[0x2319192E0](59, 0xE100000000000000);
  *a2 = 0x203A646970;
  a2[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_230453030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a4;
  v29 = a3;
  v30 = a2;
  v5 = sub_2304A5294();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock_descriptors;
  swift_beginAccess();
  v11 = *(a1 + v10);
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 56);
  v16 = (v13 + 63) >> 6;
  v26 = v6 + 16;
  v27 = v6;
  v17 = (v6 + 8);
  v28 = v11;
  result = swift_bridgeObjectRetain_n();
  v19 = 0;
  while (v15)
  {
LABEL_10:
    (*(v27 + 16))(v9, *(v28 + 48) + *(v27 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v5);
    if (sub_2304A5284() == v30 && v22 == v29)
    {

      (*v17)(v9, v5);
LABEL_13:

      v23 = 1;
LABEL_15:
      *v25 = v23;
      return result;
    }

    v15 &= v15 - 1;
    v20 = sub_2304A62F4();

    result = (*v17)(v9, v5);
    if (v20)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v16)
    {

      v23 = 0;
      goto LABEL_15;
    }

    v15 = *(v12 + 8 * v21);
    ++v19;
    if (v15)
    {
      v19 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230453294()
{
  v1 = sub_2304A56E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteTarget])
  {
    sub_2304A5F94();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54150, &qword_2304A7510);
    if (swift_dynamicCast())
    {
      v6 = v14[1];

      sub_2304A56D4();
      sub_230464B8C(&unk_281499ED8, MEMORY[0x277D469F0]);
      v7 = sub_2304A5454();
      [v6 handleRecordChangesWithParameters_];
      swift_unknownObjectRelease();

      return (*(v2 + 8))(v5, v1);
    }
  }

  else
  {
    sub_230464970(v17, &qword_27DB54148, &unk_2304A7500);
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v9 = sub_2304A5B74();
  __swift_project_value_buffer(v9, qword_28149B008);
  v10 = sub_2304A5B54();
  v11 = sub_2304A5E84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_230430000, v10, v11, "Client: Failed to cast connection to server interface protocol", v12, 2u);
    MEMORY[0x23191A000](v12, -1, -1);
  }

  sub_230464618();
  swift_allocError();
  *v13 = 1;
  return swift_willThrow();
}

id sub_2304535D4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23045369C()
{
  v2 = sub_2304A53C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_2304A57C4();
    v10 = *(v8 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v11 = MEMORY[0x28223BE20](v9);
    *&v15[-32] = v8;
    *&v15[-24] = v11;
    *&v15[-16] = v12;
    *&v15[-8] = v0;
    MEMORY[0x28223BE20](v11);
    *&v15[-16] = sub_230464DF4;
    *&v15[-8] = v13;

    os_unfair_lock_lock(v10 + 4);
    sub_230464E24(&v16);
    os_unfair_lock_unlock(v10 + 4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      sub_2304A55D4();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230453B94()
{
  v2 = v0;
  v3 = sub_2304A53C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_2304A57C4();
    sub_230441708(v10, v11);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      v13 = sub_2304A57C4();
      v14 = *(v9 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
      v15 = MEMORY[0x28223BE20](v13);
      *&v18[-32] = v9;
      *&v18[-24] = v15;
      *&v18[-16] = v16;
      *&v18[-8] = v2;
      MEMORY[0x28223BE20](v15);
      *&v18[-16] = sub_230464DF4;
      *&v18[-8] = v17;

      os_unfair_lock_lock(v14 + 4);
      sub_230464E24(&v19);
      os_unfair_lock_unlock(v14 + 4);

      sub_2304A55D4();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D468D8], v3);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_2304540D0()
{
  v2 = v0;
  v3 = sub_2304A53C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_2304A57C4();
    sub_230442244(v10, v11);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      v13 = sub_2304A57C4();
      v14 = *(v9 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
      v15 = MEMORY[0x28223BE20](v13);
      *&v18[-32] = v9;
      *&v18[-24] = v15;
      *&v18[-16] = v16;
      *&v18[-8] = v2;
      MEMORY[0x28223BE20](v15);
      *&v18[-16] = sub_2304648CC;
      *&v18[-8] = v17;

      os_unfair_lock_lock(v14 + 4);
      sub_230464E24(&v19);
      os_unfair_lock_unlock(v14 + 4);

      sub_2304A55D4();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D468D8], v3);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

void sub_23045460C(uint64_t a1)
{
  v3 = v1;
  v20 = a1;
  v4 = sub_2304A53C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A5294();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(v3 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
    v16 = MEMORY[0x28223BE20](Strong);
    v17 = v20;
    *(&v19 - 2) = v3;
    *(&v19 - 1) = v17;
    MEMORY[0x28223BE20](v16);
    *(&v19 - 2) = sub_230464708;
    *(&v19 - 1) = v18;
    os_unfair_lock_lock(v15 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v15 + 4);
    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_2304A5834();
      sub_2304396D0(v13, v3);
      swift_unknownObjectRelease();
      (*(v10 + 8))(v13, v9);
    }
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D468D8], v4);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }
}

uint64_t sub_2304548E0()
{
  v0 = sub_2304A5294();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_2304A5834();
  swift_beginAccess();
  sub_23046B1AC(v7, v5);
  (*(v1 + 8))(v7, v0);
  return swift_endAccess();
}

void sub_230454BA4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2304A53C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(v3 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
    v12 = MEMORY[0x28223BE20](Strong);
    v16[-2] = v3;
    v16[-1] = a1;
    MEMORY[0x28223BE20](v12);
    v16[-2] = sub_23046468C;
    v16[-1] = v13;
    os_unfair_lock_lock(v11 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v11 + 4);
    if (v2)
    {
      __break(1u);
    }

    else
    {
      v14 = sub_2304A57C4();
      sub_230440644(v14, v15);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x277D468D8], v5);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }
}

uint64_t sub_230454DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A5294();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v25[-v17];
  v19 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock_descriptors;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v26 = a2;

  v21 = v20;
  v22 = v27;
  v23 = sub_230487410(sub_2304646E8, v25, v21);
  v27 = v22;
  sub_230445334(v23, v18);

  sub_230464B24(v18, v16, &qword_27DB53FD0, &qword_2304A7428);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    sub_230464970(v18, &qword_27DB53FD0, &qword_2304A7428);
  }

  else
  {
    (*(v5 + 32))(v8, v16, v4);
    swift_beginAccess();
    sub_23045AC48(v8, v13);
    sub_230464970(v13, &qword_27DB53FD0, &qword_2304A7428);
    swift_endAccess();
    (*(v5 + 8))(v8, v4);
    v16 = v18;
  }

  return sub_230464970(v16, &qword_27DB53FD0, &qword_2304A7428);
}

uint64_t sub_230455098()
{
  v0 = sub_2304A5284();
  v2 = v1;
  if (v0 == sub_2304A57C4() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2304A62F4();
  }

  return v4 & 1;
}

uint64_t sub_2304552C0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v45 = a1;
  v4 = sub_2304A53C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - v11;
  v13 = sub_2304A5294();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v39 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v40 = v5;
    v41 = v4;
    v42 = v8;
    v43 = v13;
    v20 = sub_2304A57C4();
    v21 = *(v19 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v22 = MEMORY[0x28223BE20](v20);
    *(&v39 - 4) = v19;
    *(&v39 - 3) = v22;
    *(&v39 - 2) = v23;
    MEMORY[0x28223BE20](v22);
    *(&v39 - 2) = sub_23046466C;
    *(&v39 - 1) = v24;

    os_unfair_lock_lock(v21 + 4);
    sub_230464ECC();
    v25 = v21 + 4;
    if (v2)
    {
      os_unfair_lock_unlock(v25);
      swift_unknownObjectRelease();
    }

    else
    {
      os_unfair_lock_unlock(v25);

      v27 = v47;
      v28 = v43;
      if ((*(v47 + 48))(v12, 1, v43) == 1)
      {
        sub_230464970(v12, &qword_27DB53FD0, &qword_2304A7428);
        (*(v40 + 104))(v42, *MEMORY[0x277D468D0], v41);
        sub_2304A53E4();
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();
        return swift_unknownObjectRelease();
      }

      else
      {
        v29 = v46;
        (*(v27 + 32))(v46, v12, v28);
        sub_2304A5234();
        v30 = *(v3 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection);
        v31 = [v30 remoteToken];
        v32 = sub_2304A5D14();

        v33 = [v31 hasEntitlement_];

        if (v33 & 1) != 0 || (v34 = [v30 remoteToken], v35 = sub_2304A5D14(), v36 = objc_msgSend(v34, sel_hasEntitlement_, v35), v34, v35, (v36))
        {
          v37 = v47;
          v38 = v43;
          (*(v47 + 16))(v44, v29, v43);
          sub_2304A5634();
          swift_unknownObjectRelease();
          return (*(v37 + 8))(v29, v38);
        }

        else
        {
          (*(v40 + 104))(v42, *MEMORY[0x277D468C0], v41);
          sub_2304A53E4();
          sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
          swift_allocError();
          sub_2304A53D4();
          swift_willThrow();
          swift_unknownObjectRelease();
          return (*(v47 + 8))(v29, v43);
        }
      }
    }
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D468D8], v4);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230455B8C()
{
  v0 = sub_2304A53C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 64);
    __swift_project_boxed_opaque_existential_5Tm((Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
    sub_2304A4224();
    sub_2304A4034();

    sub_230464B24(v11, v9, &qword_27DB53F20, &qword_2304A7388);
    sub_2304A55F4();
    swift_unknownObjectRelease();
    return sub_230464970(v11, &qword_27DB53F20, &qword_2304A7388);
  }

  else
  {
    (*(v1 + 104))(v4, *MEMORY[0x277D468D8], v0);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230455F74(uint64_t a1)
{
  v33[1] = a1;
  v2 = sub_2304A53C4();
  v33[0] = *(v2 - 8);
  v3 = *(v33[0] + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5134();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A4BF4();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2304A5714();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v33 - v19;
  v34 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v33[0] = sub_2304A59D4();
    sub_2304A59C4();
    v23 = v12;
    sub_2304A56F4();
    v24 = *(v14 + 8);
    v24(v20, v13);
    sub_2304A59C4();
    v25 = v39;
    sub_2304A5704();
    v26 = (v24)(v18, v13);
    v27 = v33[0];
    v28 = MEMORY[0x2319199F0](v26);
    v29 = *(v22 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v30 = MEMORY[0x28223BE20](v28);
    v33[-6] = v27;
    v33[-5] = v22;
    v33[-4] = v34;
    v33[-3] = v23;
    v33[-2] = v25;
    MEMORY[0x28223BE20](v30);
    v33[-2] = sub_2304645A0;
    v33[-1] = v31;

    os_unfair_lock_lock(v29 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v29 + 4);

    objc_autoreleasePoolPop(v28);
    swift_unknownObjectRelease();
    (*(v37 + 8))(v39, v38);
    return (*(v35 + 8))(v23, v36);
  }

  else
  {
    (*(v33[0] + 104))(v5, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230456474()
{
  v1 = sub_2304A53C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5134();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_2304A5814();
    v14 = sub_2304A5704();
    v19[1] = v19;
    v15 = *(v12 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v16 = MEMORY[0x28223BE20](v14);
    v19[-4] = v13;
    v19[-3] = v12;
    v19[-2] = v0;
    v19[-1] = v10;
    MEMORY[0x28223BE20](v16);
    v19[-2] = sub_230464580;
    v19[-1] = v17;

    os_unfair_lock_lock(v15 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v15 + 4);
    swift_unknownObjectRelease();

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D468D8], v1);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_2304568D0(uint64_t a1)
{
  v2 = sub_2304A53C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A5684();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_2304A5744();
    sub_2304A5734();
    sub_2304A5724();
    a1 = v15;
    v16 = v22;
    sub_230445F6C();
    if (v16)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      sub_2304A5574();
      v17 = v21;
      (*(v21 + 16))(v11, v13, v7);
      v18 = objc_allocWithZone(sub_2304A59B4());
      a1 = sub_2304A59A4();
      swift_unknownObjectRelease();
      (*(v17 + 8))(v13, v7);
    }
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_230456D5C()
{
  v2 = sub_2304A53C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_2304A5764();
    v10 = MEMORY[0x2319199F0]();
    v11 = *(v8 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v12 = MEMORY[0x28223BE20](v10);
    *(&v15 - 4) = v9;
    *(&v15 - 3) = v8;
    *(&v15 - 2) = v0;
    MEMORY[0x28223BE20](v12);
    *(&v15 - 2) = sub_2304643A4;
    *(&v15 - 1) = v13;

    os_unfair_lock_lock(v11 + 4);
    sub_230464E3C(&v16);
    os_unfair_lock_unlock(v11 + 4);

    objc_autoreleasePoolPop(v10);
    if (!v1)
    {
      sub_2304A5574();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230457268@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_2304A53C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D468D8], v4);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }

  v10 = Strong;
  v11 = sub_2304A5764();
  v12 = MEMORY[0x2319199F0]();
  v13 = *(v10 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
  v14 = MEMORY[0x28223BE20](v12);
  v26[-4] = v11;
  v26[-3] = v10;
  v26[-2] = v1;
  MEMORY[0x28223BE20](v14);
  v26[-2] = sub_23046436C;
  v26[-1] = v15;

  os_unfair_lock_lock(v13 + 4);
  sub_23046438C(&v27);
  v16 = v13 + 4;
  if (v2)
  {
    os_unfair_lock_unlock(v16);

    objc_autoreleasePoolPop(v12);
    return swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v16);

  v18 = v27;

  objc_autoreleasePoolPop(v12);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_10;
  }

  v26[2] = *(&v18 + 1);
  v28 = a1;
  v20 = sub_23045A344(v19, 0, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
  v21 = *(sub_2304A4FF4() - 8);
  v26[0] = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26[1] = v20;
  v22 = sub_230488AE4(&v27, (v20 + v26[0]), v19, v18);

  result = sub_230433B3C();
  if (v22 != v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = *(v18 + 16);
  if (!v23)
  {
LABEL_10:

LABEL_11:
    sub_2304A5654();
    return swift_unknownObjectRelease();
  }

  v24 = sub_23045A344(*(v18 + 16), 0, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
  v25 = sub_230488840(&v27, (v24 + v26[0]), v23, v18);
  result = sub_230433B3C();
  if (v25 == v23)
  {
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2304578F0()
{
  v0 = sub_2304A53C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 64);
    __swift_project_boxed_opaque_existential_5Tm((Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
    sub_2304A4264();
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v1 + 104))(v4, *MEMORY[0x277D468D8], v0);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

void sub_230457B04()
{
  v1 = sub_2304A53C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v8 = MEMORY[0x28223BE20](Strong);
    *(&v10 - 2) = v8;
    MEMORY[0x28223BE20](v8);
    *(&v10 - 2) = sub_230464334;
    *(&v10 - 1) = v9;

    os_unfair_lock_lock(v7 + 4);
    sub_230464350(&v11);
    os_unfair_lock_unlock(v7 + 4);
    if (v0)
    {
      __break(1u);
    }

    else
    {

      sub_2304A5574();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D468D8], v1);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }
}

void sub_230457EB4()
{
  v2 = v0;
  v3 = sub_2304A53C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A5124();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = v7;
    v31 = Strong;
    v29 = v3;
    v17 = *(v2 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
    v18 = MEMORY[0x28223BE20](Strong);
    *(&v28 - 2) = v2;
    *(&v28 - 1) = v19;
    v28 = v19;
    MEMORY[0x28223BE20](v18);
    *(&v28 - 2) = sub_2304642E4;
    *(&v28 - 1) = v20;
    os_unfair_lock_lock(v17 + 4);
    sub_230464ECC();
    if (v1)
    {
      os_unfair_lock_unlock(v17 + 4);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v17 + 4);
      v21 = sub_2304A5294();
      if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v22 = sub_2304A5B74();
        __swift_project_value_buffer(v22, qword_28149B008);
        v23 = sub_2304A5B54();
        v24 = sub_2304A5E74();
        v25 = os_log_type_enabled(v23, v24);
        v26 = v30;
        if (v25)
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_230430000, v23, v24, "Cannot send a message for an unknown client descriptor", v27, 2u);
          MEMORY[0x23191A000](v27, -1, -1);
        }

        (*(v4 + 104))(v26, *MEMORY[0x277D468C0], v29);
        sub_2304A53E4();
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_2304A5784();
        sub_23044D59C(v11, v2);
        swift_unknownObjectRelease();
        (*(v32 + 8))(v11, v8);
      }

      sub_230464970(v15, &qword_27DB53FD0, &qword_2304A7428);
    }
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D468D8], v3);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
  }
}

uint64_t sub_23045852C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X2>, char *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock_descriptors;
  swift_beginAccess();
  v7 = *(a1 + v6);

  sub_230436B74(a2, v7, a3);
}

uint64_t sub_2304585C8()
{
  v0 = sub_2304A5124();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5284();
  v7 = v6;
  sub_2304A5784();
  v8 = sub_2304A5114();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  if (v5 == v8 && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2304A62F4();
  }

  return v12 & 1;
}

uint64_t sub_23045870C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v72 = a2;
  v73 = a3;
  v71 = a1;
  v4 = sub_2304A4084();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A57B4();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FC8, &qword_2304A7420);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v60 - v12;
  v74 = sub_2304A55C4();
  v14 = *(v74 - 8);
  v15 = *(v14 + 8);
  MEMORY[0x28223BE20](v74);
  v66 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2304A5124();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE8, &qword_2304A7438);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v60 - v27);
  sub_230464B24(v71, &v60 - v27, &qword_27DB53FE8, &qword_2304A7438);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v24;
    v30 = v18;
    v66 = v14;
    v71 = v13;
    v31 = *v28;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v32 = sub_2304A5B74();
    __swift_project_value_buffer(v32, qword_28149B008);
    v34 = v68;
    v33 = v69;
    v35 = v70;
    (*(v69 + 16))(v68, v67, v70);
    v36 = v31;
    v37 = sub_2304A5B54();
    v38 = sub_2304A5E74();

    LODWORD(v67) = v38;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v30;
      v40 = v29;
      v41 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v75 = v42;
      *v41 = 136446466;
      v61 = v37;
      sub_2304A5784();
      v43 = v40;
      v44 = v63;
      sub_2304A50E4();
      (*(v39 + 8))(v43, v17);
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0]);
      v45 = v65;
      v46 = sub_2304A62D4();
      v48 = v47;
      (*(v64 + 8))(v44, v45);
      (*(v33 + 8))(v34, v35);
      v49 = sub_23046A5C8(v46, v48, &v75);

      *(v41 + 4) = v49;
      *(v41 + 12) = 2114;
      v50 = v31;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v51;
      v52 = v61;
      v53 = v62;
      *v62 = v51;
      _os_log_impl(&dword_230430000, v52, v67, "Failed to receive response for message %{public}s: %{public}@", v41, 0x16u);
      sub_230464970(v53, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x23191A000](v42, -1, -1);
      MEMORY[0x23191A000](v41, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

    v57 = v72;
    v58 = v71;
    v66[7](v71, 1, 1, v74);
    v59 = sub_2304A3F14();
    v57(v58, v59);

    return sub_230464970(v58, &qword_27DB53FC8, &qword_2304A7420);
  }

  else
  {
    (*(v18 + 32))(v24, v28, v17);
    (*(v18 + 16))(v22, v24, v17);
    v54 = v66;
    sub_2304A55B4();
    v55 = v74;
    (*(v14 + 2))(v13, v54, v74);
    (*(v14 + 7))(v13, 0, 1, v55);
    v72(v13, 0);
    sub_230464970(v13, &qword_27DB53FC8, &qword_2304A7420);
    (*(v14 + 1))(v54, v55);
    return (*(v18 + 8))(v24, v17);
  }
}

void sub_230458F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FC8, &qword_2304A7420);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_230464B24(a1, &v13 - v8, &qword_27DB53FC8, &qword_2304A7420);
  v10 = sub_2304A55C4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_230464B8C(&qword_27DB53FD8, MEMORY[0x277D46988]);
    v12 = sub_2304A5454();
    (*(v11 + 8))(v9, v10);
  }

  (*(a3 + 16))(a3, v12, a2);
}

uint64_t sub_230459100()
{
  v2 = sub_2304A53C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_2304A5764();
    v10 = *(v8 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v11 = MEMORY[0x28223BE20](v9);
    *(&v14 - 4) = v11;
    *(&v14 - 3) = v8;
    *(&v14 - 2) = v0;
    MEMORY[0x28223BE20](v11);
    *(&v14 - 2) = sub_230462968;
    *(&v14 - 1) = v12;

    os_unfair_lock_lock(v10 + 4);
    sub_230464E3C(&v15);
    os_unfair_lock_unlock(v10 + 4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {

      sub_2304A5574();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D468D8], v2);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    return swift_willThrow();
  }
}

uint64_t sub_230459604(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230459624(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281499DA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281499DA8);
    }
  }
}

uint64_t sub_23045969C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A4F74();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v62 - v9;
  v81 = sub_2304A4084();
  v72 = *(v81 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x28223BE20](v81);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540F0, &unk_2304A7B90);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  result = MEMORY[0x28223BE20](v16);
  v75 = &v62 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v74 = v18;
  v69 = v8;
  v70 = a2;
  v20 = 0;
  v66 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v63 = (v24 + 63) >> 6;
  v64 = v22;
  v65 = v72 + 16;
  v79 = (v72 + 32);
  v77 = v82 + 16;
  v78 = (v82 + 32);
  v67 = (v72 + 8);
  v68 = (v82 + 8);
  while (v26)
  {
    v76 = (v26 - 1) & v26;
    v27 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v34 = v66;
    v36 = v71;
    v35 = v72;
    v37 = v81;
    (*(v72 + 16))(v71, *(v66 + 48) + *(v72 + 72) * v27, v81);
    v38 = *(v34 + 56);
    v39 = v82;
    v40 = v80;
    (*(v82 + 16))(v80, v38 + *(v82 + 72) * v27, v4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
    v42 = *(v41 + 48);
    v43 = *(v35 + 32);
    v31 = v74;
    v43(v74, v36, v37);
    (*(v39 + 32))(v31 + v42, v40, v4);
    (*(*(v41 - 8) + 56))(v31, 0, 1, v41);
    v30 = v75;
    v26 = v76;
LABEL_17:
    sub_230464ABC(v31, v30, &qword_27DB540F0, &unk_2304A7B90);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
    v45 = (*(*(v44 - 8) + 48))(v30, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = v4;
    v49 = v73;
    v50 = v81;
    (*v79)(v73, v30, v81);
    v51 = v69;
    (*v78)(v69, v30 + v47, v48);
    v52 = v70;
    v53 = sub_230469E70(v49);
    v55 = v54;
    (*v67)(v49, v50);
    if ((v55 & 1) == 0)
    {
      (*v68)(v51, v48);
      return 0;
    }

    v56 = v82;
    v57 = *(v52 + 56) + *(v82 + 72) * v53;
    v58 = v80;
    (*(v82 + 16))(v80, v57, v48);
    sub_230464B8C(&qword_27DB540F8, MEMORY[0x277D46770]);
    v59 = sub_2304A5D04();
    v60 = *(v56 + 8);
    v60(v58, v48);
    result = (v60)(v51, v48);
    v4 = v48;
    if ((v59 & 1) == 0)
    {
      return v46;
    }
  }

  if (v63 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v63;
  }

  v29 = v28 - 1;
  v31 = v74;
  v30 = v75;
  while (1)
  {
    v32 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v32 >= v63)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
      (*(*(v61 - 8) + 56))(v31, 1, 1, v61);
      v26 = 0;
      v20 = v29;
      goto LABEL_17;
    }

    v33 = *(v64 + 8 * v32);
    ++v20;
    if (v33)
    {
      v76 = (v33 - 1) & v33;
      v27 = __clz(__rbit64(v33)) | (v32 << 6);
      v20 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *sub_230459D08(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54218, &qword_2304A7578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54220, &unk_2304A7580);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_230459E50(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54168, &qword_2304A7520);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54170, &qword_2304A7528) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54170, &qword_2304A7528) - 8);
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

size_t sub_23045A0B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_23045A294(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB540A8, &qword_2304A7498);
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

size_t sub_23045A344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
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

uint64_t sub_23045A47C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
    v2 = sub_2304A60C4();
    v16 = v2;
    sub_2304A6004();
    if (sub_2304A6074())
    {
      sub_2304A4984();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_23046B9E0(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
        result = sub_2304A5CF4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_2304A6074());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23045A6EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_2304A60C4();
    v22 = v8;
    sub_2304A6004();
    if (sub_2304A6074())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          a6(v16 + 1);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_2304A5F64();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_2304A6074());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

unint64_t sub_23045A8DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2304A4984();
  sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
  sub_2304A5CF4();
  v5 = -1 << *(a2 + 32);
  result = sub_2304A5FE4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_23045A9C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2304A5F64();
  v5 = -1 << *(a2 + 32);
  result = sub_2304A5FE4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23045AA48()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_2304A6084();

    if (v4)
    {
      v5 = sub_23045B25C();

      return v5;
    }

    return 0;
  }

  sub_2304A4984();
  v7 = *(v1 + 40);
  sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
  v8 = sub_2304A5CF4();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8]);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_2304A5D04())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23046CFC8();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_23045B5C8(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_23045AC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2304A5294();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_230464B8C(&qword_281499F60, MEMORY[0x277D46850]);
  v35 = a1;
  v13 = sub_2304A5CF4();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
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
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_230464B8C(&unk_281499F50, MEMORY[0x277D46850]);
      v22 = sub_2304A5D04();
      (*(v19 - 8))(v10, v6);
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
      sub_23046D118();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_23045B7B4(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_23045AF30(void *a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t, id))
{
  v6 = *v4;
  if ((*v4 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = *v4;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = *v4;

    v10 = a1;
    v11 = sub_2304A6084();

    if (v11)
    {
      v12 = a4(v8, v10);

      return v12;
    }

    return 0;
  }

  v15 = v4;
  a2(0);
  v16 = *(v6 + 40);
  v17 = sub_2304A5F64();
  v18 = -1 << *(v6 + 32);
  v19 = v17 & ~v18;
  if (((*(v6 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v6 + 48) + 8 * v19);
    v22 = sub_2304A5F74();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v6 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  v27 = *v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v19);
  sub_23045BABC(v19);
  result = v26;
  *v15 = v27;
  return result;
}

uint64_t sub_23045B0CC()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_2304A6044();
  v4 = swift_unknownObjectRetain();
  v5 = sub_23045A6EC(v4, v3, &qword_27DB54500, &qword_2304A7568, type metadata accessor for Client, sub_23046B76C);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_2304A5F64();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for Client();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_2304A5F74();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
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

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_23045BABC(v9);
  result = sub_2304A5F74();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23045B25C()
{
  v1 = *v0;

  v2 = sub_2304A6044();
  v3 = swift_unknownObjectRetain();
  v4 = sub_23045A47C(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  sub_2304A4984();
  sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);

  v6 = sub_2304A5CF4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8]);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_2304A5D04())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_23045B5C8(v8);
  result = sub_2304A5D04();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23045B438()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_2304A6044();
  v4 = swift_unknownObjectRetain();
  v5 = sub_23045A6EC(v4, v3, &qword_27DB541A0, &unk_2304A7558, _s14ReplicatorCore6ClientCMa_0, sub_23046BFD0);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_2304A5F64();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s14ReplicatorCore6ClientCMa_0();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_2304A5F74();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
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

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_23045BABC(v9);
  result = sub_2304A5F74();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23045B5C8(unint64_t result)
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

    v9 = sub_2304A5FC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_2304A4984();
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_2304A5CF4() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23045B7B4(int64_t a1)
{
  v3 = sub_2304A5294();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_2304A5FC4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_230464B8C(&qword_281499F60, MEMORY[0x277D46850]);
        v27 = sub_2304A5CF4();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_23045BABC(unint64_t result)
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

    v9 = sub_2304A5FC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_2304A5F64();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

uint64_t sub_23045BCA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230469C40(a2, a3);
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
      sub_23046E1E8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_230469C40(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2304A6314();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_230471078();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_23045BE1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_230469CB8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23046E774(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_230469CB8(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_2304A4984();
        result = sub_2304A6314();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_23047134C();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

void sub_23045BF7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2304A4FF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_230469D9C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2304714B0();
      goto LABEL_7;
    }

    sub_23046EA58(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_230469D9C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_23045CAC8(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_2304A6314();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_23045C148(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2304A4084();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_230469E70(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2304719EC();
      goto LABEL_7;
    }

    sub_23046F280(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_230469E70(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23045CB80(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2304A6314();
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
  v22 = v21[7];
  v23 = sub_2304A4F74();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

unint64_t sub_23045C34C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23046A0EC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23046FB10(v14, a3 & 1);
      v18 = *v4;
      result = sub_23046A0EC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_2304A6314();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_230471FCC();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_23045C498(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230469C40(a2, a3);
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
      sub_23046FD80(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_230469C40(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2304A6314();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_230472128();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_23045C658(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_230469C40(a2, a3);
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
    v32 = *v11;
    v33 = sub_230469C40(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2304A6314();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  sub_23045CC74(v18, a2, a3, a1, v24, a8);
}

uint64_t sub_23045C810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23046A0EC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_230472548();
      goto LABEL_7;
    }

    sub_2304703D4(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_23046A0EC(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2304A6314();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2304A5054();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_23045CD28(v10, a2, a1, v16);
}

_OWORD *sub_23045C978(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_230469C40(a2, a3);
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
      sub_2304727B0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_230470720(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_230469C40(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2304A6314();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_230462958(a1, v23);
  }

  else
  {
    sub_23045CDD4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_23045CAC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2304A4FF4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_23045CB80(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2304A4084();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2304A4F74();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23045CC74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_23045CD28(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2304A5054();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_23045CDD4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_230462958(a4, (a5[7] + 32 * a1));
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

uint64_t sub_23045CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = sub_23045E074(v17, v11, a3, v9, a2, a5);
  result = MEMORY[0x23191A000](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23045CFD0(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    result = sub_2304A6044();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(v3 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2304A6004();
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
    result = sub_2304A5E24();
    a1 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      return sub_230433B3C();
    }

    while (1)
    {
      sub_23045AA48();

      v8 = v15;
      v9 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_2304A6074())
      {
        sub_2304A4984();
        swift_dynamicCast();
        v15 = v8;
        v16 = v9;
        if (v18)
        {
          continue;
        }
      }

      return sub_230433B3C();
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      return sub_230433B3C();
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23045D208(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v80 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v5 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2304A6004();
      sub_2304A4984();
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
      sub_2304A5E24();
      v5 = v75;
      v7 = v76;
      v8 = v77;
      v9 = v78;
      v10 = v79;
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      v7 = a1 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(a1 + 56);

      v9 = 0;
    }

    v70 = v5;
    v71 = v7;
    v72 = v8;
    v73 = v9;
    v59 = v8;
    v14 = (v8 + 64) >> 6;
    v66 = (v4 + 56);
    v74 = v10;
    v62 = v14;
    for (i = v7; ; v7 = i)
    {
      if (v5 < 0)
      {
        v22 = sub_2304A6074();
        if (!v22)
        {
          goto LABEL_61;
        }

        v67 = v22;
        sub_2304A4984();
        swift_dynamicCast();
        v21 = v68;
        v18 = v9;
        v2 = v10;
        if (!v68)
        {
          goto LABEL_61;
        }

        goto LABEL_25;
      }

      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

        v18 = v16;
        goto LABEL_21;
      }

      if (v14 <= (v9 + 1))
      {
        v17 = v9 + 1;
      }

      else
      {
        v17 = v14;
      }

      v18 = v17 - 1;
      v19 = v9;
      while (1)
      {
        v16 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        if (v16 >= v14)
        {
          break;
        }

        v15 = *(v7 + 8 * v16);
        ++v19;
        if (v15)
        {
          goto LABEL_20;
        }
      }

      v21 = 0;
      v2 = 0;
LABEL_21:
      v70 = v5;
      v71 = v7;
      v72 = v59;
      v73 = v18;
      v74 = v2;
      if (!v21)
      {
LABEL_61:
        sub_230433B3C();
        goto LABEL_62;
      }

LABEL_25:
      v64 = v21;
      v69 = v21;
      v23 = *(v4 + 40);
      sub_2304A4984();
      v61 = sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
      v24 = sub_2304A5CF4();
      v25 = -1 << *(v4 + 32);
      v9 = v24 & ~v25;
      v7 = v9 >> 6;
      v3 = 1 << v9;
      if (((1 << v9) & v66[v9 >> 6]) != 0)
      {
        v26 = ~v25;
        v27 = sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8]);
        v68 = *(*(v4 + 48) + 8 * v9);
        for (j = v27; (sub_2304A5D04() & 1) == 0; v68 = *(*(v4 + 48) + 8 * v9))
        {
          v9 = (v9 + 1) & v26;
          v7 = v9 >> 6;
          v3 = 1 << v9;
          if (((1 << v9) & v66[v9 >> 6]) == 0)
          {
            goto LABEL_10;
          }
        }

        v29 = *(v4 + 32);
        v56 = ((1 << v29) + 63) >> 6;
        v6 = 8 * v56;
        if ((v29 & 0x3Fu) <= 0xD)
        {
LABEL_32:
          v57 = &v55;
          MEMORY[0x28223BE20](v28);
          v31 = &v55 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
          memcpy(v31, v66, v30);
          v32 = *&v31[8 * v7] & ~v3;
          v33 = *(v4 + 16);
          v58 = v31;
          *&v31[8 * v7] = v32;
          v9 = v33 - 1;
          v34 = v62;
          v35 = i;
          v60 = v5;
          while (1)
          {
            if (v5 < 0)
            {
              v37 = sub_2304A6074();
              if (!v37)
              {
                goto LABEL_60;
              }

              v67 = v37;
              swift_dynamicCast();
              v7 = v68;
              if (!v68)
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (!v2)
              {
                if (v34 <= (v18 + 1))
                {
                  v38 = v18 + 1;
                }

                else
                {
                  v38 = v34;
                }

                v39 = v38 - 1;
                while (1)
                {
                  v36 = v18 + 1;
                  if (__OFADD__(v18, 1))
                  {
                    break;
                  }

                  if (v36 >= v34)
                  {
                    v7 = 0;
                    v2 = 0;
                    goto LABEL_49;
                  }

                  v2 = *(v35 + 8 * v36);
                  ++v18;
                  if (v2)
                  {
                    goto LABEL_48;
                  }
                }

                __break(1u);
                goto LABEL_65;
              }

              v36 = v18;
LABEL_48:
              v40 = __clz(__rbit64(v2));
              v2 &= v2 - 1;
              v7 = *(*(v5 + 48) + ((v36 << 9) | (8 * v40)));

              v39 = v36;
LABEL_49:
              v70 = v5;
              v71 = v35;
              v72 = v59;
              v73 = v39;
              v18 = v39;
              v74 = v2;
              if (!v7)
              {
LABEL_60:
                v4 = sub_230487D48(v58, v56, v9, v4);
                goto LABEL_61;
              }
            }

            v64 = v9;
            v69 = v7;
            v41 = *(v4 + 40);
            v42 = sub_2304A5CF4();
            v43 = v4;
            v44 = -1 << *(v4 + 32);
            v45 = v42 & ~v44;
            v3 = v45 >> 6;
            v46 = 1 << v45;
            if (((1 << v45) & v66[v45 >> 6]) == 0)
            {
              break;
            }

            v47 = ~v44;
            while (1)
            {
              v68 = *(*(v43 + 48) + 8 * v45);
              if (sub_2304A5D04())
              {
                break;
              }

              v45 = (v45 + 1) & v47;
              v3 = v45 >> 6;
              v46 = 1 << v45;
              if (((1 << v45) & v66[v45 >> 6]) == 0)
              {
                goto LABEL_33;
              }
            }

            v48 = v58[v3];
            v58[v3] = v48 & ~v46;
            v4 = v43;
            if ((v48 & v46) != 0)
            {
              v35 = i;
              v9 = v64 - 1;
              v5 = v60;
              v34 = v62;
              if (__OFSUB__(v64, 1))
              {
                goto LABEL_66;
              }

              if (v64 == 1)
              {

                v4 = MEMORY[0x277D84FA0];
                goto LABEL_61;
              }
            }

            else
            {
LABEL_34:
              v5 = v60;
              v34 = v62;
              v35 = i;
              v9 = v64;
            }
          }

LABEL_33:

          v4 = v43;
          goto LABEL_34;
        }

LABEL_67:
        v51 = v6;

        v52 = v51;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v53 = swift_slowAlloc();
          memcpy(v53, v66, v52);
          v54 = sub_23045ED18(v53, v56, v4, v9, &v70);

          MEMORY[0x23191A000](v53, -1, -1);
          v4 = v54;
          goto LABEL_61;
        }

        goto LABEL_32;
      }

LABEL_10:

      v9 = v18;
      v10 = v2;
      v14 = v62;
    }
  }

  v4 = MEMORY[0x277D84FA0];
LABEL_62:
  v49 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_23045D958(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_2304A6044();
      a2 = sub_23045A47C(v4, v5);
      goto LABEL_8;
    }

    sub_2304A4984();
    v7 = MEMORY[0x277D84FA0];
    v18 = MEMORY[0x277D84FA0];
    sub_2304A6004();
    if (sub_2304A6074())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = *(a1 + 40), sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]), v10 = sub_2304A5CF4(), v11 = -1 << *(a1 + 32), v12 = v10 & ~v11, ((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
        {
          v13 = ~v11;
          sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8]);
          while (1)
          {
            v16 = *(*(a1 + 48) + 8 * v12);

            v14 = sub_2304A5D04();

            if (v14)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v7 + 16);
          if (*(v7 + 24) <= v15)
          {
            sub_23046B9E0(v15 + 1);
          }

          v7 = v18;
          sub_23045A8DC(v17, v18);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_2304A6074());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_23045E114(a1, a2);
    }

    return sub_23045E2B4(a1, a2);
  }
}

uint64_t sub_23045DC04(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v27 = MEMORY[0x277D84FA0];
    sub_2304A6004();
    if (sub_2304A6074())
    {
      sub_2304A4984();
      v7 = MEMORY[0x277D84F68];
      while (1)
      {
        swift_dynamicCast();
        v8 = v6(&v26);
        if (v3)
        {
          break;
        }

        v9 = v26;
        if (v8)
        {
          v10 = v6;
          v11 = v5;
          v12 = v7;
          v13 = *(v4 + 16);
          if (*(v4 + 24) <= v13)
          {
            sub_23046B9E0(v13 + 1);
          }

          v4 = v27;
          v14 = *(v27 + 40);
          sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
          result = sub_2304A5CF4();
          v16 = v4 + 56;
          v17 = -1 << *(v4 + 32);
          v18 = result & ~v17;
          v19 = v18 >> 6;
          if (((-1 << v18) & ~*(v4 + 56 + 8 * (v18 >> 6))) != 0)
          {
            v20 = __clz(__rbit64((-1 << v18) & ~*(v4 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
            v7 = v12;
            v5 = v11;
            v6 = v10;
          }

          else
          {
            v21 = 0;
            v22 = (63 - v17) >> 6;
            v7 = v12;
            v5 = v11;
            v6 = v10;
            do
            {
              if (++v19 == v22 && (v21 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v23 = v19 == v22;
              if (v19 == v22)
              {
                v19 = 0;
              }

              v21 |= v23;
              v24 = *(v16 + 8 * v19);
            }

            while (v24 == -1);
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          }

          *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
          *(*(v4 + 48) + 8 * v20) = v9;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!sub_2304A6074())
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v25 = sub_230487158(a1, a2, a3);
    if (!v3)
    {
      return v25;
    }
  }

  return v4;
}

void *sub_23045DEA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_23045E844(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_23045DF34(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    v10 = sub_2304618F4(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_23045DFD8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_230461F90(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_23045E074(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_23045E114(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_23045E478(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_230464898(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x23191A000](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_23045E2B4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_23045E844(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_23045DEA4(v12, v6, a2, a1);

    MEMORY[0x23191A000](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23045E478(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2304A6004();
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
    result = sub_2304A5E24();
    v4 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
    v9 = v42;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v29 = 0;
  v13 = (v7 + 64) >> 6;
  v34 = a4 + 56;
  v31 = v4;
  v32 = v13;
  v33 = v6;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!sub_2304A6074() || (sub_2304A4984(), swift_dynamicCast(), v18 = v43, v16 = v8, v17 = v9, !v43))
  {
LABEL_28:
    sub_230433B3C();

    return sub_230487D48(a1, a2, v29, a4);
  }

  while (1)
  {
    v43 = v18;
    v19 = *(a4 + 40);
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
    v20 = sub_2304A5CF4();
    v21 = -1 << *(a4 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v34 + 8 * (v22 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8]);
    v36 = *(*(a4 + 48) + 8 * v22);
    if ((sub_2304A5D04() & 1) == 0)
    {
      v25 = ~v21;
      while (1)
      {
        v22 = (v22 + 1) & v25;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v34 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v37 = *(*(a4 + 48) + 8 * v22);
        if (sub_2304A5D04())
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v4 = v31;
LABEL_10:
      v13 = v32;
      v6 = v33;
      v9 = v17;
      v8 = v16;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

LABEL_24:

    v4 = v31;
    v26 = a1[v23];
    a1[v23] = v26 | v24;
    if ((v26 & v24) != 0)
    {
      goto LABEL_10;
    }

    v27 = __OFADD__(v29++, 1);
    v13 = v32;
    v6 = v33;
    v9 = v17;
    if (v27)
    {
      goto LABEL_30;
    }

    v8 = v16;
    if (v31 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_28;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_23045E844(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v41 = result;
  if (*(a4 + 16) < *(a3 + 16))
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v44 = 0;
    v45 = a3 + 56;
    v40 = v11;
    while (1)
    {
      if (!v10)
      {
        v13 = v6;
        while (1)
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_44;
          }

          if (v6 >= v11)
          {
            goto LABEL_42;
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
          if (v14)
          {
            v12 = __clz(__rbit64(v14));
            v42 = (v14 - 1) & v14;
            goto LABEL_15;
          }
        }
      }

      v12 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_15:
      v52 = *(*(v4 + 48) + 8 * (v12 | (v6 << 6)));
      v15 = *(v5 + 40);
      sub_2304A4984();
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);

      v16 = sub_2304A5CF4();
      v17 = -1 << *(v5 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v45 + 8 * (v18 >> 6))) == 0)
      {
        goto LABEL_6;
      }

      sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8]);
      v49 = *(*(a3 + 48) + 8 * v18);
      if ((sub_2304A5D04() & 1) == 0)
      {
        break;
      }

LABEL_20:

      v41[v19] |= v20;
      v4 = a4;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_45;
      }

      ++v44;
LABEL_7:
      v5 = a3;
      v11 = v40;
      v10 = v42;
    }

    v21 = ~v17;
    while (1)
    {
      v18 = (v18 + 1) & v21;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v45 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      v50 = *(*(a3 + 48) + 8 * v18);
      if (sub_2304A5D04())
      {
        goto LABEL_20;
      }
    }

LABEL_6:

    v4 = a4;
    goto LABEL_7;
  }

  v44 = 0;
  v22 = 0;
  v23 = a3 + 56;
  v24 = 1 << *(a3 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(a3 + 56);
  v27 = (v24 + 63) >> 6;
  v28 = a4 + 56;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v46 = (v26 - 1) & v26;
LABEL_34:
    v43 = v29 | (v22 << 6);
    v32 = *(*(v5 + 48) + 8 * v43);
    v33 = *(v4 + 40);
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);

    v34 = sub_2304A5CF4();
    v4 = a4;
    v35 = -1 << *(a4 + 32);
    v36 = v34 & ~v35;
    if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
    {
      v37 = ~v35;
      sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8]);
      while (1)
      {
        v51 = *(*(v4 + 48) + 8 * v36);
        if (sub_2304A5D04())
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        v4 = a4;
        if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v26 = v46;
      v38 = __OFADD__(v44++, 1);
      v5 = a3;
      v4 = a4;
      if (v38)
      {
        __break(1u);
LABEL_42:

        return sub_230487D48(v41, a2, v44, v5);
      }
    }

    else
    {
LABEL_26:

      v26 = v46;
      v5 = a3;
    }
  }

  v30 = v22;
  while (1)
  {
    v22 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v22 >= v27)
    {
      goto LABEL_42;
    }

    v31 = *(v23 + 8 * v22);
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v46 = (v31 - 1) & v31;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_23045ED18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v26 = result;
  v27 = v7 - 1;
  v29 = a3 + 56;
  while (1)
  {
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_2304A6074())
      {
        goto LABEL_29;
      }

      sub_2304A4984();
      swift_dynamicCast();
      if (!v30)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    v8 = v5[3];
    v9 = v5[4];
    if (!v9)
    {
      break;
    }

    v10 = v5[3];
LABEL_16:
    v14 = (v9 - 1) & v9;
    v15 = *(*(*v5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));

    v13 = v10;
LABEL_17:
    v5[3] = v13;
    v5[4] = v14;
    if (!v15)
    {
LABEL_29:

      return sub_230487D48(v26, a2, v27, a3);
    }

LABEL_18:
    v16 = *(a3 + 40);
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
    v17 = sub_2304A5CF4();
    v18 = -1 << *(a3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v29 + 8 * (v19 >> 6))) == 0)
    {
      goto LABEL_2;
    }

    sub_230464B8C(&unk_281499FC0, MEMORY[0x277D464B8]);
    v30 = *(*(a3 + 48) + 8 * v19);
    if (sub_2304A5D04())
    {
LABEL_23:

      v23 = v26[v20];
      v26[v20] = v23 & ~v21;
      if ((v23 & v21) != 0)
      {
        v5 = a5;
        v24 = v27 - 1;
        if (__OFSUB__(v27, 1))
        {
          goto LABEL_31;
        }

        --v27;
        if (!v24)
        {
          return MEMORY[0x277D84FA0];
        }
      }

      else
      {
        v5 = a5;
      }
    }

    else
    {
      v22 = ~v18;
      while (1)
      {
        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v29 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v30 = *(*(a3 + 48) + 8 * v19);
        if (sub_2304A5D04())
        {
          goto LABEL_23;
        }
      }

LABEL_2:

      v5 = a5;
    }
  }

  v11 = (v5[2] + 64) >> 6;
  if (v11 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = (v5[2] + 64) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_17;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v8;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23045F028(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v40 = sub_2304A5224();
  v5 = *(*(v40 - 8) + 64);
  result = MEMORY[0x28223BE20](v40);
  v38 = a3;
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v35 = v7 + 16;
  v36 = v7;
  v33 = 0;
  v34 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v20 = v39;
    v19 = v40;
LABEL_11:
    v23 = v38[7];
    v24 = (v38[6] + 16 * v18);
    v25 = v24[1];
    v41[0] = *v24;
    v41[1] = v25;
    (*(v36 + 16))(v20, v23 + *(v36 + 72) * v18, v19);

    v26 = v42;
    v27 = v37(v41, v20);
    v28 = v20;
    v42 = v26;
    if (v26)
    {
      (*v34)(v20, v19);
    }

    v29 = v27;
    (*v34)(v28, v19);

    if (v29)
    {
      *(v32 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_23045F430(v32, v31, v33, v38);
      }
    }
  }

  v21 = v9;
  v20 = v39;
  v19 = v40;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_23045F430(v32, v31, v33, v38);
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23045F29C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v21 = 0;
  v20 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v24 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v26 = *(*(a3 + 48) + 8 * v14);
    v16 = v14;
    v25 = *(v15 + 8 * v14);

    v17 = a4(&v26, &v25);

    if (v4)
    {
      return result;
    }

    v9 = v24;
    if (v17)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_23045F7B0(v20, a2, v21, a3);
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

    if (v5 >= v10)
    {
      return sub_23045F7B0(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v24 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23045F430(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = sub_2304A5224();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540C0, &qword_2304A74A8);
  result = sub_2304A62A4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    sub_2304A6394();

    v54 = v28;
    sub_2304A5D54();
    result = sub_2304A63B4();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
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

uint64_t sub_23045F7B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FB8, &unk_2304A7A50);
  result = sub_2304A62A4();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v29 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v30 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);
    v18 = *(v8 + 40);
    sub_2304A4984();
    sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);

    result = sub_2304A5CF4();
    v19 = -1 << *(v8 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v8 + 48) + 8 * v22) = v16;
    *(*(v8 + 56) + 8 * v22) = v17;
    ++*(v8 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v9 = v30;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v30 = (v14 - 1) & v14;
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

char *sub_23045FA3C(char *a1, int64_t a2, char a3)
{
  result = sub_23045FBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23045FA5C(size_t a1, int64_t a2, char a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB540B8, &qword_2304A74A0, MEMORY[0x277D46840]);
  *v3 = result;
  return result;
}

size_t sub_23045FAA0(size_t a1, int64_t a2, char a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB54088, &qword_2304A7480, MEMORY[0x277D46370]);
  *v3 = result;
  return result;
}

size_t sub_23045FAE4(size_t a1, int64_t a2, char a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB53FB0, &unk_2304A7410, MEMORY[0x277D46770]);
  *v3 = result;
  return result;
}

size_t sub_23045FB28(size_t a1, int64_t a2, char a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB53FA0, &qword_2304A7400, MEMORY[0x277D46508]);
  *v3 = result;
  return result;
}

size_t sub_23045FB6C(size_t a1, int64_t a2, char a3)
{
  result = sub_23045FCBC(a1, a2, a3, *v3, &qword_27DB53FA8, &qword_2304A7408, MEMORY[0x277D46670]);
  *v3 = result;
  return result;
}

char *sub_23045FBB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F70, &qword_2304A73D0);
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

size_t sub_23045FCBC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_23045FE98(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2304A6044();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_23045A294(v2, 0);

    v1 = sub_230488614(&v5, v3 + 4, v2, v1);
    sub_230433B3C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_23045FF48(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2319195D0](a1, a2, v7);
      type metadata accessor for Client();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for Client();
    if (sub_2304A6024() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2304A6034();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2304A5F64();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2304A5F74();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_230460148@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_2304A5294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_23046020C(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    result = sub_2304A61D4();
    if (result == *(a4 + 36))
    {
      sub_2304A61E4();
      sub_2304A4984();
      swift_dynamicCast();
      sub_230469CB8(v9);
      v6 = v5;

      if (v6)
      {
        sub_2304A61B4();
        v7 = sub_2304A6204();
        swift_unknownObjectRelease();
        return v7;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  result = sub_2304A5FD4();
  v8 = *(a4 + 36);
  return result;
}

uint64_t sub_230460364(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_2304A41D4();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = sub_2304A41F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v12 + *(v14 + 72) * a3;

  return v15(a2, v16, v13);
}

uint64_t sub_230460490(uint64_t result, unint64_t a2, int a3, char a4, uint64_t a5, void (*a6)(void))
{
  v8 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = sub_2304A61D4();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_2304A61E4();
      sub_2304A4984();
      swift_dynamicCast();
      a2 = sub_230469CB8(v14);
      v12 = v11;

      if (v12)
      {
LABEL_12:
        v13 = *(a5 + 56);
        v10 = *(*(a5 + 48) + 8 * a2);
        *v8 = *(v13 + 8 * a2);

        return v10;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2304A6214();
    sub_2304A4984();
    swift_dynamicCast();
    v10 = v14;
    a6(0);
    swift_dynamicCast();
    *v8 = v14;
    return v10;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_230460650(void *a1, int a2, uint64_t a3, char *a4)
{
  v7 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&a4[v7] = v8;
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock_descriptors] = MEMORY[0x277D84FA0];
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_pid] = a2;
  *(v9 + 8) = &off_28451BB90;
  swift_unknownObjectWeakAssign();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for Client();
  v10 = a1;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_230460740()
{
  v1 = v0;
  v94 = *MEMORY[0x277D85DE8];
  v89 = sub_2304A3F34();
  v2 = *(v89 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v89);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A3FC4();
  v84 = *(v6 - 8);
  v7 = *(v84 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v85 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v81 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v81 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v81 - v15;
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  v92 = 0;
  v19 = [v18 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:&v92];

  v20 = v92;
  if (v19)
  {
    v83 = v17;
    sub_2304A3F74();
    v21 = v20;

    v92 = 0x746163696C706572;
    v93 = 0xEB0000000064726FLL;
    v22 = *MEMORY[0x277CC91D8];
    v87 = v6;
    v90 = v14;
    v82 = v2[13];
    v23 = v5;
    v24 = v5;
    v25 = v89;
    v82(v24, v22, v89);
    v81 = sub_2304645C4();
    v26 = v88;
    v86 = v16;
    sub_2304A3FB4();
    v27 = v2[1];
    v27(v23, v25);
    v92 = 0xD000000000000011;
    v93 = 0x80000002304A8320;
    v82(v23, v22, v25);
    v28 = v90;
    v29 = v87;
    sub_2304A3FB4();
    v27(v23, v25);
    v30 = v29;
    v31 = v84;
    v88 = *(v84 + 8);
    v89 = v84 + 8;
    (v88)(v26, v30);
    if (qword_281499E38 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v32 = sub_2304A5B74();
      v33 = __swift_project_value_buffer(v32, qword_28149B008);
      v34 = v85;
      (*(v31 + 2))(v85, v28, v30);
      v84 = v33;
      v35 = sub_2304A5B54();
      v36 = sub_2304A5E94();
      v37 = v28;
      if (os_log_type_enabled(v35, v36))
      {
        v38 = v30;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v92 = v40;
        *v39 = 136380675;
        sub_230464B8C(&qword_28149AC60, MEMORY[0x277CC9260]);
        v41 = sub_2304A62D4();
        v42 = v34;
        v44 = v43;
        (v88)(v42, v38);
        v45 = sub_23046A5C8(v41, v44, &v92);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_230430000, v35, v36, "Loading predefined client descriptors from %{private}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        MEMORY[0x23191A000](v40, -1, -1);
        v46 = v39;
        v30 = v38;
        MEMORY[0x23191A000](v46, -1, -1);
      }

      else
      {

        (v88)(v34, v30);
      }

      v48 = v86;
      v49 = [v83 defaultManager];
      sub_2304A3F94();
      v50 = sub_2304A5D14();

      v92 = 0;
      v51 = [v49 contentsOfDirectoryAtPath:v50 error:&v92];

      v31 = v92;
      if (!v51)
      {
        v65 = v92;
        sub_2304A3F24();

        swift_willThrow();
        v66 = v88;
        (v88)(v37, v30);
        v66(v48, v30);
        goto LABEL_31;
      }

      v52 = sub_2304A5DC4();
      v53 = v31;

      v28 = *(v52 + 16);
      if (v28)
      {
        v54 = 0;
        v55 = (v52 + 40);
        v83 = (v28 - 1);
        v56 = MEMORY[0x277D84F90];
        v85 = (v52 + 40);
        do
        {
          v57 = &v55[16 * v54];
          v31 = v54;
          while (1)
          {
            if (v31 >= *(v52 + 16))
            {
              __break(1u);
              goto LABEL_33;
            }

            v30 = *(v57 - 1);
            v58 = *v57;
            v54 = v31 + 1;

            if (sub_2304A5DA4())
            {
              break;
            }

            v57 += 16;
            ++v31;
            if (v28 == v54)
            {
              goto LABEL_23;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = v56;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23045FA3C(0, v56[2] + 1, 1);
            v56 = v92;
          }

          v61 = v56[2];
          v60 = v56[3];
          v62 = v61 + 1;
          if (v61 >= v60 >> 1)
          {
            v64 = v61 + 1;
            v82 = v61;
            sub_23045FA3C((v60 > 1), v61 + 1, 1);
            v62 = v64;
            v61 = v82;
            v56 = v92;
          }

          v56[2] = v62;
          v63 = &v56[2 * v61];
          v63[4] = v30;
          v63[5] = v58;
          v55 = v85;
        }

        while (v83 != v31);
      }

      else
      {
        v56 = MEMORY[0x277D84F90];
      }

LABEL_23:

      v67 = sub_2304A3EF4();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      v70 = sub_2304A3EE4();
      v91 = MEMORY[0x277D84F98];
      v28 = v56[2];
      if (!v28)
      {
        break;
      }

      v71 = 0;
      v30 = v56 + 5;
      while (v71 < v56[2])
      {
        v73 = *(v30 - 1);
        v72 = *v30;

        v31 = MEMORY[0x2319199F0](v74);
        sub_23045234C(v90, v73, v72, v70, &v91);
        if (v1)
        {
          objc_autoreleasePoolPop(v31);
          __break(1u);
          return;
        }

        v1 = 0;

        ++v71;
        objc_autoreleasePoolPop(v31);
        v30 += 2;
        if (v28 == v71)
        {
          goto LABEL_28;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
    }

LABEL_28:

    v75 = sub_2304A5B54();
    v76 = sub_2304A5E94();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 134283521;
      swift_beginAccess();
      *(v77 + 4) = *(v91 + 16);
      _os_log_impl(&dword_230430000, v75, v76, "Loaded %{private}ld predefined descriptors", v77, 0xCu);
      MEMORY[0x23191A000](v77, -1, -1);
    }

    v78 = v87;
    v79 = v88;
    (v88)(v90, v87);
    v79(v86, v78);
    swift_beginAccess();
  }

  else
  {
    v47 = v92;
    sub_2304A3F24();

    swift_willThrow();
  }

LABEL_31:
  v80 = *MEMORY[0x277D85DE8];
}