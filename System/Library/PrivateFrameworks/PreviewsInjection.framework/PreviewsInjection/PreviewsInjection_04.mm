uint64_t sub_25F3B6810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v6 = sub_25F3C252C();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[7] = v7;
  v8 = swift_task_alloc();
  v3[8] = v8;
  *v8 = v3;
  v8[1] = sub_25F3B6948;

  return sub_25F3B5690(v7, a2, v5);
}

uint64_t sub_25F3B6948()
{

  return MEMORY[0x2822009F8](sub_25F3B6A44, 0, 0);
}

uint64_t sub_25F3B6A44()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  *(swift_task_alloc() + 16) = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68648);
  sub_25F3C250C();

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F3B6B34()
{
  v1 = sub_25F3C22BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 128);
  if (v5)
  {

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68630);
  v6 = sub_25F3C225C();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v5 = sub_25F354DF0(MEMORY[0x277D84F90]);
  v8 = *(v7 + 16);
  if (!v8)
  {

LABEL_28:
    *(v0 + 128) = v5;

    return v5;
  }

  v9 = v2;
  v10 = 0;
  v36 = v0;
  v37 = v9 + 16;
  v38 = v9;
  v39 = v8;
  v40 = v7;
  v41 = (v9 + 8);
  while (v10 < *(v7 + 16))
  {
    v12 = *(v7 + 8 * v10 + 32);
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_10;
    }

    v15 = v13;
    v16 = v1;
    sub_25F39A630();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v4;
    v19 = isUniquelyReferenced_nonNull_native;
    v42 = v5;
    v20 = v18;
    v22 = sub_25F35C2A4(v18);
    v23 = v5[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_31;
    }

    v26 = v21;
    if (v5[3] >= v25)
    {
      if ((v19 & 1) == 0)
      {
        sub_25F3BD408(MEMORY[0x277D40708], &qword_27FD671E0);
      }

      v4 = v20;
      v5 = v42;
      if ((v26 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_25F3BB37C(v25, v19);
      v4 = v20;
      v27 = sub_25F35C2A4(v20);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_33;
      }

      v22 = v27;
      v5 = v42;
      if ((v26 & 1) == 0)
      {
LABEL_24:
        v5[(v22 >> 6) + 8] |= 1 << v22;
        v29 = v38;
        v1 = v16;
        (*(v38 + 16))(v5[6] + *(v38 + 72) * v22, v4, v16);
        v30 = (v5[7] + 16 * v22);
        *v30 = v12;
        v30[1] = v15;
        (*(v29 + 8))(v4, v16);
        v31 = v5[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_32;
        }

        v5[2] = v33;
        goto LABEL_9;
      }
    }

    v11 = (v5[7] + 16 * v22);
    *v11 = v12;
    v11[1] = v15;
    v1 = v16;
    (*v41)(v4, v16);
LABEL_9:
    v8 = v39;
    v7 = v40;
LABEL_10:
    if (v8 == ++v10)
    {

      v0 = v36;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_25F3C45CC();
  __break(1u);
  return result;
}

uint64_t sub_25F3B6E90()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F3B6F0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F3B6F48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_25F3B6FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25F3B700C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3C354C();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68620);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v12 = sub_25F3C2AAC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  sub_25F3B7F54(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_25F3BE668(v11);
  }

  (*(v13 + 32))(v18, v11, v12);
  sub_25F3C350C();
  v20 = *(v13 + 16);
  v62 = v18;
  v20(v16, v18, v12);
  v21 = sub_25F3C353C();
  v22 = sub_25F3C42FC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v56 = v22;
    v24 = v23;
    v57 = swift_slowAlloc();
    v64 = v57;
    *v24 = 136446722;
    *(v24 + 4) = sub_25F369EE8(0x77656976657270, 0xE700000000000000, &v64);
    *(v24 + 12) = 2082;
    sub_25F3BEAF0(&qword_27FD68618, MEMORY[0x277D40C78]);
    v54 = v21;
    v25 = sub_25F3C455C();
    v55 = a1;
    v27 = v26;
    v28 = *(v13 + 8);
    v58 = a3;
    v59 = v28;
    v28(v16, v12);
    v29 = sub_25F369EE8(v25, v27, &v64);
    a1 = v55;
    a3 = v58;

    *(v24 + 14) = v29;
    *(v24 + 22) = 2050;
    *(v24 + 24) = sub_25F3C330C();
    v30 = v54;
    _os_log_impl(&dword_25F342000, v54, v56, "Found %{public}s registry: %{public}s:%{public}ld", v24, 0x20u);
    v31 = v57;
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v31, -1, -1);
    v32 = v24;
    v33 = v59;
    MEMORY[0x25F8DC6C0](v32, -1, -1);
  }

  else
  {

    v33 = *(v13 + 8);
    v33(v16, v12);
  }

  (*(v60 + 8))(v8, v61);
  v34 = *a1;
  if (*(*a1 + 16) && (v35 = sub_25F35C1D0(v62), (v36 & 1) != 0))
  {
    v37 = *(*(v34 + 56) + 8 * v35);
    v64 = v37;
  }

  else
  {
    v37 = sub_25F3538D0(MEMORY[0x277D84F90]);
    v64 = v37;
  }

  v38 = sub_25F3C330C();
  if (*(v37 + 16) && (v39 = sub_25F35C194(v38), (v40 & 1) != 0))
  {
    v41 = (*(v37 + 56) + 16 * v39);
    v42 = *v41;
    v43 = v41[1];
    v61 = sub_25F3C330C();
    v44 = sub_25F3C331C();
    v59 = v33;
    v45 = v44 < sub_25F3C331C();
    v33 = v59;
    if (v45)
    {
      v46 = v42;
    }

    else
    {
      v46 = a2;
    }

    if (v45)
    {
      v47 = v43;
    }

    else
    {
      v47 = a3;
    }

    sub_25F3938C0(v46, v47, v61);
    v48 = v64;
  }

  else
  {
    v49 = sub_25F3C330C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v37;
    sub_25F35CD4C(a2, a3, v49, isUniquelyReferenced_nonNull_native);
    v48 = v63;
    v64 = v63;
  }

  v51 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *a1;
  v52 = v62;
  sub_25F35CB6C(v48, v62, v51);
  *a1 = v63;
  v33(v52, v12);
}

uint64_t sub_25F3B75A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v95 = a1;
  v7 = sub_25F3C43BC();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v88 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v86 = &v72 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v91 = &v72 - v13;
  v96 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v72 - v17;
  v19 = sub_25F3C354C();
  v89 = *(v19 - 8);
  v90 = v19;
  MEMORY[0x28223BE20](v19);
  v93 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68620);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v72 - v22;
  v24 = sub_25F3C2AAC();
  v25 = MEMORY[0x28223BE20](v24);
  v92 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v72 - v30;
  v94 = a4;
  v33 = v32;
  sub_25F3B8288(a3, v23);
  if ((*(v33 + 48))(v23, 1, v24) == 1)
  {
    return sub_25F3BE668(v23);
  }

  (*(v33 + 32))(v31, v23, v24);
  sub_25F3C350C();
  v35 = *(v33 + 16);
  v87 = v31;
  v81 = v35;
  v82 = v33 + 16;
  v35(v29, v31, v24);
  v36 = v96;
  v37 = *(v96 + 16);
  v83 = a2;
  v79 = v37;
  v80 = v96 + 16;
  v37(v18, a2, a3);
  v38 = sub_25F3C353C();
  v39 = sub_25F3C42FC();
  v40 = os_log_type_enabled(v38, v39);
  v77 = v16;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v74 = v39;
    v42 = v41;
    v75 = swift_slowAlloc();
    v98 = v75;
    *v42 = 136446722;
    v73 = v38;
    v43 = sub_25F3C201C();
    v45 = v33;
    v46 = sub_25F369EE8(v43, v44, &v98);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2082;
    sub_25F3BEAF0(&qword_27FD68618, MEMORY[0x277D40C78]);
    v47 = sub_25F3C455C();
    v49 = v48;
    v78 = *(v45 + 8);
    v78(v29, v24);
    v50 = sub_25F369EE8(v47, v49, &v98);
    v33 = v45;

    *(v42 + 14) = v50;
    *(v42 + 22) = 2050;
    v51 = sub_25F3C203C();
    v76 = *(v36 + 8);
    v76(v18, a3);
    *(v42 + 24) = v51;
    v52 = v73;
    _os_log_impl(&dword_25F342000, v73, v74, "Found %{public}s registry: %{public}s:%{public}ld", v42, 0x20u);
    v53 = v75;
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v53, -1, -1);
    MEMORY[0x25F8DC6C0](v42, -1, -1);
  }

  else
  {
    v76 = *(v36 + 8);
    v76(v18, a3);

    v78 = *(v33 + 8);
    v78(v29, v24);
  }

  (*(v89 + 8))(v93, v90);
  sub_25F3C3F8C();
  v54 = sub_25F3BEAF0(&qword_27FD673B0, MEMORY[0x277D40C78]);
  v55 = v87;
  v93 = v54;
  sub_25F3C3F9C();
  v56 = v97;
  v57 = v83;
  v58 = v91;
  if (!v97)
  {
    v59 = MEMORY[0x277D83B88];
    swift_getTupleTypeMetadata2();
    v60 = sub_25F3C411C();
    v56 = sub_25F3BD97C(v60, v59, a3, MEMORY[0x277D83B98]);
    v57 = v83;
  }

  v98 = v56;
  v97 = sub_25F3C203C();
  sub_25F3C3F9C();
  v61 = v96;
  if ((*(v96 + 48))(v58, 1, a3) == 1)
  {
    (*(v84 + 8))(v58, v85);
    v62 = sub_25F3C203C();
    v63 = v86;
    v79(v86, v57, a3);
    (*(v61 + 56))(v63, 0, 1, a3);
    v97 = v62;
    sub_25F3C3FAC();
  }

  else
  {
    v94 = v33;
    v64 = v57;
    v65 = v58;
    v66 = v77;
    (*(v61 + 32))(v77, v65, a3);
    v67 = sub_25F3C203C();
    v68 = sub_25F3C204C();
    if (v68 >= sub_25F3C204C())
    {
      v69 = v88;
      v70 = v88;
      v71 = v64;
    }

    else
    {
      v69 = v88;
      v70 = v88;
      v71 = v66;
    }

    v79(v70, v71, a3);
    (*(v96 + 56))(v69, 0, 1, a3);
    v97 = v67;
    sub_25F3C3FAC();
    v76(v66, a3);
    v55 = v87;
  }

  v81(v92, v55, v24);
  v97 = v98;
  sub_25F3C3F8C();

  sub_25F3C3FAC();
  v78(v55, v24);
}

uint64_t sub_25F3B7F54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25F3C354C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C332C();
  v6 = sub_25F3C3FDC();

  v7 = sub_25F3C3FDC();
  v8 = [v6 componentsSeparatedByString_];

  v9 = sub_25F3C40EC();
  if (*(v9 + 16) > 1uLL)
  {

    sub_25F3C2A9C();
    v21 = sub_25F3C2AAC();
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 0, 1, v21);
  }

  else
  {

    sub_25F3C351C();
    v10 = sub_25F3C353C();
    v11 = sub_25F3C431C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = a1;
      v24 = v13;
      v14 = v13;
      *v12 = 136446210;
      v15 = sub_25F3C332C();
      v17 = sub_25F369EE8(v15, v16, &v24);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_25F342000, v10, v11, "registry fileID had fewer than 2 components: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      v18 = v14;
      a1 = v23;
      MEMORY[0x25F8DC6C0](v18, -1, -1);
      MEMORY[0x25F8DC6C0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v19 = sub_25F3C2AAC();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }
}

uint64_t sub_25F3B8288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F3C354C();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C205C();
  v11 = sub_25F3C3FDC();

  v12 = sub_25F3C3FDC();
  v13 = [v11 componentsSeparatedByString_];

  v14 = sub_25F3C40EC();
  if (*(v14 + 16) >= 2uLL)
  {

    sub_25F3C2A9C();
    v25 = sub_25F3C2AAC();
    v26 = *(*(v25 - 8) + 56);

    return v26(a2, 0, 1, v25);
  }

  else
  {

    sub_25F3C351C();
    (*(v5 + 16))(v7, v2, a1);
    v15 = sub_25F3C353C();
    v16 = sub_25F3C431C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = a2;
      v19 = v18;
      v32 = v18;
      *v17 = 136446210;
      v20 = sub_25F3C205C();
      v22 = v21;
      (*(v5 + 8))(v7, a1);
      v23 = sub_25F369EE8(v20, v22, &v32);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_25F342000, v15, v16, "registry fileID had fewer than 2 components: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      v24 = v19;
      a2 = v29;
      MEMORY[0x25F8DC6C0](v24, -1, -1);
      MEMORY[0x25F8DC6C0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, a1);
    }

    (*(v30 + 8))(v10, v31);
    v28 = sub_25F3C2AAC();
    return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  }
}

uint64_t sub_25F3B8688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2[3] = AssociatedTypeWitness;
  a2[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
}

uint64_t sub_25F3B8758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F34905C;

  return sub_25F3B4670(a1, a2, a3);
}

uint64_t sub_25F3B8808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2[3] = AssociatedTypeWitness;
  a2[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
}

unint64_t sub_25F3B88D0()
{
  sub_25F3C445C();

  sub_25F3C22BC();
  sub_25F3BEAF0(&qword_27FD67F40, MEMORY[0x277D40708]);
  v0 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v0);

  MEMORY[0x25F8DB8E0](39, 0xE100000000000000);
  return 0xD000000000000019;
}

unint64_t sub_25F3B89B0()
{
  sub_25F3C445C();

  sub_25F3C22BC();
  sub_25F3BEAF0(&qword_27FD67F40, MEMORY[0x277D40708]);
  v0 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v0);

  MEMORY[0x25F8DB8E0](0x7274736967657220, 0xEC0000002E736569);
  return 0xD00000000000001FLL;
}

uint64_t sub_25F3B8AA4(uint64_t a1)
{
  v2 = sub_25F3BEAF0(&qword_27FD68688, type metadata accessor for UnknownRegistryType);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F3B8B10(uint64_t a1)
{
  v2 = sub_25F3BEAF0(&qword_27FD68688, type metadata accessor for UnknownRegistryType);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F3B8BF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_25F3B8C1C, 0, 0);
}

uint64_t sub_25F3B8C1C()
{
  sub_25F3C41CC();
  *(v0 + 40) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F3B8CB0, v2, v1);
}

uint64_t sub_25F3B8CB0()
{

  sub_25F3C32FC();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25F3B8D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3C3FBC();

  return sub_25F3B8DB8(a1, v6, a2, a3);
}

unint64_t sub_25F3B8DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_25F3C3FCC();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_25F3B8F40(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_25F3C2E1C();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67228);
  v37 = a2;
  result = sub_25F3C452C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_25F3C463C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_25F3B928C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C2AAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671F8);
  v39 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25F3BEAF0(&qword_27FD673B0, MEMORY[0x277D40C78]);
      result = sub_25F3C3FBC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F3B9668(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671E8);
  result = sub_25F3C452C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = sub_25F3C463C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25F3B98CC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C23FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672C0);
  v38 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_25F3440A0((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_25F349E38(*(v9 + 56) + 40 * v23, v43);
      }

      sub_25F3BEAF0(&qword_27FD673D0, MEMORY[0x277D40728]);
      result = sub_25F3C3FBC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_25F3440A0(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F3B9CD8(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_25F3C2CAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v44 = a2;
  result = sub_25F3C452C();
  v13 = result;
  if (*(v11 + 16))
  {
    v41 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v7;
    v19 = v17 & *(v11 + 64);
    v20 = (v16 + 63) >> 6;
    v42 = (v8 + 16);
    v43 = v8;
    v45 = (v8 + 32);
    v21 = result + 64;
    v48 = v18;
    v49 = v10;
    v22 = v8;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v29 = v26 | (v14 << 6);
      v30 = *(v11 + 48);
      v47 = *(v22 + 72);
      v31 = v30 + v47 * v29;
      if (v44)
      {
        (*v45)(v49, v31, v48);
      }

      else
      {
        (*v42)(v49, v31, v48);
      }

      v46 = *(*(v11 + 56) + 16 * v29);
      sub_25F3BEAF0(&qword_27FD67438, MEMORY[0x277D40E58]);
      result = sub_25F3C3FBC();
      v32 = -1 << *(v13 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v24 = v43;
        v25 = v49;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v24 = v43;
      v25 = v49;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v13 + 48) + v47 * v23, v25, v48);
      *(*(v13 + 56) + 16 * v23) = v46;
      ++*(v13 + 16);
      v22 = v24;
    }

    v27 = v14;
    while (1)
    {
      v14 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v20)
      {
        break;
      }

      v28 = v15[v14];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v5 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v11 + 32);
    v5 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_25F3BA0B0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C271C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67268);
  v39 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25F3BEAF0(&qword_27FD673C0, MEMORY[0x277D40A08]);
      result = sub_25F3C3FBC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F3BA48C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67210);
  v38 = a2;
  result = sub_25F3C452C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_25F37149C(v27, &v39);
      }

      sub_25F3C464C();
      sub_25F3C406C();
      result = sub_25F3C466C();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25F3BA75C(uint64_t a1, int a2)
{
  v3 = v2;
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  v42 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F3C271C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67258);
  v43 = a2;
  result = sub_25F3C452C();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_25F35E370(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_25F3BE920(v29 + v28 * v24, v47);
      }

      sub_25F3BEAF0(&qword_27FD673C0, MEMORY[0x277D40A08]);
      result = sub_25F3C3FBC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_25F35E370(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_25F3BABC0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C271C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67238);
  v38 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_25F3440A0((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_25F349E38(*(v9 + 56) + 40 * v23, v43);
      }

      sub_25F3BEAF0(&qword_27FD673C0, MEMORY[0x277D40A08]);
      result = sub_25F3C3FBC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_25F3440A0(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F3BAFA4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C2A2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68660);
  v38 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
        swift_unknownObjectRetain();
      }

      sub_25F3BEAF0(&qword_27FD673E0, MEMORY[0x277D40C38]);
      result = sub_25F3C3FBC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F3BB37C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C22BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671E0);
  v39 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v42 = *(v19 + 72);
      v26 = v25 + v42 * v24;
      if (v39)
      {
        (*v40)(v43, v26, v44);
      }

      else
      {
        (*v37)(v43, v26, v44);
      }

      v41 = *(*(v9 + 56) + 16 * v24);
      sub_25F3BEAF0(&qword_27FD673A0, MEMORY[0x277D40708]);
      result = sub_25F3C3FBC();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v42 * v20, v43, v44);
      *(*(v11 + 56) + 16 * v20) = v41;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F3BB744(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C22BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672B0);
  v38 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_25F3440A0((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_25F349E38(*(v9 + 56) + 40 * v23, v43);
      }

      sub_25F3BEAF0(&qword_27FD673A0, MEMORY[0x277D40708]);
      result = sub_25F3C3FBC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_25F3440A0(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F3BBB28(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C2A8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67208);
  v39 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25F3BEAF0(&qword_27FD67390, MEMORY[0x277D40C50]);
      result = sub_25F3C3FBC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25F3BBF04(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_25F3C271C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67248);
  v38 = a2;
  result = sub_25F3C452C();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_25F3440A0((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_25F349E38(*(v9 + 56) + 40 * v23, v43);
      }

      sub_25F3BEAF0(&qword_27FD673C0, MEMORY[0x277D40A08]);
      result = sub_25F3C3FBC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_25F3440A0(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void *sub_25F3BC2E8()
{
  v1 = v0;
  v29 = sub_25F3C2E1C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67228);
  v3 = *v0;
  v4 = sub_25F3C451C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_25F3BC578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD671E8);
  v2 = *v0;
  v3 = sub_25F3C451C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F3BC77C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_25F3C451C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_25F3BC9F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67210);
  v2 = *v0;
  v3 = sub_25F3C451C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_25F37149C(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

char *sub_25F3BCBAC()
{
  v1 = v0;
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  v36 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_25F3C271C();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67258);
  v5 = *v0;
  v6 = sub_25F3C451C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_25F3BE920(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_25F35E370(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_25F3BCEEC(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(_BYTE *, unint64_t))
{
  v35 = a4;
  v6 = v4;
  v34 = a1(0);
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *v4;
  v9 = sub_25F3C451C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32[0] = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v36 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v32[1] = v37 + 32;
    v32[2] = v37 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v37;
        v26 = *(v37 + 72) * v24;
        v27 = v33;
        v28 = v34;
        (*(v37 + 16))(v33, *(v8 + 48) + v26, v34);
        v24 *= 40;
        sub_25F349E38(*(v8 + 56) + v24, v39);
        v29 = v8;
        v30 = v36;
        (*(v25 + 32))(*(v36 + 48) + v26, v27, v28);
        v31 = *(v30 + 56);
        v8 = v29;
        result = v35(v39, v31 + v24);
        v19 = v38;
      }

      while (v38);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32[0];
        v10 = v36;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v38 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_25F3BD188()
{
  v1 = v0;
  v30 = sub_25F3C2A2C();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68660);
  v3 = *v0;
  v4 = sub_25F3C451C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = swift_unknownObjectRetain())
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_25F3BD408(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_25F3C451C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v4;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v24 = v33;
        v25 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v21 *= 16;
        v26 = v35;
        v27 = *(v35 + 48);
        v28 = *(v22 + 32);
        v37 = *(*(v6 + 56) + v21);
        result = v28(v27 + v23, v24, v25);
        *(*(v26 + 56) + v21) = v37;
        v16 = v38;
      }

      while (v38);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v30;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

char *sub_25F3BD6C0()
{
  v1 = v0;
  v33 = sub_25F3C2A8C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67208);
  v3 = *v0;
  v4 = sub_25F3C451C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_25F3BD97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25F3C413C())
  {
    sub_25F3C454C();
    v13 = sub_25F3C453C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25F3C413C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25F3C412C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25F3C447C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25F3B8D5C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_25F3BDC68()
{
  v1 = sub_25F3C354C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3BDD24, 0, 0);
}

uint64_t sub_25F3BDD24()
{
  v13 = v0;
  sub_25F3C350C();
  v1 = sub_25F3C353C();
  v2 = sub_25F3C433C();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_25F369EE8(0x77656976657270, 0xE700000000000000, &v12);
    _os_log_impl(&dword_25F342000, v1, v2, "scraping runtime for %{public}s types", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F8DC6C0](v8, -1, -1);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v9 = sub_25F3BE8CC();
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_25F3BDED0;

  return MEMORY[0x2821A1CB0](&type metadata for PreviewRegistryEntry, v9);
}

uint64_t sub_25F3BDED0(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_25F3BDFD0, 0, 0);
}

uint64_t sub_25F3BDFD0()
{
  v10 = v0;
  v1 = *(v0 + 48);
  result = sub_25F3536E8(MEMORY[0x277D84F90]);
  v9 = result;
  v3 = (v1 + 40);
  v4 = -*(v1 + 16);
  v5 = -1;
  while (v4 + v5 != -1)
  {
    if (++v5 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = v3 + 2;
    result = sub_25F3B700C(&v9, *(v3 - 1), *v3);
    v3 = v6;
  }

  v7 = v9;

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_25F3BE0E8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_25F3C354C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3BE1A8, 0, 0);
}

uint64_t sub_25F3BE1A8()
{
  v17 = v0;
  sub_25F3C350C();
  v1 = sub_25F3C353C();
  v2 = sub_25F3C433C();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = sub_25F3C201C();
    v11 = sub_25F369EE8(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25F342000, v1, v2, "scraping runtime for %{public}s types", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F8DC6C0](v8, -1, -1);
    MEMORY[0x25F8DC6C0](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_25F3BE358;
  v14 = v0[5];
  v13 = v0[6];

  return MEMORY[0x2821A1CB0](v14, v13);
}

uint64_t sub_25F3BE358(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_25F3BE458, 0, 0);
}

uint64_t sub_25F3BE458()
{
  *(v0 + 24) = *(v0 + 88);
  v1 = sub_25F3C2AAC();
  v9 = *(v0 + 40);
  v2 = sub_25F3C3F8C();
  swift_getTupleTypeMetadata2();
  v3 = sub_25F3C411C();
  v4 = sub_25F3BEAF0(&qword_27FD673B0, MEMORY[0x277D40C78]);
  v5 = sub_25F3BD97C(v3, v1, v2, v4);

  *(v0 + 32) = v5;
  *(swift_task_alloc() + 16) = v9;
  sub_25F3C415C();
  sub_25F3C3F8C();
  swift_getWitnessTable();
  sub_25F3C40BC();

  v6 = *(v0 + 16);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_25F3BE668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_25F3BE6D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68628);
  v0 = sub_25F3C225C();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v6 = *v4;
      v7 = swift_conformsToProtocol2();
      if (v7)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_25F37A540(0, *(v1 + 2) + 1, 1, v1);
        }

        v11 = *(v1 + 2);
        v10 = *(v1 + 3);
        if (v11 >= v10 >> 1)
        {
          v1 = sub_25F37A540((v10 > 1), v11 + 1, 1, v1);
        }

        *(v1 + 2) = v11 + 1;
        v5 = &v1[16 * v11];
        *(v5 + 4) = v6;
        *(v5 + 5) = v9;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return v1;
}

uint64_t type metadata accessor for UnknownRegistryType()
{
  result = qword_27FD68668;
  if (!qword_27FD68668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_25F3BE8CC()
{
  result = qword_27FD68658;
  if (!qword_27FD68658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD68658);
  }

  return result;
}

uint64_t sub_25F3BE920(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_25F3BE9AC()
{
  result = sub_25F3C22BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F3BEAF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F3BEB38@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v1 = sub_25F3C25DC();
  MEMORY[0x28223BE20](v1 - 8);
  v96 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25F3C24AC();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v105 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F3C378C();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v89 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68690);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v76 - v10;
  v84 = sub_25F3C3A7C();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F3C248C();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v88 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v104 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68698);
  MEMORY[0x28223BE20](v16 - 8);
  v80 = &v76 - v17;
  v18 = sub_25F3C3F4C();
  v81 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v77 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD686A0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v76 - v21;
  v23 = sub_25F3C3F2C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25F3C346C();
  v102 = *(v27 - 8);
  v103 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v79 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v76 - v30;
  v32 = sub_25F3C284C();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v85 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v98 = &v76 - v36;
  v99 = v33;
  v37 = *(v33 + 104);
  v100 = v38;
  v78 = v37;
  v37();
  v101 = v31;
  sub_25F3C344C();
  sub_25F3C3E9C();
  if (v107)
  {
    __swift_project_boxed_opaque_existential_1(v106, v107);
    sub_25F3BFD64(&qword_27FD686B8, MEMORY[0x277CE3B40]);
    sub_25F3C37EC();
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      v39 = v98;
      v40 = v100;
      (*(v99 + 8))(v98, v100);
      (*(v24 + 32))(v26, v22, v23);
      (v78)(v39, *MEMORY[0x277D40B08], v40);
      v41 = v79;
      sub_25F3C3F1C();
      (*(v24 + 8))(v26, v23);
      v43 = v101;
      v42 = v102;
      v44 = v103;
      (*(v102 + 8))(v101, v103);
      (*(v42 + 32))(v43, v41, v44);
      goto LABEL_6;
    }
  }

  else
  {
    sub_25F349AA8(v106, &qword_27FD686A8);
    (*(v24 + 56))(v22, 1, 1, v23);
  }

  sub_25F349AA8(v22, &qword_27FD686A0);
LABEL_6:
  v45 = v90;
  sub_25F3C3E9C();
  v46 = v105;
  v47 = v80;
  if (v107)
  {
    __swift_project_boxed_opaque_existential_1(v106, v107);
    sub_25F3BFD64(&qword_27FD686B0, MEMORY[0x277CE3E58]);
    sub_25F3C37EC();
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    v48 = v81;
    if ((*(v81 + 48))(v47, 1, v18) != 1)
    {
      v49 = v98;
      v50 = v100;
      (*(v99 + 8))(v98, v100);
      v51 = v77;
      (*(v48 + 32))(v77, v47, v18);
      (v78)(v49, *MEMORY[0x277D40B08], v50);
      v52 = v79;
      sub_25F3C3F3C();
      (*(v48 + 8))(v51, v18);
      v54 = v101;
      v53 = v102;
      v55 = v103;
      (*(v102 + 8))(v101, v103);
      (*(v53 + 32))(v54, v52, v55);
      LODWORD(v90) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    sub_25F349AA8(v106, &qword_27FD686A8);
    (*(v81 + 56))(v47, 1, 1, v18);
  }

  sub_25F349AA8(v47, &qword_27FD68698);
  LODWORD(v90) = 1;
LABEL_11:
  v56 = v82;
  sub_25F3C3E4C();
  sub_25F3C3A6C();
  (*(v83 + 8))(v56, v84);
  v84 = sub_25F3C3E5C();
  v83 = sub_25F3C3E2C();
  v82 = v57;
  v58 = v86;
  sub_25F3C3E6C();
  v59 = sub_25F3C377C();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_25F349AA8(v58, &qword_27FD68690);
    v81 = 0;
    v80 = 0;
  }

  else
  {
    v81 = sub_25F3C376C();
    v80 = v61;
    (*(v60 + 8))(v58, v59);
  }

  v86 = sub_25F3C3E3C();
  v79 = v62;
  v63 = v87;
  sub_25F3C3E7C();
  v64 = v89;
  v65 = v91;
  (*(v45 + 32))(v89, v63, v91);
  v66 = (*(v45 + 88))(v64, v65);
  if (v66 == *MEMORY[0x277CC5748])
  {
    (*(v45 + 96))(v64, v65);
    *v46 = *v64;
    (*(v94 + 104))(v46, *MEMORY[0x277D407B8], v95);
  }

  else if (v66 == *MEMORY[0x277CC5750])
  {
    (*(v94 + 104))(v46, *MEMORY[0x277D407C0], v95);
  }

  else
  {
    v67 = *(v94 + 104);
    if (v66 == *MEMORY[0x277CC5740])
    {
      v67(v46, *MEMORY[0x277D407B0], v95);
    }

    else
    {
      v67(v46, *MEMORY[0x277D407C0], v95);
      (*(v45 + 8))(v64, v65);
    }
  }

  v68 = v98;
  v69 = v99;
  v70 = v100;
  (*(v99 + 16))(v85, v98, v100);
  v71 = v92;
  v72 = v93;
  v73 = v104;
  (*(v92 + 16))(v88, v104, v93);
  v74 = v101;
  sub_25F3C343C();
  sub_25F3C27EC();
  (*(v71 + 8))(v73, v72);
  (*(v102 + 8))(v74, v103);
  return (*(v69 + 8))(v68, v70);
}

uint64_t sub_25F3BF908@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_25F3C24AC();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = (&v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_25F3C378C();
  v3 = *(v25 - 8);
  v4 = MEMORY[0x28223BE20](v25);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_25F3C342C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25F3C248C();
  v13 = *(v28 - 8);
  v14 = MEMORY[0x28223BE20](v28);
  v26 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  sub_25F3C347C();
  sub_25F3C34BC();
  sub_25F3C341C();
  (*(v10 + 8))(v12, v9);
  sub_25F3C337C();
  sub_25F3C34BC();
  v18 = v25;
  (*(v3 + 32))(v6, v8, v25);
  v19 = (*(v3 + 88))(v6, v18);
  if (v19 == *MEMORY[0x277CC5748])
  {
    (*(v3 + 96))(v6, v18);
    v20 = v27;
    *v27 = *v6;
    (*(v29 + 104))(v20, *MEMORY[0x277D407B8], v30);
  }

  else if (v19 == *MEMORY[0x277CC5750])
  {
    (*(v29 + 104))(v27, *MEMORY[0x277D407C0], v30);
  }

  else
  {
    v21 = *(v29 + 104);
    if (v19 == *MEMORY[0x277CC5740])
    {
      v21(v27, *MEMORY[0x277D407B0], v30);
    }

    else
    {
      v21(v27, *MEMORY[0x277D407C0], v30);
      (*(v3 + 8))(v6, v18);
    }
  }

  v22 = v28;
  (*(v13 + 16))(v26, v17, v28);
  sub_25F3C24BC();
  return (*(v13 + 8))(v17, v22);
}

uint64_t sub_25F3BFD64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RegistryPreview.underlyingPreview.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F3C34DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RegistryPreview.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RegistryPreview(0) + 20);
  v4 = sub_25F3C226C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25F3BFEB0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_25F3C325C();
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F3C24CC();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F3C25DC();
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_25F3C346C();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25F3C284C();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F3C340C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = sub_25F3C348C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v40 - v20);
  v57 = v1;
  sub_25F3C349C();
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277CC5728])
  {
    (*(v18 + 96))(v21, v17);
    sub_25F3440A0(v21, &v54);
    __swift_project_boxed_opaque_existential_1(&v54, v56);
    sub_25F3C32AC();
    (*(v11 + 32))(v14, v16, v10);
    v23 = (*(v11 + 88))(v14, v10);
    if (v23 == *MEMORY[0x277CC56E8])
    {
      (*(v42 + 104))(v49, *MEMORY[0x277D40B00], v43);
      v24 = v47;
    }

    else
    {
      v24 = v47;
      if (v23 == *MEMORY[0x277CC56F0])
      {
        (*(v42 + 104))(v49, *MEMORY[0x277D40B08], v43);
      }

      else
      {
        v33 = *(v42 + 104);
        if (v23 == *MEMORY[0x277CC56E0])
        {
          v33(v49, *MEMORY[0x277D40AF8], v43);
        }

        else
        {
          v33(v49, *MEMORY[0x277D40B00], v43);
          (*(v11 + 8))(v14, v10);
        }
      }
    }

    __swift_project_boxed_opaque_existential_1(&v54, v56);
    v34 = v41;
    sub_25F3C32BC();
    sub_25F3C343C();
    (*(v44 + 8))(v34, v45);
    __swift_project_boxed_opaque_existential_1(&v54, v56);
    sub_25F3C32CC();
    __swift_project_boxed_opaque_existential_1(&v54, v56);
    sub_25F3C32DC();
    sub_25F3BF908(v24);
    sub_25F349E38(&v54, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD686D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD686F8);
    if (swift_dynamicCast())
    {
      v35 = *(&v52 + 1);
      v36 = v53;
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      (*(v36 + 8))(v35, v36);
      __swift_destroy_boxed_opaque_existential_0Tm(&v51);
    }

    else
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      sub_25F3C1BD4(&v51);
    }

    sub_25F3C34AC();
    v37 = v48;
    sub_25F3C263C();
    v38 = *MEMORY[0x277D40768];
    v39 = sub_25F3C246C();
    (*(*(v39 - 8) + 104))(v37, v38, v39);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v54);
  }

  else if (v22 == *MEMORY[0x277CC5730])
  {
    (*(v18 + 96))(v21, v17);
    sub_25F3440A0(v21, &v54);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD686F0);
    v26 = v48;
    v27 = (v48 + *(v25 + 48));
    __swift_project_boxed_opaque_existential_1(&v54, v56);
    sub_25F3C32EC();
    sub_25F3C22AC();
    *v27 = sub_25F3C34AC();
    v27[1] = v28;
    v29 = *MEMORY[0x277D40770];
    v30 = sub_25F3C246C();
    (*(*(v30 - 8) + 104))(v26, v29, v30);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v54);
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_25F3C445C();

    v54 = 0xD00000000000001CLL;
    v55 = 0x800000025F3CCCF0;
    sub_25F3C349C();
    v32 = sub_25F3C404C();
    MEMORY[0x25F8DB8E0](v32);

    sub_25F3C326C();
    sub_25F3C2E4C();
    sub_25F3C1B6C(&qword_27FD67708, MEMORY[0x277D40410]);
    swift_allocError();
    sub_25F3C2E5C();
    swift_willThrow();
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_25F3C07D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a2;
  v5 = sub_25F3C325C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67188);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = sub_25F3C348C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F3C349C();
  if ((*(v10 + 88))(v12, v9) == *MEMORY[0x277CC5728])
  {
    (*(v10 + 96))(v12, v9);
    sub_25F3440A0(v12, v28);
    sub_25F349E38(v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD686D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD686D8);
    if (swift_dynamicCast())
    {
      sub_25F3440A0(&v26, v23);
      v13 = v24;
      v14 = v25;
      v15 = __swift_project_boxed_opaque_existential_1(v23, v24);
      MEMORY[0x28223BE20](v15);
      v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v18 + 16))(v17);
      sub_25F358988(v29, v8);
      sub_25F3532A8(a1, v22);
      a3[3] = type metadata accessor for RegistryHostProvider(0);
      a3[4] = sub_25F3C1B6C(&qword_27FD686E0, type metadata accessor for RegistryHostProvider);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      sub_25F356888(v17, v8, v22, v13, v14, boxed_opaque_existential_1);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      v20 = v23;
    }

    else
    {
      sub_25F3C0C1C(a1, a3);
      v20 = v28;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    return __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    sub_25F3C326C();
    sub_25F3C2E4C();
    sub_25F3C1B6C(&qword_27FD67708, MEMORY[0x277D40410]);
    swift_allocError();
    sub_25F3C2E5C();
    return swift_willThrow();
  }
}

uint64_t sub_25F3C0C1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  v77 = a1;
  v63 = sub_25F3C346C();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_25F3C358C();
  v60 = *(v67 - 8);
  v3 = MEMORY[0x28223BE20](v67);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = &v59 - v5;
  v70 = sub_25F3C356C();
  v66 = *(v70 - 8);
  v6 = MEMORY[0x28223BE20](v70);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - v8;
  v10 = sub_25F3C2BBC();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C34CC();
  v13 = sub_25F3C395C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v59 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD686D0);
  v18 = swift_dynamicCast();
  if (v18)
  {
    MEMORY[0x28223BE20](v18);
    v19 = &v59 - v16;
    (*(v14 + 32))(v19, v17, v13);
    v20 = sub_25F3C394C();
    v20(v73);

    v21 = __swift_project_boxed_opaque_existential_1(v73, v74);
    MEMORY[0x28223BE20](v21);
    (*(v23 + 16))(&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_25F3C2BAC();
    v24 = type metadata accessor for RegistryHostProvider(0);
    v25 = v71;
    v71[3] = v24;
    v25[4] = sub_25F3C1B6C(&qword_27FD686E0, type metadata accessor for RegistryHostProvider);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    sub_25F3532A8(v77, boxed_opaque_existential_1 + *(v24 + 24));
    sub_25F3C2B9C();
    (*(v68 + 8))(v12, v69);
    v27 = *(v24 + 20);
    v28 = *MEMORY[0x277D40D98];
    v29 = sub_25F3C210C();
    (*(*(v29 - 8) + 104))(boxed_opaque_existential_1 + v27, v28, v29);
    (*(v14 + 8))(v19, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
  }

  else
  {
    v30 = v71;
    v31 = v77;
    v32 = v70;
    if (swift_dynamicCast())
    {
      v33 = v66;
      v34 = v65;
      (*(v66 + 32))(v65, v9, v32);
      v35 = sub_25F3C355C();
      v36 = v35();

      v37 = type metadata accessor for RegistryHostProvider(0);
      v30[3] = v37;
      v30[4] = sub_25F3C1B6C(&qword_27FD686E0, type metadata accessor for RegistryHostProvider);
      v38 = __swift_allocate_boxed_opaque_existential_1(v30);
      sub_25F3532A8(v31, v38 + *(v37 + 24));
      sub_25F357E50(v38);

      v39 = *(v37 + 20);
      v40 = *MEMORY[0x277D40D98];
      v41 = sub_25F3C210C();
      (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
      (*(v33 + 8))(v34, v32);
    }

    else
    {
      v42 = v64;
      v43 = v67;
      if (!swift_dynamicCast())
      {
        sub_25F3C34CC();
        __swift_project_boxed_opaque_existential_1(v73, v74);
        DynamicType = swift_getDynamicType();
        v55 = v75;
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        sub_25F3C34CC();
        __swift_project_boxed_opaque_existential_1(v72, v72[3]);
        v56 = v61;
        sub_25F3C32BC();
        v57 = type metadata accessor for RegistryPreview.UnknownPreviewSource(0);
        sub_25F3C1B6C(&qword_27FD686E8, type metadata accessor for RegistryPreview.UnknownPreviewSource);
        swift_allocError();
        *v58 = DynamicType;
        v58[1] = v55;
        (*(v62 + 32))(v58 + *(v57 + 20), v56, v63);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_0Tm(v76);
      }

      v44 = v60;
      v45 = v59;
      (*(v60 + 32))(v59, v42, v43);
      v46 = sub_25F3C355C();
      v47 = v46();

      v48 = type metadata accessor for RegistryHostProvider(0);
      v30[3] = v48;
      v30[4] = sub_25F3C1B6C(&qword_27FD686E0, type metadata accessor for RegistryHostProvider);
      v49 = __swift_allocate_boxed_opaque_existential_1(v30);
      sub_25F3532A8(v31, v49 + *(v48 + 24));
      sub_25F358420(v49);

      v50 = *(v48 + 20);
      v51 = *MEMORY[0x277D40D98];
      v52 = sub_25F3C210C();
      (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
      (*(v44 + 8))(v45, v43);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v76);
}

unint64_t sub_25F3C1540()
{
  sub_25F3C445C();

  v0 = sub_25F3C469C();
  MEMORY[0x25F8DB8E0](v0);

  MEMORY[0x25F8DB8E0](0xD000000000000014, 0x800000025F3CCD40);
  type metadata accessor for RegistryPreview.UnknownPreviewSource(0);
  v1 = sub_25F3C345C();
  MEMORY[0x25F8DB8E0](v1);

  return 0xD000000000000014;
}

uint64_t sub_25F3C1634(uint64_t a1)
{
  v2 = sub_25F3C1B6C(&unk_27FD68730, type metadata accessor for RegistryPreview.UnknownPreviewSource);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F3C16A0(uint64_t a1)
{
  v2 = sub_25F3C1B6C(&unk_27FD68730, type metadata accessor for RegistryPreview.UnknownPreviewSource);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F3C1728()
{
  sub_25F3C337C();

  return sub_25F3C34BC();
}

uint64_t sub_25F3C1770()
{
  v0 = sub_25F3C24CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3BF908(v3);
  sub_25F3C249C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25F3C1848()
{
  sub_25F3C33CC();
  sub_25F3C34BC();
  if (v2 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67850);
  sub_25F3C23FC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25F3C6CC0;
  sub_25F3C232C();
  return v0;
}

uint64_t sub_25F3C1968()
{
  v0 = sub_25F3C33DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  sub_25F3C33EC();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CC56C8])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x277CC56D0])
  {
    (*(v1 + 96))(v3, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67308);

    v6 = sub_25F3C33FC();
    (*(*(v6 - 8) + 8))(v3, v6);
  }

  else if (v4 != *MEMORY[0x277CC56C0])
  {
LABEL_2:
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return 1;
}

uint64_t sub_25F3C1B6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F3C1BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD68700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F3C1C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25F3C1D20()
{
  result = qword_27FD68718;
  if (!qword_27FD68718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD686D0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27FD68718);
  }

  return result;
}