uint64_t ModalityPair.description.getter()
{
  v1 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22713A9EC();
  *&v4 = sub_227663B60();
  MEMORY[0x22AA98450](40, 0xE100000000000000);
  v2 = sub_22766D140();
  MEMORY[0x22AA98450](v2);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return v4;
}

uint64_t static ModalityPair.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  sub_226F48150();
  sub_226EC1E18();
  return sub_227663B20() & 1;
}

uint64_t ModalityPair.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x22AA996B0](*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  return sub_227663B10();
}

uint64_t ModalityPair.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22766D370();
  sub_226F48228();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t ModalityDurationSplits.__allocating_init(splitsByModalities:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ModalityDurationSplits.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ModalityDurationSplits.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_227324378()
{
  result = qword_27D7BCB70;
  if (!qword_27D7BCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCB70);
  }

  return result;
}

uint64_t sub_22732442C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v71 = a4;
  v77 = a3;
  v75 = a2;
  v5 = sub_22766B390();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v70 = &v70 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v74 = &v70 - v12;
  result = MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {
      v27 = v18[2];
      sub_22766A630();

      v28 = sub_22766B380();
      v29 = sub_22766C8B0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v76 = v27;
        v31 = v30;
        v32 = swift_slowAlloc();
        v81 = v32;
        *v31 = 134218242;
        *(v31 + 4) = v75;
        *(v31 + 12) = 2080;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
        v34 = MEMORY[0x22AA98660](a1, v33);
        v36 = sub_226E97AE8(v34, v35, &v81);

        *(v31 + 14) = v36;
        _os_log_impl(&dword_226E8E000, v28, v29, "[Algorithm.Branch]: Generating cliques with duration:%ld sets:%s", v31, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x22AA9A450](v32, -1, -1);
        v37 = v31;
        v27 = v76;
        MEMORY[0x22AA9A450](v37, -1, -1);
      }

      v38 = v79;
      v39 = *(v78 + 8);
      v39(v15, v79);
      v40 = v77;
      if (v27 >= 2)
      {
        if (*(v77 + 16))
        {

          v48 = sub_22732A050(v18, v40);

          v49 = *(v48 + 16);

          if (!v49)
          {
            v50 = v70;
            sub_22766A630();
            v51 = sub_22766B380();
            v52 = sub_22766C890();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&dword_226E8E000, v51, v52, "[Algorithm.Branch]: A split has to contain at least one of the disjunctive modalities.", v53, 2u);
              MEMORY[0x22AA9A450](v53, -1, -1);
            }

            v39(v50, v38);
            return MEMORY[0x277D84FA0];
          }
        }

        else
        {
        }

        v81 = MEMORY[0x277D84FA0];
        v54 = *(v72 + OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_scoringMode);
        v55 = sub_227668780();
        v56 = v55 == sub_227668780();
        v57 = a1;
        v58 = v75;
        sub_227325EC4(1, MEMORY[0x277D84F90], v27, v57, v75, v71 & 1, v56, &v81);
        v59 = v74;
        sub_22766A630();
        v27 = v81;

        v60 = sub_22766B380();
        v61 = sub_22766C8B0();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v80 = v63;
          *v62 = 134218242;
          *(v62 + 4) = v58;
          *(v62 + 12) = 2080;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
          sub_226F481A4();
          v64 = sub_22766C610();
          v66 = v65;

          v67 = sub_226E97AE8(v64, v66, &v80);

          *(v62 + 14) = v67;
          _os_log_impl(&dword_226E8E000, v60, v61, "[Algorithm.Branch]: Completed solution for duration(%ld): %s", v62, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x22AA9A450](v63, -1, -1);
          MEMORY[0x22AA9A450](v62, -1, -1);

          v68 = v74;
          v69 = v79;
        }

        else
        {

          v68 = v59;
          v69 = v38;
        }

        v39(v68, v69);
      }

      else
      {

        v41 = v73;
        sub_22766A630();
        v42 = sub_22766B380();
        v43 = sub_22766C890();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = v27;
          v27 = v44;
          *v44 = 134217984;
          *(v44 + 4) = v45;
          _os_log_impl(&dword_226E8E000, v42, v43, "[Algorithm.Branch]: numberOfModalities must be greater than 1. Got numberOfModalities=%ld", v44, 0xCu);
          MEMORY[0x22AA9A450](v27, -1, -1);
        }

        v39(v41, v38);
        v46 = sub_227664EC0();
        sub_226EAC06C(&qword_28139B898, MEMORY[0x277D51210]);
        swift_allocError();
        (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D51188], v46);
        swift_willThrow();
      }

      return v27;
    }

    if (v16 >= v17)
    {
      break;
    }

    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_29;
    }

    v20 = *(a1 + 8 * v16++ + 32);
    if (*(v20 + 16))
    {
      v76 = v15;
      v21 = *(v20 + 40);
      v22 = *(v20 + 48);
      v23 = *(v20 + 56);
      sub_226EB396C(v21, v22, v23);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A59E0(0, v18[2] + 1, 1, v18);
        v18 = result;
      }

      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        result = sub_2273A59E0((v24 > 1), v25 + 1, 1, v18);
        v18 = result;
      }

      v18[2] = v25 + 1;
      v26 = &v18[3 * v25];
      v26[4] = v21;
      v26[5] = v22;
      *(v26 + 48) = v23;
      v16 = v19;
      v15 = v76;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_227324B7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v91 = a5;
  v89 = a3;
  v90 = a4;
  v92 = sub_22766B390();
  v8 = *(v92 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v92);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = a1;
  v14 = *(a1 + 16);
  if (v14 <= a2)
  {
    sub_22766A630();
    v34 = sub_22766B380();
    v35 = sub_22766C890();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_226E8E000, v34, v35, "modalityPairs must have more keys than numberOfWorkouts", v36, 2u);
      MEMORY[0x22AA9A450](v36, -1, -1);
    }

    (*(v8 + 8))(v12, v92);
    v37 = sub_227664EC0();
    sub_226EAC06C(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51188], v37);
    swift_willThrow();
  }

  else
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v115 = v8;
    v87 = &v85 - v13;
    v93 = v5;
    if (v14 + 1 >= a2 + 1)
    {
      v15 = a2 + 1;
    }

    else
    {
      v15 = v14 + 1;
    }

    v16 = v14 < a2;
    if (v14 >= a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0;
    }

    if (v14 >= a2)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = v94;
    v106[0] = v94;
    v106[1] = v14;
    v106[2] = v17;
    v106[3] = v18;
    v107 = v16;
    v105 = MEMORY[0x277D84F90];
    v20 = -1 << *(v94 + 32);
    sub_22732CCA4(v106, v99);
    sub_22732CCA4(v106, v99);

    v21 = sub_22766CC90();
    v22 = *(v19 + 36);
    v23 = 1 << *(v19 + 32);
    v24 = sub_22732A43C(v21, v22, 0, v17, v23, *(v19 + 36), 0, v19);
    if (v26 == 255)
    {
      v27 = v22;
    }

    else
    {
      v23 = v24;
      v27 = v25;
    }

    if (v26 == 255 || (v26 & 1) == 0)
    {
      if (v22 != v27)
      {
        goto LABEL_65;
      }

      if (v23 < v21)
      {
LABEL_66:
        __break(1u);
      }

      else
      {
        v28 = v94;
        v29 = sub_22732A5A0(v21, v22, 0, v23, v27, 0, v94);
        if (!v29)
        {
          sub_226E97D1C(v106, &qword_27D7BCBA0, &qword_2276808C8);
          v31 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }

        v108 = v28;
        v109 = v21;
        v110 = v22;
        v111 = 0;
        v112 = v23;
        v113 = v27;
        v114 = 0;
        v30 = v29;
        v31 = sub_2274CD880(v29, 0);
        v32 = sub_2274CE694(v97, (v31 + 4), v30);
        v99[1] = v97[1];
        v99[2] = v97[2];
        v100[0] = v98[0];
        *(v100 + 9) = *(v98 + 9);
        v99[0] = v97[0];
        sub_22732CCA4(v106, &v96);
        sub_226E97D1C(v99, &qword_27D7BCBA8, &qword_2276808D0);
        if (v32 == v30)
        {
          sub_226E97D1C(v106, &qword_27D7BCBA0, &qword_2276808C8);
LABEL_26:
          v101 = v94;
          v102 = v17;
          v103 = v18;
          v104 = v31;
          if (v17 == v18)
          {
            goto LABEL_58;
          }

          v86 = (v115 + 1);
          *&v33 = 136315138;
          v85 = v33;
          v39 = v93;
          while (1)
          {
            v40 = v104;
            v41 = v104[2];
            if (v41)
            {
              v93 = v39;
              *&v99[0] = MEMORY[0x277D84F90];

              sub_226F1FC88(0, v41, 0);
              v42 = *&v99[0];
              v43 = v101;
              v115 = (v101 + 64);
              v88 = v40;
              v44 = v40 + 5;
              v95 = v101;
              while (1)
              {
                v45 = *(v44 - 1);
                if (v45 < 0 || v45 >= 1 << *(v43 + 32))
                {
                  break;
                }

                if (((*(v115 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                {
                  goto LABEL_62;
                }

                if (*(v43 + 36) != *v44)
                {
                  goto LABEL_63;
                }

                v46 = *(v43 + 48) + 24 * v45;
                v47 = *v46;
                v48 = *(v46 + 8);
                v49 = *(v46 + 16);
                v50 = v42;
                sub_226EB396C(*v46, v48, v49);
                v42 = v50;
                *&v99[0] = v50;
                v51 = *(v50 + 16);
                v52 = *(v42 + 24);
                if (v51 >= v52 >> 1)
                {
                  sub_226F1FC88((v52 > 1), v51 + 1, 1);
                  v42 = *&v99[0];
                }

                v44 += 6;
                *(v42 + 16) = v51 + 1;
                v53 = v42 + 24 * v51;
                *(v53 + 32) = v47;
                *(v53 + 40) = v48;
                *(v53 + 48) = v49;
                --v41;
                v43 = v95;
                if (!v41)
                {
                  v54 = v42;

                  v39 = v93;
                  goto LABEL_39;
                }
              }

LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v54 = MEMORY[0x277D84F90];
LABEL_39:
            v93 = v39;
            sub_22732A738();
            v55 = *(v54 + 16);
            v56 = v54;
            if (!v55)
            {
              v115 = MEMORY[0x277D84F90];
              goto LABEL_54;
            }

            v57 = v54;
            v58 = 0;
            v59 = (v54 + 48);
            v95 = v55 - 1;
            v115 = MEMORY[0x277D84F90];
            v60 = v94;
            v88 = (v54 + 48);
            do
            {
              v61 = &v59[3 * v58];
              v62 = v58;
              while (1)
              {
                if (v62 >= *(v57 + 16))
                {
                  __break(1u);
                  goto LABEL_61;
                }

                if (*(v60 + 16))
                {
                  break;
                }

LABEL_42:
                ++v62;
                v61 += 24;
                if (v55 == v62)
                {
                  goto LABEL_54;
                }
              }

              v63 = *(v61 - 2);
              v64 = *(v61 - 1);
              v65 = *v61;
              sub_226EB396C(v63, v64, *v61);
              v66 = sub_226F491D8(v63, v64, v65);
              if ((v67 & 1) == 0)
              {
                sub_226EB2DFC(v63, v64, v65);
                v60 = v94;
                v57 = v56;
                goto LABEL_42;
              }

              v68 = *(*(v94 + 56) + 8 * v66);

              sub_226EB2DFC(v63, v64, v65);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v115 = sub_2273A5A04(0, v115[2] + 1, 1, v115);
              }

              v59 = v88;
              v70 = v115[2];
              v69 = v115[3];
              if (v70 >= v69 >> 1)
              {
                v115 = sub_2273A5A04((v69 > 1), v70 + 1, 1, v115);
              }

              v57 = v56;
              v58 = v62 + 1;
              v71 = v115;
              v115[2] = v70 + 1;
              v71[v70 + 4] = v68;
              v60 = v94;
            }

            while (v95 != v62);
LABEL_54:
            v72 = v87;
            sub_22766A630();
            v73 = v115;

            v74 = sub_22766B380();
            v75 = sub_22766C8B0();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              *&v99[0] = v77;
              *v76 = v85;
              v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
              v79 = MEMORY[0x22AA98660](v73, v78);
              v81 = sub_226E97AE8(v79, v80, v99);

              *(v76 + 4) = v81;
              v73 = v115;
              _os_log_impl(&dword_226E8E000, v74, v75, "[Algorithm.Branch]: Generating combinations for %s", v76, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v77);
              MEMORY[0x22AA9A450](v77, -1, -1);
              MEMORY[0x22AA9A450](v76, -1, -1);
            }

            (*v86)(v72, v92);
            v82 = v93;
            v83 = sub_22732442C(v73, v89, v90, v91 & 1);
            v39 = v82;
            if (v82)
            {

              sub_226E97D1C(v106, &qword_27D7BCBA0, &qword_2276808C8);

              return;
            }

            v84 = v83;

            sub_227460250(v84);
            if (v102 == v103)
            {
LABEL_58:
              sub_226E97D1C(v106, &qword_27D7BCBA0, &qword_2276808C8);

              return;
            }
          }
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_227325478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a2 < 90)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = a1;
  if (*(a1 + 16) >= a4)
  {
    return MEMORY[0x277D84F90];
  }

  v119 = v6;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v122 = v7;
  v110 = v12;
  v112 = v7 + 64;
LABEL_7:
  v17 = v14;
  v115 = v16;
  if (!v11)
  {
    goto LABEL_9;
  }

  do
  {
    v14 = v17;
LABEL_12:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v7 + 48) + 24 * (v18 | (v14 << 6));
    v20 = *v19;
    v126 = *(v19 + 8);
    v123 = *(v19 + 16);
    sub_226EB396C(*v19, v126, v123);
    v21 = sub_227667250();
    v22 = v21;
    if (!*(v21 + 16))
    {
      goto LABEL_21;
    }

    v23 = *(v21 + 40);
    v129 = v20;
    v130 = v126;
    LOBYTE(v131) = v123;
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v24 = sub_22766D3F0();
    v25 = -1 << *(v22 + 32);
    v26 = v24 & ~v25;
    if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
LABEL_21:

LABEL_22:
      v16 = v115;
      result = swift_isUniquelyReferenced_nonNull_native();
      v136 = v115;
      v15 = MEMORY[0x277D84F90];
      if ((result & 1) == 0)
      {
        result = sub_226F1FC88(0, *(v115 + 16) + 1, 1);
        v16 = v136;
      }

      v7 = v122;
      v31 = *(v16 + 16);
      v30 = *(v16 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_226F1FC88((v30 > 1), v31 + 1, 1);
        v7 = v122;
        v16 = v136;
      }

      *(v16 + 16) = v31 + 1;
      v32 = v16 + 24 * v31;
      *(v32 + 32) = v20;
      *(v32 + 40) = v126;
      *(v32 + 48) = v123;
      v12 = v110;
      v8 = v112;
      goto LABEL_7;
    }

    v27 = ~v25;
    sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v28 = *(v22 + 48) + 24 * v26;
      v29 = *(v28 + 16);
      v134 = *v28;
      LOBYTE(v135) = v29;
      v129 = v20;
      v130 = v126;
      LOBYTE(v131) = v123;
      if (sub_227663B20())
      {
        break;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (a6)
    {
      goto LABEL_22;
    }

    result = sub_226EB2DFC(v20, v126, v123);
    v17 = v14;
    v7 = v122;
    v15 = MEMORY[0x277D84F90];
    v16 = v115;
    v12 = v110;
    v8 = v112;
  }

  while (v11);
  while (1)
  {
LABEL_9:
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
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
      goto LABEL_133;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v17;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  if (!*(v16 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  v33 = *(v7 + 16);
  v34 = __OFADD__(v33, 2);
  v35 = v33 + 2;
  v36 = v119;
  if (!v34)
  {
    v37 = 1;
    if (v35 > a4)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    v107 = v38;
    v136 = v15;
    while (1)
    {
      v39 = *(v16 + 16);
      v40 = v39 + 1;
      v109 = v37 + 1;
      v111 = v37;
      if (v39 + 1 >= v37 + 1)
      {
        v40 = v37 + 1;
      }

      v41 = v39 >= v37 ? v37 : 0;
      v42 = v39 >= v37 ? v40 : 0;
      v133 = v15;
      v43 = sub_22732B360(v16, v41, v42, v39 < v37);
      v45 = v44;
      v47 = v46;
      v129 = v43;
      v130 = v44;
      v131 = v46;
      v132 = v48;

      if (v45 != v47)
      {
        break;
      }

LABEL_43:

      result = sub_227460228(v133);
      if (v111 == v107)
      {
LABEL_123:

        return v136;
      }

      v37 = v109;
      v7 = v122;
      if (v109 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_132;
      }
    }

    while (2)
    {
      v49 = v132;
      v50 = *(v132 + 2);
      if (v50)
      {
        v113 = v47;
        v114 = v45;
        v120 = v36;
        *&v134 = v15;

        sub_226F1FC88(0, v50, 0);
        v51 = 0;
        v52 = v134;
        v127 = v129;
        v124 = v129 + 32;
        do
        {
          if (v51 >= *(v49 + 2))
          {
            goto LABEL_119;
          }

          v53 = *&v49[8 * v51 + 32];
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_120;
          }

          if (v53 >= *(v127 + 16))
          {
            goto LABEL_121;
          }

          v54 = v124 + 24 * v53;
          v56 = *v54;
          v55 = *(v54 + 8);
          v57 = *(v54 + 16);
          v58 = v52;
          sub_226EB396C(*v54, v55, v57);
          v52 = v58;
          *&v134 = v58;
          v60 = *(v58 + 16);
          v59 = *(v58 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_226F1FC88((v59 > 1), v60 + 1, 1);
            v52 = v134;
          }

          ++v51;
          *(v52 + 16) = v60 + 1;
          v61 = v52 + 24 * v60;
          *(v61 + 32) = v56;
          *(v61 + 40) = v55;
          *(v61 + 48) = v57;
        }

        while (v50 != v51);
        v62 = v52;

        v63 = *(v49 + 2);
        v7 = v122;
        if (v63)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v36 = v120;
          v15 = MEMORY[0x277D84F90];
          if ((result & 1) == 0)
          {
            result = sub_2272EC328(v49);
            v49 = result;
          }

          if (v63 <= *(v49 + 2))
          {
            v64 = v63 - 1;
            v65 = v49 + 32;
            v66 = &v49[8 * v63 + 24];
            v67 = *v66 + 1;
            if (__OFADD__(*v66, 1))
            {
              goto LABEL_131;
            }

            *v66 = v67;
            v132 = v49;
            if (v67 != *(v129 + 16))
            {
LABEL_88:
              v78 = v62;
              goto LABEL_89;
            }

            v68 = *(v49 + 2);
            if (v63 > v68)
            {
              goto LABEL_125;
            }

            v69 = &v49[8 * v63 + 24];
            while (1)
            {
              v70 = v64;
              if (*v66 != v67)
              {
                v132 = v49;
                goto LABEL_88;
              }

              --v64;
              if ((v70 - 1) < 0)
              {
                v132 = v49;
                sub_22732AC98(&v129);
                goto LABEL_88;
              }

              if (v64 >= v68)
              {
                goto LABEL_126;
              }

              v71 = *&v65[8 * v64];
              v34 = __OFADD__(v71, 1);
              v72 = v71 + 1;
              if (v34)
              {
                goto LABEL_127;
              }

              *&v65[8 * v64] = v72;
              if (v68 < v70)
              {
                goto LABEL_128;
              }

              if (v70 != v68)
              {
                break;
              }

LABEL_62:
              v68 = *(v49 + 2);
              v69 -= 8;
              if (v63 > v68)
              {
                goto LABEL_125;
              }
            }

            v73 = v69;
            while (v70 < v68)
            {
              v74 = v70 - 1;
              v75 = *(v49 + 2);
              if ((v70 - 1) >= v75)
              {
                goto LABEL_116;
              }

              v76 = v72 + 1;
              if (__OFADD__(v72, 1))
              {
                goto LABEL_117;
              }

              v77 = v74 + 1;
              if (v77 >= v75)
              {
                goto LABEL_118;
              }

              *v73++ = v76;
              if (v76 != v67)
              {
                v70 = v77 + 1;
                ++v72;
                if (v77 + 1 != v68)
                {
                  continue;
                }
              }

              goto LABEL_62;
            }

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
            goto LABEL_122;
          }

          goto LABEL_130;
        }

        v36 = v120;
        v15 = MEMORY[0x277D84F90];
        v78 = v62;
        v45 = v114;
        if (v114 >= v113)
        {
          goto LABEL_89;
        }

LABEL_80:
        v79 = v78;
        v80 = v45 + 1;
        v130 = v45 + 1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v81 = *(v49 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_2273A5610(0, v81, 1, v49);
            v132 = v49;
          }

          sub_22732B428(0, v81, 0);
        }

        else
        {
          v82 = sub_2274CD830(0, *(v49 + 3) >> 1);

          v49 = v82;
        }

        v132 = v49;
        v83 = sub_2273FC414(v80, 0, *(v129 + 16));
        sub_227460500(v83, v84);
        v7 = v122;
        v78 = v79;
      }

      else
      {
        v78 = v15;
        if (v45 < v47)
        {
          goto LABEL_80;
        }
      }

LABEL_89:
      v121 = v36;
      v85 = *(v7 + 16);
      v86 = v78;
      if (v85)
      {
        v87 = sub_2274CD86C(*(v7 + 16), 0);
        v88 = sub_2274CF838(&v134, v87 + 4, v85, v7);

        result = sub_226EBB21C();
        if (v88 != v85)
        {
          goto LABEL_129;
        }

        v7 = v122;
        v78 = v86;
        v89 = *(v86 + 16);
        if (v89)
        {
LABEL_92:
          v90 = 0;
          v91 = v78 + 48;
          v125 = v87;
          v128 = v15;
LABEL_93:
          v92 = (v91 + 24 * v90);
          v93 = v90;
          while (v93 < *(v78 + 16))
          {
            if (*(v7 + 16))
            {
              v94 = *(v92 - 2);
              v95 = *(v92 - 1);
              v96 = *v92;
              sub_226EB396C(v94, v95, *v92);
              v97 = sub_226F491D8(v94, v95, v96);
              if (v98)
              {
                v99 = *(*(v122 + 56) + 8 * v97);

                sub_226EB2DFC(v94, v95, v96);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v128 = sub_2273A5A04(0, v128[2] + 1, 1, v128);
                }

                v15 = MEMORY[0x277D84F90];
                v101 = v128[2];
                v100 = v128[3];
                if (v101 >= v100 >> 1)
                {
                  v103 = sub_2273A5A04((v100 > 1), v101 + 1, 1, v128);
                  v78 = v86;
                  v128 = v103;
                }

                else
                {
                  v78 = v86;
                }

                v90 = v93 + 1;
                v128[2] = v101 + 1;
                v128[v101 + 4] = v99;
                v102 = v89 - 1 == v93;
                v7 = v122;
                v87 = v125;
                if (v102)
                {
                  goto LABEL_110;
                }

                goto LABEL_93;
              }

              sub_226EB2DFC(v94, v95, v96);
              v7 = v122;
              v78 = v86;
            }

            ++v93;
            v92 += 24;
            if (v89 == v93)
            {
              v15 = MEMORY[0x277D84F90];
              v87 = v125;
              goto LABEL_110;
            }
          }

LABEL_122:
          __break(1u);
          goto LABEL_123;
        }
      }

      else
      {
        v87 = v15;
        v89 = *(v78 + 16);
        if (v89)
        {
          goto LABEL_92;
        }
      }

      v128 = v15;
LABEL_110:
      *&v134 = v87;
      sub_227460228(v128);
      v104 = sub_22732442C(v134, a2, a3, a5 & 1);
      v36 = v121;
      if (v121)
      {
      }

      v105 = v104;

      sub_227460250(v105);
      v45 = v130;
      v47 = v131;
      v7 = v122;
      if (v130 == v131)
      {
        v16 = v115;
        goto LABEL_43;
      }

      continue;
    }
  }

LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_227325EC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v41 = result;
  v8 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_67;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v8 >= *(a4 + 16))
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v9 = *(a4 + 8 * v8 + 32);
  if (*(v9 + 2))
  {
    v12 = a2;
    v46 = *(a2 + 16);
    v38 = result + 1;
    v13 = __OFADD__(result, 1);
    v40 = v13;

    v42 = a6;
    v43 = a7;
    v47 = v12;
    while (1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = *(v9 + 2);
        if (!v14)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v9 = sub_2272EC314(v9);
        v14 = *(v9 + 2);
        if (!v14)
        {
LABEL_61:
          __break(1u);
        }
      }

      v15 = v14 - 1;
      v50 = v9;
      v18 = *(v9 + 4);
      v17 = *(v9 + 5);
      v16 = v9 + 32;
      v19 = *(v16 + 2);
      v20 = v16[24];
      memmove(v16, v16 + 32, 32 * (v14 - 1));
      *(v16 - 2) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEB0, &qword_227679930);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670CD0;
      v48 = v18;
      *(inited + 32) = v18;
      *(inited + 40) = v17;
      *(inited + 48) = v19;
      *(inited + 56) = v20;
      sub_226EB396C(v17, v19, v20);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v22 = *(v12 + 24) >> 1, v23 = v12, v22 <= v46))
      {
        result = sub_2273A58D4(result, v46 + 1, 1, v12);
        v23 = result;
        v22 = *(result + 24) >> 1;
      }

      if (v22 <= *(v23 + 16))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v24 = (v23 + 32);
      swift_arrayInitWithCopy();

      v25 = *(v23 + 16);
      v26 = v25 + 1;
      *(v23 + 16) = v25 + 1;
      if (v25 != -1)
      {
        break;
      }

      result = MEMORY[0x277D84F90];
      v31 = *(MEMORY[0x277D84F90] + 16);
      if (v31)
      {
        goto LABEL_22;
      }

      if ((a7 & 1) == 0)
      {
        result = sub_226EB2DFC(v17, v19, v20);
        if (a6)
        {
          if (a5 < 0)
          {
            goto LABEL_57;
          }

          if (v41 == a3)
          {
            if (!a5)
            {
              goto LABEL_54;
            }

            goto LABEL_57;
          }

LABEL_55:
          if (v40)
          {
            goto LABEL_66;
          }

          sub_227325EC4(v38, v23, a3, a4, a5, a6 & 1, a7 & 1, a8);
          goto LABEL_57;
        }

LABEL_53:
        if (v41 == a3)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      v36 = v48;
      if (v48 <= a5)
      {
        v32 = 0;
LABEL_43:
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_227670CD0;
        *(v37 + 32) = v36;
        *(v37 + 40) = v17;
        *(v37 + 48) = v19;
        *(v37 + 56) = v20;
        sub_2270B9444(&v51, v37);

        if (a6)
        {
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      result = sub_226EB2DFC(v17, v19, v20);
      v12 = v47;
      if ((a6 & 1) == 0)
      {
        if (a5 < 0)
        {
          goto LABEL_53;
        }

LABEL_52:
        v32 = 0;
        goto LABEL_46;
      }

      if ((a5 & 0x8000000000000000) == 0)
      {
        goto LABEL_52;
      }

LABEL_58:
      v9 = v50;
      if (!*(v50 + 2))
      {
      }
    }

    v51 = MEMORY[0x277D84F90];
    sub_226F1F090(0, v26, 0);
    result = v51;
    v27 = *(v51 + 16);
    do
    {
      v29 = *v24;
      v24 += 4;
      v28 = v29;
      v51 = result;
      v30 = *(result + 24);
      v31 = v27 + 1;
      if (v27 >= v30 >> 1)
      {
        sub_226F1F090((v30 > 1), v27 + 1, 1);
        result = v51;
      }

      *(result + 16) = v31;
      *(result + 8 * v27++ + 32) = v28;
      --v26;
    }

    while (v26);
    a6 = v42;
    a7 = v43;
LABEL_22:
    v32 = 0;
    v33 = 32;
    do
    {
      v34 = *(result + v33);
      v35 = __OFADD__(v32, v34);
      v32 += v34;
      if (v35)
      {
        __break(1u);
        goto LABEL_65;
      }

      v33 += 8;
      --v31;
    }

    while (v31);

    if (a7)
    {
      v36 = v48;
      if (v48 <= a5)
      {
        goto LABEL_43;
      }

      result = sub_226EB2DFC(v17, v19, v20);
      if (a6)
      {
LABEL_44:
        if (v32 > a5)
        {
          goto LABEL_57;
        }
      }

LABEL_45:
      if (v32 <= a5)
      {
LABEL_46:

        sub_2270B9444(&v51, v23);
      }
    }

    else
    {
      result = sub_226EB2DFC(v17, v19, v20);
      if ((a6 & 1) != 0 && v32 > a5)
      {
        goto LABEL_57;
      }
    }

    if (v41 == a3)
    {
      if ((a6 & 1) == 0 || v32 == a5)
      {
LABEL_54:
        sub_2270B9444(&v51, v23);
      }

LABEL_57:

      v12 = v47;
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  return result;
}

uint64_t sub_227326368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a2;
  v47 = sub_227664EC0();
  v39 = *(v47 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v47);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22766B390();
  v38 = *(v46 - 8);
  v11 = *(v38 + 64);
  v12 = MEMORY[0x28223BE20](v46);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  if (a1 >= 6)
  {
    v42 = (v39 + 88);
    v41 = *MEMORY[0x277D511E8];
    v17 = (v38 + 8);
    *&v14 = 134218240;
    v40 = v14;
    do
    {
      v19 = sub_227327D58(a1, v45, a3, a4);
      if (v5)
      {
        v48 = v5;
        v20 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
        v21 = v43;
        if (!swift_dynamicCast())
        {
          goto LABEL_16;
        }

        v22 = (*v42)(v21, v47);
        if (v22 != v41)
        {
          (*(v39 + 8))(v21, v47);
LABEL_16:

          return a4;
        }

        v5 = 0;
      }

      else
      {
        if (*(v19 + 16))
        {
          a4 = sub_22732BF54();

          return a4;
        }
      }

      sub_22766A630();
      v23 = v16;
      v24 = sub_22766B380();
      v25 = sub_22766C8B0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v44 = 0;
        v27 = a3;
        v28 = v26;
        *v26 = v40;
        *(v26 + 4) = a1;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 5;
        _os_log_impl(&dword_226E8E000, v24, v25, "No modality duration candidates found for %ld, backing off by %ld minutes.", v26, 0x16u);
        v29 = v28;
        a3 = v27;
        v5 = v44;
        MEMORY[0x22AA9A450](v29, -1, -1);
      }

      v16 = v23;
      (*v17)(v23, v46);
      v18 = a1 <= 10;
      a1 -= 5;
    }

    while (!v18);
  }

  v30 = v37;
  sub_22766A630();
  v31 = sub_22766B380();
  v32 = sub_22766C890();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226E8E000, v31, v32, "Unable to find candidates.", v33, 2u);
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  (*(v38 + 8))(v30, v46);
  sub_226EAC06C(&qword_28139B898, MEMORY[0x277D51210]);
  a4 = v47;
  swift_allocError();
  (*(v39 + 104))(v34, *MEMORY[0x277D51188], a4);
  swift_willThrow();
  return a4;
}

uint64_t sub_2273267EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v51 = a5;
  v9 = sub_227664EC0();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v54[0] = sub_22766D140();
  v54[1] = v16;
  MEMORY[0x22AA98450](95, 0xE100000000000000);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v19 = sub_22704B2CC();
  v44[1] = v18;
  v44[2] = v17;
  v44[0] = v19;
  v20 = sub_22766BEC0();
  MEMORY[0x22AA98450](v20);

  MEMORY[0x22AA98450](95, 0xE100000000000000);
  v55 = a3;
  v21 = sub_22766D140();
  MEMORY[0x22AA98450](v21);

  MEMORY[0x22AA98450](95, 0xE100000000000000);
  v55 = a4;
  v22 = v51;
  v23 = sub_22766D140();
  MEMORY[0x22AA98450](v23);

  v24 = sub_22766BFD0();

  v52 = v24;
  v25 = [v22 objectForKey_];
  if (!v25)
  {
    v34 = v45;
    v35 = v46;
    v26 = v47;
    v50 = a2;
    v36 = v53;
    sub_227327D58(a1, a2, a3, a4);
    if (!v36)
    {
      v39 = sub_22732BF54();

      type metadata accessor for ModalityDurationSplits();
      v26 = swift_allocObject();
      *(v26 + 16) = v39;
      v40 = v52;
      [v22 setObject:v26 forKey:v52];

      return v26;
    }

    v53 = v36;
    v54[0] = v36;
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if (swift_dynamicCast())
    {
      if ((*(v35 + 88))(v34, v26) == *MEMORY[0x277D511E8])
      {

        v38 = sub_227326368(a1, v50, a3, a4);
        v53 = 0;
        v42 = v38;
        type metadata accessor for ModalityDurationSplits();
        v26 = swift_allocObject();
        *(v26 + 16) = v42;
        v43 = v52;
        [v22 setObject:v26 forKey:v52];

        return v26;
      }

      (*(v35 + 8))(v34, v26);
    }

    else
    {
    }

    return v26;
  }

  v26 = v25;
  v48 = a3;
  v51 = a4;
  sub_22766A630();

  v27 = sub_22766B380();
  v28 = sub_22766C8B0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54[0] = v30;
    *v29 = 134218754;
    *(v29 + 4) = a1;
    *(v29 + 12) = 2080;
    v31 = sub_22766BEC0();
    v33 = sub_226E97AE8(v31, v32, v54);

    *(v29 + 14) = v33;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v48;
    *(v29 + 32) = 2048;
    *(v29 + 34) = v51;
    _os_log_impl(&dword_226E8E000, v27, v28, "Using cached splits for duration=%ld, modalityDurationMap=%s, maxWorkouts=%ld, numberOfExerciseDays=%ld", v29, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  (*(v49 + 8))(v15, v50);
  return v26;
}

uint64_t sub_227326D54@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_227663AD0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_227326DB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_scoringMode);
  v11 = sub_227668780();
  if (v11 != sub_227668780())
  {
    return 1;
  }

  v12 = sub_22732AEC8(a2);
  v13 = v12;
  if (a1 == 1 && *(a2 + 16) > v12)
  {
    v13 = *(a2 + 16);
  }

  sub_22766A630();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v14, v15, "Enforcing minimum workouts per day of %ld", v16, 0xCu);
    MEMORY[0x22AA9A450](v16, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_227326F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = v6;
  HIDWORD(v146) = a6;
  v151 = a5;
  *&v162 = a4;
  v152 = a3;
  v157 = a2;
  v160 = sub_22766B390();
  v9 = *(v160 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v160);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v156 = v7;
  v161 = a1;
  if (v13)
  {
    v14 = sub_2274CD86C(v13, 0);
    v15 = sub_2274CF838(&v163, v14 + 4, v13, a1);

    result = sub_226EBB21C();
    if (v15 != v13)
    {
      goto LABEL_181;
    }

    v7 = v156;
  }

  v18 = sub_226F491E4(v17);
  sub_22766A630();

  v19 = sub_22766B380();
  v20 = sub_22766C880();

  v21 = os_log_type_enabled(v19, v20);
  v158 = v14;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v163 = v23;
    *v22 = 134218242;
    *(v22 + 4) = v157;
    *(v22 + 12) = 2080;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
    v25 = MEMORY[0x22AA98660](v14, v24);
    v27 = sub_226E97AE8(v25, v26, &v163);
    v7 = v156;

    *(v22 + 14) = v27;
    _os_log_impl(&dword_226E8E000, v19, v20, "[Algorithm.Branch]: Building splits tree with duration: %ld == %s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AA9A450](v23, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  v29 = *(v9 + 8);
  v28 = v9 + 8;
  v29(v12, v160);
  v30 = sub_227326DB4(v162, v18);
  v147 = v31;

  v32 = *(v161 + 16);
  v33 = MEMORY[0x277D84F90];
  v163 = MEMORY[0x277D84F90];
  if (v30 > v152)
  {
    goto LABEL_179;
  }

  v150 = v32;
  v153 = OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_scoringMode;
  v34 = v158;
  v148 = v158 + 4;
  v160 = v161 + 64;
  v162 = xmmword_227670CD0;
  v35 = v30;
  while (2)
  {
    v159 = v35;
    v36 = v35 - 1;
    if (v35 == 1)
    {
      goto LABEL_9;
    }

    v70 = *(v7 + v153);
    v71 = sub_227668780();
    result = sub_227668780();
    if (v71 == result)
    {
      if (v150 == 1)
      {
LABEL_9:
        v37 = 1 << *(v161 + 32);
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        else
        {
          v38 = -1;
        }

        v39 = v38 & *(v161 + 64);
        v40 = (v37 + 63) >> 6;

        v41 = 0;
        v42 = v160;
        while (v39)
        {
LABEL_19:
          v44 = (v41 << 9) | (8 * __clz(__rbit64(v39)));
          v45 = *(*(v161 + 56) + v44);
          v46 = *(v45 + 16);
          v28 = *(v33 + 16);
          v47 = v28 + v46;
          if (__OFADD__(v28, v46))
          {
            __break(1u);
LABEL_164:
            __break(1u);
            goto LABEL_165;
          }

          v48 = *(*(v161 + 56) + v44);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0 || v47 > *(v33 + 24) >> 1)
          {
            if (v28 <= v47)
            {
              v49 = v28 + v46;
            }

            else
            {
              v49 = v28;
            }

            result = sub_2273A58D4(result, v49, 1, v33);
            v33 = result;
          }

          v39 &= v39 - 1;
          if (*(v45 + 16))
          {
            if ((*(v33 + 24) >> 1) - *(v33 + 16) < v46)
            {
              goto LABEL_167;
            }

            swift_arrayInitWithCopy();

            v42 = v160;
            if (v46)
            {
              v50 = *(v33 + 16);
              v51 = __OFADD__(v50, v46);
              v52 = v50 + v46;
              if (v51)
              {
                goto LABEL_172;
              }

              *(v33 + 16) = v52;
            }
          }

          else
          {

            v42 = v160;
            if (v46)
            {
              goto LABEL_164;
            }
          }
        }

        while (1)
        {
          v43 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v43 >= v40)
          {

            v53 = *(v33 + 16);
            if (!v53)
            {
              v55 = MEMORY[0x277D84F90];
              v7 = v156;
LABEL_95:

              v93 = *(v55 + 16);
              if (v93)
              {
                v164 = MEMORY[0x277D84F90];
                sub_226F1FCA8(0, v93, 0);
                v94 = v164;
                v28 = v55 + 56;
                do
                {
                  v96 = *(v28 - 24);
                  v95 = *(v28 - 16);
                  v97 = *(v28 - 8);
                  v98 = *v28;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEB0, &qword_227679930);
                  v99 = swift_allocObject();
                  *(v99 + 16) = v162;
                  *(v99 + 32) = v96;
                  *(v99 + 40) = v95;
                  *(v99 + 48) = v97;
                  *(v99 + 56) = v98;
                  sub_226EB396C(v95, v97, v98);
                  v164 = v94;
                  v101 = *(v94 + 16);
                  v100 = *(v94 + 24);
                  if (v101 >= v100 >> 1)
                  {
                    sub_226F1FCA8((v100 > 1), v101 + 1, 1);
                    v94 = v164;
                  }

                  *(v94 + 16) = v101 + 1;
                  *(v94 + 8 * v101 + 32) = v99;
                  v28 += 32;
                  --v93;
                }

                while (v93);

                v34 = v158;
                v7 = v156;
              }

              else
              {

                v94 = MEMORY[0x277D84F90];
              }

              v102 = v94;
              goto LABEL_103;
            }

            v28 = 0;
            v54 = -v53;
            v55 = MEMORY[0x277D84F90];
            v7 = v156;
            v56 = v157;
            v57 = v151;
            v58 = v153;
LABEL_33:
            v59 = *(v33 + 16);
            if (v28 > v59)
            {
              v59 = v28;
            }

            v60 = -v59;
            v61 = (v33 + 56 + 32 * v28++);
            while (v60 + v28 != 1)
            {
              v62 = *(v61 - 3);
              if (*(v7 + v58))
              {
                if ((v57 & 1) == 0 || v62 <= v56)
                {
                  goto LABEL_44;
                }
              }

              else if ((v57 & 1) == 0 || v62 == v56)
              {
LABEL_44:
                v63 = *(v61 - 2);
                v64 = *v61;
                v65 = v63;
                v155 = *(v61 - 1);
                LODWORD(v154) = v64;
                sub_226EB396C(v63, v155, v64);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v164 = v55;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_226F1FCC8(0, *(v55 + 16) + 1, 1);
                  v55 = v164;
                }

                v68 = *(v55 + 16);
                v67 = *(v55 + 24);
                if (v68 >= v67 >> 1)
                {
                  sub_226F1FCC8((v67 > 1), v68 + 1, 1);
                  v55 = v164;
                }

                *(v55 + 16) = v68 + 1;
                v69 = v55 + 32 * v68;
                *(v69 + 32) = v62;
                *(v69 + 40) = v65;
                v7 = v156;
                *(v69 + 48) = v155;
                *(v69 + 56) = v154;
                v57 = v151;
                v56 = v157;
                v34 = v158;
                v58 = v153;
                if (v54 + v28)
                {
                  goto LABEL_33;
                }

                goto LABEL_95;
              }

              ++v28;
              v61 += 32;
              if (v54 + v28 == 1)
              {
                goto LABEL_95;
              }
            }

            goto LABEL_157;
          }

          v39 = *(v42 + 8 * v43);
          ++v41;
          if (v39)
          {
            v41 = v43;
            goto LABEL_19;
          }
        }

LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:

        goto LABEL_160;
      }

      goto LABEL_79;
    }

    if (v150 == 1)
    {
      result = sub_22732B0A8(v34);
      if (result < v157)
      {
        v72 = *(v34 + 16);
        if (!v72)
        {
LABEL_115:
          v7 = v156;
          v111 = v149;
          v112 = sub_22732442C(v33, v157, v147, v151 & 1);
          v149 = v111;
          if (!v111)
          {
            v113 = v112;

            result = sub_227460250(v113);
            v28 = v163;
            if (!*(v163 + 16))
            {
              goto LABEL_104;
            }

LABEL_153:

            return v28;
          }

          goto LABEL_159;
        }

        v73 = 0;
        while (1)
        {
          if (v73 >= *(v34 + 16))
          {
            goto LABEL_168;
          }

          v74 = v159;
          if (v159 < 0)
          {
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            return result;
          }

          if (v159)
          {
            v75 = v148[v73];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
            v76 = sub_22766C380();
            v77 = 0;
            *(v76 + 16) = v74;
            *(v76 + 32) = v75;
            do
            {
              *(v76 + 8 * v77 + 40) = v75;

              ++v77;
            }

            while (v36 != v77);
          }

          else
          {
            v76 = MEMORY[0x277D84F90];
          }

          v78 = *(v76 + 16);
          v28 = *(v33 + 16);
          v79 = v28 + v78;
          if (__OFADD__(v28, v78))
          {
            goto LABEL_170;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) != 0 && v79 <= *(v33 + 24) >> 1)
          {
            if (*(v76 + 16))
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v28 <= v79)
            {
              v80 = v28 + v78;
            }

            else
            {
              v80 = v28;
            }

            result = sub_2273A5A04(result, v80, 1, v33);
            v33 = result;
            if (*(v76 + 16))
            {
LABEL_75:
              if ((*(v33 + 24) >> 1) - *(v33 + 16) < v78)
              {
                goto LABEL_174;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
              v34 = v158;
              swift_arrayInitWithCopy();

              if (v78)
              {
                v81 = *(v33 + 16);
                v51 = __OFADD__(v81, v78);
                v82 = v81 + v78;
                if (v51)
                {
                  goto LABEL_175;
                }

                *(v33 + 16) = v82;
              }

              goto LABEL_58;
            }
          }

          if (v78)
          {
            goto LABEL_171;
          }

LABEL_58:
          if (++v73 == v72)
          {
            goto LABEL_115;
          }
        }
      }
    }

LABEL_79:
    v83 = v157;
    if (v150 < v159 && v157 >= 90)
    {
      v84 = v149;
      result = sub_227325478(v161, v157, v147, v152, v151 & 1, BYTE4(v146) & 1);
      v149 = v84;
      if (v84)
      {
LABEL_160:

LABEL_161:

        return v28;
      }

      v85 = result;
      v86 = *(result + 16);
      v28 = v163;
      v87 = *(v163 + 16);
      v88 = v87 + v86;
      if (__OFADD__(v87, v86))
      {
        goto LABEL_177;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v88 > *(v28 + 24) >> 1)
      {
        if (v87 <= v88)
        {
          v89 = v87 + v86;
        }

        else
        {
          v89 = v87;
        }

        result = sub_2273A5A04(result, v89, 1, v28);
        v28 = result;
      }

      v90 = v157;
      if (*(v85 + 16))
      {
        if ((*(v28 + 24) >> 1) - *(v28 + 16) < v86)
        {
          goto LABEL_180;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
        swift_arrayInitWithCopy();

        if (v86)
        {
          v91 = *(v28 + 16);
          v92 = v91 + v86;
          if (__OFADD__(v91, v86))
          {
            goto LABEL_182;
          }

          *(v28 + 16) = v92;
          v163 = v28;
          goto LABEL_120;
        }
      }

      else
      {

        if (v86)
        {
          goto LABEL_178;
        }
      }

      v92 = *(v28 + 16);
      v163 = v28;
      if (!v92)
      {
        goto LABEL_104;
      }

LABEL_120:
      v114 = 0;
      v155 = v28 + 32;
      v115 = MEMORY[0x277D84F90];
      v154 = v92;
      while (1)
      {
        if (v114 >= *(v28 + 16))
        {
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v116 = *(v155 + 8 * v114);
        v117 = *(v116 + 16);
        if (v117)
        {
          break;
        }

        v125 = *(v115 + 16);
        v126 = *(v155 + 8 * v114);

        v119 = v115;
        if (v125)
        {
          goto LABEL_131;
        }

LABEL_122:
        if (++v114 == v92)
        {
          goto LABEL_152;
        }
      }

      v118 = v28;
      v164 = v115;

      sub_226F1F090(0, v117, 0);
      v119 = v164;
      v120 = (v116 + 32);
      v121 = *(v164 + 16);
      do
      {
        v123 = *v120;
        v120 += 4;
        v122 = v123;
        v164 = v119;
        v124 = *(v119 + 24);
        v125 = v121 + 1;
        if (v121 >= v124 >> 1)
        {
          sub_226F1F090((v124 > 1), v121 + 1, 1);
          v119 = v164;
        }

        *(v119 + 16) = v125;
        *(v119 + 8 * v121++ + 32) = v122;
        --v117;
      }

      while (v117);
      v115 = MEMORY[0x277D84F90];
      v28 = v118;
      v90 = v157;
      v34 = v158;
LABEL_131:
      v127 = 0;
      v128 = 32;
      do
      {
        v129 = *(v119 + v128);
        v51 = __OFADD__(v127, v129);
        v127 += v129;
        if (v51)
        {
          __break(1u);
          goto LABEL_156;
        }

        v128 += 8;
        --v125;
      }

      while (v125);

      v130 = v127 == v90;
      v92 = v154;
      if (v130)
      {
        goto LABEL_153;
      }

      goto LABEL_122;
    }

    v103 = v151;
    if (v159 < v150)
    {
      v104 = v149;
      sub_227324B7C(v161, v159, v157, v147, v151 & 1);
      v149 = v104;
      if (!v104)
      {
LABEL_103:
        result = sub_227460228(v102);
        goto LABEL_104;
      }

      goto LABEL_160;
    }

    if (v150 != v159)
    {
      goto LABEL_104;
    }

    v106 = v103 & 1;
    v107 = v149;
    v108 = sub_22732442C(v105, v83, v147, v106);
    v149 = v107;
    if (v107)
    {
LABEL_165:

      goto LABEL_161;
    }

    v109 = v108;

    result = sub_227460250(v109);
    v28 = v163;
    v155 = *(v163 + 16);
    if (!v155)
    {
      goto LABEL_104;
    }

    v110 = 0;
    v154 = v163 + 32;
    do
    {
      if (v110 >= *(v28 + 16))
      {
        goto LABEL_176;
      }

      v131 = *(v154 + 8 * v110);
      v132 = *(v131 + 16);
      if (v132)
      {
        v133 = v28;
        v164 = MEMORY[0x277D84F90];

        sub_226F1F090(0, v132, 0);
        v134 = v164;
        v135 = (v131 + 32);
        v136 = *(v164 + 16);
        do
        {
          v138 = *v135;
          v135 += 4;
          v137 = v138;
          v164 = v134;
          v139 = *(v134 + 24);
          v140 = v136 + 1;
          if (v136 >= v139 >> 1)
          {
            sub_226F1F090((v139 > 1), v136 + 1, 1);
            v134 = v164;
          }

          *(v134 + 16) = v140;
          *(v134 + 8 * v136++ + 32) = v137;
          --v132;
        }

        while (v132);
        v28 = v133;
        v83 = v157;
        v34 = v158;
      }

      else
      {
        v141 = MEMORY[0x277D84F90];
        v140 = *(MEMORY[0x277D84F90] + 16);
        v142 = *(v154 + 8 * v110);

        v134 = v141;
        if (!v140)
        {

          if (!v83)
          {
            goto LABEL_153;
          }

          goto LABEL_138;
        }
      }

      v143 = 0;
      v144 = 32;
      do
      {
        v145 = *(v134 + v144);
        v51 = __OFADD__(v143, v145);
        v143 += v145;
        if (v51)
        {
          goto LABEL_158;
        }

        v144 += 8;
        --v140;
      }

      while (v140);

      if (v143 == v83)
      {
        goto LABEL_153;
      }

LABEL_138:
      ++v110;
    }

    while (v110 != v155);
LABEL_152:
    v7 = v156;
LABEL_104:
    if (v159 != v152)
    {
      v35 = v159 + 1;
      v33 = MEMORY[0x277D84F90];
      if (__OFADD__(v159, 1))
      {
        goto LABEL_173;
      }

      continue;
    }

    break;
  }

  return v163;
}

uint64_t sub_227327D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = sub_227323D14(a2);
  if (*(v11 + 16))
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9878, &qword_227674CC8);
    v13 = sub_22766D010();
    v11 = v12;
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v72 = v13;
  sub_227328830(v11, 1, &v72);
  if (!v5)
  {
    v14 = v72;
    v15 = swift_allocObject();
    v71 = a1;
    v16 = a2;
    *(v15 + 16) = sub_227326F68(v14, a1, a3, a4, 1, 0);
    v17 = *(v6 + OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_scoringMode);
    v18 = sub_227668780();
    v19 = v18 != sub_227668780() || a3 < 4;
    v73 = v15;
    if (!v19)
    {
      v20 = *(v15 + 16);

      v22 = sub_22732B690(v21);

      v23 = *(v73 + 16);
      *(v73 + 16) = v22;
      v15 = v73;
    }

    v24 = sub_227668780();
    if (v24 == sub_227668780())
    {
      v25 = *(*(v15 + 16) + 16);
      v26 = v16;
      if (!v25 && v71 >= 90 && (, v27 = sub_22732BC60(v16), , v28 = *(v27 + 16), , *(v16 + 16) == 2) && v28 == 1)
      {
        v29 = sub_227326F68(v14, v71, a3, a4, 0, 1);

        v39 = v73;
        v40 = *(v73 + 16);
        *(v73 + 16) = v29;

        v41 = *(v39 + 16);
        v42 = MEMORY[0x277D84F90];
        v70 = *(v41 + 16);
        if (v70)
        {
          v69 = v41 + 32;

          v67 = 0;
          v43 = 0;
          v68 = v42;
          v44 = v73;
          v45 = v42;
          v66 = v41;
          while (1)
          {
            if (v43 >= *(v41 + 16))
            {
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v46 = *(v69 + 8 * v43);
            v47 = *(v46 + 16);
            if (v47)
            {
              v72 = v45;

              sub_226F1F090(0, v47, 0);
              v48 = v72;
              v49 = (v46 + 32);
              v50 = *(v72 + 16);
              do
              {
                v52 = *v49;
                v49 += 4;
                v51 = v52;
                v72 = v48;
                v53 = *(v48 + 24);
                v54 = v50 + 1;
                if (v50 >= v53 >> 1)
                {
                  sub_226F1F090((v53 > 1), v50 + 1, 1);
                  v48 = v72;
                }

                *(v48 + 16) = v54;
                *(v48 + 8 * v50++ + 32) = v51;
                --v47;
              }

              while (v47);
              v44 = v73;
              v41 = v66;
              v45 = MEMORY[0x277D84F90];
            }

            else
            {
              v54 = v45[2];
              v55 = *(v69 + 8 * v43);

              v48 = v45;
              if (!v54)
              {

                if (!v67)
                {
                  goto LABEL_47;
                }

                goto LABEL_30;
              }
            }

            v56 = 0;
            v57 = 32;
            do
            {
              v58 = *(v48 + v57);
              v59 = __OFADD__(v56, v58);
              v56 += v58;
              if (v59)
              {
                __break(1u);
                goto LABEL_56;
              }

              v57 += 8;
              --v54;
            }

            while (v54);

            if (v56 > v71)
            {
              goto LABEL_30;
            }

            if (v67 < v56)
            {

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEA8, &unk_227679920);
              v60 = swift_allocObject();
              *(v60 + 16) = xmmword_227670CD0;
              v67 = v56;
              v68 = v60;
              *(v60 + 32) = v46;
              goto LABEL_31;
            }

            if (v56 == v67)
            {
LABEL_47:
              v61 = v68;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v61 = sub_2273A5A04(0, v68[2] + 1, 1, v68);
              }

              v63 = v61[2];
              v62 = v61[3];
              v68 = v61;
              if (v63 >= v62 >> 1)
              {
                v68 = sub_2273A5A04((v62 > 1), v63 + 1, 1, v61);
              }

              v68[2] = v63 + 1;
              v68[v63 + 4] = v46;
              v45 = MEMORY[0x277D84F90];
              goto LABEL_31;
            }

LABEL_30:

LABEL_31:
            if (++v43 == v70)
            {

              v64 = *(v44 + 16);
              v65 = v44;
              v26 = v16;
              v42 = v68;
              goto LABEL_54;
            }
          }
        }

        v65 = v73;
LABEL_54:
        *(v65 + 16) = v42;
      }

      else
      {
      }
    }

    else
    {

      v26 = v16;
    }

    v30 = *(v73 + 16);
    if (!*(v30 + 16))
    {
      goto LABEL_25;
    }

    v31 = *(v26 + 16);
    if (v31)
    {
      v32 = sub_2274CD858(*(v26 + 16), 0);
      v33 = sub_2274CF83C(&v72, v32 + 4, v31, v26);

      sub_226EBB21C();
      if (v33 == v31)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    v32 = MEMORY[0x277D84F90];
LABEL_23:
    v34 = sub_22732BE20(v30, v32);

    if (v34)
    {
      v35 = v73;
      v36 = *(v73 + 16);

      sub_22732840C(v35);

      return v36;
    }

LABEL_25:
    v36 = sub_227664EC0();
    sub_226EAC06C(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D511E8], v36);
    swift_willThrow();
    sub_22732840C(v73);

    return v36;
  }

LABEL_57:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_22732840C(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A630();

  v7 = sub_22766B380();
  v8 = sub_22766C880();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    v11 = *(a1 + 16);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
    v13 = MEMORY[0x22AA98660](v11, v12);
    v15 = v14;

    v16 = sub_226E97AE8(v13, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v7, v8, "[Algorithm]: Completed generating splits: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22732860C()
{
  v1 = OBJC_IVAR____TtC15SeymourServices27WorkoutPlanEnumerationUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanEnumerationUtils()
{
  result = qword_27D7BCB78;
  if (!qword_27D7BCB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2273286FC()
{
  result = sub_227667370();
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

void *sub_227328794(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_22732B974(v5, a2, a3);

    return v6;
  }

  return result;
}

void sub_227328830(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *a3;
  sub_226EB396C(v6, v5, v8);

  v10 = sub_226F491D8(v6, v5, v8);
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

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_226FE718C(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_226F491D8(v6, v5, v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    v10 = sub_22766D220();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_226FF2664();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_226EB2DFC(v6, v5, v8);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = v22[6] + 24 * v10;
  *v23 = v6;
  *(v23 + 8) = v5;
  *(v23 + 16) = v8;
  *(v22[7] + 8 * v10) = v7;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v39 != 1)
    {
      v16 = (a1 + 88);
      v26 = 1;
      while (v26 < *(a1 + 16))
      {
        v6 = *(v16 - 3);
        v5 = *(v16 - 2);
        v7 = *v16;
        v8 = *(v16 - 8);
        v27 = *a3;
        sub_226EB396C(v6, v5, v8);

        v28 = sub_226F491D8(v6, v5, v8);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v14 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v14)
        {
          goto LABEL_23;
        }

        a2 = v29;
        if (v27[3] < v32)
        {
          sub_226FE718C(v32, 1);
          v33 = *a3;
          v28 = sub_226F491D8(v6, v5, v8);
          if ((a2 & 1) != (v34 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v35 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v36 = v35[6] + 24 * v28;
        *v36 = v6;
        *(v36 + 8) = v5;
        *(v36 + 16) = v8;
        *(v35[7] + 8 * v28) = v7;
        v37 = v35[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        ++v26;
        v35[2] = v38;
        v16 += 4;
        if (v39 == v26)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_21:

    return;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_227328C40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
  result = sub_22766D010();
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
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 48) + 24 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(*(v4 + 56) + 8 * v16);
    v22 = *(v9 + 40);
    sub_22766D370();
    sub_226EB396C(v18, v19, v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 24 * v26;
    *v31 = v18;
    *(v31 + 8) = v19;
    *(v31 + 16) = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    v10 = v34;
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
      v34 = (v15 - 1) & v15;
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

uint64_t sub_227328EDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
  result = sub_22766D010();
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
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 48) + 24 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v35 = *(*(v4 + 56) + 8 * v16);
    v21 = *(v9 + 40);
    v22 = v9;
    sub_22766D370();
    sub_226EB396C(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v9 = v22;
    v23 = -1 << *(v22 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v22 + 48) + 24 * v26;
    *v31 = v19;
    *(v31 + 8) = v18;
    *(v31 + 16) = v20;
    *(*(v22 + 56) + 8 * v26) = v35;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    v10 = v34;
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
      v34 = (v15 - 1) & v15;
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

uint64_t sub_227329178(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9920, &qword_2276808F0);
  result = sub_22766D010();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    result = sub_22766D360();
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_22732937C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2276637B0();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = v46 - v12;
  v57 = sub_227665680();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = v46 - v17;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC070, &qword_22767C440);
  result = sub_22766D010();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v16;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    sub_2271C411C(v33, v50);
    v35 = *(v30 + 32);
    v16 = v24;
    v35(v24, v31, v23);
    sub_226F69C10(v34, v58);
    v36 = *(v19 + 40);
    sub_226EAC06C(&unk_28139B7E8, MEMORY[0x277D51898]);
    result = sub_22766BF50();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v16, v57);
    result = sub_226F69C10(v58, *(v19 + 56) + v40 * v53);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v16;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
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

uint64_t sub_2273297D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
  result = sub_22766D010();
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
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 48) + 24 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(*(v4 + 56) + 8 * v16);
    v22 = *(v9 + 40);
    v23 = v9;
    sub_22766D370();
    sub_226EB396C(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v9 = v23;
    v24 = -1 << *(v23 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v23 + 48) + 24 * v27;
    *v32 = v19;
    *(v32 + 8) = v18;
    *(v32 + 16) = v20;
    *(*(v23 + 56) + 8 * v27) = v21;
    ++*(v23 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v10 = v35;
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
      v35 = (v15 - 1) & v15;
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

uint64_t sub_227329A6C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v51 = sub_227665F20();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = v39 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBB8, &qword_2276808F8);
  result = sub_22766D010();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v42;
  }

  v15 = 0;
  v39[1] = v7 + 16;
  v40 = result;
  v49 = v7 + 32;
  v16 = result + 64;
  v39[0] = a4;
  v41 = v7;
  v17 = v51;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v44 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v48 = *(v7 + 72);
    v23 = v43;
    (*(v7 + 16))(v43, v22 + v48 * v21, v17);
    v24 = (a4[7] + 16 * v21);
    v25 = *v24;
    v26 = v24[1];
    v45 = *(v7 + 32);
    v46 = v25;
    v45(v50, v23, v17);
    v13 = v40;
    v27 = *(v40 + 40);
    sub_226EAC06C(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
    v47 = v26;

    result = sub_22766BF50();
    v28 = -1 << *(v13 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v7 = v41;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v16 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v7 = v41;
LABEL_26:
    *(v16 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v45)(*(v13 + 48) + v31 * v48, v50, v51);
    v36 = (*(v13 + 56) + 16 * v31);
    v37 = v47;
    *v36 = v46;
    v36[1] = v37;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39[0];
    v14 = v44;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v42[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
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

uint64_t sub_227329E14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
  result = sub_22766D010();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_22766D370();

    sub_22766C100();
    result = sub_22766D3F0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

uint64_t sub_22732A050(uint64_t isStackAllocationSafe, uint64_t a2)
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
    v10 = sub_22732A1F0(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_22732CD20(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22732A1F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v27 = a4 + 56;
  v24 = v6;
  while (2)
  {
    v21 = v4;
    if (v5 == v6)
    {
      goto LABEL_17;
    }

    while (1)
    {
      if (v5 >= v6)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      v7 = v23 + 24 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v25 = v5 + 1;
      v26 = v5 + 1;
      v11 = *(a4 + 40);
      sub_22766D370();
      sub_226EB396C(v9, v8, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v12 = sub_22766D3F0();
      v13 = -1 << *(a4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v27 + 8 * (v14 >> 6))) != 0)
      {
        break;
      }

LABEL_4:
      result = sub_226EB2DFC(v9, v8, v10);
LABEL_5:
      v6 = v24;
      v5 = v26;
      if (v25 == v24)
      {
        goto LABEL_17;
      }
    }

    v17 = ~v13;
    sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v18 = *(a4 + 48) + 24 * v14;
      v28 = *v18;
      v29 = *(v18 + 16);
      if (sub_227663B20())
      {
        break;
      }

      v14 = (v14 + 1) & v17;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v27 + 8 * (v14 >> 6))) == 0)
      {
        goto LABEL_4;
      }
    }

    result = sub_226EB2DFC(v9, v8, v10);
    v19 = v22[v15];
    v22[v15] = v19 | v16;
    if ((v19 & v16) != 0)
    {
      goto LABEL_5;
    }

    v4 = v21 + 1;
    v6 = v24;
    v5 = v26;
    if (!__OFADD__(v21, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_17:

  return sub_22726A888(v22, a2, v21, a4);
}

unint64_t sub_22732A43C(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_22732CD14(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 64 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 72 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22732A5A0(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_22732A6B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_22766CCB0();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_22732A738()
{
  v1 = v0;
  v4 = v0[3];
  v2 = v0 + 3;
  v3 = v4;
  v5 = v4[2];
  v68 = v2;
  if (!v5)
  {
    v51 = v1[1];
    if (v51 >= v1[2])
    {
      return;
    }

    v52 = v51 + 1;
    v1[1] = v51 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v1[3];
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_22732B5B8(0, *(v54 + 16), sub_2273A5A28, sub_22732B4D0);
    }

    else
    {
      v55 = sub_2274CD880(0, *(v54 + 24) >> 1);

      *v2 = v55;
    }

    v56 = *v1;
    v57 = -1 << *(v56 + 32);

    v58 = sub_22766CC90();
    if (v51 >= -1)
    {
      v59 = v58;
      v60 = *(v56 + 36);
      v61 = 1 << *(v56 + 32);
      v62 = sub_22732A43C(v58, v60, 0, v52, v61, *(v56 + 36), 0, v56);
      if (v64 == 255)
      {
        v65 = v61;
      }

      else
      {
        v65 = v62;
      }

      if (v64 == 255)
      {
        v66 = v60;
      }

      else
      {
        v66 = v63;
      }

      if (v64 != 255 && (v64 & 1) != 0)
      {
        goto LABEL_94;
      }

      if (v60 == v66)
      {
        if (v65 >= v59)
        {
          v76[0] = v56;
          v76[1] = v59;
          v76[2] = v60;
          v77 = 0;
          v78 = v65;
          v79 = v66;
          v80 = 0;
          sub_227460704(v76);
          return;
        }

LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_84:
    v3 = sub_2272EC560(v3);
  }

  if (v5 > v3[2])
  {
    __break(1u);
    goto LABEL_86;
  }

  v6 = v5 - 1;
  v75 = v3 + 4;
  v7 = &v3[3 * v5 + 1];
  v70 = v5;
  v5 = *v1;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = sub_22732A6B8(*v7, v9, v10, *v1);
  v73 = v12;
  v71 = v13;
  sub_22704FE58(v8, v9, v10);
  *v7 = v11;
  *(v7 + 8) = v73;
  *(v7 + 16) = v71 & 1;
  v1[3] = v3;
  v14 = v3[2];
  if (v70 > v14)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v15 = v7;
  if (*(v7 + 16))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return;
  }

  if (*(v5 + 36) != *(v7 + 8))
  {
    goto LABEL_87;
  }

  if (*v7 == 1 << *(v5 + 32))
  {
    v16 = v5 + 64;
    v74 = v5 + 72;
    v67 = v1;
    v69 = v7;
    while ((*(v15 + 16) & 1) == 0)
    {
      v18 = *(v5 + 36);
      if (v18 != *(v15 + 8))
      {
        goto LABEL_78;
      }

      v19 = *v15;
      if (*v15 != 1 << *(v5 + 32))
      {
        return;
      }

      if (v6 <= 0)
      {

        sub_22732AD54(v1);
        return;
      }

      if (v6 - 1 >= v14)
      {
        goto LABEL_79;
      }

      v72 = v6 - 1;
      v20 = &v75[3 * v6 - 3];
      v21 = *v20;
      if (*v20 < 0 || v21 >= v19)
      {
        goto LABEL_80;
      }

      v22 = v20[1];
      v23 = v21 >> 6;
      v24 = *(v16 + 8 * (v21 >> 6));
      if (v18 != v22 || (v24 & (1 << v21)) == 0)
      {
        goto LABEL_81;
      }

      v26 = v24 & (-2 << (v21 & 0x3F));
      if (v26)
      {
        v19 = __clz(__rbit64(v26)) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = *(v20 + 16);
        v28 = v23 << 6;
        v29 = v23 + 1;
        v30 = (v74 + 8 * v23);
        while (v29 < (v19 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_22704FE58(v21, v22, v27);
            v19 = __clz(__rbit64(v31)) + v28;
            goto LABEL_28;
          }
        }

        sub_22704FE58(v21, v22, v27);
LABEL_28:
        v1 = v67;
        v2 = v68;
      }

      *v20 = v19;
      v20[1] = v18;
      *(v20 + 16) = 0;
      *v2 = v3;
      v33 = v3[2];
      if (v33 < v6)
      {
        goto LABEL_82;
      }

      v34 = v3[2];
      v35 = v6;
      if (v6 != v33)
      {
        while (v35 < v33)
        {
          if (v35 > v34)
          {
            goto LABEL_71;
          }

          v36 = &v75[3 * v35];
          v37 = *(v36 - 3);
          if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_72;
          }

          v38 = 1 << *(v5 + 32);
          if (v37 >= v38)
          {
            goto LABEL_72;
          }

          v39 = v37 >> 6;
          v40 = *(v16 + 8 * (v37 >> 6));
          if (((v40 >> v37) & 1) == 0)
          {
            goto LABEL_73;
          }

          v41 = *(v36 - 2);
          if (*(v5 + 36) != v41)
          {
            goto LABEL_74;
          }

          v42 = v40 & (-2 << (v37 & 0x3F));
          if (v42)
          {
            v38 = __clz(__rbit64(v42)) | v37 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v43 = v39 << 6;
            v44 = v39 + 1;
            v45 = (v74 + 8 * v39);
            while (v44 < (v38 + 63) >> 6)
            {
              v47 = *v45++;
              v46 = v47;
              v43 += 64;
              ++v44;
              if (v47)
              {
                v38 = __clz(__rbit64(v46)) + v43;
                break;
              }
            }
          }

          if (v35 >= v34)
          {
            goto LABEL_75;
          }

          v48 = *v36;
          v49 = v36[1];
          v50 = *(v36 + 16);
          *v36 = v38;
          v36[1] = v41;
          *(v36 + 16) = 0;
          sub_22704FE58(v48, v49, v50);
          *v2 = v3;
          v6 = v3[2];
          if (v35 >= v6)
          {
            goto LABEL_76;
          }

          if (v36[2])
          {
            goto LABEL_91;
          }

          if (*(v5 + 36) != *(v36 + 2))
          {
            goto LABEL_77;
          }

          if (++v35 != v33)
          {
            v34 = v3[2];
            if (*v36 != 1 << *(v5 + 32))
            {
              continue;
            }
          }

          goto LABEL_9;
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_9:
      v14 = v6;
      v15 = v69;
      v17 = v70 > v6;
      v6 = v72;
      if (v17)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_92;
  }
}

unint64_t *sub_22732AC98(unint64_t *result)
{
  v1 = result[1];
  if (v1 < result[2])
  {
    v2 = result;
    v4 = (result + 3);
    v3 = result[3];
    *(v4 - 2) = v1 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_22732B5B8(0, *(v6 + 16), sub_2273A5610, sub_22732B428);
    }

    else
    {
      *v4 = sub_2274CD830(0, *(v6 + 24) >> 1);
    }

    v7 = sub_2273FC414(v2[1], 0, *(*v2 + 16));
    return sub_227460500(v7, v8);
  }

  return result;
}

uint64_t *sub_22732AD54(uint64_t *result)
{
  v1 = result[1];
  if (v1 < result[2])
  {
    v2 = result;
    v4 = result + 3;
    v3 = result[3];
    *(v4 - 2) = v1 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_22732B5B8(0, *(v6 + 16), sub_2273A5A28, sub_22732B4D0);
    }

    else
    {
      *v4 = sub_2274CD880(0, *(v6 + 24) >> 1);
    }

    v7 = *v2;
    v8 = -1 << *(*v2 + 32);
    swift_bridgeObjectRetain_n();
    v9 = sub_22766CC90();
    v10 = *(v7 + 36);
    v11 = *(v7 + 32);

    v12 = v2[1];
    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_22732A43C(v9, v10, 0, v12, 1 << v11, v10, 0, v7);
      if (v14 == 255)
      {
        v15 = 1 << v11;
      }

      else
      {
        v15 = result;
      }

      if (v14 == 255)
      {
        v16 = v10;
      }

      else
      {
        v16 = v13;
      }

      if (v14 != 255 && (v14 & 1) != 0)
      {
        goto LABEL_21;
      }

      if (v10 == v16)
      {
        if (v15 >= v9)
        {
          v17[0] = v7;
          v17[1] = v9;
          v17[2] = v10;
          v18 = 0;
          v19 = v15;
          v20 = v16;
          v21 = 0;
          return sub_227460704(v17);
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_22732AEC8(uint64_t a1)
{
  v2 = sub_22718C9FC(8, 0, 1, a1);
  v3 = sub_22718C9FC(0, 0, 1, a1);
  v4 = sub_22718C9FC(13, 0, 1, a1);
  v5 = *(a1 + 16);
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        if (v5 == 3)
        {
          return 3;
        }

        if (v5 >= 4)
        {
          sub_226F4D188(&unk_283A925F8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          swift_arrayDestroy();
          return 2;
        }

        return 1;
      }

      if (v5 == 2)
      {
        return 2;
      }

      if (v5 >= 3)
      {
        v7 = &unk_283A926D0;
        goto LABEL_27;
      }

      return 1;
    }

    if (v4)
    {
      if (v5 == 2)
      {
        return 2;
      }

      if (v5 < 3)
      {
        return 1;
      }

      v8 = &unk_283A92720;
    }

    else
    {
      if (v5 < 2)
      {
        return 1;
      }

      v8 = &unk_283A92698;
    }

LABEL_21:
    sub_226F4D188(v8);
    sub_226E97D1C(v8 + 32, &qword_27D7B8560, &unk_227671560);
    return 2;
  }

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  if ((v4 & 1) == 0)
  {
    if (v5 < 2)
    {
      return 1;
    }

    v8 = &unk_283A92660;
    goto LABEL_21;
  }

  if (v5 == 2)
  {
    return 2;
  }

  if (v5 >= 3)
  {
    v7 = &unk_283A92758;
LABEL_27:
    sub_226F4D188(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    swift_arrayDestroy();
    return 2;
  }

  return 1;
}

uint64_t sub_22732B0A8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = result + 32;
    do
    {
      v23 = v2;
      v5 = v3;
      while (1)
      {
        if (v5 >= v1)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_27;
        }

        v24 = *(v4 + 8 * v5);
        swift_getKeyPath();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
        sub_226E9CFD0(&qword_27D7BCB88, &qword_27D7B87B8, &qword_227680850);
        sub_22766C200();

        if (v29 != 255)
        {
          break;
        }

        result = sub_22732BF30(v25, v27, v28, 255);
        ++v5;
        if (v3 == v1)
        {
          v2 = v23;
          goto LABEL_16;
        }
      }

      v6 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A58D4(0, *(v23 + 16) + 1, 1, v23);
        v6 = result;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      v9 = v6;
      v10 = v25;
      if (v8 >= v7 >> 1)
      {
        result = sub_2273A58D4((v7 > 1), v8 + 1, 1, v6);
        v12 = v27;
        v11 = v28;
        v9 = result;
        v10 = v25;
      }

      else
      {
        v11 = v28;
        v12 = v27;
      }

      *(v9 + 16) = v8 + 1;
      v13 = v9 + 32 * v8;
      v2 = v9;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      *(v13 + 48) = v11;
      *(v13 + 56) = v29 & 1;
    }

    while (v3 != v1);
  }

LABEL_16:
  v14 = *(v2 + 16);
  if (v14)
  {
    v26 = MEMORY[0x277D84F90];
    sub_226F1F090(0, v14, 0);
    v15 = v26;
    v16 = *(v26 + 16);
    v17 = 32;
    do
    {
      v18 = *(v2 + v17);
      v19 = *(v26 + 24);
      if (v16 >= v19 >> 1)
      {
        sub_226F1F090((v19 > 1), v16 + 1, 1);
      }

      *(v26 + 16) = v16 + 1;
      *(v26 + 8 * v16 + 32) = v18;
      v17 += 32;
      ++v16;
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v20 = sub_2274CFCF0(v15);
  v22 = v21;

  if (v22)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

unint64_t sub_22732B360(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  result = sub_2273FC414(v5, 0, *(a1 + 16));
  v8 = (v7 - result);
  if (__OFSUB__(v7, result))
  {
    __break(1u);
  }

  else
  {
    if (v8)
    {
      v9 = result;
      v10 = v7;
      v11 = sub_2274CD830(v7 - result, 0);
      if (sub_22745819C(v12, (v11 + 4), v8, v9, v10) != v8)
      {
        __break(1u);
      }
    }

    return a1;
  }

  return result;
}

unint64_t sub_22732B428(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_22732B4D0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBB0, &qword_2276808D8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  v14 = 24 * v12;
  if (result != v13 || result >= v13 + v14)
  {
    result = memmove(result, v13, v14);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v16;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22732B5B8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
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

  v13 = *v4;
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

uint64_t sub_22732B690(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v25 = result + 32;
    v3 = MEMORY[0x277D84F90];
    v24 = *(result + 16);
    do
    {
      v23 = v3;
      v4 = v2;
      while (1)
      {
        if (v4 >= v1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          return result;
        }

        if (__OFADD__(v4, 1))
        {
          goto LABEL_34;
        }

        v26 = v4 + 1;
        v5 = *(v25 + 8 * v4);
        v6 = *(v5 + 16);

        if (v6)
        {
          v7 = 0;
          v8 = v5 + 56;
          v9 = MEMORY[0x277D84F90];
          do
          {
            v27 = v9;
            v10 = (v8 + 32 * v7);
            v11 = v7;
            while (1)
            {
              if (v11 >= *(v5 + 16))
              {
                __break(1u);
                goto LABEL_33;
              }

              v12 = *(v10 - 3);
              v13 = *(v10 - 2);
              v14 = *(v10 - 1);
              v15 = *v10;
              v7 = v11 + 1;
              sub_226EB396C(v13, v14, *v10);
              sub_226F48150();
              sub_226EC1E18();
              if (sub_227663B30())
              {
                break;
              }

              result = sub_226EB2DFC(v13, v14, v15);
              v10 += 32;
              ++v11;
              if (v6 == v7)
              {
                v9 = v27;
                goto LABEL_20;
              }
            }

            v9 = v27;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_226F1FCC8(0, *(v27 + 16) + 1, 1);
              v9 = v27;
            }

            v17 = *(v9 + 16);
            v16 = *(v9 + 24);
            v18 = v17 + 1;
            if (v17 >= v16 >> 1)
            {
              result = sub_226F1FCC8((v16 > 1), v17 + 1, 1);
              v18 = v17 + 1;
              v9 = v27;
            }

            *(v9 + 16) = v18;
            v19 = v9 + 32 * v17;
            *(v19 + 32) = v12;
            *(v19 + 40) = v13;
            *(v19 + 48) = v14;
            *(v19 + 56) = v15;
            v8 = v5 + 56;
          }

          while (v6 - 1 != v11);
        }

        else
        {
          v9 = MEMORY[0x277D84F90];
        }

LABEL_20:
        v20 = *(v9 + 16);

        if (v20 < 2)
        {
          break;
        }

        v4 = v26;
        v1 = v24;
        if (v26 == v24)
        {
          v3 = v23;
          goto LABEL_28;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v3 = v23;
      if ((result & 1) == 0)
      {
        result = sub_226F1FCA8(0, *(v23 + 16) + 1, 1);
        v3 = v23;
      }

      v22 = *(v3 + 16);
      v21 = *(v3 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_226F1FCA8((v21 > 1), v22 + 1, 1);
        v3 = v23;
      }

      *(v3 + 16) = v22 + 1;
      *(v3 + 8 * v22 + 32) = v5;
      v1 = v24;
      v2 = v26;
    }

    while (v26 != v24);
LABEL_28:
    if (!*(v3 + 16))
    {
      goto LABEL_31;
    }

    return v3;
  }

  v3 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    return v3;
  }

LABEL_31:
}

uint64_t sub_22732B974(uint64_t result, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  v3 = 0;
  v26 = result;
  v27 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;
  v30 = v7;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v32 = (v6 - 1) & v6;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(a3 + 48) + 24 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v29 = v11;
    v15 = *(*(a3 + 56) + 8 * v11);
    v35 = *(v12 + 16);
    sub_226EB396C(*v12, v13, v35);

    v16 = sub_227667250();
    v17 = v16;
    if (!*(v16 + 16))
    {
      goto LABEL_5;
    }

    v18 = *(v16 + 40);
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v19 = sub_22766D3F0();
    v20 = -1 << *(v17 + 32);
    v21 = v19 & ~v20;
    if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      sub_226F48150();
      sub_226EC1E18();
      while (1)
      {
        v23 = *(v17 + 48) + 24 * v21;
        v33 = *v23;
        v34 = *(v23 + 16);
        if (sub_227663B20())
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = sub_226EB2DFC(v14, v13, v35);
      *(v26 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v24 = __OFADD__(v28++, 1);
      v7 = v30;
      v6 = v32;
      if (v24)
      {
        __break(1u);
        return sub_227328C40(v26, a2, v28, a3);
      }
    }

    else
    {
LABEL_5:

      result = sub_226EB2DFC(v14, v13, v35);
      v7 = v30;
      v6 = v32;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return sub_227328C40(v26, a2, v28, a3);
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22732BC60(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = swift_retain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v9 = sub_227328794(v12, v6, a1);
      MEMORY[0x22AA9A450](v12, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);

  v9 = sub_22732B974(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a1);

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL sub_22732BE20(uint64_t a1, uint64_t a2)
{

  v4 = sub_226F43CE0(a2);

  v20 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 32;
    do
    {
      v8 = *(v7 + 8 * v6);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v7 + 8 * v6);

        v11 = (v8 + 56);
        do
        {
          v12 = *(v11 - 2);
          v13 = *(v11 - 1);
          v14 = *v11;
          v11 += 32;
          sub_226EB396C(v12, v13, v14);
          v15 = sub_22700C8C0();
          sub_227010FE0(v15, v16, v17);
          sub_226EB2DFC(v12, v13, v14);
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v5);
    v4 = v20;
  }

  v18 = *(v4 + 16);

  return v18 == 0;
}

uint64_t sub_22732BF30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_226EB2DFC(a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_22732BF54()
{
  v0 = sub_22766B390();
  v138 = *(v0 - 8);
  v1 = *(v138 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v126 = &v125 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v125 - v7;

  v10 = sub_226F43DCC(v9);

  v11 = 0;
  v132 = 0;
  v139 = 0;
  v12 = 0;
  v13 = v10 + 56;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v10 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = MEMORY[0x277D84F98];
  v135 = v0;
  v136 = v4;
  v137 = v8;
  v143 = v10;
  v144 = v17;
  v145 = v10 + 56;
  while (1)
  {
    v141 = v11;
    v142 = v18;
    if (!v16)
    {
      break;
    }

LABEL_11:
    v147 = v12;
    v148 = v16;
    v21 = *(*(v10 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v16)))));
    v155 = MEMORY[0x277D84FA0];
    v22 = *(v21 + 16);
    if (v22)
    {

      v23 = (v146 + 56);
      v24 = MEMORY[0x277D84F90];
      v25 = MEMORY[0x277D84F90];
      do
      {
        v27 = *(v23 - 3);
        v26 = *(v23 - 2);
        v28 = *(v23 - 1);
        v29 = *v23;
        sub_226EB396C(v26, v28, *v23);
        sub_226EB396C(v26, v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2273A55F4(0, *(v25 + 2) + 1, 1, v25);
        }

        v31 = *(v25 + 2);
        v30 = *(v25 + 3);
        if (v31 >= v30 >> 1)
        {
          v25 = sub_2273A55F4((v30 > 1), v31 + 1, 1, v25);
        }

        *(v25 + 2) = v31 + 1;
        v32 = &v25[40 * v31];
        *(v32 + 4) = v27;
        *(v32 + 5) = MEMORY[0x277D84FA0];
        *(v32 + 6) = v26;
        *(v32 + 7) = v28;
        v32[64] = v29;
        sub_226EB396C(v26, v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2273A59E0(0, v24[2] + 1, 1, v24);
        }

        v34 = v24[2];
        v33 = v24[3];
        if (v34 >= v33 >> 1)
        {
          v24 = sub_2273A59E0((v33 > 1), v34 + 1, 1, v24);
        }

        v24[2] = v34 + 1;
        v35 = &v24[3 * v34];
        v35[4] = v26;
        v35[5] = v28;
        *(v35 + 48) = v29;
        sub_227105A48(&v152, v26, v28, v29);
        sub_226EB2DFC(v152, v153, v154);
        v23 += 32;
        --v22;
      }

      while (v22);

      v10 = v143;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
      v25 = MEMORY[0x277D84F90];
    }

    v152 = v24;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB90, &unk_2276808B8);
    sub_226E9CFD0(&qword_27D7BCB98, &qword_27D7BCB90, &unk_2276808B8);
    v36 = sub_22766C220();

    sub_226EA9E3C(v141);
    v37 = v142;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152 = v37;
    v40 = sub_226F3AE8C(v36);
    v41 = *(v37 + 16);
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_77;
    }

    v44 = v39;
    if (*(v37 + 24) >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = v142;
        if (v39)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_226FF27E4();
        v45 = v152;
        if (v44)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_226FE74A8(v43, isUniquelyReferenced_nonNull_native);
      v45 = v152;
      v46 = sub_226F3AE8C(v36);
      if ((v44 & 1) != (v47 & 1))
      {
        goto LABEL_81;
      }

      v40 = v46;
      if (v44)
      {
LABEL_31:

        goto LABEL_35;
      }
    }

    v45[(v40 >> 6) + 8] |= 1 << v40;
    *(v45[6] + 8 * v40) = v36;
    *(v45[7] + 8 * v40) = MEMORY[0x277D84F90];
    v48 = v45[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_79;
    }

    v45[2] = v50;
LABEL_35:
    v51 = v45;
    v52 = v45[7];
    v53 = *(v52 + 8 * v40);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *(v52 + 8 * v40) = v53;
    if ((v54 & 1) == 0)
    {
      v53 = sub_2273A58B0(0, v53[2] + 1, 1, v53);
      *(v52 + 8 * v40) = v53;
    }

    v56 = v53[2];
    v55 = v53[3];
    if (v56 >= v55 >> 1)
    {
      v53 = sub_2273A58B0((v55 > 1), v56 + 1, 1, v53);
      *(v52 + 8 * v40) = v53;
    }

    v4 = v136;
    v18 = v51;
    v53[2] = v56 + 1;
    v53[v56 + 4] = v25;
    v57 = *(v25 + 2);
    v49 = __OFADD__(v139, v57);
    v58 = v139 + v57;
    if (v49)
    {
      goto LABEL_78;
    }

    v139 = v58;
    v59 = v24[2];

    v60 = *(v155 + 16);

    if (v60 >= v59)
    {
      v0 = v135;
      v8 = v137;
      v19 = v148;
    }

    else
    {
      v0 = v135;
      v8 = v137;
      v19 = v148;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_80;
      }

      ++v132;
    }

    v16 = (v19 - 1) & v19;
    v11 = sub_22703CD34;
    v17 = v144;
    v13 = v145;
    v12 = v147;
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v12;
    if (v16)
    {
      v12 = v20;
      goto LABEL_11;
    }
  }

  v61 = v18 + 8;
  v62 = 1 << *(v18 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v140 = v63 & v18[8];
  v133 = (v62 + 63) >> 6;
  v64 = (v138 + 8);
  swift_bridgeObjectRetain_n();
  v65 = 0;
  *&v66 = 136315394;
  v127 = v66;
  v131 = v18 + 8;
  v128 = v64;
  while (1)
  {
    v67 = v140;
    if (!v140)
    {
      break;
    }

LABEL_53:
    v140 = (v67 - 1) & v67;
    v138 = v65;
    v69 = (v65 << 9) | (8 * __clz(__rbit64(v67)));
    v70 = *(v18[6] + v69);
    v71 = *(v18[7] + v69);

    sub_22766A630();

    v72 = sub_22766B380();
    v73 = sub_22766C880();

    v134 = v73;
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v155 = v129;
      *v74 = v127;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      v76 = MEMORY[0x22AA98660](v70, v75);
      v78 = v77;

      v79 = sub_226E97AE8(v76, v78, &v155);

      *(v74 + 4) = v79;
      v130 = v74;
      *(v74 + 12) = 2080;
      v80 = *(v71 + 16);
      if (v80)
      {
        v151 = MEMORY[0x277D84F90];
        sub_226F1EF90(0, v80, 0);
        v81 = 0;
        v82 = v151;
        v125 = v71;
        v144 = v72;
        v145 = v71 + 32;
        v83 = v80;
        v143 = v80;
        do
        {
          v147 = v81;
          v148 = v82;
          v84 = *(v145 + 8 * v81);
          v85 = *(v84 + 16);
          if (v85)
          {
            v150 = MEMORY[0x277D84F90];

            sub_226F1EF90(0, v85, 0);
            v86 = v150;
            v146 = v84;
            v87 = (v84 + 64);
            do
            {
              v88 = *(v87 - 4);
              v89 = *(v87 - 3);
              v90 = *(v87 - 1);
              v92 = *v87;
              v152 = *(v87 - 2);
              v91 = v152;
              v153 = v90;
              v154 = v92;

              sub_226EB396C(v91, v90, v92);
              sub_22713A9EC();
              v152 = sub_227663B60();
              v153 = v93;
              MEMORY[0x22AA98450](40, 0xE100000000000000);
              v149 = v88;
              v94 = sub_22766D140();
              MEMORY[0x22AA98450](v94);

              MEMORY[0x22AA98450](41, 0xE100000000000000);

              sub_226EB2DFC(v91, v90, v92);
              v95 = v152;
              v96 = v153;
              v150 = v86;
              v98 = *(v86 + 16);
              v97 = *(v86 + 24);
              if (v98 >= v97 >> 1)
              {
                sub_226F1EF90(v97 > 1, v98 + 1, 1);
                v86 = v150;
              }

              *(v86 + 16) = v98 + 1;
              v99 = v86 + 16 * v98;
              *(v99 + 32) = v95;
              *(v99 + 40) = v96;
              v87 += 40;
              --v85;
            }

            while (v85);
            v83 = v143;
            v72 = v144;
          }

          else
          {
            v100 = *(v145 + 8 * v81);

            v86 = MEMORY[0x277D84F90];
          }

          v152 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
          sub_226E9CFD0(&qword_27D7BC8C0, &qword_27D7B84E0, &qword_22767C6B0);
          v101 = sub_22766BF70();
          v103 = v102;

          v82 = v148;
          v151 = v148;
          v105 = *(v148 + 16);
          v104 = *(v148 + 24);
          if (v105 >= v104 >> 1)
          {
            sub_226F1EF90(v104 > 1, v105 + 1, 1);
            v82 = v151;
          }

          v81 = v147 + 1;
          *(v82 + 16) = v105 + 1;
          v106 = v82 + 16 * v105;
          *(v106 + 32) = v101;
          *(v106 + 40) = v103;
        }

        while (v81 != v83);

        v0 = v135;
        v4 = v136;
      }

      else
      {

        v82 = MEMORY[0x277D84F90];
      }

      v107 = MEMORY[0x22AA98660](v82, MEMORY[0x277D837D0]);
      v109 = v108;

      v110 = sub_226E97AE8(v107, v109, &v155);

      v111 = v130;
      *(v130 + 14) = v110;
      _os_log_impl(&dword_226E8E000, v72, v134, "[Algorithm]: Splits: %s -> %s", v111, 0x16u);
      v112 = v129;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v112, -1, -1);
      MEMORY[0x22AA9A450](v111, -1, -1);

      v64 = v128;
      v8 = v137;
      (*v128)(v137, v0);
      v18 = v142;
    }

    else
    {

      (*v64)(v8, v0);
    }

    v61 = v131;
    v65 = v138;
  }

  while (1)
  {
    v68 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v68 >= v133)
    {
      v113 = v64;

      sub_22766A630();
      v114 = sub_22766B380();
      v115 = sub_22766C8B0();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 134217984;
        *(v116 + 4) = v139;
        _os_log_impl(&dword_226E8E000, v114, v115, "%ld modality/duration candidates generated", v116, 0xCu);
        v117 = v116;
        v4 = v136;
        MEMORY[0x22AA9A450](v117, -1, -1);
      }

      v118 = *v113;
      (*v113)(v126, v0);
      sub_22766A630();
      v119 = sub_22766B380();
      v120 = sub_22766C8B0();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = v4;
        v122 = swift_slowAlloc();
        *v122 = 134217984;
        *(v122 + 4) = v132;
        v123 = v142;

        _os_log_impl(&dword_226E8E000, v119, v120, "Number of modality/duration splits with repeated modalities is %ld", v122, 0xCu);
        MEMORY[0x22AA9A450](v122, -1, -1);

        v118(v121, v0);
      }

      else
      {

        v118(v4, v0);
        v123 = v142;
      }

      sub_226EA9E3C(v141);
      return v123;
    }

    v67 = v61[v68];
    ++v65;
    if (v67)
    {
      v65 = v68;
      goto LABEL_53;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22732CCA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBA0, &qword_2276808C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22732CD14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22732CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22732A1F0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_22732CD54(unint64_t result, uint64_t a2, uint64_t a3)
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

void sub_22732CE14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v27 - v14;
  v16 = [a1 referenceIdentifier];
  if (v16)
  {
    v17 = v16;
    v27[2] = sub_22766C000();
    v27[9] = v18;

    v19 = [a1 referenceType];
    if (v19)
    {
      v27[1] = a2;
      v20 = v19;
      v27[0] = sub_22766C000();
      v22 = v21;

      v23 = [a1 dateBookmarked];
      if (v23)
      {
        v24 = v23;
        sub_227662710();

        (*(v5 + 32))(v15, v11, v4);
        v27[3] = v27[0];
        v27[4] = v22;
        sub_227125DE8();
        sub_227663AE0();
        (*(v5 + 16))(v8, v15, v4);
        sub_227669340();

        (*(v5 + 8))(v15, v4);
        return;
      }
    }
  }

  v25 = sub_227664DD0();
  sub_22732D770(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
  swift_willThrow();
}

size_t static Bookmark.representativeSamples()()
{
  v35 = sub_227662750();
  v26 = *(v35 - 8);
  v0 = *(v26 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBC0, &qword_227680908);
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = v25 - v4;
  v32 = sub_227669360();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  sub_22732D5AC();
  sub_227125DE8();
  v11 = sub_227663B50();
  v12 = sub_227662630();
  v44 = v11;
  v45[0] = v10;
  v45[1] = v45;
  v45[2] = &v44;
  v43 = v12;
  v45[3] = &v43;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBD0, &qword_227680910);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v37 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v38 = sub_226F5BF60(&qword_27D7BCBD8, &qword_27D7BCBD0, &qword_227680910);
  v39 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v36 = MEMORY[0x277D84F90];
    result = sub_226F20488(0, v14, 0);
    v16 = 0;
    v17 = v36;
    v27 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v26 += 16;
    v25[1] = v6 + 32;
    v30 = v6;
    v31 = v2;
    v28 = v14;
    v29 = v13;
    while (v16 < *(v13 + 16))
    {
      sub_22732D640(v27 + *(v2 + 72) * v16, v5);
      v18 = *v5;
      v19 = *(v5 + 1);
      v21 = *(v5 + 2);
      v20 = *(v5 + 3);
      v22 = v5[32];
      (*v26)(v34, &v5[*(v33 + 64)], v35);

      sub_226EB396C(v21, v20, v22);
      sub_227669340();
      sub_22732D6B0(v5);
      v36 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F20488(v23 > 1, v24 + 1, 1);
        v17 = v36;
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      result = (*(v30 + 32))(v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v9, v32);
      v13 = v29;
      v2 = v31;
      if (v28 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_22732D5AC()
{
  result = qword_27D7BCBC8;
  if (!qword_27D7BCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCBC8);
  }

  return result;
}

uint64_t sub_22732D640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBC0, &qword_227680908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22732D6B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBC0, &qword_227680908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22732D718(uint64_t a1)
{
  result = sub_22732D770(&qword_2813A54F8, MEMORY[0x277D53BA0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22732D770(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22732D7B8(void *a1)
{
  v14[0] = sub_227662750();
  v2 = *(v14[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227669350();
  v6 = sub_22766BFD0();

  [a1 setReferenceIdentifier_];

  v7 = sub_227669320();
  v9 = v8;
  v14[3] = v7;
  v14[4] = v8;
  v11 = v10 & 1;
  v15 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
  sub_227663AD0();
  v12 = sub_22766BFD0();
  sub_226EB2DFC(v7, v9, v11);

  [a1 setReferenceType_];

  sub_227669330();
  v13 = sub_2276626A0();
  (*(v2 + 8))(v5, v14[0]);
  [a1 setDateBookmarked_];
}

uint64_t sub_22732D978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBF0, &qword_227680968);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_227664E50();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227665690();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227665B50();
  if (v14 & 1) != 0 && (v12 = sub_227665AF0(), (v15) && (v23[9] = v12, v12 = sub_227665B20(), (v16) && (v23[7] = v12, v12 = sub_227665B40(), (v17))
  {
    v23[6] = v12;
    v18 = sub_227665B30();
    v23[4] = v19;
    v23[5] = v18;
    sub_227665B70();
    sub_2275E3924(a1, v11);
    sub_22732E268(v7);
    v23[3] = sub_227665B60();
    v23[2] = sub_227665B10();
    v23[1] = sub_227665AE0();
    sub_227665B80();
    sub_227665B00();
    sub_227665B90();
    return sub_227666240();
  }

  else
  {
    sub_226EB2DFC(v12, v13, 0);
    v21 = sub_2276639E0();
    sub_22732E210();
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D50228], v21);
    return swift_willThrow();
  }
}

char *sub_22732DBF8(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v39 = sub_22766B390();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE8, &qword_227680960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = sub_227666250();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v48 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v35 = &v32 - v14;
  v15 = sub_227665BA0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v50 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = *(v17 + 16);
  v21 = v17 + 16;
  v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v46 = *(v21 + 56);
  v47 = v22;
  v36 = v3 + 8;
  v44 = (v21 - 8);
  v45 = (v10 + 56);
  v43 = (v10 + 48);
  v34 = v10;
  v42 = (v10 + 32);
  v49 = MEMORY[0x277D84F90];
  *&v18 = 136446210;
  v32 = v18;
  v24 = v33;
  v40 = v21;
  v41 = v15;
  v37 = v9;
  v38 = v8;
  v22(v50, v23, v15);
  while (1)
  {
    sub_22732D978(v24);
    (*v45)(v8, 0, 1, v9);
    (*v44)(v50, v15);
    if ((*v43)(v8, 1, v9) == 1)
    {
      sub_22732E1A8(v8);
    }

    else
    {
      v25 = *v42;
      v26 = v35;
      (*v42)(v35, v8, v9);
      v25(v48, v26, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_2273A6AF8(0, *(v49 + 2) + 1, 1, v49);
      }

      v28 = *(v49 + 2);
      v27 = *(v49 + 3);
      if (v28 >= v27 >> 1)
      {
        v49 = sub_2273A6AF8(v27 > 1, v28 + 1, 1, v49);
      }

      v29 = v48;
      v30 = v49;
      *(v49 + 2) = v28 + 1;
      v25(&v30[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28], v29, v9);
      v15 = v41;
    }

    v23 += v46;
    if (!--v20)
    {
      break;
    }

    v47(v50, v23, v15);
  }

  return v49;
}

uint64_t sub_22732E1A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE8, &qword_227680960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22732E210()
{
  result = qword_27D7BCBF8;
  if (!qword_27D7BCBF8)
  {
    sub_2276639E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCBF8);
  }

  return result;
}

uint64_t sub_22732E268(uint64_t a1)
{
  v2 = sub_227664E50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22732E2C4()
{
  v50 = sub_227662750();
  v1 = *(v50 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v50);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_modalityIdentifier);
  v10 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_modalityIdentifier + 8);
  sub_22732FF5C(v9, v10);
  v12 = v11;
  v13 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planCompletedWorkoutCount);
  v48 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planTotalWorkoutCount);
  v49 = v13;
  v14 = sub_22732EBF4();
  v15 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_HKWorkoutIdentifier + 8);
  v46 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_HKWorkoutIdentifier);
  v47 = v14;

  v16 = sub_2273301D8();
  v17 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_isCompletingProgram);
  v44 = v16;
  v45 = v17;
  v18 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_isGuidedSession);
  v43 = sub_227330838();
  v42 = sub_2276679E0();

  v41 = sub_2273311D4(v9, v10, v18);
  v40 = sub_22732EA20();
  v39 = sub_227330D3C(v9, v10, v18);
  sub_22732E6E8(v8);
  sub_227664510();
  v20 = v19;
  v21 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_sessionEnergyBurned);
  v22 = sub_2276644D0();
  v37 = v23;
  v38 = v22;
  sub_227664520();
  v24 = type metadata accessor for AchievementEnvironment();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_bestEnergyBurnedOfWorkoutModality] = v12;
  v26 = v48;
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_currentPlanCompletedNumberOfWorkouts] = v49;
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_currentPlanTotalNumberOfWorkouts] = v26;
  v27 = v46;
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_currentWeeklyStreak] = v47;
  v28 = &v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_HKWorkoutIdentifier];
  *v28 = v27;
  v28[1] = v15;
  v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_isSessionCompletingPlan] = v44 & 1;
  v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_isSessionCompletingProgram] = v45;
  v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_isSessionGuided] = v18;
  v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_isSessionParticipatingInPlan] = v43 & 1;
  v29 = v41;
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_longestWeeklyStreak] = v42;
  v30 = &v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_modalityIdentifier];
  *v30 = v9;
  v30[1] = v10;
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_numberOfGuidedWorkoutsOver5MinutesForModalities] = v29;
  v31 = v39;
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_numberOfWorkoutsOver5Minutes] = v40;
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_numberOfWorkoutsOver5MinutesForModalities] = v31;
  sub_226E93170(v8, &v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_planCompletionDate], &qword_27D7B9690, qword_227670B50);
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionDuration] = v20;
  *&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionEnergyBurned] = v21;
  v32 = &v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier];
  v33 = v37;
  *v32 = v38;
  v32[1] = v33;
  v34 = v50;
  (*(v1 + 16))(&v25[OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionStartDate], v4, v50);
  v51.receiver = v25;
  v51.super_class = v24;
  v35 = objc_msgSendSuper2(&v51, sel_init);
  (*(v1 + 8))(v4, v34);
  sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
  return v35;
}

uint64_t sub_22732E6E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22766B390();
  v17[0] = *(v3 - 8);
  v4 = *(v17[0] + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - v7;
  v9 = sub_2276638D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E93170(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, v8, &unk_27D7BB920, &unk_227672480);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_226E97D1C(v8, &unk_27D7BB920, &unk_227672480);
    v14 = 1;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_227663870();
    (*(v10 + 8))(v13, v9);
    v14 = 0;
  }

  v15 = sub_227662750();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_22732EA20()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A610();

  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = sub_2276679F0();

    _os_log_impl(&dword_226E8E000, v6, v7, "[AchievementEnvironmentProvider] Existing workout count: %ld", v8, 0xCu);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v5, v1);
  if (*(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) != 1 || *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) != 1)
  {
    return sub_2276679F0();
  }

  v9 = sub_2276679F0();
  v10 = __OFADD__(v9, 1);
  result = v9 + 1;
  if (v10)
  {
    __break(1u);
    return sub_2276679F0();
  }

  return result;
}

uint64_t sub_22732EBF4()
{
  v1 = v0;
  v2 = sub_227662190();
  v148 = *(v2 - 8);
  v149 = v2;
  v3 = *(v148 + 64);
  MEMORY[0x28223BE20](v2);
  v150 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v161 = v5;
  v162 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v137 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v146 = &v137 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v145 = &v137 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v147 = &v137 - v19;
  MEMORY[0x28223BE20](v18);
  v151 = &v137 - v20;
  v155 = sub_227662930();
  v159 = *(v155 - 8);
  v21 = *(v159 + 8);
  MEMORY[0x28223BE20](v155);
  v23 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v154 = &v137 - v26;
  v156 = sub_227662750();
  v27 = *(v156 - 8);
  v28 = *(v27 + 8);
  v29 = MEMORY[0x28223BE20](v156);
  v144 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v143 = &v137 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v160 = &v137 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v158 = &v137 - v36;
  MEMORY[0x28223BE20](v35);
  v157 = &v137 - v37;
  v38 = sub_227662940();
  v39 = *(v38 - 8);
  v152 = v38;
  v153 = v39;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v137 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v137 - v51;
  v53 = sub_2276667B0();
  v163 = *(v53 - 8);
  v164 = v53;
  v54 = *(v163 + 64);
  MEMORY[0x28223BE20](v53);
  if (*(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) != 1 || *(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) != 1)
  {
    sub_22766A610();

    v62 = sub_22766B380();
    v63 = sub_22766C8B0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v165[0] = v65;
      *v64 = 136315138;
      sub_2276679D0();
      v66 = sub_22766CB80();
      v68 = v67;
      sub_226E97D1C(v50, &qword_27D7B8E40, &unk_227685580);
      v69 = sub_226E97AE8(v66, v68, v165);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_226E8E000, v62, v63, "[AchievementEnvironmentProvider] Session didn't meet the threshold, returning current streak %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x22AA9A450](v65, -1, -1);
      MEMORY[0x22AA9A450](v64, -1, -1);
    }

    (*(v162 + 8))(v10, v161);
    sub_2276679D0();
    v70 = v163;
    v71 = v164;
    if ((*(v163 + 48))(v47, 1, v164) == 1)
    {
      sub_226E97D1C(v47, &qword_27D7B8E40, &unk_227685580);
      return 0;
    }

    v72 = sub_2276667A0();
    (*(v70 + 8))(v47, v71);
    return v72;
  }

  v142 = &v137 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v27;
  sub_2276679D0();
  v56 = v163;
  v57 = v164;
  if ((*(v163 + 48))(v52, 1, v164) == 1)
  {
    sub_226E97D1C(v52, &qword_27D7B8E40, &unk_227685580);
    sub_22766A610();
    v58 = sub_22766B380();
    v59 = sub_22766C8B0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_226E8E000, v58, v59, "[AchievementEnvironmentProvider] There was no current streak, returning current streak of 1", v60, 2u);
      MEMORY[0x22AA9A450](v60, -1, -1);
    }

    (*(v162 + 8))(v13, v161);
    return 1;
  }

  (*(v56 + 32))(v142, v52, v57);
  v73 = [objc_opt_self() currentCalendar];
  v74 = v42;
  sub_2276628C0();

  v140 = sub_2276667A0();
  v75 = v157;
  sub_227666770();
  v76 = v158;
  sub_227664480();
  v77 = v159;
  v78 = *(v159 + 13);
  v139 = *MEMORY[0x277CC9968];
  v79 = v155;
  v138 = v78;
  v78(v23);
  v80 = v154;
  sub_2276628F0();
  v137 = *(v77 + 1);
  v137(v23, v79);
  v81 = v141;
  v82 = v156;
  if ((*(v141 + 6))(v80, 1, v156) == 1)
  {
    v83 = *(v81 + 1);
    v83(v76, v82);
    v83(v75, v82);
    (*(v153 + 8))(v74, v152);
    (*(v163 + 8))(v142, v164);
    sub_226E97D1C(v80, &qword_27D7B9690, qword_227670B50);
    return v140;
  }

  (*(v81 + 4))(v160, v80, v82);
  v138(v23, v139, v79);
  v84 = sub_227662910();
  v137(v23, v79);
  if (v84)
  {
    v85 = v151;
    sub_22766A610();
    v86 = sub_22766B380();
    v87 = sub_22766C8B0();
    v88 = os_log_type_enabled(v86, v87);
    v89 = v140;
    if (v88)
    {
      v90 = swift_slowAlloc();
      *v90 = 134217984;
      *(v90 + 4) = v89;
      _os_log_impl(&dword_226E8E000, v86, v87, "[AchievementEnvironmentProvider] This session is in the same week as the current streak, returning streakLength of %ld", v90, 0xCu);
      MEMORY[0x22AA9A450](v90, -1, -1);
    }

    (*(v162 + 8))(v85, v161);
    v91 = *(v141 + 1);
    v91(v160, v82);
    v91(v76, v82);
    v91(v75, v82);
    (*(v153 + 8))(v74, v152);
    (*(v163 + 8))(v142, v164);
    return v89;
  }

  v138(v23, v139, v79);
  v92 = sub_227662910();
  v137(v23, v79);
  if ((v92 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
    v103 = *(v159 + 9);
    v104 = (v159[80] + 32) & ~v159[80];
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_227670CD0;
    v138((v105 + v104), v139, v79);
    sub_226F4CE68(v105);
    swift_setDeallocating();
    v137((v105 + v104), v79);
    swift_deallocClassInstance();
    v99 = v150;
    sub_2276628A0();

    v106 = sub_227662120();
    if ((v107 & 1) == 0 && v106 >= 14)
    {
      v108 = v145;
      sub_22766A610();
      v109 = sub_22766B380();
      v110 = sub_22766C8B0();
      v111 = os_log_type_enabled(v109, v110);
      v112 = v164;
      v113 = v160;
      if (v111)
      {
        v114 = v108;
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_226E8E000, v109, v110, "[AchievementEnvironmentProvider] Starting a new streak", v115, 2u);
        MEMORY[0x22AA9A450](v115, -1, -1);

        (*(v162 + 8))(v114, v161);
        (*(v148 + 8))(v99, v149);
        v116 = *(v141 + 1);
        v116(v113, v82);
        v116(v76, v82);
        v116(v75, v82);
        (*(v153 + 8))(v74, v152);
        (*(v163 + 8))(v142, v164);
      }

      else
      {

        (*(v162 + 8))(v108, v161);
        (*(v148 + 8))(v99, v149);
        v136 = *(v141 + 1);
        v136(v113, v82);
        v136(v76, v82);
        v136(v75, v82);
        (*(v153 + 8))(v74, v152);
        (*(v163 + 8))(v142, v112);
      }

      return 1;
    }

    v117 = v146;
    sub_22766A610();
    v118 = v76;
    v76 = v141;
    v119 = *(v141 + 2);
    v98 = v143;
    v119(v143, v118, v82);
    v120 = v144;
    v119(v144, v75, v82);
    v102 = sub_22766B380();
    v121 = sub_22766C890();
    if (!os_log_type_enabled(v102, v121))
    {
      goto LABEL_37;
    }

    v122 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v165[0] = v155;
    *v122 = 136315650;
    sub_227331C00();
    v159 = v74;
    LODWORD(v154) = v121;
    v123 = sub_22766D140();
    v125 = v124;
    v126 = *(v76 + 1);
    v126(v98, v82);
    v127 = sub_226E97AE8(v123, v125, v165);

    *(v122 + 4) = v127;
    *(v122 + 12) = 2080;
    v128 = sub_22766D140();
    v130 = v129;
    v126(v120, v82);
    v131 = sub_226E97AE8(v128, v130, v165);

    *(v122 + 14) = v131;
    *(v122 + 22) = 2048;
    v72 = v140;
    *(v122 + 24) = v140;
    _os_log_impl(&dword_226E8E000, v102, v154, "[AchievementEnvironmentProvider] Invalid date interval found between session start of week (%s and first weekday of streak end (%s, returning current streak length %ld", v122, 0x20u);
    v132 = v155;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v132, -1, -1);
    MEMORY[0x22AA9A450](v122, -1, -1);

    (*(v162 + 8))(v146, v161);
    (*(v148 + 8))(v150, v149);
    v126(v160, v82);
    v126(v158, v82);
    v126(v157, v82);
    (*(v153 + 8))(v159, v152);
    (*(v163 + 8))(v142, v164);
    return v72;
  }

  v93 = v147;
  sub_22766A610();
  v94 = sub_22766B380();
  v95 = sub_22766C8B0();
  v96 = os_log_type_enabled(v94, v95);
  v97 = v163;
  v98 = v164;
  if (v96)
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v99 = (v140 + 1);
    if (__OFADD__(v140, 1))
    {
      __break(1u);
      return result;
    }

    *(result + 4) = v99;
    v100 = v95;
    v101 = result;
    _os_log_impl(&dword_226E8E000, v94, v100, "[AchievementEnvironmentProvider] This session is in the week following the most recent streak end, returning streakLength of %ld", result, 0xCu);
    MEMORY[0x22AA9A450](v101, -1, -1);

    v102 = 0;
  }

  else
  {

    v99 = (v140 + 1);
    v102 = __OFADD__(v140, 1);
  }

  (*(v162 + 8))(v93, v161);
  v120 = v141 + 8;
  v133 = *(v141 + 1);
  v133(v160, v82);
  v133(v76, v82);
  v133(v75, v82);
  (*(v153 + 8))(v74, v152);
  v134 = *(v97 + 8);
  v117 = (v97 + 8);
  v134(v142, v98);
  result = v99;
  if (v102)
  {
    __break(1u);
LABEL_37:

    v135 = *(v76 + 1);
    v135(v120, v82);
    v135(v98, v82);
    (*(v162 + 8))(v117, v161);
    (*(v148 + 8))(v99, v149);
    v135(v160, v82);
    v135(v158, v82);
    v135(v75, v82);
    (*(v153 + 8))(v74, v152);
    (*(v163 + 8))(v142, v164);
    return v140;
  }

  return result;
}

uint64_t sub_22732FF5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227667A00();
  v10 = 0;
  if (*(v9 + 16) && (v11 = sub_226E92000(a1, a2), (v12 & 1) != 0))
  {
    v13 = 0;
    v10 = *(*(v9 + 56) + 8 * v11);
  }

  else
  {
    v13 = 1;
  }

  sub_22766A610();

  v14 = sub_22766B380();
  v15 = sub_22766C8B0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23[0] = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_226E97AE8(a1, a2, &v25);
    *(v17 + 12) = 2080;
    v23[1] = v10;
    v24 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB430, &unk_22767A9A0);
    v19 = sub_22766CB80();
    v21 = sub_226E97AE8(v19, v20, &v25);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v14, v15, "[AchievementEnvironmentProvider] Best energy burned for modality identifier %s: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    return (*(v5 + 8))(v8, v23[0]);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2273301D8()
{
  v1 = v0;
  v55 = sub_22766B390();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v55);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v54 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v47 - v13;
  v15 = sub_2276638D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226E93170(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, v14, &unk_27D7BB920, &unk_227672480);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_226E97D1C(v14, &unk_27D7BB920, &unk_227672480);
LABEL_8:
    sub_22766A610();
    v30 = sub_22766B380();
    v31 = sub_22766C890();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226E8E000, v30, v31, "[AchievementEnvironmentProvider] Workout Plan is nil or is not completed, returning false for isSessionCompletingPlan", v32, 2u);
      MEMORY[0x22AA9A450](v32, -1, -1);
    }

    (*(v2 + 8))(v6, v55);
    goto LABEL_11;
  }

  (*(v16 + 32))(v19, v14, v15);
  v57 = sub_227663850();
  v58 = v20 & 1;
  v56 = 1;
  sub_226FAF720();
  sub_226FAF774();
  result = sub_227663B30();
  if ((result & 1) == 0)
  {
    (*(v16 + 8))(v19, v15);
    goto LABEL_8;
  }

  v22 = *(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planTotalWorkoutCount);
  v53 = *(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_planCompletedWorkoutCount);
  if (!__OFSUB__(v22, v53))
  {
    v51 = sub_227667A50();
    v24 = v23;
    sub_22766A610();

    v25 = sub_22766B380();
    v26 = sub_22766C8B0();
    v27 = os_log_type_enabled(v25, v26);
    v52 = v24;
    v50 = v22;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = v22;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v53;

      _os_log_impl(&dword_226E8E000, v25, v26, "[Plan Completion] totalWorkoutCount: %ld, completedWorkoutCount: %ld", v28, 0x16u);
      v29 = v28;
      v24 = v52;
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    else
    {
    }

    v34 = v54;
    v35 = v55;
    v49 = *(v2 + 8);
    v49(v10, v55);
    sub_22766A610();

    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v24;
      v39 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v57 = v48;
      *v39 = 136315394;
      *(v39 + 4) = sub_226E97AE8(v51, v38, &v57);
      *(v39 + 12) = 2080;
      v40 = sub_2276644D0();
      v42 = sub_226E97AE8(v40, v41, &v57);

      *(v39 + 14) = v42;
      _os_log_impl(&dword_226E8E000, v36, v37, "[Plan Completion] completing session identifier: %s, session identifier %s", v39, 0x16u);
      v43 = v48;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v43, -1, -1);
      MEMORY[0x22AA9A450](v39, -1, -1);

      v44 = v54;
      v45 = v55;
    }

    else
    {

      v44 = v34;
      v45 = v35;
    }

    v49(v44, v45);
    if (v50 == v53)
    {
      if (v51 == sub_2276644D0() && v52 == v46)
      {
        v33 = 1;
      }

      else
      {
        v33 = sub_22766D190();
      }

      (*(v16 + 8))(v19, v15);
      return v33 & 1;
    }

    (*(v16 + 8))(v19, v15);

LABEL_11:
    v33 = 0;
    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_227330838()
{
  v1 = v0;
  v45 = sub_22766B390();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v45);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v42[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42[-v11];
  v13 = sub_2276638D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226E93170(v1 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, v12, &unk_27D7BB920, &unk_227672480);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_226E97D1C(v12, &unk_27D7BB920, &unk_227672480);
LABEL_10:
    sub_22766A610();
    v38 = sub_22766B380();
    v39 = sub_22766C890();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_226E8E000, v38, v39, "[AchievementEnvironmentProvider] Workout Plan is nil or is not completed, returning false for isSessionParticipatingInPlan", v40, 2u);
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    (*(v2 + 8))(v6, v45);
    v37 = 0;
    return v37 & 1;
  }

  (*(v14 + 32))(v17, v12, v13);
  v47 = sub_227663850();
  v48 = v18 & 1;
  v46 = 1;
  sub_226FAF720();
  sub_226FAF774();
  if ((sub_227663B30() & 1) == 0)
  {
    (*(v14 + 8))(v17, v13);
    goto LABEL_10;
  }

  sub_22766A610();

  v19 = sub_22766B380();
  v20 = sub_22766C8B0();

  v21 = &unk_27D7BC000;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v22 = 136315394;
    v23 = sub_2276644D0();
    v25 = sub_226E97AE8(v23, v24, &v47);
    v43 = v20;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = sub_227667A30();
    v29 = sub_226E97AE8(v27, v28, &v47);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_226E8E000, v19, v43, "[Plan Participation] session identifier: %s, first completed session identifier: %s", v22, 0x16u);
    v30 = v44;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v30, -1, -1);
    v31 = v22;
    v21 = &unk_27D7BC000;
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  (*(v2 + 8))(v8, v45);
  v32 = sub_2276644D0();
  v34 = v33;
  v35 = v1 + v21[385];
  if (v32 == sub_227667A30() && v34 == v36)
  {
    v37 = 1;
  }

  else
  {
    v37 = sub_22766D190();
  }

  (*(v14 + 8))(v17, v13);
  return v37 & 1;
}

uint64_t sub_227330D3C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v51 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = sub_227667A10();
  sub_22766A610();

  v16 = sub_22766B380();
  v17 = sub_22766C8B0();

  v18 = os_log_type_enabled(v16, v17);
  v50 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v52 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v49 = v5;
    v5 = v21;
    v53 = v21;
    *v20 = 136315138;
    v22 = sub_22766BEC0();
    v48 = v4;
    v24 = sub_226E97AE8(v22, v23, &v53);
    v4 = v48;

    *(v20 + 4) = v24;
    _os_log_impl(&dword_226E8E000, v16, v17, "[AchievementEnvironmentProvider] Existing workout counts per modality: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    v25 = v5;
    LOBYTE(v5) = v49;
    MEMORY[0x22AA9A450](v25, -1, -1);
    v26 = v20;
    v8 = v52;
    MEMORY[0x22AA9A450](v26, -1, -1);
  }

  v27 = *(v8 + 8);
  v27(v14, v7);
  if (*(v4 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) != 1 || *(v4 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) != 1 || (v5 & 1) != 0)
  {
    return v15;
  }

  v28 = *(v15 + 16);
  v52 = v8;
  if (v28)
  {
    v29 = v51;
    v30 = sub_226E92000(a1, v51);
    if (v31)
    {
      v32 = *(*(v15 + 56) + 8 * v30);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
    v29 = v51;
  }

  v33 = v50;
  sub_22766A610();

  v34 = sub_22766B380();
  v35 = sub_22766C8B0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v51 = v32;
    v37 = v36;
    v38 = a1;
    v39 = swift_slowAlloc();
    v53 = v39;
    *v37 = 136315394;
    *(v37 + 4) = sub_226E97AE8(v38, v29, &v53);
    *(v37 + 12) = 2048;
    *(v37 + 14) = v51;
    _os_log_impl(&dword_226E8E000, v34, v35, "[AchievementEnvironmentProvider] Current count for modality identifier %s: %ld", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v40 = v39;
    a1 = v38;
    MEMORY[0x22AA9A450](v40, -1, -1);
    v41 = v37;
    v32 = v51;
    MEMORY[0x22AA9A450](v41, -1, -1);
  }

  v27(v33, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCC78, &qword_2276809C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = a1;
  v43 = inited + 32;
  *(inited + 40) = v29;
  if (!__OFADD__(v32, 1))
  {
    *(inited + 48) = v32 + 1;
    v44 = inited;

    v45 = sub_2271481B8(v44);
    swift_setDeallocating();
    sub_226E97D1C(v43, &qword_27D7BCC80, &qword_2276809C8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v15;
    sub_22733198C(v45, sub_227331974, 0, isUniquelyReferenced_nonNull_native, &v53);

    return v53;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2273311D4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v51 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = sub_227667A40();
  sub_22766A610();

  v16 = sub_22766B380();
  v17 = sub_22766C8B0();

  v18 = os_log_type_enabled(v16, v17);
  v50 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v52 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v49 = v5;
    v5 = v21;
    v53 = v21;
    *v20 = 136315138;
    v22 = sub_22766BEC0();
    v48 = v4;
    v24 = sub_226E97AE8(v22, v23, &v53);
    v4 = v48;

    *(v20 + 4) = v24;
    _os_log_impl(&dword_226E8E000, v16, v17, "[AchievementEnvironmentProvider] Existing workout counts per guided modality: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    v25 = v5;
    LOBYTE(v5) = v49;
    MEMORY[0x22AA9A450](v25, -1, -1);
    v26 = v20;
    v8 = v52;
    MEMORY[0x22AA9A450](v26, -1, -1);
  }

  v27 = *(v8 + 8);
  v27(v14, v7);
  if (*(v4 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsDurationThreshold) != 1 || *(v4 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_meetsCompletionThreshold) != 1 || (v5 & 1) == 0)
  {
    return v15;
  }

  v28 = *(v15 + 16);
  v52 = v8;
  if (v28)
  {
    v29 = v51;
    v30 = sub_226E92000(a1, v51);
    if (v31)
    {
      v32 = *(*(v15 + 56) + 8 * v30);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
    v29 = v51;
  }

  v33 = v50;
  sub_22766A610();

  v34 = sub_22766B380();
  v35 = sub_22766C8B0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v51 = v32;
    v37 = v36;
    v38 = a1;
    v39 = swift_slowAlloc();
    v53 = v39;
    *v37 = 136315394;
    *(v37 + 4) = sub_226E97AE8(v38, v29, &v53);
    *(v37 + 12) = 2048;
    *(v37 + 14) = v51;
    _os_log_impl(&dword_226E8E000, v34, v35, "[AchievementEnvironmentProvider] Current count for modality identifier %s: %ld", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v40 = v39;
    a1 = v38;
    MEMORY[0x22AA9A450](v40, -1, -1);
    v41 = v37;
    v32 = v51;
    MEMORY[0x22AA9A450](v41, -1, -1);
  }

  v27(v33, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCC78, &qword_2276809C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = a1;
  v43 = inited + 32;
  *(inited + 40) = v29;
  if (!__OFADD__(v32, 1))
  {
    *(inited + 48) = v32 + 1;
    v44 = inited;

    v45 = sub_2271481B8(v44);
    swift_setDeallocating();
    sub_226E97D1C(v43, &qword_27D7BCC80, &qword_2276809C8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v15;
    sub_22733198C(v45, sub_227331974, 0, isUniquelyReferenced_nonNull_native, &v53);

    return v53;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22733166C()
{
  sub_226E97D1C(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_workoutPlan, &unk_27D7BB920, &unk_227672480);
  v1 = OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_cache;
  v2 = sub_227667A70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_HKWorkoutIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_modalityIdentifier + 8);

  v5 = OBJC_IVAR____TtC15SeymourServices30AchievementEnvironmentProvider_session;
  v6 = sub_227664530();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AchievementEnvironmentProvider()
{
  result = qword_27D7BCC60;
  if (!qword_27D7BCC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2273317E4()
{
  sub_22733191C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_227667A70();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_227664530();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22733191C()
{
  if (!qword_27D7BCC70)
  {
    sub_2276638D0();
    v0 = sub_22766CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BCC70);
    }
  }
}

uint64_t sub_227331974@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_22733198C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v46[0] = *v15;
    v46[1] = v16;
    v46[2] = v17;

    a2(&v43, v46);

    v18 = v43;
    v19 = v44;
    v20 = v45;
    v21 = *v47;
    v23 = sub_226E92000(v43, v44);
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (*(v21 + 24) >= v26)
    {
      if ((v42 & 1) == 0)
      {
        sub_226FF016C();
      }
    }

    else
    {
      v28 = v47;
      sub_226FE2228(v26, v42 & 1);
      v29 = *v28;
      v30 = sub_226E92000(v18, v19);
      if ((v27 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v23 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v47;
    if (v27)
    {

      *(v32[7] + 8 * v23) = v20;
    }

    else
    {
      v32[(v23 >> 6) + 8] |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v18;
      v33[1] = v19;
      *(v32[7] + 8 * v23) = v20;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v12;
    v6 = v39;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_226EBB21C();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

unint64_t sub_227331C00()
{
  result = qword_28139BDB0;
  if (!qword_28139BDB0)
  {
    sub_227662750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BDB0);
  }

  return result;
}

unint64_t sub_227331C58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
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
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 4 * v15);

        swift_dynamicCast();
        sub_226F04970(&v25, v27);
        sub_226F04970(v27, v28);
        sub_226F04970(v28, &v26);
        result = sub_226E92000(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_226F04970(&v26, v12);
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
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_226F04970(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_227331EA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
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
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_226EA1E2C(*(a1 + 56) + 40 * v15, &v30);
        v28 = v18;
        v29 = v17;

        swift_dynamicCast();
        sub_226F04970(&v24, v26);
        sub_226F04970(v26, v27);
        sub_226F04970(v27, &v25);
        result = sub_226E92000(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_226F04970(&v25, v12);
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
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_226F04970(&v25, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227332110(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99C0, &qword_227674DE8);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_226E97CC0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_226F04970(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_226F04970(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_226F04970(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22766CD80();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_226F04970(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2273323D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99C0, &qword_227674DE8);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_226EA1E2C(*(a1 + 56) + 40 * v13, v42);
    v40 = v16;
    v41 = v15;
    v37 = v42[0];
    v38 = v42[1];
    v39 = v43;
    v27 = v16;
    v28 = v15;

    swift_dynamicCast();
    v25[0] = v37;
    v25[1] = v38;
    v26 = v39;
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_226F04970(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_226F04970(v36, v25);
    v17 = *(v2 + 40);
    result = sub_22766CD80();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v29;
    *(v11 + 16) = v30;
    *(v11 + 32) = v31;
    result = sub_226F04970(v25, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2273326C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
    v2 = sub_22766D010();
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v26 = *(*(a1 + 56) + 8 * v14);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC928, &qword_22767F828);
        swift_dynamicCast();
        v31 = v28;
        v32 = v29;
        v33 = v30;
        v27 = v28;
        v28 = v29;
        *&v29 = v30;
        result = sub_226E92000(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          result = sub_227333460(&v27, v2[7] + 40 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          v20 = v2[7] + 40 * result;
          v21 = v27;
          v22 = v28;
          *(v20 + 32) = v29;
          *v20 = v21;
          *(v20 + 16) = v22;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227332924(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCC90, &qword_2276809D8);
    v1 = sub_22766D010();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v26 = *(*(a1 + 56) + 16 * v11);
    v24 = v26;
    v13 = v12;
    sub_226F5E0B4(v24, *(&v24 + 1));
    swift_dynamicCast();
    sub_226F04970((v27 + 8), v25);
    sub_226F04970(v25, v27);
    v14 = *(v1 + 40);
    sub_22766C000();
    sub_22766D370();
    sub_22766C100();
    v15 = sub_22766D3F0();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_226F04970(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_227332BD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
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
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_226F04970(&v27, v29);
        sub_226F04970(v29, v30);
        sub_226F04970(v30, &v28);
        result = sub_226E92000(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_226F04970(&v28, v12);
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
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_226F04970(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_227332E28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
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
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_226F04970(&v25, v27);
        sub_226F04970(v27, v28);
        sub_226F04970(v28, &v26);
        result = sub_226E92000(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_226F04970(&v26, v12);
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
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_226F04970(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_227333070()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22766C000();
  *(inited + 40) = v2;
  sub_22766BD00();
  sub_226FB11F0();
  *(inited + 48) = sub_22766D250();
  *(inited + 56) = v3;
  v4 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_2273333F8(inited + 32);
  sub_22766D280();
  v5 = sub_22766D270();
  sub_227332BD0(v4);

  v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v7 = sub_22766BFD0();

  v8 = sub_22766BE90();

  v9 = [v6 initWithDomain:v7 code:v5 userInfo:v8];

  return v9;
}

uint64_t sub_2273331E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCC88, &qword_2276809D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_22766B9A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766B990();
  sub_22766D280();
  sub_22766B980();
  sub_22766D270();
  sub_22766B970();
  sub_22766D250();
  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_22766BCE0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2273333F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE670, &unk_227674260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2273334BC()
{
  v0 = sub_2276681F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227666AD0();
  v6 = sub_226F3E6A8(v5);

  v7 = sub_227666AD0();
  v8 = sub_226F3E6A8(v7);

  if (*(v6 + 16) >= *(v8 + 16))
  {
  }

  else
  {
    v9 = sub_227333F90(v8, v6);

    if (v9)
    {
      sub_227667240();
      sub_2276681B0();
      return (*(v1 + 8))(v4, v0);
    }
  }

  return result;
}

uint64_t sub_227333698(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v7 = sub_2276681F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3(v10);
  if (!v13[2])
  {
  }

  v15 = v13[4];
  v14 = v13[5];

  if (!*(a2 + 16))
  {
  }

  v16 = sub_22718C70C(v15, v14, a2);

  if (v16)
  {
    v18 = sub_227667240();
    a4(v18);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_227333810()
{
  v0 = sub_227668460();
  v2 = v1;
  if (v0 == sub_227666A90() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22766D190();
  }

  return v4 & 1;
}

uint64_t sub_2273338AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a3;
  v60 = a2;
  v58 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCCA8, &qword_227680A08);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v59 = &v55 - v16;
  v17 = sub_2276681F0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227666A50();
  LOBYTE(a5) = sub_22718C70C(v22, v23, a5);

  v24 = 0.0;
  v25 = 0.0;
  if ((a5 & 1) == 0)
  {
    sub_227667240();
    sub_227667E90();
    v27 = v26;
    (*(v18 + 8))(v21, v17);
    v25 = v27 + 0.0;
  }

  v28 = sub_227666AD0();
  v29 = sub_226F3E6A8(v28);

  v30 = a4;
  v31 = sub_227666AD0();
  v32 = sub_226F3E6A8(v31);

  v33 = sub_227035534(v29, v32);

  if (v33)
  {
    sub_227667240();
    sub_227668170();
    v24 = v34;
    (*(v18 + 8))(v21, v17);
  }

  v35 = sub_2273334BC();
  v37 = v36;
  MEMORY[0x28223BE20](v35);
  *(&v55 - 2) = v30;
  v38 = v59;
  sub_227543C0C(sub_227334BCC, v57, v59);
  sub_227334BEC(v38, v15);
  v39 = sub_227668480();
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  if (v41(v15, 1, v39) == 1)
  {
    sub_227334C5C(v15);
    v42 = MEMORY[0x277D84FA0];
  }

  else
  {
    v42 = sub_227668470();
    (*(v40 + 8))(v15, v39);
  }

  v43 = v56;
  sub_227334BEC(v59, v56);
  if (v41(v43, 1, v39) == 1)
  {
    sub_227334C5C(v43);
    v44 = MEMORY[0x277D84FA0];
  }

  else
  {
    v44 = sub_227668440();
    (*(v40 + 8))(v43, v39);
  }

  v45 = v60;
  sub_227333640(a1, v44);
  v47 = v46;

  sub_22733366C(a1, v42);
  v49 = v48;

  v50 = sub_22735B0EC(a1, v45 + OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration, v47 > 0.0);
  sub_227334C5C(v59);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60) + 48);
  v52 = sub_227666B60();
  v53 = v58;
  result = (*(*(v52 - 8) + 16))(v58, a1, v52);
  *(v53 + v51) = v25 + v24 + v37 + v47 + v49 - v50;
  return result;
}

unint64_t sub_227333D80(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(a2 + 16) < result)
    {
      v3 = *(a2 + 16);
    }

    v4 = *(sub_227666B60() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_227333E10()
{
  v1 = OBJC_IVAR____TtC15SeymourServices31WorkoutPlanAlternativesProvider_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanAlternativesProvider()
{
  result = qword_27D7BCC98;
  if (!qword_27D7BCC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227333F00()
{
  result = sub_227667370();
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

uint64_t sub_227333F90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_22766D370();

      sub_22766C100();
      v16 = sub_22766D3F0();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_22733416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v111 - v13;
  MEMORY[0x28223BE20](v15);
  v126 = &v111 - v16;
  v17 = sub_227666B60();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v128 = &v111 - v21;
  MEMORY[0x28223BE20](v22);
  v25 = *(a2 + 16);
  v127 = v8;
  if (!v25)
  {
    a3 = sub_2273FC4A8(a3, a1);
    v128 = v41;
    v18 = v42;
    v44 = v43;

    sub_22766A630();
    swift_unknownObjectRetain();
    v45 = sub_22766B380();
    v46 = sub_22766C870();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v45, v46))
    {
      v3 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v129[0] = v47;
      *v3 = 136315138;
      v48 = sub_22766CC30();
      v50 = sub_226E97AE8(v48, v49, v129);
      v126 = v18;
      v51 = v7;
      v7 = v50;

      *(v3 + 4) = v7;
      _os_log_impl(&dword_226E8E000, v45, v46, "No previously completed workouts, returning alternatives=%s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AA9A450](v47, -1, -1);
      MEMORY[0x22AA9A450](v3, -1, -1);

      v52 = v51;
      v18 = v126;
      (*(v127 + 8))(v11, v52);
    }

    else
    {

      (*(v127 + 8))(v11, v7);
    }

    v98 = v44 >> 1;
    if (v18 == (v44 >> 1))
    {
      goto LABEL_31;
    }

    if (v44)
    {
      sub_22766D1D0();
      swift_unknownObjectRetain_n();
      v106 = swift_dynamicCastClass();
      if (!v106)
      {
        swift_unknownObjectRelease();
        v106 = MEMORY[0x277D84F90];
      }

      v107 = *(v106 + 16);

      if (__OFSUB__(v98, v18))
      {
        goto LABEL_51;
      }

      if (v107 == v98 - v18)
      {
LABEL_45:
        v81 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v81)
        {
          return v81;
        }

        v81 = MEMORY[0x277D84F90];
LABEL_47:
        swift_unknownObjectRelease();
        return v81;
      }

      swift_unknownObjectRelease_n();
    }

    v99 = a3;
    v100 = v128;
    v101 = v18;
    v102 = v44;
LABEL_34:
    sub_22726CD44(v99, v100, v101, v102);
    v81 = v104;
    goto LABEL_47;
  }

  if (__OFSUB__(a3, 1))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v117 = v24;
  v122 = &v111 - v23;
  v123 = v7;
  v116 = a3 - 1;
  v124 = sub_227333D80(a3 - 1, a1);
  v27 = v26;
  v7 = v28;
  v3 = v29 >> 1;

  if (v7 == v3)
  {
LABEL_4:
    swift_unknownObjectRelease();
    a3 = sub_2273FC4A8(a3, a1);
    v7 = v30;
    v18 = v31;
    v3 = v32;

    sub_22766A630();
    swift_unknownObjectRetain();
    v33 = sub_22766B380();
    v34 = sub_22766C870();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v128 = v14;
      v36 = v35;
      v37 = swift_slowAlloc();
      v129[0] = v37;
      *v36 = 136315138;
      v38 = sub_22766CC30();
      v40 = sub_226E97AE8(v38, v39, v129);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_226E8E000, v33, v34, "Unable to find new workout alternative, returning alternatives=%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9A450](v37, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);

      (*(v127 + 8))(v128, v123);
    }

    else
    {

      (*(v127 + 8))(v14, v123);
    }

    v103 = v3 >> 1;
    if (v18 == (v3 >> 1))
    {
LABEL_31:
      swift_unknownObjectRelease();
      return 0;
    }

    if ((v3 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_22766D1D0();
    swift_unknownObjectRetain_n();
    v108 = swift_dynamicCastClass();
    if (!v108)
    {
      swift_unknownObjectRelease();
      v108 = MEMORY[0x277D84F90];
    }

    v109 = *(v108 + 16);

    if (!__OFSUB__(v103, v18))
    {
      if (v109 == v103 - v18)
      {
        goto LABEL_45;
      }

LABEL_53:
      swift_unknownObjectRelease_n();
LABEL_33:
      v99 = a3;
      v100 = v7;
      v101 = v18;
      v102 = v3;
      goto LABEL_34;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v125 = v18 + 16;
  v53 = a2 + 56;
  v120 = a1;
  v121 = (v18 + 8);
  if (v7 <= v3)
  {
    v54 = v3;
  }

  else
  {
    v54 = v7;
  }

  v115 = a3;
  v119 = v18;
  v114 = v27;
  v113 = v3;
  v112 = v54;
  while (1)
  {
    if (v7 == v54)
    {
      __break(1u);
      goto LABEL_50;
    }

    v55 = v14;
    v56 = v27 + *(v18 + 9) * v7;
    v57 = v17;
    v118 = *(v18 + 2);
    v118(v128, v56, v17);
    v58 = sub_227666A50();
    v60 = v59;
    if (!*(a2 + 16))
    {
      break;
    }

    v61 = v58;
    v62 = *(a2 + 40);
    sub_22766D370();
    sub_22766C100();
    v63 = sub_22766D3F0();
    v64 = -1 << *(a2 + 32);
    v65 = v63 & ~v64;
    if (((*(v53 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
    {
      break;
    }

    ++v7;
    v66 = ~v64;
    while (1)
    {
      v67 = (*(a2 + 48) + 16 * v65);
      v68 = *v67 == v61 && v67[1] == v60;
      if (v68 || (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v65 = (v65 + 1) & v66;
      if (((*(v53 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v17 = v57;
    (*v121)(v128, v57);

    v3 = v113;
    v14 = v55;
    v18 = v119;
    a1 = v120;
    a3 = v115;
    v27 = v114;
    v54 = v112;
    if (v7 == v113)
    {
      goto LABEL_4;
    }
  }

LABEL_23:

  swift_unknownObjectRelease();
  v69 = v119 + 32;
  v70 = v122;
  (*(v119 + 4))(v122, v128, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E00, &qword_227679AB0);
  v71 = (*(v69 + 48) + 32) & ~*(v69 + 48);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_227670CD0;
  v73 = v118;
  v118((v72 + v71), v70, v57);
  v74 = sub_2273FC4A8(v116, v120);
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v129[0] = v72;

  sub_227460C6C(v74, v76, v78, v80);
  v81 = v129[0];
  v82 = v126;
  sub_22766A630();
  v83 = v117;
  v84 = v70;
  v85 = v57;
  v73(v117, v84, v57);

  v86 = sub_22766B380();
  v87 = sub_22766C870();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v129[0] = v89;
    *v88 = 136315394;
    v90 = sub_227666A50();
    v92 = v91;
    v93 = *v121;
    (*v121)(v83);
    v94 = sub_226E97AE8(v90, v92, v129);

    *(v88 + 4) = v94;
    *(v88 + 12) = 2080;
    v95 = MEMORY[0x22AA98660](v81, v85);
    v97 = sub_226E97AE8(v95, v96, v129);

    *(v88 + 14) = v97;
    _os_log_impl(&dword_226E8E000, v86, v87, "Found topNewWorkoutAlternative=%s, returning alternatives=%s", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v89, -1, -1);
    MEMORY[0x22AA9A450](v88, -1, -1);

    (*(v127 + 8))(v126, v123);
    v93(v122, v85);
  }

  else
  {

    v105 = *v121;
    (*v121)(v83, v85);
    (*(v127 + 8))(v82, v123);
    v105(v122, v85);
  }

  return v81;
}