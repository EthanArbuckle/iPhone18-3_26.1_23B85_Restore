uint64_t sub_27527A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v24 = a4;
  v25 = a1;
  v7 = sub_2752881B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v23 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v22 = *(v8 + 16);
  v22(&v20 - v11, a1, v7);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v8 + 32);
  v15(v14 + v13, v12, v7);
  v16 = v23;
  v22(v23, v25, v7);
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = v20;
  *(v17 + 24) = v18;
  v15(v17 + v13, v16, v7);
  sub_275288274();
  return (*(v8 + 8))(v25, v7);
}

uint64_t sub_27527A820@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 8);
  a3[3] = a1;
  a3[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(a3);
  v5 = sub_2752881B4();
  return MEMORY[0x277C71C30](v5);
}

uint64_t sub_27527A878@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(sub_2752881B4() - 8) + 80);

  return sub_27527A820(v3, v4, a1);
}

uint64_t sub_27527A900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_275288534();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v22[-v9 - 8];
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v13);
  v17 = &v22[-v16 - 8];
  sub_27527AD14(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9F20, &qword_275288BB8);
  v18 = swift_dynamicCast();
  v19 = *(v11 + 56);
  if (v18)
  {
    v19(v10, 0, 1, a3);
    (*(v11 + 32))(v17, v10, a3);
    (*(v11 + 16))(v15, v17, a3);
    sub_2752881B4();
    sub_2752881A4();
    return (*(v11 + 8))(v17, a3);
  }

  else
  {
    v19(v10, 1, 1, a3);
    (*(v6 + 8))(v10, v5);
    sub_275288324();
    sub_2752881B4();
    return sub_2752881A4();
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = (sub_2752881B4() - 8);
  v3 = *(*v2 + 64);
  v4 = (v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80)));
  v5 = *v4;

  v6 = *(v4 + 1);

  (*(*(v1 - 8) + 8))(&v4[v2[10]], v1);

  return swift_deallocObject();
}

uint64_t sub_27527AC8C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_2752881B4() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_27527A900(a1, v6, v3);
}

uint64_t sub_27527AD14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t JUComponentView.init(presenting:for:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(type metadata accessor for JUComponentView() + 36);
  swift_getAssociatedTypeWitness();
  v8 = sub_2752881B4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_27527AF54(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 36);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_2752881B4();
  return a2(v6);
}

uint64_t sub_27527AFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 112);
  swift_beginAccess();
  v8 = *(v3 + v7);

  result = sub_27527B2D8(v9);
  v42 = result;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 32;
    do
    {
      sub_27527AD14(v12, v39);
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v18 = sub_275287E54();
      swift_unknownObjectRelease();
      swift_beginAccess();
      if (!*(*(v3 + v7) + 16) || (sub_27527D858(v18), (v19 & 1) == 0))
      {
        swift_endAccess();
        v13 = v40;
        v14 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        v15 = sub_27527B3D0(a2, v13, *(v6 + 80), v14, *(v6 + 88));
        swift_beginAccess();
        v16 = *(v3 + v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(v3 + v7);
        *(v3 + v7) = 0x8000000000000000;
        sub_27527E6E8(v15, v18, isUniquelyReferenced_nonNull_native);
        *(v3 + v7) = v38;
      }

      swift_endAccess();
      sub_27527D9EC(v18);
      result = __swift_destroy_boxed_opaque_existential_1(v39);
      v12 += 40;
      --v11;
    }

    while (v11);
    v20 = v42;
  }

  else
  {
    v20 = result;
  }

  v21 = 0;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 56);
  for (i = (v22 + 63) >> 6; v24; result = )
  {
LABEL_19:
    while (1)
    {
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v28 = *(*(v20 + 48) + ((v21 << 9) | (8 * v27)));
      swift_beginAccess();
      v29 = *(v3 + v7);
      v30 = sub_27527D858(v28);
      if (v31)
      {
        break;
      }

      result = swift_endAccess();
      if (!v24)
      {
        goto LABEL_15;
      }
    }

    v32 = v30;
    v33 = *(v3 + v7);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    if (!v34)
    {
      sub_27527DEB4();
    }

    v36 = v32;
    v37 = *(*(v35 + 56) + 8 * v32);
    sub_27527DD44(v36, v35);
    *(v3 + v7) = v35;
    swift_endAccess();
    sub_275288444();
  }

LABEL_15:
  while (1)
  {
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v26 >= i)
    {
    }

    v24 = *(v20 + 56 + 8 * v26);
    ++v21;
    if (v24)
    {
      v21 = v26;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27527B2D8(uint64_t a1)
{
  result = MEMORY[0x277C71EF0](*(a1 + 16), MEMORY[0x277D83690], MEMORY[0x277D83698]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_27527D908(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27527B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a5;
  v26 = a1;
  v7 = type metadata accessor for JUComponentReloader();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C8, &qword_275288D80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - v14;
  v16 = sub_2752883C4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = sub_275287E54();
  (*(v8 + 16))(v11, v26, v7);
  sub_275288394();
  v18 = sub_275288384();
  v19 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  v23 = v27;
  v22 = v28;
  *(v20 + 4) = a2;
  *(v20 + 5) = v23;
  *(v20 + 6) = a4;
  *(v20 + 7) = v22;
  *(v20 + 8) = v17;
  (*(v8 + 32))(&v20[v19], v11, v7);
  return sub_27527D368(0, 0, v15, &unk_275288D90, v20);
}

uint64_t *JUComponentView.Coordinator.deinit()
{
  v1 = *v0;
  sub_2752808D0((v0 + 2), &qword_2809B9F28, &qword_275288BC0);
  v2 = *(*v0 + 104);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  v5 = sub_275288534();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + *(*v0 + 112));

  return v0;
}

uint64_t JUComponentView.Coordinator.__deallocating_deinit()
{
  JUComponentView.Coordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27527B740()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_27527B778();
  return v3;
}

uint64_t sub_27527B778()
{
  v1 = *v0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v2 = v1[13];
  v3 = v1[11];
  v4 = v1[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v0 + v2, 1, 1, AssociatedTypeWitness);
  v6 = *(*v0 + 112);
  *(v0 + v6) = sub_27527F198(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t JUComponentView.makeCoordinator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_27527F2A8();
}

id JUComponentView.makeView(context:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_27527F2EC();
}

uint64_t JUComponentView.updateView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v126 = a2;
  v117 = a1;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for JUComponentReloader();
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v7);
  v100 = &v91 - v9;
  v10 = sub_275287F94();
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v10);
  v112 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_2752881B4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v108 = &v91 - v16;
  v17 = sub_275288284();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v109 = &v91 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v105 = *(v20 - 8);
  v21 = *(v105 + 64);
  MEMORY[0x28223BE20](v20);
  v107 = &v91 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v116 = v6;
  v110 = v5;
  v24 = swift_getAssociatedConformanceWitness();
  v130[0] = v20;
  v130[1] = AssociatedTypeWitness;
  v130[2] = AssociatedConformanceWitness;
  v131 = v24;
  v118 = v24;
  v113 = sub_275287E44();
  v111 = *(v113 - 8);
  v25 = *(v111 + 64);
  v26 = MEMORY[0x28223BE20](v113);
  v99 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v106 = &v91 - v29;
  v123 = *(AssociatedTypeWitness - 8);
  v30 = *(v123 + 64);
  MEMORY[0x28223BE20](v28);
  v94 = &v91 - v31;
  v121 = AssociatedTypeWitness;
  v32 = sub_275288534();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v96 = *(TupleTypeMetadata2 - 8);
  v34 = *(v96 + 64);
  v35 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v37 = &v91 - v36;
  v122 = *(v32 - 8);
  v38 = *(v122 + 64);
  v39 = MEMORY[0x28223BE20](v35);
  v104 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v95 = &v91 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v97 = &v91 - v44;
  MEMORY[0x28223BE20](v43);
  v98 = &v91 - v45;
  v120 = v3;
  v124 = v20;
  v125 = AssociatedConformanceWitness;
  sub_275288234();
  swift_getWitnessTable();
  v119 = a3;
  v46 = sub_275288094();
  sub_275288074();
  v47 = v136;
  swift_beginAccess();
  sub_275280664(v47 + 16, v135, &qword_2809B9F28, &qword_275288BC0);

  sub_275280664(v137, v130, &qword_2809B9F28, &qword_275288BC0);
  sub_275280664(v135, &v132, &qword_2809B9F28, &qword_275288BC0);
  v103 = v46;
  if (v131)
  {
    sub_275280664(v130, v129, &qword_2809B9F28, &qword_275288BC0);
    if (*(&v133 + 1))
    {
      v127[0] = v132;
      v127[1] = v133;
      v128 = v134;
      v48 = MEMORY[0x277C72020](v129, v127);
      sub_27527F3E4(v127);
      sub_2752808D0(v135, &qword_2809B9F28, &qword_275288BC0);
      sub_2752808D0(v137, &qword_2809B9F28, &qword_275288BC0);
      sub_27527F3E4(v129);
      sub_2752808D0(v130, &qword_2809B9F28, &qword_275288BC0);
      if ((v48 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    sub_2752808D0(v135, &qword_2809B9F28, &qword_275288BC0);
    sub_2752808D0(v137, &qword_2809B9F28, &qword_275288BC0);
    sub_27527F3E4(v129);
LABEL_11:
    sub_2752808D0(v130, &qword_2809B9F30, &qword_275288BC8);
    goto LABEL_15;
  }

  sub_2752808D0(v135, &qword_2809B9F28, &qword_275288BC0);
  sub_2752808D0(v137, &qword_2809B9F28, &qword_275288BC0);
  if (*(&v133 + 1))
  {
    goto LABEL_11;
  }

  sub_2752808D0(v130, &qword_2809B9F28, &qword_275288BC0);
LABEL_7:
  v93 = v32;
  v49 = v98;
  sub_27527AF54(v119, MEMORY[0x277CE11D8]);
  v50 = v121;
  (*(v123 + 56))(v49, 0, 1, v121);
  sub_275288074();
  v51 = v130[0];
  v52 = *(*v130[0] + 104);
  swift_beginAccess();
  v53 = *(v122 + 16);
  v54 = v97;
  v53(v97, v51 + v52, v93);

  v91 = TupleTypeMetadata2;
  v55 = *(TupleTypeMetadata2 + 48);
  v56 = v49;
  v32 = v93;
  v53(v37, v56, v93);
  v92 = v55;
  v53(&v37[v55], v54, v32);
  v57 = *(v123 + 48);
  if (v57(v37, 1, v50) == 1)
  {
    v58 = *(v122 + 8);
    v58(v54, v32);
    v58(v56, v32);
    if (v57(&v37[v92], 1, v121) == 1)
    {
      return (v58)(v37, v32);
    }
  }

  else
  {
    v60 = v95;
    v53(v95, v37, v32);
    v61 = v92;
    v62 = v121;
    if (v57(&v37[v92], 1, v121) != 1)
    {
      v84 = v123;
      v85 = &v37[v61];
      v86 = v94;
      (*(v123 + 32))(v94, v85, v62);
      v87 = *(v118 + 16);
      v88 = sub_275288334();
      v89 = *(v84 + 8);
      v89(v86, v62);
      v90 = *(v122 + 8);
      v90(v97, v32);
      v90(v98, v32);
      v89(v60, v62);
      result = (v90)(v37, v32);
      if (v88)
      {
        return result;
      }

      goto LABEL_15;
    }

    v63 = *(v122 + 8);
    v63(v97, v32);
    v63(v98, v32);
    (*(v123 + 8))(v60, v62);
  }

  (*(v96 + 8))(v37, v91);
LABEL_15:
  sub_275288074();
  v64 = v129[0];
  v65 = v120;
  sub_275288234();
  swift_beginAccess();
  sub_27527F374(v130, v64 + 16);
  swift_endAccess();

  sub_275288074();
  v66 = v137[0];
  v67 = v104;
  v68 = v119;
  sub_27527AF54(v119, MEMORY[0x277CE11D8]);
  v69 = v121;
  (*(v123 + 56))(v67, 0, 1, v121);
  v70 = *(*v66 + 104);
  swift_beginAccess();
  (*(v122 + 40))(v66 + v70, v67, v32);
  swift_endAccess();

  (*(v105 + 16))(v107, v65, v124);
  v71 = v108;
  sub_27527AF54(v68, MEMORY[0x277CE11E8]);
  sub_27527A618(v71, v69, v118, v109);
  v72 = v112;
  sub_275288084();
  sub_27527C620();
  (*(v114 + 8))(v72, v115);
  v73 = v106;
  sub_275287E34();
  v74 = v117;
  sub_275287DF4();
  v75 = *(sub_275287DE4() + 16);

  if (!v75)
  {
    return (*(v111 + 8))(v73, v113);
  }

  v76 = v113;
  v77 = *&v73[*(v113 + 60)];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809B9F38, &qword_275288BD0);
  v78 = sub_275288244();
  v79 = v111;
  v80 = v99;
  (*(v111 + 16))(v99, v73, v76);
  v81 = v73;
  v82 = v100;
  sub_27527C6E4(v80, v74, v100);
  v83 = v74;
  sub_275288074();
  sub_27527AFBC(v78, v82);

  (*(v101 + 8))(v82, v102);
  return (*(v79 + 8))(v81, v76);
}

uint64_t sub_27527C620()
{
  sub_275287F34();
  if (v3)
  {
    sub_275280930(&v2, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v0 = sub_275287D54();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return v0;
  }

  else
  {
    sub_2752808D0(&v2, qword_2809BA0E0, &unk_275288DC0);
    sub_275288264();
    return sub_275288254();
  }
}

uint64_t sub_27527C6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_275287E44();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for JUComponentReloader();
  *(a3 + *(result + 36)) = a2;
  return result;
}

id sub_27527C81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_27527F2EC();
}

uint64_t sub_27527C828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return JetViewRepresentable.makeUIView(context:)(a1, a2, WitnessTable);
}

uint64_t sub_27527C888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return JetViewRepresentable.updateUIView(_:context:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_27527C8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static JetViewRepresentable.dismantleUIView(_:coordinator:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_27527C964@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_27527F2A8();
  *a2 = result;
  return result;
}

uint64_t sub_27527C9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_27527CA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_27527CAF0()
{
  swift_getWitnessTable();
  sub_275288024();
  __break(1u);
}

uint64_t sub_27527CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v23;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = swift_getAssociatedTypeWitness();
  v8[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = *(*(sub_275288534() - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = sub_275288424();
  v8[14] = v13;
  v14 = *(v13 - 8);
  v8[15] = v14;
  v15 = *(v14 + 64) + 15;
  v8[16] = swift_task_alloc();
  v16 = sub_275288414();
  v8[17] = v16;
  v17 = *(v16 - 8);
  v8[18] = v17;
  v18 = *(v17 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = sub_275288394();
  v8[21] = sub_275288384();
  v20 = sub_275288374();
  v8[22] = v20;
  v8[23] = v19;

  return MEMORY[0x2822009F8](sub_27527CDA4, v20, v19);
}

uint64_t sub_27527CDA4()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[2];
  swift_checkMetadataState();
  sub_275288224();
  sub_2752883F4();
  (*(v3 + 8))(v2, v4);
  v8 = v0[20];
  v9 = sub_275288384();
  v0[24] = v9;
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_27527CEC0;
  v12 = v0[19];
  v13 = v0[17];
  v14 = v0[13];
  v15 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v14, v9, v15, v13);
}

uint64_t sub_27527CEC0()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  v4 = *(v1 + 184);
  v5 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_27527D004, v5, v4);
}

uint64_t sub_27527D004()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[21];
    v5 = v0[16];
    v6 = v0[12];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[6];
    v9 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    v23 = v0[3];
    (*(v2 + 32))(v0[12], v1, v3);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_275288464();
    v13 = sub_275288564();

    v14 = type metadata accessor for JUComponentReloader();
    sub_27527D2A4(v13, v14);

    v15 = v0[20];
    v16 = sub_275288384();
    v0[24] = v16;
    v17 = *(MEMORY[0x277D85798] + 4);
    v18 = swift_task_alloc();
    v0[25] = v18;
    *v18 = v0;
    v18[1] = sub_27527CEC0;
    v19 = v0[19];
    v20 = v0[17];
    v21 = v0[13];
    v22 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v21, v16, v22, v20);
  }
}

uint64_t sub_27527D2A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = sub_275287DE4();
  if (*(sub_27527E954(a1, v8) + 16))
  {
    v9 = *(v3 + *(a2 + 36));
    v10 = sub_275287DD4();

    if ((v10 & 1) == 0)
    {
      return sub_275287DF4();
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_27527D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C8, &qword_275288D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_275280664(a3, v27 - v11, &qword_2809BA0C8, &qword_275288D80);
  v13 = sub_2752883C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2752808D0(v12, &qword_2809BA0C8, &qword_275288D80);
  }

  else
  {
    sub_2752883B4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_275288374();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_275288344() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2752808D0(a3, &qword_2809BA0C8, &qword_275288D80);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2752808D0(a3, &qword_2809BA0C8, &qword_275288D80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_27527D668(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27527D760;

  return v7(a1);
}

uint64_t sub_27527D760()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_27527D858(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_275288674();

  return sub_27527D89C(a1, v4);
}

unint64_t sub_27527D89C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_27527D908(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_275288674();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_27527E834(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_27527D9EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_275288674();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_27527E010();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_27527E564(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_27527DAD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C0, &qword_275288D78);
  result = sub_275288614();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_275288674();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_27527DD44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275288554() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_275288674();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_27527DEB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C0, &qword_275288D78);
  v2 = *v0;
  v3 = sub_275288604();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_27527E010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0D8, &qword_275288DB8);
  v2 = *v0;
  v3 = sub_275288594();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_27527E150(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0D8, &qword_275288DB8);
  result = sub_2752885A4();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_275288674();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_27527E340(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0D8, &qword_275288DB8);
  result = sub_2752885A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_275288674();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_27527E564(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_275288554();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_275288674() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
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

unint64_t sub_27527E6E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_27527D858(a2);
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
      sub_27527DAD4(v14, a3 & 1);
      v18 = *v4;
      result = sub_27527D858(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_275288664();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_27527DEB4();
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

uint64_t sub_27527E834(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_27527E340(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_27527E010();
      a2 = v7;
      goto LABEL_12;
    }

    sub_27527E150(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_275288674();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_275288654();
  __break(1u);
  return result;
}

uint64_t sub_27527E954(uint64_t a1, uint64_t a2)
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
    v9 = sub_27527EBA8(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_27527EB18(v12, v6, a2, a1);

    MEMORY[0x277C72460](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_27527EB18(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_27527EBA8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_27527EBA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v43 = result;
  v6 = *(a3 + 16);
  v7 = *(a4 + 16);
  v54 = a3;
  if (v7 >= v6)
  {
LABEL_23:
    v46 = 0;
    v26 = 0;
    v27 = v5 + 56;
    v28 = 1 << *(v5 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v5 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = a4 + 56;
    while (v30)
    {
      v33 = __clz(__rbit64(v30));
      v48 = (v30 - 1) & v30;
LABEL_35:
      v45 = v33 | (v26 << 6);
      sub_275280874(*(v5 + 48) + 40 * v45, v52);
      v36 = *(a4 + 40);
      v37 = sub_275288574();
      v38 = -1 << *(a4 + 32);
      v39 = v37 & ~v38;
      if ((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v40 = ~v38;
        while (1)
        {
          sub_275280874(*(a4 + 48) + 40 * v39, v50);
          v41 = MEMORY[0x277C72020](v50, v52);
          sub_27527F3E4(v50);
          if (v41)
          {
            break;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        result = sub_27527F3E4(v52);
        *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        v30 = v48;
        v25 = __OFADD__(v46++, 1);
        v5 = v54;
        if (v25)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
LABEL_27:
        result = sub_27527F3E4(v52);
        v5 = v54;
        v30 = v48;
      }
    }

    v34 = v26;
    while (1)
    {
      v26 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v26 >= v31)
      {
        goto LABEL_43;
      }

      v35 = *(v27 + 8 * v26);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v48 = (v35 - 1) & v35;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v8 = 0;
  v9 = 1 << *(a4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a4 + 56);
  v12 = (v9 + 63) >> 6;
  v46 = 0;
  v47 = a3 + 56;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v44 = (v11 - 1) & v11;
LABEL_15:
    sub_275280874(*(a4 + 48) + 40 * (v13 | (v8 << 6)), v52);
    v50[0] = v52[0];
    v50[1] = v52[1];
    v51 = v53;
    v16 = *(v5 + 40);
    v17 = sub_275288574();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v47 + 8 * (v19 >> 6))) == 0)
    {
      goto LABEL_6;
    }

    sub_275280874(*(v54 + 48) + 40 * v19, v49);
    v22 = MEMORY[0x277C72020](v49, v50);
    sub_27527F3E4(v49);
    if ((v22 & 1) == 0)
    {
      v23 = ~v18;
      while (1)
      {
        v19 = (v19 + 1) & v23;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v47 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        sub_275280874(*(v54 + 48) + 40 * v19, v49);
        v24 = MEMORY[0x277C72020](v49, v50);
        sub_27527F3E4(v49);
        if (v24)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      result = sub_27527F3E4(v50);
      v5 = v54;
      goto LABEL_7;
    }

LABEL_20:
    result = sub_27527F3E4(v50);
    v43[v20] |= v21;
    v25 = __OFADD__(v46++, 1);
    v5 = v54;
    if (v25)
    {
      __break(1u);
      goto LABEL_23;
    }

LABEL_7:
    v11 = v44;
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
LABEL_43:

      return sub_27527EF74(v43, a2, v46, v5);
    }

    v15 = *(a4 + 56 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_27527EF74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0D0, &qword_275288DB0);
  result = sub_2752885B4();
  v6 = result;
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_275280874(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v29);
    v16 = *(v6 + 40);
    result = sub_275288574();
    v17 = -1 << *(v6 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v6 + 48) + 40 * v20;
    v26 = v29[0];
    v27 = v29[1];
    *(v25 + 32) = v30;
    *v25 = v26;
    *(v25 + 16) = v27;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
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

unint64_t sub_27527F198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C0, &qword_275288D78);
  v3 = sub_275288624();
  v13 = *(a1 + 32);
  result = sub_27527D858(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_27527D858(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27527F2A8()
{
  v0 = type metadata accessor for JUComponentView.Coordinator();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_27527B778();
  return v3;
}

id sub_27527F2EC()
{
  v0 = sub_275287E04();
  LODWORD(v1) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1132068864;
  [v0 setContentHuggingPriority:0 forAxis:v2];

  return v0;
}

uint64_t sub_27527F374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9F28, &qword_275288BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27527F438(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27527F4A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_2752881B4();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27527F570(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 | 7;
  v17 = (v13 | 7) + *(v8 + 64);
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + 16) & ~v13) + *(*(v10 - 8) + 64) + (v17 & ~v16);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v15 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v9 >= v14)
      {
        v28 = *(v8 + 48);

        return v28(a1, v9, AssociatedTypeWitness);
      }

      else
      {
        v26 = ((((a1 + v17) & ~v16) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v29 = *(v11 + 48);

          return v29((v26 + v13 + 8) & ~v13);
        }

        else
        {
          v27 = *v26;
          if (v27 >= 0xFFFFFFFF)
          {
            LODWORD(v27) = -1;
          }

          return (v27 + 1);
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v15 + (v25 | v23) + 1;
}

void sub_27527F87C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v15 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v15;
  }

  v17 = (v14 | 7) + *(v10 + 64);
  v18 = ((v14 + 16) & ~v14) + *(v12 + 64);
  v19 = (v17 & ~(v14 | 7)) + v18;
  if (a3 <= v16)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v16 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v16 < a2)
  {
    v21 = ~v16 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_61:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, (v17 & ~(v14 | 7)) + v18);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v19] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_33;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v11 >= v15)
  {
    v30 = *(v10 + 56);

    v30(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v26 = (&a1[v17] & ~(v14 | 7));
    if (v15 >= a2)
    {
      v31 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v13 & 0x80000000) != 0)
      {
        v33 = *(v12 + 56);

        v33((v31 + v14 + 8) & ~v14, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v32 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v32 = (a2 - 1);
        }

        *v31 = v32;
      }
    }

    else
    {
      if (v18 <= 3)
      {
        v27 = ~(-1 << (8 * v18));
      }

      else
      {
        v27 = -1;
      }

      if (v18)
      {
        v28 = v27 & (~v15 + a2);
        if (v18 <= 3)
        {
          v29 = v18;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v18);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v26 = v28;
            v26[2] = BYTE2(v28);
          }

          else
          {
            *v26 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v26 = v28;
        }

        else
        {
          *v26 = v28;
        }
      }
    }
  }
}

uint64_t sub_27527FC90(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  result = sub_275288534();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27527FD88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_275287E44();
  if (v4 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27527FEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_275287E44();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    return (*(v9 + 48))(a1, a2, v8);
  }

  v11 = *(a1 + *(a3 + 36));
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_275280050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_275287E44();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    return (*(v11 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 36)) = (a2 - 1);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_275280234()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 7);
  v3 = (type metadata accessor for JUComponentReloader() - 8);
  v12 = (*(*v3 + 80) + 72) & ~*(*v3 + 80);
  v13 = *(*v3 + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);
  swift_unknownObjectRelease();
  v6 = *&v0[v12];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_275287E44();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v12 + v7[13]], AssociatedTypeWitness);
  v8 = v7[14];
  v9 = sub_275288284();
  (*(*(v9 - 8) + 8))(&v0[v12 + v8], v9);
  v10 = *&v0[v12 + v7[15]];

  return swift_deallocObject();
}

uint64_t sub_275280440(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[7];
  v15 = v1[6];
  v7 = *(type metadata accessor for JUComponentReloader() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_275280570;

  return sub_27527CB30(a1, v9, v10, v11, v1 + v8, v5, v4, v15);
}

uint64_t sub_275280570()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_275280664(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2752806CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_275280704(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27528097C;

  return sub_27527D668(a1, v5);
}

uint64_t sub_2752807BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_275280570;

  return sub_27527D668(a1, v5);
}

uint64_t sub_2752808D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_275280930(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t JUDiffableDataReader.init(observing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t JUDiffableDataReader.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v4 = a1[4];
  v5 = a1[2];
  swift_getAssociatedTypeWitness();
  v6 = sub_275288214();
  swift_getAssociatedTypeWitness();
  v36 = v6;
  v37 = sub_275288214();
  WitnessTable = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  sub_275287E84();
  v7 = sub_2752881F4();
  v30 = a1[3];
  sub_275287F04();
  v8 = sub_275288064();
  v28 = v7;
  v27 = swift_getWitnessTable();
  v34 = a1[5];
  v35 = MEMORY[0x277CE0790];
  v25 = v34;
  v32 = v34;
  v33 = swift_getWitnessTable();
  v29 = v8;
  v26 = swift_getWitnessTable();
  v36 = v7;
  v37 = v8;
  WitnessTable = v27;
  v39 = v26;
  v9 = sub_275287D84();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = *(v2 + 2);
  v24 = *v2;
  sub_275287E14();
  v18 = swift_allocObject();
  *&v19 = v5;
  *(&v19 + 1) = v30;
  *&v20 = v4;
  *(&v20 + 1) = v25;
  *(v18 + 16) = v19;
  *(v18 + 32) = v20;
  *(v18 + 48) = v24;
  *(v18 + 64) = v17;
  swift_unknownObjectRetain();

  sub_275287D94();
  swift_getWitnessTable();
  v21 = v10[2];
  v21(v16, v14, v9);
  v22 = v10[1];
  v22(v14, v9);
  v21(v31, v16, v9);
  return (v22)(v16, v9);
}

uint64_t sub_275280D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v82 = a8;
  v77 = a4;
  v75 = a3;
  v69 = a2;
  v74 = a1;
  v83 = a9;
  v81 = *(a6 - 8);
  v12 = *(v81 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v66 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = v65 - v15;
  v16 = sub_275287F04();
  v72 = *(v16 - 8);
  v17 = *(v72 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v71 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = v65 - v20;
  swift_getAssociatedTypeWitness();
  v21 = sub_275288214();
  v68 = a7;
  v67 = a5;
  swift_getAssociatedTypeWitness();
  v22 = sub_275288214();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v65[3] = v21;
  v93 = v21;
  v94 = v22;
  v65[2] = WitnessTable;
  v95 = WitnessTable;
  v96 = v24;
  v65[1] = v24;
  v25 = sub_275287E84();
  v26 = sub_275288534();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v65 - v30;
  v32 = *(v25 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v29);
  v36 = v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = v65 - v37;
  v73 = a6;
  v79 = v16;
  v78 = sub_275288064();
  v76 = *(v78 - 8);
  v39 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v84 = v65 - v40;
  (*(v27 + 16))(v31, v74, v26);
  if ((*(v32 + 48))(v31, 1, v25) == 1)
  {
    (*(v27 + 8))(v31, v26);
    sub_275287E74();
    v41 = v80;
    v42 = v77;
    v43 = v75;
    v75(v36);
    (*(v32 + 8))(v36, v25);
    v44 = swift_allocObject();
    v45 = v73;
    v44[2] = v67;
    v44[3] = v45;
    v46 = v82;
    v44[4] = v68;
    v44[5] = v46;
    v44[6] = v69;
    v44[7] = v43;
    v44[8] = v42;
    swift_unknownObjectRetain();

    v47 = v71;
    sub_275288114();

    (*(v81 + 8))(v41, v45);
    v91 = v46;
    v92 = MEMORY[0x277CE0790];
    v48 = v79;
    swift_getWitnessTable();
    v49 = v72;
    v50 = *(v72 + 16);
    v51 = v70;
    v50(v70, v47, v48);
    v52 = *(v49 + 8);
    v52(v47, v48);
    v50(v47, v51, v48);
    sub_2752816F8(v47, v45, v48);
    v52(v47, v48);
    v52(v51, v48);
  }

  else
  {
    v53 = *(v32 + 32);
    v65[0] = v38;
    v53(v38, v31, v25);
    v54 = v66;
    v75(v38);
    v55 = v80;
    v56 = v81;
    v57 = *(v81 + 16);
    v58 = v73;
    v57(v80, v54, v73);
    v59 = *(v56 + 8);
    v59(v54, v58);
    v57(v54, v55, v58);
    v46 = v82;
    v85 = v82;
    v86 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    sub_275281600(v54, v58);
    v59(v54, v58);
    v59(v55, v58);
    (*(v32 + 8))(v65[0], v25);
  }

  v89 = v46;
  v90 = MEMORY[0x277CE0790];
  v60 = swift_getWitnessTable();
  v87 = v46;
  v88 = v60;
  v61 = v78;
  swift_getWitnessTable();
  v62 = v76;
  v63 = v84;
  (*(v76 + 16))(v83, v84, v61);
  return (*(v62 + 8))(v63, v61);
}

uint64_t sub_2752815BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275281600(uint64_t a1, uint64_t a2)
{
  v4 = sub_275288044();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_275288054();
}

uint64_t sub_2752816F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_275288044();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_275288054();
}

uint64_t sub_2752817FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_275281858(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2752818A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2752818F8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  swift_getAssociatedTypeWitness();
  sub_275288214();
  swift_getAssociatedTypeWitness();
  sub_275288214();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_275287E84();
  sub_2752881F4();
  sub_275287F04();
  sub_275288064();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_275287D84();
  return swift_getWitnessTable();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_275281AF4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  return sub_275287E24();
}

uint64_t JUPresenterView.init(presenter:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a6;
  v17 = type metadata accessor for JUPresenterView();
  v18 = v17[16];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA170, &qword_275288F00);
  swift_storeEnumTagMultiPayload();
  v19 = a9 + v17[17];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v20 = a9 + v17[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809BA240, qword_2752890C0);
  sub_275288124();
  *v20 = a5;
  *(v20 + 8) = v28 & 1;
  *(v20 + 16) = a7;
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a10;
  v21[7] = a1;
  v21[8] = a2;
  result = sub_275287EA4();
  *a9 = result;
  *(a9 + 8) = v23;
  *(a9 + 16) = v24 & 1;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  return result;
}

uint64_t sub_275281CC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809BA240, qword_2752890C0);
  sub_275288124();
  return v1;
}

uint64_t sub_275281D20(uint64_t (*a1)(void))
{
  v2 = MEMORY[0x277C72160]();
  v4 = a1();
  objc_autoreleasePoolPop(v2);
  sub_275288314();
  swift_unknownObjectRetain();
  sub_275288294();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t JUPresenterView.init<A>(presenter:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a1;
  v18[7] = a2;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a3;
  v19[6] = a4;
  v20 = *(a8 + 8);
  v21 = type metadata accessor for _JUObservedPresenter();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  return JUPresenterView.init(presenter:content:)(sub_27528262C, v18, sub_2752826C4, v19, v21, a5, WitnessTable, v23, a9, a7);
}

uint64_t _JUObservedPresenter.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_275281F88(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - v14;
  v16 = *(v13 + 16);
  v17 = swift_unknownObjectRetain();
  a2(v17);
  swift_unknownObjectRelease();
  sub_275281B20(v12, a4, a5);
  v18 = *(v8 + 8);
  v18(v12, a4);
  sub_275281B20(v15, a4, a5);
  return (v18)(v15, a4);
}

uint64_t _JUObservedPresenter.base.getter()
{
  sub_27528462C();

  return swift_unknownObjectRetain();
}

uint64_t sub_275282104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_275287F94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA170, &qword_275288F00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - v12);
  sub_275280664(v2 + *(a1 + 64), &v17 - v12, &qword_2809BA170, &qword_275288F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2752853E8(v13, a2);
  }

  v15 = *v13;
  sub_2752884B4();
  v16 = sub_2752880A4();
  sub_275287DC4();

  sub_275287F84();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2752822FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA220, &qword_2752890B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_275280664(a1, &v6 - v4, &qword_2809BA220, &qword_2752890B0);
  return sub_275287F74();
}

uint64_t sub_2752823A8(uint64_t a1)
{
  v3 = sub_275287F94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 68);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (*(v8 + 17) == 1)
  {
    sub_2752853A8(*v8, v10);
  }

  else
  {

    sub_2752884B4();
    v12 = sub_2752880A4();
    sub_275287DC4();

    sub_275287F84();
    swift_getAtKeyPath();
    sub_275284648(v9, v10, v11, 0);
    (*(v4 + 8))(v7, v3);
    return v14[1];
  }

  return v9;
}

uint64_t sub_27528252C@<X0>(uint64_t a1@<X8>)
{
  result = sub_275287F44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_27528255C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_2752853A8(*a1, *(a1 + 8));
  return sub_275287F54();
}

uint64_t sub_2752825AC()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_2752825E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 64);
  return sub_275281D20(*(v0 + 56));
}

uint64_t sub_2752825F4()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_27528262C()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v2 + 8);
  type metadata accessor for _JUObservedPresenter();
  v6 = v3();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t sub_27528268C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_2752826EC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BA390, &qword_275289168);
  sub_275288134();
  return v4;
}

uint64_t sub_275282758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 72));
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BA390, &qword_275289168);
  return sub_275288144();
}

uint64_t JUPresenterView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  v71 = sub_2752883C4();
  v70 = *(v71 - 8);
  v5 = *(v70 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v69 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(a1 - 1);
  v79 = *(v82 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v76 = a1 + 5;
  v59 = a1[3];
  v60 = *(v59 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_275287F04();
  v64 = *(v61 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v80 = &v57 - v14;
  v63 = sub_275287F04();
  v66 = *(v63 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  v81 = &v57 - v16;
  sub_275287ED4();
  v67 = sub_275287F04();
  v68 = *(v67 - 8);
  v17 = *(v68 + 64);
  v18 = MEMORY[0x28223BE20](v67);
  v62 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v57 - v20;
  v21 = v2[3];
  v22 = v2[4];
  v23 = *v3;
  v24 = v3[1];
  v25 = *(v3 + 16);
  v78 = v3;
  v26 = a1[2];
  v27 = a1[4];
  sub_275287EB4();
  v21();
  swift_unknownObjectRelease();
  v28 = v82;
  v29 = *(v82 + 16);
  v74 = v82 + 16;
  v77 = v29;
  v29(v10, v3, a1);
  v73 = *(v28 + 80);
  v30 = (v73 + 56) & ~v73;
  v31 = swift_allocObject();
  *&v32 = v27;
  *(&v32 + 1) = *v76;
  v75 = v32;
  *&v33 = v26;
  v34 = v59;
  *(&v33 + 1) = v59;
  v76 = v33;
  *(v31 + 16) = v33;
  *(v31 + 32) = v32;
  v35 = a1[6];
  *(v31 + 48) = v35;
  v36 = *(v28 + 32);
  v36(v31 + v30, v10, a1);
  v82 = v28 + 32;
  v37 = v58;
  sub_275288114();

  (*(v60 + 8))(v37, v34);
  v38 = v10;
  v77(v10, v78, a1);
  v39 = swift_allocObject();
  v40 = v75;
  *(v39 + 16) = v76;
  *(v39 + 32) = v40;
  *(v39 + 48) = v35;
  v36(v39 + v30, v10, a1);
  v87 = v35;
  v88 = MEMORY[0x277CE0790];
  v60 = MEMORY[0x277CDFAD8];
  v41 = v61;
  WitnessTable = swift_getWitnessTable();
  v43 = v80;
  sub_2752880E4();

  (*(v64 + 8))(v43, v41);
  v77(v38, v78, a1);
  v44 = swift_allocObject();
  v45 = v75;
  *(v44 + 16) = v76;
  *(v44 + 32) = v45;
  *(v44 + 48) = v35;
  v36(v44 + v30, v38, a1);
  v85 = WitnessTable;
  v86 = MEMORY[0x277CE0790];
  v46 = v63;
  v47 = swift_getWitnessTable();
  v48 = v69;
  sub_2752883A4();
  v49 = v62;
  v50 = v81;
  sub_275288104();

  (*(v70 + 8))(v48, v71);
  (*(v66 + 8))(v50, v46);
  v51 = sub_27528530C(&qword_2809BA180, MEMORY[0x277CDD8B0]);
  v83 = v47;
  v84 = v51;
  v52 = v67;
  v53 = swift_getWitnessTable();
  v54 = v65;
  sub_275281B20(v49, v52, v53);
  v55 = *(v68 + 8);
  v55(v49, v52);
  sub_275281B20(v54, v52, v53);
  return (v55)(v54, v52);
}

uint64_t sub_275282F88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_275287EF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA220, &qword_2752890B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v36 - v19;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v36[4] = a5;
  v36[5] = a6;
  v21 = type metadata accessor for JUPresenterView();
  sub_2752826EC(v21);
  if (v22)
  {
    sub_275282104(v21, v20);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA178, &qword_275288F38);
    v24 = (*(*(v23 - 8) + 48))(v20, 1, v23);
    if (v24 == 1)
    {
      sub_2752808D0(v20, &qword_2809BA220, &qword_2752890B0);
      v25 = 0;
    }

    else
    {
      MEMORY[0x277C71C30](v23);
      sub_2752808D0(v20, &qword_2809BA178, &qword_275288F38);
      v26 = sub_275287EE4();
      (*(v13 + 8))(v16, v12);
      v25 = v26;
    }

    sub_275282758(v25, v24 == 1, v21);
  }

  v27 = *a1;
  v28 = a1[1];
  v29 = *(a1 + 16);
  v30 = *(v21 + 16);
  v31 = *(v21 + 32);
  sub_275287EB4();
  sub_2752882B4();
  swift_unknownObjectRelease();
  v32 = *a1;
  v33 = a1[1];
  v34 = *(a1 + 16);
  sub_275287EB4();
  sub_2752882A4();
  return swift_unknownObjectRelease();
}

uint64_t sub_27528321C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA220, &qword_2752890B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v30 - v14;
  v30[0] = sub_275288304();
  v16 = *(v30[0] - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v30[0]);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = a2;
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = a5;
  v30[5] = a6;
  v20 = type metadata accessor for JUPresenterView();
  sub_2752826EC(v20);
  sub_275282104(v20, v15);
  sub_2752823A8(v20);
  sub_2752882F4();
  v21 = *a1;
  v22 = a1[1];
  v23 = *(a1 + 16);
  v24 = *(v20 + 16);
  v25 = *(v20 + 32);
  sub_275287EB4();
  sub_2752882D4();
  swift_unknownObjectRelease();
  v26 = *a1;
  v27 = a1[1];
  v28 = *(a1 + 16);
  sub_275287EB4();
  sub_2752882C4();
  swift_unknownObjectRelease();
  return (*(v16 + 8))(v19, v30[0]);
}

uint64_t sub_275283418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2C8, &qword_275289120);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2D0, &qword_275289128);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2D8, &qword_275289130);
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = sub_275288394();
  v6[18] = sub_275288384();
  v17 = sub_275288374();
  v6[19] = v17;
  v6[20] = v16;

  return MEMORY[0x2822009F8](sub_2752835F4, v17, v16);
}

uint64_t sub_2752835F4()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[10];
  (*(v0[12] + 104))(v0[13], *MEMORY[0x277D85778], v0[11]);
  sub_275288434();
  sub_2752883F4();
  v0[21] = 0;
  v4 = v0[17];
  v5 = sub_275288384();
  v0[22] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_27528372C;
  v8 = v0[10];
  v9 = v0[8];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 26, v5, v10, v9);
}

uint64_t sub_27528372C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_275283870, v5, v4);
}

uint64_t sub_275283870()
{
  if (*(v0 + 208) == 1)
  {
    v1 = *(v0 + 144);
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);

    (*(v7 + 8))(v6, v8);
    (*(v3 + 8))(v2, v4);

    v9 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_275283990, 0, 0);
}

uint64_t sub_275283990()
{
  v1 = *(v0 + 136);
  *(v0 + 192) = sub_275288384();
  v3 = sub_275288374();

  return MEMORY[0x2822009F8](sub_275283A1C, v3, v2);
}

uint64_t sub_275283A1C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  sub_2752842B4(v8);
  v0[25] = v2;
  if (v2)
  {

    JUMPOUT(0x277C722F0);
  }

  v9 = v0[19];
  v10 = v0[20];

  return MEMORY[0x2822009F8](sub_275283AFC, v9, v10);
}

uint64_t sub_275283AFC()
{
  v0[21] = v0[25];
  v1 = v0[17];
  v2 = sub_275288384();
  v0[22] = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_27528372C;
  v5 = v0[10];
  v6 = v0[8];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 26, v2, v7, v6);
}

uint64_t sub_275283BC0(uint64_t a1)
{
  v31 = a1;
  v1 = sub_2752881C4();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2752881E4();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2E0, &qword_275289138);
  v8 = *(v7 - 8);
  v30 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v9;
  v10 = sub_2752884E4();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275285144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2F0, &qword_275289140);
  v16 = *(v11 + 72);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_275288EB0;
  sub_2752884C4();
  sub_2752884D4();
  aBlock[0] = v18;
  sub_27528530C(&qword_2809BA2F8, MEMORY[0x277D85298]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA300, &unk_275289148);
  sub_275285354(&qword_2809BA308, &qword_2809BA300, &unk_275289148);
  sub_275288544();
  v19 = sub_2752884F4();
  (*(v12 + 8))(v15, v10);
  *(swift_allocObject() + 16) = v19;
  swift_unknownObjectRetain();
  v20 = v31;
  sub_2752883D4();
  swift_getObjectType();
  v21 = v29;
  (*(v8 + 16))(v29, v20, v7);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v22, v21, v7);
  aBlock[4] = sub_275285288;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275284198;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);
  v25 = v32;
  sub_2752881D4();
  v26 = v33;
  sub_2752841DC();
  sub_275288504();
  _Block_release(v24);
  (*(v36 + 8))(v26, v37);
  (*(v34 + 8))(v25, v35);

  sub_275288524();
  return swift_unknownObjectRelease();
}

uint64_t sub_2752840CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA388, &qword_275289160);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_2752883E4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_275284198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2752841DC()
{
  sub_2752881C4();
  sub_27528530C(&qword_2809BA370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA378, &qword_275289158);
  sub_275285354(&qword_2809BA380, &qword_2809BA378, &qword_275289158);
  return sub_275288544();
}

uint64_t sub_2752842B4(uint64_t *a1)
{
  v2 = type metadata accessor for JUPresenterView();
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  sub_275287EB4();
  sub_2752882E4();
  return swift_unknownObjectRelease();
}

uint64_t _JUObservedPresenter.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t _JUObservedPresenter.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2752843A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_275287E94();
  *a1 = result;
  return result;
}

uint64_t _JUObservedPresenter<>.viewWillDisappear(forReason:)()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  swift_unknownObjectRetain();
  sub_2752882D4();

  return swift_unknownObjectRelease();
}

uint64_t sub_2752844E8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = v2[2];
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  a2(v6, a1);

  return swift_unknownObjectRelease();
}

uint64_t _JUObservedPresenter.description.getter()
{
  v3 = v0[2];
  v1 = *(*v0 + 80);
  sub_275288644();
  return 0;
}

uint64_t sub_275284638(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_275284648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_275284654(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_275284654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2752846C8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(type metadata accessor for JUPresenterView() - 8);
  v8 = v1 + ((*(v7 + 80) + 56) & ~*(v7 + 80));

  return a1(v8, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_12Tm()
{
  v14 = *(v0 + 16);
  v15 = *(v0 + 32);
  v16 = *(v0 + 48);
  v1 = type metadata accessor for JUPresenterView();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80));
  sub_275284638(*v3, *(v3 + 8), *(v3 + 16));
  v4 = *(v3 + 32);

  v5 = (v3 + v1[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA170, &qword_275288F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA178, &qword_275288F38);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v7 = *v5;

      v8 = *(v5 + 1);

      v9 = *(v6 + 32);
      v10 = sub_275287EF4();
      (*(*(v10 - 8) + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v11 = *v5;
  }

  sub_275284648(*(v3 + v1[17]), *(v3 + v1[17] + 8), *(v3 + v1[17] + 16), *(v3 + v1[17] + 17));
  v12 = *(v3 + v1[18] + 16);

  return swift_deallocObject();
}

uint64_t sub_275284954()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = *(type metadata accessor for JUPresenterView() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_275284A68;

  return sub_275283418(v0 + v8, v2, v3, v4, v5, v6);
}

uint64_t sub_275284A68()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_275284B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

void sub_275284BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  sub_275287EC4();
  if (v3 <= 0x3F)
  {
    sub_275284EC4();
    if (v4 <= 0x3F)
    {
      sub_275284F5C(319, &qword_2809BA218, &qword_2809BA220, &qword_2752890B0, MEMORY[0x277CDF468]);
      if (v5 <= 0x3F)
      {
        sub_275284F5C(319, &qword_2809BA228, &qword_2809BA230, &qword_2752890B8, MEMORY[0x277CDF468]);
        if (v6 <= 0x3F)
        {
          sub_275284F5C(319, &qword_2809BA238, qword_2809BA240, qword_2752890C0, MEMORY[0x277CE10B8]);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_275284D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809BA188, &unk_275289088);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275284E14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809BA188, &unk_275289088);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_275284EC4()
{
  result = qword_2809BA210;
  if (!qword_2809BA210)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2809BA210);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_275284F5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_275285030(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  sub_275287F04();
  sub_275287F04();
  sub_275287ED4();
  sub_275287F04();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_27528530C(&qword_2809BA180, MEMORY[0x277CDD8B0]);
  return swift_getWitnessTable();
}

unint64_t sub_275285144()
{
  result = qword_2809BA2E8;
  if (!qword_2809BA2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BA2E8);
  }

  return result;
}

uint64_t sub_275285190()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2752851C8()
{
  v1 = *(v0 + 16);
  swift_getObjectType();
  return sub_275288514();
}

uint64_t sub_2752851F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2E0, &qword_275289138);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_275285288()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2E0, &qword_275289138) - 8) + 80);

  return sub_2752840CC();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27528530C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275285354(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2752853A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2752853E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA220, &qword_2752890B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275285470()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v5 - v2;
  swift_getAssociatedConformanceWitness();
  sub_275288324();
  return sub_27528602C(v3);
}

uint64_t static JUComponent.component(onSelectPerform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  return sub_2752855BC(a1, a2, a3);
}

uint64_t sub_2752855BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  *a3 = a1;
  a3[1] = a2;
  swift_getAssociatedConformanceWitness();
  sub_275288324();
  v11 = a3 + *(type metadata accessor for JUSelectableComponentWrapper() + 36);
  *&v11[*(sub_275288164() + 28)] = 0;
  return (*(v7 + 32))(v11, v10, AssociatedTypeWitness);
}

unint64_t sub_27528579C(uint64_t a1)
{
  result = sub_275284EC4();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    result = sub_275288164();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_275285840(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v9 + 80) & 0xF8;
  v13 = v12 | 7;
  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v12 + 23) & ~v13) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14)) == 0)
  {
LABEL_28:
    if ((v10 & 0x80000000) != 0)
    {
      v23 = *(v9 + 48);

      return v23((a1 + v13 + 16) & ~v13);
    }

    else
    {
      v22 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    LODWORD(v15) = *a1;
  }

  return v11 + (v15 | v21) + 1;
}

void sub_2752859DC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80) & 0xF8;
  v14 = v13 | 7;
  v15 = ((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = ((v13 + 23) & ~(v13 | 7)) + v15;
  if (v12 >= a3)
  {
    v19 = 0;
    v20 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = a3 - v12 + 1;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v10 & 0x80000000) != 0)
        {
          v23 = ((a1 + v14 + 16) & ~v14);
          if (v11 >= a2)
          {
            v26 = *(v9 + 56);

            v26(v23, a2);
          }

          else if (v15)
          {
            v24 = ~v11 + a2;
            v25 = ((a1 + v14 + 16) & ~v14);
            bzero(v23, v15);
            *v25 = v24;
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          *a1 = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (v16)
  {
    v22 = ~v12 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t sub_275285C04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_275288164();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_275285C90(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFE)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      if ((v22 + 1) >= 2)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_275285E28(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 < 0x7FFFFFFE)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v21 = 0;
      *v21 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v21 = a2;
    }
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

uint64_t sub_27528602C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v3 + 16))(&v7 - v5, a1, AssociatedTypeWitness);
  sub_275288124();
  return (*(v3 + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_27528613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a3;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_2752881B4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &AssociatedTypeWitness - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &AssociatedTypeWitness - v12;
  v14 = type metadata accessor for JUComponentView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &AssociatedTypeWitness - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &AssociatedTypeWitness - v20;
  (*(v10 + 16))(v13, v26, v9);
  sub_275288164();
  sub_275288154();
  JUComponentView.init(presenting:for:with:)(v13, v8, v19);
  WitnessTable = swift_getWitnessTable();
  sub_275281B20(v19, v14, WitnessTable);
  v23 = *(v15 + 8);
  v23(v19, v14);
  sub_275281B20(v21, v14, WitnessTable);
  return (v23)(v21, v14);
}

uint64_t sub_2752863EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821E7CE8](a1, WitnessTable);
}

uint64_t sub_2752864BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v55 = a3;
  v5 = sub_275287F24();
  v44 = v5;
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v52 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = a2;
  v50 = type metadata accessor for JUComponentView();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_275288184();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v45 = &v40 - v16;
  v17 = swift_getWitnessTable();
  v43 = v17;
  v42 = sub_275286EE8(&qword_2809BA568, MEMORY[0x277CDDB18]);
  v60 = v14;
  v61 = v5;
  v62 = v17;
  v63 = v42;
  v46 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  v47 = OpaqueTypeMetadata2;
  v48 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v41 = &v40 - v24;
  v25 = v9;
  v26 = *(v9 + 16);
  v27 = v13;
  v26(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v13);
  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v11;
  *(v29 + 24) = v12;
  (*(v25 + 32))(v29 + v28, &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v56 = v11;
  v57 = v12;
  v58 = v53;
  v59 = v3;
  v30 = v45;
  sub_275288174();
  v31 = v52;
  sub_275287F14();
  v32 = v44;
  v33 = v43;
  v34 = v42;
  sub_2752880D4();
  (*(v54 + 8))(v31, v32);
  (*(v51 + 8))(v30, v14);
  v60 = v14;
  v61 = v32;
  v62 = v33;
  v63 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v41;
  v37 = v47;
  sub_275281B20(v23, v47, OpaqueTypeConformance2);
  v38 = *(v48 + 8);
  v38(v23, v37);
  sub_275281B20(v36, v37, OpaqueTypeConformance2);
  return (v38)(v36, v37);
}

uint64_t sub_2752869A4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v10 - v4;
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(type metadata accessor for JUSelectableComponentWrapper() + 36);
  sub_275288164();
  sub_275288134();
  v7(v5);
  return sub_275288144();
}

uint64_t sub_275286A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_2752881B4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &AssociatedTypeWitness - v5;
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &AssociatedTypeWitness - v10;
  v12 = type metadata accessor for JUComponentView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &AssociatedTypeWitness - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &AssociatedTypeWitness - v18;
  (*(v8 + 16))(v11, v24, v7);
  LODWORD(v7) = *(type metadata accessor for JUSelectableComponentWrapper() + 36);
  sub_275288164();
  sub_275288154();
  JUComponentView.init(presenting:for:with:)(v11, v6, v17);
  WitnessTable = swift_getWitnessTable();
  sub_275281B20(v17, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v17, v12);
  sub_275281B20(v19, v12, WitnessTable);
  return (v21)(v19, v12);
}

uint64_t sub_275286D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821E7CE8](a1, WitnessTable);
}

uint64_t sub_275286E84(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_275286EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275286F30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for JUSelectableComponentWrapper() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + v4 + 8);

  v7 = v0 + v4 + v3[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v7, AssociatedTypeWitness);
  v9 = *(v7 + *(sub_275288164() + 28));

  return swift_deallocObject();
}

uint64_t sub_275287064()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for JUSelectableComponentWrapper() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2752869A4(v4);
}

uint64_t sub_2752870E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_275286A9C(v1[4], v1[5], a1);
}

uint64_t get_witness_table_5JetUI11JUComponentRzl01_ab6_SwiftB00C7Wrapper33_149180D85663AE4EE2CA26AC2F643FEFLLVyxG01_a7Engine_dB09ComponentHPyHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_27528716C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for JUComponentView();
  swift_getWitnessTable();
  sub_275288184();
  sub_275287F24();
  swift_getWitnessTable();
  sub_275286EE8(&qword_2809BA568, MEMORY[0x277CDDB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t ShelfCollection.init<A>(shelvesOf:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275288214();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809BA570, &qword_275289390);
  WitnessTable = swift_getWitnessTable();
  v34 = sub_275287540();
  v13 = sub_275287E84();
  v31 = sub_275287E64();
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v23 = a6;
  v24 = a8;
  v25 = a9;
  KeyPath = swift_getKeyPath();
  v14 = sub_275288364();
  v15 = swift_getWitnessTable();
  v17 = sub_2752875F8(sub_275287CFC, v22, v14, a7, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);

  v31 = v17;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a4;
  v18[7] = a5;
  sub_275288364();
  swift_getWitnessTable();
  sub_275287D74();
  return (*(*(v13 - 8) + 8))(a1, v13);
}

unint64_t sub_275287540()
{
  result = qword_2809BA578;
  if (!qword_2809BA578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809BA570, &qword_275289390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BA578);
  }

  return result;
}

uint64_t sub_2752875A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 24);
  sub_275288214();
  return sub_275288204();
}

__n128 sub_2752875EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2752875F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_275288484();
  if (!v26)
  {
    return sub_275288354();
  }

  v48 = v26;
  v52 = sub_2752885E4();
  v39 = sub_2752885F4();
  sub_2752885C4();
  result = sub_275288474();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2752884A4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2752885D4();
      result = sub_275288494();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_275287A18()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_275287A50(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return v2(*a1);
}

uint64_t ShelfCollection.init<A, B>(shelvesOf:spacing:shelfContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275288214();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809BA570, &qword_275289390);
  WitnessTable = swift_getWitnessTable();
  v31 = sub_275287540();
  v13 = sub_275287E84();
  v28 = sub_275287E64();
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  KeyPath = swift_getKeyPath();
  v14 = sub_275288364();
  v15 = swift_getWitnessTable();
  v17 = sub_2752875F8(sub_275287CD0, v19, v14, a6, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);

  v28 = v17;
  sub_275288364();
  swift_getWitnessTable();
  sub_275287D64();
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t sub_275287C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 32);
  sub_275288214();
  return sub_275288204();
}