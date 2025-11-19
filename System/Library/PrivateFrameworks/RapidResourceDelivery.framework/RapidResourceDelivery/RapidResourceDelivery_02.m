void sub_227EE1A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v5 = type metadata accessor for ContainerizableURL(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_227F2B114();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v40 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v35[-v14];
  v16 = type metadata accessor for FileInfo(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v35[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v20 = sub_227F2B334();
  __swift_project_value_buffer(v20, qword_2813CE088);
  v41 = a2;
  sub_227EE36A8(a2, v19, type metadata accessor for FileInfo);
  v21 = sub_227F2B304();
  v22 = sub_227F2B8D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v10;
    v24 = v9;
    v25 = v23;
    v37 = swift_slowAlloc();
    v38 = v3;
    v43 = v37;
    *v25 = 136315138;
    v26 = v16;
    sub_227EE36A8(&v19[*(v16 + 20)], v8, type metadata accessor for ContainerizableURL);
    (*(v42 + 32))(v15, v8, v24);
    sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260]);
    v36 = v22;
    v27 = sub_227F2BC24();
    v29 = v28;
    (*(v42 + 8))(v15, v24);
    sub_227EE3730(v19, type metadata accessor for FileInfo);
    v30 = sub_227ECAC40(v27, v29, &v43);
    v16 = v26;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_227EB2000, v21, v36, "Updating manifest file %s", v25, 0xCu);
    v31 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AAAD240](v31, -1, -1);
    v32 = v25;
    v9 = v24;
    v10 = v42;
    MEMORY[0x22AAAD240](v32, -1, -1);
  }

  else
  {

    sub_227EE3730(v19, type metadata accessor for FileInfo);
  }

  v33 = [objc_opt_self() defaultManager];
  sub_227EE36A8(v41 + *(v16 + 20), v8, type metadata accessor for ContainerizableURL);
  v34 = v40;
  (*(v10 + 32))(v40, v8, v9);
  sub_227F13C50();
  (*(v10 + 8))(v34, v9);
}

uint64_t sub_227EE1E9C(uint64_t *a1, void *a2, void *a3)
{
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v10;
  v11 = type metadata accessor for PersistenceState();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v37 - v16;
  v17 = sub_227F2B234();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v41 = a1[1];
  v42 = v22;
  v40 = *(a1 + 16);
  v23 = a1[3];
  v38 = a1[4];
  v39 = v23;
  v25 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v24 + 8))(v25, v24);
  v50 = v21;
  v26 = v43;
  sub_227EDB5A8(sub_227EE3AC0, v49, v9);
  v43 = v26;
  v27 = *(v18 + 48);
  v28 = v27(v9, 1, v17);
  v48 = v21;
  if (v28 == 1)
  {
    v29 = v44;
    (*(v18 + 16))(v44, v21, v17);
    v30 = v29;
    if (v27(v9, 1, v17) != 1)
    {
      sub_227EB8430(v9, &unk_27D80E3B0, &unk_227F2DB00);
    }
  }

  else
  {
    v30 = v44;
    (*(v18 + 32))(v44, v9, v17);
  }

  v31 = *(v18 + 56);
  v31(v30, 0, 1, v17);
  v32 = *(v11 + 20);
  v51[0] = v42;
  v51[1] = v41;
  v52 = v40;
  v53 = v39;
  v54 = v38;
  v33 = v47;
  sub_227EE3D08(v51, v48, &v15[*(v11 + 20)]);
  sub_227EE36A8(v33 + *(v11 + 24), &v15[*(v11 + 24)], type metadata accessor for ResourceInfo);
  v31(v15, 1, 1, v17);
  sub_227EE3498(v30, v15);
  v34 = v45;
  v35 = v43;
  sub_227EDDAC8(v46, v15, sub_227EEC4DC, v45);
  if (v35)
  {
    sub_227EE3730(v15, type metadata accessor for PersistenceState);
  }

  else
  {
    sub_227EE3730(v33, type metadata accessor for PersistenceState);
    sub_227EE3730(v15, type metadata accessor for PersistenceState);
    sub_227EE3790(v34, v33, type metadata accessor for PersistenceState);
  }

  return (*(v18 + 8))(v48, v17);
}

uint64_t sub_227EE22DC(void *a1, void *a2)
{
  v34 = a2;
  v3 = sub_227F2B234();
  v4 = *(v3 - 8);
  v5 = v4;
  v29 = v3;
  v30 = v4;
  v6 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v32 = &v29 - v11;
  v13 = type metadata accessor for PersistenceState();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  v31 = *(v5 + 56);
  v31(v12, 1, 1, v3);
  v21 = *(v14 + 28);
  v23 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v22 + 8))(v23, v22);
  v24 = v33;
  v25 = sub_227EE4184(v8, &v18[*(v14 + 28)]);
  v26 = v29;
  (*(v30 + 8))(v8, v29, v25);
  sub_227EE36A8(v24 + *(v14 + 32), &v18[*(v14 + 32)], type metadata accessor for ResourceInfo);
  v31(v18, 1, 1, v26);
  sub_227EE3498(v32, v18);
  v27 = v35;
  sub_227EDDAC8(v34, v18, sub_227EEC4DC, v20);
  if (v27)
  {
    return sub_227EE3730(v18, type metadata accessor for PersistenceState);
  }

  sub_227EE3730(v24, type metadata accessor for PersistenceState);
  sub_227EE3730(v18, type metadata accessor for PersistenceState);
  return sub_227EE3790(v20, v24, type metadata accessor for PersistenceState);
}

void sub_227EE25E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v87 = a2;
  v85 = a1;
  v88[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for FileInfo(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContainerizableURL(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v75 - v13;
  v15 = sub_227F2B114();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v80 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v75 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v79 = (&v75 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v75 - v27;
  v29 = type metadata accessor for PersistenceState();
  sub_227EC2180(v85 + *(v29 + 24), v14, &qword_27D80E8F0, &unk_227F2F4B0);
  v30 = (*(v4 + 48))(v14, 1, v3);
  v81 = v16;
  v82 = v10;
  if (v30 == 1)
  {
    sub_227EB8430(v14, &qword_27D80E8F0, &unk_227F2F4B0);
  }

  else
  {
    v85 = v3;
    sub_227EE36A8(&v14[*(v3 + 20)], v10, type metadata accessor for ContainerizableURL);
    v31 = v16[4];
    v31(v26, v10, v15);
    sub_227EE3730(v14, type metadata accessor for FileInfo);
    v31(v28, v26, v15);
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v32 = sub_227F2B334();
    __swift_project_value_buffer(v32, qword_2813CE088);
    v33 = v16[2];
    v34 = v79;
    v78 = v28;
    v33(v79, v28, v15);
    v35 = sub_227F2B304();
    v36 = sub_227F2B8D4();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v84;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v75 = v39;
      v77 = swift_slowAlloc();
      v88[0] = v77;
      *v39 = 136315138;
      v76 = v36;
      sub_227F2B064();
      sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260]);
      v40 = sub_227F2BC24();
      v42 = v41;
      v43 = v16[1];
      v43(v38, v15);
      v43(v34, v15);
      v44 = sub_227ECAC40(v40, v42, v88);
      v45 = v43;

      v46 = v75;
      *(v75 + 1) = v44;
      v47 = v46;
      _os_log_impl(&dword_227EB2000, v35, v76, "Removing old updates folder %s", v46, 0xCu);
      v48 = v77;
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x22AAAD240](v48, -1, -1);
      MEMORY[0x22AAAD240](v47, -1, -1);
    }

    else
    {

      v45 = v16[1];
      v45(v34, v15);
    }

    v49 = [objc_opt_self() defaultManager];
    v50 = v78;
    sub_227F2B064();
    v51 = sub_227F2B044();
    v45(v38, v15);
    v88[0] = 0;
    v52 = [v49 removeItemAtURL:v51 error:v88];

    if (!v52)
    {
      v73 = v88[0];
      sub_227F2AFC4();

      swift_willThrow();
      v45(v50, v15);
      goto LABEL_17;
    }

    v53 = v88[0];
    v45(v50, v15);
    v3 = v85;
  }

  v55 = v86;
  v54 = v87;
  v56 = v82;
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v57 = sub_227F2B334();
  __swift_project_value_buffer(v57, qword_2813CE088);
  sub_227EE36A8(v54, v55, type metadata accessor for FileInfo);
  v58 = sub_227F2B304();
  v59 = sub_227F2B8D4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v85 = v3;
    v79 = v61;
    v88[0] = v61;
    *v60 = 136315138;
    sub_227EE36A8(v55 + *(v3 + 20), v56, type metadata accessor for ContainerizableURL);
    v62 = v81;
    v63 = v84;
    (v81[4])(v84, v56, v15);
    sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260]);
    v64 = sub_227F2BC24();
    v66 = v65;
    (v62[1])(v63, v15);
    sub_227EE3730(v86, type metadata accessor for FileInfo);
    v67 = v56;
    v68 = sub_227ECAC40(v64, v66, v88);

    *(v60 + 4) = v68;
    v56 = v67;
    _os_log_impl(&dword_227EB2000, v58, v59, "Storing new updates file at %s", v60, 0xCu);
    v69 = v79;
    __swift_destroy_boxed_opaque_existential_0(v79);
    v3 = v85;
    MEMORY[0x22AAAD240](v69, -1, -1);
    v70 = v60;
    v54 = v87;
    MEMORY[0x22AAAD240](v70, -1, -1);
  }

  else
  {

    sub_227EE3730(v55, type metadata accessor for FileInfo);
    v62 = v81;
  }

  v71 = [objc_opt_self() defaultManager];
  sub_227EE36A8(v54 + *(v3 + 20), v56, type metadata accessor for ContainerizableURL);
  v72 = v80;
  (v62[4])(v80, v56, v15);
  sub_227F13C50();
  (v62[1])(v72, v15);

LABEL_17:
  v74 = *MEMORY[0x277D85DE8];
}

uint64_t sub_227EE2F04(uint64_t *a1, void *a2, void *a3)
{
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v37 - v10;
  v11 = type metadata accessor for PersistenceState();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v37 - v16;
  v17 = sub_227F2B234();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v40 = a1[1];
  v41 = v22;
  v39 = *(a1 + 16);
  v23 = a1[3];
  v37 = a1[4];
  v38 = v23;
  v25 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v24 + 8))(v25, v24);
  v48 = v21;
  v26 = v42;
  sub_227EDB5A8(sub_227EE37F8, v47, v9);
  v42 = v26;
  v27 = *(v18 + 48);
  if (v27(v9, 1, v17) == 1)
  {
    v28 = v43;
    (*(v18 + 16))(v43, v21, v17);
    v29 = v27(v9, 1, v17);
    v30 = v28;
    if (v29 != 1)
    {
      sub_227EB8430(v9, &unk_27D80E3B0, &unk_227F2DB00);
    }
  }

  else
  {
    v30 = v43;
    (*(v18 + 32))(v43, v9, v17);
  }

  v31 = *(v18 + 56);
  v31(v30, 0, 1, v17);
  v32 = v46;
  sub_227EE36A8(v46 + *(v11 + 20), &v15[*(v11 + 20)], type metadata accessor for ResourceInfo);
  v33 = *(v11 + 24);
  v49[0] = v41;
  v49[1] = v40;
  v50 = v39;
  v51 = v38;
  v52 = v37;
  sub_227EE3D08(v49, v21, &v15[*(v11 + 24)]);
  v31(v15, 1, 1, v17);
  sub_227EE3498(v30, v15);
  v34 = v44;
  v35 = v42;
  sub_227EDDAC8(v45, v15, sub_227EEC4DC, v44);
  if (v35)
  {
    sub_227EE3730(v15, type metadata accessor for PersistenceState);
  }

  else
  {
    sub_227EE3730(v32, type metadata accessor for PersistenceState);
    sub_227EE3730(v15, type metadata accessor for PersistenceState);
    sub_227EE3790(v34, v32, type metadata accessor for PersistenceState);
  }

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_227EE3348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227F2B234();
  sub_227EE3820(&qword_27D80E908, MEMORY[0x277CC9578]);
  if (sub_227F2B614())
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  return (*(*(v6 - 8) + 16))(a3, v7, v6);
}

unint64_t sub_227EE3444()
{
  result = qword_27D80E8D0;
  if (!qword_27D80E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E8D0);
  }

  return result;
}

uint64_t sub_227EE3498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EE3508(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227EE3518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistenceState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EE357C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000227F34060 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEC0000006F666E49 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4973657461647075 && a2 == 0xEB000000006F666ELL)
  {

    return 2;
  }

  else
  {
    v5 = sub_227F2BC64();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_227EE36A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EE3730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EE3790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EE3820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PersistenceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersistenceState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227EE39BC()
{
  result = qword_27D80E920;
  if (!qword_27D80E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E920);
  }

  return result;
}

unint64_t sub_227EE3A14()
{
  result = qword_27D80E928;
  if (!qword_27D80E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E928);
  }

  return result;
}

unint64_t sub_227EE3A6C()
{
  result = qword_27D80E930;
  if (!qword_27D80E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E930);
  }

  return result;
}

uint64_t ResourceInfo.downloadingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v1 + *(v7 + 32), v6, &qword_27D80E8F8, &qword_227F2F5E0);
  v8 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_227EB8430(v6, &qword_27D80E8F8, &qword_227F2F5E0);
    v9 = sub_227F2B114();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    v11 = sub_227F2B114();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a1, v6, v11);
    sub_227EE87D8(v6, type metadata accessor for ResourceInfo.DownloadState);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_227EE3D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v61 = a2;
  v65 = sub_227F2B2E4();
  v56 = *(v65 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v63 = *(a1 + 32);
  v64 = v24;
  v58 = &v55 - v25;
  sub_227EC2180(v4, &v55 - v25, &qword_27D80E8F0, &unk_227F2F4B0);
  v26 = type metadata accessor for ResourceInfo(0);
  v27 = v4 + v26[5];
  v59 = v18;
  sub_227EC2180(v27, v18, &unk_27D80E3B0, &unk_227F2DB00);
  v28 = sub_227F2B234();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v16, v61, v28);
  v30 = *(v29 + 56);
  v31 = 1;
  v61 = v16;
  v30(v16, 0, 1, v28);
  v32 = v11;
  if (v23)
  {
    v33 = 0;
  }

  else
  {
    v33 = v21;
  }

  v34 = v4 + v26[8];
  v57 = v32;
  sub_227EC2180(v34, v32, &qword_27D80E8F8, &qword_227F2F5E0);
  v35 = v4 + v26[9];
  if (*(v35 + 8))
  {
    v37 = v64;
    v36 = v65;
    v39 = v62;
    v38 = v63;
    goto LABEL_12;
  }

  v40 = v4 + v26[7];
  v37 = v64;
  v36 = v65;
  v39 = v62;
  v38 = v63;
  if ((*(v40 + 8) & 1) != 0 || v33 != *v40)
  {
    goto LABEL_11;
  }

  v41 = *v35;
  v31 = v41 + 1;
  if (__OFADD__(v41, 1))
  {
    __break(1u);
LABEL_11:
    v31 = 1;
  }

LABEL_12:
  v65 = v31;
  v66 = v22;
  v42 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
  if (swift_dynamicCast())
  {
    (*(v56 + 8))(v39, v36);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v37 = 0;
    v46 = 1;
  }

  else
  {
    v47 = v22;
    v43 = sub_227EE91F8(v22);
    v44 = v48;
    v45 = v49;

    v46 = v38;
  }

  v50 = v60;
  sub_227EE7808(v58, v60, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EE7808(v59, v50 + v26[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EE7808(v61, v50 + v26[6], &unk_27D80E3B0, &unk_227F2DB00);
  v51 = v50 + v26[7];
  *v51 = v33;
  *(v51 + 8) = 0;
  result = sub_227EE7808(v57, v50 + v26[8], &qword_27D80E8F8, &qword_227F2F5E0);
  v53 = v50 + v26[9];
  *v53 = v65;
  *(v53 + 8) = 0;
  v54 = (v50 + v26[10]);
  *v54 = v43;
  v54[1] = v44;
  v54[2] = v45;
  v54[3] = v37;
  v54[4] = v46;
  return result;
}

double sub_227EE4184@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_227EC2180(v2, &v26 - v8, &qword_27D80E8F0, &unk_227F2F4B0);
  v10 = type metadata accessor for FileInfo(0);
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_227EB8430(v9, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v11 == 1)
  {
    if (qword_27D80DF48 != -1)
    {
      swift_once();
    }

    v12 = sub_227F2B334();
    __swift_project_value_buffer(v12, qword_27D81B228);
    v13 = sub_227F2B304();
    v14 = sub_227F2B8E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_227EB2000, v13, v14, "updatingUpToDateState called with nil fileInfo, we no longer have the resource that is up to date.", v15, 2u);
      MEMORY[0x22AAAD240](v15, -1, -1);
    }
  }

  sub_227EC2180(v3, a2, &qword_27D80E8F0, &unk_227F2F4B0);
  v16 = type metadata accessor for ResourceInfo(0);
  v17 = v16[5];
  v18 = sub_227F2B234();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a2 + v17, a1, v18);
  (*(v19 + 56))(a2 + v17, 0, 1, v18);
  sub_227EC2180(v3 + v16[6], a2 + v16[6], &unk_27D80E3B0, &unk_227F2DB00);
  v20 = v16[8];
  v21 = type metadata accessor for ResourceInfo.DownloadState(0);
  (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);
  v22 = a2 + v16[7];
  *v22 = 304;
  *(v22 + 8) = 0;
  v23 = a2 + v16[9];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = a2 + v16[10];
  result = 0.0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 1;
  return result;
}

uint64_t static ResourceInfo.DownloadState.== infix(_:_:)()
{
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for ResourceInfo.DownloadState(0) + 20);

  return sub_227F2B1F4();
}

uint64_t sub_227EE44DC()
{
  if (*v0)
  {
    result = 0x4164657472617473;
  }

  else
  {
    result = 0x525565746F6D6572;
  }

  *v0;
  return result;
}

uint64_t sub_227EE451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x525565746F6D6572 && a2 == 0xE90000000000004CLL;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164657472617473 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227EE45FC(uint64_t a1)
{
  v2 = sub_227EE4874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE4638(uint64_t a1)
{
  v2 = sub_227EE4874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResourceInfo.DownloadState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E938, &qword_227F2F5E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE4874();
  sub_227F2BD94();
  v11[15] = 0;
  sub_227F2B114();
  sub_227EE48C8(&qword_27D80E6A0, MEMORY[0x277CC9260]);
  sub_227F2BC14();
  if (!v1)
  {
    v9 = *(type metadata accessor for ResourceInfo.DownloadState(0) + 20);
    v11[14] = 1;
    sub_227F2B234();
    sub_227EE48C8(&qword_27D80E870, MEMORY[0x277CC9578]);
    sub_227F2BC14();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_227EE4874()
{
  result = qword_27D80E940;
  if (!qword_27D80E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E940);
  }

  return result;
}

uint64_t sub_227EE48C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ResourceInfo.DownloadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_227F2B234();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_227F2B114();
  v28 = *(v32 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v32);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E948, &qword_227F2F5F0);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ResourceInfo.DownloadState(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE4874();
  sub_227F2BD74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v12;
  v17 = v15;
  v19 = v28;
  v18 = v29;
  v35 = 0;
  sub_227EE48C8(&qword_27D80E880, MEMORY[0x277CC9260]);
  v20 = v30;
  sub_227F2BB64();
  v21 = *(v19 + 32);
  v24 = v17;
  v21(v17, v20, v32);
  v34 = 1;
  sub_227EE48C8(&qword_27D80E890, MEMORY[0x277CC9578]);
  sub_227F2BB64();
  (*(v31 + 8))(v11, v33);
  v22 = v24;
  (*(v26 + 32))(v24 + *(v25 + 20), v6, v18);
  sub_227EE7870(v22, v27, type metadata accessor for ResourceInfo.DownloadState);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227EE87D8(v22, type metadata accessor for ResourceInfo.DownloadState);
}

uint64_t sub_227EE4D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_227F2B1F4();
}

uint64_t sub_227EE4DF0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = a4;
  v32 = a2;
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA08, &qword_227F2FDD8);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA10, &qword_227F2FDE0);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA18, &qword_227F2FDE8);
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA20, &qword_227F2FDF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE9000();
  v22 = v34;
  sub_227F2BD94();
  if (!(v22 >> 6))
  {
    LOBYTE(v35) = 1;
    sub_227EE90FC();
    sub_227F2BB84();
    v35 = v32;
    v36 = v33;
    v37 = v22;
    sub_227EE9150();
    v23 = v28;
    sub_227F2BC14();
    v24 = v27;
    goto LABEL_5;
  }

  if (v22 >> 6 == 1)
  {
    LOBYTE(v35) = 2;
    sub_227EE9054();
    v11 = v29;
    sub_227F2BB84();
    v35 = v32;
    v36 = v33;
    sub_227EE90A8();
    v23 = v31;
    sub_227F2BC14();
    v24 = v30;
LABEL_5:
    (*(v24 + 8))(v11, v23);
    return (*(v17 + 8))(v20, v16);
  }

  LOBYTE(v35) = 0;
  sub_227EE91A4();
  sub_227F2BB84();
  (*(v26 + 8))(v15, v12);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_227EE5204()
{
  v1 = 0x74736566696E616DLL;
  if (*v0 != 1)
  {
    v1 = 0x656372756F736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_227EE526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EE92E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227EE5294(uint64_t a1)
{
  v2 = sub_227EE9000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE52D0(uint64_t a1)
{
  v2 = sub_227EE9000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EE530C(uint64_t a1)
{
  v2 = sub_227EE90FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE5348(uint64_t a1)
{
  v2 = sub_227EE90FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EE5384(uint64_t a1)
{
  v2 = sub_227EE9054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE53C0(uint64_t a1)
{
  v2 = sub_227EE9054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EE53FC(uint64_t a1)
{
  v2 = sub_227EE91A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE5438(uint64_t a1)
{
  v2 = sub_227EE91A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_227EE5474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_227EE9404(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_227EE54E4()
{
  if (*v0)
  {
    result = 1734440037;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_227EE5514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1734440037 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227EE55EC(uint64_t a1)
{
  v2 = sub_227EE770C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE5628(uint64_t a1)
{
  v2 = sub_227EE770C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResourceInfo.AssetValidationFailureInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E950, &qword_227F2F5F8);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v14[1] = *(v1 + 32);
  v14[2] = v9;
  v10 = a1[4];
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EC1C38(v7, v8, v11);
  sub_227EE770C();
  sub_227F2BD94();
  v16 = v7;
  v17 = v8;
  v18 = v11;
  v19 = 0;
  sub_227EE7760();
  v12 = v14[3];
  sub_227F2BBC4();
  sub_227EC222C(v7, v8, v11);
  if (!v12)
  {
    LOBYTE(v16) = 1;
    sub_227F2BB94();
  }

  return (*(v15 + 8))(v6, v3);
}

uint64_t ResourceInfo.AssetValidationFailureInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E968, &qword_227F2F600);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE770C();
  sub_227F2BD74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  sub_227EE77B4();
  sub_227F2BB34();
  v11 = v19;
  v18 = v20;
  v22 = v21;
  LOBYTE(v19) = 1;
  v12 = sub_227F2BB04();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = v18;
  *a2 = v11;
  *(a2 + 8) = v15;
  v16 = v22;
  *(a2 + 16) = v22;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  sub_227EC1C38(v11, v15, v16);

  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_227EC222C(v11, v15, v16);
}

double sub_227EE5A98()
{
  v0 = type metadata accessor for ResourceInfo(0);
  __swift_allocate_value_buffer(v0, qword_2813CDFF8);
  v1 = __swift_project_value_buffer(v0, qword_2813CDFF8);
  v2 = type metadata accessor for FileInfo(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[5];
  v4 = sub_227F2B234();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + v0[6], 1, 1, v4);
  v6 = v0[8];
  v7 = type metadata accessor for ResourceInfo.DownloadState(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + v0[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + v0[9];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + v0[10];
  result = 0.0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  return result;
}

__n128 ResourceInfo.init(fileInfo:lastSuccess:lastAttempt:lastAttemptStatusCode:downloadState:consecutiveFailures:assetValidationFailureInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v22 = *(a10 + 32);
  sub_227EE7808(a1, a9, &qword_27D80E8F0, &unk_227F2F4B0);
  v16 = type metadata accessor for ResourceInfo(0);
  sub_227EE7808(a2, a9 + v16[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EE7808(a3, a9 + v16[6], &unk_27D80E3B0, &unk_227F2DB00);
  v17 = a9 + v16[7];
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  sub_227EE7808(a6, a9 + v16[8], &qword_27D80E8F8, &qword_227F2F5E0);
  v18 = a9 + v16[9];
  *v18 = a7;
  *(v18 + 8) = a8 & 1;
  v19 = a9 + v16[10];
  result = *a10;
  v21 = *(a10 + 16);
  *v19 = *a10;
  *(v19 + 16) = v21;
  *(v19 + 32) = v22;
  return result;
}

uint64_t static ResourceInfo.initialState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813CDFF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ResourceInfo(0);
  v3 = __swift_project_value_buffer(v2, qword_2813CDFF8);
  return sub_227EE7870(v3, a1, type metadata accessor for ResourceInfo);
}

uint64_t ResourceInfo.lastAttemptStatusCode.getter()
{
  v1 = (v0 + *(type metadata accessor for ResourceInfo(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ResourceInfo.consecutiveFailures.getter()
{
  v1 = (v0 + *(type metadata accessor for ResourceInfo(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ResourceInfo.assetValidationFailureInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ResourceInfo(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_227EC1BF4(v4, v5, v6, v7, v8);
}

uint64_t ResourceInfo.downloadStarted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v1 + *(v7 + 32), v6, &qword_27D80E8F8, &qword_227F2F5E0);
  v8 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_227EB8430(v6, &qword_27D80E8F8, &qword_227F2F5E0);
    v9 = sub_227F2B234();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    v11 = *(v8 + 20);
    v12 = sub_227F2B234();
    v13 = *(v12 - 8);
    (*(v13 + 16))(a1, &v6[v11], v12);
    sub_227EE87D8(v6, type metadata accessor for ResourceInfo.DownloadState);
    return (*(v13 + 56))(a1, 0, 1, v12);
  }
}

uint64_t sub_227EE6188(char *a1)
{
  v58 = a1;
  v2 = sub_227F2B114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v59 = v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v57 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v53 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v53 - v24;
  v26 = v1 + *(type metadata accessor for ResourceInfo(0) + 40);
  if (*(v26 + 32) == 1)
  {
    v53[0] = v6;
    v56 = v14;
    sub_227EC2180(v1, v16, &qword_27D80E8F0, &unk_227F2F4B0);
    v27 = type metadata accessor for FileInfo(0);
    v28 = *(v27 - 8);
    v54 = *(v28 + 48);
    v55 = v27;
    v53[1] = v28 + 48;
    if (v54(v16, 1) == 1)
    {
      sub_227EB8430(v16, &qword_27D80E8F0, &unk_227F2F4B0);
      v29 = *(v3 + 56);
      v29(v25, 1, 1, v2);
      (*(v3 + 16))(v23, v58, v2);
    }

    else
    {
      v32 = *(v3 + 16);
      v32(v25, v16, v2);
      sub_227EE87D8(v16, type metadata accessor for FileInfo);
      v29 = *(v3 + 56);
      v29(v25, 0, 1, v2);
      v32(v23, v58, v2);
    }

    v29(v23, 0, 1, v2);
    v33 = *(v7 + 48);
    v34 = v59;
    sub_227EC2180(v25, v59, &qword_27D80E310, &unk_227F2D990);
    sub_227EC2180(v23, v34 + v33, &qword_27D80E310, &unk_227F2D990);
    v35 = v3;
    v36 = v3;
    v37 = v34;
    v38 = *(v36 + 48);
    if (v38(v37, 1, v2) == 1)
    {
      sub_227EB8430(v23, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v25, &qword_27D80E310, &unk_227F2D990);
      if (v38(v37 + v33, 1, v2) == 1)
      {
        sub_227EB8430(v37, &qword_27D80E310, &unk_227F2D990);
LABEL_13:
        v47 = v1;
        v48 = v56;
        sub_227EC2180(v47, v56, &qword_27D80E8F0, &unk_227F2F4B0);
        v49 = v55;
        if ((v54)(v48, 1, v55) != 1)
        {
          v51 = (v48 + *(v49 + 24));
          v30 = *v51;
          v52 = v51[1];

          sub_227EE87D8(v48, type metadata accessor for FileInfo);
          return v30;
        }

        v40 = &qword_27D80E8F0;
        v41 = &unk_227F2F4B0;
        v42 = v48;
        goto LABEL_15;
      }
    }

    else
    {
      v39 = v57;
      sub_227EC2180(v37, v57, &qword_27D80E310, &unk_227F2D990);
      if (v38(v37 + v33, 1, v2) != 1)
      {
        v43 = v53[0];
        (*(v35 + 32))(v53[0], v37 + v33, v2);
        sub_227EE48C8(&qword_27D80E508, MEMORY[0x277CC9260]);
        v44 = v39;
        v45 = sub_227F2B634();
        v46 = *(v35 + 8);
        v46(v43, v2);
        sub_227EB8430(v23, &qword_27D80E310, &unk_227F2D990);
        sub_227EB8430(v25, &qword_27D80E310, &unk_227F2D990);
        v46(v44, v2);
        sub_227EB8430(v59, &qword_27D80E310, &unk_227F2D990);
        if ((v45 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_13;
      }

      sub_227EB8430(v23, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v25, &qword_27D80E310, &unk_227F2D990);
      (*(v35 + 8))(v39, v2);
    }

    v40 = &qword_27D80E4F8;
    v41 = &qword_227F2DE80;
    v42 = v37;
LABEL_15:
    sub_227EB8430(v42, v40, v41);
    return 0;
  }

  v30 = *(v26 + 24);
  v31 = *(v26 + 32);

  return v30;
}

uint64_t sub_227EE6840()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x636375537473616CLL;
    if (v1 != 1)
    {
      v5 = 0x657474417473616CLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F666E49656C6966;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0x64616F6C6E776F64;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_227EE693C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EE9AE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227EE6964(uint64_t a1)
{
  v2 = sub_227EE86DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE69A0(uint64_t a1)
{
  v2 = sub_227EE86DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResourceInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E978, &qword_227F2F608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE86DC();
  sub_227F2BD94();
  LOBYTE(v28) = 0;
  type metadata accessor for FileInfo(0);
  sub_227EE48C8(&qword_27D80E988, type metadata accessor for FileInfo);
  sub_227F2BBC4();
  if (!v2)
  {
    v11 = type metadata accessor for ResourceInfo(0);
    v12 = v11[5];
    LOBYTE(v28) = 1;
    sub_227F2B234();
    sub_227EE48C8(&qword_27D80E870, MEMORY[0x277CC9578]);
    sub_227F2BBC4();
    v13 = v11[6];
    LOBYTE(v28) = 2;
    sub_227F2BBC4();
    v14 = (v3 + v11[7]);
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v28) = 3;
    sub_227F2BBB4();
    v17 = v11[8];
    LOBYTE(v28) = 4;
    type metadata accessor for ResourceInfo.DownloadState(0);
    sub_227EE48C8(&qword_27D80E990, type metadata accessor for ResourceInfo.DownloadState);
    sub_227F2BBC4();
    v18 = (v3 + v11[9]);
    v19 = *v18;
    v20 = *(v18 + 8);
    LOBYTE(v28) = 5;
    sub_227F2BBB4();
    v21 = (v3 + v11[10]);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[4];
    v28 = *v21;
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = 6;
    sub_227EC1BF4(v28, v22, v23, v24, v25);
    sub_227EE8730();
    sub_227F2BBC4();
    sub_227EC21E8(v28, v29, v30, v31, v32);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ResourceInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v48 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E9A0, &qword_227F2F610);
  v49 = *(v16 - 8);
  v50 = v16;
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v20 = type metadata accessor for ResourceInfo(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v24 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_227EE86DC();
  v26 = v51;
  sub_227F2BD74();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  v27 = v12;
  v51 = v10;
  type metadata accessor for FileInfo(0);
  LOBYTE(v53) = 0;
  sub_227EE48C8(&qword_27D80E9A8, type metadata accessor for FileInfo);
  v28 = v48;
  v29 = v50;
  sub_227F2BB34();
  v30 = v23;
  sub_227EE7808(v28, v23, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F2B234();
  LOBYTE(v53) = 1;
  sub_227EE48C8(&qword_27D80E890, MEMORY[0x277CC9578]);
  sub_227F2BB34();
  v31 = v20;
  sub_227EE7808(v27, v30 + *(v20 + 20), &unk_27D80E3B0, &unk_227F2DB00);
  LOBYTE(v53) = 2;
  v32 = v51;
  sub_227F2BB34();
  sub_227EE7808(v32, v30 + v31[6], &unk_27D80E3B0, &unk_227F2DB00);
  LOBYTE(v53) = 3;
  v33 = sub_227F2BB24();
  v34 = v49;
  v35 = v30 + v31[7];
  *v35 = v33;
  *(v35 + 8) = v36 & 1;
  type metadata accessor for ResourceInfo.DownloadState(0);
  LOBYTE(v53) = 4;
  sub_227EE48C8(&qword_27D80E9B0, type metadata accessor for ResourceInfo.DownloadState);
  v37 = v47;
  sub_227F2BB34();
  sub_227EE7808(v37, v30 + v31[8], &qword_27D80E8F8, &qword_227F2F5E0);
  LOBYTE(v53) = 5;
  v38 = sub_227F2BB24();
  v39 = v30 + v31[9];
  *v39 = v38;
  *(v39 + 8) = v40 & 1;
  v56 = 6;
  sub_227EE8784();
  sub_227F2BB34();
  (*(v34 + 8))(v19, v29);
  v41 = v55;
  v42 = v30 + v31[10];
  v43 = v54;
  *v42 = v53;
  *(v42 + 16) = v43;
  *(v42 + 32) = v41;
  sub_227EE7870(v30, v46, type metadata accessor for ResourceInfo);
  __swift_destroy_boxed_opaque_existential_0(v52);
  return sub_227EE87D8(v30, type metadata accessor for ResourceInfo);
}

BOOL sub_227EE74C4(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (!(a3 >> 6))
  {
    if (a6 > 0x3Fu)
    {
      return 0;
    }

    if (a3 <= 1u)
    {
      if (a3)
      {
        if (a6 != 1)
        {
          return 0;
        }

        return a1 == a4 && a2 == a5 || (sub_227F2BC64() & 1) != 0;
      }

      if (!a6)
      {
        return a1 == a4 && a2 == a5 || (sub_227F2BC64() & 1) != 0;
      }

      return 0;
    }

    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }

      return a1 == a4 && a2 == a5 || (sub_227F2BC64() & 1) != 0;
    }

    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 != 3 || a4 != 3)
        {
          return 0;
        }
      }

      else if (a6 != 3 || a4 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        return a6 == 3 && !(a5 | a4);
      }

      if (a6 != 3 || a4 != 1)
      {
        return 0;
      }
    }

    return !a5;
  }

  if (a3 >> 6 != 1)
  {
    return (a6 & 0xC0) == 0x80 && !(a5 | a4) && a6 == 128;
  }

  if ((a6 & 0xC0) != 0x40)
  {
    return 0;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a5 == 1;
      }

LABEL_37:
      if (a5 >= 5)
      {
        return a1 == a4 && a2 == a5 || (sub_227F2BC64() & 1) != 0;
      }

      return 0;
    }

    return !a5;
  }

  if (a2 == 2)
  {
    return a5 == 2;
  }

  if (a2 == 3)
  {
    return a5 == 3;
  }

  if (a2 != 4)
  {
    goto LABEL_37;
  }

  return a5 == 4;
}

BOOL _s21RapidResourceDelivery0B4InfoV022AssetValidationFailureD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v2 <= 0xFB)
  {
    if (v5 > 0xFB || !sub_227EE74C4(*a1, *(a1 + 8), v2, *a2, *(a2 + 8), v5))
    {
      return 0;
    }
  }

  else if (v5 <= 0xFB)
  {
    return 0;
  }

  if (v4)
  {
    return v6 && (v3 == v7 && v4 == v6 || (sub_227F2BC64() & 1) != 0);
  }

  return !v6;
}

unint64_t sub_227EE770C()
{
  result = qword_27D80E958;
  if (!qword_27D80E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E958);
  }

  return result;
}

unint64_t sub_227EE7760()
{
  result = qword_27D80E960;
  if (!qword_27D80E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E960);
  }

  return result;
}

unint64_t sub_227EE77B4()
{
  result = qword_27D80E970;
  if (!qword_27D80E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E970);
  }

  return result;
}

uint64_t sub_227EE7808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_227EE7870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s21RapidResourceDelivery0B4InfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v105 = type metadata accessor for ResourceInfo.DownloadState(0);
  v104 = *(v105 - 8);
  v3 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v101 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v102 = &v99 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA88, &unk_227F2FE28);
  v8 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v99 - v9;
  v114 = sub_227F2B234();
  v111 = *(v114 - 8);
  v10 = *(v111 + 64);
  MEMORY[0x28223BE20](v114);
  v108 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v107 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v110 = &v99 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8B0, &unk_227F2F420);
  v17 = *(*(v112 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v112);
  v109 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v99 - v20;
  v22 = type metadata accessor for FileInfo(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v99 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA90, &qword_227F2FE38);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v99 - v34;
  v36 = *(v33 + 56);
  v113 = a1;
  sub_227EC2180(a1, &v99 - v34, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EC2180(v115, &v35[v36], &qword_27D80E8F0, &unk_227F2F4B0);
  v37 = *(v23 + 48);
  if (v37(v35, 1, v22) == 1)
  {
    if (v37(&v35[v36], 1, v22) == 1)
    {
      sub_227EB8430(v35, &qword_27D80E8F0, &unk_227F2F4B0);
      goto LABEL_8;
    }

LABEL_6:
    v38 = &qword_27D80EA90;
    v39 = &qword_227F2FE38;
    v40 = v35;
LABEL_20:
    sub_227EB8430(v40, v38, v39);
    return 0;
  }

  sub_227EC2180(v35, v30, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v37(&v35[v36], 1, v22) == 1)
  {
    sub_227EE87D8(v30, type metadata accessor for FileInfo);
    goto LABEL_6;
  }

  sub_227EE9D44(&v35[v36], v26, type metadata accessor for FileInfo);
  v41 = _s21RapidResourceDelivery8FileInfoV2eeoiySbAC_ACtFZ_0(v30, v26);
  sub_227EE87D8(v26, type metadata accessor for FileInfo);
  sub_227EE87D8(v30, type metadata accessor for FileInfo);
  sub_227EB8430(v35, &qword_27D80E8F0, &unk_227F2F4B0);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v100 = type metadata accessor for ResourceInfo(0);
  v42 = v100[5];
  v43 = *(v112 + 48);
  sub_227EC2180(v113 + v42, v21, &unk_27D80E3B0, &unk_227F2DB00);
  v44 = v115;
  sub_227EC2180(v115 + v42, &v21[v43], &unk_27D80E3B0, &unk_227F2DB00);
  v45 = v111;
  v46 = *(v111 + 48);
  v47 = v114;
  if (v46(v21, 1, v114) == 1)
  {
    if (v46(&v21[v43], 1, v47) == 1)
    {
      sub_227EB8430(v21, &unk_27D80E3B0, &unk_227F2DB00);
      goto LABEL_14;
    }

LABEL_19:
    v38 = &qword_27D80E8B0;
    v39 = &unk_227F2F420;
    v40 = v21;
    goto LABEL_20;
  }

  v48 = v110;
  sub_227EC2180(v21, v110, &unk_27D80E3B0, &unk_227F2DB00);
  if (v46(&v21[v43], 1, v47) == 1)
  {
    (*(v45 + 8))(v48, v47);
    goto LABEL_19;
  }

  v49 = v108;
  (*(v45 + 32))(v108, &v21[v43], v47);
  sub_227EE48C8(&qword_27D80E8B8, MEMORY[0x277CC9578]);
  v50 = sub_227F2B634();
  v47 = v114;
  v51 = v50;
  v52 = *(v45 + 8);
  v52(v49, v114);
  v52(v48, v47);
  sub_227EB8430(v21, &unk_27D80E3B0, &unk_227F2DB00);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v53 = v100[6];
  v54 = *(v112 + 48);
  v21 = v109;
  sub_227EC2180(v113 + v53, v109, &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v44 + v53, &v21[v54], &unk_27D80E3B0, &unk_227F2DB00);
  if (v46(v21, 1, v47) == 1)
  {
    if (v46(&v21[v54], 1, v47) == 1)
    {
      sub_227EB8430(v21, &unk_27D80E3B0, &unk_227F2DB00);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v55 = v107;
  sub_227EC2180(v21, v107, &unk_27D80E3B0, &unk_227F2DB00);
  if (v46(&v21[v54], 1, v47) == 1)
  {
    (*(v111 + 8))(v55, v47);
    goto LABEL_19;
  }

  v58 = v111;
  v59 = &v21[v54];
  v60 = v108;
  (*(v111 + 32))(v108, v59, v47);
  sub_227EE48C8(&qword_27D80E8B8, MEMORY[0x277CC9578]);
  v61 = v55;
  v62 = sub_227F2B634();
  v63 = *(v58 + 8);
  v63(v60, v47);
  v63(v61, v47);
  sub_227EB8430(v21, &unk_27D80E3B0, &unk_227F2DB00);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v64 = v100[7];
  v65 = (v113 + v64);
  v66 = *(v113 + v64 + 8);
  v67 = (v44 + v64);
  v68 = *(v44 + v64 + 8);
  if (v66)
  {
    if (!v68)
    {
      return 0;
    }
  }

  else
  {
    if (*v65 != *v67)
    {
      LOBYTE(v68) = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  v69 = v100[8];
  v70 = *(v103 + 48);
  v71 = v106;
  sub_227EC2180(v113 + v69, v106, &qword_27D80E8F8, &qword_227F2F5E0);
  v72 = v44 + v69;
  v73 = v71;
  sub_227EC2180(v72, v71 + v70, &qword_27D80E8F8, &qword_227F2F5E0);
  v74 = *(v104 + 48);
  v75 = v105;
  if (v74(v71, 1, v105) != 1)
  {
    v81 = v102;
    sub_227EC2180(v73, v102, &qword_27D80E8F8, &qword_227F2F5E0);
    if (v74(v73 + v70, 1, v75) != 1)
    {
      v82 = v73 + v70;
      v83 = v101;
      sub_227EE9D44(v82, v101, type metadata accessor for ResourceInfo.DownloadState);
      if (_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0())
      {
        v84 = *(v75 + 20);
        v85 = sub_227F2B1F4();
        sub_227EE87D8(v83, type metadata accessor for ResourceInfo.DownloadState);
        sub_227EE87D8(v81, type metadata accessor for ResourceInfo.DownloadState);
        sub_227EB8430(v73, &qword_27D80E8F8, &qword_227F2F5E0);
        if ((v85 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_33;
      }

      sub_227EE87D8(v83, type metadata accessor for ResourceInfo.DownloadState);
      sub_227EE87D8(v81, type metadata accessor for ResourceInfo.DownloadState);
      v38 = &qword_27D80E8F8;
      v39 = &qword_227F2F5E0;
      goto LABEL_39;
    }

    sub_227EE87D8(v81, type metadata accessor for ResourceInfo.DownloadState);
LABEL_38:
    v38 = &qword_27D80EA88;
    v39 = &unk_227F2FE28;
LABEL_39:
    v40 = v73;
    goto LABEL_20;
  }

  if (v74(v71 + v70, 1, v75) != 1)
  {
    goto LABEL_38;
  }

  sub_227EB8430(v71, &qword_27D80E8F8, &qword_227F2F5E0);
LABEL_33:
  v76 = v100[9];
  v77 = (v113 + v76);
  v78 = *(v113 + v76 + 8);
  v79 = (v44 + v76);
  v80 = *(v44 + v76 + 8);
  if (v78)
  {
    if (!v80)
    {
      return 0;
    }
  }

  else
  {
    if (*v77 != *v79)
    {
      LOBYTE(v80) = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  v86 = v100[10];
  v87 = (v113 + v86);
  v89 = *(v113 + v86);
  v88 = *(v113 + v86 + 8);
  v91 = *(v113 + v86 + 16);
  v90 = *(v113 + v86 + 24);
  v92 = *(v113 + v86 + 32);
  v93 = (v44 + v86);
  v95 = *v93;
  v94 = v93[1];
  v97 = v93[2];
  v96 = v93[3];
  v98 = v93[4];
  if (v92 == 1)
  {
    sub_227EC1BF4(*v87, v87[1], v87[2], v87[3], 1);
    if (v98 == 1)
    {
      v56 = 1;
      sub_227EC1BF4(v95, v94, v97, v96, 1);
      sub_227EC21E8(v89, v88, v91, v90, 1);
      return v56;
    }

    sub_227EC1BF4(v95, v94, v97, v96, v98);
  }

  else
  {
    v121 = v89;
    v122 = v88;
    v123 = v91;
    v124 = v90;
    v125 = v92;
    if (v98 != 1)
    {
      v116 = v95;
      v117 = v94;
      v118 = v97;
      v119 = v96;
      v120 = v98;
      LODWORD(v115) = _s21RapidResourceDelivery0B4InfoV022AssetValidationFailureD0V2eeoiySbAE_AEtFZ_0(&v121, &v116);
      v112 = v117;
      v113 = v116;
      v114 = v120;
      LODWORD(v111) = v118;
      sub_227EC1BF4(v89, v88, v91, v90, v92);
      sub_227EC1BF4(v95, v94, v97, v96, v98);
      sub_227EC1BF4(v89, v88, v91, v90, v92);
      sub_227EC222C(v113, v112, v111);

      sub_227EC222C(v121, v122, v123);

      sub_227EC21E8(v89, v88, v91, v90, v92);
      return (v115 & 1) != 0;
    }

    sub_227EC1BF4(v89, v88, v91, v90, v92);
    sub_227EC1BF4(v95, v94, v97, v96, 1);
    sub_227EC1BF4(v89, v88, v91, v90, v92);
    sub_227EC222C(v89, v88, v91);
  }

  sub_227EC21E8(v89, v88, v91, v90, v92);
  sub_227EC21E8(v95, v94, v97, v96, v98);
  return 0;
}

unint64_t sub_227EE86DC()
{
  result = qword_27D80E980;
  if (!qword_27D80E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E980);
  }

  return result;
}

unint64_t sub_227EE8730()
{
  result = qword_27D80E998;
  if (!qword_27D80E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E998);
  }

  return result;
}

unint64_t sub_227EE8784()
{
  result = qword_27D80E9B8;
  if (!qword_27D80E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9B8);
  }

  return result;
}

uint64_t sub_227EE87D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_227EE8860()
{
  sub_227EE89A4(319, qword_2813CD7A8, type metadata accessor for FileInfo);
  if (v0 <= 0x3F)
  {
    sub_227EE89A4(319, &qword_2813CE030, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_227EC24C4(319, &qword_2813CD548);
      if (v2 <= 0x3F)
      {
        sub_227EE89A4(319, qword_2813CDFB0, type metadata accessor for ResourceInfo.DownloadState);
        if (v3 <= 0x3F)
        {
          sub_227EC24C4(319, &qword_2813CE010);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_227EE89A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_227F2B924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_227EE8A20()
{
  result = sub_227F2B114();
  if (v1 <= 0x3F)
  {
    result = sub_227F2B234();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery0B12ManagerErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery0B4InfoV20AssetValidationErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery0B4InfoV20AssetValidationErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 16) & 0x3C | (*(a1 + 16) >> 6);
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227EE8B00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_227EE8B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_227EE8BD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_227EE8C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_227EE8C8C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_227EE8CEC()
{
  result = qword_27D80E9C0;
  if (!qword_27D80E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9C0);
  }

  return result;
}

unint64_t sub_227EE8D44()
{
  result = qword_27D80E9C8;
  if (!qword_27D80E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9C8);
  }

  return result;
}

unint64_t sub_227EE8D9C()
{
  result = qword_27D80E9D0;
  if (!qword_27D80E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9D0);
  }

  return result;
}

unint64_t sub_227EE8DF4()
{
  result = qword_27D80E9D8;
  if (!qword_27D80E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9D8);
  }

  return result;
}

unint64_t sub_227EE8E4C()
{
  result = qword_27D80E9E0;
  if (!qword_27D80E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9E0);
  }

  return result;
}

unint64_t sub_227EE8EA4()
{
  result = qword_27D80E9E8;
  if (!qword_27D80E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9E8);
  }

  return result;
}

unint64_t sub_227EE8EFC()
{
  result = qword_27D80E9F0;
  if (!qword_27D80E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9F0);
  }

  return result;
}

unint64_t sub_227EE8F54()
{
  result = qword_27D80E9F8;
  if (!qword_27D80E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9F8);
  }

  return result;
}

unint64_t sub_227EE8FAC()
{
  result = qword_27D80EA00;
  if (!qword_27D80EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA00);
  }

  return result;
}

unint64_t sub_227EE9000()
{
  result = qword_27D80EA28;
  if (!qword_27D80EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA28);
  }

  return result;
}

unint64_t sub_227EE9054()
{
  result = qword_27D80EA30;
  if (!qword_27D80EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA30);
  }

  return result;
}

unint64_t sub_227EE90A8()
{
  result = qword_27D80EA38;
  if (!qword_27D80EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA38);
  }

  return result;
}

unint64_t sub_227EE90FC()
{
  result = qword_27D80EA40;
  if (!qword_27D80EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA40);
  }

  return result;
}

unint64_t sub_227EE9150()
{
  result = qword_27D80EA48;
  if (!qword_27D80EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA48);
  }

  return result;
}

unint64_t sub_227EE91A4()
{
  result = qword_27D80EA50;
  if (!qword_27D80EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA50);
  }

  return result;
}

uint64_t sub_227EE91F8(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
  if (swift_dynamicCast())
  {

    v3 = v5;
  }

  else
  {

    v7 = a1;
    if (swift_dynamicCast())
    {
      v3 = v5;
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

uint64_t sub_227EE92E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEF726567616E614DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_227F2BC64();

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

void *sub_227EE9404(uint64_t *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA58, &qword_227F2FDF8);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v32 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA60, &qword_227F2FE00);
  v35 = *(v32 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA68, &qword_227F2FE08);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA70, &unk_227F2FE10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v44 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_227EE9000();
  v19 = v38;
  sub_227F2BD74();
  if (!v19)
  {
    v38 = v7;
    v20 = v37;
    v21 = v12;
    v22 = sub_227F2BB74();
    v23 = (2 * *(v22 + 16)) | 1;
    v40 = v22;
    v41 = v22 + 32;
    v42 = 0;
    v43 = v23;
    v24 = sub_227EC19A4();
    if (v24 == 3 || v42 != v43 >> 1)
    {
      v26 = sub_227F2B9E4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0) + 48);
      *v28 = &type metadata for ResourceInfo.AssetValidationError;
      v18 = v15;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v21 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        LOBYTE(v39) = 1;
        sub_227EE90FC();
        sub_227F2BAE4();
        sub_227EE9A90();
        v25 = v32;
        sub_227F2BB64();
        (*(v35 + 8))(v6, v25);
      }

      else
      {
        LOBYTE(v39) = 2;
        sub_227EE9054();
        sub_227F2BAE4();
        sub_227EE9A3C();
        v31 = v34;
        sub_227F2BB64();
        (*(v36 + 8))(v20, v31);
      }

      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = v39;
    }

    else
    {
      LOBYTE(v39) = 0;
      sub_227EE91A4();
      sub_227F2BAE4();
      (*(v33 + 8))(v10, v38);
      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v44);
  return v18;
}

unint64_t sub_227EE9A3C()
{
  result = qword_27D80EA78;
  if (!qword_27D80EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA78);
  }

  return result;
}

unint64_t sub_227EE9A90()
{
  result = qword_27D80EA80;
  if (!qword_27D80EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA80);
  }

  return result;
}

uint64_t sub_227EE9AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636375537473616CLL && a2 == 0xEB00000000737365 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657474417473616CLL && a2 == 0xEB0000000074706DLL || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000227F34080 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000227F340A0 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000227F340C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_227F2BC64();

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

uint64_t sub_227EE9D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_227EE9DF0()
{
  result = qword_27D80EA98;
  if (!qword_27D80EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA98);
  }

  return result;
}

unint64_t sub_227EE9E48()
{
  result = qword_27D80EAA0;
  if (!qword_27D80EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAA0);
  }

  return result;
}

unint64_t sub_227EE9EA0()
{
  result = qword_27D80EAA8;
  if (!qword_27D80EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAA8);
  }

  return result;
}

unint64_t sub_227EE9EF8()
{
  result = qword_27D80EAB0;
  if (!qword_27D80EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAB0);
  }

  return result;
}

unint64_t sub_227EE9F50()
{
  result = qword_27D80EAB8;
  if (!qword_27D80EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAB8);
  }

  return result;
}

unint64_t sub_227EE9FA8()
{
  result = qword_27D80EAC0;
  if (!qword_27D80EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAC0);
  }

  return result;
}

unint64_t sub_227EEA000()
{
  result = qword_27D80EAC8;
  if (!qword_27D80EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAC8);
  }

  return result;
}

unint64_t sub_227EEA058()
{
  result = qword_27D80EAD0;
  if (!qword_27D80EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAD0);
  }

  return result;
}

unint64_t sub_227EEA0B0()
{
  result = qword_27D80EAD8;
  if (!qword_27D80EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAD8);
  }

  return result;
}

unint64_t sub_227EEA108()
{
  result = qword_27D80EAE0;
  if (!qword_27D80EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAE0);
  }

  return result;
}

unint64_t sub_227EEA160()
{
  result = qword_27D80EAE8;
  if (!qword_27D80EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAE8);
  }

  return result;
}

void (**sub_227EEA1D8(char *a1, uint64_t a2))(char *, uint64_t)
{
  v41 = a2;
  v37 = *v2;
  v36 = sub_227F2AFF4();
  v44 = *(v36 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v36);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_227F2B114();
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_logger;
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v16 = sub_227F2B334();
  v17 = __swift_project_value_buffer(v16, qword_2813CE088);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v2 + v15, v17, v16);
  v19 = v39;
  sub_227F2A3D0(v12);
  if (v19)
  {

    (*(v38 + 8))(a1, v40);
    (*(v18 + 8))(v2 + v15, v16);
    v20 = *(*v2 + 12);
    v21 = *(*v2 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = 0x736A2E65726F7473;
    v43 = 0xEA00000000006E6FLL;
    v34 = *MEMORY[0x277CC91D8];
    v22 = v44;
    v33 = *(v44 + 104);
    v23 = v36;
    v33(v6);
    v32 = sub_227EB84D8();
    v39 = 0;
    sub_227F2B104();
    v24 = *(v22 + 8);
    v44 = v22 + 8;
    v37 = v24;
    v24(v6, v23);
    v25 = v38;
    v31 = *(v38 + 8);
    v26 = v12;
    v27 = v40;
    v31(v26, v40);
    v38 = *(v25 + 32);
    (v38)(v2 + OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_storeFileURL, v14, v27);
    v42 = 0xD000000000000010;
    v43 = 0x8000000227F34140;
    (v33)(v6, v34, v23);
    v28 = v35;
    sub_227F2B104();

    v31(a1, v27);
    v37(v6, v23);
    (v38)(v2 + OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL, v28, v27);
  }

  return v2;
}

id sub_227EEA678()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_227EEA6D4("Cleaning the store", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_storeFileURL);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_227EEA6D4(const char *a1, void *a2)
{
  v5 = v2;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = sub_227F2B304();
  v7 = sub_227F2B8D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_227EB2000, v6, v7, a1, v8, 2u);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  v9 = [objc_opt_self() defaultManager];
  v10 = v5 + *a2;
  v11 = sub_227F2B044();
  v16[0] = 0;
  v12 = [v9 removeItemAtURL:v11 error:v16];

  if (v12)
  {
    result = v16[0];
  }

  else
  {
    v14 = v16[0];
    sub_227F2AFC4();

    result = swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_227EEA850(void (*a1)(void))
{
  v3 = [objc_opt_self() defaultManager];
  sub_227F2B0B4();
  v4 = sub_227F2B644();

  v5 = [v3 fileExistsAtPath_];

  if (v5)
  {
    v6 = sub_227F2B304();
    v7 = sub_227F2B8E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_227EB2000, v6, v7, "Found unfinished transaction. Nuking the store", v8, 2u);
      MEMORY[0x22AAAD240](v8, -1, -1);
    }

    a1();
    sub_227EEA6D4("Cleaning the store", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_storeFileURL);
    if (!v1)
    {
      sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
    }
  }
}

uint64_t sub_227EEA9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v10 = sub_227F2B304();
  v11 = sub_227F2B8D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_227EB2000, v10, v11, "Updating store files", v12, 2u);
    MEMORY[0x22AAAD240](v12, -1, -1);
  }

  sub_227EDF9FC(a4, a5, a6);
  if (!v6)
  {

    v13 = sub_227F2B304();
    v14 = sub_227F2B8D4();

    v15 = qword_2813CDFF8 + 8;
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v16 = 136315138;
      sub_227F2B114();
      sub_227ECE404();
      v17 = sub_227F2BC24();
      v19 = sub_227ECAC40(v17, v18, &v23);
      v15 = &qword_2813CDFF8[1];

      *(v16 + 4) = v19;
      _os_log_impl(&dword_227EB2000, v13, v14, "Updating the store file %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAAD240](v22, -1, -1);
      MEMORY[0x22AAAD240](v16, -1, -1);
    }

    v20 = v15[49];
    sub_227F2B174();
  }

  return sub_227ECD7FC(a5);
}

uint64_t sub_227EEABE4()
{
  v0 = sub_227F2B304();
  v1 = sub_227F2B8D4();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_227EB2000, v0, v1, "Updating store files", v2, 2u);
    MEMORY[0x22AAAD240](v2, -1, -1);
  }

  v3 = sub_227F2B304();
  v4 = sub_227F2B8D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_227F2B114();
    sub_227ECE404();
    v7 = sub_227F2BC24();
    v9 = sub_227ECAC40(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_227EB2000, v3, v4, "Updating the store file %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAAD240](v6, -1, -1);
    MEMORY[0x22AAAD240](v5, -1, -1);
  }

  return sub_227F2B174();
}

uint64_t sub_227EEADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_227F2B304();
  v7 = sub_227F2B8D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_227EB2000, v6, v7, "Updating store files", v8, 2u);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  result = sub_227EDD188(a4);
  if (!v4)
  {

    v10 = sub_227F2B304();
    v11 = sub_227F2B8D4();

    v12 = qword_2813CDFF8 + 8;
    if (os_log_type_enabled(v10, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      sub_227F2B114();
      sub_227ECE404();
      v15 = sub_227F2BC24();
      v17 = sub_227ECAC40(v15, v16, &v19);
      v12 = &qword_2813CDFF8[1];

      *(v13 + 4) = v17;
      _os_log_impl(&dword_227EB2000, v10, v11, "Updating the store file %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAAD240](v14, -1, -1);
      MEMORY[0x22AAAD240](v13, -1, -1);
    }

    v18 = v12[49];
    return sub_227F2B174();
  }

  return result;
}

uint64_t sub_227EEAFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_227F2B304();
  v5 = sub_227F2B8D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_227EB2000, v4, v5, "Updating store files", v6, 2u);
    MEMORY[0x22AAAD240](v6, -1, -1);
  }

  result = a2();
  if (!v2)
  {

    v8 = sub_227F2B304();
    v9 = sub_227F2B8D4();

    v10 = qword_2813CDFF8 + 8;
    if (os_log_type_enabled(v8, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      sub_227F2B114();
      sub_227ECE404();
      v10 = &qword_2813CDFF8[1];
      v13 = sub_227F2BC24();
      v15 = sub_227ECAC40(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_227EB2000, v8, v9, "Updating the store file %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AAAD240](v12, -1, -1);
      MEMORY[0x22AAAD240](v11, -1, -1);
    }

    v16 = v10[49];
    return sub_227F2B174();
  }

  return result;
}

id sub_227EEB1E0(void (*a1)(uint64_t))
{
  v3 = sub_227F2B304();
  v4 = sub_227F2B8D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_227EB2000, v3, v4, "Starting transaction", v5, 2u);
    MEMORY[0x22AAAD240](v5, -1, -1);
  }

  v6 = sub_227F2B304();
  v7 = sub_227F2B8D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_227EB2000, v6, v7, "Locking transaction", v8, 2u);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  v9 = sub_227F2B174();
  if (v1)
  {
    v10 = v1;
    v11 = sub_227F2B304();
    v12 = sub_227F2B8E4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_227EB2000, v11, v12, "Transaction failed: %@", v13, 0xCu);
      sub_227EEBAE0(v14);
      MEMORY[0x22AAAD240](v14, -1, -1);
      MEMORY[0x22AAAD240](v13, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
    return swift_willThrow();
  }

  else
  {
    a1(v9);
    v18 = sub_227F2B304();
    v19 = sub_227F2B8D4();
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_227EB2000, v18, v19, "Finishing transaction", v21, 2u);
      MEMORY[0x22AAAD240](v21, -1, -1);
    }

    return sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
  }
}

uint64_t sub_227EEB4E8()
{
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_logger;
  v2 = sub_227F2B334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_storeFileURL;
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for StorageHelper()
{
  result = qword_2813CDC60;
  if (!qword_2813CDC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227EEB648()
{
  result = sub_227F2B334();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_227F2B114();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void (**sub_227EEB714@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(char *, uint64_t)
{
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  v10 = swift_allocObject();
  result = sub_227EEA1D8(a1, a2);
  if (!v4)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_227EEB77C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  sub_227EE3508(a6);
  v11 = sub_227F2B304();
  v12 = sub_227F2B8D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_227EB2000, v11, v12, "Starting transaction", v13, 2u);
    MEMORY[0x22AAAD240](v13, -1, -1);
  }

  v14 = sub_227F2B304();
  v15 = sub_227F2B8D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_227EB2000, v14, v15, "Locking transaction", v16, 2u);
    MEMORY[0x22AAAD240](v16, -1, -1);
  }

  sub_227F2B174();
  if (v7)
  {
    v17 = v7;
    v18 = sub_227F2B304();
    v19 = sub_227F2B8E4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v7;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_227EB2000, v18, v19, "Transaction failed: %@", v20, 0xCu);
      sub_227EEBAE0(v21);
      MEMORY[0x22AAAD240](v21, -1, -1);
      MEMORY[0x22AAAD240](v20, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
    swift_willThrow();
  }

  else
  {
    sub_227EE3508(a6);
    sub_227EEA9C4(a2, a3, a4, a5, a6, a7);
    v24 = sub_227F2B304();
    v25 = sub_227F2B8D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_227EB2000, v24, v25, "Finishing transaction", v26, 2u);
      MEMORY[0x22AAAD240](v26, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
  }

  sub_227EC15A8(a3, a4);
  return sub_227ECD7FC(a6);
}

uint64_t sub_227EEBAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4A0, &qword_227F2DE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227EEBB48()
{
  v1 = sub_227F2B304();
  v2 = sub_227F2B8D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_227EB2000, v1, v2, "Starting transaction", v3, 2u);
    MEMORY[0x22AAAD240](v3, -1, -1);
  }

  v4 = sub_227F2B304();
  v5 = sub_227F2B8D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_227EB2000, v4, v5, "Locking transaction", v6, 2u);
    MEMORY[0x22AAAD240](v6, -1, -1);
  }

  sub_227F2B174();
  if (v0)
  {
    v7 = v0;
    v8 = sub_227F2B304();
    v9 = sub_227F2B8E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v0;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_227EB2000, v8, v9, "Transaction failed: %@", v10, 0xCu);
      sub_227EEBAE0(v11);
      MEMORY[0x22AAAD240](v11, -1, -1);
      MEMORY[0x22AAAD240](v10, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
    swift_willThrow();
  }

  else
  {
    sub_227EEABE4();
    v14 = sub_227F2B304();
    v15 = sub_227F2B8D4();
    if (os_log_type_enabled(v14, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_227EB2000, v14, v15, "Finishing transaction", v17, 2u);
      MEMORY[0x22AAAD240](v17, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
  }
}

uint64_t sub_227EEBE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_227F2B304();
  v10 = sub_227F2B8D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_227EB2000, v9, v10, "Starting transaction", v11, 2u);
    MEMORY[0x22AAAD240](v11, -1, -1);
  }

  v12 = sub_227F2B304();
  v13 = sub_227F2B8D4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_227EB2000, v12, v13, "Locking transaction", v14, 2u);
    MEMORY[0x22AAAD240](v14, -1, -1);
  }

  sub_227F2B174();
  if (v5)
  {
    v15 = v5;
    v16 = sub_227F2B304();
    v17 = sub_227F2B8E4();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v5;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_227EB2000, v16, v17, "Transaction failed: %@", v19, 0xCu);
      sub_227EEBAE0(v20);
      MEMORY[0x22AAAD240](v20, -1, -1);
      MEMORY[0x22AAAD240](v19, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
    swift_willThrow();
  }

  else
  {
    sub_227EEADE0(a2, a3, a4, a5);
    v23 = sub_227F2B304();
    v24 = sub_227F2B8D4();
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_227EB2000, v23, v24, "Finishing transaction", v26, 2u);
      MEMORY[0x22AAAD240](v26, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
  }
}

uint64_t sub_227EEC19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_227F2B304();
  v7 = sub_227F2B8D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_227EB2000, v6, v7, "Starting transaction", v8, 2u);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  v9 = sub_227F2B304();
  v10 = sub_227F2B8D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_227EB2000, v9, v10, "Locking transaction", v11, 2u);
    MEMORY[0x22AAAD240](v11, -1, -1);
  }

  sub_227F2B174();
  if (v3)
  {
    v12 = v3;
    v13 = sub_227F2B304();
    v14 = sub_227F2B8E4();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v3;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_227EB2000, v13, v14, "Transaction failed: %@", v16, 0xCu);
      sub_227EEBAE0(v17);
      MEMORY[0x22AAAD240](v17, -1, -1);
      MEMORY[0x22AAAD240](v16, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
    swift_willThrow();
  }

  else
  {
    sub_227EEAFE0(a2, a3);
    v20 = sub_227F2B304();
    v21 = sub_227F2B8D4();
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_227EB2000, v20, v21, "Finishing transaction", v23, 2u);
      MEMORY[0x22AAAD240](v23, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction", &OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL);
  }
}

void sub_227EEC4F4()
{
  v2 = v1;
  v305[1] = *MEMORY[0x277D85DE8];
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EAF0, &qword_227F302A0);
  v256 = *(v257 - 8);
  v3 = *(v256 + 64);
  MEMORY[0x28223BE20](v257);
  v255 = v250 - v4;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EAF8, &qword_227F302A8);
  *&v269 = *(v304 - 8);
  v5 = *(v269 + 64);
  v6 = MEMORY[0x28223BE20](v304);
  v277 = v250 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v282 = v250 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v276 = v250 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v289 = v250 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v288 = v250 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v284 = v250 - v17;
  MEMORY[0x28223BE20](v16);
  v274 = v250 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v273 = (v250 - v21);
  v301 = sub_227F2B234();
  v298 = *(v301 - 8);
  v22 = *(v298 + 64);
  v23 = MEMORY[0x28223BE20](v301);
  v265 = v250 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v281 = v250 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v293 = v250 - v28;
  MEMORY[0x28223BE20](v27);
  *&v272 = v250 - v29;
  v287 = sub_227F2AFA4();
  v300 = *(v287 - 8);
  v30 = *(v300 + 64);
  v31 = MEMORY[0x28223BE20](v287);
  v280 = (v250 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v286 = v250 - v33;
  v34 = sub_227F2B114();
  v261 = *(v34 - 8);
  v35 = *(v261 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v283 = v250 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v271 = v250 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v263 = v250 - v41;
  MEMORY[0x28223BE20](v40);
  v297 = v250 - v42;
  v43 = type metadata accessor for DirectoryCleaner();
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v264 = v250 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v278 = v250 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v253 = v250 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v254 = v250 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = v250 - v53;
  v275 = objc_opt_self();
  v55 = [v275 defaultManager];
  v285 = v0;
  v56 = sub_227F2B044();
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E000, &qword_227F2C9D0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_227F2E510;
  v58 = *MEMORY[0x277CBE868];
  v59 = *MEMORY[0x277CBE7B0];
  *(v57 + 32) = *MEMORY[0x277CBE868];
  *(v57 + 40) = v59;
  type metadata accessor for URLResourceKey(0);
  v60 = v58;
  v295 = v59;
  v61 = sub_227F2B794();

  v305[0] = 0;
  v62 = [v55 contentsOfDirectoryAtURL:v56 includingPropertiesForKeys:v61 options:0 error:v305];

  v63 = v305[0];
  if (!v62)
  {
    v121 = v305[0];
    sub_227F2AFC4();

    swift_willThrow();
    goto LABEL_55;
  }

  v64 = sub_227F2B7A4();
  v65 = v63;

  v66 = *(v64 + 16);
  if (v66 > 2)
  {
    v67 = v34;
    v68 = sub_227F2A014(0, v66, 0, MEMORY[0x277D84F90]);
    v69 = v68;
    v70 = *(v64 + 16);
    if (v70)
    {
      v270 = v68;
      v302 = *(v261 + 16);
      v71 = (*(v261 + 80) + 32) & ~*(v261 + 80);
      v250[1] = v64;
      v72 = (v64 + v71);
      v303 = v261 + 16;
      v291 = *(v261 + 72);
      v292 = (v261 + 8);
      v268 = (v300 + 32);
      v267 = (v298 + 48);
      v260 = (v298 + 32);
      v259 = (v298 + 16);
      v258 = (v298 + 8);
      v266 = (v300 + 8);
      *(&v73 + 1) = 2;
      v290 = xmmword_227F2C980;
      *&v73 = 136315138;
      v251 = v73;
      *&v73 = 136315394;
      v262 = v73;
      v74 = v280;
      v75 = v283;
      v76 = v297;
      do
      {
        v299 = v72;
        v300 = v70;
        (v302)(v76);
        inited = swift_initStackObject();
        *(inited + 16) = v290;
        v80 = v295;
        *(inited + 32) = v295;
        v81 = v80;
        sub_227F2AA7C(inited);
        swift_setDeallocating();
        sub_227EEE864(inited + 32, type metadata accessor for URLResourceKey);
        sub_227F2B014();
        if (v2)
        {

          if (qword_2813CD580 != -1)
          {
            swift_once();
          }

          v82 = sub_227F2B334();
          __swift_project_value_buffer(v82, qword_2813CE088);
          (v302)(v75, v76, v67);
          v83 = v2;
          v84 = sub_227F2B304();
          v85 = v75;
          v86 = sub_227F2B8E4();

          if (os_log_type_enabled(v84, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v294 = v2;
            v89 = v88;
            v279 = swift_slowAlloc();
            v305[0] = v279;
            *v87 = v262;
            sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260]);
            v90 = sub_227F2BC24();
            v92 = v91;
            v93 = v85;
            v94 = *v292;
            (*v292)(v93, v67);
            v95 = sub_227ECAC40(v90, v92, v305);
            v74 = v280;

            *(v87 + 4) = v95;
            *(v87 + 12) = 2112;
            v96 = v294;
            v97 = v294;
            v98 = _swift_stdlib_bridgeErrorToNSError();
            *(v87 + 14) = v98;
            *v89 = v98;
            _os_log_impl(&dword_227EB2000, v84, v86, "unable to retrieve contentModificationDate for %s: %@", v87, 0x16u);
            sub_227EB8430(v89, &qword_27D80E4A0, &qword_227F2DE40);
            MEMORY[0x22AAAD240](v89, -1, -1);
            v99 = v279;
            __swift_destroy_boxed_opaque_existential_0(v279);
            MEMORY[0x22AAAD240](v99, -1, -1);
            MEMORY[0x22AAAD240](v87, -1, -1);

            v100 = v297;
            (v94)(v297, v67);
            v2 = 0;
            v75 = v283;
            v76 = v100;
          }

          else
          {

            v77 = *v292;
            (*v292)(v85, v67);
            v78 = v297;
            (v77)(v297, v67);
            v2 = 0;
            v75 = v85;
            v76 = v78;
          }
        }

        else
        {

          (*v268)(v286, v74, v287);
          v101 = v273;
          sub_227F2AF74();
          v102 = v301;
          if ((*v267)(v101, 1, v301) == 1)
          {
            sub_227EB8430(v101, &unk_27D80E3B0, &unk_227F2DB00);
            v103 = v263;
            if (qword_2813CD580 != -1)
            {
              swift_once();
            }

            v104 = sub_227F2B334();
            __swift_project_value_buffer(v104, qword_2813CE088);
            (v302)(v103, v297, v67);
            v105 = sub_227F2B304();
            v106 = sub_227F2B8E4();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v252 = swift_slowAlloc();
              v305[0] = v252;
              *v107 = v251;
              sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260]);
              v108 = sub_227F2BC24();
              v294 = 0;
              v110 = v109;
              v279 = *v292;
              (v279)(v103, v67);
              v111 = sub_227ECAC40(v108, v110, v305);
              v2 = v294;
              v75 = v283;

              *(v107 + 4) = v111;
              _os_log_impl(&dword_227EB2000, v105, v106, "unexpected missing contentModificationDate at %s", v107, 0xCu);
              v112 = v252;
              __swift_destroy_boxed_opaque_existential_0(v252);
              MEMORY[0x22AAAD240](v112, -1, -1);
              MEMORY[0x22AAAD240](v107, -1, -1);

              (*v266)(v286, v287);
              v76 = v297;
              (v279)(v297, v67);
            }

            else
            {

              v120 = *v292;
              (*v292)(v103, v67);
              (*v266)(v286, v287);
              v76 = v297;
              (v120)(v297, v67);
            }

            v74 = v280;
          }

          else
          {
            v113 = v272;
            (*v260)(v272, v101, v102);
            v114 = *(v304 + 48);
            v115 = v274;
            (v302)(v274, v76, v67);
            (*v259)(&v115[v114], v113, v102);
            v116 = v270;
            v118 = v270[2];
            v117 = v270[3];
            if (v118 >= v117 >> 1)
            {
              v116 = sub_227F2A014(v117 > 1, v118 + 1, 1, v270);
            }

            (*v258)(v272, v301);
            (*v266)(v286, v287);
            (*v292)(v76, v67);
            v116[2] = v118 + 1;
            v119 = (*(v269 + 80) + 32) & ~*(v269 + 80);
            v270 = v116;
            sub_227EEE9C4(v274, v116 + v119 + *(v269 + 72) * v118);
            v75 = v283;
          }
        }

        v72 = &v299[v291];
        v70 = v300 - 1;
      }

      while (v300 != 1);
      v294 = v2;

      v69 = v270;
    }

    else
    {
      v294 = v1;
    }

    v305[0] = v69;
    swift_getKeyPath();
    sub_227EEE97C(&qword_27D80E908, MEMORY[0x277CC9578]);

    v131 = v255;
    sub_227F2AF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB00, &unk_227F302D0);
    sub_227EEE8C4(&qword_27D80EB08, &qword_27D80EB00, &unk_227F302D0);
    sub_227EEE8C4(&qword_27D80EB10, &qword_27D80EAF0, &qword_227F302A0);
    v132 = v257;
    v133 = sub_227F2B764();
    (*(v256 + 8))(v131, v132);

    v134 = v133[2];
    v135 = v254;
    if (v134 < 2)
    {
      __break(1u);
    }

    else
    {
      v303 = (*(v269 + 80) + 32) & ~*(v269 + 80);
      v136 = v284;
      sub_227EEE90C(v133 + v303, v284);

      v137 = v136 + *(v304 + 48);
      v295 = *(v298 + 32);
      v296 = v298 + 32;
      (v295)(v293, v137, v301);
      v138 = *(v261 + 8);
      v287 = v261 + 8;
      v286 = v138;
      (v138)(v136, v67);
      if (qword_2813CD580 == -1)
      {
        goto LABEL_32;
      }
    }

    swift_once();
LABEL_32:
    v139 = sub_227F2B334();
    v140 = __swift_project_value_buffer(v139, qword_2813CE088);
    sub_227EEE800(v285, v135);

    v283 = v140;
    v141 = sub_227F2B304();
    v142 = sub_227F2B8D4();

    v143 = os_log_type_enabled(v141, v142);
    v297 = v67;
    v302 = v134;
    if (v143)
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v305[0] = v145;
      *v144 = 136315394;
      sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260]);
      v146 = sub_227F2BC24();
      v148 = v147;
      sub_227EEE864(v135, type metadata accessor for DirectoryCleaner);
      v149 = sub_227ECAC40(v146, v148, v305);

      *(v144 + 4) = v149;
      *(v144 + 12) = 2080;
      v150 = sub_227F2B954();
      v152 = sub_227ECAC40(v150, v151, v305);

      *(v144 + 14) = v152;
      _os_log_impl(&dword_227EB2000, v141, v142, "cleaning %s: keeping %s", v144, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v145, -1, -1);
      MEMORY[0x22AAAD240](v144, -1, -1);
    }

    else
    {

      sub_227EEE864(v135, type metadata accessor for DirectoryCleaner);
    }

    v153 = v253;
    sub_227EEE800(v285, v253);

    v154 = sub_227F2B304();
    v155 = sub_227F2B8D4();

    v156 = os_log_type_enabled(v154, v155);
    v270 = v133;
    if (v156)
    {
      v157 = v302;
      v300 = (2 * v302) | 1;
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v305[0] = v159;
      *v158 = 136315394;
      sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260]);
      v160 = sub_227F2BC24();
      v162 = v161;
      sub_227EEE864(v153, type metadata accessor for DirectoryCleaner);
      v163 = sub_227ECAC40(v160, v162, v305);

      *(v158 + 4) = v163;
      *(v158 + 12) = 2080;
      v164 = sub_227F2B954();
      v166 = sub_227ECAC40(v164, v165, v305);

      *(v158 + 14) = v166;
      _os_log_impl(&dword_227EB2000, v154, v155, "cleaning %s: deleting %s", v158, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v159, -1, -1);
      MEMORY[0x22AAAD240](v158, -1, -1);

      v168 = v289;
      v169 = v301;
    }

    else
    {

      sub_227EEE864(v153, type metadata accessor for DirectoryCleaner);
      v168 = v289;
      v169 = v301;
      v157 = v302;
    }

    v170 = v278;
    v171 = v157 - 2;
    if (v157 == 2)
    {
      swift_bridgeObjectRelease_n();
      (*(v298 + 8))(v293, v169);
    }

    else
    {
      v302 = v261 + 32;
      v292 = *(v304 + 48);
      v279 = (v298 + 16);
      v298 += 8;
      v291 = *(v269 + 72);
      v172 = v270 + 2 * v291 + v303;
      *&v167 = 136315650;
      v269 = v167;
      *&v167 = 136315906;
      v272 = v167;
      v173 = v293;
      do
      {
        v303 = v171;
        v176 = v288;
        sub_227EEE90C(v172, v288);
        v177 = *(v304 + 48);
        v178 = v297;
        v299 = *v302;
        (v299)(v168, v176, v297);
        (v295)(v168 + v177, v292 + v176, v169);
        if (sub_227F2B1C4())
        {
          v179 = [v275 defaultManager];
          v180 = v169;
          v181 = v284;
          sub_227EEE90C(v168, v284);
          v182 = *(v304 + 48);
          v183 = sub_227F2B044();
          v300 = *v298;
          (v300)(v181 + v182, v180);
          (v286)(v181, v178);
          v305[0] = 0;
          LODWORD(v182) = [v179 removeItemAtURL:v183 error:v305];

          if (v182)
          {
            v174 = v305[0];
            v168 = v289;
            sub_227EB8430(v289, &qword_27D80EAF8, &qword_227F302A8);
            v169 = v301;
            v173 = v293;
          }

          else
          {
            v184 = v305[0];
            v185 = sub_227F2AFC4();

            swift_willThrow();
            v294 = 0;
            v186 = v264;
            sub_227EEE800(v285, v264);
            v187 = v277;
            sub_227EEE90C(v289, v277);
            v188 = v185;
            v189 = sub_227F2B304();
            v190 = sub_227F2B8E4();

            if (os_log_type_enabled(v189, v190))
            {
              v191 = swift_slowAlloc();
              v280 = swift_slowAlloc();
              *&v290 = swift_slowAlloc();
              v305[0] = v290;
              *v191 = v269;
              sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260]);
              LODWORD(v274) = v190;
              v192 = sub_227F2BC24();
              v194 = v193;
              sub_227EEE864(v186, type metadata accessor for DirectoryCleaner);
              v195 = sub_227ECAC40(v192, v194, v305);

              *(v191 + 4) = v195;
              *(v191 + 12) = 2080;
              v196 = v284;
              sub_227EEE90C(v277, v284);
              v197 = *(v304 + 48);
              v198 = v271;
              (v299)(v271, v196, v178);
              v199 = v196 + v197;
              v200 = v301;
              (v300)(v199, v301);
              v201 = sub_227F2BC24();
              v203 = v202;
              (v286)(v198, v178);
              sub_227EB8430(v277, &qword_27D80EAF8, &qword_227F302A8);
              v204 = sub_227ECAC40(v201, v203, v305);
              v169 = v200;

              *(v191 + 14) = v204;
              *(v191 + 22) = 2112;
              v205 = v185;
              v206 = _swift_stdlib_bridgeErrorToNSError();
              *(v191 + 24) = v206;
              v207 = v280;
              *v280 = v206;
              _os_log_impl(&dword_227EB2000, v189, v274, "cleaning %s: failed to remove %s: %@", v191, 0x20u);
              sub_227EB8430(v207, &qword_27D80E4A0, &qword_227F2DE40);
              MEMORY[0x22AAAD240](v207, -1, -1);
              v208 = v290;
              swift_arrayDestroy();
              MEMORY[0x22AAAD240](v208, -1, -1);
              MEMORY[0x22AAAD240](v191, -1, -1);

              v168 = v289;
              sub_227EB8430(v289, &qword_27D80EAF8, &qword_227F302A8);
            }

            else
            {

              sub_227EB8430(v187, &qword_27D80EAF8, &qword_227F302A8);
              sub_227EEE864(v186, type metadata accessor for DirectoryCleaner);
              v168 = v289;
              sub_227EB8430(v289, &qword_27D80EAF8, &qword_227F302A8);
              v169 = v301;
            }

            v173 = v293;
            v170 = v278;
          }

          v175 = v303;
        }

        else
        {
          *&v290 = v172;
          sub_227EEE800(v285, v170);
          v209 = v276;
          sub_227EEE90C(v168, v276);
          v210 = v282;
          sub_227EEE90C(v168, v282);
          v211 = v281;
          (*v279)(v281, v173, v169);
          v212 = sub_227F2B304();
          v213 = sub_227F2B8E4();
          LODWORD(v280) = v213;
          if (os_log_type_enabled(v212, v213))
          {
            v214 = swift_slowAlloc();
            v274 = swift_slowAlloc();
            v305[0] = v274;
            *v214 = v272;
            sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260]);
            v273 = v212;
            v215 = v297;
            v216 = sub_227F2BC24();
            v218 = v217;
            sub_227EEE864(v170, type metadata accessor for DirectoryCleaner);
            v219 = sub_227ECAC40(v216, v218, v305);

            *(v214 + 4) = v219;
            *(v214 + 12) = 2080;
            v220 = v284;
            sub_227EEE90C(v209, v284);
            v221 = *(v304 + 48);
            v222 = v271;
            (v299)(v271, v220, v215);
            v300 = *v298;
            (v300)(v220 + v221, v301);
            v223 = sub_227F2BC24();
            v225 = v224;
            v226 = v286;
            (v286)(v222, v215);
            sub_227EB8430(v209, &qword_27D80EAF8, &qword_227F302A8);
            v227 = sub_227ECAC40(v223, v225, v305);

            *(v214 + 14) = v227;
            *(v214 + 22) = 2080;
            v228 = v282;
            sub_227EEE90C(v282, v220);
            v229 = v265;
            v230 = v301;
            (v295)(v265, v220 + *(v304 + 48), v301);
            (v226)(v220, v215);
            sub_227EEE97C(&unk_27D80E010, MEMORY[0x277CC9578]);
            v231 = v230;
            v232 = sub_227F2BC24();
            v233 = v281;
            v234 = v232;
            v236 = v235;
            v237 = v231;
            v238 = v300;
            (v300)(v229, v237);
            sub_227EB8430(v228, &qword_27D80EAF8, &qword_227F302A8);
            v239 = v234;
            v170 = v278;
            v240 = sub_227ECAC40(v239, v236, v305);

            *(v214 + 24) = v240;
            *(v214 + 32) = 2080;
            v241 = v301;
            v242 = sub_227F2BC24();
            v244 = v243;
            v238(v233, v241);
            v245 = sub_227ECAC40(v242, v244, v305);

            *(v214 + 34) = v245;
            v246 = v273;
            _os_log_impl(&dword_227EB2000, v273, v280, "cleaning %s: skipping deleting %s as %s is not older than %s", v214, 0x2Au);
            v247 = v274;
            swift_arrayDestroy();
            MEMORY[0x22AAAD240](v247, -1, -1);
            MEMORY[0x22AAAD240](v214, -1, -1);

            v168 = v289;
            sub_227EB8430(v289, &qword_27D80EAF8, &qword_227F302A8);
            v169 = v241;
          }

          else
          {

            v248 = v301;
            v300 = *v298;
            (v300)(v211, v301);
            sub_227EB8430(v210, &qword_27D80EAF8, &qword_227F302A8);
            sub_227EB8430(v209, &qword_27D80EAF8, &qword_227F302A8);
            sub_227EEE864(v170, type metadata accessor for DirectoryCleaner);
            sub_227EB8430(v168, &qword_27D80EAF8, &qword_227F302A8);
            v169 = v248;
          }

          v173 = v293;
          v175 = v303;
          v172 = v290;
        }

        v172 += v291;
        v171 = v175 - 1;
      }

      while (v171);
      swift_bridgeObjectRelease_n();
      (v300)(v173, v169);
    }

    goto LABEL_55;
  }

  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v122 = sub_227F2B334();
  __swift_project_value_buffer(v122, qword_2813CE088);
  sub_227EEE800(v285, v54);
  v123 = sub_227F2B304();
  v124 = sub_227F2B8D4();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v305[0] = v126;
    *v125 = 136315138;
    v127 = sub_227F2B0A4();
    v129 = v128;
    sub_227EEE864(v54, type metadata accessor for DirectoryCleaner);
    v130 = sub_227ECAC40(v127, v129, v305);

    *(v125 + 4) = v130;
    _os_log_impl(&dword_227EB2000, v123, v124, "%s has less than 2 items - no cleanup needed", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v126);
    MEMORY[0x22AAAD240](v126, -1, -1);
    MEMORY[0x22AAAD240](v125, -1, -1);
  }

  else
  {

    sub_227EEE864(v54, type metadata accessor for DirectoryCleaner);
  }

LABEL_55:
  v249 = *MEMORY[0x277D85DE8];
}

uint64_t type metadata accessor for DirectoryCleaner()
{
  result = qword_2813CDB40;
  if (!qword_2813CDB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227EEE800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectoryCleaner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EEE864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EEE8C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_227EEE90C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EAF8, &qword_227F302A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EEE97C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227EEE9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EAF8, &qword_227F302A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EEEA5C@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v28 = sub_227F2AFF4();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227F2B114();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = sub_227F2B644();
  v21 = [v32 containerURLForSecurityApplicationGroupIdentifier_];

  if (v21)
  {
    sub_227F2B084();

    (*(v11 + 32))(v19, v17, v10);
    (*(v6 + 104))(v9, *MEMORY[0x277CC91C0], v28);
    (*(v11 + 16))(v5, v19, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v22 = v31;
    sub_227F2B0E4();
    v24 = v29;
    v23 = v30;
    sub_227F2A3D0(v29);
    if (v23)
    {
      v25 = *(v11 + 8);
      v25(v22, v10);
      return (v25)(v19, v10);
    }

    else
    {
      v26 = *(v11 + 8);
      v26(v24, v10);
      sub_227F2A660();
      return (v26)(v19, v10);
    }
  }

  else
  {
    sub_227EEEDBC();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_227EEEDBC()
{
  result = qword_27D80EB18;
  if (!qword_27D80EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EB18);
  }

  return result;
}

unint64_t sub_227EEEE24()
{
  result = qword_27D80EB20;
  if (!qword_27D80EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EB20);
  }

  return result;
}

uint64_t sub_227EEEE78(__int16 a1)
{
  sub_227F2B9A4();

  strcpy(v7, "hasManifest ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x22AAAC3E0](v2, v3);

  MEMORY[0x22AAAC3E0](0xD000000000000010, 0x8000000227F34210);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x22AAAC3E0](v4, v5);

  return v7[0];
}

uint64_t sub_227EEEF74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v28 - v14;
  v16 = a1 + *(type metadata accessor for PersistenceState() + 20);
  v17 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v16 + *(v17 + 32), v11, &qword_27D80E8F8, &qword_227F2F5E0);
  v18 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
  {
    sub_227EB8430(v11, &qword_27D80E8F8, &qword_227F2F5E0);
    v19 = sub_227F2B114();
    v20 = *(v19 - 8);
    v21 = *(v20 + 56);
    v21(v15, 1, 1, v19);
    sub_227EC2180(v16, v7, &qword_27D80E8F0, &unk_227F2F4B0);
    v22 = type metadata accessor for FileInfo(0);
    if ((*(*(v22 - 8) + 48))(v7, 1, v22) == 1)
    {
      sub_227EB8430(v7, &qword_27D80E8F0, &unk_227F2F4B0);
      v23 = 1;
    }

    else
    {
      (*(v20 + 16))(a2, v7, v19);
      sub_227EF9E90(v7, type metadata accessor for FileInfo);
      v23 = 0;
    }

    v21(a2, v23, 1, v19);
    result = (*(v20 + 48))(v15, 1, v19);
    if (result != 1)
    {
      return sub_227EB8430(v15, &qword_27D80E310, &unk_227F2D990);
    }
  }

  else
  {
    v24 = sub_227F2B114();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v15, v11, v24);
    sub_227EF9E90(v11, type metadata accessor for ResourceInfo.DownloadState);
    v26 = *(v25 + 56);
    v26(v15, 0, 1, v24);
    (*(v25 + 32))(a2, v15, v24);
    return (v26)(a2, 0, 1, v24);
  }

  return result;
}

void sub_227EEF390(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v131 = a4;
  v130 = a3;
  v150 = a2;
  v139 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v123 = &v115 - v9;
  v126 = sub_227F2AFF4();
  v140 = *(v126 - 8);
  v10 = *(v140 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DirectoryCleaner();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v120 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v119 = &v115 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v127 = &v115 - v19;
  v118 = v20;
  MEMORY[0x28223BE20](v18);
  v141 = &v115 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v115 - v24;
  v148 = sub_227F2B114();
  v26 = *(v148 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v148);
  v30 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v122 = &v115 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v121 = &v115 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v129 = &v115 - v36;
  MEMORY[0x28223BE20](v35);
  v146 = &v115 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v115 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v115 - v44;
  v46 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_logger;
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v147 = a1;
  v47 = sub_227F2B334();
  v48 = __swift_project_value_buffer(v47, qword_2813CE088);
  v136 = *(v47 - 8);
  v49 = *(v136 + 2);
  v137 = v47;
  v138 = v46;
  v49(v4 + v46, v48, v47);
  v50 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  if (qword_2813CDAE0 != -1)
  {
    swift_once();
  }

  v149 = v5;
  v51 = type metadata accessor for PersistenceState();
  v52 = __swift_project_value_buffer(v51, qword_2813CE108);
  v50->_os_unfair_lock_opaque = 0;
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB90, &qword_227F30490);
  bzero(v50 + v53, *(*(v54 - 8) + 64));
  v143 = v53;
  v144 = v50;
  sub_227EF9CA4(v52, v50 + v53, type metadata accessor for PersistenceState);
  v55 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  v56 = type metadata accessor for Manifest();
  (*(*(v56 - 8) + 56))(v45, 1, 1, v56);
  *v55 = 0;
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0) + 28);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB98, &qword_227F30498);
  bzero(v55 + v57, *(*(v58 - 8) + 64));
  v135 = v55;
  v134 = v57;
  sub_227EE7808(v45, v55 + v57, &qword_27D80EB28, &qword_227F30440);
  v59 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
  v60 = type metadata accessor for Configuration();
  (*(*(v60 - 8) + 56))(v41, 1, 1, v60);
  v59->_os_unfair_lock_opaque = 0;
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460) + 28);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EBA0, &qword_227F304A0);
  bzero(v59 + v61, *(*(v62 - 8) + 64));
  v145 = v61;
  sub_227EE7808(v41, v59 + v61, &qword_27D80EB30, &qword_227F30448);
  v63 = v147;
  v132 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings;
  *(v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings) = v147;
  v154 = v4;
  v133 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock;
  sub_227ECDA1C(v150, v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock);
  sub_227EC2180(v63 + OBJC_IVAR____TtC21RapidResourceDelivery8Settings_persistenceFolderURL, v25, &qword_27D80E310, &unk_227F2D990);
  v64 = *(v26 + 48);
  v65 = v148;
  v66 = v64(v25, 1, v148);
  v142 = v26;
  if (v66 == 1)
  {
    v67 = objc_opt_self();

    v68 = [v67 defaultManager];
    v69 = v149;
    sub_227EEEA5C(v68, v146);
    if (v69)
    {

      __swift_destroy_boxed_opaque_existential_0(v150);
      v65 = v148;
      if (v64(v25, 1, v148) != 1)
      {
        sub_227EB8430(v25, &qword_27D80E310, &unk_227F2D990);
      }

      v70 = 0;
      v71 = v144;
      goto LABEL_16;
    }

    v116 = v30;
    v149 = 0;

    v65 = v148;
    v73 = v64(v25, 1, v148);
    v124 = v59;
    if (v73 != 1)
    {
      sub_227EB8430(v25, &qword_27D80E310, &unk_227F2D990);
    }

    v26 = v142;
    v72 = v146;
    v63 = v147;
  }

  else
  {
    v124 = v59;
    v116 = v30;
    v72 = v146;
    (*(v26 + 32))(v146, v25, v65);
  }

  v74 = *(v26 + 16);
  v128 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL;
  v74(v154 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL, v72, v65);
  v75 = v129;
  v74(v129, v72, v65);
  v76 = v131;
  v77 = v26;
  v78 = *(v131 + 24);
  v79 = v130;
  v153[3] = v130;
  v153[4] = v131;
  __swift_allocate_boxed_opaque_existential_1(v153);

  v80 = v149;
  v78(v75, v63, v79, v76);
  if (!v80)
  {
    sub_227ECDA1C(v153, v154 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper);
    v151 = 7368052;
    v152 = 0xE300000000000000;
    v85 = *MEMORY[0x277CC91C0];
    v149 = 0;
    v86 = v140;
    v88 = v140 + 104;
    v87 = *(v140 + 104);
    v89 = v125;
    v90 = v126;
    v87(v125, v85, v126);
    v91 = sub_227EB84D8();
    sub_227F2B104();
    v92 = *(v86 + 8);
    v92(v89, v90);
    v151 = 0x6568636163;
    v152 = 0xE500000000000000;
    LODWORD(v137) = v85;
    v138 = v88;
    v136 = v87;
    v87(v89, v85, v90);
    v93 = v127;
    v139 = v91;
    sub_227F2B104();
    v135 = v92;
    v140 = v86 + 8;
    v92(v89, v90);
    v94 = v123;
    sub_227F2B834();
    v95 = sub_227F2B854();
    (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
    v96 = v119;
    sub_227EF9CA4(v141, v119, type metadata accessor for DirectoryCleaner);
    v97 = v120;
    sub_227EF9CA4(v93, v120, type metadata accessor for DirectoryCleaner);
    v98 = *(v117 + 80);
    v99 = (v98 + 32) & ~v98;
    v100 = (v118 + v98 + v99) & ~v98;
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    *(v101 + 24) = 0;
    sub_227EF9D0C(v96, v101 + v99, type metadata accessor for DirectoryCleaner);
    sub_227EF9D0C(v97, v101 + v100, type metadata accessor for DirectoryCleaner);
    sub_227EF07DC(0, 0, v94, &unk_227F304B0, v101);

    sub_227EB8430(v94, &qword_27D80EB88, &qword_227F312D0);
    v102 = v124;
    os_unfair_lock_lock(v124);
    v103 = v149;
    sub_227EF0A9C(v102 + v145, v154);
    os_unfair_lock_unlock(v102);
    if (v103)
    {
      __break(1u);
    }

    else
    {
      v151 = 7368052;
      v152 = 0xE300000000000000;
      v104 = v125;
      v105 = v126;
      v136(v125, v137, v126);
      v106 = v122;
      sub_227F2B104();
      v135(v104, v105);
      v107 = v121;
      sub_227F2A3D0(v121);
      v108 = *(v142 + 8);
      v109 = v106;
      v110 = v148;
      v108(v109, v148);
      v149 = v108;
      v108(v107, v110);
      v111 = v144;
      os_unfair_lock_lock(v144);
      v151 = 0x6568636163;
      v152 = 0xE500000000000000;
      v136(v104, v137, v105);
      v112 = v116;
      sub_227F2B104();
      v135(v104, v105);

      v114 = v148;
      v113 = v149;
      v149(v112, v148);
      os_unfair_lock_unlock(v111);

      __swift_destroy_boxed_opaque_existential_0(v150);
      sub_227EF9E90(v127, type metadata accessor for DirectoryCleaner);
      sub_227EF9E90(v141, type metadata accessor for DirectoryCleaner);
      v113(v146, v114);
      __swift_destroy_boxed_opaque_existential_0(v153);
    }

    return;
  }

  __swift_destroy_boxed_opaque_existential_0(v150);
  (*(v77 + 8))(v72, v65);
  __swift_deallocate_boxed_opaque_existential_1(v153);
  v70 = 1;
  v71 = v144;
  v59 = v124;
LABEL_16:
  v81 = v154;
  (*(v136 + 1))(v154 + v138, v137);
  v82 = *(v81 + v132);

  if (v70)
  {
    (*(v142 + 8))(v81 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL, v65);
  }

  __swift_destroy_boxed_opaque_existential_0((v81 + v133));
  sub_227EF9E90(v71 + v143, type metadata accessor for PersistenceState);
  sub_227EB8430(v135 + v134, &qword_27D80EB28, &qword_227F30440);
  sub_227EB8430(v59 + v145, &qword_27D80EB30, &qword_227F30448);
  v83 = *(*v81 + 48);
  v84 = *(*v81 + 52);
  swift_deallocPartialClassInstance();
}

uint64_t sub_227EF04C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_227EF04E8, 0, 0);
}

uint64_t sub_227EF04E8()
{
  v1 = v0[2];
  sub_227EEC4F4();
  v2 = v0[3];
  sub_227EEC4F4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_227EF07DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_227EC2180(a3, v27 - v11, &qword_27D80EB88, &qword_227F312D0);
  v13 = sub_227F2B854();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_227EB8430(v12, &qword_27D80EB88, &qword_227F312D0);
  }

  else
  {
    sub_227F2B844();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_227F2B7B4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_227F2B6E4() + 32;
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

void sub_227EF0A9C(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v50 = type metadata accessor for Configuration();
  v47 = *(v50 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = v42 - v7;
  v8 = sub_227F2AFF4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227F2B114();
  v14 = *(v13 - 8);
  v58 = v13;
  v59 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v51 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v52 = v42 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v42 - v20;

  v22 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL;
  v60 = 0x6E6F736A2E647272;
  v61 = 0xE800000000000000;
  v23 = v9[13];
  v53 = *MEMORY[0x277CC91D0];
  v23(v12);
  v24 = sub_227EB84D8();
  v54 = v22;
  v55 = a2;
  sub_227F2B104();
  v25 = v9[1];
  v56 = v8;
  v25(v12, v8);
  v26 = v57;
  v27 = sub_227F2B054();
  if (v26)
  {

    (*(v59 + 8))(v21, v58);
  }

  else
  {
    v28 = v27;
    v44 = v9 + 13;
    v45 = v25;
    v57 = v23;
    v29 = v56;
    v30 = v59 + 8;
    v43 = *(v59 + 8);
    v43(v21, v58);
    if (v28)
    {
      v59 = v30;
      v60 = 0x6E6F736A2E647272;
      v61 = 0xE800000000000000;
      (v57)(v12, v53, v29);
      v42[0] = v24;
      sub_227F2B104();
      v45(v12, v29);
      v31 = sub_227F2B124();
      v33 = v32;
      v34 = sub_227F2AE24();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_227F2AE14();
      sub_227EF9EF0(&qword_27D80EBA8, type metadata accessor for Configuration);
      v37 = v49;
      v38 = v50;
      sub_227F2AE04();
      v42[1] = 0;
      sub_227EC15A8(v31, v33);

      v39 = v48;
      sub_227EB8430(v48, &qword_27D80EB30, &qword_227F30448);
      v43(v52, v58);
      v40 = v37;
      v41 = v46;
      sub_227EF9D0C(v40, v46, type metadata accessor for Configuration);
      (*(v47 + 56))(v41, 0, 1, v38);
      sub_227EE7808(v41, v39, &qword_27D80EB30, &qword_227F30448);
    }
  }
}

BOOL sub_227EF1234()
{
  v1 = (v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v3 = *(*(v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings) + 16);
  v4 = sub_227F2B644();
  v5 = [v3 integerForKey_];

  v6 = v5;
  if (v5 <= 0)
  {
    v6 = 604800.0;
  }

  v7 = sub_227EDBFDC((v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), v6);
  os_unfair_lock_unlock(v1);
  return v7;
}

void sub_227EF1314(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v42 = a3;
  v41 = type metadata accessor for Manifest();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v40 - v18;
  v20 = (a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EF34BC(v20 + *(v21 + 28), a1, &v43, v17);
  if (v3)
  {
    v22 = v43;
    os_unfair_lock_unlock(v20);
    v23 = v22;
    v24 = sub_227F2B304();
    v25 = sub_227F2B8E4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v22;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_227EB2000, v24, v25, "Error reading manifest: %@", v26, 0xCu);
      sub_227EB8430(v27, &qword_27D80E4A0, &qword_227F2DE40);
      MEMORY[0x22AAAD240](v27, -1, -1);
      MEMORY[0x22AAAD240](v26, -1, -1);
    }

    else
    {
    }

    v30 = 0;
  }

  else
  {
    v40[1] = 0;
    os_unfair_lock_unlock(v20);
    sub_227EE7808(v17, v19, &qword_27D80EB28, &qword_227F30440);
    sub_227EC2180(v19, v14, &qword_27D80EB28, &qword_227F30440);
    v31 = v41;
    if ((*(v6 + 48))(v14, 1, v41) == 1)
    {
      sub_227EB8430(v14, &qword_27D80EB28, &qword_227F30440);
      v32 = sub_227F2B304();
      v33 = sub_227F2B8D4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_227EB2000, v32, v33, "No manifest present, can't use cached updates.", v34, 2u);
        MEMORY[0x22AAAD240](v34, -1, -1);
      }

      sub_227EB8430(v19, &qword_27D80EB28, &qword_227F30440);
      v30 = 0;
    }

    else
    {
      sub_227EF9D0C(v14, v9, type metadata accessor for Manifest);
      v35 = *(*(a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings) + 16);
      v36 = sub_227F2B644();
      v37 = [v35 integerForKey_];

      v38 = v37;
      if (v37 <= 0)
      {
        v38 = 604800.0;
      }

      v39 = sub_227EDC30C((a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), v38, *&v9[*(v31 + 28)]);
      sub_227EF9E90(v9, type metadata accessor for Manifest);
      sub_227EB8430(v19, &qword_27D80EB28, &qword_227F30440);
      v30 = v39;
    }
  }

  *v42 = v30;
}

void sub_227EF17E0()
{
  v1 = v0;
  v181 = type metadata accessor for PersistenceState();
  v2 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v167 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContainerizableURL(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v171 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v180 = &v167 - v9;
  v10 = type metadata accessor for ResourceInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v178 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for FileInfo(0);
  v177 = *(v179 - 8);
  v13 = *(v177 + 64);
  MEMORY[0x28223BE20](v179);
  v172 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227F2B114();
  v196 = *(v15 - 8);
  v197 = v15;
  v16 = *(v196 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v170 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v176 = &v167 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v174 = &v167 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v187 = &v167 - v24;
  MEMORY[0x28223BE20](v23);
  v173 = &v167 - v25;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v26 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v28 = &v167 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v169 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v175 = &v167 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v168 = &v167 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v182 = &v167 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v192 = &v167 - v40;
  MEMORY[0x28223BE20](v39);
  v191 = &v167 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v186 = &v167 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v167 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v167 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v167 - v52;
  v54 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings);
  sub_227F282D8(v51);
  v55 = type metadata accessor for Configuration();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  v58 = v57(v51, 1, v55);
  v195 = v1;
  if (v58 == 1)
  {
    v59 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    sub_227EC2180(v59 + *(v60 + 28), v53, &qword_27D80EB30, &qword_227F30448);
    os_unfair_lock_unlock(v59);
    if (v57(v51, 1, v55) != 1)
    {
      sub_227EB8430(v51, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227EF9D0C(v51, v53, type metadata accessor for Configuration);
    (*(v56 + 56))(v53, 0, 1, v55);
  }

  v194 = v53;
  sub_227EC2180(v53, v48, &qword_27D80EB30, &qword_227F30448);
  v185 = v57;
  if (v57(v48, 1, v55) == 1)
  {
    sub_227EB8430(v48, &qword_27D80EB30, &qword_227F30448);
    v61 = 1;
    v63 = v196;
    v62 = v197;
    v64 = v195;
    v65 = v191;
    v66 = v192;
  }

  else
  {
    v63 = v196;
    v62 = v197;
    v65 = v191;
    (*(v196 + 16))(v191, v48, v197);
    sub_227EF9E90(v48, type metadata accessor for Configuration);
    v61 = 0;
    v64 = v195;
    v66 = v192;
  }

  v184 = v55;
  (*(v63 + 56))(v65, v61, 1, v62);
  v67 = (v64 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock(v67);
  v188 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v68 = v193;
  sub_227EEEF74(v188, v66);
  v193 = v68;
  if (v68)
  {
    os_unfair_lock_unlock(v67);
    __break(1u);
    goto LABEL_59;
  }

  v190 = v67;
  os_unfair_lock_unlock(v67);
  v69 = *(v189 + 48);
  sub_227EC2180(v65, v28, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v66, &v28[v69], &qword_27D80E310, &unk_227F2D990);
  v70 = *(v63 + 48);
  v71 = v70(v28, 1, v62);
  v189 = v70;
  v183 = v63 + 48;
  if (v71 != 1)
  {
    v75 = v182;
    sub_227EC2180(v28, v182, &qword_27D80E310, &unk_227F2D990);
    v76 = v70(&v28[v69], 1, v62);
    v77 = v62;
    v73 = v195;
    if (v76 != 1)
    {
      v111 = v196;
      v112 = v173;
      (*(v196 + 32))(v173, &v28[v69], v77);
      sub_227EF9EF0(&qword_27D80E508, MEMORY[0x277CC9260]);
      v113 = sub_227F2B634();
      v114 = *(v111 + 8);
      v114(v112, v197);
      sub_227EB8430(v192, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v191, &qword_27D80E310, &unk_227F2D990);
      v114(v75, v197);
      v73 = v195;
      sub_227EB8430(v28, &qword_27D80E310, &unk_227F2D990);
      v74 = v194;
      v62 = v190;
      if (v113)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    sub_227EB8430(v192, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v191, &qword_27D80E310, &unk_227F2D990);
    (*(v196 + 8))(v75, v62);
LABEL_14:
    sub_227EB8430(v28, &qword_27D80E4F8, &qword_227F2DE80);
    v74 = v194;
    v62 = v190;
LABEL_15:
    v78 = v186;
    sub_227EC2180(v74, v186, &qword_27D80EB30, &qword_227F30448);
    if (v185(v78, 1, v184) != 1)
    {
      v93 = v196;
      v92 = v197;
      v94 = *(v196 + 16);
      v95 = v174;
      (v94)(v174, v78, v197);
      sub_227EF9E90(v78, type metadata accessor for Configuration);
      v96 = v187;
      (*(v93 + 32))(v187, v95, v92);
      v195 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_logger;
      v97 = sub_227F2B304();
      v98 = sub_227F2B8F4();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_227EB2000, v97, v98, "Resetting the manifest as configuration change is detected", v99, 2u);
        MEMORY[0x22AAAD240](v99, -1, -1);
      }

      v100 = sub_227F2B304();
      v101 = sub_227F2B8F4();

      if (os_log_type_enabled(v100, v101))
      {
        v192 = v94;
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v198 = v103;
        *v102 = 136315138;
        v104 = v190;
        os_unfair_lock_lock(v190);
        v105 = v168;
        v106 = v193;
        sub_227EEEF74(v188, v168);
        v193 = v106;
        v107 = v104;
        if (v106)
        {
LABEL_60:
          os_unfair_lock_unlock(v107);
          __break(1u);
          return;
        }

        os_unfair_lock_unlock(v104);
        v108 = v197;
        if ((v189)(v105, 1, v197) == 1)
        {
          v109 = 0x676E697373696DLL;
          sub_227EB8430(v105, &qword_27D80E310, &unk_227F2D990);
          v110 = 0xE700000000000000;
        }

        else
        {
          v109 = sub_227F2B004();
          v139 = v105;
          v110 = v140;
          (*(v196 + 8))(v139, v108);
        }

        v96 = v187;
        v141 = sub_227ECAC40(v109, v110, &v198);

        *(v102 + 4) = v141;
        _os_log_impl(&dword_227EB2000, v100, v101, "Configured manifest URL was: %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x22AAAD240](v103, -1, -1);
        MEMORY[0x22AAAD240](v102, -1, -1);

        v93 = v196;
        v94 = v192;
      }

      else
      {
      }

      v142 = v176;
      v143 = v96;
      v144 = v197;
      (v94)(v176, v143, v197);
      v145 = sub_227F2B304();
      v146 = sub_227F2B8F4();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = v142;
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v198 = v149;
        *v148 = 136446210;
        sub_227EF9EF0(&qword_27D80E008, MEMORY[0x277CC9260]);
        v150 = sub_227F2BC24();
        v152 = v151;
        v153 = v147;
        v154 = *(v196 + 8);
        v154(v153, v144);
        v155 = sub_227ECAC40(v150, v152, &v198);

        *(v148 + 4) = v155;
        _os_log_impl(&dword_227EB2000, v145, v146, "Configured manifest URL now: %{public}s", v148, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v149);
        MEMORY[0x22AAAD240](v149, -1, -1);
        MEMORY[0x22AAAD240](v148, -1, -1);
      }

      else
      {

        v154 = *(v93 + 8);
        v156 = (v154)(v142, v144);
      }

      MEMORY[0x28223BE20](v156);
      v157 = v187;
      *(&v167 - 4) = v187;
      *(&v167 - 3) = v73;
      *(&v167 - 2) = 0;
      *(&v167 - 1) = 0;
      sub_227EF2ED0(sub_227EF9570);
      sub_227EB8430(v194, &qword_27D80EB30, &qword_227F30448);
      v154(v157, v197);
      return;
    }

    sub_227EB8430(v78, &qword_27D80EB30, &qword_227F30448);
    v79 = sub_227F2B304();
    v80 = sub_227F2B8F4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_227EB2000, v79, v80, "Resetting the manifest to the initial state", v81, 2u);
      MEMORY[0x22AAAD240](v81, -1, -1);
    }

    v82 = sub_227F2B304();
    v83 = sub_227F2B8F4();

    v84 = os_log_type_enabled(v82, v83);
    v85 = v175;
    if (!v84)
    {
LABEL_43:

      sub_227EF304C(v138, v73);
      sub_227EB8430(v74, &qword_27D80EB30, &qword_227F30448);
      return;
    }

    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v198 = v87;
    *v86 = 136315138;
    os_unfair_lock_lock(v62);
    v88 = v193;
    sub_227EEEF74(v188, v85);
    v193 = v88;
    if (!v88)
    {
      os_unfair_lock_unlock(v62);
      v89 = v197;
      if ((v189)(v85, 1, v197) == 1)
      {
        v90 = 0x676E697373696DLL;
        sub_227EB8430(v85, &qword_27D80E310, &unk_227F2D990);
        v91 = 0xE700000000000000;
      }

      else
      {
        v90 = sub_227F2B004();
        v91 = v136;
        (*(v196 + 8))(v85, v89);
      }

      v74 = v194;
      v137 = sub_227ECAC40(v90, v91, &v198);

      *(v86 + 4) = v137;
      _os_log_impl(&dword_227EB2000, v82, v83, "Configured manifest URL was: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x22AAAD240](v87, -1, -1);
      MEMORY[0x22AAAD240](v86, -1, -1);
      goto LABEL_43;
    }

LABEL_59:
    v107 = v62;
    goto LABEL_60;
  }

  sub_227EB8430(v66, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v65, &qword_27D80E310, &unk_227F2D990);
  v72 = (v189)(&v28[v69], 1, v62);
  v73 = v195;
  if (v72 != 1)
  {
    goto LABEL_14;
  }

  sub_227EB8430(v28, &qword_27D80E310, &unk_227F2D990);
  v74 = v194;
  v62 = v190;
LABEL_29:
  os_unfair_lock_lock(v62);
  v115 = v181;
  v116 = v188;
  v117 = v178;
  sub_227EF9CA4(v188 + *(v181 + 20), v178, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v62);
  v118 = v180;
  sub_227EC2180(v117, v180, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EF9E90(v117, type metadata accessor for ResourceInfo);
  v119 = v179;
  if ((*(v177 + 48))(v118, 1, v179) == 1)
  {
    sub_227EB8430(v118, &qword_27D80E8F0, &unk_227F2F4B0);
    os_unfair_lock_lock(v62);
    v120 = v169;
    v121 = v193;
    sub_227EEEF74(v116, v169);
    if (!v121)
    {
      os_unfair_lock_unlock(v62);
      v122 = (v189)(v120, 1, v197);
      sub_227EB8430(v120, &qword_27D80E310, &unk_227F2D990);
      v123 = sub_227F2B304();
      v124 = sub_227F2B8C4();
      v125 = os_log_type_enabled(v123, v124);
      if (v122 == 1)
      {
        if (v125)
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_227EB2000, v123, v124, "Manifest was never initialized", v126, 2u);
          MEMORY[0x22AAAD240](v126, -1, -1);
        }

        sub_227EB8430(v74, &qword_27D80EB30, &qword_227F30448);
        return;
      }

      if (v125)
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_227EB2000, v123, v124, "Manifest is not downloaded, but state is valid", v134, 2u);
        MEMORY[0x22AAAD240](v134, -1, -1);
      }

      v135 = v74;
LABEL_52:
      sub_227EB8430(v135, &qword_27D80EB30, &qword_227F30448);
      return;
    }

    goto LABEL_59;
  }

  v127 = v172;
  sub_227EF9D0C(v118, v172, type metadata accessor for FileInfo);

  v128 = v171;
  sub_227EF9CA4(v127 + *(v119 + 20), v171, type metadata accessor for ContainerizableURL);
  v129 = v196;
  v130 = v197;
  v131 = v170;
  (*(v196 + 32))(v170, v128, v197);
  v132 = v193;
  v133 = sub_227F2B054();
  if (v132)
  {

    (*(v129 + 8))(v131, v130);
  }

  else
  {
    v158 = v133;
    (*(v129 + 8))(v131, v130);
    if (v158)
    {
      sub_227EF9E90(v127, type metadata accessor for FileInfo);
      v135 = v194;
      goto LABEL_52;
    }
  }

  v159 = sub_227F2B304();
  v160 = sub_227F2B8F4();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    *v161 = 0;
    _os_log_impl(&dword_227EB2000, v159, v160, "Resetting to the factory defaults because manifest file disappeared", v161, 2u);
    MEMORY[0x22AAAD240](v161, -1, -1);
  }

  os_unfair_lock_lock(v62);
  v162 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
  v163 = v194;
  if (qword_2813CDAE0 != -1)
  {
    swift_once();
  }

  v164 = __swift_project_value_buffer(v115, qword_2813CE108);
  v165 = v167;
  v166 = v188;
  sub_227EDDE44((v73 + v162), v164, v188, v167);
  sub_227EE3518(v165, v166);
  sub_227EDEF80(v127, (v73 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (v73 + v162), 0, 0);
  os_unfair_lock_unlock(v62);
  sub_227EF9E90(v127, type metadata accessor for FileInfo);
  sub_227EB8430(v163, &qword_27D80EB30, &qword_227F30448);
}

uint64_t sub_227EF2ED0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v8 = sub_227EF3B38(v6 + v7);
  *(v4 + 16) = v8 & 1;
  *(v4 + 17) = HIBYTE(v8) & 1;
  a1(&v11, v6 + v7);
  v9 = sub_227EF3B38(v6 + v7);
  *(v5 + 16) = v9 & 1;
  *(v5 + 17) = HIBYTE(v9) & 1;
  if (!v2)
  {
    v1 = v11;
  }

  os_unfair_lock_unlock(v6);
  sub_227EF3D7C(v4, v5);

  return v1;
}

uint64_t sub_227EF304C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistenceState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v12 = sub_227EF3B38(v10 + v11);
  *(v8 + 16) = v12 & 1;
  *(v8 + 17) = HIBYTE(v12) & 1;
  v13 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
  if (qword_2813CDAE0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_2813CE108);
  v15 = v18[1];
  sub_227EDDE44((a2 + v13), v14, v10 + v11, v7);
  if (!v15)
  {
    sub_227EE3518(v7, v10 + v11);
  }

  v16 = sub_227EF3B38(v10 + v11);
  *(v9 + 16) = v16 & 1;
  *(v9 + 17) = HIBYTE(v16) & 1;
  os_unfair_lock_unlock(v10);
  sub_227EF3D7C(v8, v9);
}

uint64_t sub_227EF3220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v10 = sub_227EF3B38(v8 + v9);
  *(v6 + 16) = v10 & 1;
  *(v6 + 17) = HIBYTE(v10) & 1;
  v11 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v11;
  v15 = *(a2 + 32);
  sub_227EE1E9C(v14, (a3 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (a3 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
  v12 = sub_227EF3B38(v8 + v9);
  *(v7 + 16) = v12 & 1;
  *(v7 + 17) = HIBYTE(v12) & 1;
  os_unfair_lock_unlock(v8);
  sub_227EF3D7C(v6, v7);

  sub_227EF9968(a2);
}

uint64_t sub_227EF3388(void (*a1)(char *))
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v7 = sub_227EF3B38(v5 + v6);
  *(v3 + 16) = v7 & 1;
  *(v3 + 17) = HIBYTE(v7) & 1;
  a1(v5 + v6);
  v8 = sub_227EF3B38(v5 + v6);
  *(v4 + 16) = v8 & 1;
  *(v4 + 17) = HIBYTE(v8) & 1;
  os_unfair_lock_unlock(v5);
  sub_227EF3D7C(v3, v4);
}

uint64_t sub_227EF34BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v64 = a2;
  v6 = type metadata accessor for Manifest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContainerizableURL(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - v15;
  v62 = sub_227F2B114();
  v66 = *(v62 - 8);
  v17 = v66[8];
  v18 = MEMORY[0x28223BE20](v62);
  v63 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v65 = &v55 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v57 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v55 - v28;
  v58 = a1;
  v30 = v6;
  v31 = v7;
  sub_227EC2180(a1, &v55 - v28, &qword_27D80EB28, &qword_227F30440);
  if ((*(v7 + 48))(v29, 1, v30) == 1)
  {
    v56 = a4;
    sub_227EB8430(v29, &qword_27D80EB28, &qword_227F30440);
    v32 = type metadata accessor for PersistenceState();
    sub_227EC2180(v64 + *(v32 + 20), v16, &qword_27D80E8F0, &unk_227F2F4B0);
    v33 = type metadata accessor for FileInfo(0);
    if ((*(*(v33 - 8) + 48))(v16, 1, v33) == 1)
    {
      sub_227EB8430(v16, &qword_27D80E8F0, &unk_227F2F4B0);
      return (*(v7 + 56))(v56, 1, 1, v30);
    }

    else
    {
      v35 = v61;
      sub_227EF9CA4(&v16[*(v33 + 20)], v61, type metadata accessor for ContainerizableURL);
      v36 = v66;
      v37 = v66[4];
      v38 = v62;
      v37(v22, v35, v62);
      sub_227EF9E90(v16, type metadata accessor for FileInfo);
      v39 = v65;
      v37(v65, v22, v38);
      v40 = v63;
      (v36[2])(v63, v39, v38);
      v41 = sub_227F2AE24();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      sub_227F2AE14();
      v44 = v67;
      v45 = sub_227F2B124();
      v47 = v56;
      if (v44)
      {

        v51 = v66[1];
        v51(v40, v38);
        result = (v51)(v65, v38);
        *v60 = v44;
      }

      else
      {
        v48 = v45;
        v49 = v46;
        sub_227EF9EF0(&qword_27D80E910, type metadata accessor for Manifest);
        v50 = v59;
        sub_227F2AE04();

        sub_227EC15A8(v48, v49);
        v52 = v58;
        sub_227EB8430(v58, &qword_27D80EB28, &qword_227F30440);
        v53 = v66[1];
        v53(v63, v38);
        v53(v65, v38);
        v54 = v57;
        sub_227EF9D0C(v50, v57, type metadata accessor for Manifest);
        (*(v31 + 56))(v54, 0, 1, v30);
        sub_227EE7808(v54, v52, &qword_27D80EB28, &qword_227F30440);
        return sub_227EC2180(v52, v47, &qword_27D80EB28, &qword_227F30440);
      }
    }
  }

  else
  {
    sub_227EF9D0C(v29, a4, type metadata accessor for Manifest);
    return (*(v7 + 56))(a4, 0, 1, v30);
  }

  return result;
}

uint64_t sub_227EF3B38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EF34BC(v10 + *(v11 + 28), a1, &v19, v9);
  os_unfair_lock_unlock(v10);
  sub_227EC2180(v9, v7, &qword_27D80EB28, &qword_227F30440);
  v12 = type metadata accessor for Manifest();
  v13 = *(*(v12 - 8) + 48);
  if (v13(v7, 1, v12) == 1)
  {
    sub_227EB8430(v7, &qword_27D80EB28, &qword_227F30440);
    v14 = 2;
  }

  else
  {
    v14 = v7[16];
    sub_227EF9E90(v7, type metadata accessor for Manifest);
  }

  v15 = v13(v9, 1, v12);
  sub_227EB8430(v9, &qword_27D80EB28, &qword_227F30440);
  if (((v14 != 2) ^ v14))
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  if (v15 == 1)
  {
    return v16;
  }

  else
  {
    return v16 + 1;
  }
}

void sub_227EF3D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  swift_beginAccess();
  if (v4 != *(a2 + 16) || ((v5 ^ *(a2 + 17)) & 1) != 0)
  {

    v6 = sub_227F2B304();
    v7 = sub_227F2B8F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315394;
      swift_beginAccess();
      if (*(a1 + 17))
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = sub_227EEEE78(v10 | *(a1 + 16));
      v13 = sub_227ECAC40(v11, v12, &v19);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      swift_beginAccess();
      if (*(a2 + 17))
      {
        v14 = 256;
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_227EEEE78(v14 | *(a2 + 16));
      v17 = sub_227ECAC40(v15, v16, &v19);

      *(v8 + 14) = v17;
      _os_log_impl(&dword_227EB2000, v6, v7, "Post availability change notification, stateBefore: %s, stateAfter: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v9, -1, -1);
      MEMORY[0x22AAAD240](v8, -1, -1);
    }

    v18 = [objc_opt_self() defaultCenter];
    if (qword_2813CD520 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:qword_2813CD528 object:0];
  }
}

uint64_t sub_227EF3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v90 = a4;
  v94 = a3;
  v98 = a1;
  v5 = sub_227F2AFF4();
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v5);
  v82 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_227F2B114();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Configuration();
  v12 = *(v11 - 1);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v88 = &v80[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v80[-v17];
  MEMORY[0x28223BE20](v16);
  v89 = &v80[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB50, &qword_227F30470);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v80[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v96 = &v80[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v80[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v80[-v31];
  v97 = a2;
  sub_227EF9CA4(a2, &v80[-v31], type metadata accessor for Configuration);
  v91 = v12[7];
  v92 = v12 + 7;
  v91(v32, 0, 1, v11);
  sub_227EC2180(v98, v30, &qword_27D80EB30, &qword_227F30448);
  v33 = *(v20 + 56);
  sub_227EC2180(v32, v23, &qword_27D80EB30, &qword_227F30448);
  sub_227EC2180(v30, &v23[v33], &qword_27D80EB30, &qword_227F30448);
  v34 = v12[6];
  if (v34(v23, 1, v11) == 1)
  {
    sub_227EB8430(v30, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v32, &qword_27D80EB30, &qword_227F30448);
    v35 = v34(&v23[v33], 1, v11);
    v36 = v95;
    if (v35 == 1)
    {
      return sub_227EB8430(v23, &qword_27D80EB30, &qword_227F30448);
    }

    goto LABEL_6;
  }

  sub_227EC2180(v23, v96, &qword_27D80EB30, &qword_227F30448);
  if (v34(&v23[v33], 1, v11) == 1)
  {
    sub_227EB8430(v30, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v32, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v96, type metadata accessor for Configuration);
    v36 = v95;
LABEL_6:
    v38 = &qword_27D80EB50;
    v39 = &qword_227F30470;
    v40 = v23;
    goto LABEL_7;
  }

  v70 = v89;
  sub_227EF9D0C(&v23[v33], v89, type metadata accessor for Configuration);
  v71 = _s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0();
  v36 = v95;
  if (v71)
  {
    v72 = *(v11 + 5);
    v73 = MEMORY[0x22AAAC210]();
    v75 = v74;
    v76 = *(v11 + 5);
    v77 = MEMORY[0x22AAAC210]();
    v79 = v78;
    v81 = sub_227ED43A4(v73, v75, v77, v78);
    sub_227EC15A8(v77, v79);
    sub_227EC15A8(v73, v75);
    sub_227EF9E90(v89, type metadata accessor for Configuration);
    sub_227EB8430(v30, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v32, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v96, type metadata accessor for Configuration);
    result = sub_227EB8430(v23, &qword_27D80EB30, &qword_227F30448);
    if (v81)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_227EF9E90(v70, type metadata accessor for Configuration);
  sub_227EB8430(v30, &qword_27D80EB30, &qword_227F30448);
  sub_227EB8430(v32, &qword_27D80EB30, &qword_227F30448);
  sub_227EF9E90(v96, type metadata accessor for Configuration);
  v40 = v23;
  v38 = &qword_27D80EB30;
  v39 = &qword_227F30448;
LABEL_7:
  sub_227EB8430(v40, v38, v39);
LABEL_8:
  sub_227EB8430(v98, &qword_27D80EB30, &qword_227F30448);
  v41 = v93;
  sub_227EF9CA4(v97, v93, type metadata accessor for Configuration);
  v42 = sub_227F2B304();
  v43 = sub_227F2B8F4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = v11;
    v100 = v95;
    *v44 = 136315138;
    v45 = v88;
    sub_227EF9CA4(v41, v88, type metadata accessor for Configuration);
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    sub_227F2B9A4();

    strcpy(v99, "(manifestURL: ");
    HIBYTE(v99[1]) = -18;
    v46 = sub_227F2B004();
    LODWORD(v89) = v43;
    MEMORY[0x22AAAC3E0](v46);

    MEMORY[0x22AAAC3E0](0x63696C627570202CLL, 0xED0000203A79654BLL);
    v47 = &v45[*(v96 + 5)];
    v48 = sub_227F2B554();
    v50 = v49;
    v51 = v41;
    v52 = sub_227F2B154();
    v54 = v53;
    sub_227EC15A8(v48, v50);
    MEMORY[0x22AAAC3E0](v52, v54);

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    v55 = v99[0];
    v56 = v99[1];
    sub_227EF9E90(v45, type metadata accessor for Configuration);
    sub_227EF9E90(v51, type metadata accessor for Configuration);
    v57 = sub_227ECAC40(v55, v56, &v100);

    *(v44 + 4) = v57;
    _os_log_impl(&dword_227EB2000, v42, v89, "New RRD configuration %s", v44, 0xCu);
    v58 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    v11 = v96;
    MEMORY[0x22AAAD240](v58, -1, -1);
    MEMORY[0x22AAAD240](v44, -1, -1);
  }

  else
  {

    sub_227EF9E90(v41, type metadata accessor for Configuration);
  }

  v59 = v98;
  sub_227EF9CA4(v97, v98, type metadata accessor for Configuration);
  v91(v59, 0, 1, v11);
  v60 = sub_227F2AEA4();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  sub_227F2AE94();
  sub_227EF9EF0(&qword_27D80EB58, type metadata accessor for Configuration);
  v63 = sub_227F2AE84();
  v65 = v64;

  if (v36)
  {
    *v90 = v36;
  }

  else
  {
    strcpy(v99, "rrd.json");
    BYTE1(v99[1]) = 0;
    WORD1(v99[1]) = 0;
    HIDWORD(v99[1]) = -402653184;
    v67 = v84;
    v66 = v85;
    v68 = v82;
    (*(v84 + 104))(v82, *MEMORY[0x277CC91D0], v85);
    sub_227EB84D8();
    v69 = v83;
    sub_227F2B104();
    (*(v67 + 8))(v68, v66);
    sub_227F2B174();
    (*(v86 + 8))(v69, v87);
    return sub_227EC15A8(v63, v65);
  }

  return result;
}

uint64_t sub_227EF4A78(uint64_t a1)
{
  v2 = v1;
  v131 = a1;
  v3 = type metadata accessor for Configuration();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v114 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v123 = v10;
  v124 = &v112 - v9;
  MEMORY[0x28223BE20](v8);
  v118 = &v112 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB50, &qword_227F30470);
  v12 = *(*(v130 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v130);
  v117 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v126 = &v112 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v115 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v112 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v119 = &v112 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v121 = &v112 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v112 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v125 = &v112 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v112 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v112 - v34;
  v36 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings);
  sub_227F282D8(v33);
  v37 = *(v4 + 48);
  v38 = v37(v33, 1, v3);
  v133 = v37;
  v132 = v4 + 48;
  v127 = v2;
  v129 = v35;
  if (v38 == 1)
  {
    v39 = (v2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock(v39);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    sub_227EC2180(v39 + *(v40 + 28), v35, &qword_27D80EB30, &qword_227F30448);
    os_unfair_lock_unlock(v39);
    v41 = v37(v33, 1, v3);
    v42 = v3;
    if (v41 != 1)
    {
      sub_227EB8430(v33, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227EF9D0C(v33, v35, type metadata accessor for Configuration);
    (*(v4 + 56))(v35, 0, 1, v3);
    v42 = v3;
  }

  sub_227F282D8(v28);
  v43 = v133;
  v44 = v133(v28, 1, v42);
  v45 = v125;
  if (v44 == 1)
  {
    sub_227EF9CA4(v131, v125, type metadata accessor for Configuration);
    v46 = v43(v28, 1, v42);
    v47 = v129;
    if (v46 != 1)
    {
      sub_227EB8430(v28, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227EF9D0C(v28, v125, type metadata accessor for Configuration);
    v47 = v129;
  }

  v122 = v4;
  v116 = *(v4 + 56);
  v116(v45, 0, 1, v42);
  v48 = *(v130 + 48);
  v49 = v126;
  sub_227EC2180(v47, v126, &qword_27D80EB30, &qword_227F30448);
  sub_227EC2180(v45, v49 + v48, &qword_27D80EB30, &qword_227F30448);
  v50 = v133;
  if (v133(v49, 1, v42) == 1)
  {
    sub_227EB8430(v45, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v47, &qword_27D80EB30, &qword_227F30448);
    if (v133((v49 + v48), 1, v42) == 1)
    {
      sub_227EB8430(v49, &qword_27D80EB30, &qword_227F30448);
      v51 = v127;
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v62 = v121;
  sub_227EC2180(v49, v121, &qword_27D80EB30, &qword_227F30448);
  if (v50(v49 + v48, 1, v42) == 1)
  {
    sub_227EB8430(v45, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v47, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v62, type metadata accessor for Configuration);
LABEL_17:
    v63 = &qword_27D80EB50;
    v64 = &qword_227F30470;
    v65 = v49;
LABEL_18:
    sub_227EB8430(v65, v63, v64);
    v51 = v127;
LABEL_19:
    v66 = v131;
    v67 = v124;
    sub_227EF9CA4(v131, v124, type metadata accessor for Configuration);
    v68 = (*(v122 + 80) + 24) & ~*(v122 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v51;
    v70 = sub_227EF9D0C(v67, v69 + v68, type metadata accessor for Configuration);
    MEMORY[0x28223BE20](v70);
    *(&v112 - 4) = v66;
    *(&v112 - 3) = v51;
    *(&v112 - 2) = sub_227EF9590;
    *(&v112 - 1) = v69;

    v71 = v128;
    v72 = sub_227EF2ED0(sub_227EFA0AC);
    v73 = v71;
    if (!v71)
    {
      v74 = v72;

      return v74;
    }

    goto LABEL_31;
  }

  v76 = v118;
  sub_227EF9D0C(v49 + v48, v118, type metadata accessor for Configuration);
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    sub_227EF9E90(v76, type metadata accessor for Configuration);
    sub_227EB8430(v45, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v129, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v62, type metadata accessor for Configuration);
    v65 = v49;
    v63 = &qword_27D80EB30;
    v64 = &qword_227F30448;
    goto LABEL_18;
  }

  v77 = *(v42 + 20);
  v78 = MEMORY[0x22AAAC210]();
  v112 = v79;
  v80 = *(v42 + 20);
  v81 = MEMORY[0x22AAAC210]();
  v83 = v82;
  v84 = v112;
  v113 = sub_227ED43A4(v78, v112, v81, v82);
  sub_227EC15A8(v81, v83);
  sub_227EC15A8(v78, v84);
  sub_227EF9E90(v118, type metadata accessor for Configuration);
  sub_227EB8430(v45, &qword_27D80EB30, &qword_227F30448);
  sub_227EB8430(v129, &qword_27D80EB30, &qword_227F30448);
  sub_227EF9E90(v121, type metadata accessor for Configuration);
  sub_227EB8430(v49, &qword_27D80EB30, &qword_227F30448);
  v51 = v127;
  if ((v113 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v129 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state;
  os_unfair_lock_lock((v51 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v52 = (v51 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
  os_unfair_lock_lock((v51 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
  v54 = v119;
  sub_227EC2180(v52 + *(v53 + 28), v119, &qword_27D80EB30, &qword_227F30448);
  v55 = v52;
  v56 = v54;
  os_unfair_lock_unlock(v55);
  v57 = v120;
  sub_227EF9CA4(v131, v120, type metadata accessor for Configuration);
  v116(v57, 0, 1, v42);
  v58 = *(v130 + 48);
  v59 = v54;
  v60 = v117;
  sub_227EC2180(v59, v117, &qword_27D80EB30, &qword_227F30448);
  sub_227EC2180(v57, v60 + v58, &qword_27D80EB30, &qword_227F30448);
  v61 = v133;
  if (v133(v60, 1, v42) == 1)
  {
    sub_227EB8430(v57, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v56, &qword_27D80EB30, &qword_227F30448);
    if (v61(v60 + v58, 1, v42) == 1)
    {
      sub_227EB8430(v60, &qword_27D80EB30, &qword_227F30448);
LABEL_37:
      os_unfair_lock_unlock(&v129[v51]);
      return 1;
    }

    goto LABEL_27;
  }

  v85 = v115;
  sub_227EC2180(v60, v115, &qword_27D80EB30, &qword_227F30448);
  if (v61(v60 + v58, 1, v42) == 1)
  {
    sub_227EB8430(v120, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v56, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v85, type metadata accessor for Configuration);
LABEL_27:
    v86 = &qword_27D80EB50;
    v87 = &qword_227F30470;
    v88 = v60;
    goto LABEL_28;
  }

  v101 = v114;
  sub_227EF9D0C(v60 + v58, v114, type metadata accessor for Configuration);
  if (_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0())
  {
    v102 = *(v42 + 20);
    v103 = MEMORY[0x22AAAC210]();
    v105 = v104;
    v106 = *(v42 + 20);
    v107 = MEMORY[0x22AAAC210]();
    v109 = v108;
    v110 = v60;
    v111 = sub_227ED43A4(v103, v105, v107, v108);
    sub_227EC15A8(v107, v109);
    sub_227EC15A8(v103, v105);
    sub_227EF9E90(v101, type metadata accessor for Configuration);
    sub_227EB8430(v120, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v119, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v85, type metadata accessor for Configuration);
    sub_227EB8430(v110, &qword_27D80EB30, &qword_227F30448);
    v73 = v128;
    if (v111)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  sub_227EF9E90(v101, type metadata accessor for Configuration);
  sub_227EB8430(v120, &qword_27D80EB30, &qword_227F30448);
  sub_227EB8430(v119, &qword_27D80EB30, &qword_227F30448);
  sub_227EF9E90(v85, type metadata accessor for Configuration);
  v88 = v60;
  v86 = &qword_27D80EB30;
  v87 = &qword_227F30448;
LABEL_28:
  sub_227EB8430(v88, v86, v87);
  v73 = v128;
LABEL_29:
  v89 = __swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper), *(v51 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper + 24));
  v90 = MEMORY[0x28223BE20](v89);
  v91 = v131;
  *(&v112 - 2) = v51;
  *(&v112 - 1) = v91;
  v92 = *v90;
  sub_227EEB1E0(sub_227EF95F8);
  if (!v73)
  {
    goto LABEL_37;
  }

  os_unfair_lock_unlock(&v129[v51]);
LABEL_31:
  v93 = v73;
  v94 = sub_227F2B304();
  v95 = sub_227F2B8E4();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v96 = 138412290;
    v98 = v73;
    v99 = _swift_stdlib_bridgeErrorToNSError();
    *(v96 + 4) = v99;
    *v97 = v99;
    _os_log_impl(&dword_227EB2000, v94, v95, "Error applying configuration: %@. Reseting to the initial state.", v96, 0xCu);
    sub_227EB8430(v97, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v97, -1, -1);
    MEMORY[0x22AAAD240](v96, -1, -1);
  }

  sub_227EF304C(v100, v51);
  return swift_willThrow();
}

void sub_227EF58AC(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
  sub_227EF3FF8(v4 + *(v5 + 28), a2, a1, &v6);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_227EF5944@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  result = sub_227EDEF80(a1, (a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper), a3, a4);
  if (!v5)
  {
    v16 = result;
    if (result != 1)
    {
      v17 = type metadata accessor for Manifest();
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
      v18 = (a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
      os_unfair_lock_lock((a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0) + 28);
      sub_227EB8430(v18 + v19, &qword_27D80EB28, &qword_227F30440);
      sub_227EC2180(v14, v18 + v19, &qword_27D80EB28, &qword_227F30440);
      os_unfair_lock_unlock(v18);
      result = sub_227EB8430(v14, &qword_27D80EB28, &qword_227F30440);
      v16 = 2;
    }

    *a5 = v16;
  }

  return result;
}

void sub_227EF5AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v164 = a3;
  v158 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v137 = &v129 - v8;
  v140 = sub_227F2AFF4();
  v139 = *(v140 - 8);
  v9 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v138 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_227F2B524();
  v141 = *(v142 - 8);
  v11 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v148 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_227F2B5A4();
  v144 = *(v145 - 8);
  v13 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_227F2B504();
  v147 = *(v150 - 8);
  v15 = *(v147 + 64);
  MEMORY[0x28223BE20](v150);
  v146 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v152 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v154 = &v129 - v21;
  v153 = type metadata accessor for Configuration();
  v151 = *(v153 - 8);
  v22 = *(v151 + 64);
  MEMORY[0x28223BE20](v153);
  v149 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ContainerizableURL(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_227F2B114();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v129 - v34;
  v36 = type metadata accessor for Manifest();
  v136 = *(v36 - 8);
  v37 = *(v136 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v155 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v129 - v40;
  v156 = type metadata accessor for FileInfo(0);
  v157 = a2;
  sub_227EF9CA4(a2 + *(v156 + 20), v27, type metadata accessor for ContainerizableURL);
  (*(v29 + 32))(v35, v27, v28);
  v42 = sub_227F2AE24();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_227F2AE14();
  v45 = sub_227F2B124();
  if (v3)
  {
    (*(v29 + 8))(v35, v28);

    v47 = v164;
LABEL_3:
    v48 = v157;
LABEL_5:
    v53 = (v48 + *(v156 + 24));
    v54 = *v53;
    v55 = v53[1];
    aBlock = v4;
    LOBYTE(v160) = 1;
    v161 = v54;
    v162 = v55;
    v56 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock;
    v57 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
    v58 = v4;

    sub_227EE1E9C(&aBlock, (v47 + v56), (v47 + v57));

    swift_willThrow();
    return;
  }

  v49 = v45;
  v132 = v33;
  v135 = v28;
  v134 = v41;
  v50 = v46;
  sub_227EF9EF0(&qword_27D80E910, type metadata accessor for Manifest);
  v51 = v155;
  v52 = v50;
  sub_227F2AE04();
  v133 = 0;
  v131 = v36;
  v59 = (v29 + 8);
  v130 = *(v29 + 8);
  v130(v35, v135);
  sub_227EC15A8(v49, v52);

  sub_227EF9D0C(v51, v134, type metadata accessor for Manifest);
  v47 = v164;
  v60 = *(v164 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings);
  v61 = v152;
  sub_227F282D8(v152);
  v62 = v151;
  v63 = *(v151 + 48);
  v64 = v153;
  if (v63(v61, 1, v153) == 1)
  {
    v65 = (v47 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((v47 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    v67 = v61;
    v68 = v154;
    sub_227EC2180(v65 + *(v66 + 28), v154, &qword_27D80EB30, &qword_227F30448);
    v69 = v65;
    v70 = v68;
    os_unfair_lock_unlock(v69);
    v71 = v63(v67, 1, v64);
    v72 = v150;
    if (v71 != 1)
    {
      sub_227EB8430(v67, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    v70 = v154;
    sub_227EF9D0C(v61, v154, type metadata accessor for Configuration);
    (*(v62 + 56))(v70, 0, 1, v64);
    v72 = v150;
  }

  if (v63(v70, 1, v64) == 1)
  {
    sub_227EB8430(v70, &qword_27D80EB30, &qword_227F30448);
    v73 = sub_227F2B304();
    v74 = sub_227F2B8E4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_227EB2000, v73, v74, "CONFIGURATION IS MISSING!", v75, 2u);
      MEMORY[0x22AAAD240](v75, -1, -1);
    }

    sub_227ED687C();
    v4 = swift_allocError();
    *v76 = xmmword_227F303F0;
    *(v76 + 16) = 0;
    swift_willThrow();
    sub_227EF9E90(v134, type metadata accessor for Manifest);
    goto LABEL_3;
  }

  v77 = v149;
  sub_227EF9D0C(v70, v149, type metadata accessor for Configuration);
  v78 = v134;
  v79 = &v134[*(v131 + 40)];
  if (!*(v79 + 1))
  {
    sub_227ED687C();
    v4 = swift_allocError();
    *v85 = 0;
    *(v85 + 8) = 0;
    *(v85 + 16) = 3;
    swift_willThrow();
    sub_227EF9E90(v77, type metadata accessor for Configuration);
    goto LABEL_21;
  }

  v155 = v59;
  v80 = *(v64 + 20);
  v81 = *v79;
  v82 = sub_227F2B134();
  if (v83 >> 60 == 15)
  {
    sub_227ED687C();
    v4 = swift_allocError();
    *v84 = xmmword_227F303E0;
    *(v84 + 16) = 3;
    swift_willThrow();
    sub_227EF9E90(v77, type metadata accessor for Configuration);
    v78 = v134;
LABEL_21:
    sub_227EF9E90(v78, type metadata accessor for Manifest);
    goto LABEL_3;
  }

  v86 = v82;
  v87 = v83;
  v88 = v133;
  v89 = sub_227ED5E00();
  if (v88)
  {
    sub_227EF9E90(v77, type metadata accessor for Configuration);
    sub_227EC1650(v86, v87);
    v47 = v164;
    v78 = v134;
    v4 = v88;
    goto LABEL_21;
  }

  v151 = v80;
  v152 = v86;
  v91 = v89;
  v92 = v90;
  sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540]);
  v93 = v143;
  v94 = v145;
  sub_227F2B4F4();
  sub_227ED3E74(v91, v92);
  sub_227EF96A8(v91, v92);
  v153 = v91;
  v154 = v92;
  v95 = v91;
  v96 = v152;
  sub_227EC15A8(v95, v92);
  v97 = v146;
  sub_227F2B4E4();
  (*(v144 + 8))(v93, v94);
  *&aBlock = v96;
  *(&aBlock + 1) = v87;
  sub_227ED3E74(v96, v87);
  sub_227EC15FC();
  v98 = v148;
  sub_227F2B514();
  sub_227EF9EF0(&qword_27D80EB60, MEMORY[0x277CC5290]);
  v99 = v149;
  v100 = sub_227F2B534();
  sub_227EC15A8(v153, v154);
  sub_227EC1650(v96, v87);
  (*(v141 + 8))(v98, v142);
  (*(v147 + 8))(v97, v72);
  if ((v100 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB68, &qword_227F30478);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227F2C980;
    *(inited + 32) = 0x707954726F727265;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = sub_227F2B934();
    v109 = sub_227ECCC4C(inited);
    swift_setDeallocating();
    sub_227EB8430(inited + 32, &qword_27D80EB70, &unk_227F30480);
    if (qword_27D80DF40 != -1)
    {
      swift_once();
    }

    v110 = sub_227F2B334();
    __swift_project_value_buffer(v110, qword_27D81B210);

    v111 = sub_227F2B304();
    v112 = sub_227F2B8D4();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&aBlock = v114;
      *v113 = 136315138;
      sub_227EF99DC();
      v115 = sub_227F2B5E4();
      v117 = sub_227ECAC40(v115, v116, &aBlock);

      *(v113 + 4) = v117;
      _os_log_impl(&dword_227EB2000, v111, v112, "reportValidationError: %s", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v114);
      MEMORY[0x22AAAD240](v114, -1, -1);
      MEMORY[0x22AAAD240](v113, -1, -1);
    }

    v47 = v164;
    v118 = v134;
    sub_227EF9390(v109);
    v120 = v119;

    v121 = sub_227F2B644();
    v122 = swift_allocObject();
    *(v122 + 16) = v120;
    v162 = sub_227EF99BC;
    v163 = v122;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v160 = sub_227F1FCD8;
    v161 = &block_descriptor_0;
    v123 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v123);

    sub_227ED687C();
    v4 = swift_allocError();
    *v124 = xmmword_227F303D0;
    *(v124 + 16) = 3;
    swift_willThrow();
    sub_227EF9E90(v149, type metadata accessor for Configuration);
    sub_227EF9E90(v118, type metadata accessor for Manifest);
    v48 = v157;
    goto LABEL_5;
  }

  v101 = v99;
  strcpy(&aBlock, "manifest.json");
  HIWORD(aBlock) = -4864;
  v102 = v139;
  v103 = v138;
  v104 = v140;
  (*(v139 + 104))(v138, *MEMORY[0x277CC91D0], v140);
  sub_227EB84D8();
  v105 = v164;
  v106 = v132;
  sub_227F2B104();
  (*(v102 + 8))(v103, v104);
  sub_227EE03E8(v157, v106, (v105 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (v105 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
  v107 = v134;
  v130(v106, v135);
  v125 = v137;
  sub_227EF9CA4(v107, v137, type metadata accessor for Manifest);
  (*(v136 + 56))(v125, 0, 1, v131);
  v126 = (v105 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v105 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v127 = v101;
  v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0) + 28);
  sub_227EB8430(v126 + v128, &qword_27D80EB28, &qword_227F30440);
  sub_227EC2180(v125, v126 + v128, &qword_27D80EB28, &qword_227F30440);
  os_unfair_lock_unlock(v126);
  sub_227EB8430(v125, &qword_27D80EB28, &qword_227F30440);
  sub_227EF9E90(v127, type metadata accessor for Configuration);
  sub_227EF9E90(v107, type metadata accessor for Manifest);
}

uint64_t sub_227EF6E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v289 = a6;
  v255 = a5;
  v254 = a4;
  v291 = a3;
  v292 = a2;
  v301 = a1;
  v248 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v258 = &v237 - v9;
  v290 = type metadata accessor for PersistenceState();
  v10 = *(*(v290 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v290);
  v259 = &v237 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v256 = &v237 - v13;
  v275 = sub_227F2B234();
  v274 = *(v275 - 8);
  v14 = *(v274 + 64);
  MEMORY[0x28223BE20](v275);
  v277 = &v237 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_227F2B274();
  v262 = *(v263 - 8);
  v16 = *(v262 + 64);
  MEMORY[0x28223BE20](v263);
  v261 = &v237 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_227F2AFF4();
  v265 = *(v272 - 1);
  v18 = *(v265 + 8);
  MEMORY[0x28223BE20](v272);
  v264 = &v237 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FileInfo(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v252 = &v237 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v279 = &v237 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v237 - v27;
  v268 = sub_227F2B5A4();
  v267 = *(v268 - 8);
  v29 = *(v267 + 64);
  MEMORY[0x28223BE20](v268);
  v266 = &v237 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_227F2B504();
  v270 = *(v271 - 1);
  v31 = *(v270 + 64);
  MEMORY[0x28223BE20](v271);
  v269 = &v237 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = type metadata accessor for Manifest();
  v33 = *(*(v285 - 1) + 64);
  v34 = MEMORY[0x28223BE20](v285);
  v284 = &v237 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v282 = &v237 - v36;
  v37 = type metadata accessor for ContainerizableURL(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v288 = &v237 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v250 = &v237 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v237 - v44;
  v46 = sub_227F2B114();
  v47 = *(v46 - 8);
  v48 = v47[8];
  v49 = MEMORY[0x28223BE20](v46);
  v247 = &v237 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v260 = &v237 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v276 = &v237 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v278 = &v237 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v273 = &v237 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v257 = &v237 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v281 = &v237 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v65 = &v237 - v64;
  v66 = MEMORY[0x28223BE20](v63);
  v68 = &v237 - v67;
  MEMORY[0x28223BE20](v66);
  v70 = &v237 - v69;
  v251 = v301 + *(v290 + 20);
  sub_227EC2180(v251, v45, &qword_27D80E8F0, &unk_227F2F4B0);
  v253 = v21;
  v72 = *(v21 + 48);
  v71 = v21 + 48;
  v249 = v72;
  if (v72(v45, 1, v20) == 1)
  {
    sub_227EB8430(v45, &qword_27D80E8F0, &unk_227F2F4B0);
    sub_227EF9A28();
    v73 = swift_allocError();
    *v74 = 0xD00000000000002BLL;
    v74[1] = 0x8000000227F34290;
    swift_willThrow();
    v75 = qword_2813CDFF8 + 8;
    v77 = v291;
    v76 = v292;
    v78 = v20;
LABEL_6:
    v96 = (v76 + *(v78 + 24));
    v97 = *v96;
    v98 = v96[1];
    aBlock = v73;
    v294 = 0;
    LOBYTE(v295) = 1;
    v296 = v97;
    v297 = v98;
    v99 = v75[25];
    v100 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
    v101 = v73;

    sub_227EE2F04(&aBlock, (v77 + v99), (v77 + v100));

    result = swift_willThrow();
    *v289 = v73;
    return result;
  }

  v246 = v28;
  v245 = v71;
  v280 = v20;
  v79 = v288;
  sub_227EF9CA4(&v45[*(v20 + 20)], v288, type metadata accessor for ContainerizableURL);
  v81 = v47 + 4;
  v80 = v47[4];
  v80(v68, v79, v46);
  sub_227EF9E90(v45, type metadata accessor for FileInfo);
  v80(v70, v68, v46);
  v286 = v47;
  v84 = v47[2];
  v83 = v47 + 2;
  v82 = v84;
  (v84)(v65, v70, v46);
  v85 = sub_227F2AE24();
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  v283 = sub_227F2AE14();
  v88 = v287;
  v89 = sub_227F2B124();
  if (v88)
  {

    v73 = v88;
    v78 = v280;
    v95 = v286[1];
    v95(v65, v46);
    v95(v70, v46);
    v77 = v291;
    v76 = v292;
    v75 = &qword_2813CDFF8[1];
    goto LABEL_6;
  }

  v91 = v90;
  v287 = v70;
  v241 = v82;
  v242 = v83;
  v243 = v80;
  v244 = v81;
  v92 = v89;
  sub_227EF9EF0(&qword_27D80E910, type metadata accessor for Manifest);
  v93 = v284;
  v94 = v285;
  sub_227F2AE04();
  v240 = v286[1];
  ++v286;
  v240(v65, v46);
  sub_227EC15A8(v92, v91);

  v103 = v93;
  v104 = v282;
  sub_227EF9D0C(v103, v282, type metadata accessor for Manifest);
  v105 = (v104 + v94[9]);
  v106 = *v105;
  v285 = v105[1];
  v107 = v292 + v280[5];
  v108 = v288;
  sub_227EF9CA4(v107, v288, type metadata accessor for ContainerizableURL);
  v243(v281, v108, v46);
  v109 = sub_227F2B124();
  v238 = v106;
  v237 = v107;
  v239 = v46;
  v111 = v109;
  v112 = v110;
  sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540]);
  v113 = v266;
  v114 = v268;
  sub_227F2B4F4();
  sub_227ED3E74(v111, v112);
  sub_227EF96A8(v111, v112);
  sub_227EC15A8(v111, v112);
  v115 = v269;
  sub_227F2B4E4();
  (*(v267 + 8))(v113, v114);
  v116 = v271;
  v296 = v271;
  v297 = sub_227EF9EF0(&qword_27D80E338, MEMORY[0x277CC5290]);
  v117 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v118 = v270;
  (*(v270 + 16))(v117, v115, v116);
  __swift_project_boxed_opaque_existential_1(&aBlock, v296);
  sub_227F2AF34();
  v268 = 0;
  (*(v118 + 8))(v115, v116);
  v119 = v299;
  v120 = v300;
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v284 = sub_227F2B154();
  v122 = v121;
  sub_227EC15A8(v119, v120);
  v123 = v111;
  v76 = v292;
  sub_227EC15A8(v123, v112);
  v240(v281, v239);
  v124 = v246;
  sub_227EF9CA4(v76, v246, type metadata accessor for FileInfo);

  v77 = v291;
  v125 = sub_227F2B304();
  v126 = sub_227F2B8D4();

  v127 = os_log_type_enabled(v125, v126);
  v283 = v122;
  if (v127)
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    LODWORD(v271) = v126;
    v281 = v129;
    aBlock = v129;
    *v128 = 136315650;
    v130 = v238;
    *(v128 + 4) = sub_227ECAC40(v238, v285, &aBlock);
    *(v128 + 12) = 2080;
    *(v128 + 14) = sub_227ECAC40(v284, v122, &aBlock);
    *(v128 + 22) = 2048;
    v131 = v288;
    sub_227EF9CA4(v124 + v280[5], v288, type metadata accessor for ContainerizableURL);
    v132 = v257;
    v133 = v131;
    v134 = v239;
    v243(v257, v133, v239);
    v135 = sub_227F2A850();
    v137 = v136;
    v240(v132, v134);
    if (v137)
    {
      v138 = 0;
    }

    else
    {
      v138 = v135;
    }

    sub_227EF9E90(v124, type metadata accessor for FileInfo);
    *(v128 + 24) = v138;
    _os_log_impl(&dword_227EB2000, v125, v271, "Expected digest: %s actual: %s updateData size: %ld", v128, 0x20u);
    v139 = v281;
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v139, -1, -1);
    v140 = v128;
    v76 = v292;
    MEMORY[0x22AAAD240](v140, -1, -1);

    v141 = v279;
  }

  else
  {
    sub_227EF9E90(v124, type metadata accessor for FileInfo);

    v141 = v279;
    v130 = v238;
  }

  v142 = v284;
  v143 = v241;
  v144 = v283;
  if ((v284 != v130 || v283 != v285) && (sub_227F2BC64() & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB68, &qword_227F30478);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227F2C980;
    *(inited + 32) = 0x707954726F727265;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = sub_227F2B934();
    v210 = sub_227ECCC4C(inited);
    swift_setDeallocating();
    sub_227EB8430(inited + 32, &qword_27D80EB70, &unk_227F30480);
    if (qword_27D80DF40 != -1)
    {
      swift_once();
    }

    v211 = sub_227F2B334();
    __swift_project_value_buffer(v211, qword_27D81B210);

    v212 = sub_227F2B304();
    v213 = sub_227F2B8D4();

    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      aBlock = v215;
      *v214 = 136315138;
      sub_227EF99DC();
      v216 = sub_227F2B5E4();
      v218 = sub_227ECAC40(v216, v217, &aBlock);

      *(v214 + 4) = v218;
      _os_log_impl(&dword_227EB2000, v212, v213, "reportValidationError: %s", v214, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v215);
      v219 = v215;
      v76 = v292;
      MEMORY[0x22AAAD240](v219, -1, -1);
      MEMORY[0x22AAAD240](v214, -1, -1);
    }

    sub_227EF9390(v210);
    v221 = v220;

    v222 = sub_227F2B644();
    v223 = swift_allocObject();
    *(v223 + 16) = v221;
    v297 = sub_227EFA0C8;
    v298 = v223;
    aBlock = MEMORY[0x277D85DD0];
    v294 = 1107296256;
    v295 = sub_227F1FCD8;
    v296 = &block_descriptor_26;
    v224 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v224);

    sub_227ED687C();
    v73 = swift_allocError();
    *v225 = xmmword_227F30400;
    *(v225 + 16) = 3;
    swift_willThrow();
    v240(v287, v239);
    sub_227EF9E90(v282, type metadata accessor for Manifest);
    v78 = v280;
    v75 = qword_2813CDFF8 + 8;
    goto LABEL_6;
  }

  v145 = v239;
  v143(v141, v76);
  v146 = v288;
  sub_227EF9CA4(v237, v288, type metadata accessor for ContainerizableURL);
  v147 = v280;
  v243((v141 + v280[5]), v146, v145);
  v148 = (v76 + v147[6]);
  v149 = *v148;
  v150 = v148[1];
  v151 = *(v76 + v147[7]);
  v152 = v147[9];
  v269 = v141 + v152;
  sub_227EC2180(v76 + v152, v141 + v152, &unk_27D80E3B0, &unk_227F2DB00);
  v153 = (v141 + v147[6]);
  v270 = v149;
  *v153 = v149;
  v153[1] = v150;
  v154 = v147[7];
  v271 = v151;
  *(v141 + v154) = v151;
  v155 = (v141 + v147[8]);
  *v155 = v142;
  v155[1] = v144;
  aBlock = 0x6568636163;
  v294 = 0xE500000000000000;
  v156 = *MEMORY[0x277CC91C0];
  v157 = v265;
  v285 = *(v265 + 13);
  v266 = v265 + 104;
  v158 = v264;
  v159 = v272;
  (v285)(v264, v156, v272);
  v160 = sub_227EB84D8();
  v281 = v150;

  sub_227F2B104();
  v161 = *(v157 + 1);
  (v161)(v158, v159);
  v162 = v261;
  sub_227F2B264();
  v163 = sub_227F2B254();
  v165 = v164;
  (*(v262 + 8))(v162, v263);
  aBlock = v163;
  v294 = v165;
  LODWORD(v263) = *MEMORY[0x277CC91D8];
  (v285)(v158);
  v166 = v273;
  v267 = v160;
  v167 = v278;
  sub_227F2B104();
  v265 = v161;
  (v161)(v158, v159);

  v168 = v240;
  v240(v167, v239);
  v278 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
  v169 = *(v291 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock + 24);
  v170 = *(v291 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock + 32);
  __swift_project_boxed_opaque_existential_1((v291 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), v169);
  v171 = *(v170 + 8);
  v172 = v277;
  v173 = v170;
  v174 = v166;
  v171(v169, v173);
  v175 = v260;
  v176 = v268;
  sub_227F2A3D0(v260);
  v73 = v176;
  if (v176)
  {
    (*(v274 + 8))(v172, v275);
    v177 = v239;
    v168(v174, v239);
    v77 = v291;
    v76 = v292;
    v75 = qword_2813CDFF8 + 8;
    v178 = v168;
    v78 = v280;
    v178(v287, v177);
    sub_227EF9E90(v279, type metadata accessor for FileInfo);
    sub_227EF9E90(v282, type metadata accessor for Manifest);
    goto LABEL_6;
  }

  aBlock = v254;
  v294 = v255;
  v179 = v272;
  (v285)(v158, v263, v272);
  sub_227F2B104();
  (v265)(v158, v179);
  v180 = v239;
  v168(v175, v239);
  v181 = v274;
  v182 = *(v274 + 56);
  v268 = v274 + 56;
  v272 = v182;
  (v182)(v258, 1, 1, v275);
  v183 = v290;
  v184 = v259;
  sub_227EF9CA4(v251, &v259[*(v290 + 20)], type metadata accessor for ResourceInfo);
  v285 = (v301 + *(v183 + 24));
  v185 = v252;
  v186 = v241;
  (v241)(v252, v279, v180);
  v187 = v280;
  v186(v185 + v280[5], v276, v180);
  sub_227EC2180(v269, v185 + v187[9], &unk_27D80E3B0, &unk_227F2DB00);
  v188 = (v185 + v187[6]);
  v189 = v281;
  *v188 = v270;
  v188[1] = v189;
  v190 = v271;
  *(v185 + v187[7]) = v271;
  v191 = (v185 + v187[8]);
  v192 = v283;
  *v191 = v284;
  v191[1] = v192;
  v193 = &v184[*(v183 + 24)];
  sub_227EF9D0C(v185, v193, type metadata accessor for FileInfo);
  (*(v253 + 56))(v193, 0, 1, v187);
  v194 = type metadata accessor for ResourceInfo(0);
  v195 = v194[5];
  v196 = v275;
  (*(v181 + 16))(v193 + v195, v277, v275);
  v197 = v272;
  (v272)(v193 + v195, 0, 1, v196);
  sub_227EC2180(v285 + v194[6], v193 + v194[6], &unk_27D80E3B0, &unk_227F2DB00);
  v198 = v194[8];
  v199 = type metadata accessor for ResourceInfo.DownloadState(0);
  (*(*(v199 - 8) + 56))(v193 + v198, 1, 1, v199);
  v200 = v193 + v194[7];
  *v200 = v190;
  *(v200 + 8) = 0;
  v201 = v193 + v194[9];
  *v201 = 0;
  *(v201 + 8) = 1;
  v202 = v194[10];
  v203 = v259;
  v204 = v193 + v202;
  *v204 = 0u;
  *(v204 + 16) = 0u;
  *(v204 + 32) = 1;
  v197(v203, 1, 1, v196);
  v205 = v301;

  v206 = sub_227EE3498(v258, v203);
  MEMORY[0x28223BE20](v206);
  v207 = v279;
  *(&v237 - 4) = v205;
  *(&v237 - 3) = v207;
  *(&v237 - 2) = v276;
  v77 = v291;
  v208 = v256;
  sub_227EDE1BC(&v278[v291], sub_227EF9A7C, v256);
  (*(v274 + 8))(v277, v196);
  v226 = v239;
  v227 = v240;
  v240(v273, v239);
  sub_227EF9E90(v203, type metadata accessor for PersistenceState);
  sub_227EE3518(v208, v205);
  v227(v276, v226);
  sub_227EF9E90(v279, type metadata accessor for FileInfo);
  v228 = v250;
  sub_227EC2180(v285, v250, &qword_27D80E8F0, &unk_227F2F4B0);
  v229 = v280;
  v230 = v249(v228, 1, v280);
  v76 = v292;
  if (v230 == 1)
  {
    sub_227EB8430(v228, &qword_27D80E8F0, &unk_227F2F4B0);
    v78 = v229;
    sub_227EF9A28();
    v73 = swift_allocError();
    *v231 = 0xD00000000000001DLL;
    v231[1] = 0x8000000227F342C0;
    swift_willThrow();
    v240(v287, v226);
    sub_227EF9E90(v282, type metadata accessor for Manifest);
    v75 = qword_2813CDFF8 + 8;
    goto LABEL_6;
  }

  v240(v287, v226);
  v232 = v228 + v229[5];
  v233 = v288;
  sub_227EF9CA4(v232, v288, type metadata accessor for ContainerizableURL);
  v234 = v226;
  v235 = v247;
  v236 = v243;
  v243(v247, v233, v234);
  sub_227EF9E90(v228, type metadata accessor for FileInfo);
  sub_227EF9E90(v282, type metadata accessor for Manifest);
  return v236(v248, v235, v234);
}

uint64_t sub_227EF8F0C()
{
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_logger;
  v2 = sub_227F2B334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings);

  v4 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL;
  v5 = sub_227F2B114();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock));
  v6 = v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450);
  sub_227EF9E90(v6 + *(v7 + 28), type metadata accessor for PersistenceState);
  v8 = v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EB8430(v8 + *(v9 + 28), &qword_27D80EB28, &qword_227F30440);
  v10 = v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
  sub_227EB8430(v10 + *(v11 + 28), &qword_27D80EB30, &qword_227F30448);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v12, v13);
}

uint64_t type metadata accessor for PersistenceManager()
{
  result = qword_2813CD8D0;
  if (!qword_2813CD8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227EF9124()
{
  v0 = sub_227F2B334();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = sub_227F2B114();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_227EF92E4();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_227EF933C(319, &qword_2813CE018, &qword_27D80EB28, &qword_227F30440);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_227EF933C(319, &qword_2813CE028, &qword_27D80EB30, &qword_227F30448);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_227EF92E4()
{
  if (!qword_2813CE020)
  {
    type metadata accessor for PersistenceState();
    v0 = sub_227F2B2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CE020);
    }
  }
}

void sub_227EF933C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_227F2B2F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_227EF9390(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E470, &qword_227F2DE20);
    v2 = sub_227F2BAB4();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
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
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_227ECA808(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
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

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

_BYTE *sub_227EF9614@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_227EF9A9C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_227EF9B54(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_227EF9BD0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_227EF96A8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_227F2B5A4();
      sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540]);
      result = sub_227F2B4D4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_227EF9888(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_227EF9888(uint64_t a1, uint64_t a2)
{
  result = sub_227F2AEF4();
  if (!result || (result = sub_227F2AF14(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_227F2AF04();
      sub_227F2B5A4();
      sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540]);
      return sub_227F2B4D4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_227EF99DC()
{
  result = qword_27D80EB78;
  if (!qword_27D80EB78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80EB78);
  }

  return result;
}

unint64_t sub_227EF9A28()
{
  result = qword_27D80EB80;
  if (!qword_27D80EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EB80);
  }

  return result;
}

uint64_t sub_227EF9A9C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_227EF9B54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_227F2AF24();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_227F2AEE4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_227F2B144();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_227EF9BD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_227F2AF24();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_227F2AEE4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AAAD240);
  }

  return result;
}

uint64_t sub_227EF9CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EF9D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EF9D74(uint64_t a1)
{
  v4 = *(type metadata accessor for DirectoryCleaner() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_227ED03CC;

  return sub_227EF04C8(a1, v8, v9, v1 + v6, v1 + v7);
}

uint64_t sub_227EF9E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EF9EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227EF9F38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227EFA0C4;

  return sub_227F07E98(a1, v5);
}

uint64_t sub_227EF9FF0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227ED03CC;

  return sub_227F07E98(a1, v5);
}

uint64_t sub_227EFA0D0()
{
  v0 = sub_227F2B6B4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_227F2AE64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_227F2AEA4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_227F304E0;
  sub_227F2AE44();
  sub_227F2AE34();
  sub_227F2AE54();
  v21[0] = v10;
  sub_227EFA358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  memcpy(v21, v20, 0x1A0uLL);
  sub_227EFA3B0();
  v11 = v21[54];
  v12 = sub_227F2AE84();
  if (v11)
  {
  }

  v15 = v12;
  v16 = v13;
  sub_227F2B6A4();
  v17 = sub_227F2B694();
  v19 = v18;
  sub_227EC15A8(v15, v16);

  if (v19)
  {
    return v17;
  }

  else
  {
    return 32123;
  }
}

unint64_t sub_227EFA358()
{
  result = qword_27D80E6B0;
  if (!qword_27D80E6B0)
  {
    sub_227F2AE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6B0);
  }

  return result;
}

unint64_t sub_227EFA3B0()
{
  result = qword_27D80EBB0;
  if (!qword_27D80EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBB0);
  }

  return result;
}

uint64_t sub_227EFA404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EC00, &qword_227F309A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE040();
  sub_227F2BD94();
  v16 = 0;
  sub_227F2BBD4();
  if (!v5)
  {
    v15 = 1;
    sub_227F2BBD4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_227EFA598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736566696E616DLL && a2 == 0xEC0000006C72755FLL;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B5F63696C627570 && a2 == 0xEA00000000007965)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227EFA680(uint64_t a1)
{
  v2 = sub_227EFE040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFA6BC(uint64_t a1)
{
  v2 = sub_227EFE040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFA718(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ECC8, &qword_227F30F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE974();
  sub_227F2BD94();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_227F2BBD4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v21[14] = 1;
  sub_227F2BB94();
  v15 = v3[4];
  v16 = v3[5];
  v21[13] = 2;
  sub_227F2BBD4();
  v17 = v3[6];
  v21[12] = 3;
  sub_227F2BC04();
  v19 = v3[7];
  v20 = v3[8];
  v21[11] = 4;
  sub_227F2BB94();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227EFA8F8()
{
  v1 = *v0;
  v2 = 0x525565746F6D6572;
  v3 = 0x4C5255656C6966;
  v4 = 0x6F43737574617473;
  if (v1 != 3)
  {
    v4 = 1734440037;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x747365676964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227EFA990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EFD934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227EFA9B8(uint64_t a1)
{
  v2 = sub_227EFE974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFA9F4(uint64_t a1)
{
  v2 = sub_227EFE974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFAA48(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ECD8, &qword_227F30F60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE9C8();
  sub_227F2BD94();
  v10[15] = 0;
  sub_227F2BBD4();
  if (!v1)
  {
    v10[14] = 1;
    sub_227F2BBF4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_227EFABE4(uint64_t a1)
{
  v2 = sub_227EFE9C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFAC20(uint64_t a1)
{
  v2 = sub_227EFE9C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFAC5C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_227EFAA48(a1);
}

uint64_t sub_227EFAC7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EC88, &qword_227F30D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE5E8();
  sub_227F2BD94();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v27) = 0;
  sub_227F2BBA4();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v14 = *(v3 + 4);
    v33 = *(v3 + 3);
    v34 = v14;
    v15 = *(v3 + 2);
    v32[0] = *(v3 + 1);
    v32[1] = v15;
    v28 = v13;
    v29 = v33;
    v30 = *(v3 + 4);
    v35 = v3[10];
    v31 = v3[10];
    v27 = v32[0];
    v26 = 1;
    sub_227EC2180(v32, v24, &qword_27D80EC98, &qword_227F30D80);
    sub_227EFE63C();
    sub_227F2BBC4();
    v24[2] = v29;
    v24[3] = v30;
    v25 = v31;
    v24[0] = v27;
    v24[1] = v28;
    sub_227EB8430(v24, &qword_27D80EC98, &qword_227F30D80);
    v16 = v3[11];
    v17 = *(v3 + 96);
    LOBYTE(v22) = 2;
    sub_227F2BBB4();
    v18 = v3[13];
    v19 = *(v3 + 112);
    LOBYTE(v22) = 3;
    sub_227F2BBA4();
    v22 = *(v3 + 15);
    v23 = v3[17];
    v21[15] = 4;
    sub_227EFE690();
    sub_227F2BBC4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227EFAF64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EC10, &qword_227F309B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE094();
  sub_227F2BD94();
  v11 = v3[5];
  v12 = v3[7];
  v61 = v3[6];
  v62 = v12;
  v13 = v3[7];
  v63 = v3[8];
  v14 = v3[1];
  v15 = v3[3];
  v57 = v3[2];
  v58 = v15;
  v16 = v3[3];
  v17 = v3[5];
  v59 = v3[4];
  v60 = v17;
  v18 = v3[1];
  v56[0] = *v3;
  v56[1] = v18;
  v45 = v61;
  v46 = v13;
  v47 = v3[8];
  v41 = v57;
  v42 = v16;
  v43 = v59;
  v44 = v11;
  v39 = v56[0];
  v40 = v14;
  v65 = 0;
  sub_227EC2180(v56, v38, &qword_27D80EC20, &qword_227F309B8);
  sub_227EFE0E8();
  sub_227F2BBC4();
  v38[6] = v45;
  v38[7] = v46;
  v38[8] = v47;
  v38[2] = v41;
  v38[3] = v42;
  v38[4] = v43;
  v38[5] = v44;
  v38[0] = v39;
  v38[1] = v40;
  sub_227EB8430(v38, &qword_27D80EC20, &qword_227F309B8);
  if (!v2)
  {
    v20 = v3[14];
    v21 = v3[16];
    v53 = v3[15];
    v54 = v21;
    v22 = v3[16];
    v55 = v3[17];
    v23 = v3[10];
    v24 = v3[12];
    v49 = v3[11];
    v50 = v24;
    v25 = v3[12];
    v26 = v3[14];
    v51 = v3[13];
    v52 = v26;
    v27 = v3[10];
    v48[0] = v3[9];
    v48[1] = v27;
    v35 = v53;
    v36 = v22;
    v37 = v3[17];
    v31 = v49;
    v32 = v25;
    v33 = v51;
    v34 = v20;
    v29 = v48[0];
    v30 = v23;
    v64 = 1;
    sub_227EC2180(v48, v28, &qword_27D80EC20, &qword_227F309B8);
    sub_227F2BBC4();
    v28[6] = v35;
    v28[7] = v36;
    v28[8] = v37;
    v28[2] = v31;
    v28[3] = v32;
    v28[4] = v33;
    v28[5] = v34;
    v28[0] = v29;
    v28[1] = v30;
    sub_227EB8430(v28, &qword_27D80EC20, &qword_227F309B8);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_227EFB2AC()
{
  v1 = *v0;
  v2 = 0x657474417473616CLL;
  v3 = 0xD000000000000015;
  v4 = 0x636375537473616CLL;
  if (v1 != 3)
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F666E49656C6966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227EFB368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EFDAF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227EFB390(uint64_t a1)
{
  v2 = sub_227EFE5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFB3CC(uint64_t a1)
{
  v2 = sub_227EFE5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFB420()
{
  if (*v0)
  {
    result = 0x74736566696E616DLL;
  }

  else
  {
    result = 0x4973657461647075;
  }

  *v0;
  return result;
}

uint64_t sub_227EFB46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4973657461647075 && a2 == 0xEB000000006F666ELL;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEC0000006F666E49)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227EFB550(uint64_t a1)
{
  v2 = sub_227EFE094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFB58C(uint64_t a1)
{
  v2 = sub_227EFE094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFB5E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EC30, &qword_227F309C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE13C();
  sub_227F2BD94();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_227F2BBD4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v24[14] = 1;
  sub_227F2BBB4();
  v15 = v3[4];
  v24[13] = 2;
  sub_227F2BC04();
  v16 = v3[5];
  v17 = v3[6];
  v24[12] = 3;
  sub_227F2BB94();
  v18 = *(v3 + 56);
  v24[11] = 4;
  sub_227F2BBE4();
  v19 = v3[8];
  v20 = v3[9];
  v24[10] = 5;
  sub_227F2BB94();
  v22 = v3[10];
  v23 = v3[11];
  v24[9] = 6;
  sub_227F2BBD4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227EFB804()
{
  v1 = *v0;
  v2 = 0x747365676964;
  v3 = 0x5F64657461647075;
  if (v1 != 5)
  {
    v3 = 0x5F73657461647075;
  }

  v4 = 0x727574616E676973;
  if (v1 != 3)
  {
    v4 = 0x6574726F70707573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574616D69747365;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_227EFB904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EFDCB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227EFB92C(uint64_t a1)
{
  v2 = sub_227EFE13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFB968(uint64_t a1)
{
  v2 = sub_227EFE13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFB9BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EBB8, &qword_227F306A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFD3E4();
  sub_227F2BD94();
  v11 = v3[1];
  v27[0] = *v3;
  v27[1] = v11;
  v26[0] = 0;
  sub_227EFD438();
  sub_227F2BBC4();
  if (!v2)
  {
    memcpy(v33, v3 + 2, 0x120uLL);
    memcpy(v27, v3 + 2, sizeof(v27));
    v33[311] = 1;
    sub_227EFD48C(v33, v26);
    sub_227EFD4C4();
    sub_227F2BC14();
    memcpy(v26, v27, sizeof(v26));
    sub_227EFD518(v26);
    v12 = v3[23];
    v13 = v3[21];
    v29 = v3[22];
    v30 = v12;
    v14 = v3[23];
    v15 = v3[25];
    v31 = v3[24];
    v32 = v15;
    v16 = v3[21];
    v28[0] = v3[20];
    v28[1] = v16;
    v22 = v29;
    v23 = v14;
    v17 = v3[25];
    v24 = v31;
    v25 = v17;
    v20 = v28[0];
    v21 = v13;
    v33[310] = 2;
    sub_227EC2180(v28, v19, &qword_27D80EBD8, &qword_227F306A8);
    sub_227EFD548();
    sub_227F2BBC4();
    v19[2] = v22;
    v19[3] = v23;
    v19[4] = v24;
    v19[5] = v25;
    v19[0] = v20;
    v19[1] = v21;
    sub_227EB8430(v19, &qword_27D80EBD8, &qword_227F306A8);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227EFBC7C()
{
  v1 = 0x65726F7473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_227EFBCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EFDF28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227EFBCFC(uint64_t a1)
{
  v2 = sub_227EFD3E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFBD38(uint64_t a1)
{
  v2 = sub_227EFD3E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFBD8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ContainerizableURL(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227F2B114();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for FileInfo(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_227EC2180(a1, v15, &qword_27D80E8F0, &unk_227F2F4B0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_227EB8430(v43, &qword_27D80E8F0, &unk_227F2F4B0);
    result = sub_227EB8430(v15, &qword_27D80E8F0, &unk_227F2F4B0);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    sub_227EFD15C(v15, v20, type metadata accessor for FileInfo);
    v31 = sub_227F2B004();
    v39 = v32;
    v40 = v31;
    v33 = &v20[v16[8]];
    v24 = *v33;
    v25 = *(v33 + 1);
    sub_227EFD1C4(&v20[v16[5]], v7, type metadata accessor for ContainerizableURL);
    v35 = v41;
    v34 = v42;
    (*(v41 + 32))(v11, v7, v42);

    v26 = sub_227F2AFE4();
    v27 = v36;
    sub_227EB8430(v43, &qword_27D80E8F0, &unk_227F2F4B0);
    (*(v35 + 8))(v11, v34);
    v37 = v16[6];
    v28 = *&v20[v16[7]];
    v29 = *&v20[v37];
    v30 = *&v20[v37 + 8];

    result = sub_227EFD22C(v20, type metadata accessor for FileInfo);
    v23 = v39;
    v22 = v40;
  }

  *a2 = v22;
  a2[1] = v23;
  a2[2] = v24;
  a2[3] = v25;
  a2[4] = v26;
  a2[5] = v27;
  a2[6] = v28;
  a2[7] = v29;
  a2[8] = v30;
  return result;
}

double sub_227EFC0FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = type metadata accessor for ResourceInfo.DownloadState(0);
  v55 = *(v57 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = type metadata accessor for ResourceInfo(0);
  v23 = v22[6];
  v58 = a1;
  sub_227EC2180(a1 + v23, v21, &unk_27D80E3B0, &unk_227F2DB00);
  v24 = sub_227F2B234();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(v21, 1, v24);
  if (v27 == 1)
  {
    sub_227EB8430(v21, &unk_27D80E3B0, &unk_227F2DB00);
    v28 = 0;
  }

  else
  {
    sub_227F2B184();
    v28 = v29;
    (*(v25 + 8))(v21, v24);
  }

  v62 = v27 == 1;
  v30 = v58;
  sub_227EC2180(v58, v14, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EFBD8C(v14, v63);
  *&v61[55] = v63[3];
  *&v61[39] = v63[2];
  *&v61[23] = v63[1];
  *&v61[71] = v64;
  *&v61[7] = v63[0];
  v31 = v30 + v22[7];
  v53 = *v31;
  v60 = *(v31 + 8);
  sub_227EC2180(v30 + v22[5], v19, &unk_27D80E3B0, &unk_227F2DB00);
  v32 = v26(v19, 1, v24);
  if (v32 == 1)
  {
    sub_227EB8430(v19, &unk_27D80E3B0, &unk_227F2DB00);
    v33 = 0;
  }

  else
  {
    sub_227F2B184();
    v33 = v34;
    (*(v25 + 8))(v19, v24);
  }

  v35 = v57;
  v36 = v54;
  v59 = v32 == 1;
  v37 = v58;
  v38 = v58 + v22[8];
  v39 = v56;
  sub_227EC2180(v38, v56, &qword_27D80E8F8, &qword_227F2F5E0);
  sub_227EC2180(v39, v36, &qword_27D80E8F8, &qword_227F2F5E0);
  if ((*(v55 + 48))(v36, 1, v35) == 1)
  {
    sub_227EFD22C(v37, type metadata accessor for ResourceInfo);
    sub_227EB8430(v39, &qword_27D80E8F8, &qword_227F2F5E0);
    sub_227EB8430(v36, &qword_27D80E8F8, &qword_227F2F5E0);
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v43 = v52;
    sub_227EFD15C(v36, v52, type metadata accessor for ResourceInfo.DownloadState);
    v40 = sub_227F2B004();
    v41 = v44;
    v45 = v43 + *(v35 + 20);
    sub_227F2B184();
    v42 = v46;
    sub_227EFD22C(v37, type metadata accessor for ResourceInfo);
    sub_227EFD22C(v43, type metadata accessor for ResourceInfo.DownloadState);
    sub_227EB8430(v39, &qword_27D80E8F8, &qword_227F2F5E0);
  }

  *a2 = v28;
  v47 = *v61;
  *(a2 + 25) = *&v61[16];
  v48 = *&v61[48];
  *(a2 + 41) = *&v61[32];
  *(a2 + 57) = v48;
  result = *&v61[63];
  *(a2 + 72) = *&v61[63];
  v50 = v60;
  v51 = v59;
  *(a2 + 8) = v62;
  *(a2 + 9) = v47;
  *(a2 + 88) = v53;
  *(a2 + 96) = v50;
  *(a2 + 104) = v33;
  *(a2 + 112) = v51;
  *(a2 + 120) = v40;
  *(a2 + 128) = v41;
  *(a2 + 136) = v42;
  return result;
}

uint64_t sub_227EFC6F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Manifest();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227EC2180(a1, v7, &qword_27D80EB28, &qword_227F30440);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_227EB8430(a1, &qword_27D80EB28, &qword_227F30440);
    result = sub_227EB8430(v7, &qword_27D80EB28, &qword_227F30440);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    sub_227EFD15C(v7, v12, type metadata accessor for Manifest);
    v26 = &v12[v8[9]];
    v27 = *v26;
    v15 = *(v26 + 1);
    v28 = &v12[v8[8]];
    v35 = *v28;
    v36 = v27;
    v37 = v28[8];
    v33 = a1;
    v29 = v8[6];
    v34 = *&v12[v8[7]];
    v30 = &v12[v8[10]];
    v18 = *v30;
    v19 = *(v30 + 1);
    v24 = v12[16];
    v20 = *v12;
    v21 = *(v12 + 1);

    v22 = sub_227F2B004();
    v23 = v31;
    sub_227EB8430(v33, &qword_27D80EB28, &qword_227F30440);
    result = sub_227EFD22C(v12, type metadata accessor for Manifest);
    v17 = v34;
    v16 = v35;
    v14 = v36;
    v25 = v37;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v25;
  a2[4] = v17;
  a2[5] = v18;
  a2[6] = v19;
  a2[7] = v24;
  a2[8] = v20;
  a2[9] = v21;
  a2[10] = v22;
  a2[11] = v23;
  return result;
}

double sub_227EFC98C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v82 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v78 = &v68 - v8;
  MEMORY[0x28223BE20](v7);
  v81 = &v68 - v9;
  v10 = type metadata accessor for ResourceInfo(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v79 = &v68 - v16;
  v17 = type metadata accessor for Configuration();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v69 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v68 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v68 - v29;
  v31 = *(a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings);
  sub_227F282D8(v28);
  v32 = *(v18 + 48);
  v33 = v32(v28, 1, v17);
  v77 = a1;
  if (v33 == 1)
  {
    v34 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    sub_227EC2180(v34 + *(v35 + 28), v30, &qword_27D80EB30, &qword_227F30448);
    os_unfair_lock_unlock(v34);
    if (v32(v28, 1, v17) != 1)
    {
      sub_227EB8430(v28, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227EFD15C(v28, v30, type metadata accessor for Configuration);
    (*(v18 + 56))(v30, 0, 1, v17);
  }

  sub_227EC2180(v30, v25, &qword_27D80EB30, &qword_227F30448);
  v36 = v32(v25, 1, v17);
  v76 = v30;
  if (v36 == 1)
  {
    sub_227EB8430(v25, &qword_27D80EB30, &qword_227F30448);
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
  }

  else
  {
    v37 = v69;
    sub_227EFD15C(v25, v69, type metadata accessor for Configuration);
    v38 = sub_227F2B004();
    v72 = v39;
    v73 = v38;
    v40 = v37 + *(v17 + 20);
    v41 = sub_227F2B554();
    v43 = v42;
    v44 = sub_227F2B154();
    v70 = v45;
    v71 = v44;
    sub_227EC15A8(v41, v43);
    sub_227EFD22C(v37, type metadata accessor for Configuration);
  }

  v47 = v79;
  v46 = v80;
  v48 = v77;
  v49 = (v77 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v77 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v50 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v51 = type metadata accessor for PersistenceState();
  sub_227EFD1C4(v50 + *(v51 + 20), v47, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v49);
  os_unfair_lock_lock(v49);
  sub_227EFD1C4(v50 + *(v51 + 24), v46, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v49);
  v52 = v74;
  sub_227EFD1C4(v46, v74, type metadata accessor for ResourceInfo);
  v53 = sub_227EFC0FC(v52, v84);
  nullsub_1(v84, v53);
  sub_227EFD1C4(v47, v52, type metadata accessor for ResourceInfo);
  v54 = sub_227EFC0FC(v52, v85);
  nullsub_1(v85, v54);
  v86[6] = v84[6];
  v86[7] = v84[7];
  v86[2] = v84[2];
  v86[3] = v84[3];
  v86[4] = v84[4];
  v86[5] = v84[5];
  v86[0] = v84[0];
  v86[1] = v84[1];
  v86[14] = v85[5];
  v86[15] = v85[6];
  v86[16] = v85[7];
  v86[17] = v85[8];
  v86[10] = v85[1];
  v86[11] = v85[2];
  v86[12] = v85[3];
  v86[13] = v85[4];
  v86[8] = v84[8];
  v86[9] = v85[0];
  os_unfair_lock_lock(v49);
  v55 = (v48 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v48 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  v57 = v78;
  sub_227EF34BC(v55 + *(v56 + 28), v50, v83, v78);
  os_unfair_lock_unlock(v55);
  os_unfair_lock_unlock(v49);
  v58 = v57;
  v59 = v81;
  sub_227EFD0EC(v58, v81);
  v60 = v82;
  sub_227EC2180(v59, v82, &qword_27D80EB28, &qword_227F30440);
  sub_227EFC6F4(v60, v83);
  sub_227EB8430(v59, &qword_27D80EB28, &qword_227F30440);
  sub_227EFD22C(v46, type metadata accessor for ResourceInfo);
  sub_227EFD22C(v47, type metadata accessor for ResourceInfo);
  sub_227EB8430(v76, &qword_27D80EB30, &qword_227F30448);
  v61 = v75;
  v62 = v72;
  *v75 = v73;
  v61[1] = v62;
  v63 = v70;
  v61[2] = v71;
  v61[3] = v63;
  memcpy(v61 + 4, v86, 0x120uLL);
  v64 = v83[3];
  *(v61 + 22) = v83[2];
  *(v61 + 23) = v64;
  v65 = v83[5];
  *(v61 + 24) = v83[4];
  *(v61 + 25) = v65;
  result = *v83;
  v67 = v83[1];
  *(v61 + 20) = v83[0];
  *(v61 + 21) = v67;
  return result;
}

uint64_t sub_227EFD0EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EFD15C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EFD1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EFD22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery22SanitizedStateSnapshotV9StoreInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_227EFD2B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 416))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_227EFD314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 416) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 416) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}