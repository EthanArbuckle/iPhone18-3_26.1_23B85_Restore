uint64_t sub_265CB9320(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_265CB9368(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x266770250](a1, a2, v7);
      sub_265C932E0(0, &qword_28003E3E8, 0x277D6EE60);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_265C932E0(0, &qword_28003E3E8, 0x277D6EE60);
    if (sub_265D5A170() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_265D5A180();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_265D5A0C0();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_265D5A0D0();

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

uint64_t sub_265CB958C(uint64_t a1)
{
  v2 = sub_265D583A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_265CB5E54(&qword_28003E460, MEMORY[0x277D51550]);
  result = MEMORY[0x266770110](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_265CB6F1C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_265CB9728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_265CB9734(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 72) & 1;
  if ((*(v1 + 72) & 0xC0) != 0x40)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_265D58330();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265CB98E8()
{
  v1 = *(sub_265D58330() - 8);
  v2 = *(*(v0 + 16) + 96);
  v4 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3A0, &qword_265D5B8D8);
  return sub_265D58CA0();
}

uint64_t sub_265CB99A4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E248, &unk_265D5B5D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265C9EBD8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_265CB9A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 72);
  *(a1 + 40) = v7;
  return sub_265CB5DE4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_265CB9AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v52 = a3;
  v66 = a2;
  v65 = sub_265D57E50();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_265D59900();
  v9 = *(v74 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v74);
  v63 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = v50 - v13;
  v62 = sub_265D583A0();
  v14 = *(v62 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v62);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v18)
  {
    v50[1] = v4;
    v76 = MEMORY[0x277D84F90];
    sub_265CF56C8(0, v18, 0);
    v75 = v76;
    v20 = -1 << *(a1 + 32);
    v72 = a1 + 56;
    result = sub_265D5A120();
    v21 = result;
    v22 = 0;
    v55 = (v6 + 8);
    v56 = v9 + 16;
    v60 = v9;
    v71 = v9 + 8;
    v54 = v14 + 32;
    v51 = a1 + 64;
    v61 = a1;
    v58 = v17;
    v59 = v14;
    v57 = v18;
    while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(a1 + 32))
    {
      v24 = v21 >> 6;
      if ((*(v72 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
      {
        goto LABEL_24;
      }

      v25 = *(a1 + 36);
      v67 = v22;
      v68 = v25;
      v26 = v60;
      v27 = *(a1 + 48) + *(v60 + 72) * v21;
      v28 = v73;
      v29 = v74;
      (*(v60 + 16))(v73, v27, v74);
      v30 = v64;
      sub_265D598E0();
      v31 = sub_265D57E40();
      v69 = v32;
      v70 = v31;
      (*v55)(v30, v65);
      v33 = v63;
      sub_265D597E0();
      v34 = MEMORY[0x26676F990](v33, v28);
      v35 = *(v26 + 8);
      v35(v33, v29);
      if (v34)
      {
      }

      v37 = v58;
      v36 = v59;
      sub_265D58340();
      v35(v73, v74);
      v38 = v75;
      v76 = v75;
      v40 = *(v75 + 16);
      v39 = *(v75 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_265CF56C8(v39 > 1, v40 + 1, 1);
        v38 = v76;
      }

      *(v38 + 16) = v40 + 1;
      v41 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v75 = v38;
      result = (*(v36 + 32))(v38 + v41 + *(v36 + 72) * v40, v37, v62);
      a1 = v61;
      v23 = 1 << *(v61 + 32);
      v42 = v57;
      if (v21 >= v23)
      {
        goto LABEL_25;
      }

      v43 = *(v72 + 8 * v24);
      if ((v43 & (1 << v21)) == 0)
      {
        goto LABEL_26;
      }

      if (v68 != *(v61 + 36))
      {
        goto LABEL_27;
      }

      v44 = v43 & (-2 << (v21 & 0x3F));
      if (v44)
      {
        v23 = __clz(__rbit64(v44)) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v45 = v24 << 6;
        v46 = v24 + 1;
        v47 = (v51 + 8 * v24);
        while (v46 < (v23 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            result = sub_265CB9728(v21, v68, 0);
            v23 = __clz(__rbit64(v48)) + v45;
            goto LABEL_4;
          }
        }

        result = sub_265CB9728(v21, v68, 0);
      }

LABEL_4:
      v22 = v67 + 1;
      v21 = v23;
      if (v67 + 1 == v42)
      {
        return v75;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_67Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_265CBA164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_265CBA1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265CBA26C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 48); ; i += 3)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;
      swift_unknownObjectRetain();
      v5(&v8);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265CBA34C(uint64_t a1)
{
  v2 = v1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v4 = *(v109 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v109);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v92 - v9;
  v117 = sub_265D58130();
  v108 = *(v117 - 8);
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v117);
  v112 = v12;
  v116 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
  v104 = *(v105 - 8);
  v13 = *(v104 + 64);
  v14 = MEMORY[0x28223BE20](v105);
  v102 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v15;
  MEMORY[0x28223BE20](v14);
  v103 = &v92 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v115 = *(v113 - 8);
  v17 = *(v115 + 64);
  v18 = MEMORY[0x28223BE20](v113);
  v111 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v110 = &v92 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v106 = &v92 - v22;
  MEMORY[0x28223BE20](v21);
  v107 = &v92 - v23;
  v24 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_265C9D5CC();
  v118 = a1;
  v25 = sub_265D580D0();
  v27 = v26;
  v114 = v2;
  v28 = v2[20];
  v29 = off_287780190[0];
  type metadata accessor for SessionConnectionPool();
  if (v29())
  {
    v30 = *__swift_project_boxed_opaque_existential_1(v114 + 7, v114[10]);

    sub_265CB36F0(v10);
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = v27;
    v32 = v109;
    (*(v4 + 16))(v8, v10, v109);
    v33 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v34 = (v100 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    (*(v4 + 32))(v35 + v33, v8, v32);
    v36 = (v35 + v34);
    *v36 = sub_265CC4B48;
    v36[1] = v31;
    v37 = v110;
    sub_265D58930();
    (*(v4 + 8))(v10, v32);
  }

  else
  {
    v37 = v110;
    sub_265D58970();
  }

  v38 = v114;
  v39 = *__swift_project_boxed_opaque_existential_1(v114 + 2, v114[5]);
  v120[3] = type metadata accessor for MultiUserIdentityProvider(0);
  v120[4] = &off_28777ADE0;
  v120[0] = v39;
  sub_265C97624(v120, v119);
  v40 = swift_allocObject();
  sub_265C033C4(v119, v40 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_265CC46E0;
  *(v41 + 24) = v40;
  v42 = v115;
  v43 = *(v115 + 16);
  v99 = v115 + 16;
  v100 = v43;
  v44 = v111;
  v45 = v113;
  v43(v111, v37, v113);
  v46 = *(v42 + 80);
  v98 = v46;
  v47 = v37;
  v48 = (v46 + 16) & ~v46;
  v95 = v48;
  v49 = (v17 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = v49;
  v50 = swift_allocObject();
  v51 = v38;
  v52 = *(v42 + 32);
  v94 = v42 + 32;
  v96 = v52;
  v52(v50 + v48, v44, v45);
  v53 = (v50 + v49);
  *v53 = sub_265CC4B4C;
  v53[1] = v41;
  sub_265D583A0();
  v54 = v103;
  sub_265D58930();
  v55 = *(v42 + 8);
  v115 = v42 + 8;
  v97 = v55;
  v55(v47, v45);
  v56 = v108;
  v57 = *(v108 + 16);
  v109 = v108 + 16;
  v110 = v57;
  v58 = v116;
  v59 = v117;
  (v57)(v116, v118, v117);
  v60 = *(v56 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v51;
  v108 = *(v56 + 32);
  (v108)(v61 + ((v60 + 24) & ~v60), v58, v59);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_265CC47E8;
  *(v62 + 24) = v61;
  v63 = v104;
  v64 = v102;
  v65 = v105;
  (*(v104 + 16))(v102, v54, v105);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = (v101 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v63 + 32))(v68 + v66, v64, v65);
  v69 = (v68 + v67);
  *v69 = sub_265CC4B50;
  v69[1] = v62;
  v70 = v114;

  v71 = v106;
  sub_265D58930();
  (*(v63 + 8))(v54, v65);
  v72 = v116;
  v73 = v117;
  (v110)(v116, v118, v117);
  v112 += (v60 + 16) & ~v60;
  v105 = (v60 + 16) & ~v60;
  v74 = (v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (v108)(v75 + ((v60 + 16) & ~v60), v72, v73);
  *(v75 + v74) = v70;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_265CC4918;
  *(v76 + 24) = v75;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_265CC49A4;
  *(v77 + 24) = v76;
  v78 = v111;
  v79 = v113;
  v100(v111, v71, v113);
  v80 = v93;
  v81 = swift_allocObject();
  v96(v81 + v95, v78, v79);
  v82 = (v81 + v80);
  *v82 = sub_265CC49C0;
  v82[1] = v77;

  v83 = v107;
  sub_265D58930();
  v84 = v71;
  v85 = v97;
  v97(v84, v79);
  v86 = v116;
  v87 = v117;
  (v110)(v116, v118, v117);
  v88 = swift_allocObject();
  (v108)(v88 + v105, v86, v87);
  v89 = sub_265D58960();
  v90 = swift_allocObject();
  *(v90 + 16) = sub_265CC4A90;
  *(v90 + 24) = v88;

  v89(sub_265CA4BF4, v90);

  return v85(v83, v79);
}

uint64_t sub_265CBAE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v11);

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_265CBAFBC(uint64_t *a1)
{
  v127 = sub_265D59310();
  v126 = *(v127 - 8);
  v2 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v129 = v122 - v6;
  v132 = sub_265D58300();
  v130 = *(v132 - 8);
  v7 = *(v130 + 64);
  v8 = MEMORY[0x28223BE20](v132);
  v124 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v122 - v11;
  MEMORY[0x28223BE20](v10);
  v131 = v122 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2E8, &qword_265D5B670);
  v147 = *(v14 - 8);
  v148 = v14;
  v15 = *(v147 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v144 = v17;
  v145 = v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v146 = v122 - v18;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v138 = *(v140 - 8);
  v19 = *(v138 + 64);
  v20 = MEMORY[0x28223BE20](v140);
  v135 = v21;
  v136 = v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = v122 - v22;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v154 = *(v151 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x28223BE20](v151);
  v25 = v122 - v24;
  v26 = sub_265D58AC0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v141 = v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v30;
  MEMORY[0x28223BE20](v29);
  v32 = v122 - v31;
  v149 = sub_265D59DE0();
  v33 = *(v149 - 1);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v149);
  v128 = v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = v122 - v37;
  sub_265D59610();
  v39 = *(v27 + 16);
  v152 = a1;
  v134 = v27 + 16;
  v133 = v39;
  v39(v32, a1, v26);
  v40 = sub_265D59DD0();
  v41 = sub_265D5A080();
  v42 = os_log_type_enabled(v40, v41);
  v123 = v12;
  v142 = v27;
  v143 = v26;
  v153 = v25;
  v122[1] = v33;
  if (v42)
  {
    v43 = v33;
    v44 = swift_slowAlloc();
    v45 = v26;
    v46 = swift_slowAlloc();
    v155 = v46;
    *v44 = 136315138;
    v47 = sub_265D589D0();
    v48 = v27;
    v50 = v49;
    (*(v48 + 8))(v32, v45);
    v51 = sub_265CF4FFC(v47, v50, &v155);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_265C01000, v40, v41, "System: Activated session with identifier: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266770CF0](v46, -1, -1);
    MEMORY[0x266770CF0](v44, -1, -1);

    v52 = *(v43 + 8);
  }

  else
  {

    (*(v27 + 8))(v32, v26);
    v52 = *(v33 + 8);
  }

  v52(v38, v149);
  v53 = sub_265D589D0();
  v54 = v150;
  v55 = v150[31];
  v150[30] = v53;
  v54[31] = v56;

  __swift_project_boxed_opaque_existential_1(v54 + 2, v54[5]);
  v57 = off_28777ADF0;
  type metadata accessor for MultiUserIdentityProvider(0);
  v58 = v153;
  v57();
  v59 = v151;
  v60 = sub_265D58960();
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  v60(sub_265CA4BF4, v61);

  v62 = v154 + 8;
  v63 = *(v154 + 8);
  (v63)(v58, v59);
  v64 = v54[20];
  v65 = off_287780190[0];
  type metadata accessor for SessionConnectionPool();
  if (v65())
  {
    v66 = *__swift_project_boxed_opaque_existential_1(v54 + 7, v54[10]);
    v149 = v63;
    v67 = v137;
    sub_265CB36F0(v137);
    v68 = swift_allocObject();
    *(v68 + 16) = sub_265CC4414;
    *(v68 + 24) = v54;
    v69 = v138;
    v70 = v136;
    v71 = v140;
    (*(v138 + 16))(v136, v67, v140);
    v72 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v73 = (v135 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    (*(v69 + 32))(v74 + v72, v70, v71);
    v75 = (v74 + v73);
    *v75 = sub_265CC4430;
    v75[1] = v68;

    v76 = v153;
    sub_265D58930();
    (*(v69 + 8))(v67, v71);
    v77 = v151;
    v78 = sub_265D58960();
    v79 = swift_allocObject();
    *(v79 + 16) = sub_265CBE23C;
    *(v79 + 24) = 0;
    v78(sub_265CA4BF4, v79);

    (v149)(v76, v77);
    v80 = *__swift_project_boxed_opaque_existential_1(v54 + 7, v54[10]);
    v81 = v146;
    sub_265CB4124(v146);
    v82 = v141;
    v83 = v143;
    v133(v141, v152, v143);
    v84 = v142;
    v85 = (*(v142 + 80) + 16) & ~*(v142 + 80);
    v86 = (v139 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    (*(v84 + 32))(v87 + v85, v82, v83);
    *(v87 + v86) = v54;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_265CC447C;
    *(v88 + 24) = v87;
    v154 = v62;
    v89 = v77;
    v91 = v147;
    v90 = v148;
    v92 = v145;
    (*(v147 + 16))(v145, v81, v148);
    v93 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v94 = (v144 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    (*(v91 + 32))(v95 + v93, v92, v90);
    v96 = (v95 + v94);
    *v96 = sub_265CC4570;
    v96[1] = v88;

    v97 = v153;
    sub_265D58930();
    (*(v91 + 8))(v81, v90);
    v98 = sub_265D58960();
    v99 = swift_allocObject();
    *(v99 + 16) = sub_265CBE6CC;
    *(v99 + 24) = 0;
    v98(sub_265CA4BF4, v99);

    return (v149)(v97, v89);
  }

  else
  {
    v101 = v129;
    sub_265D58980();
    v102 = v130;
    v103 = v132;
    if ((*(v130 + 48))(v101, 1, v132) == 1)
    {
      return sub_265CA4AE8(v101, &qword_28003E200, &unk_265D5B580);
    }

    else
    {
      v104 = v131;
      (*(v102 + 32))(v131, v101, v103);
      v105 = v128;
      sub_265D59610();
      v106 = v123;
      v154 = *(v102 + 16);
      (v154)(v123, v104, v103);
      v107 = sub_265D59DD0();
      v108 = sub_265D5A080();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = v106;
        v110 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v155 = v152;
        *v110 = 136315138;
        sub_265CC4B00(&qword_28003E320, MEMORY[0x277D50FB0]);
        v111 = sub_265D5A3B0();
        v113 = v112;
        v153 = *(v102 + 8);
        v153(v109, v132);
        v114 = sub_265CF4FFC(v111, v113, &v155);
        v103 = v132;

        *(v110 + 4) = v114;
        _os_log_impl(&dword_265C01000, v107, v108, "System: publishing MultiUserSessionUpdated after activation %s", v110, 0xCu);
        v115 = v152;
        __swift_destroy_boxed_opaque_existential_1Tm(v152);
        MEMORY[0x266770CF0](v115, -1, -1);
        MEMORY[0x266770CF0](v110, -1, -1);

        v116 = v128;
      }

      else
      {

        v153 = *(v102 + 8);
        v153(v106, v103);
        v116 = v105;
      }

      v52(v116, v149);
      v118 = v150[27];
      v117 = v150[28];
      swift_getObjectType();
      v119 = v131;
      (v154)(v124, v131, v103);
      v120 = v125;
      sub_265D59300();
      v121 = v127;
      sub_265D58ED0();
      (*(v126 + 8))(v120, v121);
      return (v153)(v119, v103);
    }
  }
}

uint64_t sub_265CBBEE8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - v7;
  v8 = sub_265D58AC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D59DE0();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v17 = *(v9 + 16);
  v43 = a1;
  v17(v12, a1, v8);
  v18 = sub_265D59DD0();
  v19 = sub_265D5A080();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v1;
    v23 = v22;
    v45 = v22;
    *v21 = 136315138;
    v24 = sub_265D589D0();
    v39 = v5;
    v26 = v25;
    (*(v9 + 8))(v12, v8);
    v27 = sub_265CF4FFC(v24, v26, &v45);
    v5 = v39;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_265C01000, v18, v19, "Observed session deactivation %s. Leaving activity.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v28 = v23;
    v2 = v38;
    MEMORY[0x266770CF0](v28, -1, -1);
    v29 = v21;
    v4 = v40;
    MEMORY[0x266770CF0](v29, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*(v41 + 8))(v16, v42);
  v30 = sub_265D589D0();
  sub_265CBE8E4(v30, v31);

  v32 = v2[31];
  v2[30] = 0;
  v2[31] = 0;

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v33 = off_28777ADF0;
  type metadata accessor for MultiUserIdentityProvider(0);
  v34 = v44;
  v33();
  v35 = sub_265D58960();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v35(sub_265CA442C, v36);

  return (*(v5 + 8))(v34, v4);
}

uint64_t sub_265CBC32C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58330();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_265D59DD0();
  v14 = sub_265D5A080();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a1;
    v16 = v15;
    v29 = swift_slowAlloc();
    v32 = v29;
    *v16 = 136446210;
    sub_265CC4B00(&qword_28003E378, MEMORY[0x277D51510]);
    v17 = sub_265D5A3B0();
    v28 = v9;
    v18 = v2;
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = sub_265CF4FFC(v17, v20, &v32);
    v2 = v18;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_265C01000, v13, v14, "Broadcasting activity received: %{public}s", v16, 0xCu);
    v22 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x266770CF0](v22, -1, -1);
    v23 = v16;
    a1 = v30;
    MEMORY[0x266770CF0](v23, -1, -1);

    (*(v31 + 8))(v12, v28);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v31 + 8))(v12, v9);
  }

  v24 = *(v2 + 160);
  v25 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v26 = v25();
  MEMORY[0x28223BE20](v26);
  *(&v28 - 2) = a1;
  sub_265CBA26C(sub_265CC4398, (&v28 - 4), v26);
}

uint64_t sub_265CBC6E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58300();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_265D59DD0();
  v14 = sub_265D5A080();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a1;
    v16 = v15;
    v29 = swift_slowAlloc();
    v32 = v29;
    *v16 = 136446210;
    sub_265CC4B00(&qword_28003E320, MEMORY[0x277D50FB0]);
    v17 = sub_265D5A3B0();
    v28 = v9;
    v18 = v2;
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = sub_265CF4FFC(v17, v20, &v32);
    v2 = v18;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_265C01000, v13, v14, "Broadcasting multi-user session updated: %{public}s", v16, 0xCu);
    v22 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x266770CF0](v22, -1, -1);
    v23 = v16;
    a1 = v30;
    MEMORY[0x266770CF0](v23, -1, -1);

    (*(v31 + 8))(v12, v28);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v31 + 8))(v12, v9);
  }

  v24 = *(v2 + 160);
  v25 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v26 = v25();
  MEMORY[0x28223BE20](v26);
  *(&v28 - 2) = a1;
  sub_265CBA26C(sub_265CC4350, (&v28 - 4), v26);
}

uint64_t sub_265CBCAA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58330();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = sub_265D58310();
  v18 = *(v1 + 248);
  if (!v18)
  {

    goto LABEL_10;
  }

  if (v16 != *(v1 + 240) || v18 != v17)
  {
    v19 = sub_265D5A3C0();

    if (v19)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_265D59610();
    (*(v5 + 16))(v8, a1, v4);

    v27 = sub_265D59DD0();
    v28 = sub_265D5A070();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v29 = 136446466;
      v30 = sub_265D58310();
      v39 = v9;
      v32 = v31;
      (*(v5 + 8))(v8, v4);
      v33 = sub_265CF4FFC(v30, v32, &v42);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v41 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v34 = sub_265D5A0E0();
      v36 = sub_265CF4FFC(v34, v35, &v42);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_265C01000, v27, v28, "Remote catchup request session %{public}s doesn't match local session %{public}s", v29, 0x16u);
      v37 = v38;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v37, -1, -1);
      MEMORY[0x266770CF0](v29, -1, -1);

      return (*(v40 + 8))(v13, v39);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return (*(v40 + 8))(v13, v9);
    }
  }

LABEL_7:
  sub_265D59610();
  v20 = sub_265D59DD0();
  v21 = sub_265D5A080();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_265C01000, v20, v21, "Broadcasting server-side catchup request", v22, 2u);
    MEMORY[0x266770CF0](v22, -1, -1);
  }

  (*(v40 + 8))(v15, v9);
  v23 = *(v2 + 160);
  v24 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v25 = v24();
  MEMORY[0x28223BE20](v25);
  *(&v38 - 2) = a1;
  sub_265CBA26C(sub_265CC4308, (&v38 - 4), v25);
}

uint64_t *sub_265CBCF48()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  v2 = v0[20];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  v3 = v0[27];
  swift_unknownObjectRelease();
  v4 = v0[29];

  v5 = v0[31];

  return v0;
}

uint64_t sub_265CBCFA8()
{
  sub_265CBCF48();

  return swift_deallocClassInstance();
}

uint64_t sub_265CBD000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a1;
  v57 = a2;
  v49 = sub_265D58330();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
  v7 = *(v53 - 8);
  v52 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](v53);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v59 = *(v55 - 8);
  v12 = v59[8];
  v13 = MEMORY[0x28223BE20](v55);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v54 = &v49 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v60 = &v49 - v18;
  v19 = *__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_265C9D03C(v11);
  v20 = v49;
  (*(v5 + 16))(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v49);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  *(v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_265CC3AA0;
  *(v23 + 24) = v22;
  v24 = v50;
  v25 = v11;
  v26 = v11;
  v27 = v53;
  (*(v7 + 16))(v50, v26, v53);
  v28 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v7 + 32))(v30 + v28, v24, v27);
  v31 = (v30 + v29);
  *v31 = sub_265CC3AE0;
  v31[1] = v23;

  sub_265D58930();
  (*(v7 + 8))(v25, v27);
  v32 = *__swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  v33 = v58;
  sub_265CB1200(v51, v58);
  v34 = v59;
  v35 = v59[2];
  v36 = v54;
  v37 = v33;
  v38 = v55;
  v35(v54, v37, v55);
  v39 = v34;
  v40 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v41 = swift_allocObject();
  v42 = v39[4];
  v42(v41 + v40, v36, v38);
  v43 = v56;
  v35(v56, v60, v38);
  v44 = (v40 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v42(v45 + v40, v43, v38);
  v46 = (v45 + v44);
  *v46 = sub_265CC40D0;
  v46[1] = v41;
  sub_265D58930();
  v47 = v59[1];
  v47(v58, v38);
  return (v47)(v60, v38);
}

uint64_t sub_265CBD560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v48 = sub_265D58EB0();
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D59DE0();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D58560();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  sub_265D58350();
  sub_265D58310();
  sub_265D5A030();
  v52 = 1;
  sub_265D58540();
  sub_265D59610();
  v17 = v10[2];
  v45 = v16;
  v18 = v16;
  v19 = v8;
  v17(v14, v18, v9);
  v20 = sub_265D59DD0();
  v21 = sub_265D5A080();
  v22 = os_log_type_enabled(v20, v21);
  v50 = v9;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v51 = v24;
    *v23 = 136315138;
    sub_265CC4B00(&qword_28003E350, MEMORY[0x277D52470]);
    v25 = sub_265D5A3B0();
    v26 = v9;
    v28 = v27;
    v29 = v10[1];
    v41 = (v10 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42 = v29;
    v29(v14, v26);
    v30 = sub_265CF4FFC(v25, v28, &v51);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_265C01000, v20, v21, "System: Broadcasting %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266770CF0](v24, -1, -1);
    MEMORY[0x266770CF0](v23, -1, -1);
  }

  else
  {

    v31 = v10[1];
    v41 = (v10 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42 = v31;
    v31(v14, v9);
  }

  (*(v43 + 8))(v19, v44);
  v32 = *(v49 + 96);
  v44 = *(v49 + 104);
  swift_getObjectType();
  v33 = *MEMORY[0x277D4E0D0];
  v35 = v46;
  v34 = v47;
  v36 = *(v46 + 104);
  v37 = v48;
  v36(v47, v33, v48);
  v38 = v45;
  sub_265D58C70();
  v39 = *(v35 + 8);
  v39(v34, v37);
  v36(v34, v33, v37);
  sub_265CBDA40(v34, v38, MEMORY[0x277D52470], MEMORY[0x277D52460], sub_265CC4B54);
  v39(v34, v37);
  return v42(v38, v50);
}

uint64_t sub_265CBDA40(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t a4, uint64_t a5)
{
  v38 = a5;
  v42 = a2;
  v43 = a4;
  v40 = a1;
  v41 = a3;
  v6 = sub_265D58EB0();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D59DE0();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = *(v5 + 160);
  v16 = off_287780190[0];
  v17 = type metadata accessor for SessionConnectionPool();
  result = v16();
  if (!result)
  {
    v35[0] = v17;
    v35[1] = v15;
    v36 = v14;
    v37 = v10;
    v19 = v39;
    v20 = v40;
    v41(0);
    v42 = sub_265D586A0();
    v43 = v21;
    sub_265D59610();
    v22 = v9;
    v23 = v20;
    v24 = v6;
    (*(v19 + 16))(v9, v20, v6);
    v25 = sub_265D59DD0();
    v26 = sub_265D5A080();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = sub_265D58EA0();
      (*(v19 + 8))(v22, v24);
      *(v27 + 4) = v28;
      _os_log_impl(&dword_265C01000, v25, v26, "Proxying from tv event %ld", v27, 0xCu);
      v23 = v20;
      MEMORY[0x266770CF0](v27, -1, -1);
    }

    else
    {
      (*(v19 + 8))(v22, v6);
    }

    v30 = v37;
    v29 = v38;
    v31 = v44;

    (*(v31 + 8))(v36, v30);
    v32 = off_2877801D8();
    MEMORY[0x28223BE20](v32);
    v33 = v42;
    v34 = v43;
    v35[-4] = v23;
    v35[-3] = v33;
    v35[-2] = v34;
    sub_265CBA26C(v29, &v35[-6], v32);

    return sub_265C9889C(v33, v34);
  }

  return result;
}

uint64_t sub_265CBDE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D59310();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265D58300();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = sub_265D59DE0();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v18 = *(v8 + 16);
  v44 = a1;
  v19 = v7;
  v39 = v18;
  v18(v13, a1, v7);
  v20 = sub_265D59DD0();
  v21 = sub_265D5A080();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = a2;
    v23 = v22;
    v36 = v22;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v23 = 136315138;
    sub_265CC4B00(&qword_28003E320, MEMORY[0x277D50FB0]);
    v24 = sub_265D5A3B0();
    v26 = v25;
    (*(v8 + 8))(v13, v19);
    v27 = sub_265CF4FFC(v24, v26, &v47);

    v28 = v36;
    *(v36 + 4) = v27;
    v29 = v28;
    _os_log_impl(&dword_265C01000, v20, v21, "System: Publishing MultiUserSessionUpdated for session: %s", v28, 0xCu);
    v30 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266770CF0](v30, -1, -1);
    a2 = v38;
    MEMORY[0x266770CF0](v29, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v19);
  }

  (*(v40 + 8))(v17, v41);
  v32 = *(a2 + 216);
  v31 = *(a2 + 224);
  swift_getObjectType();
  v39(v42, v44, v19);
  v33 = v43;
  sub_265D59300();
  v34 = v46;
  sub_265D58ED0();
  return (*(v45 + 8))(v33, v34);
}

uint64_t sub_265CBE248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v4 = sub_265D59580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_265D586F0();
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v50);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = sub_265D59DE0();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v18 = sub_265D586E0();
  v20 = v19;
  if (v18 == sub_265D589D0() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_265D5A3C0();

    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  v43 = v5;
  v44 = v4;
  v24 = v17;
  sub_265D59610();
  v25 = *(v8 + 16);
  v26 = v50;
  v25(v13, v51, v50);
  v27 = sub_265D59DD0();
  v28 = sub_265D5A080();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v42 = v24;
    v30 = v29;
    v41 = swift_slowAlloc();
    v52 = v41;
    *v30 = 136315138;
    sub_265CC4B00(&qword_28003E458, MEMORY[0x277D53008]);
    v31 = sub_265D5A3B0();
    v32 = v25;
    v34 = v33;
    (*(v8 + 8))(v13, v50);
    v35 = sub_265CF4FFC(v31, v34, &v52);
    v25 = v32;
    v26 = v50;

    *(v30 + 4) = v35;
    _os_log_impl(&dword_265C01000, v27, v28, "System: Republishing MultiUserSessionIdentitiesUpdated: %s", v30, 0xCu);
    v36 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x266770CF0](v36, -1, -1);
    MEMORY[0x266770CF0](v30, -1, -1);

    (*(v45 + 8))(v42, v46);
  }

  else
  {

    (*(v8 + 8))(v13, v26);
    (*(v45 + 8))(v24, v46);
  }

  v38 = *(v48 + 216);
  v37 = *(v48 + 224);
  swift_getObjectType();
  v25(v47, v51, v26);
  v39 = v49;
  sub_265D59570();
  v40 = v44;
  sub_265D58ED0();
  return (*(v43 + 8))(v39, v40);
}

uint64_t sub_265CBE6D8(uint64_t a1, const char *a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v10 = *a1;
    v11 = *a1;
    sub_265D59610();
    v12 = v10;
    v13 = sub_265D59DD0();
    v14 = sub_265D5A070();
    sub_265CA4470(v10, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21[0] = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = MEMORY[0x2667704D0](v21[2], v21[3]);
      v20 = sub_265CF4FFC(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_265C01000, v13, v14, v21[0], v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266770CF0](v17, -1, -1);
      MEMORY[0x266770CF0](v16, -1, -1);

      sub_265CA4470(v10, 1);
    }

    else
    {
      sub_265CA4470(v10, 1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_265CBE8E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D8, &qword_265D5B660);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v14 = *(v13 - 8);
  v29 = v13;
  v30 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v28 = &v27 - v16;
  v17 = *__swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_265CB2C84(v12);
  v18 = swift_allocObject();
  *(v18 + 2) = a1;
  *(v18 + 3) = a2;
  *(v18 + 4) = v3;
  (*(v7 + 16))(v10, v12, v6);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v19, v10, v6);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_265CC43E0;
  v21[1] = v18;

  v22 = v28;
  sub_265D58930();
  (*(v7 + 8))(v12, v6);
  v23 = v29;
  v24 = sub_265D58960();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v24(sub_265CA4BF4, v25);

  return (*(v30 + 8))(v22, v23);
}

uint64_t sub_265CBEBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_265D58310() == a2 && v6 == a3)
  {

LABEL_5:
    __swift_project_boxed_opaque_existential_1((a4 + 56), *(a4 + 80));
    v8 = off_28777BD30;
    type metadata accessor for MultiUserLink();
    return v8();
  }

  v7 = sub_265D5A3C0();

  if (v7)
  {
    goto LABEL_5;
  }

  sub_265C9EB84();
  v10 = swift_allocError();
  *v11 = 16;
  *(swift_allocObject() + 16) = v10;

  return sub_265D58940();
}

uint64_t sub_265CBED4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v23 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v24);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *(v2 + 160);
  v11 = off_287780190[0];
  type metadata accessor for SessionConnectionPool();
  if (v11())
  {
    v12 = v25;
    if (v25)
    {
      v13 = *__swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));

      sub_265CB36F0(v9);
      v14 = swift_allocObject();
      v15 = v24;
      *(v14 + 16) = v23;
      *(v14 + 24) = v12;
      (*(v4 + 16))(v7, v9, v15);
      v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v17 = swift_allocObject();
      (*(v4 + 32))(v17 + v16, v7, v15);
      v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v18 = sub_265CC3930;
      v18[1] = v14;
      sub_265D58930();
      return (*(v4 + 8))(v9, v15);
    }

    else
    {
      sub_265C9EB84();
      v20 = swift_allocError();
      *v21 = 13;
      *(swift_allocObject() + 16) = v20;

      return sub_265D58940();
    }
  }

  else
  {

    return sub_265D58970();
  }
}

uint64_t sub_265CBF05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_265D58330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D582F0();
  v10 = sub_265D58310();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  if (v10 == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = sub_265D5A3C0();

    if ((v14 & 1) == 0)
    {
      sub_265C9EB84();
      v15 = swift_allocError();
      *v16 = 13;
      *(swift_allocObject() + 16) = v15;
      return sub_265D58940();
    }
  }

  return sub_265D58970();
}

uint64_t sub_265CBF200(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36[-v11];
  v13 = sub_265D57ED0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v36[-v19];
  sub_265D58080();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_265CA4AE8(v12, &qword_28003E840, &unk_265D5D0D0);
  }

  v41 = v5;
  v42 = v4;
  v43 = a1;
  (*(v14 + 32))(v20, v12, v13);
  sub_265D59610();
  (*(v14 + 16))(v18, v20, v13);
  v22 = sub_265D59DD0();
  v23 = sub_265D5A080();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = v24;
    v39 = swift_slowAlloc();
    v44 = v39;
    *v24 = 136315138;
    sub_265CC4B00(&qword_28003E4C0, MEMORY[0x277D50140]);
    v25 = sub_265D5A3B0();
    v40 = a2;
    v27 = v26;
    v37 = v23;
    v28 = *(v14 + 8);
    v28(v18, v13);
    v29 = v28;
    v30 = sub_265CF4FFC(v25, v27, &v44);

    v31 = v38;
    *(v38 + 1) = v30;
    _os_log_impl(&dword_265C01000, v22, v37, "Handling SessionUpdate %s. Leaving activity.", v31, 0xCu);
    v32 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266770CF0](v32, -1, -1);
    MEMORY[0x266770CF0](v31, -1, -1);
  }

  else
  {

    v33 = *(v14 + 8);
    v33(v18, v13);
    v29 = v33;
  }

  (*(v41 + 8))(v8, v42);
  v34 = sub_265D580D0();
  sub_265CBE8E4(v34, v35);

  return v29(v20, v13);
}

uint64_t sub_265CBF600(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58130();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 8) == 1)
  {
    v15 = *a1;
    v16 = v15;
    sub_265D59610();
    (*(v5 + 16))(v8, a2, v4);
    v17 = v15;
    v18 = sub_265D59DD0();
    v19 = sub_265D5A070();
    sub_265CA4470(v15, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = v9;
      v21 = v20;
      v32 = swift_slowAlloc();
      v36 = v32;
      *v21 = 136446466;
      sub_265CC4B00(&qword_28003E4B8, MEMORY[0x277D506A0]);
      v31 = v19;
      v22 = sub_265D5A3B0();
      v24 = v23;
      (*(v5 + 8))(v8, v4);
      v25 = sub_265CF4FFC(v22, v24, &v36);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      swift_getErrorValue();
      v26 = MEMORY[0x2667704D0](v34, v35);
      v28 = sub_265CF4FFC(v26, v27, &v36);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_265C01000, v18, v31, "Failed to handle local session update %{public}s with error %{public}s", v21, 0x16u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v29, -1, -1);
      MEMORY[0x266770CF0](v21, -1, -1);

      sub_265CA4470(v15, 1);
      return (*(v10 + 8))(v14, v33);
    }

    else
    {

      sub_265CA4470(v15, 1);
      (*(v5 + 8))(v8, v4);
      return (*(v10 + 8))(v14, v9);
    }
  }

  return result;
}

uint64_t sub_265CBF974(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D584B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = sub_265D584A0();
  v18 = *(v1 + 248);
  if (!v18)
  {

    goto LABEL_10;
  }

  if (v16 != *(v1 + 240) || v18 != v17)
  {
    v19 = sub_265D5A3C0();

    if (v19)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_265D59610();
    (*(v5 + 16))(v8, a1, v4);

    v27 = sub_265D59DD0();
    v28 = sub_265D5A070();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v29 = 136446466;
      v30 = sub_265D584A0();
      v39 = v9;
      v32 = v31;
      (*(v5 + 8))(v8, v4);
      v33 = sub_265CF4FFC(v30, v32, &v42);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v41 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v34 = sub_265D5A0E0();
      v36 = sub_265CF4FFC(v34, v35, &v42);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_265C01000, v27, v28, "Remote mediaPlayerSyncUpdate session %{public}s doesn't match local session %{public}s", v29, 0x16u);
      v37 = v38;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v37, -1, -1);
      MEMORY[0x266770CF0](v29, -1, -1);

      return (*(v40 + 8))(v13, v39);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return (*(v40 + 8))(v13, v9);
    }
  }

LABEL_7:
  sub_265D59610();
  v20 = sub_265D59DD0();
  v21 = sub_265D5A080();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_265C01000, v20, v21, "Received media synchronization event", v22, 2u);
    MEMORY[0x266770CF0](v22, -1, -1);
  }

  (*(v40 + 8))(v15, v9);
  v23 = *(v2 + 160);
  v24 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v25 = v24();
  MEMORY[0x28223BE20](v25);
  *(&v38 - 2) = a1;
  sub_265CBA26C(sub_265CC36B0, (&v38 - 4), v25);
}

uint64_t sub_265CBFE18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D586C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = sub_265D59DE0();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = sub_265D586B0();
  v21 = *(v1 + 248);
  if (!v21)
  {

    goto LABEL_9;
  }

  if (v19 != *(v1 + 240) || v21 != v20)
  {
    v51 = v11;
    v22 = sub_265D5A3C0();
    v11 = v51;

    if (v22)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_265D59610();
    (*(v5 + 16))(v9, a1, v4);

    v32 = sub_265D59DD0();
    v33 = sub_265D5A070();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54 = v50;
      *v34 = 136446466;
      sub_265CC4B00(&qword_28003E4B0, MEMORY[0x277D52FF8]);
      v35 = sub_265D5A3B0();
      v51 = v12;
      v36 = v35;
      v38 = v37;
      (*(v5 + 8))(v9, v4);
      v39 = sub_265CF4FFC(v36, v38, &v54);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      v53 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v40 = sub_265D5A0E0();
      v42 = sub_265CF4FFC(v40, v41, &v54);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_265C01000, v32, v33, "Remote %{public}s doesn't match local session %{public}s", v34, 0x16u);
      v43 = v50;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v43, -1, -1);
      MEMORY[0x266770CF0](v34, -1, -1);

      return (*(v52 + 8))(v16, v51);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      return (*(v52 + 8))(v16, v12);
    }
  }

LABEL_7:
  sub_265D59610();
  v23 = *(v5 + 16);
  v50 = a1;
  v23(v11, a1, v4);
  v24 = sub_265D59DD0();
  v25 = sub_265D5A080();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v53 = v49;
    *v26 = 136315138;
    sub_265CC4B00(&qword_28003E4B0, MEMORY[0x277D52FF8]);
    v27 = sub_265D5A3B0();
    v51 = v12;
    v29 = v28;
    (*(v5 + 8))(v11, v4);
    v30 = sub_265CF4FFC(v27, v29, &v53);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_265C01000, v24, v25, "Received MultiUserParticipantUpdate: %s", v26, 0xCu);
    v31 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266770CF0](v31, -1, -1);
    MEMORY[0x266770CF0](v26, -1, -1);

    (*(v52 + 8))(v18, v51);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
    (*(v52 + 8))(v18, v12);
  }

  v45 = *(v2 + 160);
  v46 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v47 = v46();
  MEMORY[0x28223BE20](v47);
  *(&v48 - 2) = v50;
  sub_265CBA26C(sub_265CC36F8, (&v48 - 4), v47);
}

uint64_t sub_265CC0474(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58560();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = sub_265D59DE0();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = sub_265D58550();
  v21 = *(v1 + 248);
  if (!v21)
  {

    goto LABEL_9;
  }

  if (v19 != *(v1 + 240) || v21 != v20)
  {
    v51 = v11;
    v22 = sub_265D5A3C0();
    v11 = v51;

    if (v22)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_265D59610();
    (*(v5 + 16))(v9, a1, v4);

    v32 = sub_265D59DD0();
    v33 = sub_265D5A070();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54 = v50;
      *v34 = 136446466;
      sub_265CC4B00(&qword_28003E350, MEMORY[0x277D52470]);
      v35 = sub_265D5A3B0();
      v51 = v12;
      v36 = v35;
      v38 = v37;
      (*(v5 + 8))(v9, v4);
      v39 = sub_265CF4FFC(v36, v38, &v54);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      v53 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v40 = sub_265D5A0E0();
      v42 = sub_265CF4FFC(v40, v41, &v54);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_265C01000, v32, v33, "Remote %{public}s doesn't match local session %{public}s", v34, 0x16u);
      v43 = v50;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v43, -1, -1);
      MEMORY[0x266770CF0](v34, -1, -1);

      return (*(v52 + 8))(v16, v51);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      return (*(v52 + 8))(v16, v12);
    }
  }

LABEL_7:
  sub_265D59610();
  v23 = *(v5 + 16);
  v50 = a1;
  v23(v11, a1, v4);
  v24 = sub_265D59DD0();
  v25 = sub_265D5A080();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v53 = v49;
    *v26 = 136446210;
    sub_265CC4B00(&qword_28003E350, MEMORY[0x277D52470]);
    v27 = sub_265D5A3B0();
    v51 = v12;
    v29 = v28;
    (*(v5 + 8))(v11, v4);
    v30 = sub_265CF4FFC(v27, v29, &v53);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_265C01000, v24, v25, "Received MultiUserWorkoutUpdate: %{public}s", v26, 0xCu);
    v31 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266770CF0](v31, -1, -1);
    MEMORY[0x266770CF0](v26, -1, -1);

    (*(v52 + 8))(v18, v51);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
    (*(v52 + 8))(v18, v12);
  }

  v45 = *(v2 + 160);
  v46 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v47 = v46();
  MEMORY[0x28223BE20](v47);
  *(&v48 - 2) = v50;
  sub_265CBA26C(sub_265CC3620, (&v48 - 4), v47);
}

uint64_t sub_265CC0AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v54);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v60 = sub_265D584B0();
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = v14;
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v55 = *(v63 - 8);
  v15 = *(v55 + 64);
  v16 = MEMORY[0x28223BE20](v63);
  v58 = v17;
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v52 - v18;
  v19 = sub_265D59DE0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  sub_265D59DC0();
  (*(v20 + 8))(v23, v19);
  v61 = a1;
  v24 = sub_265D584A0();
  v26 = v25;
  v65 = v3;
  v27 = *(v3 + 160);
  v28 = off_287780190[0];
  type metadata accessor for SessionConnectionPool();
  if (v28())
  {
    v29 = *__swift_project_boxed_opaque_existential_1((v65 + 56), *(v65 + 80));

    sub_265CB36F0(v11);
    v30 = swift_allocObject();
    *(v30 + 16) = v24;
    *(v30 + 24) = v26;
    v31 = v9;
    v32 = v9;
    v33 = v54;
    (*(v5 + 16))(v32, v11, v54);
    v34 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v35 = (v53 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    (*(v5 + 32))(v36 + v34, v31, v33);
    v37 = (v36 + v35);
    *v37 = sub_265CC4B48;
    v37[1] = v30;
    v38 = v62;
    sub_265D58930();
    (*(v5 + 8))(v11, v33);
  }

  else
  {
    v38 = v62;
    sub_265D58970();
  }

  v39 = v57;
  v40 = v60;
  (*(v12 + 16))(v57, v61, v60);
  v41 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v65;
  (*(v12 + 32))(v42 + v41, v39, v40);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_265CC3A0C;
  *(v43 + 24) = v42;
  v44 = v55;
  v45 = v59;
  v46 = v63;
  (*(v55 + 16))(v59, v38, v63);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = (v58 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v44 + 32))(v49 + v47, v45, v46);
  v50 = (v49 + v48);
  *v50 = sub_265CC4B4C;
  v50[1] = v43;

  sub_265D58930();
  return (*(v44 + 8))(v38, v46);
}

uint64_t sub_265CC10D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = sub_265D58EB0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  swift_getObjectType();
  v12 = *MEMORY[0x277D4E0A8];
  v13 = v6[13];
  v13(v9, v12, v5);
  sub_265D584B0();
  sub_265D58C70();
  v14 = v6[1];
  v14(v9, v5);
  v13(v9, v12, v5);
  sub_265CBDA40(v9, a2, MEMORY[0x277D520F8], MEMORY[0x277D520E8], sub_265CC3A80);
  v14(v9, v5);
  return sub_265D58970();
}

uint64_t sub_265CC12BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E228, &qword_265D5B5A8);
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v54);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v60 = sub_265D58740();
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = v14;
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v55 = *(v63 - 8);
  v15 = *(v55 + 64);
  v16 = MEMORY[0x28223BE20](v63);
  v58 = v17;
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v52 - v18;
  v19 = sub_265D59DE0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  sub_265D59DC0();
  (*(v20 + 8))(v23, v19);
  v61 = a1;
  v24 = sub_265D58710();
  v26 = v25;
  v65 = v3;
  v27 = *(v3 + 160);
  v28 = off_287780190[0];
  type metadata accessor for SessionConnectionPool();
  if (v28())
  {
    v29 = *__swift_project_boxed_opaque_existential_1((v65 + 56), *(v65 + 80));

    sub_265CB36F0(v11);
    v30 = swift_allocObject();
    *(v30 + 16) = v24;
    *(v30 + 24) = v26;
    v31 = v9;
    v32 = v9;
    v33 = v54;
    (*(v5 + 16))(v32, v11, v54);
    v34 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v35 = (v53 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    (*(v5 + 32))(v36 + v34, v31, v33);
    v37 = (v36 + v35);
    *v37 = sub_265CC4B48;
    v37[1] = v30;
    v38 = v62;
    sub_265D58930();
    (*(v5 + 8))(v11, v33);
  }

  else
  {
    v38 = v62;
    sub_265D58970();
  }

  v39 = v57;
  v40 = v60;
  (*(v12 + 16))(v57, v61, v60);
  v41 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v65;
  (*(v12 + 32))(v42 + v41, v39, v40);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_265CC3960;
  *(v43 + 24) = v42;
  v44 = v55;
  v45 = v59;
  v46 = v63;
  (*(v55 + 16))(v59, v38, v63);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = (v58 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v44 + 32))(v49 + v47, v45, v46);
  v50 = (v49 + v48);
  *v50 = sub_265CC4B4C;
  v50[1] = v43;

  sub_265D58930();
  return (*(v44 + 8))(v38, v46);
}

uint64_t sub_265CC18BC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[0] = a2;
  v7 = sub_265D58EB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MultiUserLinkMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v19[1] = a1[1];
  (*(v8 + 16))(v15, v19[0], v7);
  v17 = &v15[*(v12 + 20)];
  *v17 = a3;
  v17[1] = a4;
  swift_getObjectType();
  (*(v8 + 104))(v11, *MEMORY[0x277D4E080], v7);
  sub_265C987E0(a3, a4);
  sub_265CC4B00(qword_2813B7920, type metadata accessor for MultiUserLinkMessage);
  sub_265CC4B00(&qword_2813B7918, type metadata accessor for MultiUserLinkMessage);
  sub_265D58C70();
  (*(v8 + 8))(v11, v7);
  return sub_265C98770(v15);
}

uint64_t sub_265CC1AF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58460();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = sub_265D59DE0();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = sub_265D58440();
  v21 = *(v1 + 248);
  if (!v21)
  {

    goto LABEL_9;
  }

  if (v19 != *(v1 + 240) || v21 != v20)
  {
    v51 = v11;
    v22 = sub_265D5A3C0();
    v11 = v51;

    if (v22)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_265D59610();
    (*(v5 + 16))(v9, a1, v4);

    v32 = sub_265D59DD0();
    v33 = sub_265D5A070();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54 = v50;
      *v34 = 136315394;
      sub_265CC4B00(&qword_28003E4A8, MEMORY[0x277D51EC0]);
      v35 = sub_265D5A3B0();
      v51 = v12;
      v36 = v35;
      v38 = v37;
      (*(v5 + 8))(v9, v4);
      v39 = sub_265CF4FFC(v36, v38, &v54);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v53 = *(v2 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E440, &unk_265D5BA30);
      v40 = sub_265D5A0E0();
      v42 = sub_265CF4FFC(v40, v41, &v54);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_265C01000, v32, v33, "Remote %s doesn't match local session %s", v34, 0x16u);
      v43 = v50;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v43, -1, -1);
      MEMORY[0x266770CF0](v34, -1, -1);

      return (*(v52 + 8))(v16, v51);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      return (*(v52 + 8))(v16, v12);
    }
  }

LABEL_7:
  sub_265D59610();
  v23 = *(v5 + 16);
  v50 = a1;
  v23(v11, a1, v4);
  v24 = sub_265D59DD0();
  v25 = sub_265D5A080();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v53 = v49;
    *v26 = 136315138;
    sub_265CC4B00(&qword_28003E4A8, MEMORY[0x277D51EC0]);
    v27 = sub_265D5A3B0();
    v51 = v12;
    v29 = v28;
    (*(v5 + 8))(v11, v4);
    v30 = sub_265CF4FFC(v27, v29, &v53);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_265C01000, v24, v25, "Received %s", v26, 0xCu);
    v31 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266770CF0](v31, -1, -1);
    MEMORY[0x266770CF0](v26, -1, -1);

    (*(v52 + 8))(v18, v51);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
    (*(v52 + 8))(v18, v12);
  }

  v45 = *(v2 + 160);
  v46 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  v47 = v46();
  MEMORY[0x28223BE20](v47);
  *(&v48 - 2) = v50;
  sub_265CBA26C(sub_265CC3668, (&v48 - 4), v47);
}

uint64_t sub_265CC2150(uint64_t *a1, uint64_t a2, unsigned int *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v17[0] = a5;
  v17[1] = a6;
  v9 = sub_265D58EB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  swift_getObjectType();
  (*(v10 + 104))(v13, *a3, v9);
  a4(0);
  sub_265D58C70();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_265CC2298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v64 = a2;
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D58610();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = v10;
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v59);
  v14 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v24 = *(v2 + 248);
  if (v24)
  {
    v25 = v2;
    v26 = *(v2 + 240);
    v54 = &v52 - v20;
    v55 = v26;
    v57 = v23;
    v58 = v21;
    v56 = v22;
    swift_bridgeObjectRetain_n();
    v53 = v16;
    sub_265CBED4C(v26, v24);

    v27 = *__swift_project_boxed_opaque_existential_1((v25 + 16), *(v25 + 40));
    v66[3] = type metadata accessor for MultiUserIdentityProvider(0);
    v66[4] = &off_28777ADE0;
    v66[0] = v27;
    sub_265C97624(v66, v65);
    v28 = swift_allocObject();
    sub_265C033C4(v65, v28 + 16);

    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_265CC4B6C;
    *(v29 + 24) = v28;
    v30 = v16;
    v31 = v59;
    (*(v11 + 16))(v14, v30, v59);
    v32 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v33 = swift_allocObject();
    (*(v11 + 32))(v33 + v32, v14, v31);
    v34 = (v33 + ((v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v34 = sub_265CC3740;
    v34[1] = v29;
    sub_265D583A0();
    v35 = v54;
    sub_265D58930();
    (*(v11 + 8))(v53, v31);
    v36 = v62;
    sub_265CC3790(v63, v62);
    v37 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v38 = (v61 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v55;
    *(v39 + 24) = v24;
    sub_265CC37F4(v36, v39 + v37);
    *(v39 + v38) = v25;
    v40 = v56;
    v41 = v57;
    v42 = v58;
    (*(v56 + 16))(v57, v35, v58);
    v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v44 = swift_allocObject();
    (*(v40 + 32))(v44 + v43, v41, v42);
    v45 = (v44 + ((v18 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v45 = sub_265CC3858;
    v45[1] = v39;

    sub_265D58930();
    return (*(v40 + 8))(v35, v42);
  }

  else
  {
    sub_265D59610();
    v47 = sub_265D59DD0();
    v48 = sub_265D5A070();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_265C01000, v47, v48, "Failed to send celebration: no active local session", v49, 2u);
      MEMORY[0x266770CF0](v49, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    sub_265C9EB84();
    v50 = swift_allocError();
    *v51 = 14;
    *(swift_allocObject() + 16) = v50;
    return sub_265D58940();
  }
}

void sub_265CC2910(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v68 = a4;
  v73 = a3;
  v74 = a2;
  v77 = a5;
  v6 = sub_265D58EB0();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v6);
  v69 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = (&v67 - v13);
  v14 = sub_265D58610();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265D583A0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_265D58460();
  v23 = *(v79 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v79);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v67 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  (*(v19 + 16))(v22, a1, v18);
  sub_265CC3790(v73, v17);

  sub_265D5A030();
  sub_265D58450();
  sub_265D58360();
  if (v33)
  {

    sub_265D59610();
    (*(v23 + 16))(v30, v32, v79);
    v34 = sub_265D59DD0();
    v35 = sub_265D5A080();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v80 = v74;
      *v36 = 136315138;
      sub_265CC4B00(&qword_28003E4A8, MEMORY[0x277D51EC0]);
      v37 = v32;
      v38 = v79;
      v39 = sub_265D5A3B0();
      v41 = v40;
      v42 = v38;
      v32 = v37;
      v43 = *(v23 + 8);
      v43(v30, v42);
      v44 = sub_265CF4FFC(v39, v41, &v80);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_265C01000, v34, v35, "Sending %s", v36, 0xCu);
      v45 = v74;
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x266770CF0](v45, -1, -1);
      MEMORY[0x266770CF0](v36, -1, -1);
    }

    else
    {

      v43 = *(v23 + 8);
      v43(v30, v79);
    }

    (*(v75 + 8))(v78, v76);
    v59 = *(v68 + 96);
    v58 = *(v68 + 104);
    swift_getObjectType();
    v61 = v69;
    v60 = v70;
    v62 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277D4E158], v71);
    v63 = v79;
    sub_265D58C70();
    (*(v60 + 8))(v61, v62);
    sub_265D58970();
    v43(v32, v63);
  }

  else
  {
    sub_265D59610();
    (*(v23 + 16))(v27, v32, v79);
    v46 = sub_265D59DD0();
    v47 = sub_265D5A070();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80 = v78;
      *v48 = 136315138;
      sub_265CC4B00(&qword_28003E4A8, MEMORY[0x277D51EC0]);
      v49 = v32;
      v50 = v79;
      v51 = sub_265D5A3B0();
      v53 = v52;
      v54 = v50;
      v32 = v49;
      v55 = *(v23 + 8);
      v55(v27, v54);
      v56 = sub_265CF4FFC(v51, v53, &v80);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_265C01000, v46, v47, "Not sending celebration because identity is missing required address %s", v48, 0xCu);
      v57 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266770CF0](v57, -1, -1);
      MEMORY[0x266770CF0](v48, -1, -1);
    }

    else
    {

      v55 = *(v23 + 8);
      v55(v27, v79);
    }

    (*(v75 + 8))(v72, v76);
    sub_265C9EB84();
    v64 = swift_allocError();
    *v65 = 4;
    *(swift_allocObject() + 16) = v64;
    v66 = v64;
    sub_265D58940();
    v55(v32, v79);
  }
}

uint64_t sub_265CC30D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v9 = sub_265D59DD0();
  v10 = sub_265D5A080();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_265C01000, v9, v10, "System: Proxying MultiUserLinkMessage payload", v11, 2u);
    MEMORY[0x266770CF0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = *__swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  return sub_265CB22CC(a1);
}

uint64_t sub_265CC322C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v32 - v6;
  v7 = sub_265D57DA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265D59DE0();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58B40();
  v41 = sub_265D58B50();
  v17 = v16;
  sub_265D59610();
  v18 = *(v8 + 16);
  v39 = a1;
  v42 = v7;
  v35 = v18;
  v18(v11, a1, v7);

  v19 = sub_265D59DD0();
  v20 = sub_265D5A080();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = a2;
    v22 = v21;
    v33 = swift_slowAlloc();
    v43 = v33;
    *v22 = 136315650;
    *(v22 + 4) = sub_265CF4FFC(v41, v17, &v43);
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2080;
    v23 = sub_265D57D80();
    v25 = v24;
    (*(v8 + 8))(v11, v42);
    v26 = sub_265CF4FFC(v23, v25, &v43);

    *(v22 + 24) = v26;
    _os_log_impl(&dword_265C01000, v19, v20, "Launching app: %s with url: %{mask.hash}s", v22, 0x20u);
    v27 = v33;
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v27, -1, -1);
    MEMORY[0x266770CF0](v22, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v42);
  }

  (*(v36 + 8))(v15, v37);
  v28 = v38[26];
  __swift_project_boxed_opaque_existential_1(v38 + 22, v38[25]);
  v29 = v40;
  v30 = v42;
  v35(v40, v39, v42);
  (*(v8 + 56))(v29, 0, 1, v30);
  sub_265D59970();

  return sub_265CA4AE8(v29, &qword_28003E480, &qword_265D5B940);
}

uint64_t sub_265CC3740()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_265CC3790(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58610();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CC37F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58610();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_265CC3858(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_265D58610() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_265CC2910(a1, v7, v2 + v6, v9, a2);
}

void sub_265CC3960(uint64_t a1@<X8>)
{
  v3 = *(sub_265D58740() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *__swift_project_boxed_opaque_existential_1((*(v1 + 16) + 56), *(*(v1 + 16) + 80));
  sub_265CB46F4(v1 + v4, a1);
}

uint64_t sub_265CC3A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D584B0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_265CC10D0(v4, v5, a1);
}

uint64_t sub_265CC3B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265D599A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_265D58870();

  return sub_265D58930();
}

uint64_t sub_265CC3CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);

  return sub_265D58930();
}

uint64_t sub_265CC3E50(void (*a1)(_BYTE *), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E290, &qword_265D5B618);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v19[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v19[-v16];
  a3(a5);
  swift_storeEnumTagMultiPayload();
  sub_265CC4298(v12, v15);
  sub_265CC4298(v15, v17);
  a1(v17);
  return sub_265CA4AE8(v17, &qword_28003E290, &qword_265D5B618);
}

void sub_265CC3FC4(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_265CA4470(v6, 0);
}

uint64_t sub_265CC4058@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_265CC40D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_265CC4214(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *(sub_265D599A0() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_265CC3E50(a1, a2, v6, v7, v8);
}

uint64_t sub_265CC4298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E290, &qword_265D5B618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CC44BC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_106Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_61Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_265CC47E8(uint64_t a1)
{
  v3 = *(sub_265D58130() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = __swift_project_boxed_opaque_existential_1((*(v1 + 16) + 120), *(*(v1 + 16) + 144));
  v6 = v5[2];
  return sub_265CA4CA4((v1 + v4), a1, *v5, v5[1]);
}

uint64_t objectdestroy_89Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  v7 = *(v1 + v6);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_265CC4918()
{
  v1 = *(sub_265D58130() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_265CBF200(v0 + v2, v3);
}

uint64_t sub_265CC49C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_265CC4A90(uint64_t a1)
{
  v3 = *(sub_265D58130() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265CBF600(a1, v4);
}

uint64_t sub_265CC4B00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MultiUserError.hashValue.getter()
{
  v1 = *v0;
  sub_265D5A460();
  MEMORY[0x266770530](v1);
  return sub_265D5A4A0();
}

unint64_t sub_265CC4C20()
{
  result = qword_28003E4C8;
  if (!qword_28003E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E4C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiUserError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiUserError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265CC5154(uint64_t a1, uint64_t a2)
{
  result = sub_265D58EA0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_265D58780();
  result = type metadata accessor for MultiUserLinkMessage();
  v4 = a2 + *(result + 20);
  if (*(v4 + 8) >> 60 != 15)
  {
    sub_265C987E0(*v4, *(v4 + 8));
    return sub_265D587A0();
  }

  return result;
}

uint64_t sub_265CC51EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E4E8, &unk_265D5BC30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v30 - v6;
  v8 = sub_265D58EB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58770();
  sub_265D58E90();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_265CC564C(v7);
    v13 = sub_265D581D0();
    sub_265CC56B4(&qword_28003E4F0, MEMORY[0x277D50940]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D50908], v13);
    swift_willThrow();
    v15 = sub_265D587B0();
    return (*(*(v15 - 8) + 8))(a1, v15);
  }

  v17 = *(v9 + 32);
  v17(v12, v7, v8);
  v18 = sub_265D58790();
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_265C9889C(v18, v19);
      if (v23 == v22)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    sub_265C9889C(v18, v19);
LABEL_13:
    v25 = 0;
    v27 = 0xF000000000000000;
    goto LABEL_14;
  }

  if (v20)
  {
    v24 = v18;
    sub_265C9889C(v18, v19);
    if (v24 != v24 >> 32)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v21 = v19;
  sub_265C9889C(v18, v19);
  if ((v21 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v25 = sub_265D58790();
  v27 = v26;
LABEL_14:
  v28 = sub_265D587B0();
  (*(*(v28 - 8) + 8))(a1, v28);
  v17(a2, v12, v8);
  result = type metadata accessor for MultiUserLinkMessage();
  v29 = &a2[*(result + 20)];
  *v29 = v25;
  v29[1] = v27;
  return result;
}

uint64_t sub_265CC5528()
{
  sub_265D587B0();
  sub_265CC56B4(&qword_28003E4D0, MEMORY[0x277D53318]);
  return sub_265D59D30();
}

uint64_t sub_265CC564C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E4E8, &unk_265D5BC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265CC56B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265CC5700()
{
  sub_265CD4B54(v0, &v3);
  v1 = v3;
  if ((v5 & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return v1;
}

uint64_t sub_265CC5774()
{
  v0 = sub_265D590A0();
  v5[3] = v0;
  v5[4] = sub_265CD52F8(&qword_2813B8FE8, MEMORY[0x277D4F200]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v5);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1Tm, *MEMORY[0x277D4F1F0], v0);
  v2 = sub_265D58BD0();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  v3 = &unk_28777A798;
  if ((v2 & 1) == 0 && os_variant_has_internal_content())
  {
    v3 = &unk_28777A7C0;
  }

  result = sub_265C95FFC(v3);
  qword_2813B9268 = result;
  return result;
}

uint64_t sub_265CC586C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC5988, 0, 0);
}

uint64_t sub_265CC5988()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58F20();
    v5 = *(MEMORY[0x277D4DFF0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for StandaloneSessionMonitor();
    v8 = sub_265CD52F8(&qword_28003E608, type metadata accessor for StandaloneSessionMonitor);
    *v6 = v0;
    v6[1] = sub_265CC5AF8;
    v9 = v0[16];

    return MEMORY[0x2821AE8D8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CC5AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CC5CE0, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CC5CE0()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "StandaloneSessionMonitor - Failed to start session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CC5EC8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC5FE4, 0, 0);
}

uint64_t sub_265CC5FE4()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59020();
    v5 = *(MEMORY[0x277D4DFE0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for StandaloneSessionMonitor();
    v8 = sub_265CD52F8(&qword_28003E608, type metadata accessor for StandaloneSessionMonitor);
    *v6 = v0;
    v6[1] = sub_265CC6154;
    v9 = v0[16];

    return MEMORY[0x2821AE8C8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CC6154()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CC633C, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CC633C()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "StandaloneSessionMonitor - Failed to end session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CC6524(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58130();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC6640, 0, 0);
}

uint64_t sub_265CC6640()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58E60();
    v5 = *(MEMORY[0x277D4DFE8] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for StandaloneSessionMonitor();
    v8 = sub_265CD52F8(&qword_28003E608, type metadata accessor for StandaloneSessionMonitor);
    *v6 = v0;
    v6[1] = sub_265CC67B0;
    v9 = v0[16];

    return MEMORY[0x2821AE8D0](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CC67B0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CC6998, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CC6998()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "StandaloneSessionMonitor - Failed to update session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CC6B80(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v5 = *(v4 + 64) + 15;
  v2[34] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v7 = sub_265D59DE0();
  v2[36] = v7;
  v8 = *(v7 - 8);
  v2[37] = v8;
  v9 = *(v8 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC6CEC, v1, 0);
}

uint64_t sub_265CC6CEC()
{
  v1 = v0[39];
  sub_265D595F0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "Starting standalone workout session.", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[37];
  v9 = v0[30];
  v8 = v0[31];

  v10 = *(v7 + 8);
  v0[40] = v10;
  v10(v5, v6);
  sub_265CC7780();
  v12 = v8[21];
  v11 = v8[22];
  __swift_project_boxed_opaque_existential_1(v8 + 18, v12);
  v13 = *(MEMORY[0x277D4F338] + 4);

  v14 = swift_task_alloc();
  v0[41] = v14;
  *v14 = v0;
  v14[1] = sub_265CC6E7C;
  v15 = v0[31];

  return MEMORY[0x2821AEFF8](&unk_265D5BF78, v15, v12, v11);
}

uint64_t sub_265CC6E7C(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 336) = a1;

  return MEMORY[0x2822009F8](sub_265CC6F9C, v3, 0);
}

uint64_t sub_265CC6F9C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 18, v1[21]);
  sub_265D58EC0();
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 248);
  v7 = sub_265D59FA0();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  sub_265C97624(v0 + 16, v0 + 56);
  v9 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v9;
  v10[4] = v6;
  sub_265C033C4((v0 + 56), (v10 + 5));
  swift_retain_n();
  *(v0 + 344) = sub_265D4CE7C(0, 0, v5, &unk_265D5BF88, v10);
  v8(v5, 1, 1, v7);
  sub_265C97624(v0 + 16, v0 + 96);
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v9;
  v11[4] = v6;
  sub_265C033C4((v0 + 96), (v11 + 5));
  swift_retain_n();
  *(v0 + 352) = sub_265D4CE7C(0, 0, v5, &unk_265D5BF98, v11);
  v8(v5, 1, 1, v7);
  sub_265C97624(v0 + 16, v0 + 136);
  v12 = swift_allocObject();
  v12[2] = v6;
  v12[3] = v9;
  v12[4] = v6;
  sub_265C033C4((v0 + 136), (v12 + 5));
  swift_retain_n();
  *(v0 + 360) = sub_265D4CE7C(0, 0, v5, &unk_265D5BFA8, v12);
  v8(v5, 1, 1, v7);
  sub_265C97624(v0 + 16, v0 + 176);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v9;
  sub_265C033C4((v0 + 176), (v13 + 4));
  v13[9] = v6;
  swift_retain_n();
  *(v0 + 368) = sub_265D4CE7C(0, 0, v5, &unk_265D5BFB8, v13);
  sub_265D595F0();
  v14 = sub_265D59DD0();
  v15 = sub_265D5A080();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_265C01000, v14, v15, "StandaloneSessionMonitor - activating workout", v16, 2u);
    MEMORY[0x266770CF0](v16, -1, -1);
  }

  v17 = *(v0 + 320);
  v19 = *(v0 + 296);
  v18 = *(v0 + 304);
  v20 = *(v0 + 288);

  v17(v18, v20);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  v23 = *(MEMORY[0x277D4F5B8] + 4);
  v24 = swift_task_alloc();
  *(v0 + 376) = v24;
  *v24 = v0;
  v24[1] = sub_265CC7448;

  return MEMORY[0x2821AF528](v21, v22);
}

uint64_t sub_265CC7448()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 248);
  if (v0)
  {
    v6 = sub_265CC76C0;
  }

  else
  {
    v6 = sub_265CC7574;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265CC7574()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  *v4 = sub_265D589C0();
  sub_265C97624(v0 + 16, v4 + 8);
  *(v4 + 48) = v14;
  *(v4 + 64) = v13;
  *(v4 + 80) = v1;
  *(v4 + 88) = 0;
  (*(v7 + 104))(v4, *MEMORY[0x277D4F250], v6);
  v10 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v7 + 40))(v9 + v10, v4, v6);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_265CC76C0()
{
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[48];
  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[34];
  v9 = v0[35];

  v11 = v0[1];

  return v11();
}

uint64_t sub_265CC7780()
{
  v1 = v0;
  v157 = sub_265D59DE0();
  v156 = *(v157 - 8);
  v2 = *(v156 + 64);
  v3 = MEMORY[0x28223BE20](v157);
  MEMORY[0x28223BE20](v3);
  v5 = v136 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v136 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v154 = v136 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v153 = v136 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v152 = v136 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v151 = v136 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v150 = v136 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v149 = v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v148 = v136 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v147 = v136 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v146 = v136 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v173 = v136 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = v136 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v172 = v136 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v171 = v136 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v170 = v136 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v169 = v136 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v168 = v136 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v167 = v136 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v166 = v136 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v165 = v136 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v164 = v136 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v163 = v136 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v162 = v136 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v161 = v136 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v160 = v136 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83 - 8);
  v159 = v136 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86 - 8);
  v158 = v136 - v88;
  v89 = sub_265D58130();
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v142 = v136 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_265D59090();
  v143 = *(v144 - 8);
  v92 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v141 = v136 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  v95 = sub_265D59530();
  v155 = v9;
  v145 = v5;
  v96 = v95;
  v97 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [v96 doubleValueForUnit_];
  v99 = v98;

  v136[1] = v43;
  v139 = v1[14];
  v140 = v1[15];
  ObjectType = swift_getObjectType();
  v137 = sub_265D5A4C0();
  sub_265D589C0();
  v136[3] = sub_265D58CF0();
  v136[2] = v100;

  v101 = sub_265D58020();
  (*(*(v101 - 8) + 56))(v158, 1, 1, v101);
  v102 = sub_265D58410();
  (*(*(v102 - 8) + 56))(v159, 1, 1, v102);
  v103 = sub_265D58590();
  (*(*(v103 - 8) + 56))(v160, 1, 1, v103);
  v104 = sub_265D58050();
  (*(*(v104 - 8) + 56))(v161, 1, 1, v104);
  v105 = sub_265D58200();
  (*(*(v105 - 8) + 56))(v162, 1, 1, v105);
  v106 = sub_265D58BC0();
  (*(*(v106 - 8) + 56))(v163, 1, 1, v106);
  v107 = sub_265D583E0();
  (*(*(v107 - 8) + 56))(v164, 1, 1, v107);
  v108 = sub_265D581B0();
  (*(*(v108 - 8) + 56))(v165, 1, 1, v108);
  v109 = sub_265D57F50();
  (*(*(v109 - 8) + 56))(v166, 1, 1, v109);
  v110 = sub_265D582A0();
  (*(*(v110 - 8) + 56))(v167, 1, 1, v110);
  v111 = sub_265D58680();
  (*(*(v111 - 8) + 56))(v168, 1, 1, v111);
  v112 = sub_265D58210();
  (*(*(v112 - 8) + 56))(v169, 1, 1, v112);
  v113 = sub_265D57E80();
  (*(*(v113 - 8) + 56))(v170, 1, 1, v113);
  v114 = sub_265D58430();
  (*(*(v114 - 8) + 56))(v171, 1, 1, v114);
  v115 = sub_265D58300();
  (*(*(v115 - 8) + 56))(v172, 1, 1, v115);
  v116 = sub_265D586F0();
  (*(*(v116 - 8) + 56))(v43, 1, 1, v116);
  v117 = sub_265D57E90();
  (*(*(v117 - 8) + 56))(v173, 1, 1, v117);
  v118 = sub_265D581C0();
  (*(*(v118 - 8) + 56))(v146, 1, 1, v118);
  v119 = sub_265D58BB0();
  (*(*(v119 - 8) + 56))(v147, 1, 1, v119);
  v120 = sub_265D585C0();
  (*(*(v120 - 8) + 56))(v148, 1, 1, v120);
  v121 = sub_265D57EA0();
  (*(*(v121 - 8) + 56))(v149, 1, 1, v121);
  v122 = sub_265D57ED0();
  (*(*(v122 - 8) + 56))(v150, 1, 1, v122);
  v123 = sub_265D58240();
  (*(*(v123 - 8) + 56))(v151, 1, 1, v123);
  sub_265D5A030();
  v124 = v152;
  sub_265D583F0();
  v125 = sub_265D58400();
  (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
  v126 = sub_265D58600();
  (*(*(v126 - 8) + 56))(v153, 1, 1, v126);
  v127 = sub_265D58630();
  (*(*(v127 - 8) + 56))(v154, 1, 1, v127);
  v128 = sub_265D58B10();
  (*(*(v128 - 8) + 56))(v155, 1, 1, v128);
  sub_265D5A030();
  sub_265D580B0();
  v129 = v141;
  sub_265D59080();
  v130 = v144;
  sub_265D58ED0();
  (*(v143 + 8))(v129, v130);
  v131 = v145;
  sub_265D595F0();
  v132 = sub_265D59DD0();
  v133 = sub_265D5A080();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 134217984;
    *(v134 + 4) = v99;
    _os_log_impl(&dword_265C01000, v132, v133, "Updating session with body mass: %f", v134, 0xCu);
    MEMORY[0x266770CF0](v134, -1, -1);
  }

  return (*(v156 + 8))(v131, v157);
}

uint64_t sub_265CC8D44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_265D58020();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5F0, &qword_265D5C0C0);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC8EA4, 0, 0);
}

uint64_t sub_265CC8EA4()
{
  v1 = v0[10];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5F8, &qword_265D5C0C8);
  sub_265D59FD0();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_265CC8F6C;
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_265CC8F6C()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_265CC9068, 0, 0);
}

uint64_t sub_265CC9068()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[3];
    (*(v3 + 32))(v0[6], v1, v2);

    return MEMORY[0x2822009F8](sub_265CC918C, v7, 0);
  }
}

uint64_t sub_265CC918C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D0A890] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = type metadata accessor for StandaloneSessionMonitor();
  v7 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor);
  *v5 = v0;
  v5[1] = sub_265CC92B4;
  v8 = v0[3];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v7, &unk_265D5C0D8, v3, v6, v9, v7);
}

void sub_265CC92B4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 24);

    MEMORY[0x2822009F8](sub_265CC93F4, v6, 0);
  }
}

uint64_t sub_265CC9410()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_265CC8F6C;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_265CC94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D57F50();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC95C8, a4, 0);
}

uint64_t sub_265CC95C8()
{
  if (sub_265CA786C(2, *(v0[12] + 128)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(MEMORY[0x277D4F590] + 4);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_265CC96DC;

    return MEMORY[0x2821AF4F8](v0 + 7, v2, v3);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_265CC96DC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265CC97EC, v2, 0);
}

uint64_t sub_265CC97EC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v6 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor);
  v0[19] = v6;
  v7 = v0[12];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_265CC99F0;
  v11 = v0[17];

  return MEMORY[0x282200310](v11, v7, v6);
}

uint64_t sub_265CC99F0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265CC9B00, v5, 0);
  }

  return result;
}

uint64_t sub_265CC9B00()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v5 = v0[16];
    v4 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[12];
    (*(v3 + 32))(v8, v1, v2);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = *(MEMORY[0x277D0A890] + 4);
    v12 = swift_task_alloc();
    v0[22] = v12;
    v13 = type metadata accessor for StandaloneSessionMonitor();
    v14 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor);
    *v12 = v0;
    v12[1] = sub_265CC9CCC;
    v15 = v0[12];
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v14, &unk_265D5C0B8, v10, v13, v16, v14);
  }
}

void sub_265CC9CCC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265CC9E0C, v6, 0);
  }
}

uint64_t sub_265CC9E0C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_265CC99F0;
  v6 = v0[17];

  return MEMORY[0x282200310](v6, v2, v1);
}

uint64_t sub_265CC9EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D581B0();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CC9FF8, a4, 0);
}

uint64_t sub_265CC9FF8()
{
  if (sub_265CA786C(0, *(v0[12] + 128)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(MEMORY[0x277D4F598] + 4);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_265CCA10C;

    return MEMORY[0x2821AF508](v0 + 7, v2, v3);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_265CCA10C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265CCA21C, v2, 0);
}

uint64_t sub_265CCA21C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v6 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor);
  v0[19] = v6;
  v7 = v0[12];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_265CCA420;
  v11 = v0[17];

  return MEMORY[0x282200310](v11, v7, v6);
}

uint64_t sub_265CCA420()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265CCA530, v5, 0);
  }

  return result;
}

uint64_t sub_265CCA530()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v5 = v0[16];
    v4 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[12];
    (*(v3 + 32))(v8, v1, v2);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = *(MEMORY[0x277D0A890] + 4);
    v12 = swift_task_alloc();
    v0[22] = v12;
    v13 = type metadata accessor for StandaloneSessionMonitor();
    v14 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor);
    *v12 = v0;
    v12[1] = sub_265CCA6FC;
    v15 = v0[12];
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v14, &unk_265D5C0A8, v10, v13, v16, v14);
  }
}

void sub_265CCA6FC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265CCA83C, v6, 0);
  }
}

uint64_t sub_265CCA83C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_265CCA420;
  v6 = v0[17];

  return MEMORY[0x282200310](v6, v2, v1);
}

uint64_t sub_265CCA92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D58210();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCAA28, a4, 0);
}

uint64_t sub_265CCAA28()
{
  if (sub_265CA786C(3, *(v0[12] + 128)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(MEMORY[0x277D4F5A0] + 4);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_265CCAB3C;

    return MEMORY[0x2821AF510](v0 + 7, v2, v3);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_265CCAB3C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265CCAC4C, v2, 0);
}

uint64_t sub_265CCAC4C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v6 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor);
  v0[19] = v6;
  v7 = v0[12];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_265CCAE50;
  v11 = v0[17];

  return MEMORY[0x282200310](v11, v7, v6);
}

uint64_t sub_265CCAE50()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265CCAF60, v5, 0);
  }

  return result;
}

uint64_t sub_265CCAF60()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v5 = v0[16];
    v4 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[16];
    v9 = v0[12];
    (*(v3 + 32))(v8, v1, v2);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = *(MEMORY[0x277D0A890] + 4);
    v12 = swift_task_alloc();
    v0[22] = v12;
    v13 = type metadata accessor for StandaloneSessionMonitor();
    v14 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor);
    *v12 = v0;
    v12[1] = sub_265CCB12C;
    v15 = v0[12];
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v14, &unk_265D5C098, v10, v13, v16, v14);
  }
}

void sub_265CCB12C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265CCB26C, v6, 0);
  }
}

uint64_t sub_265CCB26C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_265CCAE50;
  v6 = v0[17];

  return MEMORY[0x282200310](v6, v2, v1);
}

uint64_t sub_265CCB35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D591A0();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E538, &qword_265D5BFC0) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCB458, a5, 0);
}

uint64_t sub_265CCB458()
{
  v1 = *(v0 + 96);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D4F580] + 4);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_265CCB514;

  return MEMORY[0x2821AF4E8](v0 + 56, v2, v3);
}

uint64_t sub_265CCB514()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265CCB624, v2, 0);
}

uint64_t sub_265CCB624()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v6 = sub_265CD52F8(&qword_28003E500, type metadata accessor for StandaloneSessionMonitor);
  v0[19] = v6;
  v7 = v0[13];
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_265CCB828;
  v11 = v0[17];

  return MEMORY[0x282200310](v11, v7, v6);
}

uint64_t sub_265CCB828()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_265CCB938, v5, 0);
  }

  return result;
}

uint64_t sub_265CCB938()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[16];
    v8 = v0[13];
    (*(v3 + 32))(v7, v1, v2);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = *(MEMORY[0x277D0A890] + 4);
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = type metadata accessor for StandaloneSessionMonitor();
    v13 = sub_265CD52F8(&qword_28003E508, type metadata accessor for StandaloneSessionMonitor);
    *v11 = v0;
    v11[1] = sub_265CCBB08;
    v14 = v0[13];
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v13, &unk_265D5BFD0, v9, v12, v15, v13);
  }
}

void sub_265CCBB08()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 104);

    MEMORY[0x2822009F8](sub_265CCBC48, v6, 0);
  }
}

uint64_t sub_265CCBC48()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_265CCB828;
  v6 = v0[17];

  return MEMORY[0x282200310](v6, v2, v1);
}

uint64_t sub_265CCBD38(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_265D59DE0();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCBE08, v2, 0);
}

uint64_t sub_265CCBE08()
{
  v43 = v0;
  v1 = v0[12];
  v2 = sub_265D58BA0();
  if ((v2 & 0x100000000) == 0)
  {
    v3 = v0[17];
    sub_265D595F0();
    v4 = sub_265D59DD0();
    v5 = sub_265D5A070();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_265C01000, v4, v5, "Unknown Playback State.", v10, 2u);
      MEMORY[0x266770CF0](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v15 = v2;
  v16 = v0[18];
  sub_265D595F0();
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[18];
  v22 = v0[15];
  v21 = v0[16];
  if (v19)
  {
    v41 = v0[18];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v42 = v24;
    *v23 = 136315138;
    v25 = sub_265D58B90();
    v27 = sub_265CF4FFC(v25, v26, &v42);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_265C01000, v17, v18, "Updating workout state to: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266770CF0](v24, -1, -1);
    MEMORY[0x266770CF0](v23, -1, -1);

    (*(v21 + 8))(v41, v22);
  }

  else
  {

    (*(v21 + 8))(v20, v22);
  }

  if (v15 - 1 < 2)
  {
    v28 = v0[13];
    sub_265CCC7B4((v0 + 7));
    v29 = v0[10];
    if (v29)
    {
      v30 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v31 = *(MEMORY[0x277D4F5A8] + 4);
      v32 = swift_task_alloc();
      v0[19] = v32;
      *v32 = v0;
      v32[1] = sub_265CCC258;

      return MEMORY[0x2821AF518](v29, v30);
    }

    sub_265CA4AE8((v0 + 7), &qword_28003E528, &qword_265D5BF60);
LABEL_5:
    v12 = v0[17];
    v11 = v0[18];

    v13 = v0[1];

    return v13();
  }

  if (v15)
  {
    v38 = swift_task_alloc();
    v0[23] = v38;
    *v38 = v0;
    v38[1] = sub_265CCC598;
    v39 = v0[13];
    v40 = v0[14];

    return sub_265CCC848(v39);
  }

  else
  {
    v33 = v0[13];
    sub_265CCC7B4((v0 + 2));
    v34 = v0[5];
    if (!v34)
    {
      sub_265CA4AE8((v0 + 2), &qword_28003E528, &qword_265D5BF60);
      goto LABEL_5;
    }

    v35 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v36 = *(MEMORY[0x277D4F5B0] + 4);
    v37 = swift_task_alloc();
    v0[21] = v37;
    *v37 = v0;
    v37[1] = sub_265CCC3F8;

    return MEMORY[0x2821AF520](v34, v35);
  }
}

uint64_t sub_265CCC258()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_265CCC740;
  }

  else
  {
    v6 = sub_265CCC384;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265CCC384()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_265CCC3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_265CCC6CC;
  }

  else
  {
    v6 = sub_265CCC524;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265CCC524()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_265CCC598()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v7 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_265CCC6CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_265CCC740()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_265CCC7B4@<X0>(uint64_t a1@<X8>)
{
  sub_265CD4B54(v1, &v4);
  if (v6)
  {
    result = sub_265CD4B8C(&v4);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {

    return sub_265C033C4(&v5, a1);
  }

  return result;
}

uint64_t sub_265CCC848(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_265D59DE0();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCC908, v1, 0);
}

uint64_t sub_265CCC908()
{
  sub_265CD4B54(*(v0 + 184), v0 + 16);
  if (*(v0 + 104))
  {
    sub_265CD4B8C(v0 + 16);
    v1 = *(v0 + 216);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 16);

    v5 = *(v0 + 64);

    v6 = *(v0 + 72);

    v7 = *(v0 + 80);

    v8 = *(v0 + 88);

    v9 = *(v0 + 96);

    sub_265C033C4((v0 + 24), v0 + 112);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v10);
    v12 = *(MEMORY[0x277D4F588] + 4);
    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = sub_265CCCA54;

    return MEMORY[0x2821AF4F0](v10, v11);
  }
}

uint64_t sub_265CCCA54()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_265CCCBEC;
  }

  else
  {
    v6 = sub_265CCCB80;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265CCCB80()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v1 = v0[27];

  v2 = v0[1];

  return v2();
}

uint64_t sub_265CCCBEC()
{
  v25 = v0;
  v1 = v0[29];
  v2 = v0[27];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  sub_265D595F0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[19];
    v13 = MEMORY[0x2667704D0](v0[20], v0[21]);
    v15 = sub_265CF4FFC(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_265C01000, v4, v5, "Couldn't deactivate workout session: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266770CF0](v11, -1, -1);
    MEMORY[0x266770CF0](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[26];
    v16 = v0[27];
    v18 = v0[25];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[29];
  v20 = v0[27];
  swift_willThrow();

  v21 = v0[1];
  v22 = v0[29];

  return v21();
}

uint64_t sub_265CCCDC8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_265D58AC0();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_265D59DE0();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCCF50, v2, 0);
}

uint64_t sub_265CCCF50()
{
  v33 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[9];
  v30 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  (*(v2 + 104))(v1, *MEMORY[0x277D4F258], v3);
  v8 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 40))(v6 + v8, v1, v3);
  swift_endAccess();
  sub_265D595F0();
  (*(v4 + 16))(v30, v7, v5);
  v9 = sub_265D59DD0();
  v10 = sub_265D5A080();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  if (v11)
  {
    v31 = v0[11];
    v18 = swift_slowAlloc();
    v28 = v10;
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315138;
    v20 = sub_265D589D0();
    v29 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_265CF4FFC(v20, v22, &v32);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_265C01000, v9, v28, "Ending Session: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266770CF0](v19, -1, -1);
    MEMORY[0x266770CF0](v18, -1, -1);

    (*(v13 + 8))(v29, v31);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = swift_task_alloc();
  v0[17] = v24;
  *v24 = v0;
  v24[1] = sub_265CCD1EC;
  v25 = v0[6];
  v26 = v0[7];

  return sub_265CCC848(v25);
}

uint64_t sub_265CCD1EC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 80);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_265CCD33C()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v2 = v0[16];

  v3 = v0[17];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v4 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_lock;
  v5 = sub_265D59930();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for StandaloneSessionMonitor()
{
  result = qword_2813B8F50;
  if (!qword_2813B8F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CCD474()
{
  v0 = sub_265D59930();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_265CCD580();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_265CCD580()
{
  if (!qword_28003E4F8)
  {
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_28003E4F8);
    }
  }
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_265CCD600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265CCD63C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_265CCD690(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t sub_265CCD724@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CCD7B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265CCD8BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265CC6B80(a1);
}

uint64_t sub_265CCD950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4DFF8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StandaloneSessionMonitor();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v10, a4);
}

uint64_t sub_265CCDA18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C96620;

  return sub_265CCCDC8(a1, a2);
}

uint64_t sub_265CCDABC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265CCBD38(a1, a2);
}

uint64_t sub_265CCDB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E008] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StandaloneSessionMonitor();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265CCDC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E010] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for StandaloneSessionMonitor();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265CCDCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFF0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for StandaloneSessionMonitor();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v8, a3);
}

uint64_t sub_265CCDDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for StandaloneSessionMonitor();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v8, a3);
}

uint64_t sub_265CCDE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for StandaloneSessionMonitor();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v8, a3);
}

uint64_t sub_265CCDF18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CCDFA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_265CCE0DC()
{
  result = qword_28003E510;
  if (!qword_28003E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E510);
  }

  return result;
}

uint64_t sub_265CCE130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[47] = v33;
  v34 = *(v33 - 8);
  v3[48] = v34;
  v35 = *(v34 + 64) + 15;
  v3[49] = swift_task_alloc();
  v36 = sub_265D58020();
  v3[50] = v36;
  v37 = *(v36 - 8);
  v3[51] = v37;
  v38 = *(v37 + 64) + 15;
  v3[52] = swift_task_alloc();
  v39 = sub_265D59DE0();
  v3[53] = v39;
  v40 = *(v39 - 8);
  v3[54] = v40;
  v41 = *(v40 + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[57] = v42;
  v43 = *(v42 - 8);
  v3[58] = v43;
  v44 = *(v43 + 64) + 15;
  v3[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCE934, a2, 0);
}

uint64_t sub_265CCE934()
{
  v145 = v0;
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 464);
  v8 = *(v0 + 472);
  v9 = *(v0 + 456);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v10 = *(v0 + 440);
    v12 = *(v0 + 408);
    v11 = *(v0 + 416);
    v13 = *(v0 + 400);
    v14 = *(v0 + 144);
    (*(v7 + 96))(*(v0 + 472), v9);
    v15 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v15;
    v16 = v8[2];
    v17 = v8[3];
    v18 = v8[4];
    *(v0 + 89) = *(v8 + 73);
    *(v0 + 64) = v17;
    *(v0 + 80) = v18;
    *(v0 + 48) = v16;
    sub_265D595F0();
    v89 = *(v12 + 16);
    v89(v11, v14, v13);
    v19 = sub_265D59DD0();
    v20 = sub_265D5A060();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 432);
    v22 = *(v0 + 440);
    v24 = *(v0 + 416);
    v25 = *(v0 + 424);
    v27 = *(v0 + 400);
    v26 = *(v0 + 408);
    if (v21)
    {
      v141 = *(v0 + 424);
      v28 = swift_slowAlloc();
      v135 = v20;
      v29 = swift_slowAlloc();
      v144 = v29;
      *v28 = 136315138;
      sub_265CD52F8(&qword_28003E600, MEMORY[0x277D50400]);
      v30 = sub_265D5A3B0();
      v138 = v22;
      v32 = v31;
      (*(v26 + 8))(v24, v27);
      v33 = sub_265CF4FFC(v30, v32, &v144);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_265C01000, v19, v135, "StandaloneSessionMonitor - Rings received: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x266770CF0](v29, -1, -1);
      MEMORY[0x266770CF0](v28, -1, -1);

      (*(v23 + 8))(v138, v141);
    }

    else
    {

      (*(v26 + 8))(v24, v27);
      (*(v23 + 8))(v22, v25);
    }

    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v109 = *(v0 + 392);
    v111 = *(v0 + 384);
    v113 = *(v0 + 376);
    v105 = *(v0 + 368);
    v45 = *(v0 + 352);
    v44 = *(v0 + 360);
    v46 = *(v0 + 336);
    v47 = *(v0 + 344);
    v48 = *(v0 + 328);
    v139 = *(v0 + 312);
    v142 = *(v0 + 320);
    v133 = *(v0 + 296);
    v136 = *(v0 + 304);
    v129 = *(v0 + 280);
    v131 = *(v0 + 288);
    v125 = *(v0 + 264);
    v127 = *(v0 + 272);
    v121 = *(v0 + 248);
    v123 = *(v0 + 256);
    v117 = *(v0 + 232);
    v119 = *(v0 + 240);
    v115 = *(v0 + 224);
    v90 = *(v0 + 216);
    v91 = *(v0 + 208);
    v92 = *(v0 + 200);
    v49 = *(v0 + 136);
    v50 = *(v0 + 144);
    v103 = *(v49 + 112);
    v107 = *(v49 + 120);
    v93 = *(v0 + 192);
    v94 = *(v0 + 184);
    v95 = *(v0 + 176);
    v96 = *(v0 + 168);
    v97 = *(v0 + 160);
    v98 = *(v0 + 152);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v89(v44, v50, v43);
    (*(v42 + 56))(v44, 0, 1, v43);
    v51 = sub_265D58410();
    (*(*(v51 - 8) + 56))(v45, 1, 1, v51);
    v52 = sub_265D58590();
    (*(*(v52 - 8) + 56))(v47, 1, 1, v52);
    v53 = sub_265D58050();
    (*(*(v53 - 8) + 56))(v46, 1, 1, v53);
    v54 = sub_265D58200();
    (*(*(v54 - 8) + 56))(v48, 1, 1, v54);
    v55 = sub_265D58BC0();
    (*(*(v55 - 8) + 56))(v142, 1, 1, v55);
    v56 = sub_265D583E0();
    (*(*(v56 - 8) + 56))(v139, 1, 1, v56);
    v57 = sub_265D581B0();
    (*(*(v57 - 8) + 56))(v136, 1, 1, v57);
    v58 = sub_265D57F50();
    (*(*(v58 - 8) + 56))(v133, 1, 1, v58);
    v59 = sub_265D582A0();
    (*(*(v59 - 8) + 56))(v131, 1, 1, v59);
    v60 = sub_265D58680();
    (*(*(v60 - 8) + 56))(v129, 1, 1, v60);
    v61 = sub_265D58210();
    (*(*(v61 - 8) + 56))(v127, 1, 1, v61);
    v62 = sub_265D57E80();
    (*(*(v62 - 8) + 56))(v125, 1, 1, v62);
    v63 = sub_265D58430();
    (*(*(v63 - 8) + 56))(v123, 1, 1, v63);
    v64 = sub_265D58300();
    (*(*(v64 - 8) + 56))(v121, 1, 1, v64);
    v65 = sub_265D586F0();
    (*(*(v65 - 8) + 56))(v119, 1, 1, v65);
    v66 = sub_265D57E90();
    (*(*(v66 - 8) + 56))(v117, 1, 1, v66);
    v67 = sub_265D581C0();
    (*(*(v67 - 8) + 56))(v115, 1, 1, v67);
    v68 = sub_265D58BB0();
    (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
    v69 = sub_265D585C0();
    (*(*(v69 - 8) + 56))(v91, 1, 1, v69);
    v70 = sub_265D57EA0();
    (*(*(v70 - 8) + 56))(v92, 1, 1, v70);
    v71 = sub_265D57ED0();
    (*(*(v71 - 8) + 56))(v93, 1, 1, v71);
    v72 = sub_265D58240();
    (*(*(v72 - 8) + 56))(v94, 1, 1, v72);
    v73 = sub_265D58400();
    (*(*(v73 - 8) + 56))(v95, 1, 1, v73);
    v74 = sub_265D58600();
    (*(*(v74 - 8) + 56))(v96, 1, 1, v74);
    v75 = sub_265D58630();
    (*(*(v75 - 8) + 56))(v97, 1, 1, v75);
    v76 = sub_265D58B10();
    (*(*(v76 - 8) + 56))(v98, 1, 1, v76);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v111 + 8))(v109, v113);
    sub_265CD4B8C(v0 + 16);
  }

  else
  {
    v34 = *(v0 + 448);
    (*(v7 + 8))(*(v0 + 472), v9);
    sub_265D595F0();
    v35 = sub_265D59DD0();
    v36 = sub_265D5A070();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 448);
    v39 = *(v0 + 424);
    v40 = *(v0 + 432);
    if (v37)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_265C01000, v35, v36, "StandaloneSessionMonitor - No active session to update activity rings.", v41, 2u);
      MEMORY[0x266770CF0](v41, -1, -1);
    }

    (*(v40 + 8))(v38, v39);
  }

  v77 = *(v0 + 472);
  v79 = *(v0 + 440);
  v78 = *(v0 + 448);
  v80 = *(v0 + 416);
  v81 = *(v0 + 392);
  v83 = *(v0 + 360);
  v82 = *(v0 + 368);
  v85 = *(v0 + 344);
  v84 = *(v0 + 352);
  v86 = *(v0 + 336);
  v99 = *(v0 + 328);
  v100 = *(v0 + 320);
  v101 = *(v0 + 312);
  v102 = *(v0 + 304);
  v104 = *(v0 + 296);
  v106 = *(v0 + 288);
  v108 = *(v0 + 280);
  v110 = *(v0 + 272);
  v112 = *(v0 + 264);
  v114 = *(v0 + 256);
  v116 = *(v0 + 248);
  v118 = *(v0 + 240);
  v120 = *(v0 + 232);
  v122 = *(v0 + 224);
  v124 = *(v0 + 216);
  v126 = *(v0 + 208);
  v128 = *(v0 + 200);
  v130 = *(v0 + 192);
  v132 = *(v0 + 184);
  v134 = *(v0 + 176);
  v137 = *(v0 + 168);
  v140 = *(v0 + 160);
  v143 = *(v0 + 152);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_265CCF704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[47] = v33;
  v34 = *(v33 - 8);
  v3[48] = v34;
  v35 = *(v34 + 64) + 15;
  v3[49] = swift_task_alloc();
  v36 = sub_265D59DE0();
  v3[50] = v36;
  v37 = *(v36 - 8);
  v3[51] = v37;
  v38 = *(v37 + 64) + 15;
  v3[52] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[53] = v39;
  v40 = *(v39 - 8);
  v3[54] = v40;
  v41 = *(v40 + 64) + 15;
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CCFEA0, a2, 0);
}

uint64_t sub_265CCFEA0()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 424);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v90 = *(v0 + 392);
    v92 = *(v0 + 384);
    v94 = *(v0 + 376);
    v88 = *(v0 + 368);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v15 = *(v0 + 320);
    v14 = *(v0 + 328);
    v16 = *(v0 + 304);
    v116 = *(v0 + 312);
    v112 = *(v0 + 280);
    v114 = *(v0 + 288);
    v108 = *(v0 + 264);
    v110 = *(v0 + 272);
    v104 = *(v0 + 248);
    v106 = *(v0 + 256);
    v100 = *(v0 + 232);
    v102 = *(v0 + 240);
    v96 = *(v0 + 296);
    v98 = *(v0 + 224);
    v71 = *(v0 + 216);
    v72 = *(v0 + 208);
    v73 = *(v0 + 200);
    v74 = *(v0 + 192);
    v75 = *(v0 + 184);
    v76 = *(v0 + 176);
    v77 = *(v0 + 168);
    v78 = *(v0 + 160);
    v79 = *(v0 + 152);
    v17 = *(v0 + 136);
    v70 = *(v0 + 144);
    (*(v7 + 96))(v8, v9);
    v18 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v18;
    v19 = v8[2];
    v20 = v8[3];
    v21 = v8[4];
    *(v0 + 89) = *(v8 + 73);
    *(v0 + 64) = v20;
    *(v0 + 80) = v21;
    *(v0 + 48) = v19;
    v84 = *(v17 + 112);
    v86 = *(v17 + 120);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v22 = sub_265D58020();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    v23 = sub_265D58410();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v24 = sub_265D58590();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    v25 = sub_265D58050();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_265D58200();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    v27 = sub_265D58BC0();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    v28 = sub_265D583E0();
    (*(*(v28 - 8) + 56))(v116, 1, 1, v28);
    v29 = sub_265D581B0();
    (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
    v30 = sub_265D57F50();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v96, v70, v30);
    (*(v31 + 56))(v96, 0, 1, v30);
    v32 = sub_265D582A0();
    (*(*(v32 - 8) + 56))(v114, 1, 1, v32);
    v33 = sub_265D58680();
    (*(*(v33 - 8) + 56))(v112, 1, 1, v33);
    v34 = sub_265D58210();
    (*(*(v34 - 8) + 56))(v110, 1, 1, v34);
    v35 = sub_265D57E80();
    (*(*(v35 - 8) + 56))(v108, 1, 1, v35);
    v36 = sub_265D58430();
    (*(*(v36 - 8) + 56))(v106, 1, 1, v36);
    v37 = sub_265D58300();
    (*(*(v37 - 8) + 56))(v104, 1, 1, v37);
    v38 = sub_265D586F0();
    (*(*(v38 - 8) + 56))(v102, 1, 1, v38);
    v39 = sub_265D57E90();
    (*(*(v39 - 8) + 56))(v100, 1, 1, v39);
    v40 = sub_265D581C0();
    (*(*(v40 - 8) + 56))(v98, 1, 1, v40);
    v41 = sub_265D58BB0();
    (*(*(v41 - 8) + 56))(v71, 1, 1, v41);
    v42 = sub_265D585C0();
    (*(*(v42 - 8) + 56))(v72, 1, 1, v42);
    v43 = sub_265D57EA0();
    (*(*(v43 - 8) + 56))(v73, 1, 1, v43);
    v44 = sub_265D57ED0();
    (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
    v45 = sub_265D58240();
    (*(*(v45 - 8) + 56))(v75, 1, 1, v45);
    v46 = sub_265D58400();
    (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
    v47 = sub_265D58600();
    (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
    v48 = sub_265D58630();
    (*(*(v48 - 8) + 56))(v78, 1, 1, v48);
    v49 = sub_265D58B10();
    (*(*(v49 - 8) + 56))(v79, 1, 1, v49);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v92 + 8))(v90, v94);
    sub_265CD4B8C(v0 + 16);
  }

  else
  {
    v50 = *(v0 + 416);
    (*(v7 + 8))(*(v0 + 440), v9);
    sub_265D595F0();
    v51 = sub_265D59DD0();
    v52 = sub_265D5A070();
    v53 = os_log_type_enabled(v51, v52);
    v55 = *(v0 + 408);
    v54 = *(v0 + 416);
    v56 = *(v0 + 400);
    if (v53)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_265C01000, v51, v52, "StandaloneSessionMonitor - No active session to update workout calories.", v57, 2u);
      MEMORY[0x266770CF0](v57, -1, -1);
    }

    (*(v55 + 8))(v54, v56);
  }

  v58 = *(v0 + 440);
  v59 = *(v0 + 416);
  v60 = *(v0 + 392);
  v62 = *(v0 + 360);
  v61 = *(v0 + 368);
  v63 = *(v0 + 344);
  v64 = *(v0 + 352);
  v66 = *(v0 + 328);
  v65 = *(v0 + 336);
  v67 = *(v0 + 320);
  v80 = *(v0 + 312);
  v81 = *(v0 + 304);
  v82 = *(v0 + 296);
  v83 = *(v0 + 288);
  v85 = *(v0 + 280);
  v87 = *(v0 + 272);
  v89 = *(v0 + 264);
  v91 = *(v0 + 256);
  v93 = *(v0 + 248);
  v95 = *(v0 + 240);
  v97 = *(v0 + 232);
  v99 = *(v0 + 224);
  v101 = *(v0 + 216);
  v103 = *(v0 + 208);
  v105 = *(v0 + 200);
  v107 = *(v0 + 192);
  v109 = *(v0 + 184);
  v111 = *(v0 + 176);
  v113 = *(v0 + 168);
  v115 = *(v0 + 160);
  v117 = *(v0 + 152);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_265CD0AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[47] = v33;
  v34 = *(v33 - 8);
  v3[48] = v34;
  v35 = *(v34 + 64) + 15;
  v3[49] = swift_task_alloc();
  v36 = sub_265D59DE0();
  v3[50] = v36;
  v37 = *(v36 - 8);
  v3[51] = v37;
  v38 = *(v37 + 64) + 15;
  v3[52] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[53] = v39;
  v40 = *(v39 - 8);
  v3[54] = v40;
  v41 = *(v40 + 64) + 15;
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CD1274, a2, 0);
}

uint64_t sub_265CD1274()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 424);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v88 = *(v0 + 392);
    v90 = *(v0 + 384);
    v92 = *(v0 + 376);
    v86 = *(v0 + 368);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v15 = *(v0 + 320);
    v14 = *(v0 + 328);
    v114 = *(v0 + 296);
    v116 = *(v0 + 312);
    v110 = *(v0 + 280);
    v112 = *(v0 + 288);
    v106 = *(v0 + 264);
    v108 = *(v0 + 272);
    v102 = *(v0 + 248);
    v104 = *(v0 + 256);
    v98 = *(v0 + 232);
    v100 = *(v0 + 240);
    v94 = *(v0 + 304);
    v96 = *(v0 + 224);
    v71 = *(v0 + 216);
    v72 = *(v0 + 208);
    v16 = *(v0 + 184);
    v73 = *(v0 + 200);
    v74 = *(v0 + 192);
    v75 = *(v0 + 176);
    v76 = *(v0 + 168);
    v77 = *(v0 + 160);
    v78 = *(v0 + 152);
    v17 = *(v0 + 136);
    v70 = *(v0 + 144);
    (*(v7 + 96))(v8, v9);
    v18 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v18;
    v19 = v8[2];
    v20 = v8[3];
    v21 = v8[4];
    *(v0 + 89) = *(v8 + 73);
    *(v0 + 64) = v20;
    *(v0 + 80) = v21;
    *(v0 + 48) = v19;
    v82 = *(v17 + 112);
    v84 = *(v17 + 120);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v22 = sub_265D58020();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    v23 = sub_265D58410();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v24 = sub_265D58590();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    v25 = sub_265D58050();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_265D58200();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    v27 = sub_265D58BC0();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    v28 = sub_265D583E0();
    (*(*(v28 - 8) + 56))(v116, 1, 1, v28);
    v29 = sub_265D581B0();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v94, v70, v29);
    (*(v30 + 56))(v94, 0, 1, v29);
    v31 = sub_265D57F50();
    (*(*(v31 - 8) + 56))(v114, 1, 1, v31);
    v32 = sub_265D582A0();
    (*(*(v32 - 8) + 56))(v112, 1, 1, v32);
    v33 = sub_265D58680();
    (*(*(v33 - 8) + 56))(v110, 1, 1, v33);
    v34 = sub_265D58210();
    (*(*(v34 - 8) + 56))(v108, 1, 1, v34);
    v35 = sub_265D57E80();
    (*(*(v35 - 8) + 56))(v106, 1, 1, v35);
    v36 = sub_265D58430();
    (*(*(v36 - 8) + 56))(v104, 1, 1, v36);
    v37 = sub_265D58300();
    (*(*(v37 - 8) + 56))(v102, 1, 1, v37);
    v38 = sub_265D586F0();
    (*(*(v38 - 8) + 56))(v100, 1, 1, v38);
    v39 = sub_265D57E90();
    (*(*(v39 - 8) + 56))(v98, 1, 1, v39);
    v40 = sub_265D581C0();
    (*(*(v40 - 8) + 56))(v96, 1, 1, v40);
    v41 = sub_265D58BB0();
    (*(*(v41 - 8) + 56))(v71, 1, 1, v41);
    v42 = sub_265D585C0();
    (*(*(v42 - 8) + 56))(v72, 1, 1, v42);
    v43 = sub_265D57EA0();
    (*(*(v43 - 8) + 56))(v73, 1, 1, v43);
    v44 = sub_265D57ED0();
    (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
    v45 = sub_265D58240();
    (*(*(v45 - 8) + 56))(v16, 1, 1, v45);
    v46 = sub_265D58400();
    (*(*(v46 - 8) + 56))(v75, 1, 1, v46);
    v47 = sub_265D58600();
    (*(*(v47 - 8) + 56))(v76, 1, 1, v47);
    v48 = sub_265D58630();
    (*(*(v48 - 8) + 56))(v77, 1, 1, v48);
    v49 = sub_265D58B10();
    (*(*(v49 - 8) + 56))(v78, 1, 1, v49);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v90 + 8))(v88, v92);
    sub_265CD4B8C(v0 + 16);
  }

  else
  {
    v50 = *(v0 + 416);
    (*(v7 + 8))(*(v0 + 440), v9);
    sub_265D595F0();
    v51 = sub_265D59DD0();
    v52 = sub_265D5A070();
    v53 = os_log_type_enabled(v51, v52);
    v55 = *(v0 + 408);
    v54 = *(v0 + 416);
    v56 = *(v0 + 400);
    if (v53)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_265C01000, v51, v52, "StandaloneSessionMonitor - No active session to update workout distance.", v57, 2u);
      MEMORY[0x266770CF0](v57, -1, -1);
    }

    (*(v55 + 8))(v54, v56);
  }

  v58 = *(v0 + 440);
  v59 = *(v0 + 416);
  v60 = *(v0 + 392);
  v62 = *(v0 + 360);
  v61 = *(v0 + 368);
  v63 = *(v0 + 344);
  v64 = *(v0 + 352);
  v66 = *(v0 + 328);
  v65 = *(v0 + 336);
  v67 = *(v0 + 320);
  v79 = *(v0 + 312);
  v80 = *(v0 + 304);
  v81 = *(v0 + 296);
  v83 = *(v0 + 288);
  v85 = *(v0 + 280);
  v87 = *(v0 + 272);
  v89 = *(v0 + 264);
  v91 = *(v0 + 256);
  v93 = *(v0 + 248);
  v95 = *(v0 + 240);
  v97 = *(v0 + 232);
  v99 = *(v0 + 224);
  v101 = *(v0 + 216);
  v103 = *(v0 + 208);
  v105 = *(v0 + 200);
  v107 = *(v0 + 192);
  v109 = *(v0 + 184);
  v111 = *(v0 + 176);
  v113 = *(v0 + 168);
  v115 = *(v0 + 160);
  v117 = *(v0 + 152);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_265CD1E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[47] = v33;
  v34 = *(v33 - 8);
  v3[48] = v34;
  v35 = *(v34 + 64) + 15;
  v3[49] = swift_task_alloc();
  v36 = sub_265D59DE0();
  v3[50] = v36;
  v37 = *(v36 - 8);
  v3[51] = v37;
  v38 = *(v37 + 64) + 15;
  v3[52] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[53] = v39;
  v40 = *(v39 - 8);
  v3[54] = v40;
  v41 = *(v40 + 64) + 15;
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CD2638, a2, 0);
}

uint64_t sub_265CD2638()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 424);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v90 = *(v0 + 392);
    v92 = *(v0 + 384);
    v94 = *(v0 + 376);
    v88 = *(v0 + 368);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v15 = *(v0 + 320);
    v14 = *(v0 + 328);
    v16 = *(v0 + 312);
    v114 = *(v0 + 296);
    v116 = *(v0 + 304);
    v112 = *(v0 + 288);
    v108 = *(v0 + 264);
    v110 = *(v0 + 280);
    v104 = *(v0 + 248);
    v106 = *(v0 + 256);
    v100 = *(v0 + 232);
    v102 = *(v0 + 240);
    v96 = *(v0 + 272);
    v98 = *(v0 + 224);
    v71 = *(v0 + 216);
    v72 = *(v0 + 208);
    v73 = *(v0 + 200);
    v74 = *(v0 + 192);
    v75 = *(v0 + 184);
    v76 = *(v0 + 176);
    v77 = *(v0 + 168);
    v78 = *(v0 + 160);
    v79 = *(v0 + 152);
    v17 = *(v0 + 136);
    v70 = *(v0 + 144);
    (*(v7 + 96))(v8, v9);
    v18 = v8[1];
    *(v0 + 16) = *v8;
    *(v0 + 32) = v18;
    v19 = v8[2];
    v20 = v8[3];
    v21 = v8[4];
    *(v0 + 89) = *(v8 + 73);
    *(v0 + 64) = v20;
    *(v0 + 80) = v21;
    *(v0 + 48) = v19;
    v84 = *(v17 + 112);
    v86 = *(v17 + 120);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v22 = sub_265D58020();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    v23 = sub_265D58410();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v24 = sub_265D58590();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    v25 = sub_265D58050();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_265D58200();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    v27 = sub_265D58BC0();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    v28 = sub_265D583E0();
    (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
    v29 = sub_265D581B0();
    (*(*(v29 - 8) + 56))(v116, 1, 1, v29);
    v30 = sub_265D57F50();
    (*(*(v30 - 8) + 56))(v114, 1, 1, v30);
    v31 = sub_265D582A0();
    (*(*(v31 - 8) + 56))(v112, 1, 1, v31);
    v32 = sub_265D58680();
    (*(*(v32 - 8) + 56))(v110, 1, 1, v32);
    v33 = sub_265D58210();
    v34 = *(v33 - 8);
    (*(v34 + 16))(v96, v70, v33);
    (*(v34 + 56))(v96, 0, 1, v33);
    v35 = sub_265D57E80();
    (*(*(v35 - 8) + 56))(v108, 1, 1, v35);
    v36 = sub_265D58430();
    (*(*(v36 - 8) + 56))(v106, 1, 1, v36);
    v37 = sub_265D58300();
    (*(*(v37 - 8) + 56))(v104, 1, 1, v37);
    v38 = sub_265D586F0();
    (*(*(v38 - 8) + 56))(v102, 1, 1, v38);
    v39 = sub_265D57E90();
    (*(*(v39 - 8) + 56))(v100, 1, 1, v39);
    v40 = sub_265D581C0();
    (*(*(v40 - 8) + 56))(v98, 1, 1, v40);
    v41 = sub_265D58BB0();
    (*(*(v41 - 8) + 56))(v71, 1, 1, v41);
    v42 = sub_265D585C0();
    (*(*(v42 - 8) + 56))(v72, 1, 1, v42);
    v43 = sub_265D57EA0();
    (*(*(v43 - 8) + 56))(v73, 1, 1, v43);
    v44 = sub_265D57ED0();
    (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
    v45 = sub_265D58240();
    (*(*(v45 - 8) + 56))(v75, 1, 1, v45);
    v46 = sub_265D58400();
    (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
    v47 = sub_265D58600();
    (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
    v48 = sub_265D58630();
    (*(*(v48 - 8) + 56))(v78, 1, 1, v48);
    v49 = sub_265D58B10();
    (*(*(v49 - 8) + 56))(v79, 1, 1, v49);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v92 + 8))(v90, v94);
    sub_265CD4B8C(v0 + 16);
  }

  else
  {
    v50 = *(v0 + 416);
    (*(v7 + 8))(*(v0 + 440), v9);
    sub_265D595F0();
    v51 = sub_265D59DD0();
    v52 = sub_265D5A070();
    v53 = os_log_type_enabled(v51, v52);
    v55 = *(v0 + 408);
    v54 = *(v0 + 416);
    v56 = *(v0 + 400);
    if (v53)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_265C01000, v51, v52, "StandaloneSessionMonitor - No active session to update workout heart rate.", v57, 2u);
      MEMORY[0x266770CF0](v57, -1, -1);
    }

    (*(v55 + 8))(v54, v56);
  }

  v58 = *(v0 + 440);
  v59 = *(v0 + 416);
  v60 = *(v0 + 392);
  v62 = *(v0 + 360);
  v61 = *(v0 + 368);
  v63 = *(v0 + 344);
  v64 = *(v0 + 352);
  v66 = *(v0 + 328);
  v65 = *(v0 + 336);
  v67 = *(v0 + 320);
  v80 = *(v0 + 312);
  v81 = *(v0 + 304);
  v82 = *(v0 + 296);
  v83 = *(v0 + 288);
  v85 = *(v0 + 280);
  v87 = *(v0 + 272);
  v89 = *(v0 + 264);
  v91 = *(v0 + 256);
  v93 = *(v0 + 248);
  v95 = *(v0 + 240);
  v97 = *(v0 + 232);
  v99 = *(v0 + 224);
  v101 = *(v0 + 216);
  v103 = *(v0 + 208);
  v105 = *(v0 + 200);
  v107 = *(v0 + 192);
  v109 = *(v0 + 184);
  v111 = *(v0 + 176);
  v113 = *(v0 + 168);
  v115 = *(v0 + 160);
  v117 = *(v0 + 152);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_265CD3274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150) - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v32 = *(*(sub_265D58130() - 8) + 64) + 15;
  v3[50] = swift_task_alloc();
  v33 = sub_265D59090();
  v3[51] = v33;
  v34 = *(v33 - 8);
  v3[52] = v34;
  v35 = *(v34 + 64) + 15;
  v3[53] = swift_task_alloc();
  v36 = sub_265D58B10();
  v3[54] = v36;
  v37 = *(v36 - 8);
  v3[55] = v37;
  v38 = *(v37 + 64) + 15;
  v3[56] = swift_task_alloc();
  v39 = sub_265D59DE0();
  v3[57] = v39;
  v40 = *(v39 - 8);
  v3[58] = v40;
  v41 = *(v40 + 64) + 15;
  v3[59] = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003DE10, &qword_265D5BF50);
  v3[60] = v42;
  v43 = *(v42 - 8);
  v3[61] = v43;
  v44 = *(v43 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CD3A78, a2, 0);
}

uint64_t sub_265CD3A78()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 168);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices24StandaloneSessionMonitor_state;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  v6 = (*(v3 + 88))(v1, v2);
  v7 = *(v0 + 504);
  v8 = *(v0 + 480);
  v9 = *(v0 + 488);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v76 = v5;
    v77 = v4;
    v78 = v6;
    v81 = *(v0 + 448);
    v89 = *(v0 + 440);
    v91 = *(v0 + 432);
    v95 = *(v0 + 424);
    v97 = *(v0 + 416);
    v99 = *(v0 + 408);
    v10 = *(v0 + 392);
    v93 = *(v0 + 400);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);
    v129 = *(v0 + 344);
    v131 = *(v0 + 352);
    v125 = *(v0 + 328);
    v127 = *(v0 + 336);
    v121 = *(v0 + 312);
    v123 = *(v0 + 320);
    v117 = *(v0 + 296);
    v119 = *(v0 + 304);
    v113 = *(v0 + 280);
    v115 = *(v0 + 288);
    v109 = *(v0 + 264);
    v111 = *(v0 + 272);
    v105 = *(v0 + 248);
    v107 = *(v0 + 256);
    v101 = *(v0 + 232);
    v103 = *(v0 + 240);
    v79 = *(v0 + 224);
    v80 = *(v0 + 216);
    v82 = *(v0 + 208);
    v83 = *(v0 + 200);
    v84 = *(v0 + 192);
    v85 = *(v0 + 184);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    (*(v9 + 96))(v7, v8);
    v17 = v7[1];
    *(v0 + 16) = *v7;
    *(v0 + 32) = v17;
    v18 = v7[2];
    v19 = v7[3];
    v20 = v7[4];
    *(v0 + 89) = *(v7 + 73);
    *(v0 + 64) = v19;
    *(v0 + 80) = v20;
    *(v0 + 48) = v18;
    sub_265D59180();
    sub_265D59190();
    sub_265D5A030();
    sub_265D58AD0();
    v86 = *(v16 + 112);
    v87 = *(v16 + 120);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CC5700();
    sub_265D58CF0();

    v21 = sub_265D58020();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = sub_265D58410();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = sub_265D58590();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    v24 = sub_265D58050();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
    v25 = sub_265D58200();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_265D58BC0();
    (*(*(v26 - 8) + 56))(v131, 1, 1, v26);
    v27 = sub_265D583E0();
    (*(*(v27 - 8) + 56))(v129, 1, 1, v27);
    v28 = sub_265D581B0();
    (*(*(v28 - 8) + 56))(v127, 1, 1, v28);
    v29 = sub_265D57F50();
    (*(*(v29 - 8) + 56))(v125, 1, 1, v29);
    v30 = sub_265D582A0();
    (*(*(v30 - 8) + 56))(v123, 1, 1, v30);
    v31 = sub_265D58680();
    (*(*(v31 - 8) + 56))(v121, 1, 1, v31);
    v32 = sub_265D58210();
    (*(*(v32 - 8) + 56))(v119, 1, 1, v32);
    v33 = sub_265D57E80();
    (*(*(v33 - 8) + 56))(v117, 1, 1, v33);
    v34 = sub_265D58430();
    (*(*(v34 - 8) + 56))(v115, 1, 1, v34);
    v35 = sub_265D58300();
    (*(*(v35 - 8) + 56))(v113, 1, 1, v35);
    v36 = sub_265D586F0();
    (*(*(v36 - 8) + 56))(v111, 1, 1, v36);
    v37 = sub_265D57E90();
    (*(*(v37 - 8) + 56))(v109, 1, 1, v37);
    v38 = sub_265D581C0();
    (*(*(v38 - 8) + 56))(v107, 1, 1, v38);
    v39 = sub_265D58BB0();
    (*(*(v39 - 8) + 56))(v105, 1, 1, v39);
    v40 = sub_265D585C0();
    (*(*(v40 - 8) + 56))(v103, 1, 1, v40);
    v41 = sub_265D57EA0();
    (*(*(v41 - 8) + 56))(v101, 1, 1, v41);
    v42 = sub_265D57ED0();
    (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
    v43 = sub_265D58240();
    (*(*(v43 - 8) + 56))(v80, 1, 1, v43);
    v44 = sub_265D58400();
    (*(*(v44 - 8) + 56))(v82, 1, 1, v44);
    v45 = sub_265D58600();
    (*(*(v45 - 8) + 56))(v83, 1, 1, v45);
    v46 = sub_265D58630();
    (*(*(v46 - 8) + 56))(v84, 1, 1, v46);
    (*(v89 + 16))(v85, v81, v91);
    (*(v89 + 56))(v85, 0, 1, v91);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v97 + 8))(v95, v99);
    v47 = sub_265D58B00();
    *(v0 + 108) = v47;
    *(v0 + 112) = BYTE4(v47) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E8, &qword_265D5C088);
    sub_265D57F80();
    v48 = *(v0 + 105);
    if (v48 < 3 || v48 == 5)
    {
      (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
      sub_265CD4B8C(v0 + 16);
    }

    else
    {
      v70 = *(v0 + 488);
      v69 = *(v0 + 496);
      v71 = *(v0 + 480);
      v73 = *(v0 + 440);
      v72 = *(v0 + 448);
      v74 = *(v0 + 432);
      v75 = sub_265CC5700();
      (*(v73 + 8))(v72, v74);
      sub_265CD4B8C(v0 + 16);
      *v69 = v75;
      *(v69 + 88) = 1;
      (*(v70 + 104))(v69, v78, v71);
      swift_beginAccess();
      (*(v70 + 40))(v77 + v76, v69, v71);
      swift_endAccess();
    }
  }

  else
  {
    v49 = *(v0 + 472);
    (*(v9 + 8))(*(v0 + 504), v8);
    sub_265D595F0();
    v50 = sub_265D59DD0();
    v51 = sub_265D5A070();
    v52 = os_log_type_enabled(v50, v51);
    v54 = *(v0 + 464);
    v53 = *(v0 + 472);
    v55 = *(v0 + 456);
    if (v52)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_265C01000, v50, v51, "StandaloneSessionMonitor - No active session to update elapsed time.", v56, 2u);
      MEMORY[0x266770CF0](v56, -1, -1);
    }

    (*(v54 + 8))(v53, v55);
  }

  v58 = *(v0 + 496);
  v57 = *(v0 + 504);
  v59 = *(v0 + 472);
  v60 = *(v0 + 448);
  v61 = *(v0 + 424);
  v63 = *(v0 + 392);
  v62 = *(v0 + 400);
  v65 = *(v0 + 376);
  v64 = *(v0 + 384);
  v66 = *(v0 + 368);
  v88 = *(v0 + 360);
  v90 = *(v0 + 352);
  v92 = *(v0 + 344);
  v94 = *(v0 + 336);
  v96 = *(v0 + 328);
  v98 = *(v0 + 320);
  v100 = *(v0 + 312);
  v102 = *(v0 + 304);
  v104 = *(v0 + 296);
  v106 = *(v0 + 288);
  v108 = *(v0 + 280);
  v110 = *(v0 + 272);
  v112 = *(v0 + 264);
  v114 = *(v0 + 256);
  v116 = *(v0 + 248);
  v118 = *(v0 + 240);
  v120 = *(v0 + 232);
  v122 = *(v0 + 224);
  v124 = *(v0 + 216);
  v126 = *(v0 + 208);
  v128 = *(v0 + 200);
  v130 = *(v0 + 192);
  v132 = *(v0 + 184);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_265CD47D8()
{
  v0 = sub_265D581A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  sub_265D58A70();
  v9 = sub_265D58600();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_265CA4AE8(v8, &qword_28003E2F8, &qword_265D5B680);
LABEL_5:
    v22 = 0;
    return v22 & 1;
  }

  v25 = v1;
  v11 = sub_265D585E0();
  v13 = v12;
  v15 = v14;
  (*(v10 + 8))(v8, v9);
  v28 = v11;
  v29 = v13;
  v30 = v15 & 1;
  v26 = xmmword_265D5BC40;
  v27 = 1;
  sub_265CA48E8();
  sub_265CA493C();
  LOBYTE(v11) = sub_265D57F90();
  sub_265C037E8(v28, v29, v30);
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_265D58A10();
  v16 = sub_265D58190();
  v18 = v17;
  v20 = v19;
  (*(v25 + 8))(v4, v0);
  v28 = v16;
  v29 = v18;
  v30 = v20 & 1;
  v26 = xmmword_265D5BC50;
  v27 = 1;
  sub_265CD4AAC();
  sub_265CD4B00();
  v21 = sub_265D57F90();
  sub_265C037E8(v16, v18, v20 & 1);
  v22 = v21 ^ 1;
  return v22 & 1;
}

unint64_t sub_265CD4AAC()
{
  result = qword_28003E518;
  if (!qword_28003E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E518);
  }

  return result;
}

unint64_t sub_265CD4B00()
{
  result = qword_28003E520;
  if (!qword_28003E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E520);
  }

  return result;
}

uint64_t sub_265CD4BBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C96620;

  return sub_265CC8D44(a1, v1);
}

uint64_t sub_265CD4C54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CC94CC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_265CD4D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CC9EFC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265CD4E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CCA92C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265CD4EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CCB35C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_265CD4F9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265CD3274(a1, v5, v4);
}

uint64_t sub_265CD5048(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265CD1E9C(a1, v5, v4);
}

uint64_t sub_265CD50F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C96620;

  return sub_265CD0AD8(a1, v5, v4);
}

uint64_t sub_265CD51A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265CCF704(a1, v5, v4);
}

uint64_t sub_265CD524C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265CCE130(a1, v5, v4);
}

uint64_t sub_265CD52F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265CD5344(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_265D58EA0();
  v4 = (a1 + *(type metadata accessor for MultiUserLinkMessage() + 20));
  v5 = *v4;
  v6 = v4[1];
  return sub_265D59340();
}

uint64_t sub_265CD5398()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_265CD53FC()
{
  v0 = sub_265D581D0();
  sub_265CD5BA0();
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D50928], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_265D58940();
}

void sub_265CD54D8()
{
  v0 = sub_265D581D0();
  sub_265CD5BA0();
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D50928], v0);
  sub_265D58950();
}

void sub_265CD558C()
{
  v0 = sub_265D581D0();
  sub_265CD5BA0();
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D50928], v0);
  sub_265D58950();
}

uint64_t sub_265CD5640(uint64_t a1)
{
  v21 = a1;
  v1 = sub_265D58EB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = sub_265D59DE0();
  v19 = *(v4 - 8);
  v20 = v4;
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for MultiUserLinkMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D586A0();
  v11 = v18;
  v13 = v12;
  swift_beginAccess();
  v14 = __swift_project_boxed_opaque_existential_1((v11 + 24), *(v11 + 48));
  (*(v2 + 16))(v9, v21, v1);
  v15 = &v9[*(v6 + 20)];
  *v15 = v10;
  v15[1] = v13;
  v16 = *v14;
  sub_265C987E0(v10, v13);
  sub_265CB22CC(v9);
  sub_265C9889C(v10, v13);
  return sub_265C98770(v9);
}

uint64_t sub_265CD5970()
{
  v0 = sub_265D581D0();
  sub_265CD5BA0();
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D50928], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_265D58940();
}

uint64_t sub_265CD5A94(uint64_t a1)
{
  v3 = type metadata accessor for MultiUserLinkMessage();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v9 = sub_265D58EB0();
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  *&v7[*(v4 + 28)] = xmmword_265D5C100;
  v10 = *v8;
  sub_265CB22CC(v7);
  return sub_265C98770(v7);
}

unint64_t sub_265CD5BA0()
{
  result = qword_28003E4F0;
  if (!qword_28003E4F0)
  {
    sub_265D581D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E4F0);
  }

  return result;
}

uint64_t *sub_265CD5BF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  sub_265CD5D68();
  v6 = sub_265D58960();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v6(sub_265CA442C, v7);

  (*(v2 + 8))(v5, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v8 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v9 = v0[19];
  sub_265C959D0(v0[18]);
  sub_265CD6D44((v0 + 20));
  return v0;
}

uint64_t sub_265CD5D68()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v1 + 8))(v4, v0);
  memset(v11, 0, sizeof(v11));
  v5 = swift_allocObject();
  swift_weakInit();
  sub_265CD6D74(v11, v10);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v10[1];
  *(v6 + 24) = v10[0];
  *(v6 + 40) = v7;
  v8 = v10[3];
  *(v6 + 56) = v10[2];
  *(v6 + 72) = v8;
  sub_265D58930();
  return sub_265CD6D44(v11);
}

uint64_t sub_265CD5F18()
{
  sub_265CD5BF8();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices31RemoteParticipantHostAdvertiserC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265CD5F9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265CD5FEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_265CD6048(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_265CD6088(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_retain_n();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;

      sub_265CD6E10(a4, v8, a1, a2);
    }
  }

  else
  {
    v9 = sub_265D57FD0();
    sub_265CD6DB8();
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D50318], v9);
    v12 = v10;
    v13 = 1;
    a1(&v12);
  }
}

void sub_265CD61E8(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + 96);
      MEMORY[0x28223BE20](Strong);
      sub_265D58CA0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    sub_265D5A4B0();
    a2(v7, v8);
    sub_265CA4470(v7, v8);
  }
}

uint64_t sub_265CD6348(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_265CD761C(a2, a1 + 160);
  return swift_endAccess();
}

uint64_t sub_265CD63AC()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v3 + 8))(v6, v2);
  v7 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  sub_265D59A10();
  sub_265CD77F0();
  v8 = sub_265D5A090();
  swift_allocObject();
  swift_weakInit();

  v9 = sub_265D592D0();

  return v9;
}

uint64_t sub_265CD6564()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - v3;
  v5 = sub_265D59DE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  v10 = sub_265D59DD0();
  v11 = sub_265D5A080();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_265C01000, v10, v11, "Remote participant advertisement expired", v12, 2u);
    MEMORY[0x266770CF0](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265CD5D68();

    v14 = sub_265D58960();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14(sub_265CA4BF4, v15);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_265CD67DC@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v46 = *(v42 - 8);
  v2 = v46[8];
  v3 = MEMORY[0x28223BE20](v42);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v3);
  v41 = &v38 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v38 - v7;
  MEMORY[0x28223BE20](v6);
  v47 = &v38 - v8;
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  v14 = *(v10 + 8);
  v14(v13, v9);
  v15 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v16 = sub_265D59C70();
  v39 = v17;
  v18 = type metadata accessor for AirPlayRestrictionBypasser();
  v19 = swift_allocObject();
  sub_265D595E0();
  sub_265D59DC0();
  v14(v13, v9);
  v20 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  *(v19 + 16) = v20;
  [v20 setFlags_];
  v51[3] = v18;
  v51[4] = &off_28777D640;
  v51[0] = v19;
  v40 = v16;
  v49[0] = v16;
  v49[1] = v39;
  sub_265C97624(v51, v50);
  swift_unknownObjectRetain();
  v50[5] = sub_265CD63AC();
  sub_265CD5D68();
  v21 = swift_allocObject();
  swift_weakInit();
  sub_265CD6D74(v49, v48);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = v48[1];
  *(v22 + 24) = v48[0];
  *(v22 + 40) = v23;
  v24 = v48[3];
  *(v22 + 56) = v48[2];
  *(v22 + 72) = v24;
  v25 = v45;
  sub_265D58930();
  v26 = v46;
  v27 = v46[2];
  v28 = v41;
  v29 = v42;
  v27(v41, v25, v42);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v39 = swift_allocObject();
  v31 = v26[4];
  v31(v39 + v30, v28, v29);
  v32 = v43;
  v27(v43, v47, v29);
  v33 = swift_allocObject();
  v31(v33 + v30, v32, v29);
  v34 = (v33 + ((v30 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v39;
  *v34 = sub_265CD76A8;
  v34[1] = v35;
  sub_265D58930();
  swift_unknownObjectRelease();
  v36 = v46[1];
  v36(v45, v29);
  v36(v47, v29);
  sub_265CD6D44(v49);
  return __swift_destroy_boxed_opaque_existential_1Tm(v51);
}

unint64_t sub_265CD6DB8()
{
  result = qword_28003E610;
  if (!qword_28003E610)
  {
    sub_265D57FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E610);
  }

  return result;
}

uint64_t sub_265CD6E10(uint64_t a1, void *a2, void (*a3)(void **), uint64_t a4)
{
  v8 = sub_265D59DE0();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = swift_allocObject();
  v53 = a3;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v56 = a4;
  v57 = v21;
  v22 = a2[12];
  swift_retain_n();
  sub_265D58CA0();
  sub_265CD6D74(v70, v67);
  v52 = a1;
  sub_265CD6D74(a1, v68);
  if (v67[0])
  {
    sub_265CD6D74(v67, &v63);
    if (v68[0])
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
LABEL_8:
      sub_265D595E0();
      v34 = sub_265D59DD0();
      v35 = sub_265D5A080();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_265C01000, v34, v35, "Transitioning to equivalent state, nothing to do", v36, 2u);
        MEMORY[0x266770CF0](v36, -1, -1);
      }

      (*(v54 + 8))(v15, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
      sub_265D5A4B0();
      v37 = v63;
      v38 = BYTE8(v63);
      v58 = v63;
      v59 = BYTE8(v63);
      v53(&v58);
      sub_265CA4470(v37, v38);
      sub_265CD6D44(v70);
      sub_265CD6D44(v68);
      goto LABEL_16;
    }

    v51 = *(&v63 + 1);
    sub_265D595E0();
    v39 = sub_265D59DD0();
    v40 = sub_265D5A080();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_265C01000, v39, v40, "Deactivating advertising link", v41, 2u);
      MEMORY[0x266770CF0](v41, -1, -1);
    }

    v42 = (*(v54 + 8))(v12, v55);
    MEMORY[0x28223BE20](v42);
    v43 = v52;
    *(&v51 - 2) = a2;
    *(&v51 - 1) = v43;
    sub_265D58CA0();
    v44 = a2[17];
    __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
    sub_265D592E0();
    v45 = a2[18];
    if (v45)
    {
      v46 = a2[19];

      v45(v47);
      sub_265C959D0(v45);
    }

    swift_getObjectType();
    sub_265D59B30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    sub_265D5A4B0();
    v48 = v58;
    v49 = v59;
    v61 = v58;
    v62 = v59;
    v53(&v61);
    sub_265CA4470(v48, v49);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_265CD6D44(v70);
    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  }

  else
  {
    if (!v68[0])
    {
      goto LABEL_8;
    }

    v53 = v68[1];
    swift_unknownObjectRelease();
    sub_265C033C4(v69, &v58);
    sub_265D595E0();
    v23 = sub_265D59DD0();
    v24 = sub_265D5A080();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_265C01000, v23, v24, "Activating advertising link", v25, 2u);
      MEMORY[0x266770CF0](v25, -1, -1);
    }

    v26 = v55;
    v54 = *(v54 + 8);
    (v54)(v20, v55);
    swift_getObjectType();
    v27 = swift_allocObject();
    swift_weakInit();
    sub_265CD6D74(v52, &v63);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_265CD757C;
    *(v28 + 24) = v57;
    *(v28 + 32) = v27;
    v29 = v64;
    *(v28 + 40) = v63;
    *(v28 + 56) = v29;
    v30 = v66;
    *(v28 + 72) = v65;
    *(v28 + 88) = v30;

    sub_265D59B40();

    v31 = *__swift_project_boxed_opaque_existential_1(&v58, v60);
    sub_265D595E0();
    sub_265D59DC0();
    (v54)(v18, v26);
    v32 = *(v31 + 16);
    *&v65 = sub_265CDDA6C;
    *(&v65 + 1) = 0;
    *&v63 = MEMORY[0x277D85DD0];
    *(&v63 + 1) = 1107296256;
    *&v64 = sub_265C93674;
    *(&v64 + 1) = &block_descriptor_1;
    v33 = _Block_copy(&v63);
    [v32 activateWithCompletion_];
    _Block_release(v33);
    swift_unknownObjectRelease();
    sub_265CD6D44(v70);
    __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  }

LABEL_16:
  sub_265CD6D44(v67);
}

void sub_265CD75F4(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_265CD61E8(a1, *(v1 + 16));
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = v0[2];

  if (v0[3])
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
    v2 = v0[10];
    swift_unknownObjectRelease();
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_265CD76A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265CC4058(v4, a1);
}

uint64_t sub_265CD7734(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265C9EC70(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_265CD77F0()
{
  result = qword_2813B6CE0;
  if (!qword_2813B6CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B6CE0);
  }

  return result;
}

uint64_t sub_265CD7860()
{
  v81 = sub_265D58EB0();
  v75 = *(v81 - 8);
  v1 = *(v75 + 64);
  MEMORY[0x28223BE20](v81);
  v65 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265D58F70();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  v80 = v0;
  ObjectType = swift_getObjectType();
  v83 = v8;
  v11 = *MEMORY[0x277D4E4E0];
  v12 = v4[13];
  v79 = v4 + 13;
  v76 = v12;
  v12(v7, v11, v3);
  swift_allocObject();
  swift_weakInit();
  v13 = sub_265D58330();
  swift_unknownObjectRetain_n();
  v72 = v13;
  v73 = ObjectType;
  v74 = v9;
  sub_265D59200();

  v14 = v4[1];
  v77 = v4 + 1;
  v78 = v14;
  v82 = v3;
  v14(v7, v3);
  v15 = v8;
  swift_unknownObjectRelease();
  v83 = v8;
  v16 = v76;
  v76(v7, *MEMORY[0x277D4E408], v3);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v17 = v82;
  v18 = v78;
  v78(v7, v82);
  swift_unknownObjectRelease();
  v83 = v15;
  v16(v7, *MEMORY[0x277D4E608], v17);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_265D59210();

  v19 = v82;
  v18(v7, v82);

  swift_unknownObjectRelease();
  v83 = v15;
  v16(v7, *MEMORY[0x277D4E670], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v78(v7, v19);
  swift_unknownObjectRelease();
  v83 = v15;
  v16(v7, *MEMORY[0x277D4E870], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v20 = v82;
  v21 = v78;
  v78(v7, v82);
  swift_unknownObjectRelease();
  v83 = v15;
  v76(v7, *MEMORY[0x277D4E7A8], v20);
  swift_allocObject();
  swift_weakInit();
  sub_265D57DA0();
  swift_unknownObjectRetain();
  sub_265D59200();

  v22 = v82;
  v21(v7, v82);
  v23 = v21;
  swift_unknownObjectRelease();
  v83 = v15;
  v24 = v76;
  v76(v7, *MEMORY[0x277D4E7F8], v22);
  swift_allocObject();
  swift_weakInit();
  v69 = sub_265D584B0();
  swift_unknownObjectRetain();
  sub_265D59200();

  v25 = v82;
  v23(v7, v82);
  swift_unknownObjectRelease();
  v83 = v15;
  (v24)(v7, *MEMORY[0x277D4EB10], v25);
  swift_allocObject();
  swift_weakInit();
  sub_265D58740();
  swift_unknownObjectRetain();
  sub_265D59200();

  v26 = v82;
  v78(v7, v82);
  swift_unknownObjectRelease();
  v83 = v15;
  (v24)(v7, *MEMORY[0x277D4E450], v26);
  swift_allocObject();
  swift_weakInit();
  sub_265D58610();
  swift_unknownObjectRetain();
  sub_265D59200();

  v27 = v82;
  v28 = v78;
  v78(v7, v82);
  v68 = v15;
  swift_unknownObjectRelease();
  v83 = v15;
  v64 = *MEMORY[0x277D4E4C0];
  v24(v7);
  swift_allocObject();
  swift_weakInit();
  v71 = sub_265D583A0();
  sub_265D591F0();

  v28(v7, v27);
  v29 = v68;
  swift_unknownObjectRelease();
  v83 = v29;
  v63 = *MEMORY[0x277D4E568];
  (v76)(v7);
  swift_allocObject();
  v30 = v80;
  swift_weakInit();
  v70 = v7;
  sub_265D591F0();

  v28(v7, v27);
  swift_unknownObjectRelease();
  v31 = *(v30 + 56);
  v74 = *(v30 + 72);
  v32 = swift_getObjectType();
  v83 = v31;
  v33 = *MEMORY[0x277D4E130];
  v34 = v75;
  v35 = *(v75 + 104);
  v73 = v75 + 104;
  v66 = v35;
  v36 = v65;
  v37 = v81;
  (v35)(v65, v33, v81);
  swift_allocObject();
  swift_weakInit();
  sub_265D586C0();
  swift_unknownObjectRetain_n();
  v68 = v32;
  sub_265D591C0();

  v38 = *(v34 + 8);
  v38(v36, v37);
  v75 = v34 + 8;
  swift_unknownObjectRelease();
  v83 = v31;
  v60 = *MEMORY[0x277D4E0A8];
  v39 = v66;
  v66(v36);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591C0();

  v40 = v81;
  v38(v36, v81);
  swift_unknownObjectRelease();
  v83 = v31;
  v62 = *MEMORY[0x277D4E0D0];
  v39(v36);
  swift_allocObject();
  swift_weakInit();
  v61 = sub_265D58560();
  sub_265D591C0();

  v38(v36, v40);
  v67 = v38;
  swift_unknownObjectRelease();
  v83 = v31;
  v59 = *MEMORY[0x277D4E158];
  v39(v36);
  swift_allocObject();
  v41 = v80;
  swift_weakInit();
  v58[1] = sub_265D58460();
  sub_265D591C0();

  v42 = v81;
  v38(v36, v81);
  swift_unknownObjectRelease();
  v43 = *(v41 + 104);
  v44 = *(v41 + 120);
  v74 = swift_getObjectType();
  v83 = v43;
  (v39)(v36, v60, v42);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v68 = v44;
  sub_265D591C0();

  v45 = v81;
  v46 = v67;
  v67(v36, v81);
  swift_unknownObjectRelease();
  v83 = v43;
  v47 = v66;
  (v66)(v36, v59, v45);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591C0();

  v48 = v81;
  v46(v36, v81);
  swift_unknownObjectRelease();
  v83 = v43;
  (v47)(v36, v62, v48);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D591C0();

  v49 = v81;
  v46(v36, v81);
  swift_unknownObjectRelease();
  v83 = v43;
  (v47)(v36, *MEMORY[0x277D4E080], v49);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for MultiUserLinkMessage();
  sub_265CD9B9C(qword_2813B7920);
  sub_265CD9B9C(&qword_2813B7918);
  sub_265D591C0();

  v67(v36, v81);
  swift_unknownObjectRelease();
  v83 = v43;
  v50 = v70;
  v51 = v82;
  v52 = v76;
  v76(v70, v63, v82);
  swift_allocObject();
  v53 = v80;
  swift_weakInit();
  sub_265D591F0();

  v54 = v78;
  v78(v50, v51);
  swift_unknownObjectRelease();
  v55 = *(v53 + 128);
  v81 = *(v53 + 144);
  swift_getObjectType();
  v83 = v55;
  v52(v50, v64, v51);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v56 = v70;
  sub_265D591F0();

  v54(v56, v51);
  swift_unknownObjectRelease();
  v83 = v55;
  v76(v56, *MEMORY[0x277D4E560], v51);
  swift_allocObject();
  swift_weakInit();
  sub_265D591E0();

  v54(v56, v51);
  return swift_unknownObjectRelease();
}

uint64_t sub_265CD8B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v10);

    v5 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    __swift_project_boxed_opaque_existential_1((*v5 + 56), *(*v5 + 80));
    v6 = off_28777BD20;
    type metadata accessor for MultiUserLink();
    v6(a1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_265CD8CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v10);

    v5 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    __swift_project_boxed_opaque_existential_1((*v5 + 56), *(*v5 + 80));
    v6 = off_28777BD18[0];
    type metadata accessor for MultiUserLink();
    v6(a1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_265CD8E70@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v8);

    v3 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = *__swift_project_boxed_opaque_existential_1((*v3 + 56), *(*v3 + 80));
    sub_265CAECD4(a1);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_265CD8FA0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v8);

    v3 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    __swift_project_boxed_opaque_existential_1((*v3 + 56), *(*v3 + 80));
    v4 = off_28777BD30;
    type metadata accessor for MultiUserLink();
    v4();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_265CD9114@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v11);

    v7 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
    a2(a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_265CD9254(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265C97624(result + 16, v7);

    v6 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
    a3(a1);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return result;
}

uint64_t sub_265CD92E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v13);

    v8 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_265D59610();
    sub_265D59DC0();
    (*(v3 + 8))(v6, v2);
    v9 = *__swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
    sub_265CB2C84(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D8, &qword_265D5B660);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2D8, &qword_265D5B660);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_265CD94F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v13);

    v8 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_265D59610();
    sub_265D59DC0();
    (*(v3 + 8))(v6, v2);
    v9 = *__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
    sub_265C9D03C(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_265CD9708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 16, v15);

    v10 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_265D59610();
    sub_265D59DC0();
    (*(v5 + 8))(v8, v4);
    v11 = *__swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40));
    sub_265C9DC64(a1, a2);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_265CD9920()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[10];
  swift_unknownObjectRelease();
  v3 = v0[13];
  swift_unknownObjectRelease();
  v4 = v0[16];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265CD9B9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MultiUserLinkMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_265CD9C34()
{
  v1 = type metadata accessor for DistributedSessionPublisher.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  if (EnumCaseMultiPayload == 1)
  {

    v7 = v4[2];

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
    v9 = *(v8 + 80);
    v10 = *(v4 + *(v8 + 96));

    sub_265CD9DDC(v4 + v9);
  }

  else
  {
    v11 = v4[6];

    v12 = v4[7];

    v13 = v4[8];

    v14 = v4[9];

    v15 = v4[11];

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v17 = *(v16 + 160);
    v18 = *(v4 + *(v16 + 176));

    sub_265CD9DDC(v4 + v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 1);
  }

  return v6;
}

uint64_t sub_265CD9D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CD9DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265CD9E44()
{
  v1 = type metadata accessor for DistributedSessionPublisher.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;

  if (EnumCaseMultiPayload == 1)
  {
    v8 = v4[1];
    v7 = v4[2];

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
    v10 = *(v9 + 80);
    v11 = *(v4 + *(v9 + 96));

    sub_265CD9DDC(v4 + v10);
  }

  else
  {
    v12 = v4[6];

    v13 = v4[7];

    v14 = v4[8];

    v15 = v4[9];

    v8 = v4[10];
    v16 = v4[11];

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v18 = *(v17 + 160);
    v19 = *(v4 + *(v17 + 176));

    sub_265CD9DDC(v4 + v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 1);
  }

  return v8;
}

id sub_265CD9F80()
{
  v1 = type metadata accessor for DistributedSessionPublisher.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;

  if (EnumCaseMultiPayload == 1)
  {

    v7 = v4[2];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
    v9 = *(v8 + 80);
    v10 = *(v4 + *(v8 + 96));

    sub_265CD9DDC(v4 + v9);
  }

  else
  {
    v11 = v4[6];

    v12 = v4[7];

    v13 = v4[8];

    v14 = v4[9];

    v7 = v4[11];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v16 = *(v15 + 160);
    v17 = *(v4 + *(v15 + 176));

    sub_265CD9DDC(v4 + v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 1);
  }

  return v7;
}

uint64_t sub_265CDA0C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;

  if (EnumCaseMultiPayload == 1)
  {

    v10 = v7[2];

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
    v12 = *(v11 + 80);
    v13 = *(v7 + *(v11 + 96));

    return sub_265CDA4E0(v7 + v12, a1);
  }

  else
  {
    v15 = v7[6];

    v16 = v7[7];

    v17 = v7[8];

    v18 = v7[9];

    v19 = v7[11];

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v21 = *(v20 + 160);
    v22 = *(v7 + *(v20 + 176));

    sub_265CDA4E0(v7 + v21, a1);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7 + 1);
  }
}

uint64_t sub_265CDA21C()
{
  v1 = type metadata accessor for DistributedSessionPublisher.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265CD9D78(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;

  if (EnumCaseMultiPayload == 1)
  {

    v7 = v4[2];

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
    v9 = *(v4 + *(v8 + 96));
    sub_265CD9DDC(v4 + *(v8 + 80));
  }

  else
  {
    v10 = v4[6];

    v11 = v4[7];

    v12 = v4[8];

    v13 = v4[9];

    v14 = v4[11];

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v9 = *(v4 + *(v15 + 176));
    sub_265CD9DDC(v4 + *(v15 + 160));
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 1);
  }

  return v9;
}

uint64_t sub_265CDA360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265CD9D78(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_265CDA484(v7);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    v9 = *v7;

    v10 = *(v7 + 6);

    v11 = *(v7 + 7);

    v12 = *(v7 + 8);

    v13 = *(v7 + 9);

    v14 = *(v7 + 11);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v16 = *(v15 + 160);
    v17 = *&v7[*(v15 + 176)];

    sub_265C033C4((v7 + 8), a1);
    return sub_265CD9DDC(&v7[v16]);
  }

  return result;
}

uint64_t sub_265CDA484(uint64_t a1)
{
  v2 = type metadata accessor for DistributedSessionPublisher.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265CDA4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_265CDA564()
{
  result = qword_28003E628;
  if (!qword_28003E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E628);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionBiomeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionBiomeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265CDA70C()
{
  result = qword_28003E630;
  if (!qword_28003E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E630);
  }

  return result;
}

uint64_t sub_265CDA760()
{
  v1 = *v0;
  sub_265D5A460();
  sub_265D5A490();
  return sub_265D5A4A0();
}

uint64_t sub_265CDA7D4()
{
  v1 = *v0;
  sub_265D5A460();
  sub_265D5A490();
  return sub_265D5A4A0();
}

uint64_t sub_265CDA818@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_265CDA850(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_265CDA850(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

void sub_265CDA870(uint64_t a1)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v26[2] = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state;
  swift_beginAccess();
  sub_265CDBF48(a1, v1 + v7);
  swift_endAccess();
  sub_265CDB468(a1, v31);
  if (v31[3])
  {
    v26[0] = v4;
    v26[1] = v3;
    v8 = v31[5];
    v9 = v31[6];
    v10 = v31[7];
    v11 = v32;
    v12 = v33;
    v13 = v34;
    v14 = v35;
    v15 = sub_265D57CE0();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_265D57CD0();
    v26[14] = v8;
    v26[15] = v9;
    v26[16] = v10;
    v27 = v11;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    sub_265CDBF80();
    v20 = sub_265D57CC0();
    v22 = v21;

    v23 = [objc_opt_self() standardUserDefaults];
    v24 = sub_265D57DB0();
    v25 = sub_265D59E90();
    [v23 setObject:v24 forKey:v25];

    sub_265C9889C(v20, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    v18 = [objc_opt_self() standardUserDefaults];
    v19 = sub_265D59E90();
    [v18 removeObjectForKey_];
  }
}

uint64_t sub_265CDAC5C()
{
  v1 = OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator__recordBiomeStreams;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E638, &qword_265D5C5E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_biomeEventRecorderProvider));
  sub_265CDAFB4(v0 + OBJC_IVAR____TtC22SeymourSessionServices23SessionBiomeCoordinator_state);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionBiomeCoordinator()
{
  result = qword_2813B8798;
  if (!qword_2813B8798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CDAD78()
{
  sub_265CDAE1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_265CDAE1C()
{
  if (!qword_2813B8FF0)
  {
    v0 = sub_265D58D20();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FF0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices0B16BiomeCoordinatorC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy77_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_265CDAEB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 77))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265CDAF08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 61) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 77) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 77) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_265CDAF68(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 76) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}