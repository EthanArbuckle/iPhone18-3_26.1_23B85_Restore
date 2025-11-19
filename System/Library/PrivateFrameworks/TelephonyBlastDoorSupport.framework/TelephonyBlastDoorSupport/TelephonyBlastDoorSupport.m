uint64_t sub_26D1B0710()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E0438);
  __swift_project_value_buffer(v0, qword_2804E0438);
  return sub_26D22CF04();
}

uint64_t sub_26D1B0790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v129 = a3;
  v130 = a4;
  v128 = a2;
  v125 = a1;
  v4 = sub_26D22CF24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22CF54();
  v121 = *(v9 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x28223BE20](v9);
  v120 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_26D22CF34();
  v118 = *(v119 - 8);
  v12 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_26D22CE34();
  v133 = *(v135 - 8);
  v14 = v133[8];
  v15 = MEMORY[0x28223BE20](v135);
  v115 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v116 = &v103 - v17;
  v18 = sub_26D22CC54();
  v127 = *(v18 - 8);
  v19 = *(v127 + 64);
  MEMORY[0x28223BE20](v18);
  v126 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26D22CE74();
  v123 = *(v21 - 8);
  v124 = v21;
  v22 = *(v123 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26D22CCE4();
  v134 = *(v25 - 8);
  v26 = *(v134 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v131 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v122 = &v103 - v30;
  MEMORY[0x28223BE20](v29);
  v132 = &v103 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v103 - v34;
  v36 = type metadata accessor for TapToRadarDraft();
  v37 = *(*(v36 - 1) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_content();
  if (result)
  {
    v106 = v8;
    v108 = v5;
    v109 = v4;
    if (qword_2804E0430 != -1)
    {
      swift_once();
    }

    v112 = v18;
    v107 = v9;
    v114 = v25;
    v41 = sub_26D22CF14();
    v113 = __swift_project_value_buffer(v41, qword_2804E0438);
    v42 = sub_26D22CEF4();
    v43 = sub_26D22E5E4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26D1AF000, v42, v43, "Prompting for TTR...", v44, 2u);
      MEMORY[0x26D6B7800](v44, -1, -1);
    }

    *v39 = 0x4449656C646E7542;
    *(v39 + 1) = 0xE800000000000000;
    strcpy(v39 + 72, "Classification");
    v39[87] = -18;
    v39[88] = 10;
    *(v39 + 12) = 0x6375646F72706552;
    *(v39 + 13) = 0xEF7974696C696269;
    v39[112] = 6;
    *(v39 + 15) = 0x656C746954;
    *(v39 + 16) = 0xE500000000000000;
    *(v39 + 17) = 0;
    *(v39 + 18) = 0;
    *(v39 + 19) = 0x7470697263736544;
    *(v39 + 20) = 0xEB000000006E6F69;
    *(v39 + 21) = 0;
    *(v39 + 22) = 0;
    v45 = MEMORY[0x277D84F90];
    *(v39 + 23) = 0x7364726F7779654BLL;
    *(v39 + 24) = 0xE800000000000000;
    *(v39 + 25) = v45;
    v46 = &v39[v36[11]];
    *(v39 + 2) = 0;
    *(v39 + 3) = 0;
    v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30) + 36);
    v110 = v133[7];
    v110(&v46[v111], 1, 1, v135);
    *v46 = 0x7349664F656D6954;
    *(v46 + 1) = 0xEB00000000657573;
    v47 = &v39[v36[12]];
    *v47 = 0x656D686361747441;
    *(v47 + 1) = 0xEB0000000073746ELL;
    v105 = v47;
    *(v47 + 2) = v45;
    v48 = &v39[v36[13]];
    *v48 = 0xD000000000000011;
    *(v48 + 1) = 0x800000026D23AC10;
    *(v48 + 2) = v45;
    v49 = &v39[v36[14]];
    *v49 = 0xD000000000000014;
    *(v49 + 1) = 0x800000026D23AC30;
    *(v49 + 2) = v45;
    v50 = &v39[v36[15]];
    strcpy(v50, "DeleteOnAttach");
    v50[15] = -18;
    v104 = v50;
    v50[16] = 0;
    v51 = &v39[v36[16]];
    *v51 = 0x4449656369766544;
    *(v51 + 1) = 0xE900000000000073;
    *(v51 + 2) = v45;
    v52 = &v39[v36[17]];
    strcpy(v52, "DeviceClasses");
    *(v52 + 7) = -4864;
    *(v52 + 2) = v45;
    v53 = &v39[v36[18]];
    strcpy(v53, "DeviceModels");
    v53[13] = 0;
    *(v53 + 7) = -5120;
    *(v53 + 2) = v45;
    v54 = &v39[v36[19]];
    *v54 = 0xD000000000000016;
    *(v54 + 1) = 0x800000026D23AC50;
    *(v54 + 2) = 0;
    v55 = &v39[v36[20]];
    *v55 = 0xD00000000000001ALL;
    *(v55 + 1) = 0x800000026D23AC70;
    v55[16] = 0;
    v56 = &v39[v36[21]];
    *v56 = 0x676169446F747541;
    *(v56 + 1) = 0xEF73636974736F6ELL;
    v56[16] = 0;
    v57 = &v39[v36[22]];
    *v57 = 0xD00000000000001BLL;
    *(v57 + 1) = 0x800000026D23AC90;
    *(v57 + 2) = v45;
    v58 = &v39[v36[23]];
    *v58 = 0xD000000000000018;
    *(v58 + 1) = 0x800000026D23ACB0;
    *(v58 + 2) = 0;
    *(v58 + 3) = 0;
    v59 = &v39[v36[24]];
    *v59 = 0xD000000000000012;
    *(v59 + 1) = 0x800000026D23ACD0;
    *(v59 + 2) = 0;
    *(v59 + 3) = 0;
    *(v39 + 2) = xmmword_26D22F340;
    *(v39 + 3) = xmmword_26D22F350;
    *(v39 + 8) = 0xE300000000000000;
    v39[88] = 1;
    v39[112] = 5;
    aBlock = 0;
    v138 = 0xE000000000000000;
    sub_26D22E744();
    MEMORY[0x26D6B6C70](0xD00000000000003CLL, 0x800000026D23ACF0);
    v60 = sub_26D22EA64();
    MEMORY[0x26D6B6C70](v60);

    MEMORY[0x26D6B6C70](39, 0xE100000000000000);
    v61 = v138;
    *(v39 + 17) = aBlock;
    *(v39 + 18) = v61;
    aBlock = 0;
    v138 = 0xE000000000000000;
    sub_26D22E744();
    MEMORY[0x26D6B6C70](0xD00000000000001ALL, 0x800000026D23AD30);
    v62 = sub_26D22EA64();
    MEMORY[0x26D6B6C70](v62);

    MEMORY[0x26D6B6C70](2112039, 0xE300000000000000);
    sub_26D22E2E4();
    sub_26D22E804();
    MEMORY[0x26D6B6C70](46, 0xE100000000000000);
    v63 = v138;
    *(v39 + 21) = aBlock;
    *(v39 + 22) = v63;
    sub_26D22CE24();
    v110(v35, 0, 1, v135);
    sub_26D1B1ED8(v35, &v46[v111]);
    v64 = [objc_opt_self() defaultManager];
    v65 = [v64 temporaryDirectory];

    v66 = v132;
    sub_26D22CC94();

    aBlock = sub_26D22EA64();
    v138 = v67;
    MEMORY[0x26D6B6C70](95, 0xE100000000000000);
    sub_26D22CE64();
    v68 = sub_26D22CE54();
    v70 = v69;
    (*(v123 + 8))(v24, v124);
    MEMORY[0x26D6B6C70](v68, v70);

    v72 = v126;
    v71 = v127;
    v73 = v112;
    (*(v127 + 104))(v126, *MEMORY[0x277CC91D8], v112);
    sub_26D1B1F48();
    sub_26D22CCB4();
    (*(v71 + 8))(v72, v73);

    sub_26D22CC84();
    sub_26D22CD84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04C8, &unk_26D22F380);
    v74 = v134;
    v75 = *(v134 + 72);
    v76 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_26D22F360;
    v78 = v114;
    (*(v74 + 16))(v77 + v76, v66, v114);
    *(v105 + 2) = v77;
    v104[16] = 1;
    sub_26D208AB4(v131);
    (*(v74 + 32))();
    v79 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    v80 = sub_26D22E3B4();
    [v79 setTitle_];

    v81 = sub_26D22E3B4();
    [v79 setBody_];

    v82 = sub_26D22CC74();
    [v79 setDefaultActionURL_];

    [v79 setShouldSuppressScreenLightUp_];
    v83 = v115;
    sub_26D22CE24();
    v84 = v116;
    sub_26D22CE04();
    v85 = v133[1];
    v86 = v135;
    v85(v83, v135);
    v87 = sub_26D22CDF4();
    v85(v84, v86);
    [v79 setExpirationDate_];

    v88 = sub_26D22E3B4();
    v89 = [objc_opt_self() iconForApplicationIdentifier_];

    [v79 setIcon_];
    sub_26D1B2060();
    v90 = v118;
    v91 = v117;
    v92 = v119;
    (*(v118 + 104))(v117, *MEMORY[0x277D851C8], v119);
    v135 = sub_26D22E644();
    (*(v90 + 8))(v91, v92);
    v93 = swift_allocObject();
    *(v93 + 16) = v79;
    v141 = sub_26D1B20E4;
    v142 = v93;
    aBlock = MEMORY[0x277D85DD0];
    v138 = 1107296256;
    v139 = sub_26D1B1E14;
    v140 = &block_descriptor;
    v94 = _Block_copy(&aBlock);
    v95 = v79;
    v96 = v78;
    v97 = v120;
    sub_26D22CF44();
    v136 = MEMORY[0x277D84F90];
    sub_26D1B2104();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04B8, &unk_26D234120);
    sub_26D1B215C();
    v98 = v106;
    v99 = v66;
    v100 = v109;
    sub_26D22E704();
    v101 = v135;
    MEMORY[0x26D6B6E00](0, v97, v98, v94);
    _Block_release(v94);

    (*(v108 + 8))(v98, v100);
    (*(v121 + 8))(v97, v107);
    v102 = *(v134 + 8);
    v102(v122, v96);
    v102(v99, v96);

    return sub_26D1B1F9C(v39);
  }

  return result;
}

void sub_26D1B1A14(uint64_t a1)
{
  v2 = sub_26D22E3B4();
  v3 = [objc_opt_self() requestWithIdentifier:v2 content:a1 trigger:0];

  v4 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v5 = sub_26D22E3B4();
  v6 = [v4 initWithBundleIdentifier_];

  v8[4] = sub_26D1B1B68;
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26D1B1DA8;
  v8[3] = &block_descriptor_227;
  v7 = _Block_copy(v8);
  [v6 addNotificationRequest:v3 withCompletionHandler:v7];
  _Block_release(v7);
}

void sub_26D1B1B68(NSObject *a1)
{
  if (!a1)
  {
    if (qword_2804E0430 != -1)
    {
      swift_once();
    }

    v10 = sub_26D22CF14();
    __swift_project_value_buffer(v10, qword_2804E0438);
    oslog = sub_26D22CEF4();
    v11 = sub_26D22E5E4();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26D1AF000, oslog, v11, "TTR request notification posted.", v12, 2u);
      MEMORY[0x26D6B7800](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_2804E0430 != -1)
  {
    swift_once();
  }

  v3 = sub_26D22CF14();
  __swift_project_value_buffer(v3, qword_2804E0438);
  v4 = a1;
  oslog = sub_26D22CEF4();
  v5 = sub_26D22E5F4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_26D1AF000, oslog, v5, "Error posting TTR request notification: %@", v6, 0xCu);
    sub_26D1B1FF8(v7);
    MEMORY[0x26D6B7800](v7, -1, -1);
    MEMORY[0x26D6B7800](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void sub_26D1B1DA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_26D1B1E14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D1B1ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1B1F48()
{
  result = qword_2804E04A0;
  if (!qword_2804E04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04A0);
  }

  return result;
}

uint64_t sub_26D1B1F9C(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D1B1FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804E0DB0, &qword_26D231180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26D1B2060()
{
  result = qword_2804E04A8;
  if (!qword_2804E04A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804E04A8);
  }

  return result;
}

uint64_t sub_26D1B20AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26D1B2104()
{
  result = qword_2804E04B0;
  if (!qword_2804E04B0)
  {
    sub_26D22CF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04B0);
  }

  return result;
}

unint64_t sub_26D1B215C()
{
  result = qword_2804E04C0;
  if (!qword_2804E04C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E04B8, &unk_26D234120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04C0);
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

void sub_26D1B2290()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v3 = sub_26D22CD64();
  v4 = [v2 initWithData_];

  sub_26D1E774C(v4);
  if (!v0)
  {
    v6 = v5;
    v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v9 = v8 == 0x656372756F736572 && v7 == 0xEE00737473696C2DLL;
    if (v9 || (v10 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], (sub_26D22E964() & 1) != 0))
    {
      KeyPath = swift_getKeyPath();
      v12 = v6;
      v13 = sub_26D1BA810(KeyPath, v12);

      sub_26D1B8028(v13);

      sub_26D22D344();

      return;
    }

    sub_26D1B7F48();
    v1 = swift_allocError();
    *v38 = v8;
    *(v38 + 8) = v7;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    swift_willThrow();
  }

  v43 = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v15 = sub_26D22CF14();
    __swift_project_value_buffer(v15, qword_2804E06D8);
    sub_26D1B7F9C(v39, v40, v41);
    v16 = sub_26D22CEF4();
    v17 = sub_26D22E5F4();
    sub_26D1B7FB4(v39, v40, v41);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v20 = v39;
      *(v20 + 8) = v40;
      *(v20 + 16) = v41;
      sub_26D1B7F9C(v39, v40, v41);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_26D1AF000, v16, v17, "Caught provisioning error: %@", v18, 0xCu);
      sub_26D1B1FF8(v19);
      MEMORY[0x26D6B7800](v19, -1, -1);
      MEMORY[0x26D6B7800](v18, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_20:

    return;
  }

  v43 = v1;
  v22 = v1;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v23 = sub_26D22CF14();
    __swift_project_value_buffer(v23, qword_2804E06D8);
    sub_26D1B7DC0(v39, v40, v41, v42);
    v24 = sub_26D22CEF4();
    v25 = sub_26D22E5F4();
    sub_26D1B7E60(v39, v40, v41, v42);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v28 = v39;
      *(v28 + 8) = v40;
      *(v28 + 16) = v41;
      *(v28 + 24) = v42;
      sub_26D1B7DC0(v39, v40, v41, v42);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_26D1AF000, v24, v25, "Caught XML parser error: %@", v26, 0xCu);
      sub_26D1B1FF8(v27);
      MEMORY[0x26D6B7800](v27, -1, -1);
      MEMORY[0x26D6B7800](v26, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v39, v40, v41, v42);
    sub_26D20266C(v39, v40, v41, v42);
    swift_willThrow();
    sub_26D1B7E60(v39, v40, v41, v42);
    goto LABEL_20;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v30 = sub_26D22CF14();
  __swift_project_value_buffer(v30, qword_2804E06D8);
  v31 = v1;
  v32 = sub_26D22CEF4();
  v33 = sub_26D22E5F4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = v1;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_26D1AF000, v32, v33, "Caught error: %@", v34, 0xCu);
    sub_26D1B1FF8(v35);
    MEMORY[0x26D6B7800](v35, -1, -1);
    MEMORY[0x26D6B7800](v34, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B2A4C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v1)
  {
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 0x6E657265666E6F63 && v8 == 0xEF6F666E692D6563;
    if (v10 || (v11 = v7, v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v13 = sub_26D22E964(), v7 = v11, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D207990(v14, a1);

      return;
    }

    sub_26D1B7F48();
    v2 = swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    swift_willThrow();
  }

  v44 = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v40, v41, v42);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v40, v41, v42);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v40;
      *(v22 + 8) = v41;
      *(v22 + 16) = v42;
      sub_26D1B7F9C(v40, v41, v42);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v44 = v2;
  v24 = v2;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v40, v41, v42, v43);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v40, v41, v42, v43);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v40;
      *(v30 + 8) = v41;
      *(v30 + 16) = v42;
      *(v30 + 24) = v43;
      sub_26D1B7DC0(v40, v41, v42, v43);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v40, v41, v42, v43);
    sub_26D20266C(v40, v41, v42, v43);
    swift_willThrow();
    sub_26D1B7E60(v40, v41, v42, v43);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v2;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v2;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B3154()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v2 = sub_26D22CD64();
  v3 = [v1 initWithData_];

  sub_26D1E774C(v3);
  if (!v0)
  {
    v5 = v4;
    sub_26D1B7198();

    return;
  }

  v34 = v0;
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v7 = sub_26D22CF14();
    __swift_project_value_buffer(v7, qword_2804E06D8);
    sub_26D1B7F9C(v30, v31, v32);
    v8 = sub_26D22CEF4();
    v9 = sub_26D22E5F4();
    sub_26D1B7FB4(v30, v31, v32);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v12 = v30;
      *(v12 + 8) = v31;
      *(v12 + 16) = v32;
      sub_26D1B7F9C(v30, v31, v32);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_26D1AF000, v8, v9, "Caught provisioning error: %@", v10, 0xCu);
      sub_26D1B1FF8(v11);
      MEMORY[0x26D6B7800](v11, -1, -1);
      MEMORY[0x26D6B7800](v10, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_15:

    return;
  }

  v34 = v0;
  v14 = v0;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v15 = sub_26D22CF14();
    __swift_project_value_buffer(v15, qword_2804E06D8);
    sub_26D1B7DC0(v30, v31, v32, v33);
    v16 = sub_26D22CEF4();
    v17 = sub_26D22E5F4();
    sub_26D1B7E60(v30, v31, v32, v33);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v20 = v30;
      *(v20 + 8) = v31;
      *(v20 + 16) = v32;
      *(v20 + 24) = v33;
      sub_26D1B7DC0(v30, v31, v32, v33);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_26D1AF000, v16, v17, "Caught XML parser error: %@", v18, 0xCu);
      sub_26D1B1FF8(v19);
      MEMORY[0x26D6B7800](v19, -1, -1);
      MEMORY[0x26D6B7800](v18, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v30, v31, v32, v33);
    sub_26D20266C(v30, v31, v32, v33);
    swift_willThrow();
    sub_26D1B7E60(v30, v31, v32, v33);
    goto LABEL_15;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v22 = sub_26D22CF14();
  __swift_project_value_buffer(v22, qword_2804E06D8);
  v23 = v0;
  v24 = sub_26D22CEF4();
  v25 = sub_26D22E5F4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v0;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_26D1AF000, v24, v25, "Caught error: %@", v26, 0xCu);
    sub_26D1B1FF8(v27);
    MEMORY[0x26D6B7800](v27, -1, -1);
    MEMORY[0x26D6B7800](v26, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B37B4()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v3 = sub_26D22CD64();
  v4 = [v2 initWithData_];

  sub_26D1E774C(v4);
  if (!v0)
  {
    v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v6 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v8 = v7 == 0x656B6F7665526D69 && v6 == 0xE800000000000000;
    if (v8 || (v9 = v5, v10 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v11 = sub_26D22E964(), v5 = v9, (v11 & 1) != 0))
    {
      v12 = v5;
      sub_26D1FD328(v12);

      return;
    }

    sub_26D1B7F48();
    v1 = swift_allocError();
    *v13 = v7;
    *(v13 + 8) = v6;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    swift_willThrow();
  }

  v42 = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v15 = sub_26D22CF14();
    __swift_project_value_buffer(v15, qword_2804E06D8);
    sub_26D1B7F9C(v38, v39, v40);
    v16 = sub_26D22CEF4();
    v17 = sub_26D22E5F4();
    sub_26D1B7FB4(v38, v39, v40);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v20 = v38;
      *(v20 + 8) = v39;
      *(v20 + 16) = v40;
      sub_26D1B7F9C(v38, v39, v40);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_26D1AF000, v16, v17, "Caught provisioning error: %@", v18, 0xCu);
      sub_26D1B1FF8(v19);
      MEMORY[0x26D6B7800](v19, -1, -1);
      MEMORY[0x26D6B7800](v18, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v42 = v1;
  v22 = v1;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v23 = sub_26D22CF14();
    __swift_project_value_buffer(v23, qword_2804E06D8);
    sub_26D1B7DC0(v38, v39, v40, v41);
    v24 = sub_26D22CEF4();
    v25 = sub_26D22E5F4();
    sub_26D1B7E60(v38, v39, v40, v41);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v28 = v38;
      *(v28 + 8) = v39;
      *(v28 + 16) = v40;
      *(v28 + 24) = v41;
      sub_26D1B7DC0(v38, v39, v40, v41);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_26D1AF000, v24, v25, "Caught XML parser error: %@", v26, 0xCu);
      sub_26D1B1FF8(v27);
      MEMORY[0x26D6B7800](v27, -1, -1);
      MEMORY[0x26D6B7800](v26, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v38, v39, v40, v41);
    sub_26D20266C(v38, v39, v40, v41);
    swift_willThrow();
    sub_26D1B7E60(v38, v39, v40, v41);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v30 = sub_26D22CF14();
  __swift_project_value_buffer(v30, qword_2804E06D8);
  v31 = v1;
  v32 = sub_26D22CEF4();
  v33 = sub_26D22E5F4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = v1;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_26D1AF000, v32, v33, "Caught error: %@", v34, 0xCu);
    sub_26D1B1FF8(v35);
    MEMORY[0x26D6B7800](v35, -1, -1);
    MEMORY[0x26D6B7800](v34, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B3EB4()
{
  v1 = v0;
  v2 = sub_26D22D304();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v0)
  {
    v8 = v7;
    v10 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v11 = v10 == 0x6C65766E65736372 && v9 == 0xEB0000000065706FLL;
    if (v11 || (v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], (sub_26D22E964() & 1) != 0))
    {
      KeyPath = swift_getKeyPath();
      v14 = v8;
      v15 = sub_26D1BAD70(KeyPath, v14);

      sub_26D1B7BC8(v15);

      sub_26D22D1F4();

      return;
    }

    sub_26D1B7F48();
    v1 = swift_allocError();
    *v40 = v10;
    *(v40 + 8) = v9;
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    swift_willThrow();
  }

  v45 = v1;
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v41;
      *(v22 + 8) = v42;
      *(v22 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v1;
  v24 = v1;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v41;
      *(v30 + 8) = v42;
      *(v30 + 16) = v43;
      *(v30 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v1;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v1;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B4668(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v1)
  {
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 1701603686 && v8 == 0xE400000000000000;
    if (v10 || (v11 = v7, v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v13 = sub_26D22E964(), v7 = v11, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D1BF4B0(v14, a1);

      return;
    }

    sub_26D1B7F48();
    v2 = swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    swift_willThrow();
  }

  v44 = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v40, v41, v42);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v40, v41, v42);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v40;
      *(v22 + 8) = v41;
      *(v22 + 16) = v42;
      sub_26D1B7F9C(v40, v41, v42);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v44 = v2;
  v24 = v2;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v40, v41, v42, v43);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v40, v41, v42, v43);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v40;
      *(v30 + 8) = v41;
      *(v30 + 16) = v42;
      *(v30 + 24) = v43;
      sub_26D1B7DC0(v40, v41, v42, v43);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v40, v41, v42, v43);
    sub_26D20266C(v40, v41, v42, v43);
    swift_willThrow();
    sub_26D1B7E60(v40, v41, v42, v43);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v2;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v2;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B4D68(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v1)
  {
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 0x736F706D6F437369 && v8 == 0xEB00000000676E69;
    if (v10 || (v11 = v7, v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v13 = sub_26D22E964(), v7 = v11, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D1F1A40(v14, a1);

      return;
    }

    sub_26D1B7F48();
    v2 = swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    swift_willThrow();
  }

  v44 = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v40, v41, v42);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v40, v41, v42);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v40;
      *(v22 + 8) = v41;
      *(v22 + 16) = v42;
      sub_26D1B7F9C(v40, v41, v42);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v44 = v2;
  v24 = v2;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v40, v41, v42, v43);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v40, v41, v42, v43);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v40;
      *(v30 + 8) = v41;
      *(v30 + 16) = v42;
      *(v30 + 24) = v43;
      sub_26D1B7DC0(v40, v41, v42, v43);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v40, v41, v42, v43);
    sub_26D20266C(v40, v41, v42, v43);
    swift_willThrow();
    sub_26D1B7E60(v40, v41, v42, v43);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v2;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v2;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B546C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v1)
  {
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 1852075369 && v8 == 0xE400000000000000;
    if (v10 || (v11 = v7, v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v13 = sub_26D22E964(), v7 = v11, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D1F06F0(v14, a1);

      return;
    }

    sub_26D1B7F48();
    v2 = swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    swift_willThrow();
  }

  v44 = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v40, v41, v42);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v40, v41, v42);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v40;
      *(v22 + 8) = v41;
      *(v22 + 16) = v42;
      sub_26D1B7F9C(v40, v41, v42);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v44 = v2;
  v24 = v2;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v40, v41, v42, v43);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v40, v41, v42, v43);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v40;
      *(v30 + 8) = v41;
      *(v30 + 16) = v42;
      *(v30 + 24) = v43;
      sub_26D1B7DC0(v40, v41, v42, v43);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v40, v41, v42, v43);
    sub_26D20266C(v40, v41, v42, v43);
    swift_willThrow();
    sub_26D1B7E60(v40, v41, v42, v43);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v2;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v2;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B5B6C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v1)
  {
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 0xD000000000000011 && 0x800000026D23AEB0 == v8;
    if (v10 || (v11 = v7, v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v13 = sub_26D22E964(), v7 = v11, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D1C24F0(v14, a1);

      return;
    }

    sub_26D1B7F48();
    v2 = swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    swift_willThrow();
  }

  v44 = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v40, v41, v42);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v40, v41, v42);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v40;
      *(v22 + 8) = v41;
      *(v22 + 16) = v42;
      sub_26D1B7F9C(v40, v41, v42);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v44 = v2;
  v24 = v2;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v40, v41, v42, v43);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v40, v41, v42, v43);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v40;
      *(v30 + 8) = v41;
      *(v30 + 16) = v42;
      *(v30 + 24) = v43;
      sub_26D1B7DC0(v40, v41, v42, v43);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v40, v41, v42, v43);
    sub_26D20266C(v40, v41, v42, v43);
    swift_willThrow();
    sub_26D1B7E60(v40, v41, v42, v43);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v2;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v2;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B6274(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v1)
  {
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 0xD00000000000001BLL && 0x800000026D23AE90 == v8;
    if (v10 || (v11 = v7, v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v13 = sub_26D22E964(), v7 = v11, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D1BC0A0(v14, a1);

      return;
    }

    sub_26D1B7F48();
    v2 = swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    swift_willThrow();
  }

  v44 = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v40, v41, v42);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v40, v41, v42);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v40;
      *(v22 + 8) = v41;
      *(v22 + 16) = v42;
      sub_26D1B7F9C(v40, v41, v42);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v44 = v2;
  v24 = v2;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v40, v41, v42, v43);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v40, v41, v42, v43);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v40;
      *(v30 + 8) = v41;
      *(v30 + 16) = v42;
      *(v30 + 24) = v43;
      sub_26D1B7DC0(v40, v41, v42, v43);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v40, v41, v42, v43);
    sub_26D20266C(v40, v41, v42, v43);
    swift_willThrow();
    sub_26D1B7E60(v40, v41, v42, v43);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v2;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v2;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B697C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v1)
  {
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 0xD000000000000013 && 0x800000026D23AE70 == v8;
    if (v10 || (v11 = v7, v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v13 = sub_26D22E964(), v7 = v11, (v13 & 1) != 0))
    {
      v14 = v7;
      sub_26D1E2A18(v14, a1);

      return;
    }

    sub_26D1B7F48();
    v2 = swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    swift_willThrow();
  }

  v44 = v2;
  v16 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v40, v41, v42);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v40, v41, v42);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v40;
      *(v22 + 8) = v41;
      *(v22 + 16) = v42;
      sub_26D1B7F9C(v40, v41, v42);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D202564();
    swift_willThrow();
LABEL_21:

    return;
  }

  v44 = v2;
  v24 = v2;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v40, v41, v42, v43);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v40, v41, v42, v43);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v40;
      *(v30 + 8) = v41;
      *(v30 + 16) = v42;
      *(v30 + 24) = v43;
      sub_26D1B7DC0(v40, v41, v42, v43);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_26D1B7DC0(v40, v41, v42, v43);
    sub_26D20266C(v40, v41, v42, v43);
    swift_willThrow();
    sub_26D1B7E60(v40, v41, v42, v43);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v2;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v2;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

uint64_t getEnumTagSinglePayload for SIPResourceListsUnpacker(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SIPResourceListsUnpacker(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_26D1B7198()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04F8, &qword_26D22F4C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v7 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v6 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
  if (v7 != 0xD000000000000014 || 0x800000026D23AED0 != v6)
  {
    v9 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if ((sub_26D22E964() & 1) == 0)
    {
      sub_26D1B7F48();
      swift_allocError();
      *v22 = v7;
      *(v22 + 8) = v6;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      swift_willThrow();

      return;
    }
  }

  KeyPath = swift_getKeyPath();
  v12 = v0;
  v13 = sub_26D1BAAC8(KeyPath, v12);

  v14 = sub_26D1DE894(1, v13);

  if (v1)
  {

    return;
  }

  v15 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  if (*(v15 + 16))
  {
    v16 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];

    v17 = sub_26D1BDEEC(25705, 0xE200000000000000);
    if (v18)
    {
      v19 = (*(v15 + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];

      if (v14)
      {
        sub_26D20431C(v14, v5);
        v25 = sub_26D22D4E4();
        (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
      }

      else
      {
        v24 = sub_26D22D4E4();
        (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
      }

      sub_26D22D4C4();
      goto LABEL_17;
    }
  }

  sub_26D1B7F48();
  swift_allocError();
  *v23 = xmmword_26D22F3D0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 2;
  swift_willThrow();
LABEL_17:
}

void sub_26D1B7480()
{
  v3 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v2 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
  v4 = v3 == 0x65736E6F70736572 && v2 == 0xE800000000000000;
  if (v4 || (v5 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v6 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], (sub_26D22E964() & 1) != 0))
  {
    KeyPath = swift_getKeyPath();
    v8 = v0;
    v9 = sub_26D1BAAF0(KeyPath, v8);

    v10 = sub_26D1E524C(v9);
    if (v1)
    {
    }

    else
    {
      v11 = v10;

      if (v11)
      {
        v12 = &v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
        swift_beginAccess();
        v13 = v12[1];
        if (v13)
        {
          v14 = *v12;

          sub_26D1BA284(v14, v13);

          sub_26D22D4D4();
        }

        else
        {
          sub_26D1B7F48();
          swift_allocError();
          v17 = MEMORY[0x277D83B88];
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *v18 = v17;
          *(v18 + 24) = 5;
          swift_willThrow();
        }
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v16 = xmmword_26D22F3E0;
        *(v16 + 16) = 0;
        *(v16 + 24) = 1;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_26D1B7F48();
    swift_allocError();
    *v15 = v3;
    *(v15 + 8) = v2;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    swift_willThrow();
  }
}

void sub_26D1B76D8(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v4 = a1();
  if (!v2)
  {
    if (v4)
    {
      v6 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v5 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v7 = v6 == 0x736F703A6C6D67 && v5 == 0xE700000000000000;
      if (v7 || (v8 = v4, v9 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v10 = sub_26D22E964(), v4 = v8, (v10 & 1) != 0))
      {
        sub_26D1E85E8(v4, a2);
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v12 = v6;
        *(v12 + 8) = v5;
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v11 = xmmword_26D22F3F0;
      *(v11 + 16) = 0;
      *(v11 + 24) = 1;
      swift_willThrow();
    }
  }
}

void sub_26D1B7814(uint64_t a1)
{
  v3 = sub_26D22E1E4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D1E52EC(a1);
  if (!v1)
  {
    if (v7)
    {
      v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v10 = v9 == 0xD000000000000010 && 0x800000026D23ABA0 == v8;
      if (v10 || (v11 = v7, v12 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v13 = sub_26D22E964(), v7 = v11, (v13 & 1) != 0))
      {
        v14 = v7;
        sub_26D1E8C04(v14, v6);
        sub_26D22E1F4();
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v16 = v9;
        *(v16 + 8) = v8;
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v15 = 0xD000000000000010;
      *(v15 + 8) = 0x800000026D23ABA0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 1;
      swift_willThrow();
    }
  }
}

void sub_26D1B79D0(uint64_t a1)
{
  v3 = sub_26D22E244();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_26D1E52BC(a1);
  if (!v1)
  {
    if (v5)
    {
      v6 = v5;
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x72706F65673A7067 && v7 == 0xEA00000000007669;
      if (v9 || (v10 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], (sub_26D22E964() & 1) != 0))
      {
        KeyPath = swift_getKeyPath();
        v12 = v6;
        v13 = sub_26D1BAC80(KeyPath, v12);

        sub_26D1B7814(v13);

        sub_26D22E254();
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v15 = v8;
        *(v15 + 8) = v7;
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v14 = xmmword_26D22F400;
      *(v14 + 16) = 0;
      *(v14 + 24) = 1;
      swift_willThrow();
    }
  }
}

void sub_26D1B7BC8(uint64_t a1)
{
  v3 = sub_26D22E264();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_26D1E5284(a1);
  if (!v1)
  {
    if (v5)
    {
      v6 = v5;
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6C68737570736372 && v7 == 0xEF6E6F697461636FLL;
      if (v9 || (v10 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], (sub_26D22E964() & 1) != 0))
      {
        KeyPath = swift_getKeyPath();
        v12 = v6;
        v13 = sub_26D1BAD48(KeyPath, v12);

        sub_26D1B79D0(v13);

        sub_26D22D2F4();
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v15 = v8;
        *(v15 + 8) = v7;
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v14 = xmmword_26D22F410;
      *(v14 + 16) = 0;
      *(v14 + 24) = 1;
      swift_willThrow();
    }
  }
}

id sub_26D1B7DC0(id result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
LABEL_5:
  }

  if (a4 <= 5u)
  {
    if (a4 != 3 && a4 != 4)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a4 != 6)
  {
    if (a4 != 7)
    {
      return result;
    }

    result = a3;
  }

  return result;
}

void sub_26D1B7E60(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
LABEL_5:

    return;
  }

  if (a4 <= 5u)
  {
    if (a4 != 3 && a4 != 4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a4 != 6)
  {
    if (a4 != 7)
    {
      return;
    }

    a1 = a3;
  }
}

uint64_t sub_26D1B7F00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26D1B7F48()
{
  result = qword_2804E04E8;
  if (!qword_2804E04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04E8);
  }

  return result;
}

uint64_t sub_26D1B7F9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_26D1B7FB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

unint64_t sub_26D1B7FCC()
{
  result = qword_2804E04F0;
  if (!qword_2804E04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04F0);
  }

  return result;
}

size_t sub_26D1B8028(void *a1)
{
  v25 = sub_26D22D334();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2] && (v7 = sub_26D1BDEEC(1953720684, 0xE400000000000000), (v8 & 1) != 0) && (v9 = *(a1[7] + 8 * v7), (v10 = *(v9 + 16)) != 0))
  {
    v26 = MEMORY[0x277D84F90];

    result = sub_26D1E46D4(0, v10, 0);
    v12 = 0;
    a1 = v26;
    v24 = v3 + 32;
    while (v12 < *(v9 + 16))
    {
      v13 = *(v9 + 8 * v12 + 32);
      v14 = &v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v15 = *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 1953720684 && *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE400000000000000;
      if (!v15 && (sub_26D22E964() & 1) == 0)
      {
        v20 = v13;

        v22 = *v14;
        v21 = *(v14 + 1);
        sub_26D1B7F48();
        swift_allocError();
        *v23 = v22;
        *(v23 + 8) = v21;
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        swift_willThrow();

        return a1;
      }

      v16 = v13;
      sub_26D1FDE68(v16, v6);
      if (v1)
      {

        return a1;
      }

      v26 = a1;
      v18 = a1[2];
      v17 = a1[3];
      if (v18 >= v17 >> 1)
      {
        sub_26D1E46D4(v17 > 1, v18 + 1, 1);
        a1 = v26;
      }

      ++v12;
      a1[2] = v18 + 1;
      result = (*(v3 + 32))(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v6, v25);
      if (v10 == v12)
      {

        return a1;
      }
    }

    __break(1u);
  }

  else
  {
    sub_26D1B7F48();
    swift_allocError();
    *v19 = xmmword_26D22F420;
    *(v19 + 16) = 0;
    *(v19 + 24) = 1;
    swift_willThrow();
    return a1;
  }

  return result;
}

uint64_t sub_26D1B831C()
{
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](0);
  return sub_26D22EA04();
}

uint64_t sub_26D1B8388()
{
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](0);
  return sub_26D22EA04();
}

unint64_t sub_26D1B83D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1635017060;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x7A69732D656C6966;
    }

    if (a1)
    {
      v5 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7107189;
    v2 = 0x6C69746E75;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D616E2D656C6966;
    if (a1 != 4)
    {
      v3 = 0x2D746E65746E6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26D1B8500()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D223328();
  return sub_26D22EA04();
}

uint64_t sub_26D1B8550()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D223328();
  return sub_26D22EA04();
}

uint64_t sub_26D1B8594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1B956C();
  *a2 = result;
  return result;
}

unint64_t sub_26D1B85C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26D1B83D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_26D1B85F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_26D22CE34();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v103 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22CCE4();
  v101 = *(v6 - 8);
  v102 = v6;
  v7 = *(v101 + 64);
  MEMORY[0x28223BE20](v6);
  v104 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0500, &unk_26D22F550);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0508, &qword_26D230DE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v87 - v18;
  v20 = sub_26D22D244();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  MEMORY[0x28223BE20](v20);
  v24 = v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v26 = a1;
  v27 = sub_26D1BA7E8(KeyPath, v26);

  v28 = v107;
  v29 = sub_26D1DE4DC(0, v27);
  if (v28)
  {

LABEL_3:

    return;
  }

  v97 = v19;
  v95 = v13;
  v96 = v15;
  v98 = v24;
  v99 = v20;
  if (!v29)
  {

    sub_26D1B7F48();
    swift_allocError();
    *v32 = xmmword_26D22F510;
    *(v32 + 16) = 0;
    *(v32 + 24) = 1;
    swift_willThrow();

    return;
  }

  v107 = v29;
  v30 = v27;
  v31 = sub_26D1DE4DC(4u, v27);
  if (v31)
  {
    v94 = v21;
    v33 = &v31[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    v34 = v31;
    swift_beginAccess();
    v35 = *v33;
    v36 = v33[1];

    if (v36)
    {
      if ((sub_26D22C4CC(v35, v36) & 1) == 0)
      {

        v35 = 0;
        v36 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    v21 = v94;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v37 = sub_26D1DE4DC(8u, v30);
  if (v37)
  {
    v94 = v37;
    v38 = &v37[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    swift_beginAccess();
    v39 = v38[1];
    if (v39)
    {
      v40 = *v38;

      v41 = sub_26D1BA284(v40, v39);

      if (v41 <= 0x258)
      {
        v42 = 0;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v41 = 0;
  v42 = 1;
LABEL_22:
  v43 = sub_26D1DE4DC(5u, v30);
  if (!v43)
  {

    sub_26D1B7F48();
    swift_allocError();
    v57 = xmmword_26D22F500;
LABEL_36:
    *v56 = v57;
    *(v56 + 16) = 0;
    v58 = 1;
LABEL_41:
    *(v56 + 24) = v58;
    swift_willThrow();
    goto LABEL_6;
  }

  v92 = v42;
  v93 = v41;
  v94 = v43;
  v44 = &v43[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v45 = *(v44 + 1);
  if (!v45)
  {

    sub_26D1B7F48();
    swift_allocError();
    v59 = MEMORY[0x277D837D0];
    *(v60 + 8) = 0;
    *(v60 + 16) = 0;
    *v60 = v59;
    *(v60 + 24) = 5;
    swift_willThrow();

    goto LABEL_6;
  }

  v46 = *v44;

  v91 = v46;
  if (v46 != 0x2F6567617373656DLL || v45 != 0xEE0074662D736C6DLL) && (sub_26D22E964() & 1) == 0 || !v36 || v35 == 0x6574707972636E65 && v36 == 0xEE00656C69665F64 || (sub_26D22E964())
  {
    v47 = *(v26 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
    if (*(v47 + 16))
    {
      v94 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes;

      v48 = sub_26D1BDEEC(1701869940, 0xE400000000000000);
      if (v49)
      {
        v89 = v45;
        v50 = (*(v47 + 56) + 16 * v48);
        v51 = v50[1];
        v90 = *v50;

        v105 = v90;
        v106 = v51;
        v87[1] = sub_26D1B95B8(&qword_2804E0510, MEMORY[0x277CF1F78]);
        v88 = v51;
        swift_bridgeObjectRetain_n();
        v52 = v97;
        v53 = v99;
        sub_26D22E554();
        if ((*(v21 + 6))(v52, 1, v53) == 1)
        {

          sub_26D1B950C(v52, &qword_2804E0508, &qword_26D230DE0);
          sub_26D1B7F48();
          swift_allocError();
          v54 = v88;
          *v55 = v90;
          *(v55 + 8) = v54;
          *(v55 + 16) = 0;
          *(v55 + 24) = 3;
          swift_willThrow();

          goto LABEL_6;
        }

        v90 = v35;
        swift_bridgeObjectRelease_n();
        (*(v21 + 4))(v98, v52, v53);
        v63 = *&v94[v26];
        v64 = v53;
        if (*(v63 + 16))
        {
          v65 = *&v94[v26];

          v66 = sub_26D1BDEEC(0xD000000000000010, 0x800000026D23A100);
          if (v67)
          {
            v68 = (*(v63 + 56) + 16 * v66);
            v69 = *v68;
            v70 = v68[1];

            v71 = sub_26D22D224();
            v88 = v69;
            v105 = v69;
            v106 = v70;
            v94 = sub_26D1B95B8(&qword_2804E0518, MEMORY[0x277CF1F58]);
            v97 = v70;
            swift_bridgeObjectRetain_n();
            v72 = v95;
            sub_26D22E554();
            v73 = v72;
            v74 = *(v71 - 8);
            if ((*(v74 + 48))(v73, 1, v71) == 1)
            {
              (*(v21 + 1))(v98, v99);

              sub_26D1B950C(v73, &qword_2804E0500, &unk_26D22F550);
              sub_26D1B7F48();
              swift_allocError();
              v75 = v97;
              *v76 = v88;
              *(v76 + 8) = v75;
              *(v76 + 16) = 0;
              *(v76 + 24) = 3;
              swift_willThrow();

              goto LABEL_3;
            }

            v94 = v21;
            swift_bridgeObjectRelease_n();
            v78 = v96;
            (*(v74 + 32))(v96, v73, v71);
            (*(v74 + 56))(v78, 0, 1, v71);
            v64 = v99;
            goto LABEL_49;
          }
        }

        v94 = v21;
        v77 = sub_26D22D224();
        v78 = v96;
        (*(*(v77 - 8) + 56))(v96, 1, 1, v77);
LABEL_49:
        v79 = sub_26D1DE4DC(3u, v30);
        v80 = v98;
        v81 = v79;

        if (v81)
        {
          v82 = &v81[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
          swift_beginAccess();
          v83 = v82[1];
          if (v83)
          {
            v84 = *v82;

            sub_26D1BA284(v84, v83);

            sub_26D1DA188(6u, v107, v104);
            sub_26D1DA4A0(7u, v107, v103);
            sub_26D22D234();

            goto LABEL_7;
          }

          sub_26D1B950C(v78, &qword_2804E0500, &unk_26D22F550);
          (*(v94 + 1))(v80, v64);
          sub_26D1B7F48();
          swift_allocError();
          v85 = MEMORY[0x277D83B88];
          *(v86 + 8) = 0;
          *(v86 + 16) = 0;
          *v86 = v85;
          *(v86 + 24) = 5;
          swift_willThrow();

LABEL_6:
LABEL_7:

          return;
        }

        sub_26D1B950C(v78, &qword_2804E0500, &unk_26D22F550);
        (*(v94 + 1))(v80, v64);
        sub_26D1B7F48();
        swift_allocError();
        v57 = xmmword_26D22F4E0;
        goto LABEL_36;
      }
    }

    sub_26D1B7F48();
    swift_allocError();
    *v56 = xmmword_26D22F4F0;
    *(v56 + 16) = 0;
    v58 = 2;
    goto LABEL_41;
  }

  sub_26D1B9600();
  v61 = swift_allocError();
  sub_26D1B7F48();
  swift_allocError();
  *(v62 + 8) = 0;
  *(v62 + 16) = 0;
  *v62 = v61;
  *(v62 + 24) = 6;
  swift_willThrow();
}

uint64_t sub_26D1B950C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26D1B956C()
{
  v0 = sub_26D22E854();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1B95B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26D1B9600()
{
  result = qword_2804E0520;
  if (!qword_2804E0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0520);
  }

  return result;
}

uint64_t _s13XMLCodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13XMLCodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26D1B97E0()
{
  result = qword_2804E0528;
  if (!qword_2804E0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0528);
  }

  return result;
}

unint64_t sub_26D1B9838()
{
  result = qword_2804E0530;
  if (!qword_2804E0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0530);
  }

  return result;
}

void *sub_26D1B988C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0538, &qword_26D22F778);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_26D1B9900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26D22E524();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26D1B9E8C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26D22E7A4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26D1B9E8C()
{
  v0 = sub_26D22E534();
  v4 = sub_26D1B9F0C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26D1B9F0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26D22E444();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26D22E674();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26D1B988C(v9, 0);
  v12 = sub_26D1BA064(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26D22E444();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26D22E7A4();
LABEL_4:

  return sub_26D22E444();
}

unint64_t sub_26D1BA064(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_26D21D568(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26D22E4E4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26D22E7A4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_26D21D568(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_26D22E4C4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26D1BA284(uint64_t result, unint64_t a2)
{
  v4 = result;
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v2 = sub_26D1B9900(v4, a2, 10);
    v28 = v27;

    if (v28)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_26D22E7A4();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v2 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v2;
              if ((v2 * 10) >> 64 != (10 * v2) >> 63)
              {
                goto LABEL_61;
              }

              v2 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v2 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v2;
            if ((v2 * 10) >> 64 != (10 * v2) >> 63)
            {
              goto LABEL_61;
            }

            v2 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v2 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v30 = v5;
      if (v5)
      {
LABEL_63:
        sub_26D1B7F48();
        swift_allocError();
        *v26 = v4;
        *(v26 + 8) = a2;
        *(v26 + 16) = 0;
        *(v26 + 24) = 4;
        swift_willThrow();
        return v2;
      }

LABEL_65:

      return v2;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v2 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v2;
            if ((v2 * 10) >> 64 != (10 * v2) >> 63)
            {
              goto LABEL_61;
            }

            v2 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v2 = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v2;
          if ((v2 * 10) >> 64 != (10 * v2) >> 63)
          {
            break;
          }

          v2 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v2 = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v2;
          if ((v2 * 10) >> 64 != (10 * v2) >> 63)
          {
            break;
          }

          v2 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v5)
  {
    if (--v5)
    {
      v2 = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v2;
        if ((v2 * 10) >> 64 != (10 * v2) >> 63)
        {
          break;
        }

        v2 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_26D1BA5CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_26D22E424();
  v6 = v4;
  if (v5 == 48 && v4 == 0xE100000000000000 || (sub_26D22E964() & 1) != 0 || v5 == 0x65736C6166 && v6 == 0xE500000000000000 || (sub_26D22E964() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    if (v5 == 49 && v6 == 0xE100000000000000 || (sub_26D22E964() & 1) != 0 || v5 == 1702195828 && v6 == 0xE400000000000000)
    {
    }

    else
    {
      v9 = sub_26D22E964();

      if ((v9 & 1) == 0)
      {
        sub_26D1B7F48();
        swift_allocError();
        *v10 = a1;
        *(v10 + 8) = a2;
        *(v10 + 16) = 0;
        *(v10 + 24) = 4;
        swift_willThrow();
        return v7 & 1;
      }
    }

    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_26D1BA774@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_26D1BA794(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_26D1BA838(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v10 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if (v11 >> 62)
  {
    v12 = sub_26D22E814();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_11:

    v18 = sub_26D1BC940(v13, a1, a3, a4, a5);

    return v18;
  }

  v19 = MEMORY[0x277D84F90];

  result = sub_26D22E7D4();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D6B6F50](v15, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v15 + 32);
      }

      ++v15;
      sub_26D22E7B4();
      v16 = *(v19 + 16);
      sub_26D22E7E4();
      sub_26D22E7F4();
      sub_26D22E7C4();
    }

    while (v12 != v15);

    v13 = v19;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_26D1BAD98(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = sub_26D22D904();
  v47 = *(v51 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D22E344();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D22E334();
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&a1[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v17 = *(v16 + 16);
  v18 = a1;
  if (!v17)
  {
    goto LABEL_8;
  }

  v19 = sub_26D1BDEEC(1701667182, 0xE400000000000000);
  if ((v20 & 1) == 0)
  {

LABEL_8:
    sub_26D1B7F48();
    swift_allocError();
    *v29 = xmmword_26D22F780;
    *(v29 + 16) = 0;
    *(v29 + 24) = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v43 = a2;
  v21 = (*(v16 + 56) + 16 * v19);
  v22 = *v21;
  v23 = v21[1];

  v24 = sub_26D22E854();

  if (v24)
  {

    v25 = 1;
    v26 = v43;
LABEL_5:
    v27 = v51;
    v28 = v47;
LABEL_6:
    (*(v28 + 56))(v26, v25, 1, v27);
    return;
  }

  v30 = &v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v31 = v30[1];
  v26 = v43;
  if (!v31)
  {

    v25 = 1;
    goto LABEL_5;
  }

  v32 = *v30;

  v33 = sub_26D20F4F4(v32, v31);
  v35 = v34;
  v40 = sub_26D1BCBF0(&qword_2804E0558, MEMORY[0x277CC5540]);
  sub_26D22E324();
  sub_26D1BCB48(v33, v35);
  sub_26D1BC5E8(v33, v35);
  v41 = v33;
  v42 = v35;
  sub_26D1BCB9C(v33, v35);
  sub_26D22E314();
  (*(v44 + 8))(v11, v8);
  v49 = v12;
  v50 = sub_26D1BCBF0(&qword_2804E0560, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  v37 = v45;
  (*(v45 + 16))(boxed_opaque_existential_1, v15, v12);
  __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_26D22CC34();
  __swift_destroy_boxed_opaque_existential_1(v48);
  v38 = v46;
  sub_26D22D8F4();
  if (!v3)
  {
    (*(v37 + 8))(v15, v12);

    sub_26D1BCB9C(v41, v42);
    v28 = v47;
    v39 = v51;
    (*(v47 + 104))(v38, *MEMORY[0x277CF2948], v51);
    v26 = v43;
    (*(v28 + 32))(v43, v38, v39);
    v27 = v39;
    v25 = 0;
    goto LABEL_6;
  }

  (*(v37 + 8))(v15, v12);

  sub_26D1BCB9C(v41, v42);
LABEL_9:
}

uint64_t sub_26D1BB2F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x6D61726170;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x6D61726170;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1BB3DC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BB468()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1BB4E0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BB568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1BC8F4();
  *a2 = result;
  return result;
}

void sub_26D1BB598(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x6D61726170;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_26D1BB5E0(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0548, &qword_26D22F7E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v56 - v7;
  v9 = sub_26D22D904();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v56 - v13;
  v14 = sub_26D22D8E4();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v64 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0550, &qword_26D22F7E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v56 - v19;
  v21 = sub_26D22D8C4();
  v72 = *(v21 - 8);
  v22 = *(v72 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v67 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v71 = &v56 - v25;
  v26 = *&a1[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v27 = *(v26 + 16);
  v28 = a1;
  if (!v27)
  {
    goto LABEL_6;
  }

  v29 = sub_26D1BDEEC(1701667182, 0xE400000000000000);
  if ((v30 & 1) == 0)
  {

LABEL_6:
    sub_26D1B7F48();
    swift_allocError();
    *v35 = xmmword_26D22F780;
    *(v35 + 16) = 0;
    *(v35 + 24) = 2;
    swift_willThrow();
LABEL_7:

    return;
  }

  v63 = a2;
  v31 = (*(v26 + 56) + 16 * v29);
  v33 = *v31;
  v32 = v31[1];

  sub_26D22D8B4();
  v34 = v72;
  if ((*(v72 + 48))(v20, 1, v21) == 1)
  {

    sub_26D1B950C(v20, &qword_2804E0550, &qword_26D22F7E8);
    (*(v68 + 56))(v63, 1, 1, v69);
    return;
  }

  v36 = v71;
  (*(v34 + 32))(v71, v20, v21);
  KeyPath = swift_getKeyPath();
  v38 = sub_26D1BA838(KeyPath, v28, sub_26D1E37CC, &qword_2804E0568, &qword_26D22F7F0);

  v39 = sub_26D1E5430(0, v28);
  if (v2)
  {
    (*(v34 + 8))(v36, v21);

    goto LABEL_7;
  }

  v59 = v39;
  (*(v34 + 16))(v67, v36, v21);
  if (*(v38 + 16) && (v40 = sub_26D1BDEEC(0x6D61726170, 0xE500000000000000), (v41 & 1) != 0) && (v42 = *(*(v38 + 56) + 8 * v40), , , (v43 = *(v42 + 16)) != 0))
  {
    v44 = 0;
    v60 = (v66 + 32);
    v61 = (v66 + 48);
    v62 = MEMORY[0x277D84F90];
    v57 = v43;
    v58 = v42;
    while (v44 < *(v42 + 16))
    {
      v45 = *(v42 + 8 * v44 + 32);
      sub_26D1BAD98(v45, v8);

      if ((*v61)(v8, 1, v9) == 1)
      {
        sub_26D1B950C(v8, &qword_2804E0548, &qword_26D22F7E0);
      }

      else
      {
        v46 = *v60;
        v47 = v65;
        (*v60)(v65, v8, v9);
        v46(v70, v47, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_26D22BCC8(0, *(v62 + 2) + 1, 1, v62);
        }

        v49 = *(v62 + 2);
        v48 = *(v62 + 3);
        if (v49 >= v48 >> 1)
        {
          v62 = sub_26D22BCC8(v48 > 1, v49 + 1, 1, v62);
        }

        v50 = v62;
        *(v62 + 2) = v49 + 1;
        v46(&v50[((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v49], v70, v9);
        v43 = v57;
        v42 = v58;
      }

      if (v43 == ++v44)
      {
        v34 = v72;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    v51 = v64;
    sub_26D22D8D4();
    (*(v34 + 8))(v71, v21);

    v52 = v68;
    v53 = v63;
    v54 = v51;
    v55 = v69;
    (*(v68 + 32))(v63, v54, v69);
    (*(v52 + 56))(v53, 0, 1, v55);
  }
}

uint64_t sub_26D1BBD7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65636E6F6ELL;
  if (v2 != 1)
  {
    v3 = 0x6469706176;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x646F6874656DLL;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x65636E6F6ELL;
  if (*a2 != 1)
  {
    v6 = 0x6469706176;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x646F6874656DLL;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1BBE6C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BBF04()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1BBF88()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BC01C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1BC8A8();
  *a2 = result;
  return result;
}

void sub_26D1BC04C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x65636E6F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6469706176;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x646F6874656DLL;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_26D1BC0A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0540, &qword_26D22F7B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - v7;
  v9 = sub_26D22D8E4();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v41 - v13;
  KeyPath = swift_getKeyPath();
  v15 = a1;
  v16 = sub_26D1BA838(KeyPath, v15, sub_26D1E36DC, &qword_2804E0570, &qword_26D22F7F8);

  if (!*(v16 + 16) || (v17 = sub_26D1BDEEC(0x646F6874656DLL, 0xE600000000000000), (v18 & 1) == 0))
  {
    v49 = MEMORY[0x277D84F90];
LABEL_18:
    v30 = sub_26D1DF6E8(1, v16);
    if (v2)
    {
    }

    else
    {
      v31 = v16;
      if (v30)
      {
        v32 = &v30[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
        v33 = v30;
        swift_beginAccess();
        v35 = *v32;
        v34 = *(v32 + 1);
      }

      v36 = sub_26D1DF6E8(2, v31);

      if (v36)
      {
        v37 = &v36[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
        swift_beginAccess();
        v38 = *v37;
        v39 = *(v37 + 1);
      }

      sub_26D22D8A4();
    }

    return;
  }

  v41 = a2;
  v42 = v16;
  v43 = v15;
  v19 = *(*(v16 + 56) + 8 * v17);
  v20 = *(v19 + 16);

  if (!v20)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_17:

    v16 = v42;
    v15 = v43;
    goto LABEL_18;
  }

  v21 = 0;
  v22 = (v47 + 48);
  v23 = (v47 + 32);
  v49 = MEMORY[0x277D84F90];
  v44 = v20;
  v45 = v19;
  while (v21 < *(v19 + 16))
  {
    v24 = *(v19 + 8 * v21 + 32);
    sub_26D1BB5E0(v24, v8);
    if (v2)
    {

      v40 = v43;

      return;
    }

    if ((*v22)(v8, 1, v9) == 1)
    {
      sub_26D1B950C(v8, &qword_2804E0540, &qword_26D22F7B0);
    }

    else
    {
      v25 = *v23;
      v26 = v46;
      (*v23)(v46, v8, v9);
      v25(v48, v26, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_26D22BA30(0, *(v49 + 2) + 1, 1, v49);
      }

      v28 = *(v49 + 2);
      v27 = *(v49 + 3);
      if (v28 >= v27 >> 1)
      {
        v49 = sub_26D22BA30(v27 > 1, v28 + 1, 1, v49);
      }

      v29 = v49;
      *(v49 + 2) = v28 + 1;
      v25(&v29[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v28], v48, v9);
      v20 = v44;
      v19 = v45;
    }

    if (v20 == ++v21)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_26D1BC574@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_26D1BC594(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_26D1BC5E8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_26D22E344();
      sub_26D1BCBF0(&qword_2804E0558, MEMORY[0x277CC5540]);
      result = sub_26D22E304();
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

  result = sub_26D1BC7C8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26D1BC7C8(uint64_t a1, uint64_t a2)
{
  result = sub_26D22CBB4();
  if (!result || (result = sub_26D22CBE4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26D22CBD4();
      sub_26D22E344();
      sub_26D1BCBF0(&qword_2804E0558, MEMORY[0x277CC5540]);
      return sub_26D22E304();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D1BC8A8()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1BC8F4()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1BC940(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v5 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v10 = *i;
    swift_getAtKeyPath();

    v12 = sub_26D1BDEEC(v28, v29);
    v13 = v5[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v15 = v11;
    if (v5[3] < v13 + v14)
    {
      a3();
      v5 = v30;
      v16 = sub_26D1BDEEC(v28, v29);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_17;
      }

      v12 = v16;
    }

    if (v15)
    {

      v9 = v5[7] + 8 * v12;
      MEMORY[0x26D6B6D60](v8);
      if (*(*v9 + 16) >= *(*v9 + 24) >> 1)
      {
        v23 = *(*v9 + 16);
        sub_26D22E5A4();
      }

      sub_26D22E5B4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26D22F360;
      *(v18 + 32) = v10;
      v5[(v12 >> 6) + 8] |= 1 << v12;
      v19 = (v5[6] + 16 * v12);
      *v19 = v28;
      v19[1] = v29;
      *(v5[7] + 8 * v12) = v18;
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_16;
      }

      v5[2] = v22;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:

  result = sub_26D22E984();
  __break(1u);
  return result;
}

uint64_t sub_26D1BCB48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D1BCB9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26D1BCBF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

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

uint64_t _s13XMLCodingKeysOwet_1(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13XMLCodingKeysOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D1BCE98()
{
  result = qword_2804E0648;
  if (!qword_2804E0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0648);
  }

  return result;
}

unint64_t sub_26D1BCEF0()
{
  result = qword_2804E0650;
  if (!qword_2804E0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0650);
  }

  return result;
}

uint64_t sub_26D1BCF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v6 = sub_26D22CDE4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = sub_26D22CE34();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v22 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  v26 = a1;
  v27 = a2;

  MEMORY[0x26D6B5300](v20);
  sub_26D1BE200(&qword_2804E06A8, MEMORY[0x277CC94A0]);
  sub_26D22CE44();
  if (v3)
  {
    v26 = a1;
    v27 = a2;

    sub_26D1BD210(v10);
    sub_26D22CE44();
  }

  else
  {

    v17 = v19;
  }

  return (*(v23 + 32))(v25, v17, v24);
}

uint64_t sub_26D1BD210@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E06B8, &qword_26D22FBA8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_26D22CE94();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26D22CDD4();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D22CDB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26D22CD94();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26D22CDA4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v33);
  sub_26D22CE84();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_26D22CDC4();
  }

  return result;
}

uint64_t sub_26D1BD630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026D23AF10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_26D22E964();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26D1BD6DC(uint64_t a1)
{
  v2 = sub_26D1BE1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1BD718(uint64_t a1)
{
  v2 = sub_26D1BE1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26D1BD754(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_26D22CA34();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_26D22CA44();
  v13 = *(v3 - 8);
  v4 = *(v13 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_26D22E744();

  v14 = 0xD000000000000016;
  v15 = 0x800000026D23AEF0;
  v8 = sub_26D22E504();
  MEMORY[0x26D6B6C70](v8);

  MEMORY[0x26D6B6C70](90, 0xE100000000000000);
  v9 = sub_26D22E3B4();

  [v7 setDateFormat_];

  v10 = sub_26D22E3B4();
  v11 = [v7 dateFromString_];

  if (v11)
  {
    sub_26D22CE14();
  }

  else
  {
    sub_26D22CA24();
    sub_26D1BE01C(MEMORY[0x277D84F90]);
    sub_26D1BE200(&qword_2804E0678, MEMORY[0x277CC8620]);
    sub_26D22CC44();
    sub_26D22CA14();
    (*(v13 + 8))(v6, v3);
    swift_willThrow();
  }
}

void sub_26D1BDA04(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *v2;
  sub_26D1BD754(a2);
}

uint64_t sub_26D1BDA28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0690, &qword_26D22FB98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1BE1AC();
  sub_26D22EA24();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_26D22E904();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_26D1BDB88(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E06A0, &qword_26D22FBA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1BE1AC();
  sub_26D22EA34();
  sub_26D22E944();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26D1BDCC0()
{
  v1 = *v0;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  return sub_26D22EA04();
}

uint64_t sub_26D1BDD34()
{
  v1 = *v0;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  return sub_26D22EA04();
}

unint64_t sub_26D1BDD90()
{
  result = qword_2804E0658;
  if (!qword_2804E0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0658);
  }

  return result;
}

unint64_t sub_26D1BDDE8()
{
  result = qword_2804E0660;
  if (!qword_2804E0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0660);
  }

  return result;
}

unint64_t sub_26D1BDE40()
{
  result = qword_2804E0668;
  if (!qword_2804E0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0668);
  }

  return result;
}

unint64_t sub_26D1BDE98()
{
  result = qword_2804E0670;
  if (!qword_2804E0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0670);
  }

  return result;
}

unint64_t sub_26D1BDEEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26D22E9E4();
  sub_26D22E454();
  v6 = sub_26D22EA04();

  return sub_26D1BDF64(a1, a2, v6);
}

unint64_t sub_26D1BDF64(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26D22E964())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26D1BE01C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0680, &qword_26D22FB88);
    v3 = sub_26D22E844();
    v4 = a1 + 32;

    while (1)
    {
      sub_26D1BE12C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26D1BDEEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26D1BE19C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_26D1BE12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0688, &qword_26D22FB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_26D1BE19C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_26D1BE1AC()
{
  result = qword_2804E0698;
  if (!qword_2804E0698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0698);
  }

  return result;
}

uint64_t sub_26D1BE200(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26D1BE248()
{
  result = qword_2804E06B0;
  if (!qword_2804E06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06B0);
  }

  return result;
}

unint64_t sub_26D1BE2C0()
{
  result = qword_2804E06C0;
  if (!qword_2804E06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06C0);
  }

  return result;
}

unint64_t sub_26D1BE318()
{
  result = qword_2804E06C8;
  if (!qword_2804E06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06C8);
  }

  return result;
}

unint64_t sub_26D1BE370()
{
  result = qword_2804E06D0;
  if (!qword_2804E06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06D0);
  }

  return result;
}

uint64_t sub_26D1BE3C4()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E06D8);
  __swift_project_value_buffer(v0, qword_2804E06D8);
  return sub_26D22CF04();
}

uint64_t sub_26D1BE440(uint64_t a1, unint64_t a2)
{
  v4 = sub_26D22CAD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22E404();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26D22E3F4();
  v11 = sub_26D22E3E4();
  if (!v12)
  {
    sub_26D1BCB9C(a1, a2);
    return 0;
  }

  v17[0] = v11;
  v17[1] = v12;
  sub_26D22CAC4();
  sub_26D1B1F48();
  sub_26D22E6B4();
  (*(v5 + 8))(v8, v4);

  v13 = sub_26D22CD14();
  v15 = v14;
  sub_26D1BCB9C(a1, a2);
  sub_26D1BE62C(v13, v15);

  if (v15 >> 60 == 15)
  {
    return 0;
  }

  sub_26D1BE640(v13, v15);
  return v13;
}

uint64_t sub_26D1BE62C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D1BCB48(a1, a2);
  }

  return a1;
}

uint64_t sub_26D1BE640(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D1BCB9C(a1, a2);
  }

  return a1;
}

uint64_t sub_26D1BE654(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D22CAD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  sub_26D1B1F48();
  v9 = sub_26D22E6E4();
  v11 = v10;

  if (!v11)
  {
    return 0;
  }

  v34 = v9;
  v35 = v11;
  sub_26D22CAC4();
  v12 = sub_26D22E6B4();
  v14 = v13;
  (*(v5 + 8))(v8, v4);

  v32 = v12;
  v33 = v14;
  v30 = 45;
  v31 = 0xE100000000000000;
  v28 = 43;
  v29 = 0xE100000000000000;
  v15 = sub_26D22E6C4();
  v17 = v16;

  v32 = v15;
  v33 = v17;
  v30 = 95;
  v31 = 0xE100000000000000;
  v28 = 47;
  v29 = 0xE100000000000000;
  v18 = sub_26D22E6C4();
  v20 = v19;

  v34 = v18;
  v35 = v20;

  v21 = sub_26D22E464();

  v22 = v21 & 3;
  if (v21 <= 0)
  {
    v22 = -(-v21 & 3);
  }

  if (v22)
  {
    v23 = sub_26D22E504();
    MEMORY[0x26D6B6C70](v23);
  }

  v24 = sub_26D22CD14();
  v26 = v25;
  sub_26D1BE62C(v24, v25);

  if (v26 >> 60 == 15)
  {
    return 0;
  }

  sub_26D1BE640(v24, v26);
  return v24;
}

uint64_t sub_26D1BE908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v11 = sub_26D22E404();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if ((a5 & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    a3 = *(a6 + 16);
    v14 = *(a6 + 24);
  }

  else
  {
    if (!v13)
    {
      a3 = 0;
      goto LABEL_11;
    }

    a3 = a6;
    v14 = a6 >> 32;
  }

  if (v14 >= a3)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:
  a3 = 0;
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E06F0, qword_26D22FD10);
  sub_26D1BEAE4();
  sub_26D1BEB38();
  result = sub_26D22CAE4();
  if (v23)
  {
    return 0;
  }

  if (v22 < a3)
  {
    __break(1u);
  }

  else
  {
    v16 = sub_26D22CD54();
    v18 = v17;
    sub_26D22E3F4();
    v19 = sub_26D22E3E4();
    v21 = v20;
    sub_26D1BCB9C(v16, v18);
    if (v21)
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_26D1BEAE4()
{
  result = qword_2804E06F8;
  if (!qword_2804E06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06F8);
  }

  return result;
}

unint64_t sub_26D1BEB38()
{
  result = qword_2804E0700;
  if (!qword_2804E0700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E06F0, qword_26D22FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0700);
  }

  return result;
}

unint64_t sub_26D1BEBB0()
{
  result = qword_2804E0708[0];
  if (!qword_2804E0708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804E0708);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D1BEC18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26D1BEC60(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26D1BECB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26D1BED28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_26D1BEE68(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_26D1BF0D8()
{
  result = qword_2804E0790;
  if (!qword_2804E0790)
  {
    sub_26D22D4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0790);
  }

  return result;
}

uint64_t sub_26D1BF158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69616E626D756874;
  v4 = 0xE90000000000006CLL;
  if (v2 != 1)
  {
    v3 = 0x656C69662D736C6DLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701603686;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x69616E626D756874;
  v8 = 0xE90000000000006CLL;
  if (*a2 != 1)
  {
    v7 = 0x656C69662D736C6DLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701603686;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1BF25C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BF2FC()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1BF388()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BF424@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D1BFEBC();
  *a2 = result;
  return result;
}

void sub_26D1BF454(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE90000000000006CLL;
  v5 = 0x69616E626D756874;
  if (v2 != 1)
  {
    v5 = 0x656C69662D736C6DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701603686;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_26D1BF4B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v4 = sub_26D22CAD4();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07A0, &qword_26D22FF50);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v81 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v72 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v72 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v72 - v18;
  MEMORY[0x28223BE20](v17);
  v89 = (v72 - v20);
  v21 = sub_26D22D264();
  v86 = *(v21 - 8);
  v22 = v86[8];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v72 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v72 - v29;
  v31 = a1;
  v32 = sub_26D1E1540();
  if (v2)
  {

    return;
  }

  v76 = v16;
  v77 = v28;
  v74 = v25;
  v75 = v13;
  v79 = v21;
  v80 = v31;
  v78 = v19;
  v33 = sub_26D1BFF08(v32);

  v34 = v89;
  sub_26D1DEB3C(0, v33, v89);
  v35 = v86;
  v36 = (v86 + 6);
  v37 = v86[6];
  v38 = v79;
  if ((v37)(v34, 1, v79) == 1)
  {

    sub_26D1C0318(v34);
    sub_26D1B7F48();
    swift_allocError();
    *v39 = xmmword_26D22FF00;
    *(v39 + 16) = 0;
    *(v39 + 24) = 1;
    swift_willThrow();
    v40 = v80;

    return;
  }

  v41 = v34;
  v42 = v35[4];
  v42(v30, v41, v38);
  sub_26D1DEB3C(1, v33, v78);
  v72[1] = v35 + 4;
  v73 = v42;
  v89 = v37;
  v43 = sub_26D22D214();
  v45 = v80;
  if (v43 == 0x2F6567617373656DLL && v44 == 0xEE0074662D736C6DLL)
  {

    v46 = v77;
  }

  else
  {
    v47 = sub_26D22E964();

    v48 = v75;
    v46 = v77;
    if ((v47 & 1) == 0)
    {
      v76 = 0;
      v77 = v36;
      v51 = v79;
      goto LABEL_20;
    }
  }

  v49 = v78;
  v50 = v76;
  sub_26D1C0380(v78, v76);
  v51 = v79;
  if ((v89)(v50, 1, v79) == 1)
  {
    v52 = v33;
    sub_26D1C0318(v50);
  }

  else
  {
    v53 = v50;
    v54 = v36;
    v73(v46, v53, v51);
    if (sub_26D22D214() == 0x2F6567617373656DLL && v55 == 0xEE0074662D736C6DLL)
    {
    }

    else
    {
      v56 = sub_26D22E964();

      if ((v56 & 1) == 0)
      {

        sub_26D1C03F8();
        v65 = swift_allocError();
        sub_26D1B7F48();
        swift_allocError();
        *(v66 + 8) = 0;
        *(v66 + 16) = 0;
        *v66 = v65;
        *(v66 + 24) = 6;
        swift_willThrow();

        v67 = v86[1];
        v68 = v79;
        v67(v77, v79);
        sub_26D1C0318(v49);
        v67(v30, v68);
        return;
      }
    }

    v52 = v33;
    v51 = v79;
    (v86[1])(v77, v79);
    v36 = v54;
  }

  KeyPath = swift_getKeyPath();
  v58 = sub_26D1BAB18(KeyPath, v45);

  v59 = sub_26D1DED94(2u, v58);

  if (v59)
  {
    v77 = v36;
    v60 = &v59[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    swift_beginAccess();
    v61 = *(v60 + 1);
    if (v61)
    {
      v62 = *v60;

      v87 = v62;
      v88 = v61;
      v63 = v82;
      sub_26D22CAC4();
      sub_26D1B1F48();
      v76 = sub_26D22E6B4();
      (*(v83 + 8))(v63, v84);

      v33 = v52;
      v48 = v75;
LABEL_20:
      sub_26D1DEB3C(0, v33, v48);
      if ((v89)(v48, 1, v51) == 1)
      {

        sub_26D1C0318(v48);
        sub_26D1B7F48();
        swift_allocError();
        *v64 = xmmword_26D22FF00;
        *(v64 + 16) = 0;
        *(v64 + 24) = 1;
        swift_willThrow();
      }

      else
      {
        v73(v74, v48, v51);
        sub_26D1DEB3C(1, v33, v81);

        sub_26D22D524();
      }

      goto LABEL_26;
    }

    sub_26D1B7F48();
    swift_allocError();
    v70 = MEMORY[0x277D837D0];
    *(v71 + 8) = 0;
    *(v71 + 16) = 0;
    *v71 = v70;
    *(v71 + 24) = 5;
    swift_willThrow();
  }

  else
  {

    sub_26D1B7F48();
    swift_allocError();
    *v69 = xmmword_26D22FF10;
    *(v69 + 16) = 0;
    *(v69 + 24) = 1;
    swift_willThrow();
  }

LABEL_26:

  sub_26D1C0318(v78);
  (v86[1])(v30, v51);
}

unint64_t sub_26D1BFE3C(uint64_t a1)
{
  result = sub_26D1BFE64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D1BFE64()
{
  result = qword_2804E0798;
  if (!qword_2804E0798)
  {
    sub_26D22D244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0798);
  }

  return result;
}

uint64_t sub_26D1BFEBC()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D1BFF08(uint64_t a1)
{
  v2 = sub_26D22D244();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26D22D264();
  v7 = *(v56 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v56);
  v53 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v41 - v11;
  v12 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v16 = *(v14 + 64);
  v17 = *(v14 + 56);
  v51 = (v16 + 32) & ~v16;
  v52 = v15;
  v18 = a1 + v51;
  v54 = (v14 + 16);
  v44 = v3 + 32;
  v45 = v16;
  v43 = (v3 + 8);
  v42 = xmmword_26D22F360;
  v47 = v3;
  v48 = v2;
  v19 = v2;
  v49 = v6;
  v50 = v17;
  v46 = v14;
  v15(v55, a1 + v51, v56);
  while (1)
  {
    sub_26D22D254();
    v22 = sub_26D1E304C(v6);
    v23 = v12[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v12[3] < v25)
    {
      sub_26D1E329C(v25, 1);
      v12 = v57;
      v27 = sub_26D1E304C(v6);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_20;
      }

      v22 = v27;
    }

    if (v26)
    {
      (*v43)(v6, v19);
      v29 = v12[7];
      v30 = *v54;
      (*v54)(v53, v55, v56);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_26D22BA08(0, *(v31 + 2) + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        v31 = sub_26D22BA08(v33 > 1, v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      *(v31 + 2) = v34 + 1;
      v6 = v49;
      v20 = v50;
      v30(&v31[v51 + v34 * v50], v53, v56);
      v19 = v48;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07B0, qword_26D22FF80);
      v35 = v51;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      (*v54)((v36 + v35), v55, v56);
      v12[(v22 >> 6) + 8] |= 1 << v22;
      (*(v47 + 32))(v12[6] + *(v47 + 72) * v22, v6, v19);
      *(v12[7] + 8 * v22) = v36;
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_19;
      }

      v12[2] = v39;
      v20 = v50;
    }

    v18 += v20;
    if (!--v13)
    {
      return v12;
    }

    v52(v55, v18, v56);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

uint64_t sub_26D1C0318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07A0, &qword_26D22FF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D1C0380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07A0, &qword_26D22FF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1C03F8()
{
  result = qword_2804E07A8;
  if (!qword_2804E07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E07A8);
  }

  return result;
}

unint64_t sub_26D1C0470()
{
  result = qword_2804E07B8;
  if (!qword_2804E07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E07B8);
  }

  return result;
}

unint64_t sub_26D1C04C8()
{
  result = qword_2804E07C0;
  if (!qword_2804E07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E07C0);
  }

  return result;
}

void sub_26D1C051C(void *a1)
{
  v3 = sub_26D22D5D4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  v8 = sub_26D1E25A8();
  if (!v1)
  {
    v9 = sub_26D1C1064(v8, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

    sub_26D1C5A6C(v9, v6);

    sub_26D22D974();
  }
}

void sub_26D1C0654(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07D8, &qword_26D230180);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07E0, &qword_26D230188);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07E8, qword_26D230190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v20 - v13;
  v15 = a1;
  v16 = sub_26D1E1120();
  if (v1)
  {
  }

  else
  {
    v17 = sub_26D1C1064(v16, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

    v18 = sub_26D1E25A8();

    v19 = sub_26D1C1064(v18, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

    v20[1] = sub_26D1E6610(1u, v17);

    sub_26D1DBD04(2u, v19, v14);
    sub_26D1DBD44(3u, v19, v10);
    sub_26D1DC128(4u, v19, v6);

    sub_26D22D964();
  }
}

void sub_26D1C09D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = sub_26D22D6F4();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v53 - v13;
  v14 = sub_26D22D514();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = a1;
  v23 = sub_26D1E1120();
  if (v2)
  {

    return;
  }

  v55 = v8;
  v56 = v19;
  v54 = v10;
  v57 = v21;
  v58 = v15;
  v59 = v14;
  v24 = sub_26D1C1064(v23, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v25 = v63;
  sub_26D1C98C4(0, v24, v63);

  v26 = v58;
  v27 = v59;
  if ((*(v58 + 48))(v25, 1, v59) == 1)
  {

    sub_26D1B950C(v25, &qword_2804E07C8, &qword_26D230178);
    (*(v61 + 104))(v60, *MEMORY[0x277CF2630], v62);
    return;
  }

  v28 = v57;
  (*(v26 + 32))(v57, v25, v27);
  v29 = v56;
  (*(v26 + 16))(v56, v28, v27);
  v30 = (*(v26 + 88))(v29, v27);
  v31 = v61;
  v32 = v62;
  v33 = v60;
  if (v30 == *MEMORY[0x277CF2350])
  {
    goto LABEL_7;
  }

  if (v30 == *MEMORY[0x277CF2348])
  {
    v35 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v34 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if (v35 == 0x6574636172616863 && v34 == 0xEE00636974736972 || (v36 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v37 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], (sub_26D22E964() & 1) != 0))
    {
      v38 = v55;
      sub_26D1C0654(v22);

      (*(v26 + 8))(v57, v59);
      v39 = MEMORY[0x277CF2610];
LABEL_18:
      (*(v31 + 104))(v38, *v39, v32);
      (*(v31 + 32))(v33, v38, v32);
      return;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v47 = v35;
    *(v47 + 8) = v34;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    swift_willThrow();

    v48 = v59;
    v49 = v57;

    (*(v26 + 8))(v49, v48);
  }

  else if (v30 == *MEMORY[0x277CF2338])
  {
    v41 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v40 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if (v41 == 0x6574636172616863 && v40 == 0xEE00636974736972 || (v42 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v43 = *&v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], (sub_26D22E964() & 1) != 0))
    {
      v38 = v54;
      sub_26D1C051C(v22);

      (*(v58 + 8))(v57, v27);
      v39 = MEMORY[0x277CF2628];
      goto LABEL_18;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v50 = v41;
    *(v50 + 8) = v40;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    swift_willThrow();

    v52 = v57;
    v51 = v58;

    (*(v51 + 8))(v52, v27);
  }

  else
  {
    if (v30 == *MEMORY[0x277CF2340])
    {
LABEL_7:
      (*(v26 + 8))(v28, v27);

      (*(v31 + 104))(v33, *MEMORY[0x277CF2630], v32);
      return;
    }

    v44 = v28;
    v45 = v61;
    v46 = *(v26 + 8);
    v46(v44, v27);

    (*(v45 + 104))(v33, *MEMORY[0x277CF2630], v32);
    v46(v29, v27);
  }
}

uint64_t sub_26D1C1064(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1C12A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07F8, &qword_26D2301B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0800, &unk_26D2301C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = v50 - v9;
  v10 = sub_26D22DA14();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v73 = v50 - v16;
  v17 = sub_26D22D514();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v50 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v50 - v26;
  v28 = a1;
  v29 = sub_26D1E1120();
  if (v2)
  {

    return;
  }

  v60 = v22;
  v61 = v25;
  v63 = v18;
  v64 = v28;
  v58 = v10;
  v59 = v13;
  v62 = v27;
  v30 = sub_26D1C1CB8(v29, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v31 = v73;
  sub_26D1CB2D0(0, 0, v30, v73);
  v32 = v63;
  v33 = v17;
  v34 = (*(v63 + 48))(v31, 1, v17);
  v35 = v64;
  if (v34 == 1)
  {

    sub_26D1B950C(v31, &qword_2804E07C8, &qword_26D230178);
  }

  else
  {
    (*(v32 + 32))(v62, v31, v17);
    v36 = v61;
    (*(v32 + 104))(v61, *MEMORY[0x277CF2350], v33);
    sub_26D1C1C60();
    sub_26D22E544();
    v73 = v33;
    sub_26D22E544();
    if (v71 == v69 && v72 == v70)
    {
      v37 = 1;
    }

    else
    {
      v37 = sub_26D22E964();
    }

    v38 = *(v32 + 8);
    v39 = v36;
    v40 = v73;
    v38(v39, v73);

    if (v37)
    {
      v42 = sub_26D1E25A8();

      v43 = sub_26D1C1CB8(v42, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

      (*(v63 + 16))(v60, v62, v73);
      v44 = sub_26D1CB448(1, 0, v30);
      v46 = v45;
      v63 = v44;
      LODWORD(v61) = sub_26D1E58CC(2, v30);
      v57 = sub_26D1E5B50(3, v30);
      v56 = sub_26D1E5B50(4, v30);
      v53 = sub_26D1E5B50(5, v30);
      v55 = v46;
      sub_26D1E5CC8(6, v30);
      v54 = v47;
      sub_26D1C68BC(7, v43);
      sub_26D1E5CC8(8, v30);
      sub_26D1DE150(9, v43, v67);
      v52 = sub_26D1E58CC(10, v30);
      sub_26D1CB5E8(11, 0, v30);
      v51 = sub_26D1CB5E8(12, 0, v30);
      v50[1] = v48;

      sub_26D1DE190(13, v43, v66);

      sub_26D22D5C4();
      v38(v62, v73);
      v49 = v64;

      return;
    }

    v38(v62, v40);
  }

  sub_26D1B7FCC();
  swift_allocError();
  *v41 = 0xD00000000000001BLL;
  *(v41 + 8) = 0x800000026D23AF30;
  *(v41 + 16) = 5;
  swift_willThrow();
}

unint64_t sub_26D1C1C60()
{
  result = qword_2804E0808;
  if (!qword_2804E0808)
  {
    sub_26D22D514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0808);
  }

  return result;
}

uint64_t sub_26D1C1CB8(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1C1EFC(void *a1)
{
  v3 = sub_26D1E1E00();
  if (!v1)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v13 = MEMORY[0x277D84F90];
      v5 = v3;
      sub_26D1E488C(0, v4, 0);
      v6 = (v5 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v10 = *(v13 + 16);
        v9 = *(v13 + 24);

        if (v10 >= v9 >> 1)
        {
          sub_26D1E488C((v9 > 1), v10 + 1, 1);
        }

        *(v13 + 16) = v10 + 1;
        v11 = v13 + 16 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8;
        v6 += 2;
        --v4;
      }

      while (v4);

      if (*(v13 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_8:
        sub_26D22DA04();
        goto LABEL_11;
      }
    }

    sub_26D1B7FCC();
    swift_allocError();
    *v12 = xmmword_26D2301D0;
    *(v12 + 16) = 3;
    swift_willThrow();
  }

LABEL_11:
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D1C2088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26D1C20D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26D1C213C()
{
  result = qword_2804E0810;
  if (!qword_2804E0810)
  {
    sub_26D22D4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0810);
  }

  return result;
}

unint64_t sub_26D1C21DC()
{
  result = qword_2804E0818;
  if (!qword_2804E0818)
  {
    sub_26D22E294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0818);
  }

  return result;
}

uint64_t sub_26D1C225C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656D69746566696CLL;
  }

  else
  {
    v4 = 1684632674;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x656D69746566696CLL;
  }

  else
  {
    v6 = 1684632674;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1C22FC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1C2378()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D1C23E0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1C2458@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D22E854();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26D1C24B8(uint64_t *a1@<X8>)
{
  v2 = 1684632674;
  if (*v1)
  {
    v2 = 0x656D69746566696CLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D1C24F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_26D22CE34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  KeyPath = swift_getKeyPath();
  v16 = a1;
  v17 = sub_26D1BAA28(KeyPath, v16);

  v18 = sub_26D1DE740(0, v17);
  if (v2)
  {

    goto LABEL_3;
  }

  v19 = v18;
  v36 = v5;
  v37 = v9;
  v34 = v12;
  v35 = v14;
  if (!v18)
  {

    sub_26D1B7F48();
    swift_allocError();
    v23 = xmmword_26D230320;
LABEL_8:
    *v22 = v23;
    *(v22 + 16) = 0;
    *(v22 + 24) = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v20 = &v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  if (!*(v20 + 1))
  {

    sub_26D1B7F48();
    swift_allocError();
    v24 = MEMORY[0x277D837D0];
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = v24;
    *(v25 + 24) = 5;
    swift_willThrow();

    goto LABEL_3;
  }

  v21 = *v20;

  v26 = sub_26D1DE740(1, v17);

  if (!v26)
  {

    sub_26D1B7F48();
    swift_allocError();
    v23 = xmmword_26D230310;
    goto LABEL_8;
  }

  v27 = &v26[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;

    v30 = v37;
    sub_26D1BCF54(v29, v28, v37);

    v32 = *(v36 + 32);
    v33 = v34;
    v32(v34, v30, v4);
    v32(v35, v33, v4);
    sub_26D22D394();
  }

  else
  {

    sub_26D1B7F48();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = v4;
    *(v31 + 24) = 5;
    swift_willThrow();
  }

LABEL_3:
}

uint64_t _s13XMLCodingKeysOwet_2(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13XMLCodingKeysOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D1C2A38()
{
  result = qword_2804E0820;
  if (!qword_2804E0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0820);
  }

  return result;
}

uint64_t sub_26D1C2A8C(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v6 = (a1 & 1) != 0 ? 0x65756C6176 : 1701667182;
  v7 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);

  v8 = sub_26D1BDEEC(v6, v3);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = (*(v4 + 56) + 16 * v8);
  v12 = *v11;
  v13 = v11[1];

  if ((a2 & 2) == 0)
  {
    return v12;
  }

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    return v12;
  }

LABEL_11:

  return 0;
}

uint64_t sub_26D1C2B9C(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v4 + 16))
  {
    v6 = (a1 & 1) != 0 ? 0x65756C6176 : 1701667182;
    v7 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);

    v8 = sub_26D1BDEEC(v6, v3);
    v10 = v9;

    if (v10)
    {
      v11 = (*(v4 + 56) + 16 * v8);
      v13 = *v11;
      v12 = v11[1];

      if ((a2 & 2) == 0)
      {
        return sub_26D1BA5CC(v13, v12) & 1;
      }

      v14 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v14 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        return sub_26D1BA5CC(v13, v12) & 1;
      }
    }
  }

  return 2;
}

uint64_t sub_26D1C2CA4(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v4 + 16))
  {
    v6 = (a1 & 1) != 0 ? 0x65756C6176 : 1701667182;
    v7 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);

    v8 = sub_26D1BDEEC(v6, v3);
    v10 = v9;

    if (v10)
    {
      v11 = (*(v4 + 56) + 16 * v8);
      v13 = *v11;
      v12 = v11[1];

      if ((a2 & 2) == 0)
      {
        return sub_26D1BA284(v13, v12);
      }

      v14 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v14 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        return sub_26D1BA284(v13, v12);
      }
    }
  }

  return 0;
}

uint64_t sub_26D1C2DB8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08A8, &qword_26D2304D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v32 - v12;
  if (a1)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v15 + 16) || ((a1 & 1) == 0 ? (v16 = 1701667182) : (v16 = 0x65756C6176), , v17 = sub_26D1BDEEC(v16, v14), v19 = v18, , (v19 & 1) == 0))
  {

    v30 = sub_26D22D584();
    return (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
  }

  v20 = (*(v15 + 56) + 16 * v17);
  v22 = *v20;
  v21 = v20[1];

  if ((a2 & 2) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      v31 = sub_26D22D584();
      (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
    }
  }

  v24 = sub_26D1BA284(v22, v21);
  if (v5)
  {
  }

  v25 = v24;
  v26 = sub_26D22D584();
  v32[1] = v25;
  sub_26D1CC4AC(&qword_2804E08B0, MEMORY[0x277CF2470]);
  sub_26D22E554();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    sub_26D1B950C(v13, &qword_2804E08A8, &qword_26D2304D8);
    sub_26D1B7F48();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v21;
    *(v28 + 16) = 0;
    *(v28 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v27 + 32))(a4, v13, v26);
    return (*(v27 + 56))(a4, 0, 1, v26);
  }
}

uint64_t sub_26D1C30FC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0898, &qword_26D230D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v32 - v12;
  if (a1)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v15 + 16) || ((a1 & 1) == 0 ? (v16 = 1701667182) : (v16 = 0x65756C6176), , v17 = sub_26D1BDEEC(v16, v14), v19 = v18, , (v19 & 1) == 0))
  {

    v30 = sub_26D22D824();
    return (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
  }

  v20 = (*(v15 + 56) + 16 * v17);
  v22 = *v20;
  v21 = v20[1];

  if ((a2 & 2) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      v31 = sub_26D22D824();
      (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
    }
  }

  v24 = sub_26D1BA284(v22, v21);
  if (v5)
  {
  }

  v25 = v24;
  v26 = sub_26D22D824();
  v32[1] = v25;
  sub_26D1CC4AC(&qword_2804E08A0, MEMORY[0x277CF28E0]);
  sub_26D22E554();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    sub_26D1B950C(v13, &qword_2804E0898, &qword_26D230D70);
    sub_26D1B7F48();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v21;
    *(v28 + 16) = 0;
    *(v28 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v27 + 32))(a4, v13, v26);
    return (*(v27 + 56))(a4, 0, 1, v26);
  }
}

uint64_t sub_26D1C3440@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08C8, &qword_26D2304E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v32 - v12;
  if (a1)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v15 + 16) || ((a1 & 1) == 0 ? (v16 = 1701667182) : (v16 = 0x65756C6176), , v17 = sub_26D1BDEEC(v16, v14), v19 = v18, , (v19 & 1) == 0))
  {

    v30 = sub_26D22D934();
    return (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
  }

  v20 = (*(v15 + 56) + 16 * v17);
  v22 = *v20;
  v21 = v20[1];

  if ((a2 & 2) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      v31 = sub_26D22D934();
      (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
    }
  }

  v24 = sub_26D1BA284(v22, v21);
  if (v5)
  {
  }

  v25 = v24;
  v26 = sub_26D22D934();
  v32[1] = v25;
  sub_26D1CC4AC(&qword_2804E08D0, MEMORY[0x277CF2968]);
  sub_26D22E554();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    sub_26D1B950C(v13, &qword_2804E08C8, &qword_26D2304E8);
    sub_26D1B7F48();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v21;
    *(v28 + 16) = 0;
    *(v28 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v27 + 32))(a4, v13, v26);
    return (*(v27 + 56))(a4, 0, 1, v26);
  }
}

uint64_t sub_26D1C3784@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0830, &qword_26D2304A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  if (a1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v13 + 16) || ((a1 & 1) == 0 ? (v14 = 1701667182) : (v14 = 0x65756C6176), , v15 = sub_26D1BDEEC(v14, v12), v17 = v16, , (v17 & 1) == 0))
  {

    v25 = sub_26D22D984();
    return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
  }

  v18 = (*(v13 + 56) + 16 * v15);
  v20 = *v18;
  v19 = v18[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v27 = sub_26D22D984();
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  else
  {
LABEL_13:
    v22 = sub_26D22D984();
    v28[0] = v20;
    v28[1] = v19;
    sub_26D1CC4AC(&qword_2804E0838, MEMORY[0x277CF2998]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v23 + 32))(a4, v11, v22);
      return (*(v23 + 56))(a4, 0, 1, v22);
    }

    sub_26D1B950C(v11, &qword_2804E0830, &qword_26D2304A8);
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    *(v24 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C3AB8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0840, &qword_26D2304B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  if (a1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v13 + 16) || ((a1 & 1) == 0 ? (v14 = 1701667182) : (v14 = 0x65756C6176), , v15 = sub_26D1BDEEC(v14, v12), v17 = v16, , (v17 & 1) == 0))
  {

    v25 = sub_26D22D9D4();
    return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
  }

  v18 = (*(v13 + 56) + 16 * v15);
  v20 = *v18;
  v19 = v18[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v27 = sub_26D22D9D4();
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  else
  {
LABEL_13:
    v22 = sub_26D22D9D4();
    v28[0] = v20;
    v28[1] = v19;
    sub_26D1CC4AC(&qword_2804E0848, MEMORY[0x277CF2A10]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v23 + 32))(a4, v11, v22);
      return (*(v23 + 56))(a4, 0, 1, v22);
    }

    sub_26D1B950C(v11, &qword_2804E0840, &qword_26D2304B0);
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    *(v24 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C3DEC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0850, &qword_26D2304B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  if (a1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v13 + 16) || ((a1 & 1) == 0 ? (v14 = 1701667182) : (v14 = 0x65756C6176), , v15 = sub_26D1BDEEC(v14, v12), v17 = v16, , (v17 & 1) == 0))
  {

    v25 = sub_26D22D9A4();
    return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
  }

  v18 = (*(v13 + 56) + 16 * v15);
  v20 = *v18;
  v19 = v18[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v27 = sub_26D22D9A4();
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  else
  {
LABEL_13:
    v22 = sub_26D22D9A4();
    v28[0] = v20;
    v28[1] = v19;
    sub_26D1CC4AC(&qword_2804E0858, MEMORY[0x277CF29C8]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v23 + 32))(a4, v11, v22);
      return (*(v23 + 56))(a4, 0, 1, v22);
    }

    sub_26D1B950C(v11, &qword_2804E0850, &qword_26D2304B8);
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    *(v24 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4120@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0860, &qword_26D2304C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  if (a1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v13 + 16) || ((a1 & 1) == 0 ? (v14 = 1701667182) : (v14 = 0x65756C6176), , v15 = sub_26D1BDEEC(v14, v12), v17 = v16, , (v17 & 1) == 0))
  {

    v25 = sub_26D22D9C4();
    return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
  }

  v18 = (*(v13 + 56) + 16 * v15);
  v20 = *v18;
  v19 = v18[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v27 = sub_26D22D9C4();
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  else
  {
LABEL_13:
    v22 = sub_26D22D9C4();
    v28[0] = v20;
    v28[1] = v19;
    sub_26D1CC4AC(&qword_2804E0868, MEMORY[0x277CF29F8]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v23 + 32))(a4, v11, v22);
      return (*(v23 + 56))(a4, 0, 1, v22);
    }

    sub_26D1B950C(v11, &qword_2804E0860, &qword_26D2304C0);
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    *(v24 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4454@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0870, &qword_26D2304C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  if (a1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v13 + 16) || ((a1 & 1) == 0 ? (v14 = 1701667182) : (v14 = 0x65756C6176), , v15 = sub_26D1BDEEC(v14, v12), v17 = v16, , (v17 & 1) == 0))
  {

    v25 = sub_26D22D9B4();
    return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
  }

  v18 = (*(v13 + 56) + 16 * v15);
  v20 = *v18;
  v19 = v18[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v27 = sub_26D22D9B4();
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  else
  {
LABEL_13:
    v22 = sub_26D22D9B4();
    v28[0] = v20;
    v28[1] = v19;
    sub_26D1CC4AC(&qword_2804E0878, MEMORY[0x277CF29E0]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v23 + 32))(a4, v11, v22);
      return (*(v23 + 56))(a4, 0, 1, v22);
    }

    sub_26D1B950C(v11, &qword_2804E0870, &qword_26D2304C8);
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    *(v24 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4788@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0880, &qword_26D2304D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  if (a1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v13 + 16) || ((a1 & 1) == 0 ? (v14 = 1701667182) : (v14 = 0x65756C6176), , v15 = sub_26D1BDEEC(v14, v12), v17 = v16, , (v17 & 1) == 0))
  {

    v25 = sub_26D22D994();
    return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
  }

  v18 = (*(v13 + 56) + 16 * v15);
  v20 = *v18;
  v19 = v18[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v27 = sub_26D22D994();
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  else
  {
LABEL_13:
    v22 = sub_26D22D994();
    v28[0] = v20;
    v28[1] = v19;
    sub_26D1CC4AC(&qword_2804E0888, MEMORY[0x277CF29B0]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v23 + 32))(a4, v11, v22);
      return (*(v23 + 56))(a4, 0, 1, v22);
    }

    sub_26D1B950C(v11, &qword_2804E0880, &qword_26D2304D0);
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    *(v24 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4ABC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  if (a1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v13 + 16) || ((a1 & 1) == 0 ? (v14 = 1701667182) : (v14 = 0x65756C6176), , v15 = sub_26D1BDEEC(v14, v12), v17 = v16, , (v17 & 1) == 0))
  {

    v25 = sub_26D22D514();
    return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
  }

  v18 = (*(v13 + 56) + 16 * v15);
  v20 = *v18;
  v19 = v18[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v27 = sub_26D22D514();
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  else
  {
LABEL_13:
    v22 = sub_26D22D514();
    v28[0] = v20;
    v28[1] = v19;
    sub_26D1CC4AC(&qword_2804E0808, MEMORY[0x277CF2358]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v11, 1, v22) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v23 + 32))(a4, v11, v22);
      return (*(v23 + 56))(a4, 0, 1, v22);
    }

    sub_26D1B950C(v11, &qword_2804E07C8, &qword_26D230178);
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    *(v24 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4DF0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08B8, &qword_26D2304E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v32 - v12;
  if (a1)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v15 + 16) || ((a1 & 1) == 0 ? (v16 = 1701667182) : (v16 = 0x65756C6176), , v17 = sub_26D1BDEEC(v16, v14), v19 = v18, , (v19 & 1) == 0))
  {

    v30 = sub_26D22D6B4();
    return (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
  }

  v20 = (*(v15 + 56) + 16 * v17);
  v22 = *v20;
  v21 = v20[1];

  if ((a2 & 2) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      v31 = sub_26D22D6B4();
      (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
    }
  }

  v24 = sub_26D1BA284(v22, v21);
  if (v5)
  {
  }

  v25 = v24;
  v26 = sub_26D22D6B4();
  v32[1] = v25;
  sub_26D1CC4AC(&qword_2804E08C0, MEMORY[0x277CF2588]);
  sub_26D22E554();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    sub_26D1B950C(v13, &qword_2804E08B8, &qword_26D2304E0);
    sub_26D1B7F48();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v21;
    *(v28 + 16) = 0;
    *(v28 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v27 + 32))(a4, v13, v26);
    return (*(v27 + 56))(a4, 0, 1, v26);
  }
}

uint64_t sub_26D1C5134@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08D8, &qword_26D2304F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v32 - v12;
  if (a1)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v15 + 16) || ((a1 & 1) == 0 ? (v16 = 1701667182) : (v16 = 0x65756C6176), , v17 = sub_26D1BDEEC(v16, v14), v19 = v18, , (v19 & 1) == 0))
  {

    v30 = sub_26D22D634();
    return (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
  }

  v20 = (*(v15 + 56) + 16 * v17);
  v22 = *v20;
  v21 = v20[1];

  if ((a2 & 2) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      v31 = sub_26D22D634();
      (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
    }
  }

  v24 = sub_26D1BA284(v22, v21);
  if (v5)
  {
  }

  v25 = v24;
  v26 = sub_26D22D634();
  v32[1] = v25;
  sub_26D1CC4AC(&qword_2804E08E0, MEMORY[0x277CF2510]);
  sub_26D22E554();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v13, 1, v26) == 1)
  {
    sub_26D1B950C(v13, &qword_2804E08D8, &qword_26D2304F0);
    sub_26D1B7F48();
    swift_allocError();
    *v28 = v22;
    *(v28 + 8) = v21;
    *(v28 + 16) = 0;
    *(v28 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v27 + 32))(a4, v13, v26);
    return (*(v27 + 56))(a4, 0, 1, v26);
  }
}

uint64_t sub_26D1C5478@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(void)@<X5>, void (*a7)(uint64_t, unint64_t)@<X6>, uint64_t a8@<X8>)
{
  v37 = a7;
  v38 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  if (a1)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  v20 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v20 + 16) && ((v36 = v8, (a1 & 1) == 0) ? (v21 = 1701667182) : (v21 = 0x65756C6176), , v22 = sub_26D1BDEEC(v21, v19), v24 = v23, , (v24 & 1) != 0))
  {
    v25 = (*(v20 + 56) + 16 * v22);
    v27 = *v25;
    v26 = v25[1];

    if ((a2 & 2) == 0)
    {
      goto LABEL_13;
    }

    v28 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v28 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {
      v35 = a6(0);
      (*(*(v35 - 8) + 56))(v38, 1, 1, v35);
    }

    else
    {
LABEL_13:
      v37(v27, v26);
      v29 = a6(0);
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v18, 1, v29) == 1)
      {
        sub_26D1B950C(v18, a4, a5);
        sub_26D1B7F48();
        swift_allocError();
        *v31 = v27;
        *(v31 + 8) = v26;
        *(v31 + 16) = 0;
        *(v31 + 24) = 4;
        return swift_willThrow();
      }

      else
      {

        v34 = v38;
        (*(v30 + 32))(v38, v18, v29);
        return (*(v30 + 56))(v34, 0, 1, v29);
      }
    }
  }

  else
  {

    v33 = a6(0);
    return (*(*(v33 - 8) + 56))(v38, 1, 1, v33);
  }
}

uint64_t sub_26D1C578C(unsigned __int8 a1, char a2, uint64_t a3)
{
  v3 = 0xE600000000000000;
  v4 = 0x797469746E65;
  v5 = 0xE600000000000000;
  v6 = 0x737574617473;
  v7 = 0x800000026D23A210;
  v8 = 0xD000000000000014;
  if (a1 != 3)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (a1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1)
  {
    v4 = 0x6465727265666572;
    v3 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (a1 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  v11 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v11 + 16))
  {
    goto LABEL_17;
  }

  v13 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);

  v14 = sub_26D1BDEEC(v9, v10);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = (*(v11 + 56) + 16 * v14);
  v18 = *v17;
  v19 = v17[1];

  if ((a2 & 2) == 0)
  {
    return v18;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    return v18;
  }

LABEL_17:

  return 0;
}