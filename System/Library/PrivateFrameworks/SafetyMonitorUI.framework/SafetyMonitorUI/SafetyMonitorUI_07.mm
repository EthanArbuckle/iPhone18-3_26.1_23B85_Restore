uint64_t sub_2646C9228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_264783EE4();
}

uint64_t sub_2646C92B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_264783EE4();
}

uint64_t sub_2646C9320(char *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return sub_264783EE4();
}

uint64_t sub_2646C938C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_264783EE4();
  return sub_2646CA060();
}

uint64_t sub_2646C9414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_2646C9488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_264783EE4();
}

uint64_t (*sub_2646C9500(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646C95A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77610, &qword_26478D9D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77640, &unk_26478DA00);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646C9744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77610, &qword_26478D9D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77640, &unk_26478DA00);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646C987C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77610, &qword_26478D9D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__locationSearchText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77640, &unk_26478DA00);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646C99EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646C9A6C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_264783EE4();
}

uint64_t sub_2646C9B0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_264783EE4();
}

uint64_t (*sub_2646C9B74(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646C9C18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776D8, &qword_26478DC20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77638, &qword_26478D9F8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646C9DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776D8, &qword_26478DC20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77638, &qword_26478D9F8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646C9EF0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776D8, &qword_26478DC20);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__searchedLocations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77638, &qword_26478D9F8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646CA060()
{
  v1 = sub_264785594();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2647855C4();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v9 = sub_264785A44();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_2646D1814;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_119;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v14);
}

void sub_2646CA324(void *a1)
{
  v2 = sub_264785594();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647855C4();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2647855A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 0;
  v15 = a1;
  sub_264783EE4();
  sub_2646CBF08();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v16 = aBlock;
  if (!(aBlock >> 62))
  {
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!sub_264785C14())
  {
    goto LABEL_10;
  }

LABEL_3:
  v40 = v6;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x26673FA30](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  v19 = [v18 placemark];
  v20 = [v19 location];

  if (v20)
  {
    [v20 coordinate];
    v22 = v21;
    v24 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v7;
    aBlock = v22;
    v45 = v24;
    v46 = vdupq_n_s64(0x3F747AE147AE147BuLL);
    v25 = v15;
    sub_264783EE4();
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v2;
    v38 = v3;
    LOBYTE(aBlock) = 1;
    v26 = v25;
    sub_264783EE4();
    sub_2646CBF08();
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    (*(v11 + 104))(v14, *MEMORY[0x277D851B8], v10);
    v27 = sub_264785A64();
    (*(v11 + 8))(v14, v10);
    v28 = swift_allocObject();
    v28[2] = v20;
    v28[3] = v26;
    v28[4] = v18;
    v47 = sub_2646D1864;
    v48 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46.i64[0] = sub_264659F60;
    v46.i64[1] = &block_descriptor_125;
    v29 = _Block_copy(&aBlock);
    v30 = v26;
    v31 = v20;
    v32 = v18;
    v33 = v41;
    sub_2647855B4();
    v43 = MEMORY[0x277D84F90];
    sub_2646683C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    v34 = v40;
    v35 = v37;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v33, v34, v29);
    _Block_release(v29);

    (*(v38 + 8))(v34, v35);
    (*(v42 + 8))(v33, v39);
  }

  else
  {
  }
}

void sub_2646CA8E0(void *a1, char *a2, void *a3)
{
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v11 = a1;
  v12 = sub_264783E14();
  v13 = sub_2647859F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136642819;
    v17 = [v11 debugDescription];
    v18 = sub_264785724();
    v32 = v6;
    v19 = a3;
    v21 = v20;

    v22 = sub_2646DF234(v18, v21, aBlock);
    a3 = v19;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_264605000, v12, v13, "#Initiator,LocationSearchViewModel, checkEligibility, request eligibility for location %{sensitive}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x266740650](v16, -1, -1);
    v23 = v15;
    a2 = v33;
    MEMORY[0x266740650](v23, -1, -1);

    (*(v7 + 8))(v10, v32);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v24 = *&a2[OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_safetyMonitorManager];
  [a3 _coordinate];
  v26 = v25;
  [a3 _coordinate];
  v28 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v26 longitude:v27];
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  aBlock[4] = sub_2646D1870;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2646CB7A4;
  aBlock[3] = &block_descriptor_131;
  v30 = _Block_copy(aBlock);
  v31 = a2;

  [v24 checkEligibilityOfDestination:v28 completionHandler:v30];
  _Block_release(v30);
}

uint64_t sub_2646CABF4(char a1, void *a2, void *a3, id a4)
{
  v8 = sub_264785594();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = *(v102 + 64);
  MEMORY[0x28223BE20](v8);
  v99 = &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2647855C4();
  v100 = *(v11 - 8);
  v101 = v11;
  v12 = *(v100 + 64);
  MEMORY[0x28223BE20](v11);
  v98 = &v92[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_264783E24();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v92[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v97 = &v92[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v92[-v22];
  sub_264783DF4();
  v24 = a2;
  v25 = sub_264783E14();
  v26 = sub_2647859F4();

  v27 = os_log_type_enabled(v25, v26);
  v96 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v93 = v26;
    v29 = v28;
    v94 = swift_slowAlloc();
    aBlock = v94;
    *v29 = 136315395;
    if (a1)
    {
      v30 = 0x64696C6176;
    }

    else
    {
      v30 = 0x64696C61766E69;
    }

    if (a1)
    {
      v31 = 0xE500000000000000;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    v32 = sub_2646DF234(v30, v31, &aBlock);
    v95 = v15;
    v33 = v32;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2085;
    v34 = [v24 debugDescription];
    v35 = sub_264785724();
    v36 = v19;
    v37 = a3;
    v38 = v14;
    v39 = a4;
    v41 = v40;

    v42 = v35;
    v15 = v95;
    v43 = sub_2646DF234(v42, v41, &aBlock);
    a4 = v39;
    v14 = v38;
    a3 = v37;
    v19 = v36;

    *(v29 + 14) = v43;
    _os_log_impl(&dword_264605000, v25, v93, "#Initiator,LocationSearchViewModel, checkEligibility, isValid: %s, location: %{sensitive}s", v29, 0x16u);
    v44 = v94;
    swift_arrayDestroy();
    MEMORY[0x266740650](v44, -1, -1);
    MEMORY[0x266740650](v29, -1, -1);
  }

  v45 = v15[1];
  (v45)(v23, v14);
  if (a3)
  {
    v46 = a3;
    v47 = v97;
    sub_264783DF4();
    v48 = a3;
    v49 = sub_264783E14();
    v50 = sub_2647859D4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v95 = v45;
      v52 = v51;
      v53 = swift_slowAlloc();
      v96 = a4;
      v54 = v53;
      aBlock = v53;
      *v52 = 136315138;
      swift_getErrorValue();
      v55 = sub_264785EF4();
      v57 = sub_2646DF234(v55, v56, &aBlock);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_264605000, v49, v50, "#Initiator,LocationSearchViewModel, checkEligibility, error checking eligibility: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      v58 = v54;
      a4 = v96;
      MEMORY[0x266740650](v58, -1, -1);
      MEMORY[0x266740650](v52, -1, -1);

      (v95)(v47, v14);
    }

    else
    {

      (v45)(v47, v14);
    }

    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v80 = sub_264785A44();
    v81 = swift_allocObject();
    *(v81 + 16) = a3;
    *(v81 + 24) = a4;
    v108 = sub_2646D18C0;
    v109 = v81;
    aBlock = MEMORY[0x277D85DD0];
    v105 = 1107296256;
    v106 = sub_264659F60;
    v107 = &block_descriptor_143;
    v82 = a3;
    v83 = _Block_copy(&aBlock);
    v84 = v82;
    v85 = a4;

    v86 = v98;
    sub_2647855B4();
    aBlock = MEMORY[0x277D84F90];
    sub_2646683C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    v87 = v99;
    v88 = v103;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v86, v87, v83);
    _Block_release(v83);

    (*(v102 + 8))(v87, v88);
    return (*(v100 + 8))(v86, v101);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v59 = aBlock;
  if (aBlock >> 62)
  {
    result = sub_264785C14();
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_14:
      if ((v59 & 0xC000000000000001) != 0)
      {
        v61 = v14;
        v62 = MEMORY[0x26673FA30](0, v59);
      }

      else
      {
        if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v61 = v14;
        v62 = *(v59 + 32);
      }

      v63 = v62;

      v64 = [v63 placemark];
      v65 = [v64 location];

      if (v65)
      {
        [v65 coordinate];
        v67 = v66;
        v68 = v96;
        [v96 coordinate];
        if (v67 == v69)
        {
          [v65 coordinate];
          v71 = v70;
          [v68 coordinate];
          if (v71 == v72)
          {
            sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
            v73 = sub_264785A44();
            v74 = swift_allocObject();
            *(v74 + 16) = a4;
            v108 = sub_2646D1878;
            v109 = v74;
            aBlock = MEMORY[0x277D85DD0];
            v105 = 1107296256;
            v106 = sub_264659F60;
            v107 = &block_descriptor_137;
            v75 = _Block_copy(&aBlock);
            v76 = a4;

            v77 = v98;
            sub_2647855B4();
            aBlock = MEMORY[0x277D84F90];
            sub_2646683C4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
            sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
            v78 = v99;
            v79 = v103;
            sub_264785BD4();
            MEMORY[0x26673F780](0, v77, v78, v75);

            _Block_release(v75);
            (*(v102 + 8))(v78, v79);
            return (*(v100 + 8))(v77, v101);
          }
        }
      }

      else
      {
      }

      v14 = v61;
      goto LABEL_28;
    }
  }

LABEL_28:
  sub_264783DF4();
  v89 = sub_264783E14();
  v90 = sub_2647859D4();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_264605000, v89, v90, "#Initiator,LocationSearchViewModel, checkEligibility, the selected location is not the same as the requested location - will not set the location validity", v91, 2u);
    MEMORY[0x266740650](v91, -1, -1);
  }

  return (v45)(v19, v14);
}

uint64_t sub_2646CB658(uint64_t a1, void *a2)
{
  v3 = sub_264783984();
  [v3 code];

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a2;
  sub_264783EE4();
  return sub_2646CBF08();
}

uint64_t sub_2646CB728(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  a1;
  sub_264783EE4();
  return sub_2646CBF08();
}

void sub_2646CB7A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a3;
  v9 = a4;
  v8(a2, v10, a4);
}

uint64_t (*sub_2646CB84C(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_2646CB8E0;
}

uint64_t sub_2646CB8E0(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  a1[2];
  if (a2)
  {

    sub_264783EE4();
    sub_2646CA060();
    v5 = *a1;
  }

  else
  {
    sub_264783EE4();
    return sub_2646CA060();
  }
}

uint64_t sub_2646CB9C4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E8, &qword_26478DC30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E0, &qword_26478DC28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646CBB64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E8, &qword_26478DC30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E0, &qword_26478DC28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CBC9C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E8, &qword_26478DC30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E0, &qword_26478DC28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646CBE0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646CBE8C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_264783EE4();
  return sub_2646CBF08();
}

uint64_t sub_2646CBF08()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v6 = v0;
  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v11 = 0xEC00000064657461;
    v12 = 0x64696C6156746F6ELL;
    v13 = 0xE700000000000000;
    v14 = 0x64696C61766E69;
    v15 = 0xED00007261466F6FLL;
    if (HIBYTE(v22) != 4)
    {
      v15 = 0xEF65736F6C436F6FLL;
    }

    if (HIBYTE(v22) != 3)
    {
      v14 = 0x5464696C61766E69;
      v13 = v15;
    }

    v16 = 0xEA0000000000676ELL;
    v17 = 0x69746164696C6176;
    if (HIBYTE(v22) != 1)
    {
      v17 = 0x64696C6176;
      v16 = 0xE500000000000000;
    }

    if (HIBYTE(v22))
    {
      v12 = v17;
      v11 = v16;
    }

    if (HIBYTE(v22) <= 2u)
    {
      v18 = v12;
    }

    else
    {
      v18 = v14;
    }

    if (HIBYTE(v22) <= 2u)
    {
      v19 = v11;
    }

    else
    {
      v19 = v13;
    }

    v20 = sub_2646DF234(v18, v19, &v23);

    *(v9 + 4) = v20;
    _os_log_impl(&dword_264605000, v7, v8, "#Initiator,LocationSearchViewModel, set isSelectedLocationValid to %s ", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t LocationSearchViewModel.LocationValidity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64696C6156746F6ELL;
  v3 = 0x64696C61766E69;
  if (v1 != 3)
  {
    v3 = 0x5464696C61766E69;
  }

  v4 = 0x69746164696C6176;
  if (v1 != 1)
  {
    v4 = 0x64696C6176;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t (*sub_2646CC2E4(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return sub_2646CC37C;
}

uint64_t sub_2646CC3A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F0, &unk_26478DC80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77630, &qword_26478D9F0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646CC544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F0, &unk_26478DC80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77630, &qword_26478D9F0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CC67C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F0, &unk_26478DC80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocationValidity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77630, &qword_26478D9F0);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646CC7EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t (*sub_2646CC860(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646CC904(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646CCAA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CCBDC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__destinationType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_2646CCD60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646CCE04(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646CCFA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CD0DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedFenceSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_2646CD260(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646CD304(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77710, &qword_26478DCA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77620, &qword_26478D9E0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646CD4A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77710, &qword_26478DCA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77620, &qword_26478D9E0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CD5DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77710, &qword_26478DCA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__annotations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77620, &qword_26478D9E0);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646CD74C()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v6 = v0;
  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v11 = 0xEA0000000000676ELL;
    v12 = 0x6974736575716572;
    if (HIBYTE(v17) != 1)
    {
      v12 = 0x6574656C706D6F63;
      v11 = 0xE900000000000064;
    }

    if (HIBYTE(v17))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x6575716552746F6ELL;
    }

    if (HIBYTE(v17))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xED0000676E697473;
    }

    v15 = sub_2646DF234(v13, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_264605000, v7, v8, "#Initiator,LocationSearchViewModel, set selectedLocationReverseGeocodeStatus to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2646CD9E0(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v4;
  v8 = sub_264783EE4();
  return a4(v8);
}

uint64_t (*sub_2646CDA60(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return sub_2646CDAF8;
}

uint64_t sub_2646CDB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *a1;
  *(a1 + 9) = v7;
  v9 = v8;
  v10 = sub_264783EE4();
  return a5(v10);
}

uint64_t sub_2646CDBA4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77718, &unk_26478DCF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77618, &qword_26478D9D8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646CDD44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77718, &unk_26478DCF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77618, &qword_26478D9D8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CDE7C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77718, &unk_26478DCF0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocationReverseGeocodeStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77618, &qword_26478D9D8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

double sub_2646CDFEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t (*sub_2646CE064(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_2646CE108(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646CE2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CE3E0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__endLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_2646CE550(uint64_t a1, uint64_t a2)
{
  v4 = sub_264785594();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2647855C4();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v12 = sub_264785A44();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_2646D1808;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_113;
  v15 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v11, v7, v15);
  _Block_release(v15);

  (*(v18 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v17);
}

void sub_2646CE848()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_mkLocalSearchCompleter);

    v3 = sub_264785714();
    [v2 setQueryFragment_];
  }
}

uint64_t sub_2646CE8E8(uint64_t *a1, void *a2)
{
  v4 = sub_264785594();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2647855C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    return sub_2646CE550(*a1, v14);
  }

  v22 = v11;
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v21 = sub_264785A44();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  aBlock[4] = sub_2646D18C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_149;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  v20 = v21;
  MEMORY[0x26673F780](0, v13, v8, v18);
  _Block_release(v18);

  (*(v5 + 8))(v8, v4);
  return (*(v22 + 8))(v13, v9);
}

uint64_t sub_2646CEBD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646CEC20(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_264783EE4();
}

SafetyMonitorUI::LocationSearchViewModel::LocationValidity_optional __swiftcall LocationSearchViewModel.LocationValidity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2646CED08()
{
  *v0;
  *v0;
  *v0;
  sub_264785794();
}

void sub_2646CEE2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657461;
  v4 = 0x64696C6156746F6ELL;
  v5 = 0xE700000000000000;
  v6 = 0x64696C61766E69;
  v7 = 0xED00007261466F6FLL;
  if (v2 != 4)
  {
    v7 = 0xEF65736F6C436F6FLL;
  }

  if (v2 != 3)
  {
    v6 = 0x5464696C61766E69;
    v5 = v7;
  }

  v8 = 0xEA0000000000676ELL;
  v9 = 0x69746164696C6176;
  if (v2 != 1)
  {
    v9 = 0x64696C6176;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

id LocationSearchViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationSearchViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSearchViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646CF2F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationSearchViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall LocationSearchViewModel.completerDidUpdateResults(_:)(MKLocalSearchCompleter a1)
{
  v2 = v1;
  v4 = sub_264785594();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2647855C4();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v15 = a1.super.isa;
  v16 = sub_264783E14();
  v17 = sub_2647859B4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v40 = v4;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    v21 = [(objc_class *)v15 results];
    v38 = v10;
    v22 = v21;
    v23 = sub_264659B70(0, &unk_27FF77730, 0x277CD4E30);
    v39 = v2;
    v24 = v23;
    v25 = sub_2647857F4();

    v26 = MEMORY[0x26673F530](v25, v24);
    v28 = v27;

    v29 = sub_2646DF234(v26, v28, aBlock);
    v2 = v39;

    *(v18 + 4) = v29;
    _os_log_impl(&dword_264605000, v16, v17, "#Initiator,LocationSearchViewModel,MKLocalSearchCompleterDelegate, completion results:%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v30 = v20;
    v4 = v40;
    MEMORY[0x266740650](v30, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);

    (*(v11 + 8))(v14, v38);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v31 = sub_264785A44();
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  *(v32 + 24) = v15;
  aBlock[4] = sub_2646D0314;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_10;
  v33 = _Block_copy(aBlock);
  v34 = v15;
  v35 = v2;

  v36 = v41;
  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  v37 = v44;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v36, v37, v33);
  _Block_release(v33);

  (*(v45 + 8))(v37, v4);
  (*(v42 + 8))(v36, v43);
}

uint64_t sub_2646CF908(void *a1, id a2)
{
  v3 = [a2 results];
  sub_264659B70(0, &unk_27FF77730, 0x277CD4E30);
  v4 = sub_2647857F4();

  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_264785C14();
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v6 = 0;
  v23 = a1;
  v24 = MEMORY[0x277D84F90];
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26673FA30](v7, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      a1 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = [v8 mapItem];
      if (v9)
      {
        break;
      }

LABEL_6:

      ++v7;
      if (v6 == v5)
      {
        a1 = v23;
        goto LABEL_25;
      }
    }

    v10 = v9;
    v11 = [v9 placemark];
    v12 = [v11 location];

    if (!v12)
    {

      goto LABEL_6;
    }

    v13 = [a1 title];
    v14 = sub_264785724();
    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_2647033D0(0, *(v24 + 2) + 1, 1, v24);
    }

    v19 = *(v24 + 2);
    v18 = *(v24 + 3);
    if (v19 >= v18 >> 1)
    {
      v24 = sub_2647033D0((v18 > 1), v19 + 1, 1, v24);
    }

    *(v24 + 2) = v19 + 1;
    v20 = &v24[32 * v19];
    *(v20 + 4) = a1;
    *(v20 + 5) = 0;
    *(v20 + 6) = v14;
    *(v20 + 7) = v16;
    a1 = v23;
  }

  while (v6 != v5);
LABEL_25:

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = a1;
  return sub_264783EE4();
}

uint64_t LocationSearchViewModel.completer(_:_:)(uint64_t a1, void *a2)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v8 = a2;
  v9 = sub_264783E14();
  v10 = sub_2647859D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_264605000, v9, v10, "#Initiator,LocationSearchViewModel,MKLocalSearchCompleterDelegate,%@", v11, 0xCu);
    sub_26468367C(v12);
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

id sub_2646CFDA4(id a1, uint64_t a2)
{
  if (a2 == 4)
  {
    result = [a1 _geoMapItem];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = [result _placeType];
    swift_unknownObjectRelease();
    if (v4 <= 0x11 && ((1 << v4) & 0x2D000) != 0)
    {
      return _s15SafetyMonitorUI0aB11UIUtilitiesC17fullAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(a1);
    }
  }

  v6 = [a1 name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_264785724();
  }

  else
  {
    v8 = 0;
  }

  _s15SafetyMonitorUI0aB11UIUtilitiesC17fullAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(a1);
  return v8;
}

void sub_2646CFED8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v9 = sub_264783E14();
  v10 = sub_2647859B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136642819;
    v14 = sub_264659B70(0, &unk_27FF77870, 0x277CE41F8);
    v15 = MEMORY[0x26673F530](a1, v14);
    v17 = sub_2646DF234(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_264605000, v9, v10, "#Initiator,LocationSearchViewModel,CLLocationManagerDelegate, location results:%{sensitive}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266740650](v13, -1, -1);
    v18 = v12;
    v2 = v22;
    MEMORY[0x266740650](v18, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v19 = *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_mkLocalSearchCompleter);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  if (!sub_264785C14())
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x26673FA30](0, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a1 + 32);
LABEL_8:
    v21 = v20;
LABEL_11:
    [v19 setDeviceLocation_];

    return;
  }

  __break(1u);
}

uint64_t sub_2646D013C(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v7 = a1;
  v8 = sub_264783E14();
  v9 = sub_2647859D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_264605000, v8, v9, "#Initiator,LocationSearchViewModel,CLLocationManagerDelegate, location error:%@", v10, 0xCu);
    sub_26468367C(v11);
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2646D02D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2646D0338()
{
  result = qword_27FF77740;
  if (!qword_27FF77740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77740);
  }

  return result;
}

unint64_t sub_2646D0390()
{
  result = qword_27FF77748;
  if (!qword_27FF77748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77748);
  }

  return result;
}

void sub_2646D05D0()
{
  sub_264656F60(319, &qword_27FF77768);
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_264656F0C(319, &qword_27FF77770, &qword_27FF77658, &qword_26478E4E0);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_264656F0C(319, &qword_27FF77778, &qword_27FF776C0, &unk_26478DA18);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_264656F60(319, &qword_27FF77780);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_2646D15EC(319, &qword_27FF77788, type metadata accessor for SMSessionDestinationType);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            sub_264656F60(319, &qword_27FF77790);
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_264656F0C(319, &qword_27FF77798, &qword_27FF77678, &qword_26478DA10);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_264656F60(319, &unk_27FF777A0);
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  sub_2646D15EC(319, &qword_27FF779B0, type metadata accessor for MKCoordinateRegion);
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
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

void sub_2646D15EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264783EF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MapAnnotationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapAnnotationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2646D1790()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646D17C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2646D1808()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_2646CE848();
}

uint64_t sub_2646D181C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646D1880()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id CheckInOnboardingExampleDataViewController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v9 = sub_264785714();

  sub_264785694();
  v10 = [v7 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v11 = sub_264785714();

  v14.receiver = v0;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithTitle_detailText_symbolName_contentLayout_, v9, v11, 0, 3);

  return v12;
}

Swift::Void __swiftcall CheckInOnboardingExampleDataViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_264784BD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for ExampleDataList();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v11 = v10 + *(v7 + 28);
  v61[15] = 2;
  sub_2647852E4();
  v12 = v63;
  *v11 = v62;
  *(v11 + 1) = v12;
  *(v10 + *(v7 + 32)) = 0;
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77880, &qword_26478DF68));
  v14 = sub_264784784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77888, &qword_26478DF70);
  v15 = *(v4 + 72);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2647889E0;
  sub_264784BB4();
  v62 = v17;
  sub_2646D2534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77898, &qword_26478DF78);
  sub_2646D258C();
  sub_264785BD4();
  sub_264784764();
  v18 = v14;
  v19 = [v18 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = v19;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  v21 = [v18 view];
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  v23 = [v1 contentView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v22 setFrame_];
  [v1 addChildViewController_];
  v32 = [v1 contentView];
  v33 = [v18 view];
  if (!v33)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v34 = v33;
  [v32 addSubview_];

  [v18 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26478B4E0;
  v36 = [v18 view];
  if (!v36)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v1 contentView];
  v40 = [v39 leadingAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v35 + 32) = v41;
  v42 = [v18 view];
  if (!v42)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v1 contentView];
  v46 = [v45 trailingAnchor];

  v47 = [v44 constraintEqualToAnchor_];
  *(v35 + 40) = v47;
  v48 = [v18 view];
  if (!v48)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v49 = v48;
  v50 = [v48 topAnchor];

  v51 = [v1 contentView];
  v52 = [v51 topAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v35 + 48) = v53;
  v54 = [v18 view];

  if (v54)
  {
    v55 = [v54 bottomAnchor];

    v56 = [v1 contentView];
    v57 = [v56 bottomAnchor];

    v58 = [v55 constraintEqualToAnchor_];
    *(v35 + 56) = v58;
    v59 = objc_opt_self();
    sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
    v60 = sub_2647857E4();

    [v59 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

id CheckInOnboardingExampleDataViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingExampleDataViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingExampleDataViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2646D2534()
{
  result = qword_27FF77890;
  if (!qword_27FF77890)
  {
    sub_264784BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77890);
  }

  return result;
}

unint64_t sub_2646D258C()
{
  result = qword_27FF778A0;
  if (!qword_27FF778A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77898, &qword_26478DF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF778A0);
  }

  return result;
}

double sub_2646D26EC()
{
  v1 = v0 + qword_27FF778B0;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2646D2758(double a1, double a2)
{
  v5 = (v2 + qword_27FF778B0);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *sub_2646D2810()
{
  v0 = sub_2646D6224();
  v1 = v0;
  return v0;
}

void sub_2646D283C(uint64_t a1)
{
  v3 = qword_27FF778B8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2646D28F4@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_27FF778C0;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_2646D2948(char *a1)
{
  v2 = *a1;
  v3 = qword_27FF778C0;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id MapAnnotationModel.init(coordinate:annotationType:)(char *a1, double a2, double a3)
{
  v4 = *v3;
  v5 = *MEMORY[0x277D85000];
  v6 = *a1;
  *(v3 + qword_27FF778B8) = 0;
  v7 = (v3 + qword_27FF778B0);
  *v7 = a2;
  v7[1] = a3;
  *(v3 + qword_27FF778C0) = v6;
  v8 = *((v5 & v4) + 0x50);
  v9 = *((v5 & v4) + 0x58);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for MapAnnotationModel();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_2646D2A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v28 = a4;
  v29 = a2;
  v26 = a3;
  v27 = a1;
  v30 = a5;
  v7 = *((*MEMORY[0x277D85000] & *v5) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778C8, &qword_26478DFC0);
  sub_264784884();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778D0, &qword_26478DFC8);
  swift_getTupleTypeMetadata2();
  sub_264785564();
  swift_getWitnessTable();
  v8 = sub_264785394();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = sub_264784264();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v31 = v26;
  v32 = v28;
  v33 = v6;
  v34 = v27;
  v35 = v29;
  sub_2647845C4();
  sub_264785384();
  sub_264784C64();
  WitnessTable = swift_getWitnessTable();
  sub_2647850D4();
  (*(v9 + 8))(v12, v8);
  v36 = WitnessTable;
  v37 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v22 = v14[2];
  v22(v20, v18, v13);
  v23 = v14[1];
  v23(v18, v13);
  v22(v30, v20, v13);
  return (v23)(v20, v13);
}

uint64_t sub_2646D2DE8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v5 = a2;
  v49 = a1;
  v57 = a5;
  v6 = *a2;
  v7 = *MEMORY[0x277D85000];
  v51 = *MEMORY[0x277D85000] & *a2;
  v8 = *((v7 & v6) + 0x50);
  v9 = sub_264785B44();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = *(v8 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778C8, &qword_26478DFC0);
  v24 = sub_264784884();
  v55 = *(v24 - 8);
  v56 = v24;
  v25 = *(v55 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v54 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v58 = &v47 - v29;
  v49(v28);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v47 + 8))(v13, v48);
    type metadata accessor for SafetyMonitorUIUtilities();
    v30 = qword_27FF778C0;
    swift_beginAccess();
    LOBYTE(v73) = *(v5 + v30);
    static SafetyMonitorUIUtilities.iconFor(_:)(&v73, v75);
    v31 = *v75;
    v32 = *&v75[16];
    v33 = v75[25];
    v34 = v75[24];
    v35 = *(v51 + 88);
    sub_26460CDF0(&qword_27FF779D8, &qword_27FF778C8, &qword_26478DFC0);
    sub_264771050(v75, v8, v50);
    sub_2646D6D74(v31, *(&v31 + 1), v32, v34, v33);
  }

  else
  {
    (*(v14 + 32))(v23, v13, v8);
    v49 = v5;
    v36 = *(v51 + 88);
    v37 = *(v14 + 16);
    v37(v21, v23, v8);
    v37(v18, v21, v8);
    sub_26460CDF0(&qword_27FF779D8, &qword_27FF778C8, &qword_26478DFC0);
    sub_264771148(v18, v8);
    v38 = *(v14 + 8);
    v38(v18, v8);
    v38(v21, v8);
    v38(v23, v8);
    v35 = v36;
    v5 = v49;
  }

  v39 = sub_264784724();
  LOBYTE(v64) = 1;
  sub_2646D3474(v5, v52, v53, v71);
  *&v75[23] = v71[1];
  *&v75[7] = v71[0];
  *&v75[39] = v71[2];
  *&v75[55] = v72;
  *&v74[17] = *&v75[16];
  *&v74[33] = *&v75[32];
  *&v74[49] = *&v75[48];
  v73 = v39;
  v74[0] = v64;
  *&v74[64] = *(&v72 + 1);
  *&v74[1] = *v75;
  v41 = v54;
  v40 = v55;
  v42 = v58;
  v43 = v56;
  (*(v55 + 16))(v54, v58, v56);
  v66 = *&v74[16];
  v67 = *&v74[32];
  v68 = *&v74[48];
  v69 = *&v74[64];
  v70[0] = v41;
  v64 = v73;
  v65 = *v74;
  v70[1] = &v64;
  sub_2646D6DD0(&v73, v75);
  v63[0] = v43;
  v63[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778D0, &qword_26478DFC8);
  v44 = sub_26460CDF0(&qword_27FF779D8, &qword_27FF778C8, &qword_26478DFC0);
  v59 = v35;
  v60 = v44;
  WitnessTable = swift_getWitnessTable();
  v62 = sub_26460CDF0(&unk_27FF779E0, &qword_27FF778D0, &qword_26478DFC8);
  sub_264771240(v70, 2uLL, v63);
  sub_26460CD50(&v73, &qword_27FF778D0, &qword_26478DFC8);
  v45 = *(v40 + 8);
  v45(v42, v43);
  *&v75[32] = v66;
  *&v75[48] = v67;
  *&v75[64] = v68;
  v76 = v69;
  *v75 = v64;
  *&v75[16] = v65;
  sub_26460CD50(v75, &qword_27FF778D0, &qword_26478DFC8);
  return (v45)(v41, v43);
}

uint64_t sub_2646D3474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_264783B94();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_264785704();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2647856E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = qword_27FF778B8;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (v14 && (v15 = [v14 name]) != 0)
  {
    v16 = v15;
    sub_264785724();

    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v45[5] = sub_264785754();
    v45[6] = v19;
    sub_264613FC4();
    v20 = sub_264784E44();
    v22 = v21;
    v24 = v23 & 1;
    v44 = v20;
    v42 = v25;
    sub_26460C474(v20, v25, v23 & 1);
    v41 = v22;
  }

  else
  {
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v24 = 0;
  }

  v26 = qword_27FF778C0;
  swift_beginAccess();
  LOBYTE(v45[0]) = *(a1 + v26);
  v45[0] = _s15SafetyMonitorUI0aB11UIUtilitiesC20descriptionStringFor_12originDeviceSSAA17MapAnnotationTypeO_SSSgtFZ_0(v45, a2, a3);
  v45[1] = v27;
  sub_264613FC4();
  v28 = sub_264784E44();
  v30 = v29;
  v32 = v31;
  sub_264785214();
  v33 = sub_264784DE4();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_26460ECC4(v28, v30, v32 & 1);

  sub_26466D538(v44, v42, v24, v41);
  sub_26460C474(v33, v35, v37 & 1);

  sub_26466D57C(v44, v42, v24, v41);
  LOBYTE(v45[0]) = v37 & 1;
  *a4 = v44;
  *(a4 + 8) = v42;
  *(a4 + 16) = v24;
  *(a4 + 24) = v41;
  *(a4 + 32) = v33;
  *(a4 + 40) = v35;
  *(a4 + 48) = v37 & 1;
  *(a4 + 56) = v39;
  sub_26460ECC4(v33, v35, v37 & 1);

  return sub_26466D57C(v44, v42, v24, v41);
}

id MapAnnotationModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MapAnnotationModel.init()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  sub_2646D6290();
}

void sub_2646D3898(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2646D6290();
}

id MapAnnotationModel.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MapAnnotationModel();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2646D3958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  type metadata accessor for MapAnnotationModel();
  result = sub_264785CF4();
  *a2 = result;
  return result;
}

uint64_t sub_2646D39A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  type metadata accessor for MapAnnotationModel();
  result = sub_264783E64();
  *a2 = result;
  return result;
}

double sub_2646D39E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2646D3A64(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *a1;
  v6 = a1[1];

  return sub_264783EE4();
}

double sub_2646D3ADC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_2646D3B54()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

void (*sub_2646D3BE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264623A34;
}

uint64_t sub_2646D3C88(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646D3E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646D3F60(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__mapRegion;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_2646D40D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646D4150(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_2646D422C(v5);
}

uint64_t sub_2646D422C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  LOBYTE(a1) = sub_2646D821C(v10[1], a1);

  if ((a1 & 1) == 0)
  {
    v8 = sub_2647858E4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;

    sub_264635430(0, 0, v6, &unk_26478E1C8, v9);
  }

  return result;
}

uint64_t sub_2646D43A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646D4444, 0, 0);
}

uint64_t sub_2646D4444()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_2647858E4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_2647858B4();

  v4 = sub_2647858A4();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  sub_264635430(0, 0, v1, &unk_26478E1D8, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2646D455C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_2646D45D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_2646D422C(v1);
}

uint64_t (*sub_2646D46A0(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_2646D4734;
}

uint64_t sub_2646D4734(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  if (a2)
  {

    sub_264783ED4();

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_264783EE4();
    sub_2646D422C(v6);

    v7 = *a1;
  }

  else
  {
    v8 = a1[2];
    sub_264783ED4();

    v9 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_264783EE4();
    sub_2646D422C(v9);
  }
}

uint64_t sub_2646D48A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778F0, &unk_26478E068);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2646D4A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778F0, &unk_26478E068);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646D4B78(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778F0, &unk_26478E068);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__annotations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646D4CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_264783E24();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = sub_264783AF4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  sub_2647858B4();
  v4[22] = sub_2647858A4();
  v12 = sub_264785874();
  v4[23] = v12;
  v4[24] = v11;

  return MEMORY[0x2822009F8](sub_2646D4E38, v12, v11);
}

uint64_t sub_2646D4E38()
{
  v0[11] = MEMORY[0x277D84F90];
  v1 = v0 + 11;
  v2 = v0[15];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v3 = v0[12];
  v0[25] = v3;
  if (v3 >> 62)
  {
    result = sub_264785C14();
    v0[26] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[26] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        v0[27] = v5;
        v0[28] = v6;
        v7 = v0[25];
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x26673FA30]();
        }

        else
        {
          v8 = *(v7 + 8 * v5 + 32);
        }

        v9 = v8;
        v0[29] = v8;
        v10 = qword_27FF778C0;
        swift_beginAccess();
        if (v9[v10] == 4)
        {
        }

        else
        {
          v11 = sub_264785E84();

          if ((v11 & 1) == 0)
          {
            v15 = v0[20];
            v14 = v0[21];
            v16 = v0[19];
            v17 = v0[15];
            v18 = objc_opt_self();
            v19 = &v9[qword_27FF778B0];
            swift_beginAccess();
            if ([v18 isLocationShiftRequiredForCoordinate_])
            {
              v20 = 2;
            }

            else
            {
              v20 = 1;
            }

            v21 = *v19;
            v22 = v19[1];
            sub_264783AE4();
            v23 = objc_allocWithZone(MEMORY[0x277CE41F8]);
            v24 = sub_264783A64();
            v25 = [v23 initWithCoordinate:v24 altitude:v20 horizontalAccuracy:v21 verticalAccuracy:v22 timestamp:0.0 referenceFrame:{0.0, -1.0}];
            v0[30] = v25;

            (*(v15 + 8))(v14, v16);
            v26 = *(v17 + 16);
            v27 = v25;
            v28 = swift_task_alloc();
            v0[31] = v28;
            *v28 = v0;
            v28[1] = sub_2646D533C;

            return sub_2646DCEB0(v25);
          }
        }

        v12 = v9;
        MEMORY[0x26673F500]();
        if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_264785814();
        }

        sub_264785844();

        v6 = v0[11];
        v5 = v0[27] + 1;
        if (v5 == v0[26])
        {
          goto LABEL_23;
        }
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_23:
  v29 = v0[25];
  v30 = v0[21];
  v31 = v0[22];
  v32 = v0[18];
  v33 = v0[15];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v34 = v0[13];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[14] = v6;

  sub_264783EE4();
  sub_2646D422C(v34);

  v35 = v0[1];

  return v35();
}

uint64_t sub_2646D533C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = *(v4 + 184);
    v8 = *(v4 + 192);
    v9 = sub_2646D5984;
  }

  else
  {

    *(v4 + 264) = a1;
    v7 = *(v4 + 184);
    v8 = *(v4 + 192);
    v9 = sub_2646D546C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2646D546C()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = qword_27FF778B8;
  swift_beginAccess();
  v4 = *&v2[v3];
  *&v2[v3] = v1;
  v5 = v1;

  MEMORY[0x26673F500](v2);
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_264785814();
  }

  v6 = v0[29];
  v7 = v0[30];
  sub_264785844();

  v8 = v0[11];
  v9 = v0[27] + 1;
  if (v9 == v0[26])
  {
LABEL_4:
    v10 = v0[25];
    v11 = v0[21];
    v12 = v0[22];
    v13 = v0[18];
    v14 = v0[15];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v15 = v0[13];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[14] = v8;

    sub_264783EE4();
    sub_2646D422C(v15);

    v16 = v0[1];

    return v16();
  }

  while (1)
  {
    v0[27] = v9;
    v0[28] = v8;
    v18 = v0[25];
    v19 = (v18 & 0xC000000000000001) != 0 ? MEMORY[0x26673FA30]() : *(v18 + 8 * v9 + 32);
    v20 = v19;
    v0[29] = v19;
    v21 = qword_27FF778C0;
    swift_beginAccess();
    if (v20[v21] != 4)
    {
      break;
    }

LABEL_13:
    v23 = v20;
    MEMORY[0x26673F500]();
    if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_264785814();
    }

    sub_264785844();

    v8 = v0[11];
    v9 = v0[27] + 1;
    if (v9 == v0[26])
    {
      goto LABEL_4;
    }
  }

  v22 = sub_264785E84();

  if (v22)
  {
    goto LABEL_13;
  }

  v26 = v0[20];
  v25 = v0[21];
  v27 = v0[19];
  v28 = v0[15];
  v29 = objc_opt_self();
  v30 = &v20[qword_27FF778B0];
  swift_beginAccess();
  if ([v29 isLocationShiftRequiredForCoordinate_])
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  v32 = *v30;
  v33 = v30[1];
  sub_264783AE4();
  v34 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v35 = sub_264783A64();
  v36 = [v34 initWithCoordinate:v35 altitude:v31 horizontalAccuracy:v32 verticalAccuracy:v33 timestamp:0.0 referenceFrame:{0.0, -1.0}];
  v0[30] = v36;

  (*(v26 + 8))(v25, v27);
  v37 = *(v28 + 16);
  v38 = v36;
  v39 = swift_task_alloc();
  v0[31] = v39;
  *v39 = v0;
  v39[1] = sub_2646D533C;

  return sub_2646DCEB0(v36);
}

uint64_t sub_2646D5984()
{
  v52 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[18];

  sub_264783DE4();
  v4 = v2;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  v9 = v0[29];
  v10 = v0[17];
  v11 = v0[18];
  v12 = v0[16];
  if (v7)
  {
    v50 = v0[18];
    v49 = v0[16];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v51 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_2646DF234(0xD00000000000002BLL, 0x8000000264797D50, &v51);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v9;
    *v14 = v9;
    v16 = v9;
    _os_log_impl(&dword_264605000, v5, v6, "%s: Error happened when trying to resolve address for %@", v13, 0x16u);
    sub_26460CD50(v14, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v13, -1, -1);

    (*(v10 + 8))(v50, v49);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v17 = v0[28];
  v18 = v0[27] + 1;
  if (v18 == v0[26])
  {
LABEL_5:
    v19 = v0[25];
    v20 = v0[21];
    v21 = v0[22];
    v22 = v0[18];
    v23 = v0[15];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v24 = v0[13];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[14] = v17;

    sub_264783EE4();
    sub_2646D422C(v24);

    v25 = v0[1];

    return v25();
  }

  while (1)
  {
    v0[27] = v18;
    v0[28] = v17;
    v27 = v0[25];
    v28 = (v27 & 0xC000000000000001) != 0 ? MEMORY[0x26673FA30]() : *(v27 + 8 * v18 + 32);
    v29 = v28;
    v0[29] = v28;
    v30 = qword_27FF778C0;
    swift_beginAccess();
    if (v29[v30] != 4)
    {
      break;
    }

LABEL_14:
    v32 = v29;
    MEMORY[0x26673F500]();
    if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_264785814();
    }

    sub_264785844();

    v17 = v0[11];
    v18 = v0[27] + 1;
    if (v18 == v0[26])
    {
      goto LABEL_5;
    }
  }

  v31 = sub_264785E84();

  if (v31)
  {
    goto LABEL_14;
  }

  v35 = v0[20];
  v34 = v0[21];
  v36 = v0[19];
  v37 = v0[15];
  v38 = objc_opt_self();
  v39 = &v29[qword_27FF778B0];
  swift_beginAccess();
  if ([v38 isLocationShiftRequiredForCoordinate_])
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  v41 = *v39;
  v42 = v39[1];
  sub_264783AE4();
  v43 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v44 = sub_264783A64();
  v45 = [v43 initWithCoordinate:v44 altitude:v40 horizontalAccuracy:v41 verticalAccuracy:v42 timestamp:0.0 referenceFrame:{0.0, -1.0}];
  v0[30] = v45;

  (*(v35 + 8))(v34, v36);
  v46 = *(v37 + 16);
  v47 = v45;
  v48 = swift_task_alloc();
  v0[31] = v48;
  *v48 = v0;
  v48[1] = sub_2646D533C;

  return sub_2646DCEB0(v45);
}

uint64_t MapViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__safetyCache;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__mapRegion;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__annotations;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t MapViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__safetyCache;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__mapRegion;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC15SafetyMonitorUI12MapViewModel__annotations;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2646D61E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MapViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t sub_2646D6224()
{
  v1 = qword_27FF778B8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2646D62DC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_2646D26EC();
  *(a2 + 8) = v4;
}

__n128 sub_2646D633C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_2646D6348@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2646D6224();
  *a2 = v4;

  return v4;
}

void sub_2646D6384(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2646D283C(v2);
}

uint64_t sub_2646D63C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2646D28F4(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_2646D63FC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2646D2948(&v4);
}

uint64_t type metadata accessor for MapViewModel()
{
  result = qword_27FF77990;
  if (!qword_27FF77990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2646D678C()
{
  sub_264656F0C(319, &unk_27FF779A0, &qword_27FF756F8, &qword_264787DF0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_264683BEC();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_264656F0C(319, &qword_27FF76888, &unk_27FF779C0, qword_26478AEA0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2646D6AAC(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778C8, &qword_26478DFC0);
  sub_264784884();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF778D0, &qword_26478DFC8);
  swift_getTupleTypeMetadata2();
  sub_264785564();
  swift_getWitnessTable();
  sub_264785394();
  sub_264784264();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2646D6BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26460F764;

  return sub_2646D43A8(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646D6CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264611390;

  return sub_2646D4CE8(a1, v4, v5, v6);
}

uint64_t sub_2646D6D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v5 = a4 & 1;
  if (a5)
  {
    return sub_2646D6D84(a1, a2, a3, v5);
  }

  else
  {
    return sub_26466D3B0();
  }
}

uint64_t sub_2646D6D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2646D6DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF778D0, &qword_26478DFC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SafetyCache.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v32 = v0[7];
  v33 = v0[8];
  v31 = v0[9];
  v34 = v0[10];
  v35 = v0[11];
  sub_264785CE4();
  MEMORY[0x26673F4D0](0xD000000000000012, 0x8000000264797DB0);
  if (v1)
  {
    sub_264659B70(0, &qword_27FF77A08, 0x277D4AAB8);
    sub_264785D84();
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 6369134;
  }

  MEMORY[0x26673F4D0](v8, v9);

  MEMORY[0x26673F4D0](0xD000000000000013, 0x8000000264797DD0);
  if (v2)
  {
    sub_264659B70(0, &qword_27FF77A08, 0x277D4AAB8);
    sub_264785D84();
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 6369134;
  }

  MEMORY[0x26673F4D0](v10, v11);

  MEMORY[0x26673F4D0](0xD000000000000018, 0x8000000264797DF0);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_264785C14();
  }

  else
  {
    v12 = *(v4 + 16);
  }

  v13 = sub_264785E44();
  MEMORY[0x26673F4D0](v13);

  MEMORY[0x26673F4D0](0xD000000000000010, 0x8000000264797E10);
  if (v3)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 6369134;
  }

  MEMORY[0x26673F4D0](v14, v15);

  MEMORY[0x26673F4D0](0x636F4C6B636F6C20, 0xEE00206E6F697461);
  if (v5)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v17 = 0xE300000000000000;
    v16 = 6369134;
  }

  MEMORY[0x26673F4D0](v16, v17);

  MEMORY[0x26673F4D0](0xD000000000000014, 0x8000000264797E30);
  if (v6)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    v19 = 0xE300000000000000;
    v18 = 6369134;
  }

  MEMORY[0x26673F4D0](v18, v19);

  MEMORY[0x26673F4D0](0xD000000000000012, 0x8000000264797E50);
  if (v7)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = 0xE300000000000000;
    v20 = 6369134;
  }

  MEMORY[0x26673F4D0](v20, v21);

  MEMORY[0x26673F4D0](0xD000000000000012, 0x8000000264797E70);
  if (v32)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = 0xE300000000000000;
    v22 = 6369134;
  }

  MEMORY[0x26673F4D0](v22, v23);

  MEMORY[0x26673F4D0](0xD000000000000013, 0x8000000264797E90);
  if (v33)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_264785D84();
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v25 = 0xE300000000000000;
    v24 = 6369134;
  }

  MEMORY[0x26673F4D0](v24, v25);

  MEMORY[0x26673F4D0](0xD000000000000014, 0x8000000264797EB0);
  if (v34 >> 60 == 15)
  {
    v26 = 0xE300000000000000;
    v27 = 6369134;
  }

  else
  {
    sub_264785D84();
    v27 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x26673F4D0](v27, v26);

  MEMORY[0x26673F4D0](0x74756F6B726F7720, 0xEF2073746E657645);
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A00, &qword_26478FDC0);
    sub_264785D84();
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v29 = 0xE300000000000000;
    v28 = 6369134;
  }

  MEMORY[0x26673F4D0](v28, v29);

  return 0;
}

double SafetyCache.init(phoneCache:watchCache:)@<D0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v93 = a3;
  v5 = sub_264783E24();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v90 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v86 - v9;
  v89 = sub_264783AF4();
  v10 = *(v89 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v89);
  v88 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v86 - v14;
  v86 = xmmword_26478E1E0;
  *&v103[8] = xmmword_26478E1E0;
  if (a1)
  {
    *&v99 = [a1 deviceStatus];
    if (!a2)
    {
      *(&v99 + 1) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *&v99 = 0;
    if (!a2)
    {
      *(&v99 + 1) = 0;
      goto LABEL_9;
    }
  }

  *(&v99 + 1) = [a2 deviceStatus];
  if (a1)
  {
LABEL_6:
    v16 = [a1 locationsDuringSession];
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    v17 = sub_264785954();

    if (!a2)
    {
      goto LABEL_14;
    }

LABEL_11:
    v18 = [a2 locationsDuringSession];
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    v19 = sub_264785954();

    goto LABEL_16;
  }

LABEL_9:
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    sub_26476E27C(MEMORY[0x277D84F90]);
    v17 = v20;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
    if (a2)
    {
      goto LABEL_11;
    }
  }

LABEL_14:
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    sub_26476E27C(MEMORY[0x277D84F90]);
    v19 = v85;
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

LABEL_16:
  sub_2646D893C(v19, v17);
  *&v100 = v21;
  v22 = a1;
  *(&v100 + 1) = [v22 unlockLocation];
  *&v101 = [v22 lockLocation];
  *v103 = [v22 parkedCarLocation];
  v23 = a2;
  *(&v102 + 1) = [v23 offWristLocation];
  v24 = [v22 mostRecentLocation];
  v96 = v23;
  v25 = [v23 mostRecentLocation];
  v26 = v25;
  v94 = a1;
  v95 = a2;
  if (v24)
  {
    if (v25)
    {
      v27 = v24;
      v26 = v26;
      v28 = [v27 date];
      sub_264783AC4();

      v29 = [v26 date];
      v30 = v88;
      sub_264783AC4();

      v31 = sub_264783A74();
      v32 = v10;
      v33 = *(v10 + 8);
      v34 = v30;
      v35 = v89;
      v33(v34, v89);
      v33(v15, v35);
      a1 = v94;
      if (v31)
      {
        v36 = v26;
      }

      else
      {
        v36 = v27;
      }

      if (v31)
      {
        v26 = v27;
      }
    }

    else
    {
      v32 = v10;
      v26 = v24;
    }
  }

  else
  {
    v32 = v10;
  }

  *(&v101 + 1) = v26;
  v37 = *(&v101 + 1);
  v38 = [v22 startingLocation];

  v39 = v96;
  v40 = [v96 startingLocation];

  if (v38)
  {
    if (v40)
    {
      v38 = v38;
      v41 = v40;
      v42 = [v38 date];
      sub_264783AC4();

      v43 = [v41 date];
      v44 = v88;
      sub_264783AC4();

      v45 = sub_264783A84();
      v46 = *(v32 + 8);
      v47 = v44;
      v48 = v89;
      v46(v47, v89);
      v46(v15, v48);
      if (v45)
      {
        v49 = v41;
      }

      else
      {
        v49 = v38;
      }

      if ((v45 & 1) == 0)
      {
        v38 = v41;
      }
    }

    *&v102 = v38;
    v40 = v38;
    goto LABEL_36;
  }

  *&v102 = v40;
  if (v40)
  {
LABEL_36:
    v40 = v40;
    sub_2646D8E44(&v98, v40);
  }

  if (v37)
  {
    sub_2646D8E44(&v98, v37);
  }

  if (a1)
  {
    v50 = [v22 destinationMapItem];
    if (v50)
    {
      goto LABEL_43;
    }
  }

  if (!v95)
  {
    sub_264655900(*&v103[8], *&v103[16]);
    *&v103[8] = v86;
    goto LABEL_54;
  }

  v50 = [v96 destinationMapItem];
  if (v50)
  {
LABEL_43:
    v51 = v50;
    v52 = sub_264783A14();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0xF000000000000000;
  }

  sub_264655900(*&v103[8], *&v103[16]);
  *&v103[8] = v52;
  *&v103[16] = v54;
  if (!v95 || (v55 = [v96 workoutEvents]) == 0)
  {
LABEL_54:
    v68 = v37;
    v69 = v90;
    sub_264783E04();
    v70 = sub_264783E14();
    v71 = sub_2647859C4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 136315394;
      v97 = &type metadata for SafetyCache;
      v98 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A18, &qword_26478E1F0);
      v74 = sub_264785764();
      v76 = v40;
      v77 = sub_2646DF234(v74, v75, &v98);

      *(v72 + 4) = v77;
      v40 = v76;
      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264797ED0, &v98);
      _os_log_impl(&dword_264605000, v70, v71, "%s, %s: choosing phone workout events", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v73, -1, -1);
      MEMORY[0x266740650](v72, -1, -1);
    }

    (*(v91 + 8))(v69, v92);
    if (v94)
    {
      v78 = [v22 workoutEvents];
      if (v78)
      {
        v79 = v78;
        sub_264659B70(0, &qword_27FF77A10, 0x277D4AC40);
        v57 = sub_2647857F4();

        goto LABEL_63;
      }
    }

    v57 = 0;
    goto LABEL_63;
  }

  v56 = v55;
  sub_264659B70(0, &qword_27FF77A10, 0x277D4AC40);
  v57 = sub_2647857F4();

  if (v57 >> 62)
  {
    v58 = sub_264785C14();
  }

  else
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v87;
  if (!v58)
  {

    goto LABEL_54;
  }

  sub_264783E04();
  v60 = sub_264783E14();
  v61 = sub_2647859C4();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 136315394;
    v97 = &type metadata for SafetyCache;
    v98 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A18, &qword_26478E1F0);
    v64 = sub_264785764();
    v66 = sub_2646DF234(v64, v65, &v98);
    v95 = v40;
    v67 = v66;

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    *(v62 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264797ED0, &v98);
    _os_log_impl(&dword_264605000, v60, v61, "%s, %s: choosing watch workout events", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v63, -1, -1);
    MEMORY[0x266740650](v62, -1, -1);
  }

  else
  {
  }

  (*(v91 + 8))(v59, v92);
LABEL_63:
  *&v103[24] = v57;
  v80 = v102;
  v81 = v93;
  v93[2] = v101;
  v81[3] = v80;
  v82 = v100;
  *v81 = v99;
  v81[1] = v82;
  result = *v103;
  v84 = *&v103[16];
  v81[4] = *v103;
  v81[5] = v84;
  return result;
}

uint64_t sub_2646D7FCC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_264659B70(0, &qword_27FF77A10, 0x277D4AC40);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26673FA30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26673FA30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_264785AE4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_264785AE4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_264785C14();
  }

  result = sub_264785C14();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2646D821C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A20, &qword_26478E380);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26673FA30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26673FA30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_264785AE4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_264785AE4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_264785C14();
  }

  result = sub_264785C14();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

id SafetyCache.phoneDeviceStatus.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *SafetyCache.watchDeviceStatus.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SafetyCache.locationsDuringSession.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void *SafetyCache.unlockLocation.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *SafetyCache.lockLocation.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *SafetyCache.mostRecentLocation.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *SafetyCache.startingLocation.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *SafetyCache.offWristLocation.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *SafetyCache.parkedCarLocation.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t SafetyCache.destinationMapItem.getter()
{
  v1 = *(v0 + 72);
  sub_2646C6804(v1, *(v0 + 80));
  return v1;
}

uint64_t SafetyCache.destinationMapItem.setter(uint64_t a1, uint64_t a2)
{
  result = sub_264655900(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t SafetyCache.workoutEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

void sub_2646D893C(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_264785C04();
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    sub_264785984();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_26467A824();
      return;
    }

    while (1)
    {
      sub_2646D8E44(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_264785C44())
      {
        sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2646D8B30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_264785F44();
  sub_264785794();
  v9 = sub_264785F94();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_264785E84() & 1) != 0)
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

    sub_2646D9A00(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2646D8C80(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](a3);
  v27 = a4;
  MEMORY[0x26673FC80](a4);
  v10 = sub_264785F94();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
    while (1)
    {
      v14 = *(v8 + 48) + 24 * v12;
      v15 = *(v14 + 8);
      v16 = *v14;
      v17 = sub_264785AE4();

      if ((v17 & 1) != 0 && v15 == a3)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v18 = *(v8 + 48) + 24 * v12;
    v19 = *v18;
    v20 = *(v18 + 8);
    LOBYTE(v18) = *(v18 + 16);
    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = v18;
    v21 = v19;
    return 0;
  }

  else
  {
LABEL_7:
    v23 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    v25 = a2;
    sub_2646D9B80(v25, a3, v27, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    *a1 = v25;
    *(a1 + 8) = a3;
    *(a1 + 16) = v27;
    return 1;
  }
}

uint64_t sub_2646D8E44(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_264785C24();

    if (v9)
    {

      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_264785C14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2646D907C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2646D9754(v22 + 1);
    }

    v20 = v8;
    sub_2646D997C(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  v11 = *(v6 + 40);
  v12 = sub_264785AD4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2646D9D50(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_264785AE4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2646D907C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A28, &qword_26478E388);
    v2 = sub_264785CB4();
    v16 = v2;
    sub_264785C04();
    if (sub_264785C44())
    {
      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2646D9754(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_264785AD4();
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

      while (sub_264785C44());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2646D926C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A38, &qword_26478E398);
  result = sub_264785CA4();
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
      sub_264785F44();
      sub_264785794();
      result = sub_264785F94();
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

uint64_t sub_2646D94CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A30, &qword_26478E390);
  result = sub_264785CA4();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_264785F44();
      sub_264785AF4();
      MEMORY[0x26673FC80](v21);
      MEMORY[0x26673FC80](v22);
      result = sub_264785F94();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2646D9754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A28, &qword_26478E388);
  result = sub_264785CA4();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_264785AD4();
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2646D997C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_264785AD4();
  v5 = -1 << *(a2 + 32);
  result = sub_264785BF4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2646D9A00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2646D926C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2646D9EC0();
      goto LABEL_16;
    }

    sub_2646DA2D4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_264785F44();
  sub_264785794();
  result = sub_264785F94();
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

      result = sub_264785E84();
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
  result = sub_264785EB4();
  __break(1u);
  return result;
}

void sub_2646D9B80(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a5)
  {
    sub_2646D94CC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2646DA01C();
      goto LABEL_14;
    }

    sub_2646DA50C(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](a2);
  MEMORY[0x26673FC80](a3);
  v13 = sub_264785F94();
  v14 = -1 << *(v11 + 32);
  a4 = v13 & ~v14;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
    while (1)
    {
      v16 = *(v11 + 48) + 24 * a4;
      v17 = *(v16 + 8);
      v18 = *v16;
      v19 = sub_264785AE4();

      if ((v19 & 1) != 0 && v17 == a2)
      {
        break;
      }

      a4 = (a4 + 1) & v15;
      if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_264785EB4();
    __break(1u);
  }

LABEL_14:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = *(v20 + 48) + 24 * a4;
  *v21 = a1;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_2646D9D50(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2646D9754(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2646DA184();
      goto LABEL_12;
    }

    sub_2646DA76C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_264785AD4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_264785AE4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_264785EB4();
  __break(1u);
}

void *sub_2646D9EC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A38, &qword_26478E398);
  v2 = *v0;
  v3 = sub_264785C94();
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

id sub_2646DA01C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A30, &qword_26478E390);
  v2 = *v0;
  v3 = sub_264785C94();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
        result = v19;
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

id sub_2646DA184()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A28, &qword_26478E388);
  v2 = *v0;
  v3 = sub_264785C94();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_2646DA2D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A38, &qword_26478E398);
  result = sub_264785CA4();
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
      sub_264785F44();

      sub_264785794();
      result = sub_264785F94();
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

uint64_t sub_2646DA50C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A30, &qword_26478E390);
  result = sub_264785CA4();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_264785F44();
      v24 = v20;
      sub_264785AF4();
      MEMORY[0x26673FC80](v21);
      MEMORY[0x26673FC80](v22);
      result = sub_264785F94();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v24;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_2646DA76C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A28, &qword_26478E388);
  result = sub_264785CA4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_264785AD4();
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

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v2 = v26;
        goto LABEL_28;
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

BOOL _s15SafetyMonitorUI0A5CacheV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  v15 = *a2;
  v14 = *(a2 + 8);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v19 = *(a2 + 32);
  v18 = *(a2 + 40);
  v21 = *(a2 + 48);
  v20 = *(a2 + 56);
  v23 = *(a2 + 64);
  v22 = *(a2 + 72);
  v25 = *(a2 + 80);
  v24 = *(a2 + 88);
  if (v2)
  {
    if (!v15)
    {
      return 0;
    }

    v69 = v7;
    v67 = *(a2 + 40);
    v68 = v6;
    v65 = *(a2 + 48);
    v66 = v9;
    v63 = *(a2 + 56);
    v64 = v8;
    v61 = v11;
    v62 = *(a2 + 64);
    v57 = *(a2 + 72);
    v58 = *(a2 + 80);
    v59 = v10;
    v60 = v13;
    v55 = *(a2 + 88);
    v56 = v12;
    sub_264659B70(0, &qword_27FF77A08, 0x277D4AAB8);
    v26 = v15;
    v27 = v2;
    v28 = sub_264785AE4();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v69 = v7;
    v67 = *(a2 + 40);
    v68 = v6;
    v65 = *(a2 + 48);
    v66 = v9;
    v63 = *(a2 + 56);
    v64 = v8;
    v61 = v11;
    v62 = *(a2 + 64);
    v57 = *(a2 + 72);
    v58 = *(a2 + 80);
    v59 = v10;
    v60 = v13;
    v55 = *(a2 + 88);
    v56 = v12;
    if (v15)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF77A08, 0x277D4AAB8);
    v29 = v14;
    v30 = v3;
    v31 = sub_264785AE4();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  sub_2646316E0(v5, v17);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v16)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v33 = v16;
    v34 = v4;
    v35 = sub_264785AE4();

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v69)
  {
    if (!v19)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v36 = v19;
    v37 = v69;
    v38 = sub_264785AE4();

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v68)
  {
    if (!v67)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v39 = v67;
    v40 = v68;
    v41 = sub_264785AE4();

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v67)
  {
    return 0;
  }

  if (v66)
  {
    if (!v65)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v42 = v65;
    v43 = v66;
    v44 = sub_264785AE4();

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v65)
  {
    return 0;
  }

  if (v64)
  {
    if (!v63)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v45 = v63;
    v46 = v64;
    v47 = sub_264785AE4();

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  if (v61)
  {
    if (!v62)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v48 = v62;
    v49 = v61;
    v50 = sub_264785AE4();

    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  if (v60 >> 60 == 15)
  {
    v51 = v58;
    if (v58 >> 60 == 15)
    {
      sub_2646C6804(v59, v60);
      sub_2646C6804(v57, v58);
      sub_264655900(v59, v60);
      goto LABEL_49;
    }

LABEL_46:
    sub_2646C6804(v59, v60);
    sub_2646C6804(v57, v51);
    sub_264655900(v59, v60);
    sub_264655900(v57, v51);
    return 0;
  }

  v51 = v58;
  if (v58 >> 60 == 15)
  {
    goto LABEL_46;
  }

  sub_2646C6804(v59, v60);
  sub_2646C6804(v57, v58);
  v53 = sub_2646C6DE4(v59, v60, v57, v58);
  sub_264655900(v57, v58);
  sub_264655900(v59, v60);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  if (v56)
  {
    if (v55)
    {

      v54 = sub_2646D7FCC(v56, v55);

      if (v54)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v55;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2646DAED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2646DAF1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2646DAF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v41 = a3;
  v47 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A60, qword_26478E448);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = v39 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F00, &unk_26478C050);
  v49 = *(v43 - 8);
  v14 = v49[8];
  v15 = MEMORY[0x28223BE20](v43);
  v42 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v39 - v17;
  v40 = a1;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v50 = sub_2646DB5C4();
  swift_getKeyPath();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;

  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77030, &qword_26478C350);
  type metadata accessor for LocationSearchResultRow(0);
  v39[1] = MEMORY[0x277D83980];
  sub_26460CDF0(&qword_27FF77038, &qword_27FF77030, &qword_26478C350);
  sub_264659D00();
  sub_2646DBEC4(&qword_27FF76F08, type metadata accessor for LocationSearchResultRow);
  v39[0] = v18;
  sub_264785424();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  v21 = swift_allocObject();
  v22 = v41;
  v21[2] = v40;
  v21[3] = a2;
  v21[4] = v22;
  v21[5] = v20;

  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77658, &qword_26478E4E0);
  sub_26460CDF0(&qword_27FF77A68, &qword_27FF77658, &qword_26478E4E0);
  sub_2646DBE6C();
  v24 = v48;
  sub_264785424();
  v25 = v49[2];
  v26 = v42;
  v27 = v18;
  v28 = v43;
  v25(v42, v27, v43);
  v29 = v44;
  v30 = v45;
  v31 = *(v45 + 16);
  v32 = v24;
  v33 = v46;
  v31(v44, v32, v46);
  v34 = v47;
  v25(v47, v26, v28);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A78, &qword_26478E4E8);
  v31(&v34[*(v35 + 48)], v29, v33);
  v36 = *(v30 + 8);
  v36(v48, v33);
  v37 = v49[1];
  v37(v39[0], v28);
  v36(v29, v33);
  return v37(v26, v28);
}

uint64_t sub_2646DB4A4@<X0>(uint64_t a1@<X0>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for LocationSearchResultRow(0);
  v10 = (a3 + v9[6]);
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v8;
  v10[3] = v7;
  *(a3 + v9[7]) = 4;
  v11 = (a3 + v9[5]);
  type metadata accessor for LocationSearchViewModel();
  sub_2646DBEC4(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v12 = v6;
  v13 = v5;

  v14 = a2;
  result = sub_264784174();
  *v11 = result;
  v11[1] = v16;
  *(a3 + v9[8]) = 0;
  return result;
}

uint64_t sub_2646DB5C4()
{
  v76 = *MEMORY[0x277D85DE8];
  v68 = sub_264783824();
  v1 = *(v68 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v0 + 8);
  v66 = *(v0 + 24);
  if (qword_27FF750A0 != -1)
  {
LABEL_47:
    swift_once();
  }

  v4 = off_27FF78D00;
  v5 = off_27FF78D00 + 64;
  v6 = 1 << *(off_27FF78D00 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(off_27FF78D00 + 8);
  v9 = (v6 + 63) >> 6;
  v65 = (v1 + 8);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v63 = 0;
  v69 = MEMORY[0x277D84F90];
  v64 = v4;
  while (v8)
  {
    v11 = v8;
LABEL_11:
    v8 = (v11 - 1) & v11;
    if (v4[2])
    {
      v1 = *(v4[6] + ((v10 << 9) | (8 * __clz(__rbit64(v11)))));
      v13 = sub_264654970(v1);
      if (v14)
      {
        v15 = (v4[7] + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        v18 = sub_264785774();
        v70 = v19;
        v74 = v18;
        v75 = v19;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v20 = sub_264785774();
        v22 = v21;

        v72 = v20;
        v73 = v22;
        v23 = v1;
        v24 = v67;
        sub_264783814();
        sub_264613FC4();
        v25 = sub_264785B74();
        v27 = v26;
        v28 = v24;
        v1 = v23;
        (*v65)(v28, v68);

        v72 = v25;
        v73 = v27;
        sub_2646DBF14();
        sub_2646DBF68();
        v4 = v64;
        LOBYTE(v25) = sub_264785654();

        if (v25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_2647035F8(0, *(v69 + 2) + 1, 1, v69);
          }

          v29 = v69;
          v31 = *(v69 + 2);
          v30 = *(v69 + 3);
          if (v31 >= v30 >> 1)
          {
            v29 = sub_2647035F8((v30 > 1), v31 + 1, 1, v69);
          }

          *(v29 + 2) = v31 + 1;
          v69 = v29;
          *&v29[8 * v31 + 32] = v23;
        }
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_45;
    }

    if (v12 >= v9)
    {
      break;
    }

    v11 = *&v5[8 * v12];
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  v74 = MEMORY[0x277D84F90];
  v32 = *(v69 + 2);
  if (v32)
  {
    v33 = 0;
    v70 = v69 + 32;
    while (1)
    {
      v34 = *&v70[8 * v33];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v36 = v72;
      v37 = MEMORY[0x28223BE20](v35);
      *(&v62 - 2) = v34;
      v38 = *(v36 + 32);
      v39 = v38 & 0x3F;
      v40 = (1 << v38) + 63;
      v1 = v40 >> 6;
      if (v39 <= 0xD)
      {
        break;
      }

      v55 = 8 * (v40 >> 6);

      v68 = v55;
      if (swift_stdlib_isStackAllocationSafe())
      {

        break;
      }

      v56 = swift_slowAlloc();

      v57 = v1;
      v58 = v63;
      v59 = sub_2646DC150(v56, v57, v36, sub_2646DBFC4);
      v63 = v58;
      swift_bridgeObjectRelease_n();
      MEMORY[0x266740650](v56, -1, -1);
      v54 = v59;
LABEL_38:
      ++v33;
      sub_2646BF754(v54);
      if (v33 == v32)
      {
        goto LABEL_43;
      }
    }

    MEMORY[0x28223BE20](v37);
    v42 = &v62 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v41);
    v43 = 0;
    v44 = 0;
    v45 = 1 << *(v36 + 32);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(v36 + 56);
    v48 = (v45 + 63) >> 6;
    while (v47)
    {
      v49 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v50 = v49 | (v44 << 6);
LABEL_33:
      if (*(*(v36 + 48) + 24 * v50 + 8) == v34)
      {
        *&v42[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        if (__OFADD__(v43++, 1))
        {
          goto LABEL_46;
        }
      }
    }

    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v48)
      {
        v54 = sub_2646DC1E0(v42, v1, v43, v36);
        goto LABEL_38;
      }

      v52 = *(v36 + 56 + 8 * v44);
      ++v51;
      if (v52)
      {
        v47 = (v52 - 1) & v52;
        v50 = __clz(__rbit64(v52)) | (v44 << 6);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_43:

  result = v74;
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2646DBBF8@<X0>(uint64_t a1@<X0>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = [*a1 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_264785724();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LocationSearchResultRow(0);
  v13 = (a3 + v12[6]);
  *v13 = 0;
  v13[1] = v5;
  v13[2] = v9;
  v13[3] = v11;
  *(a3 + v12[7]) = v6;
  v14 = (a3 + v12[5]);
  type metadata accessor for LocationSearchViewModel();
  sub_2646DBEC4(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel);
  v15 = v5;
  v16 = a2;
  result = sub_264784174();
  *v14 = result;
  v14[1] = v18;
  *(a3 + v12[8]) = 0;
  return result;
}

unint64_t sub_2646DBD58()
{
  result = qword_27FF77A40;
  if (!qword_27FF77A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77A48, &qword_26478E438);
    sub_26460CDF0(&qword_27FF77A50, &qword_27FF77A58, &qword_26478E440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77A40);
  }

  return result;
}

uint64_t sub_2646DBE0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_2646DBBF8(a1, *(v2 + 40), a2);
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2646DBE60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_2646DB4A4(a1, *(v2 + 40), a2);
}

unint64_t sub_2646DBE6C()
{
  result = qword_27FF77A70;
  if (!qword_27FF77A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77A70);
  }

  return result;
}

uint64_t sub_2646DBEC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2646DBF14()
{
  result = qword_27FF77A80;
  if (!qword_27FF77A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77A80);
  }

  return result;
}

unint64_t sub_2646DBF68()
{
  result = qword_27FF77A88;
  if (!qword_27FF77A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77A88);
  }

  return result;
}

void sub_2646DBFD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v27 = a4;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 24 * v15;
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v16) = *(v16 + 16);
    v25[0] = v17;
    v25[1] = v18;
    v26 = v16;
    v19 = v17;
    v20 = v27(v25);

    if (v4)
    {
      return;
    }

    if (v20)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_16:

        sub_2646DC1E0(a1, a2, v24, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_2646DC150(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_2646DBFD8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2646DC1E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A30, &qword_26478E390);
  result = sub_264785CC4();
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
  v12 = result + 56;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v9 + 40);
    sub_264785F44();
    v21 = v17;
    sub_264785AF4();
    MEMORY[0x26673FC80](v18);
    MEMORY[0x26673FC80](v19);
    result = sub_264785F94();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 24 * v25;
    *v30 = v21;
    *(v30 + 8) = v18;
    *(v30 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2646DC440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27FF77A90;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 32);
  v16[1] = *(v3 + 16);
  v16[2] = v5;
  v16[0] = v4;
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  v17 = *(v3 + 96);
  v16[4] = v7;
  v16[5] = v8;
  v16[3] = v6;
  v9 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v9;
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  v12 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 64) = v12;
  *(a2 + 80) = v13;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return sub_26460B5BC(v16, &v15);
}

uint64_t sub_2646DC4E8(__int128 *a1, void *a2)
{
  v2 = a1[5];
  v22 = a1[4];
  v23 = v2;
  v24 = *(a1 + 12);
  v3 = a1[1];
  v18 = *a1;
  v19 = v3;
  v4 = a1[3];
  v5 = *a2 + qword_27FF77A90;
  v20 = a1[2];
  v21 = v4;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 32);
  v25[1] = *(v5 + 16);
  v25[2] = v7;
  v25[0] = v6;
  v8 = *(v5 + 48);
  v9 = *(v5 + 64);
  v10 = *(v5 + 80);
  v26 = *(v5 + 96);
  v25[4] = v9;
  v25[5] = v10;
  v25[3] = v8;
  v12 = v22;
  v11 = v23;
  v13 = v21;
  *(v5 + 96) = v24;
  *(v5 + 64) = v12;
  *(v5 + 80) = v11;
  *(v5 + 48) = v13;
  v14 = v18;
  v15 = v20;
  *(v5 + 16) = v19;
  *(v5 + 32) = v15;
  *v5 = v14;
  sub_26460B5BC(&v18, &v17);
  return sub_2646DC6D0(v25);
}

uint64_t sub_2646DC5B4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27FF77A90;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  return sub_26460B5BC(v12, &v11);
}

uint64_t sub_2646DC640(uint64_t a1)
{
  v3 = v1 + qword_27FF77A90;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v11[4] = *(v3 + 64);
  v11[5] = v4;
  v12 = *(v3 + 96);
  v5 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v5;
  v6 = *(v3 + 48);
  v11[2] = *(v3 + 32);
  v11[3] = v6;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  return sub_2646DC6D0(v11);
}

id TranscriptHostingController.init(rootView:)(uint64_t a1)
{
  v3 = sub_264784BD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *(a1 + 16);
  v8 = v6;
  v32[0] = *a1;
  v7 = v32[0];
  v32[1] = v6;
  v10 = *(a1 + 48);
  v33 = *(a1 + 32);
  v9 = v33;
  v34 = v10;
  v11 = v1 + qword_27FF77A90;
  *v11 = v32[0];
  *(v11 + 16) = v6;
  *(v11 + 32) = v9;
  *(v11 + 48) = v10;
  v13 = *(a1 + 80);
  v15 = *(a1 + 32);
  v14 = *(a1 + 48);
  v35 = *(a1 + 64);
  v12 = v35;
  v36 = v13;
  v37 = *(a1 + 96);
  *(v11 + 96) = v37;
  *(v11 + 64) = v12;
  *(v11 + 80) = v13;
  v16 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v16;
  v31 = *(a1 + 96);
  v25 = v7;
  v26 = v8;
  v27 = v15;
  v28 = v14;
  sub_26460B5BC(v32, v24);
  sub_26460B5BC(v32, v24);
  v17 = sub_264784784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77888, &qword_26478DF70);
  v18 = *(v4 + 72);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2647889B0;
  v21 = v17;
  sub_264784BB4();
  sub_264784BC4();
  *&v25 = v20;
  sub_2646D2534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77898, &qword_26478DF78);
  sub_2646D258C();
  sub_264785BD4();
  sub_264784764();
  result = [v21 view];
  if (result)
  {
    v23 = result;
    sub_2646DC6D0(v32);
    if (qword_27FF753F8 != -1)
    {
      swift_once();
    }

    [v23 setBackgroundColor_];

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2646DCACC()
{
  v1 = (v0 + qword_27FF77A90);
  v2 = *(v0 + qword_27FF77A90 + 8);
  v3 = *(v0 + qword_27FF77A90 + 48);
  v4 = *(v0 + qword_27FF77A90 + 56);
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[12];

  sub_26460C9F4(v3, v4);
}

id TranscriptHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646DCB84(uint64_t a1)
{
  v1 = (a1 + qword_27FF77A90);
  v2 = *(a1 + qword_27FF77A90 + 8);
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[12];

  sub_26460C9F4(v3, v4);
}

uint64_t type metadata accessor for TranscriptHostingController()
{
  result = qword_27FF77A98;
  if (!qword_27FF77A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2646DCDC4()
{
  type metadata accessor for LocationManager();
  v0 = swift_allocObject();
  if (qword_27FF75008 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  *(v0 + 16) = qword_27FF807E8;
  qword_27FF77AA8 = v0;
}

uint64_t static LocationManager.shared.getter()
{
  if (qword_27FF74FF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2646DCEB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_264783E24();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646DCF88, 0, 0);
}

uint64_t sub_2646DCF88()
{
  v22 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v0[3] + 16);
    v3 = objc_allocWithZone(MEMORY[0x277CBFBE8]);
    v4 = v1;
    v5 = [v3 init];
    v0[9] = v5;
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_2646DD1C8;

    return CachedGeocoder.placemark(forKey:with:)(v4, v5);
  }

  else
  {
    v8 = v0[7];
    sub_264783DE4();
    v9 = sub_264783E14();
    v10 = sub_2647859D4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[7];
    v13 = v0[4];
    v14 = v0[5];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264797FD0, &v21);
      _os_log_impl(&dword_264605000, v9, v10, "%s: reverse geo-coded nil location to nil", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266740650](v16, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_2646DD1C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_2646DD588;
  }

  else
  {

    v5 = sub_2646DD2E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2646DD2E4()
{
  v35 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  sub_264783DE4();
  v3 = v2;
  v4 = sub_264783E14();
  v5 = sub_2647859F4();

  if (!os_log_type_enabled(v4, v5))
  {
    v18 = *(v0 + 64);
    v19 = *(v0 + 32);
    v20 = *(v0 + 40);
    v21 = *(v0 + 16);

    (*(v20 + 8))(v18, v19);
    goto LABEL_9;
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 16);
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v34 = v10;
  *v8 = 136315651;
  *(v8 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264797FD0, &v34);
  *(v8 + 12) = 2117;
  *(v8 + 14) = v7;
  *v9 = v7;
  *(v8 + 22) = 2085;
  if (!v6)
  {
    v22 = *(v0 + 16);
    v13 = 0;
    goto LABEL_7;
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 16);
  v13 = [v11 name];
  if (!v13)
  {
LABEL_7:
    v17 = 0xE000000000000000;
    goto LABEL_8;
  }

  v14 = v13;
  v15 = sub_264785724();
  v17 = v16;

  v13 = v15;
LABEL_8:
  v23 = *(v0 + 40);
  v32 = *(v0 + 32);
  v33 = *(v0 + 64);
  v24 = *(v0 + 16);
  v25 = sub_2646DF234(v13, v17, &v34);

  *(v8 + 24) = v25;
  _os_log_impl(&dword_264605000, v4, v5, "%s: Successfully reverse location: %{sensitive}@ back to address: %{sensitive}s", v8, 0x20u);
  sub_26468367C(v9);
  MEMORY[0x266740650](v9, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x266740650](v10, -1, -1);
  MEMORY[0x266740650](v8, -1, -1);

  (*(v23 + 8))(v33, v32);
LABEL_9:
  v26 = *(v0 + 88);
  v28 = *(v0 + 56);
  v27 = *(v0 + 64);
  v29 = *(v0 + 48);

  v30 = *(v0 + 8);

  return v30(v26);
}

uint64_t sub_2646DD588()
{
  v27 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  sub_264783DE4();
  v4 = v3;
  v5 = v1;
  v6 = sub_264783E14();
  v7 = sub_2647859D4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 96);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 32);
  v13 = *(v0 + 16);
  if (v8)
  {
    v25 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v14 = 136315651;
    *(v14 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264797FD0, &v26);
    *(v14 + 12) = 2117;
    *(v14 + 14) = v13;
    *v15 = v13;
    *(v14 + 22) = 2112;
    v17 = v13;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    v15[1] = v19;
    _os_log_impl(&dword_264605000, v6, v7, "%s: Error happened when try to reverse location:%{sensitive}@ back to address, error:%@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF779D0, &qword_26478A9A0);
    swift_arrayDestroy();
    MEMORY[0x266740650](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x266740650](v16, -1, -1);
    MEMORY[0x266740650](v14, -1, -1);

    (*(v11 + 8))(v25, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 48);

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t LocationManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LocationManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of LocationManager.placemarkForLocation(_:)(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2646DD9A4;

  return v8(a1);
}

uint64_t sub_2646DD9A4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

SafetyMonitorUI::GeofenceSize __swiftcall getGeofenceSizeFromRadius(radius:)(Swift::Double radius)
{
  if (radius == 100.0)
  {
    *v1 = 0;
  }

  else
  {
    if (radius == 250.0)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2 * (radius == 375.0);
    }

    *v1 = v2;
  }

  return result;
}

uint64_t GeofenceSize.hashValue.getter()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

unint64_t sub_2646DDB90()
{
  result = qword_27FF77AB0;
  if (!qword_27FF77AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77AB0);
  }

  return result;
}

uint64_t CriticalAlertOnboardingView.Model.init(for:receiverSessionStatus:)@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, _OWORD *a3@<X8>)
{
  v158 = a3;
  v159 = a2;
  v153 = a1;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v156 = v3;
  v157 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v155 = v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v154 = v143 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v152 = v143 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v150 = v143 - v13;
  MEMORY[0x28223BE20](v12);
  v151 = v143 - v14;
  v15 = sub_264783B94();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_264785704();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2647856E4();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v143 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v143 - v35;
  v37 = sub_264783AF4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = v143 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = v143 - v43;
  if ([objc_opt_self() criticalAlertPreference])
  {
    v45 = v159;
    v46 = v155;
    sub_264783DE4();
    v47 = sub_264783E14();
    v48 = sub_2647859F4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v160[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v160);
      _os_log_impl(&dword_264605000, v47, v48, "#CriticalAlertOnboarding: User is already onboarded! %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v49, -1, -1);
    }

    result = (*(v157 + 8))(v46, v156);
    goto LABEL_5;
  }

  v144 = v31;
  v146 = v36;
  v147 = v42;
  v145 = v26;
  v143[1] = v22;
  v148 = v18;
  v149 = v44;
  v155 = v37;
  v53 = v159;
  if (!v159)
  {
    v57 = v154;
    sub_264783DE4();
    v58 = sub_264783E14();
    v59 = sub_2647859D4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v160[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v160);
      _os_log_impl(&dword_264605000, v58, v59, "#CriticalAlertOnboarding: Unable to lookup receiverSessionStatus from safetyCacheViewModel %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x266740650](v61, -1, -1);
      MEMORY[0x266740650](v60, -1, -1);
    }

    result = (*(v157 + 8))(v57, v156);
    goto LABEL_5;
  }

  v54 = v153;
  if (v153 == 1)
  {
    v55 = v38;
    v56 = v34;
    if ([v159 sessionState]!= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v62 = v159;
    if (v54 != 3 || (v63 = v62, v55 = v38, v56 = v34, [v62 sessionState]!= 3) && [v63 sessionState]!= 4 && [v63 sessionState]!= 9)
    {
LABEL_19:
      v72 = v152;
      sub_264783DE4();
      v73 = v53;
      v74 = sub_264783E14();
      v75 = sub_2647859F4();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v160[0] = v77;
        *v76 = 136315650;
        v78 = [objc_opt_self() convertSessionStateToString_];
        v79 = sub_264785724();
        v81 = v80;

        v82 = sub_2646DF234(v79, v81, v160);

        *(v76 + 4) = v82;
        *(v76 + 12) = 2080;
        v161[0] = v153;
        type metadata accessor for SMMessageType(0);
        v83 = sub_264785764();
        v85 = sub_2646DF234(v83, v84, v160);

        *(v76 + 14) = v85;
        *(v76 + 22) = 2080;
        *(v76 + 24) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v160);
        _os_log_impl(&dword_264605000, v74, v75, "#CriticalAlertOnboarding: Not needed for sessionState: %s messageType: %s %s", v76, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v77, -1, -1);
        MEMORY[0x266740650](v76, -1, -1);
      }

      else
      {
      }

      result = (*(v157 + 8))(v72, v156);
      goto LABEL_5;
    }
  }

  v64 = [v53 coarseEstimatedEndDate];
  if (v64)
  {
    v65 = v147;
    v66 = v64;
    sub_264783AC4();

    v67 = *(v55 + 32);
    v68 = v155;
    v67(v56, v65, v155);
    v69 = *(v55 + 56);
    v69(v56, 0, 1, v68);
    v70 = v146;
    v67(v146, v56, v68);
    v69(v70, 0, 1, v68);
    v71 = *(v55 + 48);
  }

  else
  {
    v86 = *(v55 + 56);
    v68 = v155;
    (v86)(v56, 1, 1, v155);
    v87 = [v53 estimatedEndDate];
    v70 = v146;
    if (v87)
    {
      v88 = v144;
      v89 = v87;
      sub_264783AC4();

      v90 = v88;
      v65 = v147;
    }

    else
    {
      v65 = v147;
      v90 = v144;
    }

    v91 = v90;
    v86();
    sub_26460CF84(v91, v70);
    v71 = *(v55 + 48);
    if (v71(v56, 1, v68) != 1)
    {
      sub_2646B9898(v56);
    }
  }

  v92 = v149;
  if (v71(v70, 1, v68) == 1)
  {
    sub_2646B9898(v70);
    v93 = v150;
    sub_264783DE4();
    v94 = sub_264783E14();
    v95 = sub_2647859D4();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v160[0] = v97;
      *v96 = 136315138;
      *(v96 + 4) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v160);
      _os_log_impl(&dword_264605000, v94, v95, "#CriticalAlertOnboarding: Unable to lookup estimatedEndDate in receiverSessionStatus in SafetyCacheViewModel %s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x266740650](v97, -1, -1);
      MEMORY[0x266740650](v96, -1, -1);
      v98 = v159;
    }

    else
    {

      v94 = v159;
    }

    result = (*(v157 + 8))(v93, v156);
    goto LABEL_5;
  }

  (*(v55 + 32))(v92, v70, v68);
  v99 = [objc_allocWithZone(MEMORY[0x277D4AA90]) init];
  v100 = v159;
  v101 = [v159 initiatorHandle];
  v102 = [v101 primaryHandle];

  if (!v102)
  {
    sub_264785724();
    v102 = sub_264785714();
  }

  v103 = [v99 contactWith_];

  v104 = sub_264785B14();
  v154 = v105;

  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v107 = [objc_opt_self() bundleForClass_];
  v108 = [v100 sessionType];
  if (v108 > 1)
  {
    if ((v108 - 2) < 2)
    {
      v109 = [v100 destinationType];
      v150 = v104;
      v152 = v107;
      if (v109 == 3 || v109 == 2)
      {
        sub_2647856D4();
        sub_2647856C4();
        v110 = v154;
        sub_2647856B4();
        sub_2647856C4();
        v121 = sub_264783A64();
        v122 = [v121 roundedTime];

        sub_264783AC4();
        v123 = sub_264783A64();
        v124 = [v123 absoluteTimeString:0 preposition:1 capitalized:0];

        sub_264785724();
        (*(v55 + 8))(v65, v68);
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        v125 = v107;
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();
        v110 = v154;
        sub_2647856B4();
        sub_2647856C4();
        v111 = sub_264783A64();
        v112 = [v111 roundedTime];

        sub_264783AC4();
        v113 = sub_264783A64();
        v126 = [v113 absoluteTimeString:0 preposition:1 capitalized:0];

        sub_264785724();
        (*(v55 + 8))(v65, v68);
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        v127 = v152;
        sub_264783B84();
      }

      goto LABEL_46;
    }

    if (v108 == 4)
    {
      sub_2647856D4();
      sub_2647856C4();
      v150 = v104;
      v110 = v154;
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      v120 = v107;
      sub_264783B84();
      v152 = v107;
      goto LABEL_46;
    }

LABEL_44:
    (*(v55 + 8))(v92, v68);

LABEL_5:
    v52 = v158;
    *v158 = 0u;
    v52[1] = 0u;
    return result;
  }

  if (v108 != 1)
  {
    goto LABEL_44;
  }

  sub_2647856D4();
  sub_2647856C4();
  v150 = v104;
  v110 = v154;
  sub_2647856B4();
  sub_2647856C4();
  v114 = sub_264783A64();
  v115 = [v114 roundedTime];

  v116 = v147;
  sub_264783AC4();

  v117 = sub_264783A64();
  v118 = [v117 absoluteTimeString:0 preposition:1 capitalized:0];

  sub_264785724();
  (*(v55 + 8))(v116, v68);
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  v119 = v107;
  sub_264783B84();
  v152 = v107;
LABEL_46:
  v128 = sub_264785754();
  v130 = v129;
  v131 = v151;
  sub_264783DE4();
  v132 = v159;

  v133 = sub_264783E14();
  v134 = sub_2647859F4();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v159 = v55;
    v136 = v135;
    v137 = swift_slowAlloc();
    v161[0] = v137;
    *v136 = 134218754;
    *(v136 + 4) = v153;
    *(v136 + 12) = 2048;
    *(v136 + 14) = [v132 sessionState];

    *(v136 + 22) = 2080;
    v138 = v150;
    v160[0] = v150;
    v160[1] = v110;
    v160[2] = v128;
    v160[3] = v130;

    v139 = sub_264785764();
    v141 = sub_2646DF234(v139, v140, v161);

    *(v136 + 24) = v141;
    v110 = v154;
    *(v136 + 32) = 2080;
    *(v136 + 34) = sub_2646DF234(0xD000000000000020, 0x8000000264798020, v161);
    _os_log_impl(&dword_264605000, v133, v134, "#CriticalAlertOnboarding: Showing CA onboarding flow for message type %lu, session state %ld, %s, %s", v136, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266740650](v137, -1, -1);
    MEMORY[0x266740650](v136, -1, -1);

    (*(v157 + 8))(v151, v156);
    result = (v159[1].isa)(v149, v155);
    v142 = v158;
  }

  else
  {

    (*(v157 + 8))(v131, v156);
    result = (*(v55 + 8))(v149, v155);
    v142 = v158;
    v138 = v150;
  }

  *v142 = v138;
  v142[1] = v110;
  v142[2] = v128;
  v142[3] = v130;
  return result;
}

uint64_t CriticalAlertOnboardingView.Model.id.getter()
{
  MEMORY[0x26673F4F0](*(v0 + 16), *(v0 + 24));
  v1 = sub_264785E44();
  MEMORY[0x26673F4D0](v1);

  return 0x6D614E6E65766967;
}

uint64_t sub_2646DF1A8@<X0>(void *a1@<X8>)
{
  MEMORY[0x26673F4F0](*(v1 + 16), *(v1 + 24));
  v3 = sub_264785E44();
  MEMORY[0x26673F4D0](v3);

  *a1 = 0x6D614E6E65766967;
  a1[1] = 0xEA00000000002E65;
  return result;
}

uint64_t sub_2646DF234(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2646DF300(v11, 0, 0, 1, a1, a2);
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
    sub_264655DB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2646DF300(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2646DF40C(a5, a6);
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
    result = sub_264785D24();
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

uint64_t sub_2646DF40C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2646DF458(a1, a2);
  sub_2646DF588(&unk_287614610);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2646DF458(uint64_t a1, unint64_t a2)
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

  v6 = sub_2646DF674(v5, 0);
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

  result = sub_264785D24();
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
        v10 = sub_2647857B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2646DF674(v10, 0);
        result = sub_264785CD4();
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

uint64_t sub_2646DF588(uint64_t result)
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

  result = sub_2646DF6E8(result, v12, 1, v3);
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

void *sub_2646DF674(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77AB8, &unk_26478E750);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2646DF6E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77AB8, &unk_26478E750);
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

id CheckInOnboardingViewController2.init(isInSettings:sessionType:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_264783B94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_264785704();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_isInSettings] = a1;
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_sessionType] = a2;
  v14 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_onboardingCompletionHandler];
  *v14 = a3;
  v14[1] = a4;
  sub_264611394(a3);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264785694();
  [v16 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v18 = sub_264785714();

  v19 = sub_264785714();

  v23.receiver = v5;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_symbolName_contentLayout_, v18, v19, 0, 1);
  sub_26460C9A0(a3);

  return v20;
}

Swift::Void __swiftcall CheckInOnboardingViewController2.viewDidLoad()()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  type metadata accessor for ImageProvider();
  sub_2646E0144();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_264785714();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2 withConfiguration:0];

  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v6 = v5;
  [v6 setContentMode_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview_];

    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26478E760;
    v11 = [v6 leftAnchor];
    v12 = [v0 contentView];
    v13 = [v12 leftAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v10 + 32) = v14;
    v15 = [v6 rightAnchor];
    v16 = [v0 contentView];
    v17 = [v16 rightAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v10 + 40) = v18;
    v19 = [v6 bottomAnchor];

    v20 = [v0 contentView];
    v21 = [v20 bottomAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v10 + 48) = v22;
    sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
    v23 = sub_2647857E4();

    [v9 activateConstraints_];

    v24 = [objc_opt_self() boldButton];
    if (qword_27FF75038 != -1)
    {
      swift_once();
    }

    v25 = sub_264785714();
    [v24 setTitle:v25 forState:0];

    [v24 addTarget:v0 action:sel_continueButtonAction forControlEvents:64];
    v26 = [objc_opt_self() linkButton];
    if (qword_27FF75048 != -1)
    {
      swift_once();
    }

    v27 = sub_264785714();
    [v26 setTitle:v27 forState:0];

    [v26 addTarget:v0 action:sel_notNowButtonAction forControlEvents:64];
    v28 = [v0 buttonTray];
    [v28 addButton_];

    v29 = [v0 buttonTray];
    [v29 addButton_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2646E0144()
{
  v1 = [v0 traitCollection];
  [v1 userInterfaceStyle];

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  if (v3 == 1)
  {
    MEMORY[0x26673F4D0](0x4C5452202D20, 0xE600000000000000);
  }

  return 0x7974697669746341;
}

void sub_2646E0288()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_isInSettings];
  v3 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_sessionType];
  v4 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_onboardingCompletionHandler];
  v5 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController2_onboardingCompletionHandler + 8];
  objc_allocWithZone(type metadata accessor for CheckInOnboardingViewController3());
  sub_264611394(v4);
  v8 = CheckInOnboardingViewController3.init(isInSettings:sessionType:onboardingCompletionHandler:)(v2, v3, v4, v5);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v8 animated:1];
  }
}

id CheckInOnboardingViewController2.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingViewController2.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingViewController2.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CheckInOnboardingViewController3.init(isInSettings:sessionType:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_264783B94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_264785704();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton;
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton] = 0;
  v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_isInSettings] = a1;
  v15 = [objc_opt_self() boldButton];
  v16 = *&v5[v14];
  *&v5[v14] = v15;

  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_sessionType] = a2;
  v17 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_onboardingCompletionHandler];
  *v17 = a3;
  v17[1] = a4;
  sub_264611394(a3);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264785694();
  [v19 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v21 = sub_264785714();

  v22 = sub_264785714();

  v26.receiver = v5;
  v26.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_symbolName_contentLayout_, v21, v22, 0, 3);
  sub_26460C9A0(a3);

  return v23;
}

Swift::Void __swiftcall CheckInOnboardingViewController3.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_264784BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DataSharingSelectionList();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_264783B94();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_264785704();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v96.receiver = v0;
  v96.super_class = ObjectType;
  objc_msgSendSuper2(&v96, sel_viewDidLoad);
  v15 = OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton;
  v16 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton];
  if (!v16)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v91 = v3;
  v92 = v6;
  v17 = qword_27FF75038;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v90 = v7;
  v19 = sub_264785714();
  [v18 setTitle:v19 forState:0];

  v20 = *&v0[v15];
  if (!v20)
  {
    goto LABEL_18;
  }

  [v20 addTarget:v0 action:sel_continueButtonAction forControlEvents:64];
  v21 = *&v0[v15];
  if (!v21)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v89 = v2;
  [v21 setEnabled_];
  v22 = [objc_opt_self() linkButton];
  if (qword_27FF75048 != -1)
  {
    swift_once();
  }

  v23 = sub_264785714();
  [v22 setTitle:v23 forState:0];

  [v22 addTarget:v0 action:sel_notNowButtonAction forControlEvents:64];
  v24 = [objc_opt_self() accessoryButton];
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v25 = v22;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v28 = sub_264785714();

  [v24 setTitle:v28 forState:0];

  [v24 addTarget:v0 action:sel_showExampleButtonAction forControlEvents:64];
  v29 = [v0 buttonTray];
  if (!*&v0[v15])
  {
    goto LABEL_20;
  }

  v30 = v29;
  [v29 addButton_];

  v31 = [v0 buttonTray];
  v88 = v25;
  [v31 addButton_];

  v32 = [v0 headerView];
  [v32 addAccessoryButton_];

  v33 = swift_allocObject();
  *(v33 + 16) = v0;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v34 = v90;
  v35 = v10 + *(v90 + 20);
  v93 = 0;
  v36 = v0;
  sub_2647852E4();
  v37 = v95;
  *v35 = v94;
  *(v35 + 1) = v37;
  v38 = (v10 + *(v34 + 24));
  *v38 = sub_2646E1B78;
  v38[1] = v33;
  v39 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77AF8, &qword_26478E7E8));
  v40 = sub_264784784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77888, &qword_26478DF70);
  v41 = *(v91 + 72);
  v42 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2647889E0;
  sub_264784BB4();
  v94 = v43;
  sub_2646D2534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77898, &qword_26478DF78);
  sub_2646D258C();
  sub_264785BD4();
  sub_264784764();
  v44 = v40;
  v45 = [v44 view];
  if (!v45)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v46 = v45;
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];

  v47 = [v44 view];
  if (!v47)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v48 = v47;
  v49 = [v36 contentView];
  [v49 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  [v48 setFrame_];
  [v36 addChildViewController_];
  v58 = [v36 contentView];
  v59 = [v44 view];
  if (!v59)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v60 = v59;
  [v58 addSubview_];

  [v44 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_26478B4E0;
  v62 = [v44 view];
  if (!v62)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v36 contentView];
  v66 = [v65 leadingAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v61 + 32) = v67;
  v68 = [v44 view];
  if (!v68)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v69 = v68;
  v70 = [v68 trailingAnchor];

  v71 = [v36 contentView];
  v72 = [v71 trailingAnchor];

  v73 = [v70 constraintEqualToAnchor_];
  *(v61 + 40) = v73;
  v74 = [v44 view];
  if (!v74)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v75 = v74;
  v76 = [v74 topAnchor];

  v77 = [v36 contentView];
  v78 = [v77 topAnchor];

  v79 = [v76 constraintEqualToAnchor_];
  *(v61 + 48) = v79;
  v80 = [v44 view];

  if (v80)
  {
    v81 = [v80 bottomAnchor];

    v82 = [v36 contentView];
    v83 = [v82 bottomAnchor];

    v84 = [v81 constraintEqualToAnchor_];
    *(v61 + 56) = v84;
    v85 = objc_opt_self();
    sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
    v86 = sub_2647857E4();

    [v85 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);
}