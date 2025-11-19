uint64_t sub_222C4C8C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for FeaturisedTurn(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  sub_222C4CE38(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_222B4FCD4(v10, &qword_27D0253C8, &unk_222C98400);
LABEL_16:
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027890, &unk_222CA51F8);
    return (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
  }

  sub_222B7E350(v10, v18);
  if (!*(*a2 + 16))
  {
    v30 = v18;
    goto LABEL_15;
  }

  sub_222B78534(*a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v16);
  v19 = sub_222B41494(*&v18[*(v11 + 24)]);
  if (v20 & 1) != 0 || (v21 = *&v19, v22 = COERCE_DOUBLE(sub_222B414AC(*&v16[*(v11 + 24)])), (v23))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);
    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_13;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136315138;
    if (qword_280FDDED8 != -1)
    {
      swift_once();
    }

    *(v27 + 4) = sub_222B437C0(qword_280FDDEE0, unk_280FDDEE8, &v42);
    _os_log_impl(&dword_222B39000, v25, v26, "%s Failed to measure time between turns", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223DCA8C0](v28, -1, -1);
    v29 = v27;
LABEL_12:
    MEMORY[0x223DCA8C0](v29, -1, -1);
LABEL_13:

    sub_222C4D3B4(v16, type metadata accessor for FeaturisedTurn);
    v30 = v18;
LABEL_15:
    sub_222C4D3B4(v30, type metadata accessor for FeaturisedTurn);
    goto LABEL_16;
  }

  v33 = v22 - v21;
  v34 = *(v3 + 16);
  if (v22 - v21 > v34)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v35 = sub_222C9431C();
    __swift_project_value_buffer(v35, qword_280FE2340);

    v25 = sub_222C942FC();
    v36 = sub_222C94A3C();

    if (!os_log_type_enabled(v25, v36))
    {
      goto LABEL_13;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v37 = 136315650;
    if (qword_280FDDED8 != -1)
    {
      swift_once();
    }

    *(v37 + 4) = sub_222B437C0(qword_280FDDEE0, unk_280FDDEE8, &v42);
    *(v37 + 12) = 2048;
    *(v37 + 14) = v33;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v34;
    _os_log_impl(&dword_222B39000, v25, v36, "%s Turns too far apart for sessions to be stitched (%fs, max: %fs)", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x223DCA8C0](v38, -1, -1);
    v29 = v37;
    goto LABEL_12;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027890, &unk_222CA51F8);
  v40 = *(v39 + 48);
  sub_222B7E350(v18, a3);
  sub_222B7E350(v16, a3 + v40);
  return (*(*(v39 - 8) + 56))(a3, 0, 1, v39);
}

uint64_t sub_222C4CE38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v25 = a2;
    v26 = v6;
    v11 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    v24 = v11;
    result = sub_222B78534(v11 + v23 * (v10 - 1), v8);
    v13 = *&v8[*(v4 + 24)];
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = v13 + 32;
      while (v15 < *(v13 + 16))
      {
        sub_222B43E3C(v16, v28);
        sub_222B43E3C(v28, v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
        sub_222C9404C();
        if (swift_dynamicCast() || (sub_222B43E3C(v28, v27), sub_222C93C9C(), (swift_dynamicCast() & 1) != 0))
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v28);
LABEL_17:
          v21 = v25;
          sub_222B7E350(v8, v25);
          return (*(v26 + 56))(v21, 0, 1, v4);
        }

        sub_222B405A0(v28, v27);
        sub_222C93C1C();
        result = swift_dynamicCast();
        if (result)
        {

          goto LABEL_17;
        }

        ++v15;
        v16 += 40;
        if (v14 == v15)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
      v17 = *(v9 + 16);
      v18 = v17 >= 2;
      v19 = v17 - 2;
      if (v18)
      {
        v21 = v25;
        sub_222B78534(v24 + v19 * v23, v25);
        sub_222C4D3B4(v8, type metadata accessor for FeaturisedTurn);
        return (*(v26 + 56))(v21, 0, 1, v4);
      }

      else
      {
        sub_222C4D3B4(v8, type metadata accessor for FeaturisedTurn);
        return (*(v26 + 56))(v25, 1, 1, v4);
      }
    }
  }

  else
  {
    v20 = *(v6 + 56);

    return v20(a2, 1, 1, v4);
  }

  return result;
}

uint64_t RestatementSessionStitcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_222C4D1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(a2 + 48) = a3;
  *(a2 + 56) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 24));
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 16) = a5;
  return a2;
}

uint64_t sub_222C4D230(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RestatementSessionStitcher();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  *(v13 + 48) = a4;
  *(v13 + 56) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 24));
  (*(v9 + 32))(boxed_opaque_existential_1, v12, a4);
  *(v13 + 16) = a2;
  return v13;
}

uint64_t sub_222C4D344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027890, &unk_222CA51F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C4D3B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C4D4D0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v12 - v6;
  v12[1] = v0[2];
  v8 = *(v1 + 88);

  v8(v2, v1);
  sub_222C947FC();
  swift_getWitnessTable();
  v9 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v10 = sub_222C946CC();
  (*(v4 + 8))(v7, AssociatedTypeWitness);

  return v10 & 1;
}

uint64_t sub_222C4D6D8()
{
  type metadata accessor for MediaEvaluationFramework();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027938, &qword_222CA53D8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDBC08 = 91;
  *algn_280FDBC10 = 0xE100000000000000;
  return result;
}

uint64_t MediaSuggestionOutcomeReportedOfflineEmitter.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = MEMORY[0x277D84F98];
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t MediaSuggestionOutcomeReportedOfflineEmitter.init(logTarget:)(__int128 *a1)
{
  *(v1 + 24) = MEMORY[0x277D84F98];
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_222C4D83C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CB0, &unk_222CA5330);
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v11);
  v89 = &v71 - v14;
  v15 = sub_222C9367C();
  v83 = *(v15 - 8);
  v16 = v83[8];
  v17 = MEMORY[0x28223BE20](v15);
  v77 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v71 - v19;
  v20 = sub_222BD12C4(a1, a2);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);

    v22 = sub_222C942FC();
    v23 = sub_222C94A3C();
    v24 = os_log_type_enabled(v22, v23);
    v72 = v3;
    v88 = v10;
    if (v24)
    {
      v92 = v15;
      v25 = v6;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v94 = v27;
      *v26 = 136315394;
      if (qword_280FDBC00 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_222B437C0(qword_280FDBC08, *algn_280FDBC10, &v94);
      *(v26 + 12) = 2048;
      *(v26 + 14) = *(v20 + 16);

      _os_log_impl(&dword_222B39000, v22, v23, "%s Identified %ld outcomes from PLUS contact suggestions made at runtime.", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x223DCA8C0](v27, -1, -1);
      MEMORY[0x223DCA8C0](v26, -1, -1);

      v6 = v25;
      v15 = v92;
    }

    else
    {
    }

    v28 = sub_222C4F370(v20);
    v71 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025470, &qword_222C98690);
    v29 = sub_222C94F6C();
    v3 = v29;
    v30 = 0;
    v31 = *(v28 + 64);
    v74 = v28 + 64;
    v82 = v28;
    v32 = 1 << *(v28 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v31;
    v73 = (v32 + 63) >> 6;
    v35 = v83 + 4;
    v78 = v29 + 64;
    v79 = v83 + 2;
    v10 = v77;
    v75 = v29;
    v92 = v83 + 4;
    if (!v34)
    {
      break;
    }

    while (1)
    {
      v36 = v35;
      v84 = (v34 - 1) & v34;
      v85 = v30;
      v37 = __clz(__rbit64(v34)) | (v30 << 6);
LABEL_16:
      v42 = v82;
      v41 = v83;
      v43 = *(v82 + 48);
      v44 = v83[2];
      v86 = v83[9] * v37;
      v45 = v80;
      v44(v80, v43 + v86, v15);
      v46 = *(v42 + 56);
      v87 = v37;
      v47 = *(v46 + 8 * v37);
      v48 = v41[4];
      v49 = v47;
      v50 = v45;
      v35 = v36;
      v51 = v48;
      v48(v10, v50, v15);
      v52 = *(v49 + 16);
      if (v52)
      {
        v94 = MEMORY[0x277D84F90];

        sub_222C94E1C();
        v53 = *(v76 + 80);
        v81 = v49;
        v54 = v49 + ((v53 + 32) & ~v53);
        v90 = *(v76 + 72);
        v91 = v51;
        do
        {
          v55 = v89;
          sub_222C4F800(v54, v89);
          sub_222C4F800(v55, v13);
          v56 = *(v6 + 48);
          v57 = *&v13[v56];
          v58 = v88;
          v51(v88, v13, v15);
          *(v58 + v56) = v57;
          v59 = v57;
          sub_222C4F870(v58);
          sub_222C4F870(v55);
          sub_222C94DEC();
          v60 = v94[2];
          sub_222C94E2C();
          v51 = v91;
          sub_222C94E3C();
          sub_222C94DFC();
          v54 += v90;
          --v52;
        }

        while (v52);

        v20 = v94;
        v10 = v77;
        v3 = v75;
        v35 = v92;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      v61 = v87;
      *(v78 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
      v51(v3[6] + v86, v10, v15);
      *(v3[7] + 8 * v61) = v20;
      v62 = v3[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        break;
      }

      v3[2] = v64;
      v34 = v84;
      v30 = v85;
      if (!v84)
      {
        goto LABEL_11;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

LABEL_11:
  v38 = v30;
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v39 >= v73)
    {
      break;
    }

    v40 = *(v74 + 8 * v39);
    ++v38;
    if (v40)
    {
      v36 = v35;
      v84 = (v40 - 1) & v40;
      v85 = v39;
      v37 = __clz(__rbit64(v40)) | (v39 << 6);
      goto LABEL_16;
    }
  }

  v65 = v72;
  swift_beginAccess();
  v66 = v65[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v65[3];
  v65[3] = 0x8000000000000000;
  v68 = v71;
  sub_222C4F8D8(v3, sub_222C4F2BC, 0, isUniquelyReferenced_nonNull_native, &v93);

  if (v68)
  {

    v70 = v65[3];
    v65[3] = v93;

    __break(1u);
  }

  else
  {
    v65[3] = v93;
    return swift_endAccess();
  }

  return result;
}

void sub_222C4DF4C()
{
  v1 = sub_222C9367C();
  v127 = *(v1 - 8);
  v2 = *(v127 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v141 = &v117 - v7;
  MEMORY[0x28223BE20](v6);
  v125 = &v117 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027920, &qword_222CA5340);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v131 = &v117 - v14;
  swift_beginAccess();
  v123 = v0;
  if (*(*(v0 + 24) + 16))
  {
    if (qword_280FDFE78 != -1)
    {
      goto LABEL_133;
    }

    while (1)
    {
      v129 = v5;
      v15 = sub_222C9431C();
      v128 = __swift_project_value_buffer(v15, qword_280FE2340);
      v16 = sub_222C942FC();
      v17 = sub_222C94A3C();
      v18 = os_log_type_enabled(v16, v17);
      v135 = v13;
      if (v18)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v143 = v20;
        *v19 = 136315138;
        if (qword_280FDBC00 != -1)
        {
          swift_once();
        }

        *(v19 + 4) = sub_222B437C0(qword_280FDBC08, *algn_280FDBC10, &v143);
        _os_log_impl(&dword_222B39000, v16, v17, "%s Emitting PLUSSuggestionOutcomeReported messages to SELF", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x223DCA8C0](v20, -1, -1);
        MEMORY[0x223DCA8C0](v19, -1, -1);

        v13 = v135;
      }

      else
      {
      }

      v26 = *(v123 + 24);
      v27 = *(v26 + 64);
      v130 = v26 + 64;
      v28 = 1 << *(v26 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v30 = v29 & v27;
      v118 = (v28 + 63) >> 6;
      v133 = (v127 + 16);
      v134 = (v127 + 32);
      v139 = (v127 + 8);
      v124 = v26;

      v31 = 0;
      *&v32 = 136315650;
      v119 = v32;
      v132 = v1;
      while (1)
      {
        if (!v30)
        {
          if (v118 <= v31 + 1)
          {
            v34 = v31 + 1;
          }

          else
          {
            v34 = v118;
          }

          v5 = v34 - 1;
          while (1)
          {
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v33 >= v118)
            {
              v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027928, &qword_222CA5348);
              (*(*(v56 - 8) + 56))(v13, 1, 1, v56);
              v137 = v5;
              v138 = 0;
              goto LABEL_30;
            }

            v30 = *(v130 + 8 * v33);
            ++v31;
            if (v30)
            {
              v137 = v33;
              goto LABEL_29;
            }
          }

LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        v137 = v31;
        v33 = v31;
LABEL_29:
        v138 = (v30 - 1) & v30;
        v35 = __clz(__rbit64(v30)) | (v33 << 6);
        v36 = v124;
        v37 = v127;
        v38 = v125;
        (*(v127 + 16))(v125, *(v124 + 48) + *(v127 + 72) * v35, v1);
        v39 = *(*(v36 + 56) + 8 * v35);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027928, &qword_222CA5348);
        v41 = *(v40 + 48);
        v42 = *(v37 + 32);
        v13 = v135;
        v42(v135, v38, v1);
        *(v13 + v41) = v39;
        (*(*(v40 - 8) + 56))(v13, 0, 1, v40);

LABEL_30:
        v43 = v131;
        sub_222B723A4(v13, v131, &qword_27D027920, &qword_222CA5340);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027928, &qword_222CA5348);
        if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
        {

          v115 = sub_222B63E58(MEMORY[0x277D84F90]);
          v116 = *(v123 + 24);
          *(v123 + 24) = v115;

          return;
        }

        v5 = *(v43 + *(v44 + 48));
        (*v134)(v141, v43, v1);
        v143 = MEMORY[0x277D84F90];
        v45 = v5 >> 62;
        if (v5 >> 62)
        {
          v13 = sub_222C94C6C();
          if (!v13)
          {
LABEL_49:
            v55 = MEMORY[0x277D84F90];
            if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
            {
              goto LABEL_53;
            }

LABEL_50:
            if ((v55 & 0x4000000000000000) != 0)
            {
              goto LABEL_53;
            }

            if (*(v55 + 16))
            {
              goto LABEL_52;
            }

LABEL_54:

            if ((v13 & 0x8000000000000000) == 0)
            {
              v13 = v13 != 0;
              if (!v45)
              {
                goto LABEL_56;
              }

LABEL_58:
              if ((sub_222C94C6C() & 0x8000000000000000) == 0)
              {
                v58 = sub_222C94C6C();
                goto LABEL_60;
              }

LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
              goto LABEL_131;
            }

            v13 = 1;
            if (v45)
            {
              goto LABEL_58;
            }

LABEL_56:
            v58 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_60:
            if (v58 < v13)
            {
              goto LABEL_130;
            }

            if ((v5 & 0xC000000000000001) != 0 && v13)
            {
              sub_222B505A8(0, &qword_27D024E00, 0x277D59DF0);

              sub_222C94D6C();
            }

            else
            {
            }

            if (v45)
            {
              v60 = sub_222C94F5C();
              v61 = v62;
              v59 = v63;
              v13 = v64;

              v57 = &unk_2784BC000;
              if (v13)
              {
                goto LABEL_70;
              }
            }

            else
            {
              v59 = 0;
              v60 = v5 & 0xFFFFFFFFFFFFFF8;
              v61 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
              v13 = (2 * v13) | 1;
              v57 = &unk_2784BC000;
              if (v13)
              {
LABEL_70:
                v5 = sub_222C9520C();
                swift_unknownObjectRetain_n();
                v66 = swift_dynamicCastClass();
                if (!v66)
                {
                  swift_unknownObjectRelease();
                  v66 = MEMORY[0x277D84F90];
                }

                v67 = *(v66 + 16);

                if (__OFSUB__(v13 >> 1, v59))
                {
                  goto LABEL_132;
                }

                if (v67 == (v13 >> 1) - v59)
                {
                  v55 = swift_dynamicCastClass();
                  swift_unknownObjectRelease_n();
                  if (!v55)
                  {
                    swift_unknownObjectRelease();
                    v55 = MEMORY[0x277D84F90];
                  }

                  goto LABEL_76;
                }

                swift_unknownObjectRelease_n();
              }
            }

            sub_222C4F1C0(v60, v61, v59, v13, &qword_27D024E00, 0x277D59DF0);
            v55 = v65;
            swift_unknownObjectRelease();
            goto LABEL_76;
          }
        }

        else
        {
          v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v13)
          {
            goto LABEL_49;
          }
        }

        v46 = 0;
        v1 = v5 & 0xC000000000000001;
        do
        {
          if (v1)
          {
            v48 = MEMORY[0x223DC9B30](v46, v5);
          }

          else
          {
            if (v46 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_126;
            }

            v48 = *(v5 + 8 * v46 + 32);
          }

          v49 = v48;
          v50 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v51 = [v48 domainOutcome];
          if (v51 && (v52 = v51, v53 = [v51 mediaOutcome], v52, v53) && (v54 = objc_msgSend(v53, sel_mediaSuggestionFeedback), v53, !v54))
          {
          }

          else
          {
            sub_222C94DEC();
            v47 = *(v143 + 16);
            sub_222C94E2C();
            sub_222C94E3C();
            sub_222C94DFC();
          }

          ++v46;
        }

        while (v50 != v13);
        v55 = v143;
        v1 = v132;
        if ((v143 & 0x8000000000000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_53:
        if (!sub_222C94C6C())
        {
          goto LABEL_54;
        }

LABEL_52:

        v57 = &unk_2784BC000;
LABEL_76:
        v5 = v129;
        (*v133)(v129, v141, v1);

        v68 = sub_222C942FC();
        v69 = sub_222C94A3C();

        v70 = v55 >> 62;
        if (!os_log_type_enabled(v68, v69))
        {

          v136 = *v139;
          v136(v5, v1);
          goto LABEL_109;
        }

        LODWORD(v140) = v69;
        v71 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v143 = v126;
        *v71 = v119;
        if (qword_280FDBC00 != -1)
        {
          swift_once();
        }

        *(v71 + 4) = sub_222B437C0(qword_280FDBC08, *algn_280FDBC10, &v143);
        v13 = 2080;
        *(v71 + 12) = 2080;
        sub_222B9E5D0();
        v72 = sub_222C9517C();
        v74 = v73;
        v136 = *v139;
        v136(v5, v1);
        v75 = sub_222B437C0(v72, v74, &v143);

        *(v71 + 14) = v75;
        *(v71 + 22) = 2080;
        if (v70)
        {
          break;
        }

        v76 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v76)
        {
          goto LABEL_81;
        }

LABEL_107:
        v77 = MEMORY[0x277D84F90];
LABEL_108:
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027930, &qword_222CA5350);
        v99 = MEMORY[0x223DC94D0](v77, v98);
        v13 = v100;

        v101 = sub_222B437C0(v99, v13, &v143);

        *(v71 + 24) = v101;
        _os_log_impl(&dword_222B39000, v68, v140, "%s Outcomes to be reported for plusId %s: %s", v71, 0x20u);
        v102 = v126;
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v102, -1, -1);
        MEMORY[0x223DCA8C0](v71, -1, -1);

        v57 = &unk_2784BC000;
LABEL_109:
        v103 = 0x277D59000uLL;
        if (v70)
        {
          v5 = sub_222C94C6C();
          if (!v5)
          {
            goto LABEL_18;
          }

LABEL_111:
          if (v5 >= 1)
          {
            v104 = 0;
            v140 = *(v123 + 16);
            do
            {
              if ((v55 & 0xC000000000000001) != 0)
              {
                v105 = MEMORY[0x223DC9B30](v104, v55);
              }

              else
              {
                v105 = *(v55 + 8 * v104 + 32);
              }

              v106 = v105;
              v107 = [objc_allocWithZone(*(v103 + 3152)) v57[386]];
              if (v107)
              {
                v108 = v107;
                v109 = [objc_allocWithZone(MEMORY[0x277D59C58]) v57[386]];
                if (v109)
                {
                  v110 = v109;
                  v111 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v112 = sub_222C9361C();
                  v113 = [v111 initWithNSUUID_];

                  [v110 setPlusId_];
                  v57 = &unk_2784BC000;
                  [v108 setEventMetadata_];

                  [v108 setSuggestionOutcomeReported_];
                  v114 = v140[6];
                  __swift_project_boxed_opaque_existential_1(v140 + 2, v140[5]);
                  sub_222C93F1C();
                  v103 = 0x277D59000;
                }
              }

              ++v104;
            }

            while (v5 != v104);
            goto LABEL_18;
          }

          goto LABEL_128;
        }

        v5 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
          goto LABEL_111;
        }

LABEL_18:

        v1 = v132;
        v136(v141, v132);
        v13 = v135;
        v31 = v137;
        v30 = v138;
      }

      v76 = sub_222C94C6C();
      if (!v76)
      {
        goto LABEL_107;
      }

LABEL_81:
      v142 = MEMORY[0x277D84F90];
      sub_222B4CDD8(0, v76 & ~(v76 >> 63), 0);
      if ((v76 & 0x8000000000000000) == 0)
      {
        v120 = v71;
        v121 = v68;
        v122 = v55 >> 62;
        v77 = v142;
        if ((v55 & 0xC000000000000001) == 0)
        {
          v87 = (v55 + 32);
          do
          {
            v88 = *v87;
            v89 = [v88 domainOutcome];
            if (v89)
            {
              v90 = v89;
              v91 = [v90 mediaOutcome];
              if (v91)
              {
                v92 = v91;
                v93 = [v91 mediaSuggestionFeedback];

                v1 = 0;
                v94 = v90;
              }

              else
              {
                v93 = 0;
                v1 = 1;
                v94 = v88;
                v92 = v90;
              }

              v88 = v92;
            }

            else
            {
              v93 = 0;
              v1 = 1;
              v90 = v88;
            }

            v142 = v77;
            v96 = *(v77 + 16);
            v95 = *(v77 + 24);
            if (v96 >= v95 >> 1)
            {
              sub_222B4CDD8((v95 > 1), v96 + 1, 1);
              v77 = v142;
            }

            *(v77 + 16) = v96 + 1;
            v97 = v77 + 8 * v96;
            *(v97 + 32) = v93;
            *(v97 + 36) = v1;
            ++v87;
            --v76;
          }

          while (v76);
LABEL_105:
          v70 = v122;
          v68 = v121;
          v71 = v120;
          goto LABEL_108;
        }

        v78 = 0;
        while (2)
        {
          MEMORY[0x223DC9B30](v78, v55);
          v79 = [swift_unknownObjectRetain() domainOutcome];
          if (v79)
          {
            v80 = v79;
            v81 = [v80 mediaOutcome];
            if (v81)
            {
              v82 = v81;
              v83 = [v81 mediaSuggestionFeedback];
              swift_unknownObjectRelease_n();

              v84 = 0;
              goto LABEL_90;
            }

            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
          }

          v83 = 0;
          v84 = 1;
LABEL_90:
          v142 = v77;
          v1 = *(v77 + 16);
          v85 = *(v77 + 24);
          if (v1 >= v85 >> 1)
          {
            sub_222B4CDD8((v85 > 1), v1 + 1, 1);
            v77 = v142;
          }

          ++v78;
          *(v77 + 16) = v1 + 1;
          v86 = v77 + 8 * v1;
          *(v86 + 32) = v83;
          *(v86 + 36) = v84;
          if (v76 == v78)
          {
            goto LABEL_105;
          }

          continue;
        }
      }

LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      swift_once();
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v21 = sub_222C9431C();
  __swift_project_value_buffer(v21, qword_280FE2340);
  v22 = sub_222C942FC();
  v23 = sub_222C94A3C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v143 = v25;
    *v24 = 136315138;
    if (qword_280FDBC00 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_222B437C0(qword_280FDBC08, *algn_280FDBC10, &v143);
    _os_log_impl(&dword_222B39000, v22, v23, "%s No PLUSSuggestionOutcomeReported messages to emit to SELF", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x223DCA8C0](v25, -1, -1);
    MEMORY[0x223DCA8C0](v24, -1, -1);
  }
}

uint64_t MediaSuggestionOutcomeReportedOfflineEmitter.deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v2 = sub_222C9431C();
    __swift_project_value_buffer(v2, qword_280FE2340);
    v3 = sub_222C942FC();
    v4 = sub_222C94A4C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      if (qword_280FDBC00 != -1)
      {
        swift_once();
      }

      *(v5 + 4) = sub_222B437C0(qword_280FDBC08, *algn_280FDBC10, &v10);
      _os_log_impl(&dword_222B39000, v3, v4, "%s Emitter is being destroyed while there are suggestion outcomes which have not been logged to SELF!", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x223DCA8C0](v6, -1, -1);
      MEMORY[0x223DCA8C0](v5, -1, -1);
    }
  }

  v7 = *(v1 + 16);

  v8 = *(v1 + 24);

  return v1;
}

uint64_t MediaSuggestionOutcomeReportedOfflineEmitter.__deallocating_deinit()
{
  MediaSuggestionOutcomeReportedOfflineEmitter.deinit();

  return swift_deallocClassInstance();
}

void sub_222C4F1C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_222B505A8(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_222C4F2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027928, &qword_222CA5348) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025468, &qword_222C98688) + 48);
  v6 = *(a1 + v4);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

uint64_t sub_222C4F370(uint64_t a1)
{
  v59 = sub_222C9367C();
  v2 = *(v59 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v59);
  v60 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CB0, &unk_222CA5330);
  v5 = *(*(v56 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v56);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v46 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v46 - v13;
  v14 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v49 = *(v12 + 80);
  v50 = v2;
  v16 = *(v12 + 72);
  v17 = a1 + ((v49 + 32) & ~v49);
  v57 = (v2 + 32);
  v51 = (v49 + 32) & ~v49;
  v52 = (v2 + 16);
  v48 = (v2 + 8);
  v47 = xmmword_222C97C40;
  while (1)
  {
    v18 = v58;
    sub_222C4F800(v17, v58);
    v19 = v55;
    sub_222C4F800(v18, v55);
    v20 = *(v56 + 48);
    v21 = *(v19 + v20);
    v22 = *v57;
    v23 = v54;
    v24 = v19;
    v25 = v59;
    (*v57)(v54, v24, v59);
    *(v23 + v20) = v21;
    v26 = v60;
    (*v52)(v60, v23, v25);
    sub_222C4F870(v23);
    v28 = sub_222B8CA54(v26);
    v29 = v14[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v14[3] < v31)
    {
      sub_222B91B20(v31, 1);
      v14 = v61;
      v33 = sub_222B8CA54(v60);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_19;
      }

      v28 = v33;
    }

    if (v32)
    {
      (*v48)(v60, v59);
      v35 = v14[7];
      sub_222B723A4(v58, v53, &qword_27D024CB0, &unk_222CA5330);
      v36 = *(v35 + 8 * v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 8 * v28) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_222B4B408(0, v36[2] + 1, 1, v36);
        *(v35 + 8 * v28) = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_222B4B408(v38 > 1, v39 + 1, 1, v36);
        *(v35 + 8 * v28) = v36;
      }

      v36[2] = v39 + 1;
      sub_222B723A4(v53, v36 + v51 + v39 * v16, &qword_27D024CB0, &unk_222CA5330);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CA8, &unk_222C96A80);
      v40 = v51;
      v41 = swift_allocObject();
      *(v41 + 16) = v47;
      sub_222B723A4(v58, v41 + v40, &qword_27D024CB0, &unk_222CA5330);
      v14[(v28 >> 6) + 8] |= 1 << v28;
      v22((v14[6] + *(v50 + 72) * v28), v60, v59);
      *(v14[7] + 8 * v28) = v41;
      v42 = v14[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_18;
      }

      v14[2] = v44;
    }

    v17 += v16;
    if (!--v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C4F800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CB0, &unk_222CA5330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C4F870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CB0, &unk_222CA5330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222C4F8D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = sub_222C9367C();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v51);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027940, &unk_222CA53E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v47 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v52 = a1;
  v53 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v54 = v19;
  v55 = 0;
  v56 = v22 & v20;
  v57 = a2;
  v58 = a3;
  v49 = v10;
  v50 = (v10 + 32);
  v48 = (v10 + 8);

  v47[1] = a3;

  while (1)
  {
    sub_222C5A2B0(v17);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025468, &qword_222C98688);
    if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
    {
      sub_222B504E8();
    }

    v27 = a4;
    v28 = *(v26 + 48);
    v29 = *v50;
    (*v50)(v13, v17, v51);
    v30 = *&v17[v28];
    v31 = *a5;
    v33 = sub_222B8CA54(v13);
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
      if ((v27 & 1) == 0)
      {
        sub_222B94AB8();
      }
    }

    else
    {
      sub_222B91B0C(v36, v27 & 1);
      v38 = *a5;
      v39 = sub_222B8CA54(v13);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_20;
      }

      v33 = v39;
    }

    v41 = a5;
    v42 = *a5;
    if (v37)
    {
      v59 = *(v42[7] + 8 * v33);

      sub_222B49C80(v30);
      v23 = v59;
      (*v48)(v13, v51);
      v24 = v42[7];
      v25 = *(v24 + 8 * v33);
      *(v24 + 8 * v33) = v23;
    }

    else
    {
      v42[(v33 >> 6) + 8] |= 1 << v33;
      v29((v42[6] + *(v49 + 72) * v33), v13, v51);
      *(v42[7] + 8 * v33) = v30;
      v43 = v42[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_19;
      }

      v42[2] = v45;
    }

    a4 = 1;
    a5 = v41;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C4FCDC()
{
  type metadata accessor for MediaEntityPartialRepetitionDefinition();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027968, &unk_222CA54F8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDC0B0 = 91;
  unk_280FDC0B8 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C4FD68()
{
  v0 = sub_222BAFDE0(&unk_283607C28);
  result = sub_222BB6FDC(&unk_283607C48);
  qword_280FDC098 = v0;
  return result;
}

uint64_t MediaEntityPartialRepetitionDefinition.__allocating_init(restatementThreshold:useTrimmedUtterance:wakeWordAndEmptyTurnRemoval:)(uint64_t a1, char a2, char a3, char a4)
{
  v8 = swift_allocObject();
  MediaEntityPartialRepetitionDefinition.init(restatementThreshold:useTrimmedUtterance:wakeWordAndEmptyTurnRemoval:)(a1, a2 & 1, a3, a4);
  return v8;
}

uint64_t MediaEntityPartialRepetitionDefinition.init(restatementThreshold:useTrimmedUtterance:wakeWordAndEmptyTurnRemoval:)(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C97C40;
  type metadata accessor for MediaPlayClassifier();
  v11 = swift_allocObject();
  v25[0] = 91;
  v25[1] = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257C8, &qword_222C99050);
  v12 = sub_222C944EC();
  MEMORY[0x223DC9330](v12);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v11 + 16) = 91;
  *(v11 + 24) = 0xE100000000000000;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027948, &unk_222CA5400);
  *(v10 + 64) = &off_28360D250;
  v13 = MEMORY[0x277D84F90];
  *(v10 + 32) = v11;
  *(v4 + 32) = v10;
  *(v4 + 40) = v13;
  *(v4 + 48) = 0x403E000000000000;
  v14 = *&a1;
  if (a2)
  {
    v14 = 0.7;
  }

  *(v4 + 16) = v14;
  *(v4 + 24) = a3 & 1;
  *(v4 + 25) = a4 & 1;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v15 = sub_222C9431C();
  __swift_project_value_buffer(v15, qword_280FE2340);

  v16 = sub_222C942FC();
  v17 = sub_222C94A2C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25[0] = v19;
    *v18 = 136315394;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, v25);
    *(v18 + 12) = 1024;
    *(v18 + 14) = *(v4 + 24);

    _os_log_impl(&dword_222B39000, v16, v17, "%s Initialized with utterance trimming enabled = %{BOOL}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x223DCA8C0](v19, -1, -1);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {
  }

  v20 = sub_222C942FC();
  v21 = sub_222C94A4C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = v23;
    *v22 = 136315394;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, v25);
    *(v22 + 12) = 2048;
    *(v22 + 14) = *(v5 + 16);
    _os_log_impl(&dword_222B39000, v20, v21, "%s Current restatement detection similarity threshold = %f", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x223DCA8C0](v23, -1, -1);
    MEMORY[0x223DCA8C0](v22, -1, -1);
  }

  return v5;
}

uint64_t sub_222C501D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD8, &qword_222CA5EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222C96900;
  if (qword_280FDC090 != -1)
  {
    swift_once();
  }

  v2 = qword_280FDC098;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for FullEntityUtteranceComparator();
  v6 = swift_allocObject();
  *(v6 + 32) = v2;
  *(v6 + 16) = v3;
  *(v6 + 24) = 1;
  *(v6 + 25) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = &protocol witness table for FullEntityUtteranceComparator;
  *(v1 + 32) = v6;
  type metadata accessor for PlayMediaReformulationDefinition();
  v7 = swift_allocObject();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027950, &qword_222CA5410);
  v9 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027958, &unk_222CA5418);
  v10 = sub_222C944EC();
  MEMORY[0x223DC9330](v10);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  v9[2] = 91;
  v9[3] = 0xE100000000000000;
  v9[4] = v7;
  *(v1 + 96) = v8;
  *(v1 + 104) = &protocol witness table for SlotBasedTurnComparator<A>;
  *(v1 + 72) = v9;
  return v1;
}

uint64_t sub_222C5038C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for MediaPlayClassification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B43E3C(a1, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if ((v13 & 1) == 0)
  {
    v14(v7, 1, 1, v8);
    sub_222B4FCD4(v7, &qword_27D0257D8, &unk_222C990C0);
LABEL_7:
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v21 = &type metadata for PIMSConstraintMismatch;
    v22 = sub_222B77B4C();
    v18 = 0xD000000000000016;
    v19 = 0x8000000222CA9C80;
    v20 = 11;
    sub_222C93B5C();
    goto LABEL_10;
  }

  v14(v7, 0, 1, v8);
  sub_222B97FB4(v7, v12, type metadata accessor for MediaPlayClassification);
  if ((sub_222BCB8C4() & 1) == 0)
  {
    sub_222B77D34(v12, type metadata accessor for MediaPlayClassification);
    goto LABEL_7;
  }

  if (v12[8] != 1)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v21 = &type metadata for PIMSConstraintMismatch;
    v22 = sub_222B77B4C();
    v18 = 0xD000000000000016;
    v19 = 0x8000000222CA9C80;
    v20 = 12;
    sub_222C93B5C();
    sub_222B77D34(v12, type metadata accessor for MediaPlayClassification);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0Tm(&v18);
    v15 = 1;
    return (v14)(a2, v15, 1, v8);
  }

  sub_222B97FB4(v12, a2, type metadata accessor for MediaPlayClassification);
  v15 = 0;
  return (v14)(a2, v15, 1, v8);
}

uint64_t sub_222C506D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v166 = a1;
  v175 = a6;
  v176 = sub_222C9367C();
  v173 = *(v176 - 8);
  v10 = *(v173 + 64);
  MEMORY[0x28223BE20](v176);
  v167 = &v148[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v169 = &v148[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v168 = &v148[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v171 = &v148[-v19];
  MEMORY[0x28223BE20](v18);
  v170 = &v148[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v148[-v23];
  v25 = type metadata accessor for MediaPlayClassification();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v148[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = *(a3 + 8);
  v172 = *a3;
  v174 = v30;
  v31 = *(a3 + 16);
  v164 = *(a3 + 24);
  v165 = v31;
  v32 = *(a3 + 32);
  v162 = *(a3 + 40);
  v163 = v32;
  v33 = *(a3 + 48);
  v34 = a4[1];
  v190 = *a4;
  v191 = v34;
  v192 = a4[2];
  v193 = *(a4 + 24);
  sub_222B43E3C(a5 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_successClassification, &v187);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  v35 = swift_dynamicCast();
  v36 = *(v26 + 56);
  if ((v35 & 1) == 0)
  {
    v36(v24, 1, 1, v25);
    sub_222B4FCD4(v24, &qword_27D0257D8, &unk_222C990C0);
LABEL_13:
    v41 = v175;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v45 = sub_222C9431C();
    __swift_project_value_buffer(v45, qword_280FE2340);
    v46 = sub_222C942FC();
    v47 = sub_222C94A4C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v187 = v49;
      *v48 = 136315138;
      if (qword_280FDC0A8 != -1)
      {
        swift_once();
      }

      *(v48 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v187);
      _os_log_impl(&dword_222B39000, v46, v47, "%s No success classification found", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x223DCA8C0](v49, -1, -1);
      MEMORY[0x223DCA8C0](v48, -1, -1);
    }

    goto LABEL_27;
  }

  v36(v24, 0, 1, v25);
  sub_222B97FB4(v24, v29, type metadata accessor for MediaPlayClassification);
  if ((sub_222BCB8C4() & 1) == 0)
  {
    sub_222B77D34(v29, type metadata accessor for MediaPlayClassification);
    goto LABEL_13;
  }

  if (!v174)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v50 = sub_222C9431C();
    __swift_project_value_buffer(v50, qword_280FE2340);
    v39 = sub_222C942FC();
    LOBYTE(v25) = sub_222C94A4C();
    v51 = os_log_type_enabled(v39, v25);
    v41 = v175;
    if (!v51)
    {
      goto LABEL_26;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v187 = v43;
    *v42 = 136315138;
    if (qword_280FDC0A8 != -1)
    {
LABEL_103:
      swift_once();
    }

    *(v42 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v187);
    v44 = "%s Could not extract the media id from reference";
    goto LABEL_25;
  }

  v37 = v190;
  if (__PAIR128__(v174, v172) == v190 || (sub_222C951FC() & 1) != 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v38 = sub_222C9431C();
    __swift_project_value_buffer(v38, qword_280FE2340);
    v39 = sub_222C942FC();
    LOBYTE(v25) = sub_222C94A4C();
    v40 = os_log_type_enabled(v39, v25);
    v41 = v175;
    if (!v40)
    {
      goto LABEL_26;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v187 = v43;
    *v42 = 136315138;
    if (qword_280FDC0A8 != -1)
    {
LABEL_101:
      swift_once();
    }

    *(v42 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v187);
    v44 = "%s Self referential mapping detected, skipping";
LABEL_25:
    _os_log_impl(&dword_222B39000, v39, v25, v44, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x223DCA8C0](v43, -1, -1);
    MEMORY[0x223DCA8C0](v42, -1, -1);
LABEL_26:

    sub_222B77D34(v29, type metadata accessor for MediaPlayClassification);
LABEL_27:
    v52 = type metadata accessor for MediaGroundTruth();
    return (*(*(v52 - 8) + 56))(v41, 1, 1, v52);
  }

  v160 = a2;
  v54 = *(a5 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_comparisons);
  v55 = *(v54 + 16);
  if (!v55)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v82 = sub_222C9431C();
    __swift_project_value_buffer(v82, qword_280FE2340);
    v39 = sub_222C942FC();
    LOBYTE(v25) = sub_222C94A4C();
    v83 = os_log_type_enabled(v39, v25);
    v41 = v175;
    if (!v83)
    {
      goto LABEL_26;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v187 = v43;
    *v42 = 136315138;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v42 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v187);
    v44 = "%s No comparisons found";
    goto LABEL_25;
  }

  v159 = a5;
  v150 = *(&v37 + 1);
  v151 = v37;
  v152 = v33;
  v154 = v29;
  *&v181 = MEMORY[0x277D84F90];
  v158 = v54;
  v56 = v54 + 32;
  v57 = v54 + 32;
  v58 = v55;
  v59 = MEMORY[0x277D84F90];
  do
  {
    sub_222B43E3C(v57, &v187);
    sub_222B405A0(&v187, &v184);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027960, &qword_222CA5428);
    type metadata accessor for SlotBasedTurnComparison();
    if ((swift_dynamicCast() & 1) != 0 && v178)
    {
      v161 = v60;
      MEMORY[0x223DC94A0]();
      if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      v59 = v181;
      v60 = v161;
    }

    v57 += 40;
    --v58;
  }

  while (v58);
  v61 = MEMORY[0x277D84F90];
  *&v181 = MEMORY[0x277D84F90];
  v62 = v154;
  do
  {
    sub_222B43E3C(v56, &v187);
    sub_222B405A0(&v187, &v184);
    type metadata accessor for EntityUtteranceComparison();
    if ((swift_dynamicCast() & 1) != 0 && v178)
    {
      MEMORY[0x223DC94A0]();
      if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      sub_222C947AC();
      v61 = v181;
    }

    v56 += 40;
    --v55;
  }

  while (v55);
  if (!(v59 >> 62))
  {
    v64 = v160;
    v65 = v176;
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = v160;

      v67 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_46;
    }

LABEL_106:

    if (v61 >> 62)
    {
      if (sub_222C94C6C())
      {
        v121 = sub_222C94C6C();
LABEL_108:

        if (v121 == 1)
        {
          v122 = v159;
          sub_222C524B0(v159 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn, &v184);
          v187 = v184;
          v188 = v185;
          v189[0] = v186[0];
          *(v189 + 9) = *(v186 + 9);
          if (*(&v184 + 1))
          {
            v123 = v188;
            sub_222C524B0(v122 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_secondTurn, &v178);
            v181 = v178;
            v182 = v179;
            v183[0] = v180[0];
            *(v183 + 9) = *(v180 + 9);
            if (*(&v178 + 1))
            {
              v124 = v182;
              if (v123 == 1 && v182 == 1)
              {
                v66 = v64;
                sub_222B4FCD4(&v181, &qword_27D025370, &qword_222C98310);
                sub_222B4FCD4(&v187, &qword_27D025370, &qword_222C98310);
                v178 = v190;
                v179 = v191;
                v180[0] = v192;
                LOWORD(v180[1]) = v193;
                sub_222C52710(&v178, v159, &v177);
                v149 = v177;
                v62 = v154;
                v69 = v169;
                v68 = v170;
                v70 = v168;
                goto LABEL_48;
              }

              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              *(&v179 + 1) = &type metadata for PIMSConstraintMismatch;
              *&v180[0] = sub_222B77B4C();
              *&v178 = 0xD000000000000016;
              *(&v178 + 1) = 0x8000000222CA9C80;
              LOBYTE(v179) = 14;
              sub_222C93B5C();
              __swift_destroy_boxed_opaque_existential_0Tm(&v178);
              if (qword_280FDFE78 != -1)
              {
                swift_once();
              }

              v128 = sub_222C9431C();
              __swift_project_value_buffer(v128, qword_280FE2340);

              v129 = sub_222C942FC();
              v130 = sub_222C94A3C();
              sub_222B4FCD4(&v187, &qword_27D025370, &qword_222C98310);
              sub_222B4FCD4(&v181, &qword_27D025370, &qword_222C98310);
              if (os_log_type_enabled(v129, v130))
              {
                v131 = swift_slowAlloc();
                v132 = swift_slowAlloc();
                *&v178 = v132;
                *v131 = 136315650;
                if (qword_280FDC0A8 != -1)
                {
                  swift_once();
                }

                *(v131 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v178);
                *(v131 + 12) = 2080;
                v177 = v123;
                type metadata accessor for INMediaItemType(0);
                v133 = sub_222C944EC();
                v135 = sub_222B437C0(v133, v134, &v178);

                *(v131 + 14) = v135;
                *(v131 + 22) = 2080;
                v177 = v124;
                v136 = sub_222C944EC();
                v138 = v137;
                sub_222B4FCD4(&v181, &qword_27D025370, &qword_222C98310);
                v139 = sub_222B437C0(v136, v138, &v178);

                *(v131 + 24) = v139;
                _os_log_impl(&dword_222B39000, v129, v130, "%s Restatement not created for media type %s -> %s (not song)", v131, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x223DCA8C0](v132, -1, -1);
                MEMORY[0x223DCA8C0](v131, -1, -1);
              }

              else
              {
                sub_222B4FCD4(&v181, &qword_27D025370, &qword_222C98310);
              }

              v140 = v154;
LABEL_155:
              sub_222B77D34(v140, type metadata accessor for MediaPlayClassification);
              v147 = type metadata accessor for MediaGroundTruth();
              return (*(*(v147 - 8) + 56))(v175, 1, 1, v147);
            }

            sub_222B4FCD4(&v187, &qword_27D025370, &qword_222C98310);
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v127 = sub_222C9431C();
            __swift_project_value_buffer(v127, qword_280FE2340);
            v85 = sub_222C942FC();
            v86 = sub_222C94A4C();
            if (!os_log_type_enabled(v85, v86))
            {
LABEL_154:

              v140 = v62;
              goto LABEL_155;
            }

            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *&v178 = v88;
            *v87 = 136315138;
            if (qword_280FDC0A8 != -1)
            {
              swift_once();
            }

            *(v87 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v178);
            v89 = "%s Second turn media item missing";
          }

          else
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v126 = sub_222C9431C();
            __swift_project_value_buffer(v126, qword_280FE2340);
            v85 = sub_222C942FC();
            v86 = sub_222C94A4C();
            if (!os_log_type_enabled(v85, v86))
            {
              goto LABEL_154;
            }

            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *&v184 = v88;
            *v87 = 136315138;
            if (qword_280FDC0A8 != -1)
            {
              swift_once();
            }

            *(v87 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v184);
            v89 = "%s First turn media item missing";
          }
        }

        else
        {
          if (qword_280FDF1F0 != -1)
          {
            swift_once();
          }

          *(&v188 + 1) = &type metadata for PIMSConstraintMismatch;
          *&v189[0] = sub_222B77B4C();
          *&v187 = 0xD000000000000016;
          *(&v187 + 1) = 0x8000000222CA9C80;
          LOBYTE(v188) = 16;
          sub_222C93B5C();
          __swift_destroy_boxed_opaque_existential_0Tm(&v187);
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v125 = sub_222C9431C();
          __swift_project_value_buffer(v125, qword_280FE2340);
          v85 = sub_222C942FC();
          v86 = sub_222C94A4C();
          if (!os_log_type_enabled(v85, v86))
          {
            goto LABEL_154;
          }

          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v187 = v88;
          *v87 = 136315138;
          if (qword_280FDC0A8 != -1)
          {
            swift_once();
          }

          *(v87 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v187);
          v89 = "%s Too many EntityUtteranceComparisons found";
        }

        goto LABEL_134;
      }
    }

    else
    {
      v121 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v121)
      {
        goto LABEL_108;
      }
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v141 = sub_222C9431C();
    __swift_project_value_buffer(v141, qword_280FE2340);
    v142 = v158;

    v85 = sub_222C942FC();
    v143 = sub_222C94A4C();

    if (!os_log_type_enabled(v85, v143))
    {
      goto LABEL_154;
    }

    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v187 = v88;
    *v87 = 136315394;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v87 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v187);
    *(v87 + 12) = 2080;
    v144 = MEMORY[0x223DC94D0](v142, v60);
    v146 = sub_222B437C0(v144, v145, &v187);

    *(v87 + 14) = v146;
    _os_log_impl(&dword_222B39000, v85, v143, "%s Unexpected comparison encountered - %s", v87, 0x16u);
    swift_arrayDestroy();
    goto LABEL_153;
  }

  v120 = sub_222C94C6C();
  v64 = v160;
  v65 = v176;
  if (!v120)
  {
    goto LABEL_106;
  }

  v66 = v160;

  v67 = sub_222C94C6C();
LABEL_46:

  v69 = v169;
  v68 = v170;
  v70 = v168;
  if (v67 != 1)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(&v188 + 1) = &type metadata for PIMSConstraintMismatch;
    *&v189[0] = sub_222B77B4C();
    *&v187 = 0xD000000000000016;
    *(&v187 + 1) = 0x8000000222CA9C80;
    LOBYTE(v188) = 15;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v187);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v84 = sub_222C9431C();
    __swift_project_value_buffer(v84, qword_280FE2340);
    v85 = sub_222C942FC();
    v86 = sub_222C94A4C();
    if (!os_log_type_enabled(v85, v86))
    {
      goto LABEL_154;
    }

    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v187 = v88;
    *v87 = 136315138;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v87 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v187);
    v89 = "%s Too many SlotBasedTurnComparisons found";
LABEL_134:
    _os_log_impl(&dword_222B39000, v85, v86, v89, v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v88);
LABEL_153:
    MEMORY[0x223DCA8C0](v88, -1, -1);
    MEMORY[0x223DCA8C0](v87, -1, -1);
    goto LABEL_154;
  }

  v149 = 2;
LABEL_48:
  v71 = OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_session;
  *(&v188 + 1) = v25;
  *&v189[0] = &protocol witness table for MediaPlayClassification;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v187);
  sub_222C542D8(v62, boxed_opaque_existential_1, type metadata accessor for MediaPlayClassification);
  v39 = *(v159 + v71);
  sub_222B43E3C(&v187, &v184);
  isa = v39[2].isa;

  v155 = v39;
  v159 = isa;
  if (isa)
  {
    v74 = type metadata accessor for FeaturisedTurn(0);
    v75 = 0;
    v153 = v74;
    v76 = v39 + ((*(*(v74 - 8) + 80) + 32) & ~*(*(v74 - 8) + 80));
    v77 = *(*(v74 - 8) + 72);
    v156 = v77;
    v157 = v76;
LABEL_50:
    v161 = v75;
    v158 = &v76[v77 * v75];
    v78 = *(*(__swift_project_boxed_opaque_existential_1(&v184, *(&v185 + 1)) + *(v25 + 36)) + 16);

    v79 = 0;
    do
    {
      if (v78 == v79)
      {

        v75 = v161 + 1;
        v77 = v156;
        v76 = v157;
        if (v161 + 1 != v159)
        {
          goto LABEL_50;
        }

        v66 = v160;
        v69 = v169;
        v68 = v170;
        v70 = v168;
        v39 = v155;
        goto LABEL_85;
      }

      v43 = (v79 + 1);
      v80 = (*(v173 + 80) + 32) & ~*(v173 + 80);
      v42 = *(v173 + 72);
      sub_222C545D4(&qword_280FE02A0, MEMORY[0x277CC95F0]);
      v39 = v65;
      v81 = sub_222C9447C();
      v79 = v43;
    }

    while ((v81 & 1) == 0);

    v158 = (v173 + 48);
LABEL_70:
    v41 = v160;
    v29 = v161;
    if (v161 >= v159)
    {
      __break(1u);
      goto LABEL_103;
    }

    v43 = v171;
    sub_222B421FC(*&v157[v156 * v161 + *(v153 + 24)], v171);
    v90 = (*v158)(v43, 1, v176);
    sub_222B4FCD4(v43, &unk_27D026290, &qword_222C96B40);
    if (v90 == 1)
    {
      v91 = __OFADD__(v29++, 1);
      v39 = v155;
      if (v91)
      {
LABEL_81:
        __break(1u);
      }

      else
      {
        while (v29 != v159)
        {
          if (v29 >= v159)
          {
            __break(1u);
            goto LABEL_101;
          }

          v161 = v29;
          v43 = &v157[v29 * v156];
          v92 = *(__swift_project_boxed_opaque_existential_1(&v184, *(&v185 + 1)) + *(v25 + 36));
          v93 = *(v92 + 16);

          v94 = v92 + v80;
          v95 = v93 + 1;
          while (--v95)
          {
            v96 = v94 + v42;
            v39 = v176;
            v97 = sub_222C9447C();
            v94 = v96;
            if (v97)
            {

              goto LABEL_70;
            }
          }

          v41 = v160;
          v29 = v161 + 1;
          v39 = v155;
          if (__OFADD__(v161, 1))
          {
            goto LABEL_81;
          }
        }
      }

      v66 = v41;
      v69 = v169;
      v68 = v170;
      v70 = v168;
    }

    else
    {
      v66 = v41;
      v159 = v29;
      v69 = v169;
      v68 = v170;
      v70 = v168;
      v39 = v155;
    }

    v65 = v176;
  }

LABEL_85:
  v98 = v39[2].isa;
  v99 = v173;
  if (v159 == v98)
  {
    v100 = 1;
    goto LABEL_90;
  }

  if (v159 >= v98)
  {
    __break(1u);
    goto LABEL_157;
  }

  v101 = type metadata accessor for FeaturisedTurn(0);
  sub_222B421FC(*(&v155->isa + ((*(*(v101 - 8) + 80) + 32) & ~*(*(v101 - 8) + 80)) + *(*(v101 - 8) + 72) * v159 + *(v101 + 24)), v70);
  sub_222B5551C(v70, v69);
  if ((*(v99 + 48))(v69, 1, v65) != 1)
  {
    (*(v99 + 32))(v68, v69, v65);
    sub_222B4FCD4(v70, &unk_27D026290, &qword_222C96B40);
    v100 = 0;
LABEL_90:
    (*(v99 + 56))(v68, v100, 1, v65);

    __swift_destroy_boxed_opaque_existential_0Tm(&v184);
    __swift_destroy_boxed_opaque_existential_0Tm(&v187);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v102 = sub_222C9431C();
    __swift_project_value_buffer(v102, qword_280FE2340);

    sub_222B554C0(&v190, &v187);
    v68 = sub_222C942FC();
    LOBYTE(v69) = sub_222C94A3C();

    sub_222B55A80(&v190);
    if (!os_log_type_enabled(v68, v69))
    {

LABEL_99:
      v107 = *(v99 + 16);
      v108 = v167;
      v107(v167, v166, v65);
      v171 = type metadata accessor for MediaGroundTruth();
      v109 = v175;
      sub_222B5551C(v170, v175 + *(v171 + 9));
      v107(v109, v108, v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D30, &unk_222CA5430);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_222C97C40;
      v111 = v172;
      v112 = v174;
      *(v110 + 32) = v172;
      *(v110 + 40) = v112;
      v114 = v164;
      v113 = v165;
      *(v110 + 48) = v165;
      *(v110 + 56) = v114;
      v115 = v162;
      *(v110 + 64) = v163;
      *(v110 + 72) = v115;
      *(v110 + 80) = v152;
      sub_222B554C0(&v190, &v187);
      sub_222C5382C(v111, v112, v113, v114);
      (*(v173 + 8))(v167, v65);
      sub_222B4FCD4(v170, &unk_27D026290, &qword_222C96B40);
      sub_222B77D34(v154, type metadata accessor for MediaPlayClassification);
      v116 = v171;
      v117 = v175;
      *(v175 + *(v171 + 5)) = v149;
      *(v117 + v116[6]) = v160;
      *(v117 + v116[7]) = v110;
      v118 = v117 + v116[8];
      v119 = v191;
      *v118 = v190;
      *(v118 + 16) = v119;
      *(v118 + 32) = v192;
      *(v118 + 48) = v193;
      (*(*(v116 - 1) + 56))();
    }

    v99 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v187 = v66;
    *v99 = 136315650;
    if (qword_280FDC0A8 == -1)
    {
LABEL_94:
      *(v99 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v187);
      *(v99 + 12) = 2080;
      v104 = UsoEntity_common_MediaItem.convertUSOMediaItemToString()();
      countAndFlagsBits = v104.value._countAndFlagsBits;
      if (v104.value._object)
      {
        object = v104.value._object;
      }

      else
      {
        countAndFlagsBits = 7104878;
        object = 0xE300000000000000;
      }

      v106 = sub_222B437C0(countAndFlagsBits, object, &v187);

      *(v99 + 14) = v106;
      *(v99 + 22) = 2080;
      *(v99 + 24) = sub_222B437C0(v151, v150, &v187);
      _os_log_impl(&dword_222B39000, v68, v69, "%s Generating Media GT with key: %s value: %s", v99, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v66, -1, -1);
      MEMORY[0x223DCA8C0](v99, -1, -1);

      v65 = v176;
      v99 = v173;
      goto LABEL_99;
    }

LABEL_157:
    swift_once();
    goto LABEL_94;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(&v184);
  __break(1u);
  return result;
}

double sub_222C524B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 28));
  v4 = (v3 + 64);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    if (*(v4 - 1) != 0xD000000000000011 || 0x8000000222CA87C0 != *v4)
    {
      v4 += 5;
      if ((sub_222C951FC() & 1) == 0)
      {
        continue;
      }
    }

    swift_bridgeObjectRetain_n();

    sub_222B4183C(v7, a2);

    swift_bridgeObjectRelease_n();

    return result;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v10 = sub_222C9431C();
  __swift_project_value_buffer(v10, qword_280FE2340);
  v11 = sub_222C942FC();
  v12 = sub_222C94A4C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136315138;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v15);
    _os_log_impl(&dword_222B39000, v11, v12, "%s [getPrimaryMediaItem] No INPlayMediaIntent found for the turn", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223DCA8C0](v14, -1, -1);
    MEMORY[0x223DCA8C0](v13, -1, -1);
  }

  result = 0.0;
  *(a2 + 41) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void sub_222C52710(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v34 = a1[5];
  v8 = sub_222C54680(a2 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn);
  v9 = *(v8 + 16);
  if (v9)
  {
    v33 = v5;
    v36 = MEMORY[0x277D84F90];
    sub_222B4C418(0, v9, 0);
    v10 = v36;
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v36 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_222B4C418((v14 > 1), v15 + 1, 1);
        v10 = v36;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 8;
      --v9;
    }

    while (v9);

    v5 = v33;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v17 = (v10 + 40);
  v18 = *(v10 + 16) + 1;
  do
  {
    if (!--v18)
    {
      break;
    }

    if (*(v17 - 1) == v3 && *v17 == v4)
    {
      break;
    }

    v17 += 2;
  }

  while ((sub_222C951FC() & 1) == 0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);

  sub_222B4FDCC(v5, v6);
  v21 = sub_222C942FC();
  v22 = sub_222C94A3C();

  sub_222B4FE78(v5, v6);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_222B437C0(v3, v4, &v36);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v18 != 0;
    _os_log_impl(&dword_222B39000, v21, v22, "Repetition candidate %s is alternate candidate: %{BOOL}d.", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x223DCA8C0](v24, -1, -1);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

  v25 = sub_222C942FC();
  v26 = sub_222C94A3C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315138;
    v29 = MEMORY[0x223DC94D0](v10, MEMORY[0x277D837D0]);
    v31 = v30;

    v32 = sub_222B437C0(v29, v31, &v36);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_222B39000, v25, v26, "Alternate candidate list: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223DCA8C0](v28, -1, -1);
    MEMORY[0x223DCA8C0](v27, -1, -1);
  }

  else
  {
  }

  *a3 = v18 != 0;
}

uint64_t sub_222C52AE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v45 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = &v37 - v12;
  v13 = *a1;
  v38 = v5;
  v41 = (v5 + 48);
  v42 = (v5 + 56);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v47 = v13;

  v46 = 0;
  while (1)
  {
    v26 = v46;
    v27 = *(v47 + 16);
    if (v46 == v27)
    {
      v28 = 1;
      v30 = v44;
      v29 = v45;
      v31 = v43;
      goto LABEL_15;
    }

    v30 = v44;
    v29 = v45;
    v31 = v43;
    if (v46 >= v27)
    {
      break;
    }

    sub_222C542D8(v47 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v46, v43, type metadata accessor for FeaturisedTurn);
    v28 = 0;
    ++v26;
LABEL_15:
    (*v42)(v31, v28, 1, v29);
    sub_222B5EC84(v31, v30);
    if ((*v41)(v30, 1, v29) == 1)
    {

      v36 = v39;
      *(v39 + 48) = 0;
      v36[1] = 0u;
      v36[2] = 0u;
      *v36 = 0u;
      return result;
    }

    v46 = v26;
    v32 = v30;
    v33 = v40;
    sub_222B97FB4(v32, v40, type metadata accessor for FeaturisedTurn);
    v34 = *(v33 + *(v29 + 28));

    sub_222B77D34(v33, type metadata accessor for FeaturisedTurn);

    v35 = v34;
    if (v34)
    {
      v17 = (v34 + 64);
      v18 = -1;
      while (1)
      {
        ++v18;
        v19 = *(v35 + 16);
        if (v18 == v19)
        {
          break;
        }

        if (v18 >= v19)
        {
          __break(1u);
          goto LABEL_22;
        }

        v21 = *(v17 - 4);
        v20 = *(v17 - 3);
        v22 = *(v17 - 2);
        v23 = *(v17 - 1);
        v24 = *v17;
        if (v21 == v14 && v20 == v15)
        {
          v21 = v14;
LABEL_19:

          v48[0] = v21;
          v48[1] = v20;
          v48[2] = v22;
          v48[3] = v23;
          v48[4] = v24;
          extractMediaReference(event:)(v48, v39);
        }

        v17 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_222C52E5C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = v2;
  v7 = v3;
  extractMediaReference(event:)(&v4, a2);
}

uint64_t sub_222C52E9C(uint64_t *a1)
{
  v2 = *a1;
  if (*(v1 + 25) == 1)
  {
    v3 = *a1;

    return v2;
  }

  v4 = *(v2 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4 - 1;
  v6 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5 + *(v6 + 24));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_222B43E3C(v10, v17);
      sub_222B43E3C(v17, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      sub_222C9404C();
      if (swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        return MEMORY[0x277D84F90];
      }

      sub_222B405A0(v17, v16);
      type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
      if (swift_dynamicCast())
      {

        return MEMORY[0x277D84F90];
      }

      ++v9;
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (qword_280FDFE78 != -1)
  {
LABEL_19:
    swift_once();
  }

  v11 = sub_222C9431C();
  __swift_project_value_buffer(v11, qword_280FE2340);
  v12 = sub_222C942FC();
  v13 = sub_222C94A3C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_222B39000, v12, v13, "Last turn of the session does not contain asr or u2 features, dropping the last", v14, 2u);
    MEMORY[0x223DCA8C0](v14, -1, -1);
  }

  return sub_222C53118(1, v2);
}

uint64_t sub_222C53118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v12 = v28 - v11;
  if (a1 < 0)
  {
    goto LABEL_30;
  }

  if (!a1)
  {
    return a2;
  }

  v13 = *(a2 + 16);
  if (!v13)
  {

    a2 = MEMORY[0x277D84F90];
LABEL_26:

    return a2;
  }

  v14 = 0;
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v28[1] = a2;
  v16 = a2 + v15;
  v17 = *(v10 + 72);
  v18 = v13 - 1;
  a2 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v30 = v8;
  v31 = v15;
  v32 = v28 - v11;
  v29 = a1;
  while (1)
  {
    result = sub_222C542D8(v16, v12, type metadata accessor for FeaturisedTurn);
    v23 = v19[2];
    if (v23 < a1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C3D4(0, v23 + 1, 1);
        v8 = v30;
        v19 = v33;
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        sub_222B4C3D4(v20 > 1, v21 + 1, 1);
        v8 = v30;
        v19 = v33;
      }

      v19[2] = v21 + 1;
      v15 = v31;
      v22 = v19 + v31 + v21 * v17;
      v12 = v32;
      sub_222B97FB4(v32, v22, type metadata accessor for FeaturisedTurn);
LABEL_8:
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    if (v14 >= v23)
    {
      break;
    }

    sub_222C542D8(v19 + v15 + v17 * v14, v8, type metadata accessor for FeaturisedTurn);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v34 = a2;
    if ((v25 & 1) == 0)
    {
      sub_222B4C3D4(0, *(a2 + 16) + 1, 1);
      v8 = v30;
      a2 = v34;
    }

    v27 = *(a2 + 16);
    v26 = *(a2 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_222B4C3D4(v26 > 1, v27 + 1, 1);
      v8 = v30;
      a2 = v34;
    }

    *(a2 + 16) = v27 + 1;
    v15 = v31;
    sub_222B97FB4(v8, a2 + v31 + v27 * v17, type metadata accessor for FeaturisedTurn);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_222C84864(v19);
      v19 = result;
    }

    v12 = v32;
    if (v14 >= v19[2])
    {
      goto LABEL_29;
    }

    sub_222C5461C(v32, v19 + v15 + v17 * v14++);
    a1 = v29;
    if (v14 < v29)
    {
      goto LABEL_8;
    }

    if (!v18)
    {
LABEL_24:

      goto LABEL_26;
    }

    v14 = 0;
LABEL_9:
    --v18;
    v16 += v17;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_222C53458@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TimeBasedPlayMediaStitcher();
  result = swift_allocObject();
  *(result + 16) = 0x403E000000000000;
  a1[3] = v2;
  a1[4] = &protocol witness table for TimeBasedPlayMediaStitcher;
  *a1 = result;
  return result;
}

uint64_t sub_222C534A8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 25) != 1)
  {
    return sub_222C542D8(a1, a2, type metadata accessor for FeaturisedSession);
  }

  v4 = *a1;

  v7 = sub_222C53EDC(v6);
  v8 = type metadata accessor for FeaturisedSession(0);
  v9 = *(v8 + 20);
  v10 = sub_222C9367C();
  (*(*(v10 - 8) + 16))(a2 + v9, &a1[v9], v10);
  result = sub_222B5551C(&a1[*(v8 + 24)], a2 + *(v8 + 24));
  *a2 = v7;
  return result;
}

uint64_t MediaEntityPartialRepetitionDefinition.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t MediaEntityPartialRepetitionDefinition.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_222C53678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_222C54150(a1);
  *a2 = result;
  return result;
}

uint64_t sub_222C536C4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(*v2 + 25) != 1)
  {
    return sub_222C542D8(a1, a2, type metadata accessor for FeaturisedSession);
  }

  v4 = *a1;

  v7 = sub_222C53EDC(v6);
  v8 = type metadata accessor for FeaturisedSession(0);
  v9 = *(v8 + 20);
  v10 = sub_222C9367C();
  (*(*(v10 - 8) + 16))(a2 + v9, &a1[v9], v10);
  result = sub_222B5551C(&a1[*(v8 + 24)], a2 + *(v8 + 24));
  *a2 = v7;
  return result;
}

uint64_t sub_222C537FC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_222C5382C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_222B4FDCC(a3, a4);
  }
}

uint64_t sub_222C53890(uint64_t a1)
{
  result = type metadata accessor for FeaturisedTurn(0);
  v3 = *(a1 + *(result + 24));
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = v3 + 32;
  while (v5 < *(v3 + 16))
  {
    sub_222B43E3C(v6, v8);
    sub_222B43E3C(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    sub_222C9404C();
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      return 0;
    }

    sub_222B405A0(v8, v7);
    type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
    result = swift_dynamicCast();
    if (result)
    {

      return 0;
    }

    ++v5;
    v6 += 40;
    if (v4 == v5)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C539C4(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  if (sub_222C53890(a1))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);
    sub_222C542D8(a1, v6, type metadata accessor for FeaturisedTurn);
    v10 = sub_222C942FC();
    v11 = sub_222C94A3C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315394;
      if (qword_280FDC0A8 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v30);
      *(v12 + 12) = 2080;
      sub_222C9367C();
      sub_222C545D4(&qword_280FE0298, MEMORY[0x277CC95F0]);
      v14 = sub_222C9517C();
      v16 = v15;
      sub_222B77D34(v6, type metadata accessor for FeaturisedTurn);
      v17 = sub_222B437C0(v14, v16, &v30);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_222B39000, v10, v11, "%s Ignoring turn %s - empty turn", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v12, -1, -1);

      return 0;
    }

    v27 = v6;
  }

  else
  {
    if (!sub_222B453E4(a1))
    {
      return 1;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v18 = sub_222C9431C();
    __swift_project_value_buffer(v18, qword_280FE2340);
    sub_222C542D8(a1, v8, type metadata accessor for FeaturisedTurn);
    v19 = sub_222C942FC();
    v20 = sub_222C94A3C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315394;
      if (qword_280FDC0A8 != -1)
      {
        swift_once();
      }

      *(v21 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v30);
      *(v21 + 12) = 2080;
      sub_222C9367C();
      sub_222C545D4(&qword_280FE0298, MEMORY[0x277CC95F0]);
      v23 = sub_222C9517C();
      v25 = v24;
      sub_222B77D34(v8, type metadata accessor for FeaturisedTurn);
      v26 = sub_222B437C0(v23, v25, &v30);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_222B39000, v19, v20, "%s Ignoring turn %s - wake word only", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v22, -1, -1);
      MEMORY[0x223DCA8C0](v21, -1, -1);

      return 0;
    }

    v27 = v8;
  }

  sub_222B77D34(v27, type metadata accessor for FeaturisedTurn);
  return 0;
}

uint64_t sub_222C53EDC(uint64_t a1)
{
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v23 = *(a1 + 16);
  if (v23)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v21 = v8;
    v22 = a1;
    while (v12 < *(a1 + 16))
    {
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      sub_222C542D8(a1 + v14 + v15 * v12, v11, type metadata accessor for FeaturisedTurn);
      v16 = sub_222C539C4(v11);
      if (v1)
      {
        sub_222B77D34(v11, type metadata accessor for FeaturisedTurn);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_222B97FB4(v11, v8, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v13 + 16) + 1, 1);
          v13 = v24;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_222B4C3D4(v18 > 1, v19 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v19 + 1;
        v8 = v21;
        result = sub_222B97FB4(v21, v13 + v14 + v19 * v15, type metadata accessor for FeaturisedTurn);
        a1 = v22;
      }

      else
      {
        result = sub_222B77D34(v11, type metadata accessor for FeaturisedTurn);
      }

      if (v23 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_222C54150(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  result = sub_222B41B48(*(a1 + *(v2 + 24)));
  if (!result)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v4 = sub_222C9431C();
    __swift_project_value_buffer(v4, qword_280FE2340);
    v5 = sub_222C942FC();
    v6 = sub_222C94A4C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      if (qword_280FDC0A8 != -1)
      {
        swift_once();
      }

      *(v7 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v9);
      _os_log_impl(&dword_222B39000, v5, v6, "%s No U2 graph found for the turn", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x223DCA8C0](v8, -1, -1);
      MEMORY[0x223DCA8C0](v7, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_222C542D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C545D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222C5461C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C54680(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 28));
  v2 = (v1 + 64);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *(v2 - 3);
    v5 = *(v2 - 2);
    if (*(v2 - 1) != 0xD000000000000011 || 0x8000000222CA87C0 != *v2)
    {
      v2 += 5;
      if ((sub_222C951FC() & 1) == 0)
      {
        continue;
      }
    }

    swift_bridgeObjectRetain_n();

    v7 = sub_222B41F10(v5);

    swift_bridgeObjectRelease_n();

    if (v7)
    {
      return v7;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v9 = sub_222C9431C();
  __swift_project_value_buffer(v9, qword_280FE2340);
  v10 = sub_222C942FC();
  v11 = sub_222C94A4C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v12 = 136315138;
    if (qword_280FDC0A8 != -1)
    {
      swift_once();
    }

    *(v12 + 4) = sub_222B437C0(qword_280FDC0B0, unk_280FDC0B8, &v14);
    _os_log_impl(&dword_222B39000, v10, v11, "%s [getAlternativeMediaItems] No INPlayMediaIntent found for the turn", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x223DCA8C0](v13, -1, -1);
    MEMORY[0x223DCA8C0](v12, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t SuccessfulMessageClassification.init(siriStarted:messageEventId:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C97C40;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(a4 + 32) = v7;
}

uint64_t SuccessfulMessageClassification.messageEventId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_222C5499C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222C549E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222C54A58(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v81 = a3;
  v82 = a4;
  *&v80 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v77 - v8;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v85 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_32:
    v12 = MEMORY[0x277D84F98];
    goto LABEL_33;
  }

LABEL_3:
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  do
  {
LABEL_4:
    v83 = v12;
    v13 = v11;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x223DC9B30](v13, a1);
      }

      else
      {
        if (v13 >= *(v85 + 16))
        {
          goto LABEL_30;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v85 = a1 & 0xFFFFFFFFFFFFFF8;
        v10 = sub_222C94C6C();
        if (!v10)
        {
          goto LABEL_32;
        }

        goto LABEL_3;
      }

      v16 = [v14 suggestionId];
      if (v16)
      {
        break;
      }

LABEL_6:
      ++v13;
      if (v11 == v10)
      {
        v12 = v83;
        goto LABEL_33;
      }
    }

    v17 = v16;
    sub_222C94A1C();

    v18 = sub_222C9367C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v9, 1, v18) == 1)
    {

      sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
      goto LABEL_6;
    }

    v20 = sub_222C9360C();
    v22 = v21;
    (*(v19 + 8))(v9, v18);
    v23 = v22;
    v78 = [v15 contactSuggestionOutcome];
    v24 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v24;
    *&v79 = v20;
    v27 = sub_222B8C9DC(v20, v23);
    v28 = *(v24 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }

    if (*(v24 + 24) >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v34 = v26;
        sub_222B92F88();
        if ((v34 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_22:

      v33 = v87;
      *(*(v87 + 56) + 4 * v27) = v78;
      v12 = v33;

      if (v11 == v10)
      {
        break;
      }

      goto LABEL_4;
    }

    LODWORD(v83) = v26;
    sub_222B8E510(v30, isUniquelyReferenced_nonNull_native);
    v31 = sub_222B8C9DC(v79, v23);
    if ((v83 & 1) != (v32 & 1))
    {
      goto LABEL_52;
    }

    v27 = v31;
    if (v83)
    {
      goto LABEL_22;
    }

LABEL_25:
    v35 = v87;
    *(v87 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v36 = (*(v35 + 48) + 16 * v27);
    *v36 = v79;
    v36[1] = v23;
    *(*(v35 + 56) + 4 * v27) = v78;
    v12 = v35;

    v37 = *(v12 + 16);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_51;
    }

    *(v12 + 16) = v39;
  }

  while (v11 != v10);
LABEL_33:
  v40 = *(v80 + 16);
  if (v40)
  {
    v41 = (v80 + 40);
    v42 = &unk_280FDF000;
    *&v7 = 136315394;
    v80 = v7;
    *&v7 = 136315650;
    v79 = v7;
    v43 = v84;
    v83 = v12;
    do
    {
      v45 = *(v41 - 1);
      v44 = *v41;
      v46 = *(v12 + 16);

      if (v46 && (v47 = sub_222B8C9DC(v45, v44), (v48 & 1) != 0))
      {
        LODWORD(v85) = *(*(v12 + 56) + 4 * v47);
        if (v42[463] != -1)
        {
          swift_once();
        }

        v49 = sub_222C9431C();
        __swift_project_value_buffer(v49, qword_280FE2340);

        v50 = sub_222C942FC();
        v51 = sub_222C94A3C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = v43;
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v86 = v52;
          v87 = v54;
          *v53 = v79;
          v82(v81);

          v55 = sub_222C944EC();
          v57 = sub_222B437C0(v55, v56, &v87);

          *(v53 + 4) = v57;
          *(v53 + 12) = 2080;
          v58 = sub_222B437C0(v45, v44, &v87);

          *(v53 + 14) = v58;
          *(v53 + 22) = 2080;
          v59 = @"PLUSCONTACTSUGGESTIONOUTCOME_UNKNOWN";
          v60 = @"PLUSCONTACTSUGGESTIONOUTCOME_UNKNOWN";
          if (v85 <= 0xD)
          {
            v60 = off_2784BC090[v85];
            v59 = off_2784BC100[v85];
          }

          v61 = v60;
          v62 = v59;
          v63 = sub_222C9449C();
          v65 = v64;

          v66 = sub_222B437C0(v63, v65, &v87);

          *(v53 + 24) = v66;
          _os_log_impl(&dword_222B39000, v50, v51, "[%s] Suggestion Id=%s, Outcome=%s", v53, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v54, -1, -1);
          MEMORY[0x223DCA8C0](v53, -1, -1);

          v12 = v83;
          v43 = v84;
          v42 = &unk_280FDF000;
          goto LABEL_36;
        }
      }

      else
      {
        if (v42[463] != -1)
        {
          swift_once();
        }

        v67 = sub_222C9431C();
        __swift_project_value_buffer(v67, qword_280FE2340);

        v50 = sub_222C942FC();
        v68 = sub_222C94A4C();

        if (os_log_type_enabled(v50, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v86 = v43;
          v87 = v70;
          *v69 = v80;
          v82(v81);

          v71 = sub_222C944EC();
          v73 = sub_222B437C0(v71, v72, &v87);
          v43 = v84;

          *(v69 + 4) = v73;
          *(v69 + 12) = 2080;
          v74 = sub_222B437C0(v45, v44, &v87);

          *(v69 + 14) = v74;
          v42 = &unk_280FDF000;
          _os_log_impl(&dword_222B39000, v50, v68, "[%s] Missing outcome for Suggestion Id=%s. SELF messages will not be emitted.", v69, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v70, -1, -1);
          v75 = v69;
          v12 = v83;
          MEMORY[0x223DCA8C0](v75, -1, -1);

          goto LABEL_36;
        }
      }

LABEL_36:
      v41 += 2;
      --v40;
    }

    while (v40);
  }
}

void *sub_222C55234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (*(*(a2 + 72) + 16))
  {
    MEMORY[0x28223BE20](a1);
    v21[2] = &v23;
    v21[3] = v7;
    return sub_222BDC03C(v8, v21, a1);
  }

  else
  {
    v10 = v5;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);

    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[4] = v10;
      v22 = v17;
      *v16 = 136315138;
      a5(a4);
      v18 = sub_222C944EC();
      v20 = sub_222B437C0(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_222B39000, v14, v15, "[%s] No plus suggestions in entity prompt. Marking all candidates as unknown, contradictory.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    else
    {
    }

    return sub_222BC94A8(a1, 8);
  }
}

void *sub_222C55418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_222C555A8(a1, a3);
  v10 = *(*(a3 + 32) + 16);
  v11 = sub_222B79D2C();
  if (v11)
  {
    v12 = 5;
  }

  else
  {
    v12 = 7;
  }

  if (v11)
  {
    v13 = 3;
  }

  else
  {
    v13 = 6;
  }

  if (v9)
  {
    v12 = 4;
    v13 = 2;
  }

  if (v10 <= 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  sub_222C5845C(a3, v8, type metadata accessor for EntityPromptClassification);
  v15 = type metadata accessor for EntityPromptClassification();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  v16 = sub_222BC8C30(a1, v8);
  sub_222B4FCD4(v8, &qword_27D025028, &unk_222C96EC0);
  return sub_222BC91F0(a1, v14, v16);
}

uint64_t sub_222C555A8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for PlusContactSuggestion();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  sub_222B5551C(a1 + *(v22 + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_222B4FCD4(v7, &unk_27D026290, &qword_222C96B40);
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_4:
    sub_222B4FCD4(v16, &qword_27D025A88, &unk_222C9A0C0);
    v25 = 0;
    return v25 & 1;
  }

  (*(v9 + 32))(v12, v7, v8);
  v23 = v2[5];
  v24 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v23);
  (*(v24 + 64))(v12, v23, v24);
  (*(v9 + 8))(v12, v8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  sub_222C58524(v16, v21, type metadata accessor for PlusContactSuggestion);
  v26 = *(v31 + 48);
  if (v26)
  {
    v27 = &v21[*(v17 + 24)];
    if (*v27 == *(v31 + 40) && v26 == *(v27 + 1))
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_222C951FC();
    }
  }

  else
  {
    v25 = 0;
  }

  sub_222C584C4(v21, type metadata accessor for PlusContactSuggestion);
  return v25 & 1;
}

uint64_t sub_222C55930(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v31 - v6 + 24;
  v8 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (*(a1 + 16) == 1)
  {
    sub_222C5845C(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    if (v12[*(v8 + 24)])
    {
      v13 = type metadata accessor for EntityPromptClassification();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
      v14 = sub_222BC8C30(v12, v7);
      sub_222B4FCD4(v7, &qword_27D025028, &unk_222C96EC0);
      v15 = sub_222BC91F0(v12, 11, v14);
      v31[0] = v15;
      v16 = MEMORY[0x277D84F90];
      v32 = MEMORY[0x277D84F90];
      v17 = v15;
      v18 = v17;
      if (v15)
      {
        v19 = v17;
        MEMORY[0x223DC94A0]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v16 = v32;
      }

      sub_222B4FCD4(v31, &qword_27D027978, qword_222CA5630);
      sub_222C584C4(v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      return v16;
    }

    sub_222C584C4(v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v21 = sub_222C9431C();
  __swift_project_value_buffer(v21, qword_280FE2340);

  v22 = sub_222C942FC();
  v23 = sub_222C94A4C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[1] = v2;
    v32 = v25;
    *v24 = 136315138;
    type metadata accessor for PhoneCallSuggestionOutcomeExtractor();

    v26 = sub_222C944EC();
    v28 = sub_222B437C0(v26, v27, &v32);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_222B39000, v22, v23, "[%s] Either found zero suggestions, or multiple suggestions included in the model output but no detected prompt. Marking all suggestions as unknown, contradictory outcomes.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x223DCA8C0](v25, -1, -1);
    MEMORY[0x223DCA8C0](v24, -1, -1);
  }

  return sub_222BC94A8(a1, 8);
}

void *sub_222C55D08(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v4 = type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v29 = &v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = a3 + v14;
  v27 = *(v10 + 72);
  v28 = v14;
  v16 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  do
  {
    sub_222C5845C(v15, v12, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    if (v31(v12))
    {
      sub_222C5845C(v12, v29, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_222B4B880(0, v17[2] + 1, 1, v17);
      }

      v23 = v17[2];
      v22 = v17[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v19 = sub_222B4B880(v22 > 1, v23 + 1, 1, v17);
        v20 = v29;
        v17 = v19;
      }

      else
      {
        v19 = v17;
        v20 = v29;
      }
    }

    else
    {
      sub_222C5845C(v12, v30, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_222B4B880(0, v16[2] + 1, 1, v16);
      }

      v23 = v16[2];
      v25 = v16[3];
      v24 = v23 + 1;
      if (v23 >= v25 >> 1)
      {
        v19 = sub_222B4B880(v25 > 1, v23 + 1, 1, v16);
        v20 = v30;
        v16 = v19;
      }

      else
      {
        v19 = v16;
        v20 = v30;
      }
    }

    sub_222C584C4(v12, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    *(v19 + 16) = v24;
    v21 = v27;
    sub_222C58524(v20, v19 + v28 + v23 * v27, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v15 += v21;
    --v13;
  }

  while (v13);
  return v16;
}

void *sub_222C55FF8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v29 = &v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = a3 + v14;
  v27 = *(v10 + 72);
  v28 = v14;
  v16 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  do
  {
    sub_222C5845C(v15, v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    if (v31(v12))
    {
      sub_222C5845C(v12, v29, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_222B4BC8C(0, v17[2] + 1, 1, v17);
      }

      v23 = v17[2];
      v22 = v17[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v19 = sub_222B4BC8C(v22 > 1, v23 + 1, 1, v17);
        v20 = v29;
        v17 = v19;
      }

      else
      {
        v19 = v17;
        v20 = v29;
      }
    }

    else
    {
      sub_222C5845C(v12, v30, type metadata accessor for PlusContactSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_222B4BC8C(0, v16[2] + 1, 1, v16);
      }

      v23 = v16[2];
      v25 = v16[3];
      v24 = v23 + 1;
      if (v23 >= v25 >> 1)
      {
        v19 = sub_222B4BC8C(v25 > 1, v23 + 1, 1, v16);
        v20 = v30;
        v16 = v19;
      }

      else
      {
        v19 = v16;
        v20 = v30;
      }
    }

    sub_222C584C4(v12, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    *(v19 + 16) = v24;
    v21 = v27;
    sub_222C58524(v20, v19 + v28 + v23 * v27, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v15 += v21;
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t sub_222C562E8()
{
  type metadata accessor for PhoneCallSuggestionOutcomeExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027970, &qword_222CA5628);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDC480 = 91;
  unk_280FDC488 = 0xE100000000000000;
  return result;
}

uint64_t PhoneCallSuggestionOutcomeExtractor.__allocating_init(picsStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222B405A0(a1, v2 + 16);
  return v2;
}

void *sub_222C563D8(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v62 - v5;
  v7 = type metadata accessor for EntityPromptClassification();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for FeaturisedTurn(0);
  v10 = *(*(v67 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v18 = &v62 - v17;
  v19 = *(a1 + 16);
  v62 = v16;
  if (v19)
  {
    v20 = *(v16 + 72);
    v65 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = a1 + v65;
    v22 = MEMORY[0x277D84F90];
    do
    {
      sub_222C5845C(v21, v18, type metadata accessor for FeaturisedTurn);
      if (sub_222B42478(*&v18[*(v67 + 24)]))
      {

        sub_222C58524(v18, v15, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v70[0] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v22 + 16) + 1, 1);
          v22 = *&v70[0];
        }

        v25 = *(v22 + 16);
        v24 = *(v22 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_222B4C3D4(v24 > 1, v25 + 1, 1);
          v22 = *&v70[0];
        }

        *(v22 + 16) = v25 + 1;
        sub_222C58524(v15, v22 + v65 + v25 * v20, type metadata accessor for FeaturisedTurn);
      }

      else
      {
        sub_222C584C4(v18, type metadata accessor for FeaturisedTurn);
      }

      v21 += v20;
      --v19;
    }

    while (v19);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v67 = v22;
  v26 = *(v63 + 16);
  if (v26)
  {
    v27 = v63 + 32;
    v28 = (v64 + 56);
    v29 = (v64 + 48);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v27, v70);
      sub_222B405A0(v70, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v31 = swift_dynamicCast();
      (*v28)(v6, v31 ^ 1u, 1, v7);
      if ((*v29)(v6, 1, v7) == 1)
      {
        sub_222B4FCD4(v6, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222C58524(v6, v68, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_222B49F90(0, v30[2] + 1, 1, v30);
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = sub_222B49F90(v32 > 1, v33 + 1, 1, v30);
        }

        v30[2] = v33 + 1;
        sub_222C58524(v68, v30 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v33, type metadata accessor for EntityPromptClassification);
      }

      v27 += 40;
      --v26;
    }

    while (v26);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  if (qword_280FDFE78 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v34 = sub_222C9431C();
    __swift_project_value_buffer(v34, qword_280FE2340);

    v35 = sub_222C942FC();
    v36 = sub_222C94A3C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v70[0] = v38;
      *v37 = 136315394;
      if (qword_280FDC478 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v70);
      *(v37 + 12) = 2048;
      *(v37 + 14) = *(v67 + 16);

      _os_log_impl(&dword_222B39000, v35, v36, "%s Found %ld turns with PICS suggestions reported.", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x223DCA8C0](v38, -1, -1);
      MEMORY[0x223DCA8C0](v37, -1, -1);
    }

    else
    {
    }

    v39 = sub_222C942FC();
    v40 = sub_222C94A3C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v70[0] = v42;
      *v41 = 136315394;
      if (qword_280FDC478 != -1)
      {
        swift_once();
      }

      *(v41 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v70);
      *(v41 + 12) = 2048;
      *(v41 + 14) = v30[2];

      _os_log_impl(&dword_222B39000, v39, v40, "%s Found %ld entity prompts in the session.", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);
    }

    else
    {
    }

    v43 = *(v67 + 16);
    if (!v43)
    {
      break;
    }

    v44 = v67 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v45 = *(v62 + 72);
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      v47 = v66;
      sub_222C5845C(v44, v66, type metadata accessor for FeaturisedTurn);
      v48 = sub_222C56CD4(v47, v30);
      sub_222C584C4(v47, type metadata accessor for FeaturisedTurn);
      v49 = *(v48 + 16);
      v50 = v46[2];
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        break;
      }

      v52 = swift_isUniquelyReferenced_nonNull_native();
      if (v52 && v51 <= v46[3] >> 1)
      {
        if (*(v48 + 16))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v50 <= v51)
        {
          v53 = v50 + v49;
        }

        else
        {
          v53 = v50;
        }

        v46 = sub_222B4B674(v52, v53, 1, v46);
        if (*(v48 + 16))
        {
LABEL_47:
          v54 = (v46[3] >> 1) - v46[2];
          v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0) - 8);
          if (v54 < v49)
          {
            goto LABEL_56;
          }

          v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
          v57 = *(v55 + 72);
          swift_arrayInitWithCopy();

          if (v49)
          {
            v58 = v46[2];
            v59 = __OFADD__(v58, v49);
            v60 = v58 + v49;
            if (v59)
            {
              goto LABEL_57;
            }

            v46[2] = v60;
          }

          goto LABEL_37;
        }
      }

      if (v49)
      {
        goto LABEL_55;
      }

LABEL_37:
      v44 += v45;
      if (!--v43)
      {

        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v46 = MEMORY[0x277D84F90];
LABEL_53:

  return v46;
}

uint64_t sub_222C56CD4(uint64_t a1, uint64_t a2)
{
  v124 = a2;
  v120 = *v2;
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v121 = *(v4 - 8);
  v5 = *(v121 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v128 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeaturisedTurn(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v126 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v116 - v12;
  v14 = type metadata accessor for EntityPromptClassification();
  v123 = *(v14 - 8);
  v15 = *(v123 + 64);
  MEMORY[0x28223BE20](v14);
  v119 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v116 - v19;
  v21 = sub_222C9367C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v116 - v27;
  FeaturisedTurn.getPlusId()(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_222B4FCD4(v20, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v29 = sub_222C9431C();
    __swift_project_value_buffer(v29, qword_280FE2340);
    v30 = sub_222C942FC();
    v31 = sub_222C94A4C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v129[0] = v33;
      *v32 = 136315138;
      if (qword_280FDC478 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v129);
      _os_log_impl(&dword_222B39000, v30, v31, "%s Missing PLUS Id for turn with PICS suggestions. SELF logs cannot be emitted for these suggestions.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x223DCA8C0](v33, -1, -1);
      MEMORY[0x223DCA8C0](v32, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v35 = *(v22 + 32);
  v122 = v21;
  v35(v28, v20, v21);
  v36 = *(a1 + *(v7 + 24));
  v37 = sub_222B42A30(v36);
  v125 = v22;
  v38 = a1;
  if (v37 != 2 && (v37 & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v49 = sub_222C9431C();
    __swift_project_value_buffer(v49, qword_280FE2340);
    v50 = sub_222C942FC();
    v51 = sub_222C94A3C();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v122;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v129[0] = v55;
      *v54 = 136315138;
      if (qword_280FDC478 != -1)
      {
        swift_once();
      }

      *(v54 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v129);
      _os_log_impl(&dword_222B39000, v50, v51, "%s Runtime suggestions is not enabled for the turn, no outcomes will be extracted", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x223DCA8C0](v55, -1, -1);
      MEMORY[0x223DCA8C0](v54, -1, -1);
    }

    (*(v125 + 8))(v28, v53);
    return MEMORY[0x277D84F90];
  }

  v39 = sub_222B42478(v36);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v42 = sub_222B41648(v36);
  v118 = v28;
  if (v42)
  {
    v43 = v42;
    v129[0] = 0xD000000000000023;
    v129[1] = 0x8000000222CA85F0;
    MEMORY[0x28223BE20](v42);
    *(&v116 - 2) = v129;
    v44 = sub_222B42F4C(sub_222B5EBA4, (&v116 - 4), v43);

    if (v44)
    {
      v46 = v40;
      MEMORY[0x28223BE20](v45);
      *(&v116 - 2) = v38;
      sub_222B4128C(sub_222C583E4, v124, v13);
      v47 = (*(v123 + 48))(v13, 1, v14);
      v124 = 0;
      if (v47 == 1)
      {
        sub_222B4FCD4(v13, &qword_27D025028, &unk_222C96EC0);
        v48 = sub_222C55930(v41);
      }

      else
      {
        v74 = v13;
        v75 = v119;
        v76 = sub_222C58524(v74, v119, type metadata accessor for EntityPromptClassification);
        MEMORY[0x28223BE20](v76);
        *(&v116 - 4) = v127;
        *(&v116 - 3) = v75;
        *(&v116 - 2) = v120;
        v77 = sub_222C55FF8(sub_222C58404, (&v116 - 6), v41);
        v80 = v38;
        v81 = sub_222C55234(v78, v75, sub_222C5858C, v79, type metadata accessor for PhoneCallSuggestionOutcomeExtractor);

        v82 = sub_222C55930(v77);

        v129[0] = v81;
        v38 = v80;
        sub_222B49C20(v82);
        v48 = v129[0];
        sub_222C584C4(v75, type metadata accessor for EntityPromptClassification);
      }

      v83 = v122;
      v84 = *(v41 + 16);
      if (v84)
      {
        v123 = v38;
        v129[0] = v46;
        sub_222B4C418(0, v84, 0);
        v85 = v129[0];
        v86 = *(v121 + 80);
        v117 = v41;
        v87 = v41 + ((v86 + 32) & ~v86);
        v88 = *(v121 + 72);
        do
        {
          v89 = v128;
          sub_222C5845C(v87, v128, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          v90 = sub_222C9360C();
          v92 = v91;
          sub_222C584C4(v89, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          v129[0] = v85;
          v94 = *(v85 + 16);
          v93 = *(v85 + 24);
          if (v94 >= v93 >> 1)
          {
            sub_222B4C418((v93 > 1), v94 + 1, 1);
            v85 = v129[0];
          }

          *(v85 + 16) = v94 + 1;
          v95 = v85 + 16 * v94;
          *(v95 + 32) = v90;
          *(v95 + 40) = v92;
          v87 += v88;
          --v84;
        }

        while (v84);

        v83 = v122;
        v38 = v123;
      }

      else
      {

        v85 = MEMORY[0x277D84F90];
      }

      v96 = v126;
      v97 = v48;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v98 = sub_222C9431C();
      __swift_project_value_buffer(v98, qword_280FE2340);
      sub_222C5845C(v38, v96, type metadata accessor for FeaturisedTurn);

      v99 = sub_222C942FC();
      v100 = sub_222C94A3C();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = v83;
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v129[0] = v103;
        *v102 = 136315906;
        if (qword_280FDC478 != -1)
        {
          swift_once();
        }

        *(v102 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v129);
        *(v102 + 12) = 2048;
        if (v48 >> 62)
        {
          v104 = sub_222C94C6C();
        }

        else
        {
          v104 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v102 + 14) = v104;

        *(v102 + 22) = 2048;
        *(v102 + 24) = *(v85 + 16);

        *(v102 + 32) = 2080;
        sub_222B9E5D0();
        v105 = v126;
        v106 = sub_222C9517C();
        v108 = v107;
        sub_222C584C4(v105, type metadata accessor for FeaturisedTurn);
        v109 = sub_222B437C0(v106, v108, v129);

        *(v102 + 34) = v109;
        _os_log_impl(&dword_222B39000, v99, v100, "%s Generated outcomes for %ld/%ld suggestions in Turn id=%s", v102, 0x2Au);
        swift_arrayDestroy();
        v110 = v103;
        v83 = v101;
        MEMORY[0x223DCA8C0](v110, -1, -1);
        MEMORY[0x223DCA8C0](v102, -1, -1);
      }

      else
      {

        sub_222C584C4(v96, type metadata accessor for FeaturisedTurn);
      }

      sub_222C54A58(v97, v85, v111, type metadata accessor for PhoneCallSuggestionOutcomeExtractor);

      MEMORY[0x28223BE20](v112);
      v113 = v118;
      *(&v116 - 2) = v118;
      sub_222C63194(sub_222C092B8, &v116 - 4, v97);
      v115 = v114;

      (*(v125 + 8))(v113, v83);
      return v115;
    }

    v28 = v118;
  }

  v56 = v122;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v57 = sub_222C9431C();
  __swift_project_value_buffer(v57, qword_280FE2340);
  v58 = v125;
  (*(v125 + 16))(v26, v28, v56);
  v59 = sub_222C942FC();
  v60 = sub_222C94A3C();
  v61 = os_log_type_enabled(v59, v60);
  v117 = v41;
  if (v61)
  {
    v128 = 0;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v129[0] = v63;
    *v62 = 136315394;
    if (qword_280FDC478 != -1)
    {
      swift_once();
    }

    *(v62 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v129);
    *(v62 + 12) = 2080;
    sub_222B9E5D0();
    v64 = sub_222C9517C();
    v66 = v65;
    v67 = *(v125 + 8);
    v67(v26, v56);
    v68 = sub_222B437C0(v64, v66, v129);

    *(v62 + 14) = v68;
    _os_log_impl(&dword_222B39000, v59, v60, "%s Turn with PLUS ID %s does not have a phone call task type. Marking all suggestion outcomes as unknown.", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v63, -1, -1);
    MEMORY[0x223DCA8C0](v62, -1, -1);
  }

  else
  {

    v67 = *(v58 + 8);
    v67(v26, v56);
  }

  v69 = sub_222BC94A8(v117, 0);

  MEMORY[0x28223BE20](v70);
  v71 = v118;
  *(&v116 - 2) = v118;
  sub_222C63194(sub_222C0A208, &v116 - 4, v69);
  v73 = v72;

  v67(v71, v56);
  return v73;
}

uint64_t sub_222C57BEC(void *a1)
{
  v2 = *a1 == 0xD000000000000023 && 0x8000000222CA85F0 == a1[1];
  if (!v2 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v3 = a1[2] == 0x73746361746E6F63 && a1[3] == 0xE800000000000000;
  if (!v3 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for EntityPromptClassification() + 44);
  return sub_222C9362C() & 1;
}

uint64_t sub_222C57CB8(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v46 = a2;
  v4 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - v10;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = type metadata accessor for PlusContactSuggestion();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v5 + 28);
  v47 = a1;
  sub_222B5551C(a1 + v26, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_222B4FCD4(v20, &qword_27D025A88, &unk_222C9A0C0);
    goto LABEL_5;
  }

  (*(v13 + 32))(v16, v11, v12);
  v27 = v46[5];
  v28 = v46[6];
  __swift_project_boxed_opaque_existential_1(v46 + 2, v27);
  (*(v28 + 64))(v16, v27, v28);
  (*(v13 + 8))(v16, v12);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v40 = sub_222C58524(v20, v25, type metadata accessor for PlusContactSuggestion);
  v41 = *(v45 + 32);
  v42 = &v25[*(v21 + 24)];
  v43 = v42[1];
  v49[0] = *v42;
  v49[1] = v43;
  MEMORY[0x28223BE20](v40);
  *(&v44 - 2) = v49;

  LOBYTE(v41) = sub_222B42F4C(sub_222B5EEB0, (&v44 - 4), v41);
  sub_222C584C4(v25, type metadata accessor for PlusContactSuggestion);

  if (v41)
  {
    return 1;
  }

LABEL_5:
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v29 = sub_222C9431C();
  __swift_project_value_buffer(v29, qword_280FE2340);
  v30 = v48;
  sub_222C5845C(v47, v48, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  v31 = sub_222C942FC();
  v32 = sub_222C94A4C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v33 = 136315394;
    if (qword_280FDC478 != -1)
    {
      swift_once();
    }

    *(v33 + 4) = sub_222B437C0(qword_280FDC480, unk_280FDC488, v49);
    *(v33 + 12) = 2080;
    v35 = sub_222C9360C();
    v37 = v36;
    sub_222C584C4(v30, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v38 = sub_222B437C0(v35, v37, v49);

    *(v33 + 14) = v38;
    _os_log_impl(&dword_222B39000, v31, v32, "%s Suggestion was not in the prompt entities. Falling back to non-prompt resolution. suggestionId=%s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v34, -1, -1);
    MEMORY[0x223DCA8C0](v33, -1, -1);
  }

  else
  {

    sub_222C584C4(v30, type metadata accessor for PlusContactSuggestionRuntimeSummary);
  }

  return 0;
}

uint64_t PhoneCallSuggestionOutcomeExtractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222C582FC@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PhoneCallSuggestionOutcomeExtractor();
  v4 = swift_allocObject();
  result = sub_222B405A0(a1, v4 + 16);
  *a2 = v4;
  return result;
}

void *sub_222C58428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_222C55418(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222C5845C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C584C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C58524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_222C585B4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v3);
  v5 = sub_222C9534C();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

unint64_t sub_222C5868C()
{
  v1 = v0;
  v2 = sub_222C5884C();
  v3 = sub_222B62CD4(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for MediaGroundTruth();
  v5 = (v1 + v4[8]);
  v6 = v5[2];
  v35[1] = v5[1];
  v35[2] = v6;
  v36 = *(v5 + 24);
  v35[0] = *v5;
  v7 = v4[5];
  v8 = *(v1 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v31 = v3;
  sub_222BAA434(v2 | (v8 << 8), v35, isUniquelyReferenced_nonNull_native);
  v10 = *(v1 + v4[7]);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 48);
    v31 = *(v10 + 32);
    v32 = v11;
    v33 = *(v10 + 64);
    v12 = v5[1];
    v27[0] = *v5;
    v27[1] = v12;
    v14 = *v5;
    v13 = v5[1];
    v27[2] = v5[2];
    v34 = *(v10 + 80);
    v28 = *(v5 + 24);
    v23 = v14;
    v15 = v5[2];
    v24 = v13;
    v25 = v15;
    v26 = *(v5 + 24);
    v21[0] = v31;
    v21[1] = v32;
    v21[2] = v33;
    v22 = v34;
    sub_222B554C0(&v31, v20);
    sub_222B554C0(v27, v20);
    v16 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v23, v21);
    v29[0] = v23;
    v29[1] = v24;
    v29[2] = v25;
    v30 = v26;
    sub_222B55A80(v29);
    if (v16)
    {
      sub_222B55A80(&v31);
    }

    else
    {
      v17 = *(v1 + v7);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *&v23 = v3;
      sub_222BAA434((v17 << 8) | 5, &v31, v18);
      sub_222B55A80(&v31);
      return v23;
    }
  }

  return v3;
}

uint64_t sub_222C5884C()
{
  v1 = sub_222BAF88C(&unk_2836073F8);
  v2 = type metadata accessor for MediaGroundTruth();
  v3 = sub_222C585B4(*(v0 + v2[5]), v1);

  if (v3)
  {
    return 4;
  }

  v4 = *(v0 + v2[7]);
  if (v4[2] && ((v5 = (v0 + v2[8]), *v5 == v4[4]) ? (v6 = v5[1] == v4[5]) : (v6 = 0), v6 || (sub_222C951FC() & 1) != 0))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_222C588F0()
{
  v1 = type metadata accessor for MediaGroundTruth();
  v2 = (v0 + *(v1 + 32));
  v3 = *(v0 + *(v1 + 28));
  if (v3[2] && (*v2 == v3[4] ? (v4 = *(v2 + 1) == v3[5]) : (v4 = 0), v4 || (sub_222C951FC() & 1) != 0))
  {
    v5 = MEMORY[0x277D84F90];

    return sub_222B62B74(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027988, &qword_222CA56C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    v16 = *(v2 + 24);
    v8 = v16;
    v9 = v2[2];
    v14 = v2[1];
    v15 = v9;
    v13 = *v2;
    v10 = v13;
    *(inited + 48) = v14;
    *(inited + 64) = v9;
    *(inited + 80) = v8;
    *(inited + 32) = v10;
    sub_222B554C0(&v13, v12);
    *(inited + 88) = sub_222BAF404(&unk_2836073D0);
    v11 = sub_222B62B74(inited);
    swift_setDeallocating();
    sub_222C58B10(inited + 32);
    return v11;
  }
}

uint64_t sub_222C58A24(uint64_t a1)
{
  result = sub_222C58AC4(&qword_27D027980, type metadata accessor for MediaGroundTruth);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222C58AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222C58B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025440, &qword_222C98660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContactSuggestionOutcomeReportedOfflineEmitter.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = MEMORY[0x277D84F98];
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t ContactSuggestionOutcomeReportedOfflineEmitter.init(logTarget:)(__int128 *a1)
{
  *(v1 + 24) = MEMORY[0x277D84F98];
  type metadata accessor for SELFEventLogEmitters();
  v3 = swift_allocObject();
  sub_222B505F4(a1, v3 + 16);
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_222C58C4C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0);
  v77 = *(v6 - 8);
  v7 = *(v77 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v71 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v71 - v14;
  v89 = sub_222C9367C();
  v16 = *(v89 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v89);
  v78 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = v71 - v20;
  v21 = a3[3];
  v22 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v21);
  v23 = (*(v22 + 16))(a1, a2, v21, v22);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);

    v25 = sub_222C942FC();
    v26 = sub_222C94A3C();
    v27 = os_log_type_enabled(v25, v26);
    v74 = v15;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *(v23 + 16);

      _os_log_impl(&dword_222B39000, v25, v26, "[ContactSuggestionOutcomeReportedOfflineEmitter] Identified %ld outcomes from PLUS contact suggestions made at runtime.", v28, 0xCu);
      MEMORY[0x223DCA8C0](v28, -1, -1);
    }

    else
    {
    }

    v29 = v89;
    v30 = v78;
    v15 = sub_222C5AA78(v23);
    v71[0] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025460, &qword_222C98680);
    v31 = sub_222C94F6C();
    v32 = v31;
    v33 = 0;
    v34 = *(v15 + 64);
    v73 = v15 + 64;
    v83 = v15;
    v35 = 1 << *(v15 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v34;
    v72 = (v35 + 63) >> 6;
    v79 = v31 + 64;
    v80 = v16 + 2;
    v76 = v16;
    v75 = v31;
    v91 = v16 + 4;
    if (!v37)
    {
      break;
    }

    while (1)
    {
      v38 = v30;
      v84 = (v37 - 1) & v37;
      v85 = v33;
      v39 = __clz(__rbit64(v37)) | (v33 << 6);
LABEL_14:
      v43 = v83;
      v44 = *(v83 + 48);
      v45 = v16[2];
      v86 = v16[9] * v39;
      v46 = v81;
      v45(v81, v44 + v86, v29);
      v47 = *(v43 + 56);
      v87 = v39;
      v48 = *(v47 + 8 * v39);
      v30 = v38;
      v49 = v48;
      v88 = v16[4];
      v88(v30, v46, v29);
      v50 = *(v49 + 16);
      if (v50)
      {
        v93 = MEMORY[0x277D84F90];

        sub_222C94E1C();
        v51 = *(v77 + 80);
        v82 = v49;
        v52 = v49 + ((v51 + 32) & ~v51);
        v53 = v74;
        v90 = *(v77 + 72);
        v54 = v88;
        do
        {
          sub_222C5AF18(v52, v53);
          sub_222C5AF18(v53, v13);
          v55 = *(v6 + 48);
          v56 = v6;
          v57 = *&v13[v55];
          v54(v10, v13, v29);
          *&v10[v55] = v57;
          v58 = v57;
          sub_222B4FCD4(v10, &qword_27D024DE8, &qword_222CA55A0);
          sub_222B4FCD4(v53, &qword_27D024DE8, &qword_222CA55A0);
          sub_222C94DEC();
          v59 = v13;
          v60 = v10;
          v61 = *(v93 + 16);
          sub_222C94E2C();
          v10 = v60;
          v13 = v59;
          v29 = v89;
          v6 = v56;
          sub_222C94E3C();
          sub_222C94DFC();
          v52 += v90;
          --v50;
        }

        while (v50);

        v23 = v93;
        v16 = v76;
        v30 = v78;
        v32 = v75;
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      v15 = v87;
      *(v79 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
      v88((v32[6] + v86), v30, v29);
      *(v32[7] + 8 * v15) = v23;
      v62 = v32[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        break;
      }

      v32[2] = v64;
      v37 = v84;
      v33 = v85;
      if (!v84)
      {
        goto LABEL_9;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_9:
  v40 = v33;
  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v41 >= v72)
    {
      break;
    }

    v42 = *(v73 + 8 * v41);
    ++v40;
    if (v42)
    {
      v38 = v30;
      v84 = (v42 - 1) & v42;
      v85 = v41;
      v39 = __clz(__rbit64(v42)) | (v41 << 6);
      goto LABEL_14;
    }
  }

  v65 = v71[1];
  swift_beginAccess();
  v66 = *(v65 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(v65 + 24);
  *(v65 + 24) = 0x8000000000000000;
  v68 = v71[0];
  sub_222C5AF88(v32, sub_222C5A1FC, 0, isUniquelyReferenced_nonNull_native, &v92);

  if (v68)
  {

    v70 = *(v65 + 24);
    *(v65 + 24) = v92;

    __break(1u);
  }

  else
  {
    *(v65 + 24) = v92;
    return swift_endAccess();
  }

  return result;
}

void sub_222C59328()
{
  v1 = sub_222C9367C();
  v107 = *(v1 - 8);
  v2 = *(v107 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v121 = &v100 - v7;
  MEMORY[0x28223BE20](v6);
  v106 = &v100 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027990, &qword_222CA56D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = &v100 - v14;
  swift_beginAccess();
  v104 = v0;
  if (*(*(v0 + 24) + 16))
  {
    v109 = v5;
    if (qword_280FDFE78 != -1)
    {
LABEL_112:
      swift_once();
    }

    v15 = sub_222C9431C();
    v108 = __swift_project_value_buffer(v15, qword_280FE2340);
    v16 = sub_222C942FC();
    v17 = sub_222C94A3C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222B39000, v16, v17, "[ContactSuggestionOutcomeReportedOfflineEmitter] Emitting ContactSuggestionOutcomeReported messages to SELF", v18, 2u);
      MEMORY[0x223DCA8C0](v18, -1, -1);
    }

    v19 = *(v104 + 24);
    v20 = *(v19 + 64);
    v110 = v19 + 64;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    v101 = (v21 + 63) >> 6;
    v114 = (v107 + 16);
    v115 = (v107 + 32);
    v119 = (v107 + 8);
    v105 = v19;

    v24 = 0;
    *&v25 = 136315394;
    v102 = v25;
    v112 = v1;
    v113 = v13;
    while (1)
    {
      if (!v23)
      {
        if (v101 <= v24 + 1)
        {
          v27 = v24 + 1;
        }

        else
        {
          v27 = v101;
        }

        v28 = v27 - 1;
        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v26 >= v101)
          {
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8);
            (*(*(v47 - 8) + 56))(v13, 1, 1, v47);
            v117 = 0;
            v118 = v28;
            goto LABEL_20;
          }

          v23 = *(v110 + 8 * v26);
          ++v24;
          if (v23)
          {
            v118 = v26;
            goto LABEL_19;
          }
        }

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
        goto LABEL_112;
      }

      v118 = v24;
      v26 = v24;
LABEL_19:
      v117 = (v23 - 1) & v23;
      v29 = __clz(__rbit64(v23)) | (v26 << 6);
      v30 = v105;
      v32 = v106;
      v31 = v107;
      (*(v107 + 16))(v106, *(v105 + 48) + *(v107 + 72) * v29, v1);
      v33 = *(*(v30 + 56) + 8 * v29);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8);
      v35 = *(v34 + 48);
      v36 = *(v31 + 32);
      v13 = v113;
      v36(v113, v32, v1);
      *(v13 + v35) = v33;
      (*(*(v34 - 8) + 56))(v13, 0, 1, v34);

LABEL_20:
      v37 = v111;
      sub_222B723A4(v13, v111, &qword_27D027990, &qword_222CA56D0);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8);
      if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
      {

        v98 = sub_222B63E7C(MEMORY[0x277D84F90]);
        v99 = *(v104 + 24);
        *(v104 + 24) = v98;

        return;
      }

      v39 = *(v37 + *(v38 + 48));
      (*v115)(v121, v37, v1);
      v123 = MEMORY[0x277D84F90];
      v40 = v39 >> 62;
      if (v39 >> 62)
      {
        v13 = sub_222C94C6C();
        if (v13)
        {
LABEL_23:
          v41 = 0;
          v1 = v39 & 0xC000000000000001;
          do
          {
            if (v1)
            {
              v43 = MEMORY[0x223DC9B30](v41, v39);
            }

            else
            {
              if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_105;
              }

              v43 = *(v39 + 8 * v41 + 32);
            }

            v44 = v43;
            v45 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              __break(1u);
LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

            if ([v43 contactSuggestionOutcome])
            {
              sub_222C94DEC();
              v42 = *(v123 + 16);
              sub_222C94E2C();
              sub_222C94E3C();
              sub_222C94DFC();
            }

            else
            {
            }

            ++v41;
          }

          while (v45 != v13);
          v46 = v123;
          v1 = v112;
          if ((v123 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v13 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_23;
        }
      }

      v46 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_38:
        if ((v46 & 0x4000000000000000) == 0)
        {
          if (*(v46 + 16))
          {
            goto LABEL_40;
          }

          goto LABEL_42;
        }
      }

LABEL_41:
      if (sub_222C94C6C())
      {
LABEL_40:

        v13 = v109;
        v48 = &unk_2784BC000;
        goto LABEL_64;
      }

LABEL_42:

      if ((v13 & 0x8000000000000000) != 0)
      {
        v13 = 1;
        if (!v40)
        {
LABEL_44:
          v49 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_48;
        }
      }

      else
      {
        v13 = v13 != 0;
        if (!v40)
        {
          goto LABEL_44;
        }
      }

      if (sub_222C94C6C() < 0)
      {
        goto LABEL_108;
      }

      v49 = sub_222C94C6C();
LABEL_48:
      if (v49 < v13)
      {
        goto LABEL_109;
      }

      if ((v39 & 0xC000000000000001) != 0 && v13)
      {
        sub_222C5B2F4();

        sub_222C94D6C();
      }

      else
      {
      }

      if (v40)
      {
        v51 = sub_222C94F5C();
        v52 = v53;
        v50 = v54;
        v13 = v55;

        v48 = &unk_2784BC000;
        if ((v13 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v50 = 0;
        v51 = v39 & 0xFFFFFFFFFFFFFF8;
        v52 = (v39 & 0xFFFFFFFFFFFFFF8) + 32;
        v13 = (2 * v13) | 1;
        v48 = &unk_2784BC000;
        if ((v13 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      sub_222C9520C();
      swift_unknownObjectRetain_n();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
        swift_unknownObjectRelease();
        v57 = MEMORY[0x277D84F90];
      }

      v58 = *(v57 + 16);

      if (__OFSUB__(v13 >> 1, v50))
      {
        goto LABEL_111;
      }

      if (v58 != (v13 >> 1) - v50)
      {
        swift_unknownObjectRelease_n();
LABEL_57:
        sub_222C4F1AC(v51, v52, v50, v13);
        v46 = v56;
        swift_unknownObjectRelease();
        v13 = v109;
        goto LABEL_64;
      }

      v46 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v13 = v109;
      if (!v46)
      {
        swift_unknownObjectRelease();
        v46 = MEMORY[0x277D84F90];
      }

LABEL_64:
      (*v114)(v13, v121, v1);

      v59 = sub_222C942FC();
      v60 = sub_222C94A3C();

      v61 = v46 >> 62;
      if (!os_log_type_enabled(v59, v60))
      {

        v116 = *v119;
        v116(v13, v1);
        goto LABEL_83;
      }

      v62 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v123 = v120;
      *v62 = v102;
      sub_222B9E5D0();
      v63 = sub_222C9517C();
      v65 = v64;
      v116 = *v119;
      v116(v13, v1);
      v66 = sub_222B437C0(v63, v65, &v123);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      if (v61)
      {
        v67 = sub_222C94C6C();
        if (v67)
        {
LABEL_67:
          v122 = MEMORY[0x277D84F90];
          sub_222B4C51C(0, v67 & ~(v67 >> 63), 0);
          if (v67 < 0)
          {
            goto LABEL_110;
          }

          v103 = v46 >> 62;
          v68 = v122;
          if ((v46 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v67; ++i)
            {
              v70 = [MEMORY[0x223DC9B30](i v46)];
              swift_unknownObjectRelease();
              v122 = v68;
              v72 = *(v68 + 16);
              v71 = *(v68 + 24);
              if (v72 >= v71 >> 1)
              {
                sub_222B4C51C((v71 > 1), v72 + 1, 1);
                v68 = v122;
              }

              *(v68 + 16) = v72 + 1;
              *(v68 + 4 * v72 + 32) = v70;
            }
          }

          else
          {
            v73 = (v46 + 32);
            do
            {
              v74 = [*v73 contactSuggestionOutcome];
              v122 = v68;
              v76 = *(v68 + 16);
              v75 = *(v68 + 24);
              if (v76 >= v75 >> 1)
              {
                v77 = v74;
                sub_222B4C51C((v75 > 1), v76 + 1, 1);
                v74 = v77;
                v68 = v122;
              }

              *(v68 + 16) = v76 + 1;
              *(v68 + 4 * v76 + 32) = v74;
              ++v73;
              --v67;
            }

            while (v67);
          }

          v61 = v103;
          goto LABEL_82;
        }
      }

      else
      {
        v67 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_67;
        }
      }

      v68 = MEMORY[0x277D84F90];
LABEL_82:
      v78 = MEMORY[0x223DC94D0](v68, MEMORY[0x277D849A8]);
      v13 = v79;

      v80 = sub_222B437C0(v78, v13, &v123);

      *(v62 + 14) = v80;
      _os_log_impl(&dword_222B39000, v59, v60, "[ContactSuggestionOutcomeReportedOfflineEmitter] Outcomes to be reported for plusId %s: %s", v62, 0x16u);
      v81 = v120;
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v81, -1, -1);
      MEMORY[0x223DCA8C0](v62, -1, -1);

      v48 = &unk_2784BC000;
LABEL_83:
      v82 = 0x277D59000uLL;
      if (v61)
      {
        v1 = sub_222C94C6C();
        if (!v1)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v1 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v1)
        {
          goto LABEL_8;
        }
      }

      if (v1 < 1)
      {
        goto LABEL_107;
      }

      v83 = 0;
      v120 = *(v104 + 16);
      do
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v84 = MEMORY[0x223DC9B30](v83, v46);
        }

        else
        {
          v84 = *(v46 + 8 * v83 + 32);
        }

        v85 = v84;
        v86 = [objc_allocWithZone(*(v82 + 3152)) v48[386]];
        if (v86)
        {
          v87 = v86;
          v88 = [objc_allocWithZone(MEMORY[0x277D59C58]) v48[386]];
          if (v88)
          {
            v89 = v88;
            v90 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v91 = sub_222C9361C();
            v92 = [v90 initWithNSUUID_];

            [v89 setPlusId_];
            [v87 setEventMetadata_];

            [v87 setContactSuggestionOutcomeReported_];
            v93 = v120[6];
            __swift_project_boxed_opaque_existential_1(v120 + 2, v120[5]);
            sub_222C93F1C();
            v82 = 0x277D59000;
          }

          v48 = &unk_2784BC000;
        }

        ++v83;
      }

      while (v1 != v83);
LABEL_8:

      v1 = v112;
      v116(v121, v112);
      v13 = v113;
      v23 = v117;
      v24 = v118;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v94 = sub_222C9431C();
  __swift_project_value_buffer(v94, qword_280FE2340);
  v95 = sub_222C942FC();
  v96 = sub_222C94A3C();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_222B39000, v95, v96, "[ContactSuggestionOutcomeReportedOfflineEmitter] No ContactSuggestionOutcomeReported messages to emit to SELF", v97, 2u);
    MEMORY[0x223DCA8C0](v97, -1, -1);
  }
}

uint64_t ContactSuggestionOutcomeReportedOfflineEmitter.deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v2 = sub_222C9431C();
    __swift_project_value_buffer(v2, qword_280FE2340);
    v3 = sub_222C942FC();
    v4 = sub_222C94A4C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_222B39000, v3, v4, "[ContactSuggestionOutcomeReportedOfflineEmitter] Emitter is being destroyed while there are suggestion outcomes which have not been logged to SELF!", v5, 2u);
      MEMORY[0x223DCA8C0](v5, -1, -1);
    }
  }

  v6 = *(v1 + 16);

  v7 = *(v1 + 24);

  return v1;
}

uint64_t ContactSuggestionOutcomeReportedOfflineEmitter.__deallocating_deinit()
{
  ContactSuggestionOutcomeReportedOfflineEmitter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_222C5A1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025458, &qword_222C98678) + 48);
  v6 = *(a1 + v4);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

uint64_t sub_222C5A2B0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027928, &qword_222CA5348);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v46 = sub_222C9367C();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027920, &qword_222CA5340);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_222B723A4(v17, v36, &qword_27D027920, &qword_222CA5340);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_222B723A4(v40, v43, &qword_27D027928, &qword_222CA5348);
      v37(v41);
      sub_222B4FCD4(v41, &qword_27D027928, &qword_222CA5348);
      v39 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025468, &qword_222C98688);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
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
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222C5A694@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027998, &qword_222CA56D8);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v46 = sub_222C9367C();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027990, &qword_222CA56D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_222B723A4(v17, v36, &qword_27D027990, &qword_222CA56D0);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_222B723A4(v40, v43, &qword_27D027998, &qword_222CA56D8);
      v37(v41);
      sub_222B4FCD4(v41, &qword_27D027998, &qword_222CA56D8);
      v39 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025458, &qword_222C98678);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
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
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222C5AA78(uint64_t a1)
{
  v59 = sub_222C9367C();
  v2 = *(v59 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v59);
  v60 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0);
  v5 = *(*(v56 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v56);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v46 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v46 - v13;
  v14 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v49 = *(v12 + 80);
  v50 = v2;
  v16 = *(v12 + 72);
  v17 = a1 + ((v49 + 32) & ~v49);
  v57 = (v2 + 32);
  v51 = (v49 + 32) & ~v49;
  v52 = (v2 + 16);
  v48 = (v2 + 8);
  v47 = xmmword_222C97C40;
  while (1)
  {
    v18 = v58;
    sub_222C5AF18(v17, v58);
    v19 = v55;
    sub_222C5AF18(v18, v55);
    v20 = *(v56 + 48);
    v21 = *(v19 + v20);
    v22 = *v57;
    v23 = v54;
    v24 = v19;
    v25 = v59;
    (*v57)(v54, v24, v59);
    *(v23 + v20) = v21;
    v26 = v60;
    (*v52)(v60, v23, v25);
    sub_222B4FCD4(v23, &qword_27D024DE8, &qword_222CA55A0);
    v28 = sub_222B8CA54(v26);
    v29 = v14[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v14[3] < v31)
    {
      sub_222B91B48(v31, 1);
      v14 = v61;
      v33 = sub_222B8CA54(v60);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_19;
      }

      v28 = v33;
    }

    if (v32)
    {
      (*v48)(v60, v59);
      v35 = v14[7];
      sub_222B723A4(v58, v53, &qword_27D024DE8, &qword_222CA55A0);
      v36 = *(v35 + 8 * v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 8 * v28) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_222B4B674(0, v36[2] + 1, 1, v36);
        *(v35 + 8 * v28) = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_222B4B674(v38 > 1, v39 + 1, 1, v36);
        *(v35 + 8 * v28) = v36;
      }

      v36[2] = v39 + 1;
      sub_222B723A4(v53, v36 + v51 + v39 * v16, &qword_27D024DE8, &qword_222CA55A0);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE0, &unk_222C96BB0);
      v40 = v51;
      v41 = swift_allocObject();
      *(v41 + 16) = v47;
      sub_222B723A4(v58, v41 + v40, &qword_27D024DE8, &qword_222CA55A0);
      v14[(v28 >> 6) + 8] |= 1 << v28;
      v22((v14[6] + *(v50 + 72) * v28), v60, v59);
      *(v14[7] + 8 * v28) = v41;
      v42 = v14[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_18;
      }

      v14[2] = v44;
    }

    v17 += v16;
    if (!--v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t sub_222C5AF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C5AF88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = sub_222C9367C();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v51);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0279A0, &unk_222CA5750);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v47 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v52 = a1;
  v53 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v54 = v19;
  v55 = 0;
  v56 = v22 & v20;
  v57 = a2;
  v58 = a3;
  v49 = v10;
  v50 = (v10 + 32);
  v48 = (v10 + 8);

  v47[1] = a3;

  while (1)
  {
    sub_222C5A694(v17);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025458, &qword_222C98678);
    if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
    {
      sub_222B504E8();
    }

    v27 = a4;
    v28 = *(v26 + 48);
    v29 = *v50;
    (*v50)(v13, v17, v51);
    v30 = *&v17[v28];
    v31 = *a5;
    v33 = sub_222B8CA54(v13);
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
      if ((v27 & 1) == 0)
      {
        sub_222B94ACC();
      }
    }

    else
    {
      sub_222B91B34(v36, v27 & 1);
      v38 = *a5;
      v39 = sub_222B8CA54(v13);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_20;
      }

      v33 = v39;
    }

    v41 = a5;
    v42 = *a5;
    if (v37)
    {
      v59 = *(v42[7] + 8 * v33);

      sub_222B49C20(v30);
      v23 = v59;
      (*v48)(v13, v51);
      v24 = v42[7];
      v25 = *(v24 + 8 * v33);
      *(v24 + 8 * v33) = v23;
    }

    else
    {
      v42[(v33 >> 6) + 8] |= 1 << v33;
      v29((v42[6] + *(v49 + 72) * v33), v13, v51);
      *(v42[7] + 8 * v33) = v30;
      v43 = v42[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_19;
      }

      v42[2] = v45;
    }

    a4 = 1;
    a5 = v41;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

unint64_t sub_222C5B2F4()
{
  result = qword_27D024DC0;
  if (!qword_27D024DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D024DC0);
  }

  return result;
}

uint64_t sub_222C5B3F0(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0279A8, &qword_222CA5760);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v55 - v5;
  v59 = type metadata accessor for ContactPromptGroundTruth();
  v55 = *(v59 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for EntityPromptClassification();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v55 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v55 - v20);
  result = MEMORY[0x28223BE20](v19);
  v61 = &v55 - v24;
  v62 = v6;
  v25 = *(a2 + 16);
  v63 = v23;
  if (v25)
  {
    v26 = a2 + 32;
    v27 = (v23 + 56);
    v28 = (v23 + 48);
    v29 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v26, v65);
      sub_222B405A0(v65, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v30 = swift_dynamicCast();
      (*v27)(v12, v30 ^ 1u, 1, v13);
      if ((*v28)(v12, 1, v13) == 1)
      {
        result = sub_222B4FCD4(v12, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222C5C688(v12, v61, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_222B49F90(0, v29[2] + 1, 1, v29);
        }

        v32 = v29[2];
        v31 = v29[3];
        if (v32 >= v31 >> 1)
        {
          v29 = sub_222B49F90(v31 > 1, v32 + 1, 1, v29);
        }

        v29[2] = v32 + 1;
        result = sub_222C5C688(v61, v29 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v32, type metadata accessor for EntityPromptClassification);
        v6 = v62;
      }

      v26 += 40;
      --v25;
    }

    while (v25);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v61 = v29[2];
  if (v61)
  {
    v33 = 0;
    v34 = MEMORY[0x277D84F90];
    while (v33 < v29[2])
    {
      v35 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v36 = *(v63 + 72);
      v37 = sub_222C5C6F0(v29 + v35 + v36 * v33, v21, type metadata accessor for EntityPromptClassification);
      v38 = v21[2];
      v39 = v21[3];
      if (v38 != 0x73746361746E6F63 || v39 != 0xE800000000000000)
      {
        v41 = v21[2];
        v42 = v21[3];
        v37 = sub_222C951FC();
        if ((v37 & 1) == 0 && (v38 != 0x6E65697069636572 || v39 != 0xE900000000000074))
        {
          v37 = sub_222C951FC();
          if ((v37 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      v43 = v21[1];
      *&v65[0] = *v21;
      *(&v65[0] + 1) = v43;
      MEMORY[0x28223BE20](v37);
      *(&v55 - 2) = v65;
      if (sub_222B42F4C(sub_222B5EBA4, (&v55 - 4), &unk_283607100))
      {
        sub_222C5C688(v21, v56, type metadata accessor for EntityPromptClassification);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64[0] = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C330(0, *(v34 + 16) + 1, 1);
          v34 = v64[0];
        }

        v46 = *(v34 + 16);
        v45 = *(v34 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_222B4C330(v45 > 1, v46 + 1, 1);
          v34 = v64[0];
        }

        *(v34 + 16) = v46 + 1;
        result = sub_222C5C688(v56, v34 + v35 + v46 * v36, type metadata accessor for EntityPromptClassification);
        v6 = v62;
      }

      else
      {
LABEL_14:
        result = sub_222C5C758(v21, type metadata accessor for EntityPromptClassification);
      }

      if (v61 == ++v33)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
LABEL_32:

    v47 = *(v34 + 16);
    if (v47)
    {
      v48 = v34 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v49 = *(v63 + 72);
      v50 = (v55 + 48);
      v51 = MEMORY[0x277D84F90];
      do
      {
        v52 = v57;
        sub_222C5C6F0(v48, v57, type metadata accessor for EntityPromptClassification);
        sub_222C5BBD4(v60, v52, v6);
        sub_222C5C758(v52, type metadata accessor for EntityPromptClassification);
        if ((*v50)(v6, 1, v59) == 1)
        {
          sub_222B4FCD4(v6, &qword_27D0279A8, &qword_222CA5760);
        }

        else
        {
          sub_222C5C688(v6, v58, type metadata accessor for ContactPromptGroundTruth);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_222B4BCB4(0, v51[2] + 1, 1, v51);
          }

          v54 = v51[2];
          v53 = v51[3];
          if (v54 >= v53 >> 1)
          {
            v51 = sub_222B4BCB4(v53 > 1, v54 + 1, 1, v51);
          }

          v51[2] = v54 + 1;
          sub_222C5C688(v58, v51 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v54, type metadata accessor for ContactPromptGroundTruth);
          v6 = v62;
        }

        v48 += v49;
        --v47;
      }

      while (v47);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v51;
  }

  return result;
}

unint64_t sub_222C5BBD4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v72[-v7];
  v8 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v72[-v14];
  v16 = type metadata accessor for FeaturisedTurn(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_222C9367C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v84 = &v72[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v27 = &v72[-v26];
  v28 = type metadata accessor for EntityPromptClassification();
  (*(v22 + 16))(v27, &a2[*(v28 + 44)], v21);
  v92 = v27;
  sub_222B41144(sub_222B617A8, a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_222B4FCD4(v15, &qword_27D0253C8, &unk_222C98400);
    v29 = type metadata accessor for ContactPromptGroundTruth();
    (*(*(v29 - 8) + 56))(v89, 1, 1, v29);
    return (*(v22 + 8))(v27, v21);
  }

  sub_222C5C688(v15, v20, type metadata accessor for FeaturisedTurn);
  result = sub_222B41B30(*&v20[*(v16 + 24)]);
  v31 = v89;
  if (!result)
  {
LABEL_33:
    sub_222C5C758(v20, type metadata accessor for FeaturisedTurn);
    v71 = type metadata accessor for ContactPromptGroundTruth();
    (*(*(v71 - 8) + 56))(v31, 1, 1, v71);
    return (*(v22 + 8))(v27, v21);
  }

  v32 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

  v69 = result;
  v70 = sub_222C94C6C();
  result = v69;
  if (!v70)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v79 = MEMORY[0x223DC9B30](0);
    goto LABEL_9;
  }

  if (*(v32 + 16))
  {
    v79 = *(result + 32);

LABEL_9:
    v81 = v27;

    sub_222C9366C();
    v33 = *a2;
    v77 = *(a2 + 1);
    v78 = v33;
    v34 = *(a2 + 4);
    v35 = *(v34 + 16);
    v83 = v22;
    v80 = v20;
    v76 = v35;
    if (v35)
    {
      v36 = a2;
      v93[0] = MEMORY[0x277D84F90];

      sub_222B4CAD0(0, v35, 0);
      v37 = v93[0];
      v38 = (v34 + 40);
      v39 = v35;
      do
      {
        v41 = *(v38 - 1);
        v40 = *v38;
        v93[0] = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);

        if (v43 >= v42 >> 1)
        {
          sub_222B4CAD0((v42 > 1), v43 + 1, 1);
          v37 = v93[0];
        }

        *(v37 + 16) = v43 + 1;
        v44 = (v37 + 32 * v43);
        v44[4] = v41;
        v44[5] = v40;
        v44[6] = 0;
        v44[7] = 0;
        v38 += 2;
        --v39;
      }

      while (v39);
      a2 = v36;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v45 = *(a2 + 6);
    v46 = v91;
    if (v45)
    {
      v74 = *(a2 + 5);
    }

    else
    {
      v74 = 0;
    }

    v75 = v45;

    sub_222C5C3F0(a2, v93);
    v73 = LOBYTE(v93[0]);
    v82 = a2;
    v47 = *(a2 + 9);
    v48 = *(v47 + 16);
    if (v48)
    {
      v49 = *(v87 + 20);
      v50 = v47 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
      v51 = *(v88 + 72);
      v52 = (v83 + 48);
      v85 = (v83 + 8);
      v53 = MEMORY[0x277D84F90];
      v87 = v49;
      v88 = v21;
      v86 = v51;
      do
      {
        sub_222C5C6F0(v50, v46, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        if ((*v52)(v46 + v49, 1, v21) == 1)
        {
          sub_222C5C758(v46, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        }

        else
        {
          v54 = v90;
          sub_222B5551C(v46 + v49, v90);
          v55 = sub_222C9360C();
          v57 = v56;
          (*v85)(v54, v21);
          sub_222C5C758(v46, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_222B49E84(0, *(v53 + 2) + 1, 1, v53);
          }

          v59 = *(v53 + 2);
          v58 = *(v53 + 3);
          if (v59 >= v58 >> 1)
          {
            v53 = sub_222B49E84((v58 > 1), v59 + 1, 1, v53);
          }

          *(v53 + 2) = v59 + 1;
          v60 = &v53[16 * v59];
          *(v60 + 4) = v55;
          *(v60 + 5) = v57;
          v49 = v87;
          v21 = v88;
          v46 = v91;
          v51 = v86;
        }

        v50 += v51;
        --v48;
      }

      while (v48);
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
    }

    v61 = v76 == 1;
    sub_222C5C758(v80, type metadata accessor for FeaturisedTurn);
    v62 = v82[80];
    v63 = type metadata accessor for ContactPromptGroundTruth();
    v64 = v89;
    v65 = (v89 + v63[12]);
    v22 = v83;
    (*(v83 + 32))(v89, v84, v21);
    v66 = v77;
    *v65 = v78;
    v65[1] = v66;
    *(v64 + v63[5]) = v61;
    *(v64 + v63[6]) = v79;
    *(v64 + v63[7]) = v37;
    v67 = (v64 + v63[8]);
    v68 = v75;
    *v67 = v74;
    v67[1] = v68;
    v67[2] = 0;
    v67[3] = 0;
    *(v64 + v63[9]) = v73;
    *(v64 + v63[10]) = v53;
    *(v64 + v63[11]) = v62;
    (*(*(v63 - 1) + 56))(v64, 0, 1, v63);
    v27 = v81;
    return (*(v22 + 8))(v27, v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_222C5C3F0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_222C93C5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[6])
  {
    goto LABEL_2;
  }

  v12 = a1[7];
  v11 = a1[8];
  (*(v5 + 104))(v9, *MEMORY[0x277D5FB00], v4);

  v13 = sub_222C93C4C();
  v15 = v14;
  (*(v5 + 8))(v9, v4);
  if (!v11)
  {

LABEL_12:
    v10 = 1;
    goto LABEL_3;
  }

  if (v12 == v13 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_222C951FC();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_2:
  v10 = 0;
LABEL_3:
  *a2 = v10;
  return result;
}

unint64_t sub_222C5C5BC()
{
  result = qword_280FDE6C0;
  if (!qword_280FDE6C0)
  {
    type metadata accessor for ContactPromptGroundTruth();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDE6C0);
  }

  return result;
}

uint64_t sub_222C5C688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C5C6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C5C758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MediaInAppFollowupClassification()
{
  result = qword_27D0279B0;
  if (!qword_27D0279B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222C5C82C()
{
  sub_222C5C8D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MediaPlayClassification();
    if (v1 <= 0x3F)
    {
      sub_222C9367C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222C5C8D0()
{
  if (!qword_27D0279C0)
  {
    type metadata accessor for MediaPlayClassification();
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0279C0);
    }
  }
}

uint64_t sub_222C5C928()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v29[-v6];
  sub_222C5CCC4(v0, &v29[-v6]);
  v8 = type metadata accessor for MediaPlayClassification();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) == 1)
  {
    sub_222C5CD34(v7);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *(v7 + 2);
    v11 = *(v7 + 3);

    sub_222C5CD9C(v7);
  }

  v30 = v10;
  v31 = v11;
  sub_222C5CCC4(v0, v5);
  if (v9(v5, 1, v8) == 1)
  {
    sub_222C5CD34(v5);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *(v5 + 4);
    v13 = *(v5 + 5);

    sub_222C5CD9C(v5);
  }

  v32 = v12;
  v33 = v13;
  v14 = (v0 + *(type metadata accessor for MediaInAppFollowupClassification() + 20));
  v15 = v14[3];
  v34 = v14[2];
  v35 = v15;
  v16 = v14[5];
  v36 = v14[4];
  v37 = v16;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
LABEL_8:
  if (v18 <= 4)
  {
    v20 = 4;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (1)
  {
    if (v18 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D58, &qword_222C96B30);
      swift_arrayDestroy();
      return v19;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 16;
    v24 = *&v29[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v29[v23 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_222B49E84(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_222B49E84((v26 > 1), v27 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C5CBD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v3 = sub_222C9367C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C97C40;
  (*(v4 + 16))(v7 + v6, v1 + *(a1 + 28), v3);
  return v7;
}

uint64_t sub_222C5CCC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C5CD34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222C5CD9C(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayClassification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222C5CDF8()
{
  v0 = sub_222C932EC();
  v71 = *(v0 - 8);
  v72 = v0;
  v1 = *(v71 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v70 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v63 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v63 - v8;
  MEMORY[0x28223BE20](v7);
  v68 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0276E0, &unk_222CA5850);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - v13;
  v15 = sub_222C9334C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0276E8, &qword_222CA45C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v63 - v21;
  v23 = sub_222C934DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v28;
  sub_222C934CC();
  if ((*(v24 + 48))(v22, 1, v29) == 1)
  {
    sub_222B4FCD4(v22, &qword_27D0276E8, &qword_222CA45C0);
    return 0;
  }

  (*(v24 + 32))(v27, v22, v29);
  sub_222C9330C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    (*(v24 + 8))(v27, v29);
    sub_222B4FCD4(v14, &qword_27D0276E0, &unk_222CA5850);
    return 0;
  }

  v30 = v15;
  v31 = v69;
  (*(v16 + 32))(v69, v14, v30);
  v32 = sub_222C9333C();
  if (!v33)
  {
    goto LABEL_23;
  }

  if (v32 == 0x6D6574692D63706DLL && v33 == 0xE800000000000000)
  {
  }

  else
  {
    v34 = sub_222C951FC();

    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (sub_222C9332C() == 0x676E6F732FLL && v35 == 0xE500000000000000)
  {

    goto LABEL_14;
  }

  v36 = sub_222C951FC();

  if ((v36 & 1) == 0)
  {
LABEL_23:
    (*(v16 + 8))(v31, v30);
    (*(v24 + 8))(v27, v29);
    return 0;
  }

LABEL_14:
  result = sub_222C932FC();
  v64 = v6;
  v65 = v16;
  v66 = v27;
  if (result)
  {
    v38 = result;
    v63 = v29;
    v39 = v30;
    if (*(result + 16))
    {
      v40 = *(result + 16);
      v41 = 0;
      v42 = 0x61644165726F7473;
      v67 = v71 + 16;
      v43 = (v71 + 8);
      while (1)
      {
        if (v41 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }

        (*(v71 + 16))(v9, v38 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v41, v72);
        if (sub_222C932CC() == v42 && v44 == 0xEB0000000044496DLL)
        {
          break;
        }

        v45 = v42;
        v46 = sub_222C951FC();

        if (v46)
        {
          goto LABEL_27;
        }

        ++v41;
        result = (*v43)(v9, v72);
        v42 = v45;
        if (v40 == v41)
        {
          goto LABEL_22;
        }
      }

LABEL_27:

      v48 = v72;
      v49 = v71 + 32;
      v50 = v68;
      (*(v71 + 32))(v68, v9, v72);
      v47 = sub_222C932DC();
      v52 = v51;
      (*(v49 - 24))(v50, v48);
      if (!v52)
      {
        goto LABEL_29;
      }

      v73 = 0;
      v74 = 0xE000000000000000;

      sub_222C94D1C();

      v73 = 0xD000000000000016;
      v74 = 0x8000000222CACE30;
      MEMORY[0x223DC9330](v47, v52);
      swift_bridgeObjectRelease_n();
      v47 = v73;
      v68 = v74;
    }

    else
    {
LABEL_22:

      v47 = 0;
LABEL_29:
      v68 = 0;
    }

    v30 = v39;
    v16 = v65;
    v27 = v66;
    v31 = v69;
    v29 = v63;
  }

  else
  {
    v47 = 0;
    v68 = 0;
  }

  result = sub_222C932FC();
  if (!result)
  {
    goto LABEL_40;
  }

  v53 = result;
  v63 = v47;
  v67 = v30;
  if (!*(result + 16))
  {
LABEL_39:

    v27 = v66;
    v30 = v67;
    v16 = v65;
    v47 = v63;
LABEL_40:
    (*(v16 + 8))(v31, v30);
    (*(v24 + 8))(v27, v29);
    v58 = 0;
LABEL_43:
    if (v68 | v58)
    {
      return v47;
    }

    else
    {
      return 0;
    }
  }

  v54 = *(result + 16);
  v55 = 0;
  v69 = (v71 + 8);
  while (v55 < *(v53 + 16))
  {
    (*(v71 + 16))(v70, v53 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v55, v72);
    if (sub_222C932CC() == 0xD000000000000019 && 0x8000000222CAD590 == v56)
    {

LABEL_42:

      v59 = v71 + 32;
      v60 = v64;
      v61 = v72;
      (*(v71 + 32))(v64, v70, v72);
      sub_222C932DC();
      v58 = v62;
      (*(v65 + 8))(v31, v67);
      (*(v24 + 8))(v66, v29);
      (*(v59 - 24))(v60, v61);
      v47 = v63;
      goto LABEL_43;
    }

    v57 = sub_222C951FC();

    if (v57)
    {
      goto LABEL_42;
    }

    ++v55;
    result = (*v69)(v70, v72);
    if (v54 == v55)
    {
      goto LABEL_39;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t static SetUtils.haveSameDomainTags<A>(_:_:)()
{

  sub_222C9493C();

  sub_222C9493C();
  v0 = sub_222C9491C();

  return v0 & 1;
}

unint64_t static SELFGraphUtils.getPrimaryTask<A>(_:taskType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = MEMORY[0x223DC84A0]();
  if (result >> 62)
  {
    v7 = result;
    v8 = sub_222C94C6C();
    result = v7;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:

    v9 = *(*(a1 - 8) + 56);

    return v9(a2, 1, 1, a1);
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DC9B30](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(result + 32);
  }

  sub_222C937DC();

  if (v11)
  {
    sub_222BF54CC(&v10, v12);
    sub_222BF54CC(v12, &v10);
    v6 = swift_dynamicCast();
    return (*(*(a1 - 8) + 56))(a2, v6 ^ 1u, 1, a1);
  }

  else
  {
    sub_222BEB9B0(&v10);
    return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  }
}

unint64_t sub_222C5DA34()
{
  result = MEMORY[0x223DC84A0]();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    return 0;
  }

  v2 = result;
  v3 = sub_222C94C6C();
  result = v2;
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DC9B30](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v1 = *(result + 32);
  }

  sub_222C937DC();

  if (!v5)
  {
    sub_222B4FCD4(&v4, &qword_27D026A20, qword_222CA5960);
    return 0;
  }

  sub_222BF54CC(&v4, v6);
  sub_222BF54CC(v6, &v4);
  sub_222C9390C();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222C5DB74()
{
  type metadata accessor for MediaFeatureExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0279F0, &unk_222CA5A50);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D0279C8 = 91;
  unk_27D0279D0 = 0xE100000000000000;
  return result;
}

void *sub_222C5DC18(unint64_t a1)
{
  v34 = *v1;
  if (qword_280FDF1F0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v38 = &type metadata for PIMSProcessingState;
  v39 = sub_222BDEBC8();
  v36[0] = 0xD000000000000013;
  v36[1] = 0x8000000222CAB9A0;
  v37 = 4;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  v36[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v3 = sub_222C94C6C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DC9B30](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if ([v5 anyEventType] == 13)
      {
        sub_222C94DEC();
        v8 = *(v36[0] + 16);
        sub_222C94E2C();
        sub_222C94E3C();
        sub_222C94DFC();
      }

      else
      {
      }

      ++v4;
    }

    while (v7 != v3);
    v9 = v36[0];
    v36[0] = MEMORY[0x277D84F90];
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

  v9 = MEMORY[0x277D84F90];
  v36[0] = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
LABEL_56:
    v35 = sub_222C94C6C();
    goto LABEL_20;
  }

LABEL_18:
  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v35 = *(v9 + 16);
LABEL_20:
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v35 != v10)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x223DC9B30](v10, v9);
    }

    else
    {
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_49;
      }

      v20 = *(v9 + 8 * v10 + 32);
    }

    v21 = v20;
    a1 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v22 = [v20 payload];
    if (v22)
    {
      v12 = v22;
      v13 = sub_222C9350C();
      v14 = v11;
      v16 = v15;

      v17 = sub_222C934FC();
      v18 = v16;
      v11 = v14;
      sub_222B803C0(v13, v18);
    }

    else
    {
      v17 = 0;
    }

    v19 = [objc_allocWithZone(MEMORY[0x277D57500]) initWithData_];

    ++v10;
    if (v19)
    {
      MEMORY[0x223DC94A0]();
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      sub_222C947AC();
      v11 = v36[0];
      v10 = a1;
    }
  }

  v36[0] = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    v24 = sub_222C94C6C();
  }

  else
  {
    v24 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = 0;
  a1 = v11 & 0xC000000000000001;
  v26 = MEMORY[0x277D84F90];
  while (v24 != v25)
  {
    if (a1)
    {
      v27 = MEMORY[0x223DC9B30](v25, v11);
    }

    else
    {
      if (v25 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v27 = *(v11 + 8 * v25 + 32);
    }

    v28 = v27;
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_50;
    }

    v30 = [v27 mediaPlayerPlaybackContextTier1];

    ++v25;
    if (v30)
    {
      MEMORY[0x223DC94A0]();
      if (*((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      sub_222C947AC();
      v26 = v36[0];
      v25 = v29;
    }
  }

  v32 = sub_222C5E0B8(v26);

  return v32;
}

void *sub_222C5E0B8(unint64_t a1)
{
  sub_222C5E578(a1);
  v3 = v2;
  v4 = type metadata accessor for PlayMediaSELFFeatures.MediaItemResults(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v44 = v3;
  v7 = sub_222C93EDC();
  v8 = v7;
  if (v7)
  {
    v7 = sub_222C5F9CC(&qword_27D0279E8, 255, type metadata accessor for PlayMediaSELFFeatures.MediaItemResults);
  }

  else
  {
    v4 = 0;
    v48[1] = 0;
    v48[2] = 0;
  }

  v48[0] = v8;
  v48[3] = v4;
  v48[4] = v7;
  sub_222C5F470(a1);
  v10 = v9;
  v11 = type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v44 = v10;

  v14 = sub_222C93EDC();

  if (v14)
  {

    v15 = sub_222C5F9CC(&qword_27D0279E0, 255, type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem);
  }

  else
  {
    v11 = 0;
    v15 = 0;
    v49[1] = 0;
    v49[2] = 0;
  }

  v49[0] = v14;
  v49[3] = v11;
  v49[4] = v15;
  sub_222B43F34(v48, &v44);
  v39 = v45;
  v38 = v44;
  v40 = v46;
  if (*(&v45 + 1))
  {
    sub_222B405A0(&v38, v41);
    v16 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_222B4A108(0, v16[2] + 1, 1, v16);
      v47 = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_222B4A108((v18 > 1), v19 + 1, 1, v16);
      v47 = v16;
    }

    v20 = v42;
    v21 = v43;
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v23 = *(*(v20 - 8) + 64);
    MEMORY[0x28223BE20](v22);
    v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25);
    sub_222B4F8F0(v19, v25, &v47, v20, v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  else
  {
    sub_222B4FCD4(&v38, &qword_27D024860, &unk_222C962F0);
    v16 = MEMORY[0x277D84F90];
  }

  sub_222B43F34(v49, &v44);
  v39 = v45;
  v38 = v44;
  v40 = v46;
  if (*(&v45 + 1))
  {
    sub_222B405A0(&v38, v41);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v16;
    if ((v27 & 1) == 0)
    {
      v16 = sub_222B4A108(0, v16[2] + 1, 1, v16);
      v47 = v16;
    }

    v29 = v16[2];
    v28 = v16[3];
    if (v29 >= v28 >> 1)
    {
      v16 = sub_222B4A108((v28 > 1), v29 + 1, 1, v16);
      v47 = v16;
    }

    v30 = v42;
    v31 = v43;
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v33 = *(*(v30 - 8) + 64);
    MEMORY[0x28223BE20](v32);
    v35 = &v38 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v35);
    sub_222B4F8F0(v29, v35, &v47, v30, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  else
  {
    sub_222B4FCD4(&v38, &qword_27D024860, &unk_222C962F0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  swift_arrayDestroy();
  return v16;
}

void sub_222C5E578(unint64_t a1)
{
  v24 = 10;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = a1 & 0xC000000000000001;
  v6 = a1 + 32;

  v7 = 0;
  while (v4 != v7)
  {
    if (v5)
    {
      v8 = MEMORY[0x223DC9B30](v7, a1);
    }

    else
    {
      if (v7 >= *(v2 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v4 = sub_222C94C6C();
        goto LABEL_3;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    swift_beginAccess();
    v10 = sub_222C5FA14(v9, &v24);
    swift_endAccess();

    if (v10)
    {
      v4 = v7;
      break;
    }

    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (!v3)
  {
    v12 = *(v2 + 16);
    if (v4 != v12)
    {
      if (v12)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (v4 != sub_222C94C6C())
  {
    v12 = sub_222C94C6C();
    if (!v12)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      v14 = MEMORY[0x223DC9B30](v12, a1);
      goto LABEL_26;
    }

    do
    {
LABEL_27:
      v11 = __OFSUB__(v12--, 1);
      if (v11)
      {
        goto LABEL_41;
      }

      if (v5)
      {
        goto LABEL_25;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v12 >= *(v2 + 16))
      {
        goto LABEL_44;
      }

      v14 = *(v6 + 8 * v12);
LABEL_26:
      v15 = v14;
      swift_beginAccess();
      v16 = sub_222C5FA14(v15, &v24);
      swift_endAccess();
    }

    while (!v16);
    if (v5)
    {
      v17 = MEMORY[0x223DC9B30](v12, a1);
      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(v2 + 16))
    {
      v17 = *(v6 + 8 * v12);
LABEL_37:
      v18 = v17;
      swift_beginAccess();
      v19 = sub_222C5FA14(v18, &v24);
      swift_endAccess();

      if (v19)
      {

        return;
      }

LABEL_48:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_19:

  swift_beginAccess();
  v13 = v24;
  if (v24 != 10)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v22 = &type metadata for PIMSFatalError;
    v23 = sub_222BE72D0();
    strcpy(v20, "PIMSFatalError");
    HIBYTE(v20[1]) = -18;
    v21 = v13;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }
}

void sub_222C5E984(unint64_t a1)
{
  if (qword_280FDFE78 != -1)
  {
LABEL_33:
    swift_once();
  }

  v2 = sub_222C9431C();
  __swift_project_value_buffer(v2, qword_280FE2340);
  v3 = sub_222C942FC();
  v4 = sub_222C94A3C();
  v31 = a1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34[0] = v6;
    *v5 = 136315138;
    if (qword_27D024770 != -1)
    {
      swift_once();
    }

    *(v5 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, v34);
    _os_log_impl(&dword_222B39000, v3, v4, "%s MediaItemDebug: Printing MediaEvents", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x223DCA8C0](v6, -1, -1);
    MEMORY[0x223DCA8C0](v5, -1, -1);

    a1 = v31;
  }

  else
  {
  }

  if (a1 >> 62)
  {
    v7 = sub_222C94C6C();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  v8 = 0;
  v32 = v7;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223DC9B30](v8, v31);
    }

    else
    {
      if (v8 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v9 = *(v31 + 32 + 8 * v8);
    }

    v10 = v9;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v12 = [v9 formattedJsonBody];
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v33 = v10;
    v14 = sub_222C9449C();
    a1 = v15;

    v16 = sub_222C29C84(v14, a1);

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        swift_bridgeObjectRetain_n();
        a1 = sub_222C942FC();
        v21 = sub_222C94A3C();

        if (os_log_type_enabled(a1, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v35 = v23;
          *v22 = 136315394;
          if (qword_27D024770 != -1)
          {
            swift_once();
          }

          *(v22 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, &v35);
          *(v22 + 12) = 2080;
          v34[0] = v20;
          v34[1] = v19;
          v24 = sub_222C9461C();
          v26 = sub_222B437C0(v24, v25, &v35);

          *(v22 + 14) = v26;
          _os_log_impl(&dword_222B39000, a1, v21, "%s MediaItemDebug: %s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v23, -1, -1);
          MEMORY[0x223DCA8C0](v22, -1, -1);
        }

        else
        {
        }

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    if (v8 == v32)
    {
      return;
    }
  }

  v27 = sub_222C942FC();
  v28 = sub_222C94A3C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34[0] = v30;
    *v29 = 136315138;
    if (qword_27D024770 != -1)
    {
      swift_once();
    }

    *(v29 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, v34);
    _os_log_impl(&dword_222B39000, v27, v28, "%s MediaItemDebug: Failed to extract JSON from USO object", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x223DCA8C0](v30, -1, -1);
    MEMORY[0x223DCA8C0](v29, -1, -1);
  }
}

uint64_t sub_222C5EE90(void *a1, char *a2)
{
  v4 = [a1 u2UsoGraph];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 u2UsoGraphTier1];
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_222C9BAE0;
      *(v8 + 32) = v7;
      v9 = v7;
      v36 = sub_222C93FBC();

      if (v36)
      {

        result = v36;
        v19 = 10;
      }

      else
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v10 = sub_222C9431C();
        __swift_project_value_buffer(v10, qword_280FE2340);
        v11 = sub_222C942FC();
        v12 = sub_222C94A4C();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v37 = v14;
          *v13 = 136315138;
          if (qword_27D024770 != -1)
          {
            swift_once();
          }

          *(v13 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, &v37);
          _os_log_impl(&dword_222B39000, v11, v12, "%s getUsoGraph - Failed to un-redact play media uso graph", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v14);
          MEMORY[0x223DCA8C0](v14, -1, -1);
          MEMORY[0x223DCA8C0](v13, -1, -1);
        }

        inited = swift_initStackObject();
        *(inited + 16) = xmmword_222C9BAE0;
        *(inited + 32) = a1;
        v16 = a1;
        sub_222C5E984(inited);

        swift_setDeallocating();
        v17 = *(inited + 16);
        swift_arrayDestroy();
        result = 0;
        v19 = 5;
      }
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v28 = sub_222C9431C();
      __swift_project_value_buffer(v28, qword_280FE2340);
      v29 = sub_222C942FC();
      v30 = sub_222C94A3C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v37 = v32;
        *v31 = 136315138;
        if (qword_27D024770 != -1)
        {
          swift_once();
        }

        *(v31 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, &v37);
        _os_log_impl(&dword_222B39000, v29, v30, "%s getUsoGraph - u2UsoGraphTier1 not present", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        MEMORY[0x223DCA8C0](v32, -1, -1);
        MEMORY[0x223DCA8C0](v31, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_222C9BAE0;
      *(v33 + 32) = a1;
      v34 = a1;
      sub_222C5E984(v33);

      swift_setDeallocating();
      v35 = *(v33 + 16);
      swift_arrayDestroy();
      result = 0;
      v19 = 4;
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v21 = sub_222C942FC();
    v22 = sub_222C94A3C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      if (qword_27D024770 != -1)
      {
        swift_once();
      }

      *(v23 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, &v37);
      _os_log_impl(&dword_222B39000, v21, v22, "%s getUsoGraph - u2UsoGraph not present", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_222C9BAE0;
    *(v25 + 32) = a1;
    v26 = a1;
    sub_222C5E984(v25);
    swift_setDeallocating();
    v27 = *(v25 + 16);
    swift_arrayDestroy();
    result = 0;
    v19 = 3;
  }

  *a2 = v19;
  return result;
}

void sub_222C5F470(unint64_t a1)
{
  v24 = 10;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = a1 & 0xC000000000000001;
  v5 = (a1 + 32);

  do
  {
    if (!v3)
    {

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v10 = sub_222C9431C();
      __swift_project_value_buffer(v10, qword_280FE2340);
      v11 = sub_222C942FC();
      v12 = sub_222C94A4C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20[0] = v14;
        *v13 = 136315138;
        if (qword_27D024770 != -1)
        {
          swift_once();
        }

        *(v13 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, v20);
        _os_log_impl(&dword_222B39000, v11, v12, "%s getBestUsoMediaItem: Unable to extract a USO graph from any media event", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x223DCA8C0](v14, -1, -1);
        MEMORY[0x223DCA8C0](v13, -1, -1);
      }

      sub_222C5E984(a1);
      swift_beginAccess();
      v15 = v24;
      if (v24 == 10)
      {
        return;
      }

      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v22 = &type metadata for PIMSFatalError;
      v23 = sub_222BE72D0();
      strcpy(v20, "PIMSFatalError");
      HIBYTE(v20[1]) = -18;
      v21 = v15;
      sub_222C93B5C();
LABEL_38:
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return;
    }

    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v3 = sub_222C94C6C();
      goto LABEL_3;
    }

    if (v4)
    {
      v7 = MEMORY[0x223DC9B30](v3, a1);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v3 >= *(v2 + 16))
      {
        goto LABEL_42;
      }

      v7 = v5[v3];
    }

    v8 = v7;
    swift_beginAccess();
    v9 = sub_222C5EE90(v8, &v24);
    swift_endAccess();
  }

  while (!v9);
  if (v4)
  {
    v16 = MEMORY[0x223DC9B30](v3, a1);
    goto LABEL_28;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v3 >= *(v2 + 16))
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_34:
    *(v9 + 4) = sub_222B437C0(qword_27D0279C8, unk_27D0279D0, v20);
    _os_log_impl(&dword_222B39000, v3, v2, "%s getBestUsoMediaItem - Unable to extract a task from the found graph", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x223DCA8C0](v5, -1, -1);
    MEMORY[0x223DCA8C0](v9, -1, -1);
LABEL_35:

    sub_222C5E984(a1);
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v22 = &type metadata for PIMSFatalError;
    v23 = sub_222BE72D0();
    strcpy(v20, "PIMSFatalError");
    HIBYTE(v20[1]) = -18;
    v21 = 2;
    sub_222C93B5C();

    goto LABEL_38;
  }

  v16 = v5[v3];
LABEL_28:
  v17 = v16;
  swift_beginAccess();
  v18 = sub_222C5EE90(v17, &v24);
  swift_endAccess();

  if (v18)
  {

    if (sub_222C5DA34())
    {
      sub_222C93A9C();

      return;
    }

    if (qword_280FDFE78 == -1)
    {
LABEL_32:
      v19 = sub_222C9431C();
      __swift_project_value_buffer(v19, qword_280FE2340);
      v3 = sub_222C942FC();
      LOBYTE(v2) = sub_222C94A4C();
      if (os_log_type_enabled(v3, v2))
      {
        v9 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v20[0] = v5;
        *v9 = 136315138;
        if (qword_27D024770 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_47;
      }

      goto LABEL_35;
    }

LABEL_45:
    swift_once();
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_222C5F9CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_222C5FA14(void *a1, _BYTE *a2)
{
  v3 = [a1 searchResults];
  if (!v3)
  {
    *a2 = 1;
    return v3;
  }

  sub_222C5FD04();
  v4 = sub_222C9471C();

  if (v4 >> 62)
  {
    goto LABEL_29;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_30:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v42 = MEMORY[0x277D84F90];
    result = sub_222B4CDF8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v7 = 0;
    v8 = v4;
    v37 = v4;
    v38 = v4 & 0xC000000000000001;
    v3 = v42;
    v35 = v4 & 0xFFFFFFFFFFFFFF8;
    v36 = v5;
    while (1)
    {
      if (v38)
      {
        v9 = MEMORY[0x223DC9B30](v7, v8);
        goto LABEL_11;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v7 >= *(v35 + 16))
      {
        goto LABEL_28;
      }

      v9 = *(v8 + 8 * v7 + 32);
LABEL_11:
      v10 = v9;
      v11 = [v9 title];
      if (v11)
      {
        v12 = v11;
        v13 = sub_222C9449C();
        v40 = v14;
        v41 = v13;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      v15 = [v10 artist];
      if (v15)
      {
        v16 = v15;
        v39 = sub_222C9449C();
        v18 = v17;
      }

      else
      {
        v39 = 0;
        v18 = 0;
      }

      v19 = [v10 mediaType];
      v20 = @"FLOWMEDIATYPE_UNKNOWN";
      v21 = @"FLOWMEDIATYPE_UNKNOWN";
      if (v19 <= 0x1C)
      {
        v21 = off_2784BC170[v19];
        v20 = off_2784BC258[v19];
      }

      v22 = v21;
      v23 = v20;
      v24 = sub_222C9449C();
      v26 = v25;

      v27 = [v10 entityId];
      if (v27)
      {
        v28 = v27;
        v4 = sub_222C9449C();
        v30 = v29;
      }

      else
      {
        v4 = 0;
        v30 = 0;
      }

      v31 = [v10 isAlternative];

      v33 = v42[2];
      v32 = v42[3];
      if (v33 >= v32 >> 1)
      {
        sub_222B4CDF8((v32 > 1), v33 + 1, 1);
      }

      ++v7;
      v42[2] = v33 + 1;
      v34 = &v42[9 * v33];
      v34[4] = v41;
      v34[5] = v40;
      v34[6] = v39;
      v34[7] = v18;
      v34[8] = v24;
      v34[9] = v26;
      v34[10] = v4;
      v34[11] = v30;
      *(v34 + 96) = v31;
      v8 = v37;
      if (v36 == v7)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v5 = sub_222C94C6C();
    if (!v5)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_222C5FD04()
{
  result = qword_27D0279F8;
  if (!qword_27D0279F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0279F8);
  }

  return result;
}

uint64_t EventStreamType.hash(into:)()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x223DCA0B0](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x223DCA0B0](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x223DCA0B0](v2);
  }

  v4 = *v0;
  MEMORY[0x223DCA0B0](3);

  return sub_222C9452C();
}

uint64_t EventStreamType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_222C952FC();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x223DCA0B0](3);
        sub_222C9452C();
        return sub_222C9534C();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x223DCA0B0](v3);
  return sub_222C9534C();
}

uint64_t sub_222C5FE7C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_222C952FC();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x223DCA0B0](3);
        sub_222C9452C();
        return sub_222C9534C();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x223DCA0B0](v3);
  return sub_222C9534C();
}

uint64_t sub_222C5FF0C()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x223DCA0B0](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x223DCA0B0](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x223DCA0B0](v2);
  }

  v4 = *v0;
  MEMORY[0x223DCA0B0](3);

  return sub_222C9452C();
}

uint64_t sub_222C5FFA4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_222C952FC();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x223DCA0B0](3);
        sub_222C9452C();
        return sub_222C9534C();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x223DCA0B0](v3);
  return sub_222C9534C();
}

uint64_t _s28SiriPrivateLearningInference15EventStreamTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        sub_222B5B328(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        sub_222B5B328(*a1, 1uLL);
        sub_222B5B328(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        sub_222B5B328(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        sub_222B5B328(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    sub_222B95830(*a2, *(a2 + 8));
    sub_222B95830(v2, v3);
    sub_222B5B328(v2, v3);
    sub_222B5B328(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_222B95830(*a1, v3);
    sub_222B95830(v2, v3);
    sub_222B5B328(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = *a1;
  v11 = sub_222C951FC();
  sub_222B95830(v4, v5);
  sub_222B95830(v2, v3);
  sub_222B5B328(v2, v3);
  sub_222B5B328(v4, v5);
  return v11 & 1;
}

unint64_t sub_222C601C0()
{
  result = qword_280FDFC58[0];
  if (!qword_280FDFC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FDFC58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference15EventStreamTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222C6022C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222C60288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_222C602D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t AsyncEventStream.init<A>(sequence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_222C60444(a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a1, a3);
}

uint64_t AsyncEventStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v4 = sub_222C948AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_222C948CC();
  sub_222C9488C();
  return sub_222C60618(v7, a2);
}

uint64_t sub_222C60444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_222C94B5C();
  v9 = swift_allocBox();
  (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness);
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = v9;
  (*(v6 + 32))(&v12[v11], &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  return sub_222C948BC();
}

uint64_t sub_222C60618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v4 = sub_222C948AC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t AsyncEventStream.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D858C0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v8 = sub_222C948AC();
  *v6 = v2;
  v6[1] = sub_222B503AC;

  return MEMORY[0x2822005B0](a1, v8);
}

uint64_t sub_222C60790(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222BF9850;

  return AsyncEventStream.AsyncIterator.next()(a1, a2);
}

uint64_t sub_222C60854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncEventStream.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_222C60924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  result = a4(319, v5, v6, MEMORY[0x277D84950]);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v9 = a4(0, v7, v8, MEMORY[0x277D84950]);
  v10 = *(*(v9 - 8) + 48);

  return v10(a1, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  v8 = *(a4 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0262A0, &qword_222C96D10);
  v10 = a5(0, v8, v9, MEMORY[0x277D84950]);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, a2, a2, v10);
}