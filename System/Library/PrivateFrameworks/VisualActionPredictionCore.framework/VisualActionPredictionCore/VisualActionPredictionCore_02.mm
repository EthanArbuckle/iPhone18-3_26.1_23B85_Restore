uint64_t sub_2262E0528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793210, &unk_2263525C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v60 - v5;
  v6 = type metadata accessor for ResourceManager.Record();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22634EEFC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v72 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  v75 = sub_22635004C();
  v19 = *(v75 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v75);
  v74 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v60 - v23;
  sub_22634EEEC();
  sub_22635002C();
  v25 = v11[2];
  v71 = a2;
  v76 = v10;
  v65 = v25;
  v25(v18, a2, v10);
  v26 = sub_22635003C();
  v27 = sub_22635072C();
  v28 = os_log_type_enabled(v26, v27);
  v73 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v62 = v19;
    v30 = v29;
    v63 = swift_slowAlloc();
    v77[0] = v63;
    *v30 = 136315138;
    sub_2262E48A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v31 = v76;
    v32 = sub_226350C1C();
    v61 = v9;
    v34 = v33;
    v64 = v11[1];
    v64(v18, v31);
    v35 = sub_226345004(v32, v34, v77);
    v9 = v61;

    *(v30 + 4) = v35;
    _os_log_impl(&dword_2262B6000, v26, v27, "Adding resource %s...", v30, 0xCu);
    v36 = v63;
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x22AA7D570](v36, -1, -1);
    v37 = v30;
    v19 = v62;
    MEMORY[0x22AA7D570](v37, -1, -1);
  }

  else
  {

    v64 = v11[1];
    v64(v18, v76);
  }

  v63 = *(v19 + 8);
  (v63)(v24, v75);
  v38 = v71;
  v39 = v76;
  v40 = v65;
  v65(v9, v71, v76);
  v41 = v68;
  v42 = &v9[*(v68 + 20)];
  sub_22634EEAC();
  v43 = *(v41 + 24);
  v44 = sub_22634FDDC();
  (*(*(v44 - 8) + 16))(&v9[v43], v69, v44);
  v45 = v66;
  v40(v66, v38, v39);
  v46 = v70;
  sub_2262E219C(v9, v70);
  (*(v67 + 56))(v46, 0, 1, v41);
  swift_beginAccess();
  sub_2262DFB20(v46, v45);
  swift_endAccess();
  v47 = v74;
  sub_22635002C();
  v48 = v72;
  v40(v72, v38, v39);
  v49 = sub_22635003C();
  v50 = sub_22635072C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v77[0] = v52;
    *v51 = 136315138;
    sub_2262E48A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v53 = v76;
    v54 = sub_226350C1C();
    v56 = v55;
    v64(v48, v53);
    v57 = sub_226345004(v54, v56, v77);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_2262B6000, v49, v50, "Added resource %s.", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x22AA7D570](v52, -1, -1);
    MEMORY[0x22AA7D570](v51, -1, -1);

    v58 = v74;
  }

  else
  {

    v64(v48, v76);
    v58 = v47;
  }

  (v63)(v58, v75);
  return sub_2262E3CA0(v9);
}

BOOL sub_2262E0C04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22634EEFC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v79 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v77 = v69 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v69 - v11;
  v13 = sub_22635004C();
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v80 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v69 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793210, &unk_2263525C8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v78 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v69 - v24;
  swift_beginAccess();
  v26 = *(v1 + 112);
  if (*(v26 + 16))
  {
    v75 = v12;
    v27 = sub_2263394D8(a1);
    if (v28)
    {
      v29 = v27;
      v74 = *(v26 + 56);
      v30 = type metadata accessor for ResourceManager.Record();
      v31 = v19;
      v32 = v4;
      v33 = v2;
      v34 = a1;
      v35 = v5;
      v36 = *(v30 - 8);
      sub_2262E219C(v74 + *(v36 + 72) * v29, v25);
      (*(v36 + 56))(v25, 0, 1, v30);
      v5 = v35;
      a1 = v34;
      v2 = v33;
      v4 = v32;
      v19 = v31;
    }

    else
    {
      v30 = type metadata accessor for ResourceManager.Record();
      (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
    }

    v12 = v75;
  }

  else
  {
    v30 = type metadata accessor for ResourceManager.Record();
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }

  swift_endAccess();
  type metadata accessor for ResourceManager.Record();
  v37 = *(v30 - 8);
  v38 = (*(v37 + 48))(v25, 1, v30);
  sub_2262D67D8(v25, &qword_27D793210, &unk_2263525C8);
  if (v38 != 1)
  {
    v74 = v37;
    LODWORD(v75) = v38;
    sub_22635002C();
    v73 = v5[2];
    v73(v12, a1, v4);
    v39 = sub_22635003C();
    v40 = sub_22635072C();
    v71 = v19;
    v41 = v40;
    v42 = os_log_type_enabled(v39, v40);
    v76 = v5;
    if (v42)
    {
      v43 = v4;
      v44 = v12;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v70 = a1;
      v47 = v46;
      v83[0] = v46;
      *v45 = 136315138;
      sub_2262E48A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
      v48 = sub_226350C1C();
      v69[1] = v2;
      v50 = v49;
      v72 = v76[1];
      v72(v44, v43);
      v51 = sub_226345004(v48, v50, v83);
      v52 = v81;

      *(v45 + 4) = v51;
      _os_log_impl(&dword_2262B6000, v39, v41, "Removing resource %s...", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v53 = v47;
      a1 = v70;
      MEMORY[0x22AA7D570](v53, -1, -1);
      MEMORY[0x22AA7D570](v45, -1, -1);

      v54 = *(v82 + 8);
      v54(v71, v52);
      v55 = v43;
    }

    else
    {

      v72 = v5[1];
      v72(v12, v4);
      v54 = *(v82 + 8);
      v54(v71, v81);
      v55 = v4;
    }

    v56 = v77;
    v57 = v73;
    v73(v77, a1, v55);
    v58 = v78;
    (*(v74 + 56))(v78, 1, 1, v30);
    swift_beginAccess();
    sub_2262DFB20(v58, v56);
    swift_endAccess();
    sub_22635002C();
    v59 = v79;
    v57(v79, a1, v55);
    v60 = sub_22635003C();
    v61 = sub_22635072C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v83[0] = v63;
      *v62 = 136315138;
      sub_2262E48A4(&qword_28137FA38, MEMORY[0x277CC95F0]);
      v64 = sub_226350C1C();
      v66 = v65;
      v72(v59, v55);
      v67 = sub_226345004(v64, v66, v83);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_2262B6000, v60, v61, "Removed resource %s.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x22AA7D570](v63, -1, -1);
      MEMORY[0x22AA7D570](v62, -1, -1);
    }

    else
    {

      v72(v59, v55);
    }

    v54(v80, v81);
    v38 = v75;
  }

  return v38 != 1;
}

uint64_t sub_2262E1420(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22634FDDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResourceManager.Record();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v55 - v13;
  v69 = sub_22634EEFC();
  v15 = *(v69 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v69);
  v65 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v55 - v19;
  v21 = sub_2262FEEC0(MEMORY[0x277D84F90]);
  v22 = *(a1 + 16);
  if (!v22)
  {
    return v21;
  }

  v64 = v14;
  v23 = *(v15 + 16);
  v24 = v15 + 16;
  v25 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v67 = *(v24 + 56);
  v68 = v24;
  v57 = v5;
  v58 = (v5 + 16);
  v66 = (v24 - 8);
  v55[0] = v5 + 40;
  v55[1] = v5 + 32;
  v56 = v2;
  v62 = v23;
  v63 = v20;
  v23(v20, v25, v69);
  while (1)
  {
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    swift_beginAccess();
    v26 = *(v2 + 112);
    if (!*(v26 + 16) || (v27 = sub_2263394D8(v20), (v28 & 1) == 0))
    {
      swift_endAccess();
      (*v66)(v20, v69);
      goto LABEL_4;
    }

    v29 = v59;
    sub_2262E219C(*(v26 + 56) + *(v60 + 72) * v27, v59);
    v30 = v29;
    v31 = v64;
    sub_2262E47D4(v30, v64, type metadata accessor for ResourceManager.Record);
    swift_endAccess();
    v32 = v65;
    v23(v65, v20, v69);
    v33 = v31 + *(v61 + 24);
    v34 = v8;
    v35 = v4;
    (*v58)(v8, v33, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v21;
    v38 = sub_2263394D8(v32);
    v39 = v21[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v21[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22633ADC4();
      }
    }

    else
    {
      sub_2263384A8(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_2263394D8(v65);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_24;
      }

      v38 = v43;
    }

    v8 = v34;
    v21 = v70;
    if (v42)
    {
      v45 = v70[7] + *(v57 + 72) * v38;
      v4 = v35;
      (*(v57 + 40))(v45, v34, v35);
      v46 = *v66;
      v47 = v69;
      (*v66)(v65, v69);
      sub_2262E3CA0(v64);
      v46(v63, v47);
    }

    else
    {
      v70[(v38 >> 6) + 8] |= 1 << v38;
      v48 = v65;
      v49 = v69;
      v62(v21[6] + v38 * v67, v65, v69);
      (*(v57 + 32))(v21[7] + *(v57 + 72) * v38, v8, v35);
      v50 = *v66;
      (*v66)(v48, v49);
      sub_2262E3CA0(v64);
      v50(v63, v49);
      v51 = v21[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_23;
      }

      v21[2] = v53;
      v4 = v35;
    }

    v2 = v56;
    v23 = v62;
    v20 = v63;
LABEL_4:
    v25 += v67;
    if (!--v22)
    {
      return v21;
    }

    v23(v20, v25, v69);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_226350C8C();
  __break(1u);
  return result;
}

uint64_t sub_2262E1994()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for ResourceManager.Record()
{
  result = qword_27D793200;
  if (!qword_27D793200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2262E1A64()
{
  result = sub_22634EEFC();
  if (v1 <= 0x3F)
  {
    result = sub_22634EECC();
    if (v2 <= 0x3F)
    {
      result = sub_22634FDDC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2262E1B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22633941C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226339D1C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_22634FF9C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_2262E2A88(v9, v12, MEMORY[0x277D78D68]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22634FF9C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2262E1CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2263394D8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22633AAB0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22634EEFC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ResourceManager.Record();
    v22 = *(v15 - 8);
    sub_2262E47D4(v14 + *(v22 + 72) * v8, a2, type metadata accessor for ResourceManager.Record);
    sub_2262E2418(v8, v11, type metadata accessor for ResourceManager.Record);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ResourceManager.Record();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2262E1E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22633941C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22633AAEC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for VisualAction(0);
    v22 = *(v15 - 8);
    sub_2262E47D4(v14 + *(v22 + 72) * v9, a3, type metadata accessor for VisualAction);
    sub_2262E2A88(v9, v12, type metadata accessor for VisualAction);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for VisualAction(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2262E1FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2263395AC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22633AD88();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22634F34C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_22634EEFC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_2262E2C7C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22634EEFC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2262E219C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceManager.Record();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2262E2200(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2263508EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_226350CEC();
      MEMORY[0x22AA7CDB0](v10);
      result = sub_226350D0C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for Analytics.Interval(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_2262E2418(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_22634EEFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_2263508EC();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_2262E48A4(&qword_28137FA50, MEMORY[0x277CC95F0]);
      v25 = sub_22635040C();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2262E2768(int64_t a1, uint64_t a2)
{
  v43 = sub_22634EEFC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2263508EC();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2262E48A4(&qword_28137FA50, MEMORY[0x277CC95F0]);
      v26 = sub_22635040C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_2262E2A88(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_2263508EC() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_226350CEC();

      sub_2263504EC();
      v15 = sub_226350D0C();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2262E2C7C(int64_t a1, uint64_t a2)
{
  v4 = sub_22634F34C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2263508EC();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_2262E48A4(&unk_27D793220, MEMORY[0x277D78638]);
      v24 = sub_22635040C();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_22634EEFC() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2262E2FC0(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Analytics.Interval(0);
  result = sub_2262E47D4(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for Analytics.Interval);
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

uint64_t sub_2262E3068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22634FF9C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_2262E3118(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_2262E3160(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22634EEFC();
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

uint64_t sub_2262E3218(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22634EEFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ResourceManager.Record();
  result = sub_2262E47D4(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ResourceManager.Record);
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

uint64_t sub_2262E3308(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for VisualAction(0);
  result = sub_2262E47D4(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for VisualAction);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2262E33B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_2262E34B4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2263393B0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for Analytics.Interval(0);
      return sub_2262E483C(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for Analytics.Interval);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_226339AE4();
    goto LABEL_7;
  }

  sub_226336018(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_2263393B0(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_2262E2FC0(v10, a2, a1, v16);
}

uint64_t sub_2262E3608(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22633941C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_226339D1C();
      goto LABEL_7;
    }

    sub_226336374(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_22633941C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22634FF9C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2262E3068(v12, a2, a3, a1, v18);
}

uint64_t sub_2262E3788(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22633941C(a2, a3);
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
      sub_226337500(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22633941C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_226350C8C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_22633A944();
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

uint64_t sub_2262E3900(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2263394D8(a2);
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
      sub_22633A6C4();
      goto LABEL_7;
    }

    sub_226337124(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2263394D8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2262E3160(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_226350C8C();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_2262E3ACC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2263394D8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for ResourceManager.Record();
      return sub_2262E483C(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for ResourceManager.Record);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_22633AAB0();
    goto LABEL_7;
  }

  sub_2263377A4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_2263394D8(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2262E3218(v15, v12, a1, v21);
}

uint64_t sub_2262E3CA0(uint64_t a1)
{
  v2 = type metadata accessor for ResourceManager.Record();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2262E3CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22633941C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for VisualAction(0);
      return sub_2262E483C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for VisualAction);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22633AAEC();
    goto LABEL_7;
  }

  sub_2263377E0(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_22633941C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2262E3308(v12, a2, a3, a1, v18);
}

uint64_t sub_2262E3E68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634F0EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_226339680(a2);
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
      sub_22633AD4C();
      goto LABEL_7;
    }

    sub_226337B58(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_226339680(a2);
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
      return sub_2262E33B4(v15, v12, a1, v21, MEMORY[0x277D78248], MEMORY[0x277D78298]);
    }

LABEL_15:
    result = sub_226350C8C();
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
  v23 = sub_22634F10C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2262E4094(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634F34C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2263395AC(a2);
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
      sub_22633AD88();
      goto LABEL_7;
    }

    sub_226338000(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_2263395AC(a2);
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
      return sub_2262E33B4(v15, v12, a1, v21, MEMORY[0x277D78638], MEMORY[0x277CC95F0]);
    }

LABEL_15:
    result = sub_226350C8C();
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
  v23 = sub_22634EEFC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2262E42C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22633941C(a2, a3);
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
      sub_226338950(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22633941C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_226350C8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22633B15C();
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

uint64_t sub_2262E443C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2263394D8(a2);
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
      sub_22633B2CC();
      goto LABEL_7;
    }

    sub_226338BF8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2263394D8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2262E3160(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_226350C8C();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_2262E4608(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2263394D8(a2);
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
      sub_22633B54C();
      goto LABEL_7;
    }

    sub_226338FD4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2263394D8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2262E3160(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_226350C8C();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_2262E47D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262E483C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2262E48A4(unint64_t *a1, void (*a2)(uint64_t))
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

id VisualActionEvent.__allocating_init(actionId:outcome:bundleId:majorLabel:minorLabel:timestamp:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v19 = objc_allocWithZone(v10);
  v20 = *a3;
  *&v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
  v21 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
  *v21 = a1;
  v21[1] = a2;
  v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = v20;
  v22 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
  *v24 = a8;
  v24[1] = a10;
  *&v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = a9;
  v27.receiver = v19;
  v27.super_class = v10;
  return objc_msgSendSuper2(&v27, sel_init);
}

VisualActionPredictionCore::VisualActionEvent::Outcome_optional __swiftcall VisualActionEvent.Outcome.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VisualActionEvent.dataVersion.getter()
{
  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VisualActionEvent.dataVersion.setter(int a1)
{
  v3 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id VisualActionEvent.init(actionId:outcome:bundleId:majorLabel:minorLabel:timestamp:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  ObjectType = swift_getObjectType();
  v20 = *a3;
  *&v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
  v21 = &v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
  *v21 = a1;
  v21[1] = a2;
  v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = v20;
  v22 = &v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
  *v24 = a8;
  v24[1] = a10;
  *&v10[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = a9;
  v27.receiver = v10;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t VisualActionEvent.serialize()()
{
  v0 = sub_22634F1EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-v10];
  sub_2262E5078(&v15[-v10]);
  sub_2262E6268(v11, v9);
  v12 = type metadata accessor for PBVisualActionEvent();
  if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
  {
    sub_2262E62D8(v11);
    sub_2262E62D8(v9);
    return 0;
  }

  else
  {
    sub_22634F1DC();
    sub_2262E6340();
    v14 = sub_22634F26C();
    (*(v1 + 8))(v4, v0);
    sub_2262E62D8(v11);
    sub_2262E6398(v9);
    return v14;
  }
}

uint64_t sub_2262E5078@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PBVisualActionEvent();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634F19C();
  v8 = &v7[v3[5]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v7[v3[6]];
  *v9 = 0;
  *(v9 + 4) = 256;
  v10 = &v7[v3[7]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v7[v3[8]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v7[v3[9]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = v3[10];
  v14 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId + 8);
  *v8 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId);
  *(v8 + 1) = v14;
  *v9 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome);
  *(v9 + 4) = 1;
  v15 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId + 8);
  *v10 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId);
  *(v10 + 1) = v15;
  v16 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel + 8);
  if (v16)
  {
    *v11 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel);
    *(v11 + 1) = v16;
  }

  v17 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel + 8);
  if (v17)
  {
    *v12 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel);
    *(v12 + 1) = v17;
  }

  v18 = &v7[v13];
  *v18 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp);
  v18[8] = 0;
  sub_2262E6C44(v7, a1);
  (*(v4 + 56))(a1, 0, 1, v3);
}

id VisualActionEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2262E52F4()
{
  v1 = *v0;
  v2 = 0x7372655661746164;
  v3 = 0x62614C726F6E696DLL;
  if (v1 != 5)
  {
    v3 = 0x6D617473656D6974;
  }

  v4 = 0x6449656C646E7562;
  if (v1 != 3)
  {
    v4 = 0x62614C726F6A616DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64496E6F69746361;
  if (v1 != 1)
  {
    v5 = 0x656D6F6374756FLL;
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

uint64_t sub_2262E53E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2262E698C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2262E5424(uint64_t a1)
{
  v2 = sub_2262E63F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262E5460(uint64_t a1)
{
  v2 = sub_2262E63F4();

  return MEMORY[0x2821FE720](a1, v2);
}

id VisualActionEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VisualActionEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793278, &qword_2263525F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262E63F4();
  sub_226350D2C();
  v11 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  swift_beginAccess();
  v12 = *(v3 + v11);
  v24 = 0;
  sub_226350BFC();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId);
    v15 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId + 8);
    v24 = 1;
    sub_226350BBC();
    v24 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome);
    v23[6] = 2;
    sub_2262E6448();
    sub_226350BEC();
    v16 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId);
    v17 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId + 8);
    v24 = 3;
    sub_226350BBC();
    v18 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel);
    v19 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel + 8);
    v24 = 4;
    sub_226350B7C();
    v20 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel);
    v21 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel + 8);
    v24 = 5;
    sub_226350B7C();
    v22 = *(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp);
    v24 = 6;
    sub_226350BDC();
  }

  return (*(v6 + 8))(v9, v5);
}

_BYTE *VisualActionEvent.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793290, &qword_226352600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion;
  v8 = v1;
  *&v1[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
  v9 = a1[3];
  v10 = a1[4];
  v30 = a1;
  v11 = a1;
  v13 = &v29 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v9);
  sub_2262E63F4();
  sub_226350D1C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = 0;
    v14 = sub_226350B4C();
    swift_beginAccess();
    *&v8[v7] = v14;
    v35 = 1;
    v15 = sub_226350B0C();
    v17 = &v8[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
    *v17 = v15;
    v17[1] = v18;
    v34 = 2;
    sub_2262E649C();
    sub_226350B3C();
    v8[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = v35;
    v35 = 3;
    v19 = sub_226350B0C();
    v20 = &v8[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
    *v20 = v19;
    v20[1] = v21;
    v35 = 4;
    v22 = sub_226350ACC();
    v23 = &v8[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
    *v23 = v22;
    v23[1] = v24;
    v35 = 5;
    v25 = sub_226350ACC();
    v26 = &v8[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
    *v26 = v25;
    v26[1] = v27;
    v35 = 6;
    sub_226350B2C();
    *&v8[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = v28;
    v32.receiver = v8;
    v32.super_class = ObjectType;
    v8 = objc_msgSendSuper2(&v32, sel_init);
    (*(v5 + 8))(v13, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return v8;
}

_BYTE *sub_2262E5C88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = VisualActionEvent.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

int *sub_2262E5CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v50 - v4;
  v6 = type metadata accessor for PBVisualActionEvent();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2262E6268(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2262E62D8(v5);
    sub_2262E6CA8();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    sub_2262E62D8(a1);
  }

  else
  {
    sub_2262E6C44(v5, v10);
    v12 = &v10[v6[8]];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *v12 & 0xFFFFFFFFFFFFLL;
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v14)
      {
        v19 = v13;
      }

      else
      {
        v19 = 0;
      }

      if (v14)
      {
        v20 = v14;
      }

      else
      {
        v20 = 0xE000000000000000;
      }

      v54 = v19;
      v55 = v20;
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    v21 = &v10[v6[9]];
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *v21 & 0xFFFFFFFFFFFFLL;
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25;
    }

    if (v27)
    {
      if (v23)
      {
        v28 = v22;
      }

      else
      {
        v28 = 0;
      }

      if (v23)
      {
        v29 = v23;
      }

      else
      {
        v29 = 0xE000000000000000;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v30 = &v10[v6[6]];
    if (v30[9])
    {
      v51 = 0;
    }

    else
    {
      if ((v30[8] & 1) == 0)
      {

        sub_2262E6CA8();
        swift_allocError();
        *v49 = 0;
        swift_willThrow();
        sub_2262E62D8(a1);
        sub_2262E6398(v10);
        return v6;
      }

      v51 = *v30;
    }

    v53 = a1;
    v31 = &v10[v6[5]];
    v32 = *(v31 + 1);
    if (v32)
    {
      v50 = *v31;
      v33 = v32;
    }

    else
    {
      v50 = 0;
      v33 = 0xE000000000000000;
    }

    v52 = v29;
    v34 = &v10[v6[7]];
    if (*(v34 + 1))
    {
      v35 = *v34;
      v36 = *(v34 + 1);
    }

    else
    {
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = &v10[v6[10]];
    if (v37[8])
    {
      v38 = 0.0;
    }

    else
    {
      v38 = *v37;
    }

    v39 = type metadata accessor for VisualActionEvent();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
    v41 = &v40[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
    v42 = v51;
    *v41 = v50;
    v41[1] = v33;
    v40[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = v42;
    v43 = &v40[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
    *v43 = v35;
    v43[1] = v36;
    v44 = &v40[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
    v45 = v55;
    *v44 = v54;
    v44[1] = v45;
    v46 = &v40[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
    v47 = v52;
    *v46 = v28;
    v46[1] = v47;
    *&v40[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = v38;
    v56.receiver = v40;
    v56.super_class = v39;

    v6 = objc_msgSendSuper2(&v56, sel_init);
    sub_2262E62D8(v53);
    sub_2262E6398(v10);
  }

  return v6;
}

int *_s26VisualActionPredictionCore0aB5EventC5event4with11dataVersionACXDSg10Foundation4DataV_s6UInt32VtFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22634F1CC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  v10 = type metadata accessor for PBVisualActionEvent();
  sub_2262D6170(a1, a2);
  sub_22634F1BC();
  sub_2262E6340();
  sub_22634F27C();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_2262E5CFC(v9);
}

uint64_t sub_2262E6268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262E62D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793268, &qword_2263525F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2262E6340()
{
  result = qword_27D793270;
  if (!qword_27D793270)
  {
    type metadata accessor for PBVisualActionEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793270);
  }

  return result;
}

uint64_t sub_2262E6398(uint64_t a1)
{
  v2 = type metadata accessor for PBVisualActionEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2262E63F4()
{
  result = qword_27D793280;
  if (!qword_27D793280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793280);
  }

  return result;
}

unint64_t sub_2262E6448()
{
  result = qword_27D793288;
  if (!qword_27D793288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793288);
  }

  return result;
}

unint64_t sub_2262E649C()
{
  result = qword_27D793298;
  if (!qword_27D793298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793298);
  }

  return result;
}

unint64_t sub_2262E64F4()
{
  result = qword_27D7932A0;
  if (!qword_27D7932A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7932A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualActionEvent.Outcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualActionEvent.Outcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualActionEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualActionEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2262E6888()
{
  result = qword_27D793310;
  if (!qword_27D793310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793310);
  }

  return result;
}

unint64_t sub_2262E68E0()
{
  result = qword_27D793318;
  if (!qword_27D793318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793318);
  }

  return result;
}

unint64_t sub_2262E6938()
{
  result = qword_27D793320;
  if (!qword_27D793320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793320);
  }

  return result;
}

uint64_t sub_2262E698C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372655661746164 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496E6F69746361 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x62614C726F6A616DLL && a2 == 0xEA00000000006C65 || (sub_226350C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x62614C726F6E696DLL && a2 == 0xEA00000000006C65 || (sub_226350C4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 6;
  }

  else
  {
    v6 = sub_226350C4C();

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

unint64_t sub_2262E6BF0()
{
  result = qword_27D793328;
  if (!qword_27D793328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793328);
  }

  return result;
}

uint64_t sub_2262E6C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBVisualActionEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2262E6CA8()
{
  result = qword_27D793330;
  if (!qword_27D793330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualActionEvent.Failure(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualActionEvent.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2262E6E50()
{
  result = qword_27D793338;
  if (!qword_27D793338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793338);
  }

  return result;
}

void *sub_2262E6EBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v39 - v4;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v50 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = v39 - v11;
  v12 = sub_22634FC4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v48 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = v39 - v17;
  v47 = type metadata accessor for RankedVisualBundle();
  v18 = *(v47 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v47);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2262E739C(a1);
  v23 = sub_2262EAF24(v22);

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v39[1] = v23;
    v26 = v23 + v25;
    v27 = v7;
    v28 = *(v18 + 72);
    v41 = (v27 + 16);
    v42 = (v27 + 32);
    v40 = (v27 + 8);
    v45 = v13;
    v51 = (v13 + 32);
    v52 = (v27 + 48);
    v29 = MEMORY[0x277D84F90];
    v46 = v12;
    v43 = v28;
    v44 = v5;
    do
    {
      sub_2262EB6C4(v26, v21);
      sub_22634F48C();
      if ((*v52)(v5, 1, v6) == 1)
      {
        sub_2262EB728(v21);
        sub_2262D67D8(v5, &qword_27D793010, &unk_226354CE0);
      }

      else
      {
        v30 = v49;
        (*v42)(v49, v5, v6);
        (*v41)(v50, v30, v6);
        v31 = *&v21[*(v47 + 24)];
        v32 = v12;
        v33 = v48;
        sub_22634FC2C();
        (*v40)(v30, v6);
        sub_2262EB728(v21);
        v34 = *v51;
        (*v51)(v53, v33, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2262DCF74(0, v29[2] + 1, 1, v29);
        }

        v36 = v29[2];
        v35 = v29[3];
        v5 = v44;
        if (v36 >= v35 >> 1)
        {
          v29 = sub_2262DCF74(v35 > 1, v36 + 1, 1, v29);
        }

        v28 = v43;
        v29[2] = v36 + 1;
        v37 = v29 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v36;
        v12 = v46;
        v34(v37, v53, v46);
      }

      v26 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v54 = v29;

  sub_2262E86BC(&v54);

  return v54;
}

void *sub_2262E739C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v117 - v4;
  v123 = sub_22635004C();
  v6 = *(v123 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v123);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RankedVisualBundle();
  v139 = *(v10 - 8);
  v140 = v10;
  v11 = *(v139 + 64);
  MEMORY[0x28223BE20](v10);
  v150 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v117 - v15;
  v136 = sub_22634F0EC();
  v17 = *(v136 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22634F06C();
  v20 = *(v134 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v134);
  v125 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v138 = &v117 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793018, &unk_2263552F0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v117 - v27;
  v148 = sub_22634F51C();
  v29 = *(*(v148 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v148);
  MEMORY[0x28223BE20](v30);
  v152 = &v117 - v33;
  v34 = *(a1 + 16);
  if (v34)
  {
    v127 = v9;
    v126 = v32;
    v118 = v5;
    v147 = 0;
    v36 = *(v31 + 16);
    v35 = v31 + 16;
    v151 = v36;
    v37 = (a1 + ((*(v35 + 64) + 32) & ~*(v35 + 64)));
    v132 = (v17 + 16);
    v133 = v20;
    v131 = v20 + 32;
    v145 = (v35 - 8);
    v122 = (v6 + 8);
    v38 = MEMORY[0x277D84F90];
    v144 = *(v35 + 56);
    v130 = *MEMORY[0x277D78238];
    v129 = *MEMORY[0x277D78288];
    *(&v39 + 1) = 2;
    v128 = xmmword_226351C90;
    *&v39 = 136315394;
    v117 = v39;
    v142 = v28;
    v143 = v16;
    v149 = v35;
    v36(v152, v37, v148);
    while (1)
    {
      sub_22634F4AC();
      v41 = sub_22634FA8C();
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v28, 1, v41) == 1)
      {
        sub_2262D67D8(v28, &qword_27D793018, &unk_2263552F0);
        v43 = 0.0;
      }

      else
      {
        v44 = sub_22634FA7C();
        v46 = v45;
        (*(v42 + 8))(v28, v41);
        v47 = HIBYTE(v46) & 0xF;
        if ((v46 & 0x2000000000000000) == 0)
        {
          v47 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (v47)
        {
          v48 = *(v137 + 32);
          (*v132)(v135, v48 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v136);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
          v49 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
          v50 = *(*v49 + 72);
          v51 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
          v52 = swift_allocObject();
          *(v52 + 16) = v128;
          v53 = v52 + v51;
          v54 = (v53 + v49[14]);
          v55 = sub_22634F0CC();
          (*(*(v55 - 8) + 104))(v53, v130, v55);
          *v54 = v44;
          v54[1] = v46;
          v56 = sub_22634F10C();
          v57 = *(v56 - 8);
          (*(v57 + 104))(v54, v129, v56);
          (*(v57 + 56))(v54, 0, 1, v56);
          sub_22634F05C();
          v58 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
          v60 = v58[2];
          v59 = v58[3];
          v146 = v38;
          if (v60 >= v59 >> 1)
          {
            v58 = sub_2262DC96C(v59 > 1, v60 + 1, 1, v58);
          }

          v61 = v147;
          v58[2] = v60 + 1;
          (*(v133 + 32))(v58 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v60, v138, v134);
          v153 = v58;

          v63 = sub_226302A38(v62, &v153, v48);
          v28 = v142;
          v16 = v143;
          if (v61)
          {
LABEL_25:
            v141 = v34;

            v88 = v61;
            v147 = 0;
            v68 = v148;
            v89 = v127;
            sub_22634FFBC();
            v90 = v126;
            v91 = v152;
            v151(v126, v152, v68);
            v92 = v61;
            v93 = sub_22635003C();
            v94 = sub_22635073C();

            v124 = v94;
            if (os_log_type_enabled(v93, v94))
            {
              v121 = v93;
              v95 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              v153 = v120;
              *v95 = v117;
              v96 = v118;
              sub_22634F48C();
              v97 = sub_22634EEFC();
              v98 = *(v97 - 8);
              if ((*(v98 + 48))(v96, 1, v97) == 1)
              {
                sub_2262D67D8(v96, &qword_27D793010, &unk_226354CE0);
                v99 = 0;
                v100 = 0xE000000000000000;
              }

              else
              {
                v99 = sub_22634EEDC();
                v100 = v107;
                (*(v98 + 8))(v96, v97);
              }

              v34 = v141;
              v108 = *v145;
              v109 = v148;
              (*v145)(v126, v148);
              v110 = sub_226345004(v99, v100, &v153);

              *(v95 + 4) = v110;
              *(v95 + 12) = 2112;
              v111 = v88;
              v112 = _swift_stdlib_bridgeErrorToNSError();
              *(v95 + 14) = v112;
              v113 = v119;
              *v119 = v112;
              v114 = v121;
              _os_log_impl(&dword_2262B6000, v121, v124, "Error ranking bundle %s: %@", v95, 0x16u);
              sub_2262D67D8(v113, &qword_27D793CC0, qword_226352A00);
              MEMORY[0x22AA7D570](v113, -1, -1);
              v115 = v120;
              __swift_destroy_boxed_opaque_existential_1Tm(v120);
              MEMORY[0x22AA7D570](v115, -1, -1);
              MEMORY[0x22AA7D570](v95, -1, -1);

              (*v122)(v127, v123);
              v91 = v152;
              v108(v152, v109);
              v68 = v109;
              v28 = v142;
              v16 = v143;
            }

            else
            {

              v40 = *v145;
              (*v145)(v90, v68);
              (*v122)(v89, v123);
              v40(v91, v68);
              v34 = v141;
            }

            v38 = v146;
            goto LABEL_5;
          }

          v64 = v63;
          v147 = 0;

          v43 = v64;
          v38 = v146;
        }

        else
        {

          v43 = 0.0;
        }
      }

      sub_22634F4FC();
      v65 = sub_22634F47C();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v16, 1, v65) == 1)
      {
        sub_2262D67D8(v16, &qword_27D792FE0, &unk_226351C10);
        v67 = 0.0;
        v68 = v148;
      }

      else
      {
        v69 = sub_22634F46C();
        v71 = v70;
        (*(v66 + 8))(v16, v65);
        v72 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v72 = v69 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {
          v73 = *(v137 + 32);
          (*v132)(v135, v73 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v136);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
          v74 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0) - 8);
          v75 = *(*v74 + 72);
          v76 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
          v77 = swift_allocObject();
          *(v77 + 16) = v128;
          v78 = v77 + v76;
          v79 = (v78 + v74[14]);
          v80 = sub_22634F0CC();
          (*(*(v80 - 8) + 104))(v78, v130, v80);
          *v79 = v69;
          v79[1] = v71;
          v81 = sub_22634F10C();
          v82 = *(v81 - 8);
          (*(v82 + 104))(v79, v129, v81);
          (*(v82 + 56))(v79, 0, 1, v81);
          sub_22634F05C();
          v83 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
          v85 = v83[2];
          v84 = v83[3];
          v146 = v38;
          if (v85 >= v84 >> 1)
          {
            v83 = sub_2262DC96C(v84 > 1, v85 + 1, 1, v83);
          }

          v61 = v147;
          v83[2] = v85 + 1;
          (*(v133 + 32))(v83 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v85, v125, v134);
          v153 = v83;

          v87 = sub_226302A38(v86, &v153, v73);
          v28 = v142;
          v16 = v143;
          if (v61)
          {
            goto LABEL_25;
          }

          v101 = v87;
          v147 = 0;

          v67 = v101;
          v68 = v148;
          v38 = v146;
        }

        else
        {

          v67 = 0.0;
          v68 = v148;
        }
      }

      v102 = v150;
      v91 = v152;
      v151(v150, v152, v68);
      v103 = v140;
      v104 = (v102 + *(v140 + 20));
      *v104 = v43;
      v104[1] = v67;
      *(v102 + *(v103 + 24)) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2262DCF4C(0, v38[2] + 1, 1, v38);
      }

      v106 = v38[2];
      v105 = v38[3];
      if (v106 >= v105 >> 1)
      {
        v38 = sub_2262DCF4C(v105 > 1, v106 + 1, 1, v38);
      }

      (*v145)(v91, v68);
      v38[2] = v106 + 1;
      sub_2262EB7DC(v150, v38 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v106);
LABEL_5:
      v37 += v144;
      if (!--v34)
      {
        return v38;
      }

      v151(v91, v37, v68);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2262E839C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793340, &unk_2263529E0);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v26 - v6);
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_22634FC3C();
  v17 = v16;
  sub_22634FC1C();
  sub_22634FC3C();
  v19 = v18;
  sub_22634FC1C();
  *v7 = v17;
  v20 = *(v1 + 56);
  v27 = v15;
  v28 = v9;
  v21 = *(v9 + 16);
  v21(v7 + v20, v15, v8);
  *v5 = v19;
  v22 = v5 + *(v1 + 56);
  v29 = v13;
  v21(v22, v13, v8);
  if (v17 == v19)
  {
    sub_2262EB784();
    v23 = sub_22635043C();
  }

  else
  {
    v23 = v19 < v17;
  }

  sub_2262D67D8(v5, &qword_27D793340, &unk_2263529E0);
  sub_2262D67D8(v7, &qword_27D793340, &unk_2263529E0);
  v24 = *(v28 + 8);
  v24(v29, v8);
  v24(v27, v8);
  return v23 & 1;
}

uint64_t sub_2262E8610()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2262E86BC(void **a1)
{
  v2 = *(sub_22634FC4C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2262DF570(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2262E8764(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2262E8764(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_226350C0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22634FC4C();
        v6 = sub_22635059C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22634FC4C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2262E8DC8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2262E8890(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2262E8890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793340, &unk_2263529E0);
  v8 = *(*(v76 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v76);
  v75 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v55 - v11);
  v74 = sub_22634EEFC();
  v13 = *(v74 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v74);
  v80 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = &v55 - v17;
  v18 = sub_22634FC4C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v78 = &v55 - v23;
  result = MEMORY[0x28223BE20](v22);
  v27 = &v55 - v25;
  v57 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v30 = *(v26 + 16);
    v29 = v26 + 16;
    v31 = *(v29 + 56);
    v69 = (v13 + 16);
    v70 = v30;
    v67 = (v29 - 8);
    v68 = (v13 + 8);
    v72 = v29;
    v63 = (v29 + 16);
    v64 = v28;
    v32 = v28 + v31 * (a3 - 1);
    v62 = -v31;
    v33 = a1 - a3;
    v56 = v31;
    v34 = v28 + v31 * a3;
    v73 = v18;
    v71 = &v55 - v25;
    v66 = v12;
LABEL_5:
    v61 = a3;
    v58 = v34;
    v59 = v33;
    v60 = v32;
    v35 = v32;
    v36 = v12;
    while (1)
    {
      v77 = v33;
      v37 = v70;
      v70(v27, v34, v18);
      v37(v78, v35, v18);
      sub_22634FC3C();
      v39 = v38;
      v40 = v79;
      sub_22634FC1C();
      sub_22634FC3C();
      v42 = v41;
      v43 = v80;
      sub_22634FC1C();
      *v36 = v39;
      v44 = v76;
      v45 = *v69;
      v46 = v74;
      (*v69)(v36 + *(v76 + 48), v40, v74);
      v47 = v75;
      *v75 = v42;
      v45((v47 + *(v44 + 48)), v43, v46);
      if (v39 == v42)
      {
        sub_2262EB784();
        v36 = v66;
        v48 = sub_22635043C();
      }

      else
      {
        v48 = v42 < v39;
        v36 = v66;
      }

      sub_2262D67D8(v47, &qword_27D793340, &unk_2263529E0);
      sub_2262D67D8(v36, &qword_27D793340, &unk_2263529E0);
      v49 = *v68;
      (*v68)(v80, v46);
      v49(v79, v46);
      v50 = *v67;
      v18 = v73;
      (*v67)(v78, v73);
      v27 = v71;
      result = v50(v71, v18);
      v51 = v77;
      if ((v48 & 1) == 0)
      {
LABEL_4:
        v12 = v36;
        a3 = v61 + 1;
        v32 = v60 + v56;
        v33 = v59 - 1;
        v34 = v58 + v56;
        if (v61 + 1 == v57)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v64)
      {
        break;
      }

      v52 = *v63;
      v53 = v65;
      (*v63)(v65, v34, v18);
      swift_arrayInitWithTakeFrontToBack();
      result = (v52)(v35, v53, v18);
      v35 += v62;
      v34 += v62;
      v54 = __CFADD__(v51, 1);
      v33 = v51 + 1;
      if (v54)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2262E8DC8(double **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v171 = a1;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793340, &unk_2263529E0);
  v8 = *(*(v197 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v197);
  v193 = (&v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v166 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v166 - v15);
  MEMORY[0x28223BE20](v14);
  v167 = (&v166 - v17);
  v168 = sub_22634EEFC();
  v18 = *(v168 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v168);
  v206 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v205 = &v166 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v187 = &v166 - v25;
  MEMORY[0x28223BE20](v24);
  v186 = &v166 - v26;
  v200 = sub_22634FC4C();
  v27 = *(*(v200 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v200);
  v176 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v191 = &v166 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v204 = &v166 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v203 = &v166 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v185 = &v166 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v184 = &v166 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  result = MEMORY[0x28223BE20](v40);
  v45 = *(a3 + 8);
  v182 = v44;
  if (v45 < 1)
  {
    v47 = MEMORY[0x277D84F90];
LABEL_102:
    v13 = *v171;
    if (!*v171)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_104;
  }

  v172 = &v166 - v42;
  v166 = v43;
  v46 = 0;
  v198 = v44 + 16;
  v199 = (v44 + 8);
  v195 = (v18 + 8);
  v196 = (v18 + 16);
  v194 = (v44 + 32);
  v47 = MEMORY[0x277D84F90];
  v173 = a3;
  v170 = a4;
  v179 = v16;
  while (1)
  {
    v48 = a3;
    v183 = v47;
    v175 = v46;
    if (v46 + 1 >= v45)
    {
      a3 = v46 + 1;
    }

    else
    {
      v188 = v45;
      v49 = *a3;
      v50 = *(v182 + 72);
      v51 = *(v182 + 16);
      v202 = v49 + v50 * (v46 + 1);
      v52 = v200;
      v51(v172);
      v201 = v49;
      v190 = v50;
      v53 = v49 + v50 * v46;
      v54 = v166;
      v181 = v51;
      (v51)(v166, v53, v52);
      LODWORD(v189) = sub_2262E839C();
      if (v5)
      {
        v165 = *v199;
        (*v199)(v54, v52);
        v165(v172, v52);
      }

      v169 = 0;
      v55 = *v199;
      (*v199)(v54, v52);
      v180 = v55;
      result = (v55)(v172, v52);
      v56 = (v46 + 2);
      v57 = v202;
      v58 = v190;
      v59 = v201 + v190 * (v46 + 2);
      v60 = v167;
      v61 = v168;
      a3 = v188;
      while (a3 != v56)
      {
        v201 = v56;
        v192 = v59;
        v66 = v181;
        v181(v184);
        v202 = v57;
        v66(v185, v57, v52);
        sub_22634FC3C();
        v68 = v67;
        v69 = v186;
        sub_22634FC1C();
        sub_22634FC3C();
        v71 = v70;
        v72 = v61;
        v73 = v187;
        sub_22634FC1C();
        *v60 = v68;
        v74 = v197;
        v75 = *v196;
        (*v196)(v60 + *(v197 + 48), v69, v72);
        v76 = v179;
        *v179 = v71;
        v75((v76 + *(v74 + 48)), v73, v72);
        if (v68 == v71)
        {
          sub_2262EB784();
          v62 = sub_22635043C();
        }

        else
        {
          v62 = v71 < v68;
        }

        v61 = v72;
        sub_2262D67D8(v76, &qword_27D793340, &unk_2263529E0);
        sub_2262D67D8(v60, &qword_27D793340, &unk_2263529E0);
        v63 = *v195;
        (*v195)(v187, v72);
        v63(v186, v72);
        v52 = v200;
        v64 = v180;
        (v180)(v185, v200);
        result = v64(v184, v52);
        v56 = (v201 + 1);
        v58 = v190;
        v59 = &v192[v190];
        v57 = &v202[v190];
        v65 = (v189 & 1) == (v62 & 1);
        v47 = v183;
        a3 = v188;
        if (!v65)
        {
          a3 = v201;
          break;
        }
      }

      v5 = v169;
      v48 = v173;
      a4 = v170;
      if (v189)
      {
        if (a3 < v175)
        {
          goto LABEL_135;
        }

        if (v175 < a3)
        {
          v77 = v58 * (a3 - 1);
          v78 = a3 * v58;
          v188 = a3;
          v79 = v175;
          v80 = v175 * v58;
          do
          {
            if (v79 != --a3)
            {
              v82 = *v173;
              if (!*v173)
              {
                goto LABEL_139;
              }

              v202 = *v194;
              (v202)(v176, v82 + v80, v200);
              if (v80 < v77 || v82 + v80 >= (v82 + v78))
              {
                v81 = v200;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v81 = v200;
                if (v80 != v77)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v202)(v82 + v77, v176, v81);
              v47 = v183;
              v58 = v190;
            }

            v79 = (v79 + 1);
            v77 -= v58;
            v78 -= v58;
            v80 += v58;
          }

          while (v79 < a3);
          v5 = v169;
          v48 = v173;
          a4 = v170;
          a3 = v188;
        }
      }
    }

    v83 = v48[1];
    if (a3 < v83)
    {
      if (__OFSUB__(a3, v175))
      {
        goto LABEL_132;
      }

      if (a3 - v175 < a4)
      {
        if (__OFADD__(v175, a4))
        {
          goto LABEL_133;
        }

        if (v175 + a4 >= v83)
        {
          v84 = v48[1];
        }

        else
        {
          v84 = (v175 + a4);
        }

        if (v84 < v175)
        {
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          result = sub_2262DECA8(v47);
          v47 = result;
LABEL_104:
          v207 = v47;
          v161 = *(v47 + 2);
          if (v161 >= 2)
          {
            while (*a3)
            {
              v162 = *&v47[16 * v161];
              v163 = *&v47[16 * v161 + 24];
              sub_2262E9D90(*a3 + *(v182 + 72) * v162, *a3 + *(v182 + 72) * *&v47[16 * v161 + 16], *a3 + *(v182 + 72) * v163, v13);
              if (v5)
              {
              }

              if (v163 < v162)
              {
                goto LABEL_129;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v47 = sub_2262DECA8(v47);
              }

              if (v161 - 2 >= *(v47 + 2))
              {
                goto LABEL_130;
              }

              v164 = &v47[16 * v161];
              *v164 = v162;
              *(v164 + 1) = v163;
              v207 = v47;
              result = sub_2262DEC1C(v161 - 1);
              v47 = v207;
              v161 = *(v207 + 2);
              if (v161 <= 1)
              {
              }
            }

            goto LABEL_140;
          }
        }

        if (a3 != v84)
        {
          break;
        }
      }
    }

    v85 = a3;
LABEL_38:
    if (v85 < v175)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v177 = v85;
    if ((result & 1) == 0)
    {
      result = sub_2262DCB70(0, *(v47 + 2) + 1, 1, v47);
      v47 = result;
    }

    v87 = *(v47 + 2);
    v86 = *(v47 + 3);
    v88 = v87 + 1;
    if (v87 >= v86 >> 1)
    {
      result = sub_2262DCB70((v86 > 1), v87 + 1, 1, v47);
      v47 = result;
    }

    *(v47 + 2) = v88;
    v89 = &v47[16 * v87];
    v90 = v177;
    *(v89 + 4) = v175;
    *(v89 + 5) = v90;
    if (!*v171)
    {
      goto LABEL_141;
    }

    if (v87)
    {
      v91 = *v171;
      while (1)
      {
        v92 = v88 - 1;
        if (v88 >= 4)
        {
          break;
        }

        if (v88 == 3)
        {
          v93 = *(v47 + 4);
          v94 = *(v47 + 5);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_59:
          if (v96)
          {
            goto LABEL_120;
          }

          v109 = &v47[16 * v88];
          v111 = *v109;
          v110 = *(v109 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_123;
          }

          v115 = &v47[16 * v92 + 32];
          v117 = *v115;
          v116 = *(v115 + 1);
          v103 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v103)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v113, v118))
          {
            goto LABEL_127;
          }

          if (v113 + v118 >= v95)
          {
            if (v95 < v118)
            {
              v92 = v88 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v119 = &v47[16 * v88];
        v121 = *v119;
        v120 = *(v119 + 1);
        v103 = __OFSUB__(v120, v121);
        v113 = v120 - v121;
        v114 = v103;
LABEL_73:
        if (v114)
        {
          goto LABEL_122;
        }

        v122 = &v47[16 * v92];
        v124 = *(v122 + 4);
        v123 = *(v122 + 5);
        v103 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v103)
        {
          goto LABEL_125;
        }

        if (v125 < v113)
        {
          goto LABEL_3;
        }

LABEL_80:
        v130 = v92 - 1;
        if (v92 - 1 >= v88)
        {
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v48)
        {
          goto LABEL_138;
        }

        v131 = *&v47[16 * v130 + 32];
        a3 = *&v47[16 * v92 + 40];
        sub_2262E9D90(*v48 + *(v182 + 72) * v131, *v48 + *(v182 + 72) * *&v47[16 * v92 + 32], *v48 + *(v182 + 72) * a3, v91);
        if (v5)
        {
        }

        if (a3 < v131)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_2262DECA8(v47);
        }

        if (v130 >= *(v47 + 2))
        {
          goto LABEL_117;
        }

        v132 = &v47[16 * v130];
        *(v132 + 4) = v131;
        *(v132 + 5) = a3;
        v207 = v47;
        result = sub_2262DEC1C(v92);
        v47 = v207;
        v88 = *(v207 + 2);
        if (v88 <= 1)
        {
          goto LABEL_3;
        }
      }

      v97 = &v47[16 * v88 + 32];
      v98 = *(v97 - 64);
      v99 = *(v97 - 56);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_118;
      }

      v102 = *(v97 - 48);
      v101 = *(v97 - 40);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_119;
      }

      v104 = &v47[16 * v88];
      v106 = *v104;
      v105 = *(v104 + 1);
      v103 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v103)
      {
        goto LABEL_121;
      }

      v103 = __OFADD__(v95, v107);
      v108 = v95 + v107;
      if (v103)
      {
        goto LABEL_124;
      }

      if (v108 >= v100)
      {
        v126 = &v47[16 * v92 + 32];
        v128 = *v126;
        v127 = *(v126 + 1);
        v103 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v103)
        {
          goto LABEL_128;
        }

        if (v95 < v129)
        {
          v92 = v88 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    a3 = v48;
    v45 = v48[1];
    v46 = v177;
    a4 = v170;
    if (v177 >= v45)
    {
      goto LABEL_102;
    }
  }

  v169 = v5;
  v133 = *v48;
  v134 = *(v182 + 72);
  v192 = *(v182 + 16);
  v135 = (v133 + v134 * (a3 - 1));
  v189 = -v134;
  v136 = (v175 - a3);
  v190 = v133;
  v174 = v134;
  v137 = (v133 + a3 * v134);
  v138 = v200;
  v139 = v168;
  v177 = v84;
LABEL_91:
  v188 = a3;
  v178 = v137;
  v140 = v137;
  v180 = v136;
  v141 = v136;
  v181 = v135;
  while (1)
  {
    v201 = v140;
    v202 = v141;
    v142 = v192;
    (v192)(v203, v140, v138);
    v142(v204, v135, v138);
    sub_22634FC3C();
    v144 = v143;
    v145 = v205;
    sub_22634FC1C();
    sub_22634FC3C();
    v147 = v146;
    v148 = v206;
    sub_22634FC1C();
    *v13 = v144;
    v149 = v197;
    v150 = *v196;
    (*v196)(v13 + *(v197 + 48), v145, v139);
    v151 = v13;
    v152 = v193;
    *v193 = v147;
    v150((v152 + *(v149 + 48)), v148, v139);
    if (v144 == v147)
    {
      sub_2262EB784();
      v153 = sub_22635043C();
    }

    else
    {
      v153 = v147 < v144;
    }

    sub_2262D67D8(v152, &qword_27D793340, &unk_2263529E0);
    sub_2262D67D8(v151, &qword_27D793340, &unk_2263529E0);
    v154 = *v195;
    (*v195)(v206, v139);
    v154(v205, v139);
    v138 = v200;
    v155 = *v199;
    (*v199)(v204, v200);
    result = (v155)(v203, v138);
    v13 = v151;
    if ((v153 & 1) == 0)
    {
LABEL_90:
      a3 = v188 + 1;
      v135 = (v181 + v174);
      v136 = v180 - 1;
      v137 = &v178[v174];
      v85 = v177;
      if (v188 + 1 != v177)
      {
        goto LABEL_91;
      }

      v5 = v169;
      v48 = v173;
      v47 = v183;
      goto LABEL_38;
    }

    v156 = v202;
    if (!v190)
    {
      break;
    }

    v157 = *v194;
    v158 = v191;
    v159 = v201;
    (*v194)(v191, v201, v138);
    swift_arrayInitWithTakeFrontToBack();
    (v157)(v135, v158, v138);
    v135 = (v135 + v189);
    v140 = v159 + v189;
    v160 = __CFADD__(v156, 1);
    v141 = v156 + 1;
    if (v160)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_2262E9D90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v112 = a4;
  v103 = a3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793340, &unk_2263529E0);
  v6 = *(*(v106 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v106);
  v96 = (v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v95 = (v91 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (v91 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (v91 - v14);
  v105 = sub_22634EEFC();
  v16 = *(v105 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v105);
  v102 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v101 = v91 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v109 = v91 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v91 - v24;
  v26 = sub_22634FC4C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v100 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v99 = v91 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v108 = v91 - v34;
  result = MEMORY[0x28223BE20](v33);
  v107 = v91 - v36;
  v38 = *(v37 + 72);
  if (!v38)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_67;
  }

  v39 = v103 - a2;
  if (v103 - a2 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_68;
  }

  v111 = v16;
  v97 = v13;
  v98 = v38;
  v40 = a2;
  v41 = (a2 - a1) / v38;
  v115 = a1;
  v42 = v112;
  v114 = v112;
  if (v41 >= v39 / v38)
  {
    v44 = v39 / v38 * v38;
    if (v112 < v40 || v40 + v44 <= v112)
    {
      swift_arrayInitWithTakeFrontToBack();
      v45 = v103;
    }

    else
    {
      v45 = v103;
      if (v112 != v40)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v66 = v42 + v44;
    if (v44 < 1)
    {
      v69 = v40;
      v70 = v66;
    }

    else
    {
      v67 = -v98;
      v97 = (v111 + 16);
      v98 = v27 + 16;
      v94 = (v111 + 8);
      v93 = (v27 + 8);
      v68 = (v42 + v44);
      v69 = v40;
      v70 = v66;
      v103 = v67;
      v104 = v26;
      v110 = a1;
      do
      {
        v91[0] = v70;
        v71 = v69;
        v72 = v69 + v67;
        v111 = v72;
        v107 = v71;
        while (1)
        {
          if (v71 <= a1)
          {
            v115 = v71;
            v113 = v91[0];
            goto LABEL_65;
          }

          v73 = v45;
          v92 = v70;
          v74 = *v98;
          v108 = &v68[v67];
          v109 = v68;
          v74(v99);
          (v74)(v100, v72, v26);
          sub_22634FC3C();
          v76 = v75;
          v77 = v101;
          sub_22634FC1C();
          sub_22634FC3C();
          v79 = v78;
          v80 = v102;
          sub_22634FC1C();
          v81 = v105;
          v82 = v106;
          v83 = v95;
          *v95 = v76;
          v84 = *v97;
          (*v97)(v83 + *(v82 + 48), v77, v81);
          v85 = v96;
          *v96 = v79;
          v84((v85 + *(v82 + 48)), v80, v81);
          if (v76 == v79)
          {
            sub_2262EB784();
            v86 = sub_22635043C();
          }

          else
          {
            v86 = v79 < v76;
          }

          v87 = v83;
          v67 = v103;
          v45 = &v73[v103];
          sub_2262D67D8(v85, &qword_27D793340, &unk_2263529E0);
          sub_2262D67D8(v87, &qword_27D793340, &unk_2263529E0);
          v88 = *v94;
          (*v94)(v102, v81);
          v88(v101, v81);
          v89 = *v93;
          v26 = v104;
          (*v93)(v100, v104);
          v89(v99, v26);
          a1 = v110;
          if (v86)
          {
            break;
          }

          v90 = v108;
          v70 = v108;
          v72 = v111;
          if (v73 < v109 || v45 >= v109)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v109)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v68 = v70;
          v71 = v107;
          if (v90 <= v112)
          {
            v69 = v107;
            goto LABEL_64;
          }
        }

        v69 = v111;
        if (v73 < v107 || v45 >= v107)
        {
          swift_arrayInitWithTakeFrontToBack();
          v70 = v92;
          v68 = v109;
        }

        else
        {
          v70 = v92;
          v68 = v109;
          if (v73 != v107)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v68 > v112);
    }

LABEL_64:
    v115 = v69;
    v113 = v70;
  }

  else
  {
    v43 = v41 * v38;
    if (v112 < a1 || a1 + v43 <= v112)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v112 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v102 = (v42 + v43);
    v113 = v42 + v43;
    if (v43 >= 1 && v40 < v103)
    {
      v47 = v40;
      v48 = *(v27 + 16);
      v99 = (v111 + 16);
      v100 = v48;
      v96 = (v111 + 8);
      v101 = (v27 + 16);
      v95 = (v27 + 8);
      v104 = v26;
      do
      {
        v110 = a1;
        v111 = v47;
        v49 = v100;
        (v100)(v107, v47, v26);
        v112 = v42;
        (v49)(v108, v42, v26);
        sub_22634FC3C();
        v51 = v50;
        sub_22634FC1C();
        sub_22634FC3C();
        v53 = v52;
        v54 = v109;
        sub_22634FC1C();
        *v15 = v51;
        v55 = v105;
        v56 = v106;
        v57 = *v99;
        v58 = v25;
        (*v99)(v15 + *(v106 + 48), v25, v105);
        v59 = v97;
        *v97 = v53;
        v57(v59 + *(v56 + 48), v54, v55);
        if (v51 == v53)
        {
          sub_2262EB784();
          v60 = sub_22635043C();
        }

        else
        {
          v60 = v53 < v51;
        }

        sub_2262D67D8(v59, &qword_27D793340, &unk_2263529E0);
        sub_2262D67D8(v15, &qword_27D793340, &unk_2263529E0);
        v61 = *v96;
        (*v96)(v109, v55);
        v25 = v58;
        v61(v58, v55);
        v62 = *v95;
        v26 = v104;
        (*v95)(v108, v104);
        v62(v107, v26);
        v42 = v112;
        v63 = v110;
        if (v60)
        {
          v64 = v98;
          v47 = (v111 + v98);
          if (v110 < v111 || v110 >= v47)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v110 != v111)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v64 = v98;
          v65 = v112 + v98;
          v47 = v111;
          if (v110 < v112 || v110 >= v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v110 != v112)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v114 = v65;
          v42 += v64;
        }

        a1 = v63 + v64;
        v115 = a1;
      }

      while (v42 < v102 && v47 < v103);
    }
  }

LABEL_65:
  sub_2262EA8A8(&v115, &v114, &v113, MEMORY[0x277D78B20]);
  return 1;
}

uint64_t sub_2262EA7B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
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

uint64_t sub_2262EA8A8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2262EA990(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  if (!a1[2])
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v62 = a1[2];
  v3 = a1[4];
  v65 = a1 + 4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_3:
  v4 = v2;
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = v4[3];
  v8 = v7 >> 1;
  v9 = v5 + 1;
  if (v7 >> 1 <= v5)
  {
    v6 = sub_2262DCDA0((v7 > 1), v5 + 1, 1, v6);
    v7 = v6[3];
    v8 = v7 >> 1;
  }

  v6[2] = v9;
  v6[v5 + 4] = &unk_283977F38;
  v10 = v5 + 2;
  if (v8 < (v5 + 2))
  {
    v2 = sub_2262DCDA0((v7 > 1), v5 + 2, 1, v6);
  }

  else
  {
    v2 = v6;
  }

  *(v2 + 16) = v10;
  *(v2 + 8 * v9 + 32) = &unk_283977F68;

  v11 = 0;
  v64 = v3;
  v12 = v1;
  while (2)
  {
    v63 = v3;
    do
    {
      if (v10 == v11)
      {
        v29 = 0;
        while (1)
        {
          do
          {
            if (v10 == v29)
            {
              v2 = v62;
              sub_226316610(0, v62, 0);
              v45 = v62;
              v46 = 0;
              v47 = v12;
              v48 = v3 + 32;
              v1 = v64 + 32;
              while (v46 != v45)
              {
                v3 = v65[v46];
                v49 = *(v3 + 16);
                if (v49)
                {
                  v66 = v46;
                  v67 = v47;
                  v68 = v12;

                  sub_2263165F0(0, v49, 0);
                  v50 = v63;
                  v51 = v64;
                  v2 = 0;
                  v52 = *(v3 + 16);
                  v53 = v68;
                  while (v52 != v2)
                  {
                    if (v2 >= *(v3 + 16))
                    {
                      goto LABEL_76;
                    }

                    if (v2 >= *(v50 + 16))
                    {
                      goto LABEL_77;
                    }

                    if (v2 >= *(v51 + 16))
                    {
                      goto LABEL_78;
                    }

                    v54 = *(v48 + 8 * v2);
                    v55 = *(v1 + 8 * v2);
                    v56 = 0.0;
                    if (v55 != v54)
                    {
                      v56 = (*(v3 + 8 * v2 + 32) - v54) / (v55 - v54);
                    }

                    v58 = *(v68 + 16);
                    v57 = *(v68 + 24);
                    if (v58 >= v57 >> 1)
                    {
                      sub_2263165F0((v57 > 1), v58 + 1, 1);
                      v50 = v63;
                      v51 = v64;
                    }

                    ++v2;
                    *(v68 + 16) = v58 + 1;
                    *(v68 + 8 * v58 + 32) = v56;
                    if (v49 == v2)
                    {

                      v12 = MEMORY[0x277D84F90];
                      v45 = v62;
                      v46 = v66;
                      v47 = v67;
                      goto LABEL_70;
                    }
                  }

                  __break(1u);
LABEL_76:
                  __break(1u);
LABEL_77:
                  __break(1u);
LABEL_78:
                  __break(1u);
                  goto LABEL_79;
                }

                v53 = v12;
LABEL_70:
                v69 = v47;
                v2 = *(v47 + 16);
                v59 = *(v47 + 24);
                v3 = v2 + 1;
                if (v2 >= v59 >> 1)
                {
                  v60 = v46;
                  sub_226316610((v59 > 1), v2 + 1, 1);
                  v46 = v60;
                  v45 = v62;
                  v47 = v69;
                }

                ++v46;
                *(v47 + 16) = v3;
                *(v47 + 8 * v2 + 32) = v53;
                if (v46 == v45)
                {
                  v61 = v47;

                  return v61;
                }
              }

              goto LABEL_81;
            }

            if (v29 >= *(v2 + 16))
            {
              goto LABEL_80;
            }

            v30 = (v2 + 8 * v29);
            v31 = v30[4];
            ++v29;
            v1 = *(v31 + 16);
          }

          while (!v1);
          v32 = v30[4];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2262E866C(v64);
            v64 = result;
          }

          if (v1 > *(v64 + 16))
          {
            goto LABEL_85;
          }

          if (v1 >= 4 && (v64 + 32 < v31 + 8 * v1 + 32 ? (v33 = v31 + 32 >= v64 + 8 * v1 + 32) : (v33 = 1), v33))
          {
            v34 = v1 & 0x7FFFFFFFFFFFFFFCLL;
            v35 = (v31 + 48);
            v36 = (v64 + 48);
            v37 = v1 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v38 = vbslq_s8(vcgeq_f64(*v35, *v36), *v35, *v36);
              v36[-1] = vbslq_s8(vcgeq_f64(v35[-1], v36[-1]), v35[-1], v36[-1]);
              *v36 = v38;
              v35 += 2;
              v36 += 2;
              v37 -= 4;
            }

            while (v37);
            if (v1 == v34)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v34 = 0;
          }

          v39 = v1 - v34;
          v40 = 8 * v34;
          v41 = (v64 + 8 * v34 + 32);
          v42 = (v31 + v40 + 32);
          do
          {
            v43 = *v42++;
            v44 = v43;
            if (*v41 > v43)
            {
              v44 = *v41;
            }

            *v41++ = v44;
            --v39;
          }

          while (v39);
LABEL_54:

          v3 = v63;
        }
      }

      if (v11 >= *(v2 + 16))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        v2 = sub_2262DCDA0(0, v62 + 1, 1, v2);
        goto LABEL_3;
      }

      v13 = (v2 + 8 * v11);
      v14 = v13[4];
      ++v11;
      v1 = *(v14 + 16);
    }

    while (!v1);
    v15 = v13[4];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v3;
    }

    else
    {
      result = sub_2262E866C(v3);
    }

    if (v1 <= *(result + 16))
    {
      if (v1 >= 4 && (result + 32 < v14 + 8 * v1 + 32 ? (v17 = v14 + 32 >= result + 8 * v1 + 32) : (v17 = 1), v17))
      {
        v18 = v1 & 0x7FFFFFFFFFFFFFFCLL;
        v19 = (v14 + 48);
        v3 = result;
        v20 = (result + 48);
        v21 = v1 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v22 = vbslq_s8(vcgtq_f64(*v20, *v19), *v19, *v20);
          v20[-1] = vbslq_s8(vcgtq_f64(v20[-1], v19[-1]), v19[-1], v20[-1]);
          *v20 = v22;
          v19 += 2;
          v20 += 2;
          v21 -= 4;
        }

        while (v21);
        if (v1 != v18)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v3 = result;
        v18 = 0;
LABEL_26:
        v23 = v1 - v18;
        v24 = 8 * v18;
        v25 = (v3 + 8 * v18 + 32);
        v26 = (v14 + v24 + 32);
        do
        {
          v27 = *v26++;
          v28 = v27;
          if (v27 >= *v25)
          {
            v28 = *v25;
          }

          *v25++ = v28;
          --v23;
        }

        while (v23);
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

size_t sub_2262EAF24(void *a1)
{
  v2 = sub_22635004C();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v2);
  v78 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RankedVisualBundle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v12 = MEMORY[0x277D84F90];
  v83 = a1;
  v84 = v8;
  v81 = v11;
  v82 = v6;
  if (v11)
  {
    v88 = MEMORY[0x277D84F90];
    sub_226316610(0, v11, 0);
    v5 = v84;
    v13 = v88;
    v14 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v86 = xmmword_226352970;
    v16 = v11;
    do
    {
      sub_2262EB6C4(v14, v10);
      v17 = &v10[*(v5 + 20)];
      v18 = *v17;
      v19 = *(v17 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
      v20 = swift_allocObject();
      *(v20 + 16) = v86;
      *(v20 + 32) = v18;
      *(v20 + 40) = v19;
      sub_2262EB728(v10);
      v88 = v13;
      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        sub_226316610((v21 > 1), v22 + 1, 1);
        v5 = v84;
        v13 = v88;
      }

      v13[2] = v22 + 1;
      v13[v22 + 4] = v20;
      v14 += v15;
      --v16;
    }

    while (v16);
    v11 = v81;
    if (v81 != 1)
    {
      v23 = sub_2262EA990(v13);

      v13 = v23;
      v5 = v84;
    }

    v6 = v82;
    a1 = v83;
    v12 = MEMORY[0x277D84F90];
    v24 = v13[2];
    if (v24)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (v24)
    {
LABEL_9:
      v88 = v12;
      result = sub_2263165F0(0, v24, 0);
      v26 = 0;
      v27 = v88;
      v85 = v24;
      *&v86 = v13 + 4;
      while (1)
      {
        if (v26 >= v13[2])
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          return result;
        }

        v28 = *(v86 + 8 * v26);
        v29 = *(v28 + 16);
        v30 = v29 >= 2 ? 2 : *(v28 + 16);
        v87 = v12;

        result = sub_2263165F0(0, v30, 0);
        v31 = v87;
        if (v29)
        {
          v32 = *(v28 + 16);
          if (!v32)
          {
            goto LABEL_73;
          }

          v33 = *(v28 + 32);
          v34 = *&qword_283977FB8;
          v36 = v87[2];
          v35 = v87[3];
          v37 = v36 + 1;
          if (v36 >= v35 >> 1)
          {
            result = sub_2263165F0((v35 > 1), v36 + 1, 1);
            v31 = v87;
          }

          v31[2] = v37;
          *&v31[v36 + 4] = v33 * v34;
          if (v29 == 1)
          {
            v38 = 0;
            v39 = 1;
          }

          else
          {
            if (v32 == 1)
            {
              goto LABEL_73;
            }

            if (*(v28 + 16) < 2uLL)
            {
              goto LABEL_76;
            }

            v40 = *(v28 + 40);
            v41 = *&qword_283977FC0;
            v87 = v31;
            v42 = v31[3];
            if (v37 >= v42 >> 1)
            {
              result = sub_2263165F0((v42 > 1), v36 + 2, 1);
              v31 = v87;
            }

            v31[2] = v36 + 2;
            *&v31[v37 + 4] = v40 * v41;
            v38 = 1;
            v39 = 2;
          }
        }

        else
        {
          v38 = 0;
          v39 = 0;
        }

        v43 = *(v28 + 16);
        if (v39 != v43)
        {
          if (v39 >= v43)
          {
            goto LABEL_74;
          }

          if (!v38)
          {
            v44 = v28 + 32;
            v45 = *(v28 + 32 + 8 * v39);
            v46 = *(&unk_283977F98 + v39 + 4);
            v87 = v31;
            v48 = v31[2];
            v47 = v31[3];
            if (v48 >= v47 >> 1)
            {
              result = sub_2263165F0((v47 > 1), v48 + 1, 1);
              v31 = v87;
            }

            v49 = v39 + 1;
            v31[2] = v48 + 1;
            *&v31[v48 + 4] = v45 * v46;
            v50 = *(v28 + 16);
            v12 = MEMORY[0x277D84F90];
            if (v39 + 1 != v50)
            {
              if (v39 + 1 >= v50)
              {
                goto LABEL_74;
              }

              if (v39 != 1)
              {
                v51 = *(v44 + 8 * v49);
                v52 = *(&unk_283977F98 + v49 + 4);
                v87 = v31;
                v54 = v31[2];
                v53 = v31[3];
                if (v54 >= v53 >> 1)
                {
                  result = sub_2263165F0((v53 > 1), v54 + 1, 1);
                  v31 = v87;
                }

                v55 = v39 + 2;
                v31[2] = v54 + 1;
                *&v31[v54 + 4] = v51 * v52;
                v56 = *(v28 + 16);
                v12 = MEMORY[0x277D84F90];
                if (v39 + 2 != v56)
                {
                  if (v39 + 2 >= v56)
                  {
                    goto LABEL_74;
                  }

                  if (v29)
                  {
                    v57 = *(v44 + 8 * v55);
                    v58 = *(&unk_283977F98 + v55 + 4);
                    v87 = v31;
                    v60 = v31[2];
                    v59 = v31[3];
                    if (v60 >= v59 >> 1)
                    {
                      sub_2263165F0((v59 > 1), v60 + 1, 1);
                      v31 = v87;
                    }

                    v31[2] = v60 + 1;
                    *&v31[v60 + 4] = v57 * v58;
                  }
                }
              }
            }
          }
        }

        v61 = v31[2];
        if (v61)
        {
          break;
        }

        v63 = 0.0;
LABEL_52:

        v88 = v27;
        v71 = v27[2];
        v70 = v27[3];
        if (v71 >= v70 >> 1)
        {
          result = sub_2263165F0((v70 > 1), v71 + 1, 1);
          v27 = v88;
        }

        ++v26;
        v27[2] = v71 + 1;
        *&v27[v71 + 4] = v63;
        if (v26 == v85)
        {

          a1 = v83;
          v5 = v84;
          v11 = v81;
          v6 = v82;
          goto LABEL_58;
        }
      }

      if (v61 > 3)
      {
        v62 = v61 & 0x7FFFFFFFFFFFFFFCLL;
        v64 = (v31 + 6);
        v63 = 0.0;
        v65 = v61 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v66 = *v64;
          v63 = v63 + *(v64 - 2) + *(v64 - 1) + *v64 + v64[1];
          v64 += 4;
          v65 -= 4;
        }

        while (v65);
        if (v61 == v62)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v62 = 0;
        v63 = 0.0;
      }

      v67 = v61 - v62;
      v68 = &v31[v62 + 4];
      do
      {
        v69 = *v68++;
        v63 = v63 + v69;
        --v67;
      }

      while (v67);
LABEL_51:

      goto LABEL_52;
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_58:
  if (v11 == v27[2])
  {
    if (v11)
    {

      v72 = 0;
      while (1)
      {
        v73 = v27[v72 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2262E86A8(a1);
          a1 = result;
        }

        if (v72 >= a1[2])
        {
          goto LABEL_75;
        }

        *(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v72++ + *(v5 + 24)) = v73;
        if (v11 == v72)
        {
          goto LABEL_70;
        }
      }
    }

LABEL_70:
  }

  else
  {

    v74 = v78;
    sub_22634FFBC();
    v75 = sub_22635003C();
    v76 = sub_22635073C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_2262B6000, v75, v76, "Bundle ranking error: mismatched count of bundles and scores", v77, 2u);
      MEMORY[0x22AA7D570](v77, -1, -1);
    }

    (*(v79 + 8))(v74, v80);
    return MEMORY[0x277D84F90];
  }

  return a1;
}

uint64_t sub_2262EB6C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedVisualBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2262EB728(uint64_t a1)
{
  v2 = type metadata accessor for RankedVisualBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2262EB784()
{
  result = qword_28137FA48;
  if (!qword_28137FA48)
  {
    sub_22634EEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137FA48);
  }

  return result;
}

uint64_t sub_2262EB7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedVisualBundle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for VisualBundleFeatures(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VisualBundleFeatures(uint64_t result, int a2, int a3)
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

uint64_t sub_2262EB938(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793218, &unk_2263525E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v54 - v7;
  v9 = sub_22635004C();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  v15 = type metadata accessor for Analytics.Interval(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2262F0408();
  v20 = v19;
  v56 = type metadata accessor for Analytics(0);
  v21 = v2;
  v22 = *(v2 + *(v56 + 56));
  if (*(v22 + 16) && (v23 = sub_2263393B0(a1), (v24 & 1) != 0))
  {
    sub_2262F4934(*(v22 + 56) + *(v16 + 72) * v23, v59, type metadata accessor for Analytics.Interval);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v55;
      sub_22635000C();

      v26 = sub_22635003C();
      v27 = sub_22635074C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v61 = v29;
        *v28 = 136315394;
        v30 = sub_226345004(v54, v20, &v61);

        *(v28 + 4) = v30;
        *(v28 + 12) = 2080;
        v60 = a1;
        v31 = sub_2263504CC();
        v33 = sub_226345004(v31, v32, &v61);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_2262B6000, v26, v27, "%s Analytics: Programming error: Step was already completed. Cannot start again. stepKind: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v29, -1, -1);
        MEMORY[0x22AA7D570](v28, -1, -1);
      }

      else
      {
      }

      (*(v57 + 8))(v25, v58);
      v45 = *(v56 + 60);
      v46 = *(v21 + v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_2262DC850(0, *(v46 + 2) + 1, 1, v46);
      }

      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      if (v48 >= v47 >> 1)
      {
        v46 = sub_2262DC850((v47 > 1), v48 + 1, 1, v46);
      }

      *(v46 + 2) = v48 + 1;
      v46[v48 + 32] = 2;
      *(v21 + v45) = v46;
      return sub_2262F4AEC(v59, type metadata accessor for Analytics.Interval);
    }

    else
    {
      sub_22635000C();

      v36 = sub_22635003C();
      v37 = sub_22635074C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = a1;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v61 = v40;
        *v39 = 136315394;
        v41 = sub_226345004(v54, v20, &v61);

        *(v39 + 4) = v41;
        *(v39 + 12) = 2080;
        v60 = v38;
        v42 = sub_2263504CC();
        v44 = sub_226345004(v42, v43, &v61);

        *(v39 + 14) = v44;
        _os_log_impl(&dword_2262B6000, v36, v37, "%s Analytics: Programming error: Step was already started. Cannot start again. stepKind: %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v40, -1, -1);
        MEMORY[0x22AA7D570](v39, -1, -1);
      }

      else
      {
      }

      (*(v57 + 8))(v14, v58);
      v49 = *(v56 + 60);
      v50 = *(v21 + v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_2262DC850(0, *(v50 + 2) + 1, 1, v50);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_2262DC850((v51 > 1), v52 + 1, 1, v50);
      }

      *(v50 + 2) = v52 + 1;
      v50[v52 + 32] = 1;
      *(v21 + v49) = v50;
      v53 = sub_22634EECC();
      return (*(*(v53 - 8) + 8))(v59, v53);
    }
  }

  else
  {

    v34 = sub_22634EECC();
    (*(*(v34 - 8) + 16))(v8, a2, v34);
    swift_storeEnumTagMultiPayload();
    (*(v16 + 56))(v8, 0, 1, v15);
    return sub_2262DF6F4(v8, a1);
  }
}

uint64_t sub_2262EBFE0(int a1, _BYTE *a2)
{
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793218, &unk_2263525E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v65[-v6];
  v67 = type metadata accessor for Analytics.Interval.Complete(0);
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v9 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_22634EECC();
  v68 = *(v70 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22635004C();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v65[-v17];
  v19 = type metadata accessor for Analytics.Interval(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v65[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = sub_2262F0408();
  v25 = v24;
  v74 = type metadata accessor for Analytics(0);
  v26 = *(v74 + 56);
  v77 = v2;
  v27 = *(v2 + v26);
  if (*(v27 + 16) && (v28 = sub_2263393B0(a1), (v29 & 1) != 0))
  {
    v66 = a1;
    sub_2262F4934(*(v27 + 56) + *(v20 + 72) * v28, v23, type metadata accessor for Analytics.Interval);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v72;
      sub_22635000C();

      v31 = sub_22635003C();
      v32 = sub_22635074C();

      v33 = os_log_type_enabled(v31, v32);
      v34 = v66;
      if (v33)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v79 = v36;
        *v35 = 136315394;
        v37 = sub_226345004(v73, v25, &v79);

        *(v35 + 4) = v37;
        *(v35 + 12) = 2080;
        v78 = v34;
        v38 = sub_2263504CC();
        v40 = sub_226345004(v38, v39, &v79);

        *(v35 + 14) = v40;
        _os_log_impl(&dword_2262B6000, v31, v32, "%s Analytics: Programming error: Tried to end a step that has already been ended. %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v36, -1, -1);
        MEMORY[0x22AA7D570](v35, -1, -1);
      }

      else
      {
      }

      (*(v75 + 8))(v30, v76);
      v60 = v77;
      v61 = *(v74 + 60);
      v62 = *(v77 + v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_2262DC850(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      if (v64 >= v63 >> 1)
      {
        v62 = sub_2262DC850((v63 > 1), v64 + 1, 1, v62);
      }

      *(v62 + 2) = v64 + 1;
      v62[v64 + 32] = 4;
      *(v60 + v61) = v62;
      return sub_2262F4AEC(v23, type metadata accessor for Analytics.Interval);
    }

    else
    {

      v56 = v68;
      v57 = v70;
      (*(v68 + 32))(v12, v23, v70);
      v58 = *(v56 + 16);
      v58(v9, v12, v57);
      v58(&v9[*(v67 + 20)], v69, v57);
      v59 = v71;
      sub_2262F4934(v9, v71, type metadata accessor for Analytics.Interval.Complete);
      swift_storeEnumTagMultiPayload();
      (*(v20 + 56))(v59, 0, 1, v19);
      sub_2262DF6F4(v59, v66);
      sub_2262F4AEC(v9, type metadata accessor for Analytics.Interval.Complete);
      return (*(v56 + 8))(v12, v57);
    }
  }

  else
  {
    v41 = a1;
    sub_22635000C();

    v42 = sub_22635003C();
    v43 = sub_22635074C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = sub_226345004(v73, v25, &v79);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      v78 = v41;
      v47 = sub_2263504CC();
      v49 = sub_226345004(v47, v48, &v79);

      *(v44 + 14) = v49;
      _os_log_impl(&dword_2262B6000, v42, v43, "%s Analytics: Programming error: Tried to end a step that hasn't start yet. %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v45, -1, -1);
      MEMORY[0x22AA7D570](v44, -1, -1);
    }

    else
    {
    }

    (*(v75 + 8))(v18, v76);
    v50 = v77;
    v51 = *(v74 + 60);
    v52 = *(v77 + v51);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2262DC850(0, *(v52 + 16) + 1, 1, v52);
      v52 = result;
    }

    v55 = *(v52 + 16);
    v54 = *(v52 + 24);
    if (v55 >= v54 >> 1)
    {
      result = sub_2262DC850((v54 > 1), v55 + 1, 1, v52);
      v52 = result;
    }

    *(v52 + 16) = v55 + 1;
    *(v52 + v55 + 32) = 3;
    *(v50 + v51) = v52;
  }

  return result;
}

uint64_t sub_2262EC7A0()
{
  v1 = sub_22635004C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_2262F0408();
  v11 = v10;
  v12 = *(type metadata accessor for Analytics(0) + 64);
  if (*(v0 + v12) == 1)
  {
    sub_22635000C();

    v13 = sub_22635003C();
    v14 = sub_22635074C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = sub_226345004(v9, v11, &v27);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_2262B6000, v13, v14, "%s Analytics: Programming error: Already logged to Core Analytics and/or PowerLog. Not logging again.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x22AA7D570](v16, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v8, v1);
  }

  else
  {
    *(v0 + v12) = 1;
    sub_2262F0FE0();
    v18 = sub_22635045C();
    sub_2262DA244();
    v19 = sub_2263503DC();

    AnalyticsSendEvent();

    sub_22635000C();

    v20 = sub_22635003C();
    v21 = sub_22635072C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      v24 = sub_226345004(v9, v11, &v27);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_2262B6000, v20, v21, "%s Analytics: Finished logging", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x22AA7D570](v23, -1, -1);
      MEMORY[0x22AA7D570](v22, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_2262ECB10()
{
  v1 = 0x736575737369;
  if (*v0 != 1)
  {
    v1 = 0x646567676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746E4970657473;
  }
}

uint64_t sub_2262ECB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2262F3B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2262ECBA4(uint64_t a1)
{
  v2 = sub_2262F38CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262ECBE0(uint64_t a1)
{
  v2 = sub_2262F38CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262ECC1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2262ECC80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935B8, &qword_2263531F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F38CC();
  sub_226350D2C();
  v14 = *(v3 + 16);
  HIBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793380, &qword_226353100);
  sub_2262F4C48();
  sub_226350BEC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933A0, &qword_226353108);
    sub_2262F4D58(&qword_27D7934D8, sub_2262F4DD0);
    sub_226350BEC();
    v11 = *(v3 + 32);
    LOBYTE(v14) = 2;
    sub_226350BCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t getEnumTagSinglePayload for Analytics.Issue(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Analytics.Issue(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2262ED004()
{
  sub_2262ED078();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Analytics.Interval.Complete(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2262ED078()
{
  if (!qword_28137FA58)
  {
    v0 = sub_22634EECC();
    if (!v1)
    {
      atomic_store(v0, &qword_28137FA58);
    }
  }
}

uint64_t sub_2262ED108()
{
  result = sub_22634EECC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2262ED1BC()
{
  sub_22634EEFC();
  if (v0 <= 0x3F)
  {
    sub_2262ED4E8(319, &qword_28137DFE8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2262ED4E8(319, qword_28137E358, &type metadata for Analytics.ErrorAnalytics, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2262ED4E8(319, &qword_28137E350, &type metadata for Analytics.ExitReason, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2262ED4E8(319, &qword_28137E030, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2262ED4E8(319, qword_28137EE20, &type metadata for VisualActionEvent.Outcome, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2262ED4E8(319, &qword_28137DFF8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_2262BA32C();
                if (v7 <= 0x3F)
                {
                  sub_22634FDFC();
                  if (v8 <= 0x3F)
                  {
                    sub_2262ED428();
                    if (v9 <= 0x3F)
                    {
                      sub_2262ED4E8(319, &qword_28137E028, &type metadata for Analytics.Issue, MEMORY[0x277D83940]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2262ED428()
{
  if (!qword_28137E048)
  {
    type metadata accessor for Analytics.Interval(255);
    sub_2262ED494();
    v0 = sub_2263503FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28137E048);
    }
  }
}

unint64_t sub_2262ED494()
{
  result = qword_28137E210[0];
  if (!qword_28137E210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28137E210);
  }

  return result;
}

void sub_2262ED4E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
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

uint64_t sub_2262ED55C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2262ED5A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2262ED624(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793370, &qword_2263530F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v1 + 24) = v10;
  *(v1 + 32) = 0;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F38CC();
  sub_226350D1C();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793380, &qword_226353100);
    v17 = 0;
    sub_2262F3920();
    sub_226350B3C();
    v12 = *(v1 + 16);
    *(v1 + 16) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933A0, &qword_226353108);
    v17 = 1;
    sub_2262F4D58(&qword_27D7933A8, sub_2262F3A30);
    sub_226350B3C();
    v13 = *(v1 + 24);
    *(v1 + 24) = v18;

    LOBYTE(v18) = 2;
    v15 = sub_226350B1C();
    (*(v6 + 8))(v9, v5);
    *(v3 + 32) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_2262ED8C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Analytics.State();
  swift_allocObject();
  result = sub_2262ED624(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2262ED9F8(void *a1, int a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793580, &qword_2263531B8);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793588, &qword_2263531C0);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793590, &qword_2263531C8);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793598, &qword_2263531D0);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935A0, &qword_2263531D8);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935A8, &qword_2263531E0);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935B0, &qword_2263531E8);
  v24 = *(v51 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v51);
  v27 = &v36 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F53EC();
  sub_226350D2C();
  v29 = (v24 + 8);
  if (v52 > 2u)
  {
    if (v52 == 3)
    {
      v56 = 3;
      sub_2262F54E8();
      v32 = v42;
      v33 = v51;
      sub_226350B6C();
      v35 = v43;
      v34 = v44;
    }

    else if (v52 == 4)
    {
      v57 = 4;
      sub_2262F5494();
      v32 = v45;
      v33 = v51;
      sub_226350B6C();
      v35 = v46;
      v34 = v47;
    }

    else
    {
      v58 = 5;
      sub_2262F5440();
      v32 = v48;
      v33 = v51;
      sub_226350B6C();
      v35 = v49;
      v34 = v50;
    }

    (*(v35 + 8))(v32, v34);
  }

  else if (v52)
  {
    if (v52 == 1)
    {
      v54 = 1;
      sub_2262F5590();
      v30 = v51;
      sub_226350B6C();
      (*(v38 + 8))(v19, v39);
      return (*v29)(v27, v30);
    }

    v55 = 2;
    sub_2262F553C();
    v33 = v51;
    sub_226350B6C();
    (*(v40 + 8))(v15, v41);
  }

  else
  {
    v53 = 0;
    sub_2262F55E4();
    v33 = v51;
    sub_226350B6C();
    (*(v37 + 8))(v23, v20);
  }

  return (*v29)(v27, v33);
}

uint64_t sub_2262EDFF8(uint64_t a1)
{
  v2 = sub_2262F5440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE034(uint64_t a1)
{
  v2 = sub_2262F5440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE070()
{
  v1 = *v0;
  v2 = 0x6974636964657270;
  v3 = 0x6C69626967696C65;
  v4 = 0x676E696B6E6172;
  if (v1 != 4)
  {
    v4 = 0x6152656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F69747563657865;
  if (v1 != 1)
  {
    v5 = 0x6B63616264656566;
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

uint64_t sub_2262EE148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2262F3CB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2262EE17C(uint64_t a1)
{
  v2 = sub_2262F53EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE1B8(uint64_t a1)
{
  v2 = sub_2262F53EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE1F4(uint64_t a1)
{
  v2 = sub_2262F54E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE230(uint64_t a1)
{
  v2 = sub_2262F54E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE26C(uint64_t a1)
{
  v2 = sub_2262F5590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE2A8(uint64_t a1)
{
  v2 = sub_2262F5590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE2E4(uint64_t a1)
{
  v2 = sub_2262F553C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE320(uint64_t a1)
{
  v2 = sub_2262F553C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE35C(uint64_t a1)
{
  v2 = sub_2262F55E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE398(uint64_t a1)
{
  v2 = sub_2262F55E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE3D4(uint64_t a1)
{
  v2 = sub_2262F5494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EE410(uint64_t a1)
{
  v2 = sub_2262F5494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EE44C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2262F3ECC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2262EE498()
{
  result = qword_27D793358;
  if (!qword_27D793358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793358);
  }

  return result;
}

uint64_t sub_2262EE4EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793440, &qword_226353150);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F48E0();
  sub_226350D2C();
  v11[15] = 0;
  sub_22634EECC();
  sub_2262F47DC(&qword_27D793428, MEMORY[0x277CC9578]);
  sub_226350BEC();
  if (!v1)
  {
    v9 = *(type metadata accessor for Analytics.Interval.Complete(0) + 20);
    v11[14] = 1;
    sub_226350BEC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2262EE6B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_22634EECC();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793430, &qword_226353148);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Analytics.Interval.Complete(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F48E0();
  sub_226350D1C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v14;
  v27 = v7;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  sub_2262F47DC(&qword_27D793400, MEMORY[0x277CC9578]);
  v20 = v31;
  v21 = v32;
  sub_226350B3C();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  sub_226350B3C();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_2262F4934(v23, v29, type metadata accessor for Analytics.Interval.Complete);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_2262F4AEC(v23, type metadata accessor for Analytics.Interval.Complete);
}

uint64_t sub_2262EEA74()
{
  if (*v0)
  {
    result = 0x65746144646E65;
  }

  else
  {
    result = 0x7461447472617473;
  }

  *v0;
  return result;
}

uint64_t sub_2262EEAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_226350C4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_226350C4C();

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

uint64_t sub_2262EEB98(uint64_t a1)
{
  v2 = sub_2262F48E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EEBD4(uint64_t a1)
{
  v2 = sub_2262F48E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EEC40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793408, &qword_226353130);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v31 - v4;
  v34 = type metadata accessor for Analytics.Interval.Complete(0);
  v5 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793410, &qword_226353138);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v31 = sub_22634EECC();
  v40 = *(v31 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v31);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Analytics.Interval(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793418, &qword_226353140);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v41);
  v21 = &v31 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F4734();
  sub_226350D2C();
  sub_2262F4934(v39, v17, type metadata accessor for Analytics.Interval);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v35;
    sub_2262F4878(v17, v35, type metadata accessor for Analytics.Interval.Complete);
    v43 = 1;
    sub_2262F4788();
    v24 = v36;
    v25 = v41;
    sub_226350B6C();
    sub_2262F47DC(&qword_27D793420, type metadata accessor for Analytics.Interval.Complete);
    v26 = v38;
    sub_226350BEC();
    (*(v37 + 8))(v24, v26);
    sub_2262F4AEC(v23, type metadata accessor for Analytics.Interval.Complete);
    return (*(v18 + 8))(v21, v25);
  }

  else
  {
    v28 = v31;
    (*(v40 + 32))(v13, v17, v31);
    v42 = 0;
    sub_2262F4824();
    v29 = v41;
    sub_226350B6C();
    sub_2262F47DC(&qword_27D793428, MEMORY[0x277CC9578]);
    v30 = v33;
    sub_226350BEC();
    (*(v32 + 8))(v10, v30);
    (*(v40 + 8))(v13, v28);
    return (*(v18 + 8))(v21, v29);
  }
}

uint64_t sub_2262EF198@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933C0, &qword_226353110);
  v47 = *(v44 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v50 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933C8, &qword_226353118);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933D0, &qword_226353120);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v40 - v10;
  v12 = type metadata accessor for Analytics.Interval(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v40 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2262F4734();
  v24 = v51;
  sub_226350D1C();
  if (!v24)
  {
    v41 = v21;
    v42 = v16;
    v51 = v19;
    v25 = v50;
    v26 = v12;
    v27 = v48;
    v28 = sub_226350B5C();
    if (*(v28 + 16) == 1)
    {
      v40[1] = v28;
      v53 = 1;
      sub_2262F4788();
      v29 = v25;
      sub_226350AAC();
      type metadata accessor for Analytics.Interval.Complete(0);
      sub_2262F47DC(&qword_27D7933F0, type metadata accessor for Analytics.Interval.Complete);
      v30 = v42;
      v31 = v29;
      v32 = v44;
      sub_226350B3C();
      (*(v47 + 8))(v31, v32);
      (*(v27 + 8))(v11, v8);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v39 = v41;
      sub_2262F4878(v30, v41, type metadata accessor for Analytics.Interval);
      sub_2262F4878(v39, v43, type metadata accessor for Analytics.Interval);
    }

    else
    {
      v33 = v11;
      v34 = sub_22635099C();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933E0, &qword_226353128) + 48);
      *v36 = v26;
      sub_226350ABC();
      sub_22635098C();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v27 + 8))(v33, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

uint64_t sub_2262EF7B4()
{
  if (*v0)
  {
    result = 0x6574656C706D6F63;
  }

  else
  {
    result = 0x656C706D6F636E69;
  }

  *v0;
  return result;
}

uint64_t sub_2262EF7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C706D6F636E69 && a2 == 0xEA00000000006574;
  if (v6 || (sub_226350C4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_226350C4C();

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

uint64_t sub_2262EF8D8(uint64_t a1)
{
  v2 = sub_2262F4734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EF914(uint64_t a1)
{
  v2 = sub_2262F4734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EF95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_226350C4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2262EF9DC(uint64_t a1)
{
  v2 = sub_2262F4788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EFA18(uint64_t a1)
{
  v2 = sub_2262F4788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2262EFA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_226350C4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2262EFB00(uint64_t a1)
{
  v2 = sub_2262F4824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262EFB3C(uint64_t a1)
{
  v2 = sub_2262F4824();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2262EFBA8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2262F46D0(*a1);
  *a2 = result;
  return result;
}

void *sub_2262EFC84@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_2262EFD54()
{
  v1 = sub_22635004C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_2263504BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22634ED4C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_22634ED3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935E0, &qword_226353218);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_226351C80;
  v9 = *(v0 + 8);
  *(v8 + 32) = *v0;
  *(v8 + 40) = v9;
  v10 = *(v0 + 24);
  *(v8 + 48) = *(v0 + 16);
  *(v8 + 56) = v10;
  v11 = *(v0 + 40);
  *(v8 + 64) = *(v0 + 32);
  *(v8 + 72) = v11;
  v21 = *(v0 + 48);
  *(v8 + 80) = v21;
  v20 = v8;

  sub_2262D66FC(&v21, v19, &qword_27D793140, &qword_226353220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935E8, &qword_226353228);
  sub_2262F5638();
  v12 = sub_22634ED2C();
  v14 = v13;

  sub_2263504AC();
  v15 = sub_22635048C();
  v17 = v16;
  sub_2262D611C(v12, v14);
  if (v17)
  {
    return v15;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_2262F0068(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793500, &qword_226353178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F52DC();
  sub_226350D2C();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_226350BBC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_226350BBC();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_226350BBC();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_226350B7C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2262F0228()
{
  v1 = 0x6E69616D6F64;
  v2 = 1701080931;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697469646461;
  }

  if (*v0)
  {
    v1 = 0x6D614E7373616C63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2262F02A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2262F4E78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2262F02DC(uint64_t a1)
{
  v2 = sub_2262F52DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262F0318(uint64_t a1)
{
  v2 = sub_2262F52DC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2262F0354@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2262F4FE8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_2262F03B4()
{
  result = qword_27D793360;
  if (!qword_27D793360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793360);
  }

  return result;
}

uint64_t sub_2262F0408()
{
  sub_22635096C();

  strcpy(v12, "[requestKind: ");
  HIBYTE(v12[1]) = -18;
  v1 = 0xEA00000000006E6FLL;
  v2 = 0x6974636964657270;
  v3 = 0xE800000000000000;
  v4 = 0x6B63616264656566;
  if (*v0 != 2)
  {
    v4 = 0x6152656C646E7562;
    v3 = 0xED0000676E696B6ELL;
  }

  if (*v0)
  {
    v2 = 0x6F69747563657865;
    v1 = 0xE90000000000006ELL;
  }

  if (*v0 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v0 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x22AA7C5B0](v5, v6);

  MEMORY[0x22AA7C5B0](0x203A74207C20, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930C8, &unk_226351F90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226351C90;
  v8 = sub_2262F05BC();
  v9 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  v10 = sub_22635049C();
  MEMORY[0x22AA7C5B0](v10);

  MEMORY[0x22AA7C5B0](23923, 0xE200000000000000);
  return v12[0];
}

double sub_2262F05BC()
{
  v1 = sub_22634EECC();
  v95 = *(v1 - 8);
  v96 = v1;
  v2 = *(v95 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v91 = &v83 - v5;
  v6 = type metadata accessor for Analytics.Interval.Complete(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v88 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Analytics.Interval(0);
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v83 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v83 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v86 = &v83 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v83 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v84 = &v83 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v83 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v83 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C20, &unk_226351F80);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v94 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v83 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v83 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v83 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v83 - v44;
  MEMORY[0x28223BE20](v43);
  v93 = &v83 - v46;
  v47 = *v0;
  v48 = *&v0[*(type metadata accessor for Analytics(0) + 56)];
  v49 = *(v48 + 16);
  if (v47 > 1)
  {
    if (v47 == 2)
    {
      v54 = v95;
      v56 = v96;
      if (v49)
      {
        v57 = sub_2263393B0(2u);
        if (v58)
        {
          v59 = *(v48 + 56) + *(v89 + 72) * v57;
          v60 = v86;
          sub_2262F4934(v59, v86, type metadata accessor for Analytics.Interval);
          sub_2262F4934(v60, v17, type metadata accessor for Analytics.Interval);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v50 = v93;
          if (EnumCaseMultiPayload == 1)
          {
            v62 = v88;
            sub_2262F4878(v17, v88, type metadata accessor for Analytics.Interval.Complete);
            (*(v54 + 16))(v39, v62, v56);
            sub_2262F4AEC(v62, type metadata accessor for Analytics.Interval.Complete);
          }

          else
          {
            (*(v54 + 32))(v39, v17, v56);
          }

          sub_2262F4AEC(v60, type metadata accessor for Analytics.Interval);
          (*(v54 + 56))(v39, 0, 1, v56);
          v45 = v39;
          goto LABEL_36;
        }
      }

      (*(v54 + 56))(v39, 1, 1, v56);
      v45 = v39;
    }

    else
    {
      v54 = v95;
      v56 = v96;
      if (v49 && (v69 = sub_2263393B0(5u), (v70 & 1) != 0))
      {
        v71 = *(v48 + 56) + *(v89 + 72) * v69;
        v72 = v87;
        sub_2262F4934(v71, v87, type metadata accessor for Analytics.Interval);
        v73 = v85;
        sub_2262F4934(v72, v85, type metadata accessor for Analytics.Interval);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v74 = v88;
          sub_2262F4878(v73, v88, type metadata accessor for Analytics.Interval.Complete);
          (*(v54 + 16))(v36, v74, v56);
          sub_2262F4AEC(v74, type metadata accessor for Analytics.Interval.Complete);
        }

        else
        {
          (*(v54 + 32))(v36, v73, v56);
        }

        sub_2262F4AEC(v72, type metadata accessor for Analytics.Interval);
        (*(v54 + 56))(v36, 0, 1, v56);
      }

      else
      {
        (*(v54 + 56))(v36, 1, 1, v56);
      }

      v45 = v36;
    }

    v50 = v93;
    goto LABEL_36;
  }

  if (v47)
  {
    v50 = v93;
    if (v49 && (v63 = sub_2263393B0(1u), (v64 & 1) != 0))
    {
      v65 = *(v48 + 56) + *(v89 + 72) * v63;
      v66 = v84;
      sub_2262F4934(v65, v84, type metadata accessor for Analytics.Interval);
      sub_2262F4934(v66, v22, type metadata accessor for Analytics.Interval);
      v67 = swift_getEnumCaseMultiPayload();
      v54 = v95;
      v56 = v96;
      if (v67 == 1)
      {
        v68 = v88;
        sub_2262F4878(v22, v88, type metadata accessor for Analytics.Interval.Complete);
        (*(v54 + 16))(v42, v68, v56);
        sub_2262F4AEC(v68, type metadata accessor for Analytics.Interval.Complete);
      }

      else
      {
        (*(v95 + 32))(v42, v22, v96);
      }

      sub_2262F4AEC(v66, type metadata accessor for Analytics.Interval);
      (*(v54 + 56))(v42, 0, 1, v56);
    }

    else
    {
      v54 = v95;
      v56 = v96;
      (*(v95 + 56))(v42, 1, 1, v96);
    }

    v45 = v42;
  }

  else
  {
    v50 = v93;
    if (v49 && (v51 = sub_2263393B0(0), (v52 & 1) != 0))
    {
      sub_2262F4934(*(v48 + 56) + *(v89 + 72) * v51, v29, type metadata accessor for Analytics.Interval);
      sub_2262F4934(v29, v27, type metadata accessor for Analytics.Interval);
      v53 = swift_getEnumCaseMultiPayload();
      v54 = v95;
      if (v53 == 1)
      {
        v55 = v88;
        sub_2262F4878(v27, v88, type metadata accessor for Analytics.Interval.Complete);
        v56 = v96;
        (*(v54 + 16))(v45, v55, v96);
        sub_2262F4AEC(v55, type metadata accessor for Analytics.Interval.Complete);
      }

      else
      {
        v75 = v27;
        v56 = v96;
        (*(v95 + 32))(v45, v75, v96);
      }

      sub_2262F4AEC(v29, type metadata accessor for Analytics.Interval);
      (*(v54 + 56))(v45, 0, 1, v56);
    }

    else
    {
      v54 = v95;
      v56 = v96;
      (*(v95 + 56))(v45, 1, 1, v96);
    }
  }

LABEL_36:
  sub_2262D6764(v45, v50, &qword_27D793C20, &unk_226351F80);
  v76 = v94;
  sub_2262D66FC(v50, v94, &qword_27D793C20, &unk_226351F80);
  if ((*(v54 + 48))(v76, 1, v56) == 1)
  {
    sub_2262D67D8(v50, &qword_27D793C20, &unk_226351F80);
    v77 = 0.0;
    v50 = v76;
  }

  else
  {
    v78 = v91;
    (*(v54 + 32))(v91, v76, v56);
    v79 = v92;
    sub_22634EEBC();
    sub_22634EE6C();
    v77 = v80;
    v81 = *(v54 + 8);
    v81(v79, v56);
    v81(v78, v56);
  }

  sub_2262D67D8(v50, &qword_27D793C20, &unk_226351F80);
  return v77;
}

uint64_t sub_2262F0FE0()
{
  v1 = v0;
  v2 = sub_22635004C();
  v3 = *(v2 - 8);
  v186 = v2;
  v187 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Analytics.Interval.Complete(0);
  v7 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v178 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for Analytics.Interval(0);
  v182 = *(v188 - 8);
  v9 = *(v182 + 64);
  v10 = MEMORY[0x28223BE20](v188);
  v190 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v181 = &v171 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935C0, &qword_2263531F8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v193 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v191 = &v171 - v17;
  v195 = sub_22634F47C();
  v192 = *(v195 - 8);
  v18 = *(v192 + 64);
  MEMORY[0x28223BE20](v195);
  v174 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v183 = &v171 - v22;
  v23 = type metadata accessor for Analytics(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2262F4934(v1, v26, type metadata accessor for Analytics);
  v180 = sub_2262F0408();
  v28 = v27;
  sub_2262F4AEC(v26, type metadata accessor for Analytics);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935C8, &unk_226353200);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4B74736575716572;
  v184 = (inited + 32);
  *(inited + 16) = xmmword_226352B00;
  *(inited + 40) = 0xEB00000000646E69;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x8000000226356B50;
  v194 = v23;
  v30 = &v1[*(v23 + 24)];
  v31 = 0x277CBE000uLL;
  v32 = &off_27858F000;
  if (v30[8])
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v185 = v6;
  *(inited + 72) = v33;
  *(inited + 80) = 0x726F727265;
  *(inited + 88) = 0xE500000000000000;
  v34 = &v1[v194[7]];
  if (*(v34 + 1))
  {
    v35 = *(v34 + 1);
    v200 = *v34;
    v201 = v35;
    v36 = *(v34 + 3);
    v202 = *(v34 + 2);
    v203 = v36;
    sub_2262EFD54();
    v37 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v38 = sub_22635045C();
    v39 = [v37 initWithString_];

    v31 = 0x277CBE000;
    v32 = &off_27858F000;
  }

  else
  {
    v39 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  *(inited + 96) = v39;
  *(inited + 104) = 0x7361655274697865;
  *(inited + 112) = 0xEA00000000006E6FLL;
  v40 = v1[v194[8]];
  if (v40 == 2)
  {
    v41 = [objc_allocWithZone(*(v31 + 2920)) v32[125]];
  }

  else
  {
    v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  *(inited + 120) = v41;
  strcpy((inited + 128), "groundingLabel");
  *(inited + 143) = -18;
  v42 = &v1[v194[9]];
  v43 = *(v42 + 1);
  v189 = v28;
  if (v43)
  {
    v44 = *v42;
    v45 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v46 = sub_22635045C();
    v47 = [v45 initWithString_];

    v48 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v48 = v44 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v48 != 0;
  }

  else
  {
    v47 = [objc_allocWithZone(*(v31 + 2920)) v32[125]];
  }

  *(inited + 144) = v47;
  *(inited + 152) = 0xD000000000000011;
  *(inited + 160) = 0x8000000226356B70;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x8000000226356B90;
  v49 = v194;
  *&v179 = v194[12];
  v50 = v183;
  sub_2262D66FC(&v1[v179], v183, &qword_27D792FE0, &unk_226351C10);
  v51 = *(v192 + 48);
  v176 = v192 + 48;
  v177 = v51;
  v52 = v51(v50, 1, v195) != 1;
  sub_2262D67D8(v50, &qword_27D792FE0, &unk_226351C10);
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 200), "sessionOutcome");
  *(inited + 215) = -18;
  v53 = v49[10];
  v196 = v1;
  v54 = v1[v53];
  if (v54 == 3)
  {
    v55 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v56 = v190;
  *(inited + 216) = v55;
  *(inited + 224) = 0x556E6F6973736573;
  *(inited + 232) = 0xEB00000000444955;
  v57 = v194;
  v58 = v196;
  v59 = &v196[v194[5]];
  sub_22634EEDC();
  v60 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v61 = sub_22635045C();
  v62 = [v60 initWithString_];

  *(inited + 240) = v62;
  *(inited + 248) = 0xD000000000000017;
  *(inited + 256) = 0x8000000226356BB0;
  v63 = v58[v57[11]];
  if (v63 == 2)
  {
    v64 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v64 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v66 = v195;
  v65 = v196;
  *(inited + 264) = v64;
  *(inited + 272) = 0xD000000000000015;
  *(inited + 280) = 0x8000000226356BD0;
  v67 = v179;
  if (v177(&v65[v179], 1, v66))
  {
    v68 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v69 = 0x277CCA000;
    v70 = &off_27858F000;
  }

  else
  {
    v71 = v192;
    v72 = v174;
    (*(v192 + 16))(v174, &v65[v67], v66);
    v73 = sub_22634F44C();
    (*(v71 + 8))(v72, v66);
    v69 = 0x277CCA000uLL;
    v70 = &off_27858F000;
    v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v74 = v187;
  *(inited + 288) = v68;
  *(inited + 296) = 0x776F6C666B726F77;
  *(inited + 304) = 0xE800000000000000;
  v75 = v194;
  v76 = v196;
  v77 = &v196[v194[13]];
  *(inited + 312) = [objc_allocWithZone(*(v69 + 2992)) v70[146]];
  v195 = sub_2262FE32C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D0, &qword_226355E70);
  swift_arrayDestroy();
  v78 = *&v76[v75[14]];
  v79 = v78 + 64;
  v80 = 1 << *(v78 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & *(v78 + 64);
  v192 = (v80 + 63) >> 6;
  v184 = (v74 + 8);
  v176 = 0x8000000226356BF0;
  v173 = 0x8000000226356C30;
  v174 = 0x8000000226356C10;
  v171 = 0x8000000226356C70;
  v172 = 0x8000000226356C50;
  v183 = v78;

  v83 = 0;
  *&v84 = 136315394;
  v179 = v84;
  v85 = v193;
  v187 = v79;
  while (1)
  {
    if (!v82)
    {
      if (v192 <= v83 + 1)
      {
        v88 = v83 + 1;
      }

      else
      {
        v88 = v192;
      }

      v89 = v88 - 1;
      while (1)
      {
        v87 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v87 >= v192)
        {
          v86 = v56;
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D8, &qword_226353210);
          (*(*(v114 - 8) + 56))(v85, 1, 1, v114);
          v82 = 0;
          v83 = v89;
          goto LABEL_38;
        }

        v82 = *(v79 + 8 * v87);
        ++v83;
        if (v82)
        {
          v86 = v56;
          v83 = v87;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_89;
    }

    v86 = v56;
    v87 = v83;
LABEL_37:
    v90 = __clz(__rbit64(v82));
    v82 &= v82 - 1;
    v91 = v90 | (v87 << 6);
    v92 = *(*(v183 + 48) + v91);
    v93 = v181;
    sub_2262F4934(*(v183 + 56) + *(v182 + 72) * v91, v181, type metadata accessor for Analytics.Interval);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D8, &qword_226353210);
    v95 = *(v94 + 48);
    *v85 = v92;
    sub_2262F4878(v93, &v85[v95], type metadata accessor for Analytics.Interval);
    (*(*(v94 - 8) + 56))(v85, 0, 1, v94);
LABEL_38:
    v96 = v191;
    sub_2262D6764(v85, v191, &qword_27D7935C0, &qword_2263531F8);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D8, &qword_226353210);
    if ((*(*(v97 - 8) + 48))(v96, 1, v97) == 1)
    {
      break;
    }

    v98 = *v96;
    v56 = v86;
    sub_2262F4878(&v96[*(v97 + 48)], v86, type metadata accessor for Analytics.Interval);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2262F4878(v86, v178, type metadata accessor for Analytics.Interval.Complete);
      if (v98 > 2)
      {
        if (v98 == 3)
        {
          v115 = 0xD000000000000013;
          v116 = v174;
        }

        else if (v98 == 4)
        {
          v115 = 0x44676E696B6E6172;
          v116 = 0xEF6E6F6974617275;
        }

        else
        {
          v115 = 0xD000000000000015;
          v116 = v176;
        }
      }

      else if (v98)
      {
        if (v98 == 1)
        {
          v115 = 0xD000000000000011;
          v116 = v172;
        }

        else
        {
          v115 = 0xD000000000000010;
          v116 = v173;
        }
      }

      else
      {
        v115 = 0xD000000000000012;
        v116 = v171;
      }

      v85 = v193;
      v117 = v178 + *(v175 + 20);
      sub_22634EE5C();
      v119 = v118;
      sub_22634EE5C();
      v177 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v121 = v195;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v198 = v121;
      v123 = sub_22633941C(v115, v116);
      v125 = *(v121 + 16);
      v126 = (v124 & 1) == 0;
      v127 = __OFADD__(v125, v126);
      v128 = v125 + v126;
      if (v127)
      {
        goto LABEL_91;
      }

      v129 = v124;
      if (*(v121 + 24) >= v128)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_64;
        }

        v134 = v123;
        sub_22633A944();
        v123 = v134;
        if ((v129 & 1) == 0)
        {
          goto LABEL_67;
        }

LABEL_65:
        v131 = v123;

        v195 = v198;
        v132 = *(v198 + 56);
        v133 = *(v132 + 8 * v131);
        *(v132 + 8 * v131) = v177;

        sub_2262F4AEC(v178, type metadata accessor for Analytics.Interval.Complete);
        v79 = v187;
      }

      else
      {
        sub_226337500(v128, isUniquelyReferenced_nonNull_native);
        v123 = sub_22633941C(v115, v116);
        if ((v129 & 1) != (v130 & 1))
        {
          goto LABEL_93;
        }

LABEL_64:
        if (v129)
        {
          goto LABEL_65;
        }

LABEL_67:
        v135 = v198;
        *(v198 + 8 * (v123 >> 6) + 64) |= 1 << v123;
        v136 = (v135[6] + 16 * v123);
        *v136 = v115;
        v136[1] = v116;
        *(v135[7] + 8 * v123) = v177;
        sub_2262F4AEC(v178, type metadata accessor for Analytics.Interval.Complete);
        v137 = v135[2];
        v127 = __OFADD__(v137, 1);
        v138 = v137 + 1;
        if (v127)
        {
          goto LABEL_92;
        }

        v195 = v135;
        v135[2] = v138;
        v79 = v187;
      }
    }

    else
    {
      v99 = v185;
      sub_22635000C();
      v100 = v189;

      v101 = sub_22635003C();
      v102 = sub_22635074C();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v198 = v104;
        *v103 = v179;
        *(v103 + 4) = sub_226345004(v180, v100, &v198);
        *(v103 + 12) = 2080;
        LOBYTE(v197) = v98;
        v105 = sub_2263504CC();
        v107 = sub_226345004(v105, v106, &v198);

        *(v103 + 14) = v107;
        _os_log_impl(&dword_2262B6000, v101, v102, "%s Analytics: Programming error: Attempting to log to core analytics while a step is still pending: %s", v103, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v104, -1, -1);
        MEMORY[0x22AA7D570](v103, -1, -1);
      }

      (*v184)(v99, v186);
      v108 = v194[15];
      v109 = *&v196[v108];
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v190;
      if ((v110 & 1) == 0)
      {
        v109 = sub_2262DC850(0, *(v109 + 2) + 1, 1, v109);
      }

      v112 = *(v109 + 2);
      v111 = *(v109 + 3);
      if (v112 >= v111 >> 1)
      {
        v109 = sub_2262DC850((v111 > 1), v112 + 1, 1, v109);
      }

      *(v109 + 2) = v112 + 1;
      v109[v112 + 32] = 0;
      *&v196[v108] = v109;
      v113 = sub_22634EECC();
      (*(*(v113 - 8) + 8))(v56, v113);
      v85 = v193;
      v79 = v187;
    }
  }

  v139 = *&v196[v194[15]];
  v140 = *(v139 + 16);
  if (v140 >= 3)
  {
    v141 = 3;
  }

  else
  {
    v141 = *(v139 + 16);
  }

  if (v140)
  {
    v142 = *&v196[v194[15]];

    v143 = 0;
    v144 = 0x277CCA000;
    while (1)
    {
      v147 = *(v139 + v143 + 32);
      v197 = v143;
      v198 = 0x6575737369;
      v199 = 0xE500000000000000;
      v148 = sub_226350C1C();
      MEMORY[0x22AA7C5B0](v148);

      v150 = v198;
      v149 = v199;
      v151 = [objc_allocWithZone(*(v144 + 2992)) initWithInteger_];
      v152 = v195;
      v153 = swift_isUniquelyReferenced_nonNull_native();
      v198 = v152;
      v154 = sub_22633941C(v150, v149);
      v156 = *(v152 + 16);
      v157 = (v155 & 1) == 0;
      v127 = __OFADD__(v156, v157);
      v158 = v156 + v157;
      if (v127)
      {
        break;
      }

      v159 = v155;
      if (*(v152 + 24) >= v158)
      {
        if ((v153 & 1) == 0)
        {
          v165 = v154;
          sub_22633A944();
          v154 = v165;
        }
      }

      else
      {
        sub_226337500(v158, v153);
        v154 = sub_22633941C(v150, v149);
        if ((v159 & 1) != (v160 & 1))
        {
          goto LABEL_93;
        }
      }

      v161 = v198;
      v195 = v198;
      if (v159)
      {
        v145 = *(v198 + 56);
        v146 = *(v145 + 8 * v154);
        *(v145 + 8 * v154) = v151;
      }

      else
      {
        *(v198 + 8 * (v154 >> 6) + 64) |= 1 << v154;
        v162 = (v161[6] + 16 * v154);
        *v162 = v150;
        v162[1] = v149;
        *(v161[7] + 8 * v154) = v151;
        v163 = v161[2];
        v127 = __OFADD__(v163, 1);
        v164 = v163 + 1;
        if (v127)
        {
          goto LABEL_90;
        }

        v161[2] = v164;
      }

      ++v143;
      v144 = 0x277CCA000uLL;
      if (v141 == v143)
      {

        v166 = *(v139 + 16);
        goto LABEL_87;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    result = sub_226350C8C();
    __break(1u);
    return result;
  }

  v166 = 0;
LABEL_87:
  v167 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v168 = v195;
  v169 = swift_isUniquelyReferenced_nonNull_native();
  v198 = v168;
  sub_2262E3788(v167, 0x756F436575737369, 0xEA0000000000746ELL, v169);
  return v198;
}

unint64_t sub_2262F234C(char a1)
{
  result = 0x4B74736575716572;
  switch(a1)
  {
    case 1:
      result = 0x556E6F6973736573;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x726F727265;
      break;
    case 4:
      result = 0x7361655274697865;
      break;
    case 5:
      result = 0x6E69646E756F7267;
      break;
    case 6:
      result = 0x4F6E6F6973736573;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x776F6C666B726F77;
      break;
    case 10:
      result = 0x65746E4970657473;
      break;
    case 11:
      result = 0x736575737369;
      break;
    case 12:
      result = 0x646567676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2262F24E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793488, &qword_226353168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2262F499C();
  sub_226350D2C();
  LOBYTE(v37[0]) = *v3;
  LOBYTE(v33) = 0;
  sub_2262F4B4C();
  sub_226350BEC();
  if (!v2)
  {
    v11 = type metadata accessor for Analytics(0);
    v12 = v11[5];
    LOBYTE(v37[0]) = 1;
    sub_22634EEFC();
    sub_2262F47DC(&qword_27D793498, MEMORY[0x277CC95F0]);
    sub_226350BEC();
    v13 = &v3[v11[6]];
    v14 = *v13;
    v15 = v13[8];
    v40 = 2;
    sub_226350B9C();
    v16 = &v3[v11[7]];
    v17 = v16[1];
    v37[0] = *v16;
    v37[1] = v17;
    v18 = v16[3];
    v20 = *v16;
    v19 = v16[1];
    v37[2] = v16[2];
    v37[3] = v18;
    v33 = v20;
    v34 = v19;
    v21 = v16[3];
    v35 = v16[2];
    v36 = v21;
    v39 = 3;
    sub_2262D66FC(v37, v32, &qword_27D793048, &qword_226351F00);
    sub_2262F4BA0();
    sub_226350BAC();
    v32[0] = v33;
    v32[1] = v34;
    v32[2] = v35;
    v32[3] = v36;
    sub_2262D67D8(v32, &qword_27D793048, &qword_226351F00);
    LOBYTE(v31) = v3[v11[8]];
    v38 = 4;
    sub_2262F4BF4();
    sub_226350BAC();
    v22 = &v3[v11[9]];
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v31) = 5;
    sub_226350B7C();
    LOBYTE(v31) = v3[v11[10]];
    v38 = 6;
    sub_2262E6448();
    sub_226350BAC();
    v25 = v3[v11[11]];
    LOBYTE(v31) = 7;
    sub_226350B8C();
    v26 = v11[12];
    LOBYTE(v31) = 8;
    sub_22634F47C();
    sub_2262F47DC(&qword_27D7934B0, MEMORY[0x277D78738]);
    sub_226350BAC();
    v27 = v11[13];
    LOBYTE(v31) = 9;
    sub_22634FDFC();
    sub_2262F47DC(&qword_27D7934B8, MEMORY[0x277D78CF0]);
    sub_226350BEC();
    v31 = *&v3[v11[14]];
    v38 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793380, &qword_226353100);
    sub_2262F4C48();
    sub_226350BEC();
    v31 = *&v3[v11[15]];
    v38 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933A0, &qword_226353108);
    sub_2262F4D58(&qword_27D7934D8, sub_2262F4DD0);
    sub_226350BEC();
    v28 = v3[v11[16]];
    LOBYTE(v31) = 12;
    sub_226350BCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2262F2AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v64 = sub_22634FDFC();
  v63 = *(v64 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v54 - v7;
  v9 = sub_22634EEFC();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793448, &unk_226353158);
  v60 = *(v61 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v15 = &v54 - v14;
  v16 = type metadata accessor for Analytics(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v20[v18[7]];
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v68 = v21;
  v22 = v18[10];
  v20[v22] = 3;
  v65 = v18;
  v23 = v18[12];
  v24 = sub_22634F47C();
  v25 = *(*(v24 - 8) + 56);
  v69 = v23;
  v70 = v20;
  v25(&v20[v23], 1, 1, v24);
  v27 = a1[3];
  v26 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_2262F499C();
  v62 = v15;
  v28 = v66;
  sub_226350D1C();
  if (v28)
  {
    v30 = v70;
    v31 = v68;
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    v32 = *(v31 + 1);
    v77 = *v31;
    v78 = v32;
    v33 = *(v31 + 3);
    v79 = *(v31 + 2);
    v80 = v33;
    sub_2262D67D8(&v77, &qword_27D793048, &qword_226351F00);

    sub_2262D67D8(&v30[v69], &qword_27D792FE0, &unk_226351C10);
  }

  else
  {
    v56 = v22;
    v55 = v8;
    v29 = v60;
    v66 = v9;
    LOBYTE(v76[0]) = 0;
    sub_2262F49F0();
    sub_226350B3C();
    v34 = v70;
    *v70 = v77;
    LOBYTE(v77) = 1;
    sub_2262F47DC(&qword_27D793460, MEMORY[0x277CC95F0]);
    v35 = v66;
    sub_226350B3C();
    v36 = v68;
    v37 = v12;
    v38 = v65;
    (*(v59 + 32))(&v34[v65[5]], v37, v35);
    LOBYTE(v77) = 2;
    v39 = sub_226350AEC();
    v40 = &v34[v38[6]];
    *v40 = v39;
    v40[8] = v41 & 1;
    v82 = 3;
    sub_2262F4A44();
    sub_226350AFC();
    v72 = v77;
    v73 = v78;
    v74 = v79;
    v75 = v80;
    v42 = *(v36 + 1);
    v76[0] = *v36;
    v76[1] = v42;
    v43 = *(v36 + 3);
    v76[2] = *(v36 + 2);
    v76[3] = v43;
    sub_2262D67D8(v76, &qword_27D793048, &qword_226351F00);
    v44 = v73;
    *v36 = v72;
    *(v36 + 1) = v44;
    v45 = v75;
    *(v36 + 2) = v74;
    *(v36 + 3) = v45;
    v81 = 4;
    sub_2262F4A98();
    sub_226350AFC();
    v34[v65[8]] = v71;
    LOBYTE(v71) = 5;
    v46 = sub_226350ACC();
    v47 = &v34[v65[9]];
    *v47 = v46;
    v47[1] = v48;
    v54 = v48;
    v81 = 6;
    sub_2262E649C();
    sub_226350AFC();
    v34[v56] = v71;
    LOBYTE(v71) = 7;
    v34[v65[11]] = sub_226350ADC();
    LOBYTE(v71) = 8;
    sub_2262F47DC(&qword_27D793478, MEMORY[0x277D78738]);
    sub_226350AFC();
    sub_2262D5F90(v55, &v34[v69]);
    LOBYTE(v71) = 9;
    sub_2262F47DC(&qword_27D793480, MEMORY[0x277D78CF0]);
    sub_226350B3C();
    (*(v63 + 32))(&v70[v65[13]], v58, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793380, &qword_226353100);
    v81 = 10;
    sub_2262F3920();
    sub_226350B3C();
    *&v70[v65[14]] = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933A0, &qword_226353108);
    v81 = 11;
    sub_2262F4D58(&qword_27D7933A8, sub_2262F3A30);
    sub_226350B3C();
    *&v70[v65[15]] = v71;
    LOBYTE(v71) = 12;
    v49 = sub_226350B1C();
    v50 = v65[16];
    (*(v29 + 8))(v62, v61);
    v51 = v49 & 1;
    v52 = v70;
    v70[v50] = v51;
    sub_2262F4934(v52, v57, type metadata accessor for Analytics);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    return sub_2262F4AEC(v52, type metadata accessor for Analytics);
  }
}

uint64_t sub_2262F3740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2262F66F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2262F3774(uint64_t a1)
{
  v2 = sub_2262F499C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2262F37B0(uint64_t a1)
{
  v2 = sub_2262F499C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2262F3820()
{
  result = qword_28137E208;
  if (!qword_28137E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137E208);
  }

  return result;
}

unint64_t sub_2262F3878()
{
  result = qword_27D793368;
  if (!qword_27D793368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793368);
  }

  return result;
}

unint64_t sub_2262F38CC()
{
  result = qword_27D793378;
  if (!qword_27D793378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793378);
  }

  return result;
}

unint64_t sub_2262F3920()
{
  result = qword_27D793388;
  if (!qword_27D793388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793380, &qword_226353100);
    sub_2262F39DC();
    sub_2262F47DC(&qword_27D793398, type metadata accessor for Analytics.Interval);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793388);
  }

  return result;
}

unint64_t sub_2262F39DC()
{
  result = qword_27D793390;
  if (!qword_27D793390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793390);
  }

  return result;
}

unint64_t sub_2262F3A30()
{
  result = qword_27D7933B0;
  if (!qword_27D7933B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933B0);
  }

  return result;
}

void sub_2262F3A84(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_22634ED9C();
  v7 = [v6 domain];
  v8 = sub_22635046C();
  v10 = v9;

  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793078, &qword_226351F28);
  v11 = sub_2263504CC();
  v13 = v12;
  [v6 code];
  v14 = sub_226350C1C();
  v16 = v15;

  *a3 = v8;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v13;
  a3[4] = v14;
  a3[5] = v16;
  a3[6] = a1;
  a3[7] = a2;
}

uint64_t sub_2262F3B9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746E4970657473 && a2 == 0xED0000736C617672;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736575737369 && a2 == 0xE600000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646567676F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_226350C4C();

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

uint64_t sub_2262F3CB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974636964657270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xE90000000000006ELL || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69626967696C65 && a2 == 0xEB00000000797469 || (sub_226350C4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696B6E6172 && a2 == 0xE700000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6152656C646E7562 && a2 == 0xED0000676E696B6ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_226350C4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2262F3ECC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793510, &qword_226353180);
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v46[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793518, &qword_226353188);
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v46[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793520, &qword_226353190);
  v10 = *(v9 - 8);
  v54 = v9;
  v55 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v46[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793528, &qword_226353198);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v62 = &v46[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793530, &qword_2263531A0);
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793538, &qword_2263531A8);
  v49 = *(v20 - 8);
  v21 = *(v49 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v46[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793540, &qword_2263531B0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v46[-v27];
  v29 = a1[3];
  v30 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2262F53EC();
  v31 = v64;
  sub_226350D1C();
  if (v31)
  {
    goto LABEL_9;
  }

  v48 = v20;
  v32 = v19;
  v34 = v62;
  v33 = v63;
  v64 = v25;
  v35 = sub_226350B5C();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 6))
  {
    v38 = sub_22635099C();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7933E0, &qword_226353128) + 48);
    *v40 = &type metadata for Analytics.StepKind;
    sub_226350ABC();
    sub_22635098C();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v64 + 8))(v28, v24);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    return 0;
  }

  v47 = *(v35 + 32);
  if (v36 > 2)
  {
    if (v36 != 3)
    {
      v37 = v64;
      if (v36 == 4)
      {
        v70 = 4;
        sub_2262F5494();
        v43 = v60;
        sub_226350AAC();
        (*(v57 + 8))(v43, v56);
      }

      else
      {
        v71 = 5;
        sub_2262F5440();
        v45 = v61;
        sub_226350AAC();
        (*(v58 + 8))(v45, v59);
      }

      goto LABEL_17;
    }

    v69 = 3;
    sub_2262F54E8();
    sub_226350AAC();
    v44 = v64;
    (*(v55 + 8))(v33, v54);
    (*(v44 + 8))(v28, v24);
  }

  else
  {
    if (v36)
    {
      if (v36 == 1)
      {
        v67 = 1;
        sub_2262F5590();
        sub_226350AAC();
        v37 = v64;
        (*(v50 + 8))(v32, v51);
      }

      else
      {
        v68 = 2;
        sub_2262F553C();
        sub_226350AAC();
        v37 = v64;
        (*(v52 + 8))(v34, v53);
      }

LABEL_17:
      (*(v37 + 8))(v28, v24);
      goto LABEL_18;
    }

    v66 = 0;
    sub_2262F55E4();
    sub_226350AAC();
    (*(v49 + 8))(v23, v48);
    (*(v64 + 8))(v28, v24);
  }

LABEL_18:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  return v47;
}

unint64_t sub_2262F46D0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_2262F46E0()
{
  result = qword_27D7933B8;
  if (!qword_27D7933B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933B8);
  }

  return result;
}

unint64_t sub_2262F4734()
{
  result = qword_27D7933D8;
  if (!qword_27D7933D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933D8);
  }

  return result;
}

unint64_t sub_2262F4788()
{
  result = qword_27D7933E8;
  if (!qword_27D7933E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933E8);
  }

  return result;
}

uint64_t sub_2262F47DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2262F4824()
{
  result = qword_27D7933F8;
  if (!qword_27D7933F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7933F8);
  }

  return result;
}

uint64_t sub_2262F4878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2262F48E0()
{
  result = qword_27D793438;
  if (!qword_27D793438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793438);
  }

  return result;
}

uint64_t sub_2262F4934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2262F499C()
{
  result = qword_27D793450;
  if (!qword_27D793450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793450);
  }

  return result;
}

unint64_t sub_2262F49F0()
{
  result = qword_27D793458;
  if (!qword_27D793458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793458);
  }

  return result;
}

unint64_t sub_2262F4A44()
{
  result = qword_27D793468;
  if (!qword_27D793468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793468);
  }

  return result;
}

unint64_t sub_2262F4A98()
{
  result = qword_27D793470;
  if (!qword_27D793470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793470);
  }

  return result;
}

uint64_t sub_2262F4AEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2262F4B4C()
{
  result = qword_27D793490;
  if (!qword_27D793490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793490);
  }

  return result;
}

unint64_t sub_2262F4BA0()
{
  result = qword_27D7934A0;
  if (!qword_27D7934A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934A0);
  }

  return result;
}

unint64_t sub_2262F4BF4()
{
  result = qword_27D7934A8;
  if (!qword_27D7934A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934A8);
  }

  return result;
}

unint64_t sub_2262F4C48()
{
  result = qword_27D7934C0;
  if (!qword_27D7934C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793380, &qword_226353100);
    sub_2262F4D04();
    sub_2262F47DC(&qword_27D7934D0, type metadata accessor for Analytics.Interval);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934C0);
  }

  return result;
}

unint64_t sub_2262F4D04()
{
  result = qword_27D7934C8;
  if (!qword_27D7934C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934C8);
  }

  return result;
}

uint64_t sub_2262F4D58(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7933A0, &qword_226353108);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2262F4DD0()
{
  result = qword_27D7934E0;
  if (!qword_27D7934E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934E0);
  }

  return result;
}

unint64_t sub_2262F4E24()
{
  result = qword_27D7934E8;
  if (!qword_27D7934E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7934E8);
  }

  return result;
}

uint64_t sub_2262F4E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_226350C4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E7373616C63 && a2 == 0xE900000000000065 || (sub_226350C4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_226350C4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_226350C4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}