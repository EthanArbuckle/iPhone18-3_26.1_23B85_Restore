void sub_2741263C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_274126448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2740A6D94(*a1, a2, &qword_28093A0E8, &qword_2741D39C0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A278, &qword_2741D3B70);
  sub_2740A6D94(a1[1], a2 + v4[12], &qword_28093A0D8, &qword_2741D39B0);
  sub_2740A6D94(a1[2], a2 + v4[16], &qword_28093A0C0, &qword_2741D3998);
  sub_2740A6D94(a1[3], a2 + v4[20], &qword_28093A148, &qword_2741D3A20);
  sub_2740A6D94(a1[4], a2 + v4[24], &qword_28093A0B8, &unk_2741D3988);
  sub_2740A6D94(a1[5], a2 + v4[28], &qword_28093A0A0, &qword_2741D3970);
  sub_2740A6D94(a1[6], a2 + v4[32], &qword_28093A080, &qword_2741D3948);
  sub_2740A6D94(a1[7], a2 + v4[36], &qword_28093A070, &qword_2741D3938);
  sub_2740A6D94(a1[8], a2 + v4[40], &qword_28093A060, &qword_2741D3928);
  sub_2740A6D94(a1[9], a2 + v4[44], &qword_28093A050, &qword_2741D3918);
  sub_2740A6D94(a1[10], a2 + v4[48], &qword_28093A070, &qword_2741D3938);
  v5 = v4[52];
  v6 = a1[11];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A040, &qword_2741D3908);
  (*(*(v7 - 8) + 16))(a2 + v5, v6, v7);
  sub_2740A6D94(a1[12], a2 + v4[56], &qword_28093A038, &qword_2741D3900);
  v8 = v4[60];
  v9 = a1[13];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A028, &qword_2741D38F0);
  (*(*(v10 - 8) + 16))(a2 + v8, v9, v10);
  v11 = v4[64];
  v12 = a1[14];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A020, &qword_2741D38E8);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2 + v11, v12, v13);
}

uint64_t sub_27412670C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for KnownNetwork();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_274137EA4(v13, v11, type metadata accessor for KnownNetwork);
      v15 = a1(v11);
      if (v3)
      {
        return sub_274138044(v11, type metadata accessor for KnownNetwork);
      }

      if (v15)
      {
        break;
      }

      sub_274138044(v11, type metadata accessor for KnownNetwork);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_2741383D8(v11, v19, type metadata accessor for KnownNetwork);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_2741268D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2741C70AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2740A6D94(v2, &v17 - v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2741C82AC();
    v16 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_274126AD8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = type metadata accessor for NetworkDetailsView();
  v3 = v2 - 8;
  v60 = *(v2 - 8);
  v66 = *(v60 + 8);
  MEMORY[0x28223BE20](v2);
  v58 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FD8, &qword_2741D3828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v50 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FE0, &qword_2741D3830);
  v55 = *(v54 - 8);
  v10 = *(v55 + 8);
  MEMORY[0x28223BE20](v54);
  v53 = v50 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FE8, &qword_2741D3838);
  v59 = *(v57 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v65 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FF0, &qword_2741D3840);
  v15 = *(v14 - 8);
  v61 = v14;
  v62 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v56 = v50 - v17;
  v67 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939FF8, &unk_2741D3848);
  sub_2740A6D24(&qword_28093A000, &qword_280939FF8, &unk_2741D3848);
  sub_2741C761C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938020, &qword_2741CB780);
  v18 = *(sub_2741C6F0C() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2741CB550;
  sub_2741C6EFC();
  v22 = sub_2740A6D24(&qword_28093A008, &qword_280939FD8, &qword_2741D3828);
  MEMORY[0x2743E5820](1, v21, v5, v22);

  (*(v6 + 8))(v9, v5);
  v23 = *(v3 + 28);
  v64 = v1;
  v24 = (v1 + v23);
  v25 = *v24;
  v52 = v24[1];
  v73 = v25;
  v74 = v52;
  v51 = v25;
  v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v26 = v72;
  swift_getKeyPath();
  v73 = v26;
  v50[0] = sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v27 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v26 + v27, &v73);

  v28 = v76;
  v29 = v77;
  __swift_project_boxed_opaque_existential_1(&v73, v76);
  v70 = (*(v29 + 40))(v28, v29);
  v71 = v30;
  v68 = v5;
  v69 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_2740A6A74();
  v33 = MEMORY[0x277D837D0];
  v34 = v54;
  v35 = v53;
  sub_2741C777C();

  (*(v55 + 1))(v35, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(&v73);
  v73 = v25;
  v36 = v52;
  v74 = v52;
  sub_2741C7A3C();
  v37 = v70;
  swift_getKeyPath();
  v73 = v37;
  sub_2741C6A0C();

  LOBYTE(v35) = *(v37 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  LOBYTE(v70) = v35;
  v55 = type metadata accessor for NetworkDetailsView;
  v38 = v58;
  sub_274137EA4(v64, v58, type metadata accessor for NetworkDetailsView);
  v39 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v40 = swift_allocObject();
  v60 = type metadata accessor for NetworkDetailsView;
  sub_2741383D8(v38, v40 + v39, type metadata accessor for NetworkDetailsView);
  v73 = v34;
  v74 = v33;
  v75 = OpaqueTypeConformance2;
  v76 = v32;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_274125FA4();
  v43 = v56;
  v44 = v57;
  v45 = v65;
  sub_2741C78CC();

  (*(v59 + 8))(v45, v44);
  v73 = v51;
  v74 = v36;
  sub_2741C7A3C();
  v46 = v70;
  swift_getKeyPath();
  v73 = v46;
  sub_2741C6A0C();

  LOBYTE(v45) = *(v46 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);

  LOBYTE(v70) = v45;
  sub_274137EA4(v64, v38, v55);
  v47 = swift_allocObject();
  sub_2741383D8(v38, v47 + v39, v60);
  v73 = v44;
  v74 = &type metadata for NetworkType;
  v75 = v41;
  v76 = v42;
  swift_getOpaqueTypeConformance2();
  v48 = v61;
  sub_2741C78CC();

  return (*(v62 + 8))(v43, v48);
}

id sub_274127410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v540 = a2;
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A020, &qword_2741D38E8);
  v543 = *(v578 - 8);
  v3 = *(v543 + 64);
  v4 = MEMORY[0x28223BE20](v578);
  v577 = &v494 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v572 = &v494 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A028, &qword_2741D38F0);
  v541 = *(v7 - 8);
  v542 = v7;
  v8 = *(v541 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v576 = &v494 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v539 = &v494 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A030, &qword_2741D38F8);
  v551 = *(v12 - 8);
  v552 = v12;
  v13 = *(v551 + 64);
  MEMORY[0x28223BE20](v12);
  v495 = &v494 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A038, &qword_2741D3900);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v575 = &v494 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v579 = &v494 - v19;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A040, &qword_2741D3908);
  v573 = *(v574 - 8);
  v20 = *(v573 + 64);
  v21 = MEMORY[0x28223BE20](v574);
  v571 = &v494 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v584 = &v494 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A048, &qword_2741D3910);
  v537 = *(v24 - 8);
  v538 = v24;
  v25 = *(v537 + 64);
  MEMORY[0x28223BE20](v24);
  v519 = &v494 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A050, &qword_2741D3918);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v570 = &v494 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v583 = &v494 - v31;
  v32 = sub_2741C740C();
  v499 = *(v32 - 8);
  v500 = v32;
  v33 = *(v499 + 64);
  MEMORY[0x28223BE20](v32);
  v498 = &v494 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A058, &qword_2741D3920);
  v557 = *(v35 - 8);
  v558 = v35;
  v36 = *(v557 + 64);
  MEMORY[0x28223BE20](v35);
  v497 = &v494 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A060, &qword_2741D3928);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v569 = &v494 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v590 = &v494 - v42;
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A068, &qword_2741D3930);
  v559 = *(v580 - 8);
  v43 = *(v559 + 64);
  v44 = MEMORY[0x28223BE20](v580);
  v505 = &v494 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v515 = &v494 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A070, &qword_2741D3938);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v567 = &v494 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v568 = &v494 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v589 = &v494 - v54;
  MEMORY[0x28223BE20](v53);
  v592 = &v494 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A078, &qword_2741D3940);
  v549 = *(v56 - 8);
  v550 = v56;
  v57 = *(v549 + 64);
  MEMORY[0x28223BE20](v56);
  v524 = &v494 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A080, &qword_2741D3948);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v59 - 8);
  v566 = &v494 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v587 = &v494 - v63;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A088, &qword_2741D3950);
  v64 = *(*(v530 - 8) + 64);
  MEMORY[0x28223BE20](v530);
  v532 = &v494 - v65;
  v534 = type metadata accessor for ForgetNetworkSection();
  v66 = *(*(v534 - 8) + 64);
  MEMORY[0x28223BE20](v534);
  v508 = (&v494 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A090, &qword_2741D3958);
  v533 = *(v535 - 8);
  v68 = *(v533 + 64);
  MEMORY[0x28223BE20](v535);
  v509 = &v494 - v69;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A098, &unk_2741D3960);
  v70 = *(*(v531 - 8) + 64);
  MEMORY[0x28223BE20](v531);
  v523 = &v494 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v72 - 8);
  v522 = &v494 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v521 = &v494 - v76;
  v77 = type metadata accessor for KnownNetwork();
  v546 = *(v77 - 8);
  v547 = v77;
  v78 = *(v546 + 64);
  v79 = MEMORY[0x28223BE20](v77);
  v518 = &v494 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v520 = &v494 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0A0, &qword_2741D3970);
  v83 = *(*(v82 - 8) + 64);
  v84 = MEMORY[0x28223BE20](v82 - 8);
  v565 = &v494 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v586 = &v494 - v86;
  v87 = type metadata accessor for NetworkDetailsView();
  v501 = *(v87 - 8);
  v88 = *(v501 + 64);
  MEMORY[0x28223BE20](v87);
  v503 = v89;
  v504 = &v494 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0A8, &qword_2741D3978);
  v512 = *(v90 - 8);
  v513 = v90;
  v91 = *(v512 + 64);
  MEMORY[0x28223BE20](v90);
  v502 = &v494 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0B0, &qword_2741D3980);
  v544 = *(v93 - 8);
  v545 = v93;
  v94 = *(v544 + 64);
  MEMORY[0x28223BE20](v93);
  v511 = &v494 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0B8, &unk_2741D3988);
  v97 = *(*(v96 - 8) + 64);
  v98 = MEMORY[0x28223BE20](v96 - 8);
  v564 = &v494 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v585 = &v494 - v100;
  v101 = type metadata accessor for PortalInfoSection();
  v555 = *(v101 - 8);
  v556 = v101;
  v102 = *(v555 + 64);
  MEMORY[0x28223BE20](v101);
  v517 = &v494 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104 - 8);
  v529 = &v494 - v106;
  v107 = sub_2741C689C();
  v527 = *(v107 - 8);
  v528 = v107;
  v108 = *(v527 + 64);
  MEMORY[0x28223BE20](v107);
  v516 = &v494 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0C0, &qword_2741D3998);
  v111 = *(*(v110 - 8) + 64);
  v112 = MEMORY[0x28223BE20](v110 - 8);
  v563 = &v494 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  v593 = &v494 - v114;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0C8, &qword_2741D39A0);
  v507 = *(v510 - 8);
  v115 = *(v507 + 64);
  MEMORY[0x28223BE20](v510);
  v496 = &v494 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0D0, &qword_2741D39A8);
  v553 = *(v117 - 8);
  v554 = v117;
  v118 = *(v553 + 64);
  MEMORY[0x28223BE20](v117);
  v506 = &v494 - v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0D8, &qword_2741D39B0);
  v121 = *(*(v120 - 8) + 64);
  v122 = MEMORY[0x28223BE20](v120 - 8);
  v562 = &v494 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v122);
  v591 = &v494 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0E0, &qword_2741D39B8);
  v126 = *(v125 - 8);
  v127 = *(v126 + 64);
  MEMORY[0x28223BE20](v125);
  v129 = &v494 - v128;
  v582 = type metadata accessor for NetworkSettings();
  v130 = *(*(v582 - 8) + 64);
  v131 = MEMORY[0x28223BE20](v582);
  v525 = &v494 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = MEMORY[0x28223BE20](v131);
  v536 = &v494 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v548 = &v494 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v526 = &v494 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v581 = &v494 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v143 = &v494 - v142;
  MEMORY[0x28223BE20](v141);
  v145 = &v494 - v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0E8, &qword_2741D39C0);
  v147 = *(*(v146 - 8) + 64);
  v148 = MEMORY[0x28223BE20](v146 - 8);
  v561 = &v494 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v148);
  v151 = &v494 - v150;
  v514 = v87;
  v152 = *(v87 + 20);
  v594 = a1;
  v153 = (a1 + v152);
  v155 = *v153;
  v154 = v153[1];
  v598 = v155;
  *&v643[0] = v155;
  v595 = v154;
  *(&v643[0] + 1) = v154;
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v156 = v628;
  swift_getKeyPath();
  *&v643[0] = v156;
  v596 = sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v157 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v156 + v157, v145, type metadata accessor for NetworkSettings);

  v158 = *(v145 + 6);
  v159 = v158;
  v160 = sub_274138044(v145, type metadata accessor for NetworkSettings);
  if (v158)
  {
    MEMORY[0x28223BE20](v160);
    *(&v494 - 2) = v159;
    sub_2741384AC();
    sub_2741C7B9C();

    (*(v126 + 32))(v151, v129, v125);
    v161 = 0;
  }

  else
  {
    v161 = 1;
  }

  v162 = *(v126 + 56);
  v560 = v151;
  v162(v151, v161, 1, v125);
  v163 = v598;
  *&v643[0] = v598;
  v164 = v595;
  *(&v643[0] + 1) = v595;
  sub_2741C7A3C();
  v165 = v599;
  swift_getKeyPath();
  *&v643[0] = v165;
  sub_2741C6A0C();

  v166 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v165 + v166, &v628);

  v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    sub_2740ACB2C(v643);
    *&v643[0] = v163;
    *(&v643[0] + 1) = v164;
    sub_2741C7A3C();
    v167 = v628;
    swift_getKeyPath();
    *&v643[0] = v167;
    sub_2741C6A0C();

    v168 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    sub_274137EA4(v167 + v168, v143, type metadata accessor for NetworkSettings);

    v169 = *(v143 + 6);
    sub_274138044(v143, type metadata accessor for NetworkSettings);
    if (v169)
    {
      v170 = 1;
      v171 = v581;
      v172 = v582;
    }

    else
    {
      type metadata accessor for WiFiDiagnoser();
      swift_allocObject();
      v173 = sub_2740F2E14();
      swift_beginAccess();
      v174 = *(v173 + 16);

      *&v643[0] = v163;
      *(&v643[0] + 1) = v164;
      sub_2741C7A3C();
      v175 = v628;
      swift_getKeyPath();
      *&v643[0] = v175;
      sub_2741C6A0C();

      LODWORD(v173) = *(v175 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

      v171 = v581;
      if (v173 == 1 && *(v174 + 16))
      {
        MEMORY[0x28223BE20](v176);
        *(&v494 - 2) = v174;
        sub_27412D18C(v594, v643);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A190, &qword_2741D3A90);
        sub_2740A6D24(&qword_28093A198, &qword_28093A190, &qword_2741D3A90);
        v177 = v496;
        sub_2741C7BAC();

        v163 = v598;
        v179 = v506;
        v178 = v507;
        (*(v507 + 32))(v506, v177, v510);
        v180 = 0;
      }

      else
      {

        v180 = 1;
        v179 = v506;
        v178 = v507;
      }

      (*(v178 + 56))(v179, v180, 1, v510);
      sub_2740A6C18(v179, v591, &qword_28093A0D0, &qword_2741D39A8);
      v170 = 0;
      v172 = v582;
      v164 = v595;
    }
  }

  else
  {
    v170 = 1;
    v171 = v581;
    v172 = v582;
  }

  v181 = 1;
  (*(v553 + 56))(v591, v170, 1, v554);
  *&v643[0] = v163;
  *(&v643[0] + 1) = v164;
  sub_2741C7A3C();
  v182 = v628;
  swift_getKeyPath();
  *&v643[0] = v182;
  v183 = v596;
  sub_2741C6A0C();
  v184 = v598;

  v185 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v182 + v185, v171, type metadata accessor for NetworkSettings);

  v186 = *(v171 + *(v172 + 80));
  sub_274138044(v171, type metadata accessor for NetworkSettings);
  if ((v186 & 4) != 0)
  {
    *&v643[0] = v184;
    v187 = v164;
    *(&v643[0] + 1) = v164;
    sub_2741C7A3C();
    v188 = v628;
    swift_getKeyPath();
    *&v643[0] = v188;
    sub_2741C6A0C();

    v189 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    v190 = v188 + v189;
    v191 = v526;
    sub_274137EA4(v190, v526, type metadata accessor for NetworkSettings);

    v192 = v529;
    sub_2740A6D94(v191 + *(v582 + 76), v529, &qword_280938518, &unk_2741D2090);
    sub_274138044(v191, type metadata accessor for NetworkSettings);
    v194 = v527;
    v193 = v528;
    if ((*(v527 + 48))(v192, 1, v528) == 1)
    {
      sub_27409D420(v192, &qword_280938518, &unk_2741D2090);
      v181 = 1;
    }

    else
    {
      v195 = *(v194 + 32);
      v196 = v516;
      v195(v516, v192, v193);
      v197 = v517;
      v195(v517, v196, v193);
      sub_2741383D8(v197, v593, type metadata accessor for PortalInfoSection);
      v181 = 0;
    }

    v184 = v598;
    v164 = v187;
    v183 = v596;
  }

  v198 = v183;
  (*(v555 + 56))(v593, v181, 1, v556);
  *&v643[0] = v184;
  *(&v643[0] + 1) = v164;
  sub_2741C7A3C();
  v199 = v628;
  swift_getKeyPath();
  v200 = &qword_280939000;
  *&v643[0] = v199;
  sub_2741C6A0C();

  v201 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v199 + v201, &v628);

  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v643, 0, 97);
    sub_27409D420(v643, &qword_280938340, &qword_2741D1660);
    memset(v643, 0, sizeof(v643));
    v644 = 0u;
    v645 = 0u;
    v646 = 0u;
    v647 = 0u;
    v648 = -33554432;
    v215 = v164;
    goto LABEL_35;
  }

  v202 = v582;
  v641[4] = v643[4];
  v641[5] = v643[5];
  v642 = v643[6];
  v641[0] = v643[0];
  v641[1] = v643[1];
  v641[2] = v643[2];
  v641[3] = v643[3];
  *&v643[0] = v184;
  *(&v643[0] + 1) = v164;
  sub_2741C7A3C();
  v203 = v628;
  swift_getKeyPath();
  *&v643[0] = v203;
  sub_2741C6A0C();

  v204 = v581;
  v205 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v203 + v205, v204, type metadata accessor for NetworkSettings);

  v206 = *(v204 + *(v202 + 80));
  sub_274138044(v204, type metadata accessor for NetworkSettings);
  if ((v206 & 8) != 0)
  {
    sub_2740ACAC8(v641, &v628);
    type metadata accessor for AssociationModel();
    sub_274138B18(&qword_280937E70, type metadata accessor for AssociationModel);
    v216 = sub_2741C6CEC();
    v218 = v217;
    type metadata accessor for NetworksListModel();
    sub_274138B18(&qword_280939880, type metadata accessor for NetworksListModel);
    v219 = sub_2741C6CEC();
    v221 = v220;
    memset(v643, 0, 40);
    if (qword_280937B98 != -1)
    {
      swift_once();
    }

    v223 = sub_274175B8C(v222, v643);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      return result;
    }

    v225 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v638 = v218 & 1;
    v637 = v221 & 1;
    LOBYTE(v599) = 0;
    sub_2741C7A2C();
    v227 = v643[0];
    v228 = *(&v643[0] + 1);
    LOBYTE(v599) = 0;
    sub_2741C7A2C();
    v229 = *(&v643[0] + 1);
    *(&v643[3] + 7) = v629[2];
    *(&v643[4] + 7) = v629[3];
    *(&v643[5] + 7) = v629[4];
    BYTE7(v643[6]) = v630;
    *(v643 + 7) = v628;
    *(&v643[1] + 7) = v629[0];
    *(&v643[2] + 7) = v629[1];
    v606 = v216;
    v607 = v638;
    *&v608[3] = *(&v628 + 3);
    *v608 = v628;
    v609 = v219;
    v610 = v637;
    *&v611[3] = *(&v599 + 3);
    *v611 = v599;
    v612 = v223;
    v613 = v227;
    *&v614[3] = *(v640 + 3);
    *v614 = v640[0];
    v615 = v228;
    v616 = v643[0];
    *&v617[3] = *(v639 + 3);
    *v617 = v639[0];
    v618 = v229;
    v619 = wapiCapability;
    v622 = v643[2];
    v621 = v643[1];
    v620 = v643[0];
    v626 = *&v643[6];
    v625 = v643[5];
    v624 = v643[4];
    v623 = v643[3];
    v627 = 0;
    sub_2741167F4(&v606, v643);
    BYTE2(v648) = 0;
    goto LABEL_32;
  }

  *&v643[0] = v598;
  *(&v643[0] + 1) = v595;
  sub_2741C7A3C();
  v207 = v628;
  swift_getKeyPath();
  *&v643[0] = v207;
  sub_2741C6A0C();

  v208 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v207 + v208, v204, type metadata accessor for NetworkSettings);

  v209 = *(v204 + *(v202 + 80));
  sub_274138044(v204, type metadata accessor for NetworkSettings);
  if ((v209 & 0x20) != 0)
  {
    sub_2740ACAC8(v641, &v628);
    type metadata accessor for AssociationModel();
    sub_274138B18(&qword_280937E70, type metadata accessor for AssociationModel);
    v230 = sub_2741C6CEC();
    v232 = v231;
    type metadata accessor for NetworksListModel();
    sub_274138B18(&qword_280939880, type metadata accessor for NetworksListModel);
    v233 = sub_2741C6CEC();
    v235 = v234;
    memset(v643, 0, 40);
    if (qword_280937B98 != -1)
    {
      swift_once();
    }

    v237 = sub_274175B8C(v236, v643);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_119;
    }

    v238 = result;
    v239 = MobileGestalt_get_wapiCapability();

    v638 = v232 & 1;
    v637 = v235 & 1;
    LOBYTE(v599) = 0;
    sub_2741C7A2C();
    LOBYTE(v238) = v643[0];
    v240 = *(&v643[0] + 1);
    LOBYTE(v599) = 0;
    sub_2741C7A2C();
    v241 = *(&v643[0] + 1);
    *(&v643[3] + 7) = v629[2];
    *(&v643[4] + 7) = v629[3];
    *(&v643[5] + 7) = v629[4];
    BYTE7(v643[6]) = v630;
    *(v643 + 7) = v628;
    *(&v643[1] + 7) = v629[0];
    *(&v643[2] + 7) = v629[1];
    v606 = v230;
    v607 = v638;
    *&v608[3] = *(&v628 + 3);
    *v608 = v628;
    v609 = v233;
    v610 = v637;
    *&v611[3] = *(&v599 + 3);
    *v611 = v599;
    v612 = v237;
    v613 = v238;
    *&v614[3] = *(v640 + 3);
    *v614 = v640[0];
    v615 = v240;
    v616 = v643[0];
    *&v617[3] = *(v639 + 3);
    *v617 = v639[0];
    v618 = v241;
    v619 = v239;
    v622 = v643[2];
    v621 = v643[1];
    v620 = v643[0];
    v626 = *&v643[6];
    v625 = v643[5];
    v624 = v643[4];
    v623 = v643[3];
    v627 = 1;
    sub_2741167F4(&v606, v643);
    BYTE2(v648) = 1;
LABEL_32:
    sub_274138330();
    sub_2741C72CC();
    sub_2740A6D94(&v599, v643, &qword_28093A178, &qword_2741D3A88);
    HIBYTE(v648) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A178, &qword_2741D3A88);
    sub_2741382AC();
    sub_2741C72CC();
    sub_27409D420(&v599, &qword_28093A178, &qword_2741D3A88);
    v242 = &v606;
LABEL_33:
    sub_274138384(v242);
    sub_2740ACB2C(v641);
    v215 = v595;
    v212 = v596;
    goto LABEL_34;
  }

  *&v643[0] = v598;
  v210 = v595;
  *(&v643[0] + 1) = v595;
  sub_2741C7A3C();
  v211 = v628;
  swift_getKeyPath();
  *&v643[0] = v211;
  v212 = v198;
  sub_2741C6A0C();

  v213 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v211 + v213, v204, type metadata accessor for NetworkSettings);

  v214 = *(v204 + *(v202 + 80));
  sub_274138044(v204, type metadata accessor for NetworkSettings);
  if ((v214 & 0x10) != 0)
  {
    sub_2740ACAC8(v641, &v628);
    type metadata accessor for AssociationModel();
    sub_274138B18(&qword_280937E70, type metadata accessor for AssociationModel);
    v272 = sub_2741C6CEC();
    v274 = v273;
    type metadata accessor for NetworksListModel();
    sub_274138B18(&qword_280939880, type metadata accessor for NetworksListModel);
    v275 = sub_2741C6CEC();
    v277 = v276;
    memset(v643, 0, 40);
    if (qword_280937B98 != -1)
    {
      swift_once();
    }

    v279 = sub_274175B8C(v278, v643);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_120;
    }

    v280 = result;
    v281 = MobileGestalt_get_wapiCapability();

    v638 = v274 & 1;
    v637 = v277 & 1;
    LOBYTE(v599) = 0;
    sub_2741C7A2C();
    LOBYTE(v280) = v643[0];
    v282 = *(&v643[0] + 1);
    LOBYTE(v599) = 0;
    sub_2741C7A2C();
    v283 = *(&v643[0] + 1);
    *(&v643[3] + 7) = v629[2];
    *(&v643[4] + 7) = v629[3];
    *(&v643[5] + 7) = v629[4];
    BYTE7(v643[6]) = v630;
    *(v643 + 7) = v628;
    *(&v643[1] + 7) = v629[0];
    *(&v643[2] + 7) = v629[1];
    *&v599 = v272;
    BYTE8(v599) = v638;
    HIDWORD(v599) = *(&v628 + 3);
    *(&v599 + 9) = v628;
    *&v600 = v275;
    BYTE8(v600) = v637;
    HIDWORD(v600) = *(&v606 + 3);
    *(&v600 + 9) = v606;
    *&v601 = v279;
    BYTE8(v601) = v280;
    HIDWORD(v601) = *(v640 + 3);
    *(&v601 + 9) = v640[0];
    *&v602 = v282;
    BYTE8(v602) = v643[0];
    HIDWORD(v602) = *(v639 + 3);
    *(&v602 + 9) = v639[0];
    *v603 = v283;
    v603[8] = v281;
    *&v603[41] = v643[2];
    *&v603[25] = v643[1];
    *&v603[9] = v643[0];
    v604 = *&v643[6];
    *&v603[89] = v643[5];
    *&v603[73] = v643[4];
    *&v603[57] = v643[3];
    v605 = 2;
    sub_2741167F4(&v599, v643);
    HIBYTE(v648) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A178, &qword_2741D3A88);
    sub_2741382AC();
    sub_274138330();
    sub_2741C72CC();
    v242 = &v599;
    goto LABEL_33;
  }

  v215 = v210;
  sub_2740ACB2C(v641);
  v628 = 0u;
  memset(v629, 0, sizeof(v629));
  v630 = 0u;
  v631 = 0u;
  v632 = 0u;
  v633 = 0u;
  v634 = 0u;
  v635 = -16777216;
LABEL_34:
  v645 = v632;
  v646 = v633;
  v647 = v634;
  v648 = v635;
  v643[4] = v629[3];
  v643[5] = v629[4];
  v643[6] = v630;
  v644 = v631;
  v643[0] = v628;
  v643[1] = v629[0];
  v643[2] = v629[1];
  v643[3] = v629[2];
  v200 = &qword_280939000;
  v198 = v212;
LABEL_35:
  v243 = v598;
  *&v599 = v598;
  *(&v599 + 1) = v215;
  sub_2741C7A3C();
  v244 = v606;
  swift_getKeyPath();
  *&v599 = v244;
  sub_2741C6A0C();

  v245 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v244 + v245, &v606);

  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v603, 0, 33);
    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    sub_27409D420(&v599, &qword_280938340, &qword_2741D1660);
    v248 = v198;
    goto LABEL_39;
  }

  v629[3] = *v603;
  v629[4] = *&v603[16];
  LOBYTE(v630) = v603[32];
  v628 = v599;
  v629[0] = v600;
  v629[1] = v601;
  v629[2] = v602;
  *&v599 = v243;
  *(&v599 + 1) = v215;
  sub_2741C7A3C();
  v246 = v606;
  swift_getKeyPath();
  *&v599 = v246;
  sub_2741C6A0C();

  v247 = *(v246 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);

  v248 = v198;
  if (v247)
  {
    sub_2740ACB2C(&v628);
LABEL_39:
    v249 = v215;
    v250 = &qword_280939000;
    (*(v544 + 56))(v585, 1, 1, v545);
    v251 = v598;
    goto LABEL_49;
  }

  *&v599 = v243;
  *(&v599 + 1) = v215;
  sub_2741C7A3C();
  v252 = v606;
  swift_getKeyPath();
  *&v599 = v252;
  sub_2741C6A0C();

  v253 = *(v252 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  v249 = v215;
  if (v253 == 2)
  {
    goto LABEL_42;
  }

  v251 = v243;
  *&v599 = v243;
  *(&v599 + 1) = v249;
  sub_2741C7A3C();
  v254 = v606;
  swift_getKeyPath();
  *&v599 = v254;
  sub_2741C6A0C();

  v255 = *(v254 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v255 == 3)
  {
LABEL_42:
    sub_2740ACAC8(&v628, &v599);
    v256 = v594;
    v257 = v504;
    sub_274137EA4(v594, v504, type metadata accessor for NetworkDetailsView);
    v258 = *(v501 + 80);
    v259 = swift_allocObject();
    v260 = *&v603[16];
    *(v259 + 80) = *v603;
    *(v259 + 96) = v260;
    *(v259 + 112) = v603[32];
    v261 = v600;
    *(v259 + 16) = v599;
    *(v259 + 32) = v261;
    v262 = v602;
    *(v259 + 48) = v601;
    *(v259 + 64) = v262;
    sub_2741383D8(v257, v259 + ((v258 + 113) & ~v258), type metadata accessor for NetworkDetailsView);
    v263 = v502;
    sub_2741C7A7C();
    sub_2740ACB2C(&v628);
    sub_274137EA4(v256, v257, type metadata accessor for NetworkDetailsView);
    v264 = (v258 + 16) & ~v258;
    v251 = v598;
    v265 = swift_allocObject();
    v266 = v257;
    v200 = &qword_280939000;
    sub_2741383D8(v266, v265 + v264, type metadata accessor for NetworkDetailsView);
    v267 = v513;
    v268 = &v263[*(v513 + 36)];
    *v268 = sub_274138294;
    v268[1] = v265;
    v268[2] = 0;
    v268[3] = 0;
    v269 = v263;
    v250 = &qword_280939000;
    v248 = v596;
    v270 = v511;
    sub_2740A6C18(v269, v511, &qword_28093A0A8, &qword_2741D3978);
    v271 = 0;
  }

  else
  {
    sub_2740ACB2C(&v628);
    v271 = 1;
    v267 = v513;
    v270 = v511;
    v250 = &qword_280939000;
  }

  (*(v512 + 56))(v270, v271, 1, v267);
  v284 = v270;
  v285 = v585;
  sub_2740A6C18(v284, v585, &qword_28093A0B0, &qword_2741D3980);
  (*(v544 + 56))(v285, 0, 1, v545);
LABEL_49:
  *&v599 = v251;
  *(&v599 + 1) = v249;
  sub_2741C7A3C();
  v286 = v606;
  swift_getKeyPath();
  v287 = v200[334];
  *&v599 = v286;
  sub_2741C6A0C();

  v288 = v250[327];
  swift_beginAccess();
  sub_27409D4E4(v286 + v288, &v606);

  if (swift_dynamicCast())
  {
    v629[3] = *v603;
    v629[4] = *&v603[16];
    LOBYTE(v630) = v603[32];
    v628 = v599;
    v629[0] = v600;
    v629[1] = v601;
    v629[2] = v602;
    *&v601 = 0;
    v599 = 0u;
    v600 = 0u;
    if (qword_280937B98 != -1)
    {
      swift_once();
    }

    type metadata accessor for WiFiSystemConfiguration();
    v289 = swift_allocObject();

    v291 = sub_27409CBB0(v290, &v599, v289);

    v292 = *(v291 + 16);
    v293 = sub_2741980C8();
    MEMORY[0x28223BE20](v293);
    *(&v494 - 2) = &v628;
    v294 = v522;
    sub_27412670C(sub_2741380A4, v293, v522);

    v295 = v294;

    v296 = (*(v546 + 48))(v294, 1, v547);
    v297 = v523;
    if (v296 == 1)
    {
      sub_27409D420(v295, &qword_280938570, &qword_2741D1630);
    }

    else
    {
      v306 = v518;
      sub_2741383D8(v295, v518, type metadata accessor for KnownNetwork);
      *&v599 = v598;
      *(&v599 + 1) = v595;
      sub_2741C7A3C();
      v307 = v606;
      swift_getKeyPath();
      *&v599 = v307;
      sub_2741C6A0C();

      v308 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
      swift_beginAccess();
      sub_27409D4E4(v307 + v308, &v599);

      v309 = *(&v600 + 1);
      v310 = v601;
      __swift_project_boxed_opaque_existential_1(&v599, *(&v600 + 1));
      LOBYTE(v308) = (*(v310 + 56))(v309, v310);
      __swift_destroy_boxed_opaque_existential_1Tm(&v599);
      if ((v308 & 1) == 0 && (*(v306 + 114) & 1) == 0)
      {
        v480 = v534;
        v481 = v508;
        sub_274137EA4(v306, v508 + *(v534 + 36), type metadata accessor for KnownNetwork);
        *v481 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
        swift_storeEnumTagMultiPayload();
        v588 = type metadata accessor for NetworkDetailsModel();
        v482 = sub_2741C6CEC();
        v484 = v483;
        *&v601 = 0;
        v599 = 0u;
        v600 = 0u;
        v485 = swift_allocObject();

        v487 = sub_27409CBB0(v486, &v599, v485);

        *&v601 = 0;
        v599 = 0u;
        v600 = 0u;

        v489 = sub_274175B8C(v488, &v599);
        v490 = v481 + v480[5];
        *v490 = v482;
        v490[8] = v484 & 1;
        v491 = v481 + v480[6];
        LOBYTE(v639[0]) = 0;
        sub_2741C7A2C();
        v492 = *(&v599 + 1);
        *v491 = v599;
        *(v491 + 1) = v492;
        *(v481 + v480[7]) = v487;
        *(v481 + v480[8]) = v489;
        v313 = v248;
        *&v599 = v598;
        *(&v599 + 1) = v595;
        sub_2741C7A3C();
        sub_274138B18(&qword_28093A168, type metadata accessor for ForgetNetworkSection);
        v493 = v509;
        sub_2741C770C();

        sub_274138044(v481, type metadata accessor for ForgetNetworkSection);
        sub_274138044(v518, type metadata accessor for KnownNetwork);
        v312 = v533;
        (*(v533 + 32))(v297, v493, v535);
        v311 = 0;
        goto LABEL_61;
      }

      sub_274138044(v306, type metadata accessor for KnownNetwork);
    }

    v311 = 1;
    v312 = v533;
    v313 = v248;
LABEL_61:
    (*(v312 + 56))(v297, v311, 1, v535);
    sub_2740A6D94(v297, v532, &qword_28093A098, &unk_2741D3960);
    swift_storeEnumTagMultiPayload();
    sub_274137F10();
    v314 = type metadata accessor for NetworkDetailsModel();
    v315 = sub_274138B18(&qword_28093A168, type metadata accessor for ForgetNetworkSection);
    *&v599 = v534;
    *(&v599 + 1) = v314;
    *&v600 = v315;
    *(&v600 + 1) = v313;
    swift_getOpaqueTypeConformance2();
    v316 = v586;
    sub_2741C72CC();
    sub_27409D420(v297, &qword_28093A098, &unk_2741D3960);
    sub_2740ACB2C(&v628);
    v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0F0, &qword_2741D39F0);
    (*(*(v317 - 8) + 56))(v316, 0, 1, v317);
    v318 = v598;
    v200 = &qword_280939000;
    v249 = v595;
    goto LABEL_67;
  }

  memset(v603, 0, 33);
  v601 = 0u;
  v602 = 0u;
  v599 = 0u;
  v600 = 0u;
  sub_27409D420(&v599, &qword_280938340, &qword_2741D1660);
  *&v628 = v251;
  *(&v628 + 1) = v249;
  sub_2741C7A3C();
  v298 = v599;
  swift_getKeyPath();
  v299 = v200[334];
  *&v599 = v298;
  sub_2741C6A0C();

  v300 = v250[327];
  swift_beginAccess();
  sub_27409D4E4(v298 + v300, &v628);

  v301 = v521;
  v302 = v547;
  v303 = swift_dynamicCast();
  v304 = *(v546 + 56);
  if ((v303 & 1) == 0)
  {
    v304(v301, 1, 1, v302);
    sub_27409D420(v301, &qword_280938570, &qword_2741D1630);
    goto LABEL_63;
  }

  v304(v301, 0, 1, v302);
  v305 = v520;
  sub_2741383D8(v301, v520, type metadata accessor for KnownNetwork);
  if (*(v305 + 114))
  {
    sub_274138044(v305, type metadata accessor for KnownNetwork);
LABEL_63:
    v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0F0, &qword_2741D39F0);
    (*(*(v319 - 8) + 56))(v586, 1, 1, v319);
    v318 = v598;
    goto LABEL_67;
  }

  v320 = v534;
  v321 = v508;
  sub_274137EA4(v305, v508 + *(v534 + 36), type metadata accessor for KnownNetwork);
  *v321 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  v322 = type metadata accessor for NetworkDetailsModel();
  v323 = sub_2741C6CEC();
  v325 = v324;
  v628 = 0u;
  memset(v629, 0, 24);
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  type metadata accessor for WiFiSystemConfiguration();
  v326 = swift_allocObject();

  v328 = sub_27409CBB0(v327, &v628, v326);

  v628 = 0u;
  memset(v629, 0, 24);

  v330 = sub_274175B8C(v329, &v628);
  v331 = v321 + v320[5];
  *v331 = v323;
  v331[8] = v325 & 1;
  v332 = v321 + v320[6];
  LOBYTE(v599) = 0;
  sub_2741C7A2C();
  v333 = *(&v628 + 1);
  *v332 = v628;
  *(v332 + 1) = v333;
  *(v321 + v320[7]) = v328;
  *(v321 + v320[8]) = v330;
  *&v628 = v598;
  *(&v628 + 1) = v595;
  sub_2741C7A3C();
  v334 = sub_274138B18(&qword_28093A168, type metadata accessor for ForgetNetworkSection);
  v335 = v509;
  v588 = v322;
  v336 = v596;
  sub_2741C770C();

  sub_274138044(v321, type metadata accessor for ForgetNetworkSection);
  v337 = v320;
  v338 = v533;
  v339 = v535;
  (*(v533 + 16))(v532, v335, v535);
  swift_storeEnumTagMultiPayload();
  sub_274137F10();
  *&v628 = v337;
  v249 = v595;
  *(&v628 + 1) = v588;
  *&v629[0] = v334;
  v318 = v598;
  *(&v629[0] + 1) = v336;
  swift_getOpaqueTypeConformance2();
  v340 = v586;
  sub_2741C72CC();
  (*(v338 + 8))(v335, v339);
  sub_274138044(v520, type metadata accessor for KnownNetwork);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0F0, &qword_2741D39F0);
  (*(*(v341 - 8) + 56))(v340, 0, 1, v341);
  v200 = &qword_280939000;
LABEL_67:
  *&v628 = v318;
  *(&v628 + 1) = v249;
  sub_2741C7A3C();
  v342 = v599;
  swift_getKeyPath();
  v343 = v200[334];
  *&v628 = v342;
  sub_2741C6A0C();

  v344 = *(v342 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v344 == 3)
  {
    v346 = 1;
    v347 = v587;
    v349 = v549;
    v348 = v550;
  }

  else
  {
    MEMORY[0x28223BE20](v345);
    *(&v494 - 2) = v594;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A0F8, &qword_2741D39F8);
    sub_2740A6D24(&qword_28093A100, &qword_28093A0F8, &qword_2741D39F8);
    v350 = v524;
    sub_2741C7B9C();
    v349 = v549;
    v347 = v587;
    v351 = v350;
    v348 = v550;
    (*(v549 + 32))(v587, v351, v550);
    v346 = 0;
  }

  v352 = 1;
  (*(v349 + 56))(v347, v346, 1, v348);
  v353 = v598;
  *&v628 = v598;
  *(&v628 + 1) = v249;
  sub_2741C7A3C();
  v354 = v599;
  swift_getKeyPath();
  v355 = v200[334];
  *&v628 = v354;
  sub_2741C6A0C();

  v356 = *(v354 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v356 != 3)
  {
    *&v628 = v353;
    *(&v628 + 1) = v249;
    sub_2741C7A3C();
    v357 = v599;
    swift_getKeyPath();
    v358 = v200[334];
    *&v628 = v357;
    sub_2741C6A0C();

    v359 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    v360 = v581;
    sub_274137EA4(v357 + v359, v581, type metadata accessor for NetworkSettings);

    v361 = *(v360 + *(v582 + 80));
    v362 = sub_274138044(v360, type metadata accessor for NetworkSettings);
    if ((v361 & 0x2000) != 0)
    {
      MEMORY[0x28223BE20](v362);
      v363 = v594;
      *(&v494 - 2) = v594;
      if (*(v363 + *(v514 + 32)) == 1)
      {
        if (qword_280937740 != -1)
        {
          swift_once();
        }

        v364 = &qword_2809465B8;
      }

      else
      {
        if (qword_280937738 != -1)
        {
          swift_once();
        }

        v364 = &qword_2809465A8;
      }

      v366 = *v364;
      v365 = v364[1];

      *&v628 = v366;
      *(&v628 + 1) = v367;
      sub_2740A6A74();
      *&v628 = sub_2741C76AC();
      *(&v628 + 1) = v368;
      LOBYTE(v629[0]) = v369 & 1;
      *(&v629[0] + 1) = v370;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
      sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0);
      v371 = v515;
      sub_2741C7BAC();
      (*(v559 + 32))(v592, v371, v580);
      v352 = 0;
      v353 = v598;
    }

    else
    {
      v352 = 1;
    }
  }

  v372 = v249;
  v373 = v200;
  v374 = *(v559 + 56);
  v588 = v559 + 56;
  v582 = v374;
  v374(v592, v352, 1, v580);
  *&v628 = v353;
  *(&v628 + 1) = v249;
  sub_2741C7A3C();
  v375 = v599;
  swift_getKeyPath();
  v376 = v200[334];
  *&v628 = v375;
  sub_2741C6A0C();

  v377 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  v378 = v548;
  sub_274137EA4(v375 + v377, v548, type metadata accessor for NetworkSettings);

  LODWORD(v377) = *(v378 + 160);
  sub_274138044(v378, type metadata accessor for NetworkSettings);
  v379 = 1;
  if (v377 == 1)
  {
    *&v628 = v353;
    *(&v628 + 1) = v249;
    sub_2741C7A3C();
    v380 = v599;
    swift_getKeyPath();
    v381 = v200[334];
    *&v628 = v380;
    sub_2741C6A0C();

    v382 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    v383 = v581;
    sub_274137EA4(v380 + v382, v581, type metadata accessor for NetworkSettings);

    v384 = *(v383 + 48);
    sub_274138044(v383, type metadata accessor for NetworkSettings);
    if (v384)
    {
      v379 = 1;
      v373 = &qword_280939000;
      goto LABEL_86;
    }

    *&v628 = v353;
    *(&v628 + 1) = v249;
    sub_2741C7A3C();
    v385 = v599;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v386 = result;
      v387 = MobileGestalt_get_wapiCapability();

      *&v628 = v385;
      BYTE8(v628) = v387;
      v388 = v498;
      sub_2741C73FC();
      sub_274137E48();
      v389 = v497;
      v390 = v500;
      sub_2741C771C();
      (*(v499 + 8))(v388, v390);

      (*(v557 + 32))(v590, v389, v558);
      v379 = 0;
      v373 = &qword_280939000;
      v353 = v598;
      v372 = v595;
      goto LABEL_86;
    }

    goto LABEL_118;
  }

LABEL_86:
  (*(v557 + 56))(v590, v379, 1, v558);
  *&v628 = v353;
  *(&v628 + 1) = v372;
  sub_2741C7A3C();
  v391 = v599;
  swift_getKeyPath();
  v392 = v373[334];
  *&v628 = v391;
  sub_2741C6A0C();

  v393 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  v394 = v391 + v393;
  v395 = v536;
  sub_274137EA4(v394, v536, type metadata accessor for NetworkSettings);

  if (*(v395 + 48))
  {
    sub_274138044(v395, type metadata accessor for NetworkSettings);
    (*(v537 + 56))(v583, 1, 1, v538);
    v396 = v598;
  }

  else
  {
    v397 = sub_274138044(v395, type metadata accessor for NetworkSettings);
    MEMORY[0x28223BE20](v397);
    v398 = v594;
    *(&v494 - 2) = v594;
    v399 = sub_2741C71BC();
    LOBYTE(v628) = 1;
    sub_274132EE0(v398, &v599);
    *&v636[7] = v599;
    *&v636[55] = v602;
    *&v636[39] = v601;
    *&v636[23] = v600;
    v400 = v628;
    v628 = v399;
    LOBYTE(v629[0]) = v400;
    *(v629 + 1) = *v636;
    *&v629[4] = *(&v602 + 1);
    *(&v629[3] + 1) = *&v636[48];
    *(&v629[2] + 1) = *&v636[32];
    *(&v629[1] + 1) = *&v636[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A108, &qword_2741D3A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809398B8, &qword_2741D07B8);
    sub_2740A6D24(&qword_28093A110, &qword_28093A108, &qword_2741D3A00);
    v396 = v598;
    sub_2740A6D24(&qword_2809398B0, &qword_2809398B8, &qword_2741D07B8);
    v401 = v519;
    sub_2741C7BAC();
    v403 = v537;
    v402 = v538;
    v404 = v583;
    v405 = v401;
    v372 = v595;
    (*(v537 + 32))(v583, v405, v538);
    (*(v403 + 56))(v404, 0, 1, v402);
  }

  *&v628 = v396;
  *(&v628 + 1) = v372;
  sub_2741C7A3C();
  v406 = v599;
  swift_getKeyPath();
  *&v628 = v406;
  sub_2741C6A0C();

  v407 = *(v406 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v407 == 3)
  {
    v408 = v396;
LABEL_92:
    v414 = 1;
    v415 = v594;
    goto LABEL_93;
  }

  v408 = v396;
  *&v628 = v396;
  *(&v628 + 1) = v372;
  sub_2741C7A3C();
  v409 = v599;
  swift_getKeyPath();
  *&v628 = v409;
  sub_2741C6A0C();

  v410 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  v411 = v525;
  sub_274137EA4(v409 + v410, v525, type metadata accessor for NetworkSettings);

  v412 = *(v411 + 48);
  v413 = sub_274138044(v411, type metadata accessor for NetworkSettings);
  if (v412)
  {
    goto LABEL_92;
  }

  MEMORY[0x28223BE20](v413);
  v415 = v594;
  *(&v494 - 2) = v594;
  if (qword_280937790 != -1)
  {
    swift_once();
  }

  v628 = xmmword_280946668;
  sub_2740A6A74();

  *&v628 = sub_2741C76AC();
  *(&v628 + 1) = v476;
  LOBYTE(v629[0]) = v477 & 1;
  *(&v629[0] + 1) = v478;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0);
  v479 = v505;
  sub_2741C7BAC();
  (*(v559 + 32))(v589, v479, v580);
  v414 = 0;
LABEL_93:
  (v582)(v589, v414, 1, v580);
  if (qword_2809377A8 != -1)
  {
    swift_once();
  }

  v628 = xmmword_280946698;
  v416 = sub_2740A6A74();

  v588 = v416;
  *&v628 = sub_2741C76AC();
  *(&v628 + 1) = v417;
  LOBYTE(v629[0]) = v418 & 1;
  *(&v629[0] + 1) = v419;
  MEMORY[0x28223BE20](v628);
  *(&v494 - 2) = v415;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A118, &qword_2741D3A08);
  sub_2740A6D24(&qword_28093A120, &qword_28093A118, &qword_2741D3A08);
  sub_2741C7B7C();
  *&v628 = v408;
  v420 = v595;
  *(&v628 + 1) = v595;
  sub_2741C7A3C();
  v421 = v599;
  swift_getKeyPath();
  *&v628 = v421;
  sub_2741C6A0C();

  v422 = *(v421 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  v423 = v539;
  if (v422 == 1)
  {
    *&v628 = v408;
    *(&v628 + 1) = v420;
    sub_2741C7A3C();
    v424 = v599;
    swift_getKeyPath();
    *&v628 = v424;
    sub_2741C6A0C();

    v426 = *(v424 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
    v425 = *(v424 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
    v427 = *(v424 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
    v428 = *(v424 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
    v429 = *(v424 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
    sub_274103F80(v426, v425);

    if (v425 != 1)
    {

      sub_2740CC5FC(v426, v425);
      v431 = v594;
      v434 = v423;
      if (v425)
      {

        *&v628 = v598;
        *(&v628 + 1) = v595;
        sub_2741C7A3C();
        v465 = v599;
        swift_getKeyPath();
        *&v628 = v465;
        sub_2741C6A0C();

        v466 = *(v465 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
        v467 = *(v465 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
        v468 = *(v465 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
        v469 = *(v465 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
        v470 = *(v465 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
        sub_274103F80(v466, v467);

        if (v467 == 1 || (, sub_2740CC5FC(v466, v467), !v470))
        {
          v430 = 1;
          v433 = v551;
          v432 = v552;
        }

        else
        {

          if (qword_2809377B0 != -1)
          {
            swift_once();
          }

          v628 = xmmword_2809466A8;

          *&v628 = sub_2741C76AC();
          *(&v628 + 1) = v471;
          LOBYTE(v629[0]) = v472 & 1;
          *(&v629[0] + 1) = v473;
          MEMORY[0x28223BE20](v628);
          *(&v494 - 2) = v431;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A150, &qword_2741D3A50);
          sub_2740A6D24(&qword_28093A158, &qword_28093A150, &qword_2741D3A50);
          v474 = v495;
          sub_2741C7B7C();
          v433 = v551;
          v475 = v552;
          (*(v551 + 32))(v579, v474, v552);
          v432 = v475;
          v430 = 0;
        }
      }

      else
      {
        v430 = 1;
        v433 = v551;
        v432 = v552;
      }

      goto LABEL_100;
    }

    v430 = 1;
    v431 = v594;
    v433 = v551;
    v432 = v552;
  }

  else
  {
    v430 = 1;
    v433 = v551;
    v432 = v552;
    v431 = v594;
  }

  v434 = v423;
LABEL_100:
  (*(v433 + 56))(v579, v430, 1, v432);
  if (qword_280937808 != -1)
  {
    swift_once();
  }

  v628 = xmmword_280946758;

  *&v628 = sub_2741C76AC();
  *(&v628 + 1) = v435;
  LOBYTE(v629[0]) = v436 & 1;
  *(&v629[0] + 1) = v437;
  MEMORY[0x28223BE20](v628);
  *(&v494 - 2) = v431;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A128, &qword_2741D3A10);
  sub_2740A6D24(&qword_28093A130, &qword_28093A128, &qword_2741D3A10);
  sub_2741C7B7C();
  if (qword_280937818 != -1)
  {
    swift_once();
  }

  v628 = xmmword_280946778;

  *&v628 = sub_2741C76AC();
  *(&v628 + 1) = v438;
  LOBYTE(v629[0]) = v439 & 1;
  *(&v629[0] + 1) = v440;
  MEMORY[0x28223BE20](v628);
  *(&v494 - 2) = v431;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A138, &qword_2741D3A18);
  sub_2740A6D24(&qword_28093A140, &qword_28093A138, &qword_2741D3A18);
  sub_2741C7B7C();
  v441 = v561;
  sub_2740A6D94(v560, v561, &qword_28093A0E8, &qword_2741D39C0);
  *&v599 = v441;
  v442 = v562;
  sub_2740A6D94(v591, v562, &qword_28093A0D8, &qword_2741D39B0);
  *(&v599 + 1) = v442;
  v443 = v563;
  sub_2740A6D94(v593, v563, &qword_28093A0C0, &qword_2741D3998);
  *&v600 = v443;
  sub_2740A6D94(v643, &v628, &qword_28093A148, &qword_2741D3A20);
  *(&v600 + 1) = &v628;
  v444 = v564;
  sub_2740A6D94(v585, v564, &qword_28093A0B8, &unk_2741D3988);
  *&v601 = v444;
  v445 = v565;
  sub_2740A6D94(v586, v565, &qword_28093A0A0, &qword_2741D3970);
  *(&v601 + 1) = v445;
  v446 = v566;
  sub_2740A6D94(v587, v566, &qword_28093A080, &qword_2741D3948);
  *&v602 = v446;
  v447 = v568;
  sub_2740A6D94(v592, v568, &qword_28093A070, &qword_2741D3938);
  *(&v602 + 1) = v447;
  v448 = v569;
  sub_2740A6D94(v590, v569, &qword_28093A060, &qword_2741D3928);
  *v603 = v448;
  v449 = v570;
  sub_2740A6D94(v583, v570, &qword_28093A050, &qword_2741D3918);
  *&v603[8] = v449;
  v450 = v567;
  sub_2740A6D94(v589, v567, &qword_28093A070, &qword_2741D3938);
  *&v603[16] = v450;
  v451 = v571;
  v452 = v574;
  (*(v573 + 16))(v571, v584, v574);
  *&v603[24] = v451;
  v453 = v579;
  v454 = v575;
  sub_2740A6D94(v579, v575, &qword_28093A038, &qword_2741D3900);
  *&v603[32] = v454;
  v456 = v541;
  v455 = v542;
  v457 = v576;
  (*(v541 + 16))(v576, v434, v542);
  *&v603[40] = v457;
  v458 = v434;
  v459 = v543;
  v460 = v577;
  v461 = v572;
  v462 = v578;
  (*(v543 + 16))(v577, v572, v578);
  *&v603[48] = v460;
  sub_274126448(&v599, v540);
  v598 = *(v459 + 8);
  v598(v461, v462);
  v463 = *(v456 + 8);
  v463(v458, v455);
  sub_27409D420(v453, &qword_28093A038, &qword_2741D3900);
  v464 = *(v573 + 8);
  v464(v584, v452);
  sub_27409D420(v589, &qword_28093A070, &qword_2741D3938);
  sub_27409D420(v583, &qword_28093A050, &qword_2741D3918);
  sub_27409D420(v590, &qword_28093A060, &qword_2741D3928);
  sub_27409D420(v592, &qword_28093A070, &qword_2741D3938);
  sub_27409D420(v587, &qword_28093A080, &qword_2741D3948);
  sub_27409D420(v586, &qword_28093A0A0, &qword_2741D3970);
  sub_27409D420(v585, &qword_28093A0B8, &unk_2741D3988);
  sub_27409D420(v643, &qword_28093A148, &qword_2741D3A20);
  sub_27409D420(v593, &qword_28093A0C0, &qword_2741D3998);
  sub_27409D420(v591, &qword_28093A0D8, &qword_2741D39B0);
  sub_27409D420(v560, &qword_28093A0E8, &qword_2741D39C0);
  v598(v577, v578);
  v463(v576, v455);
  sub_27409D420(v575, &qword_28093A038, &qword_2741D3900);
  v464(v571, v574);
  sub_27409D420(v567, &qword_28093A070, &qword_2741D3938);
  sub_27409D420(v570, &qword_28093A050, &qword_2741D3918);
  sub_27409D420(v569, &qword_28093A060, &qword_2741D3928);
  sub_27409D420(v568, &qword_28093A070, &qword_2741D3938);
  sub_27409D420(v566, &qword_28093A080, &qword_2741D3948);
  sub_27409D420(v565, &qword_28093A0A0, &qword_2741D3970);
  sub_27409D420(v564, &qword_28093A0B8, &unk_2741D3988);
  sub_27409D420(&v628, &qword_28093A148, &qword_2741D3A20);
  sub_27409D420(v563, &qword_28093A0C0, &qword_2741D3998);
  sub_27409D420(v562, &qword_28093A0D8, &qword_2741D39B0);
  return sub_27409D420(v561, &qword_28093A0E8, &qword_2741D39C0);
}

uint64_t sub_27412C508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1A8, &qword_2741D3A98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  *a2 = sub_2741C71AC();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v10[0] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1B0, &unk_2741D3AA0) + 44);
  v10[1] = a1;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1B8, &qword_2741D3AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1C0, &qword_2741D3AD0);
  sub_2740A6D24(&qword_28093A1C8, &qword_28093A1B8, &qword_2741D3AC8);
  sub_274138540();
  sub_274138594();
  sub_2741C7B5C();
  sub_2741C6D4C();
  sub_274138644();
  sub_2741C778C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_27412C72C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1E8, &qword_2741D3AD8);
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v45 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A1F8, &qword_2741D3AE0);
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A200, &qword_2741D3AE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v19 = *a1;
  v20 = a1[1];
  LOBYTE(v54) = *a1;
  BYTE1(v54) = v20;
  if (sub_27410D404(&v54))
  {
    v46 = v5;
    v47 = a3;
    v45 = sub_2741C71BC();
    v57 = 0;
    if (v20)
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    sub_27412CD38(v21 | v19, &v54);
    v62 = v55[3];
    v63 = v55[4];
    v64 = v55[5];
    v65 = *&v55[6];
    v58 = v54;
    v59 = v55[0];
    v60 = v55[1];
    v61 = v55[2];
    v66[0] = v54;
    v66[1] = v55[0];
    v66[2] = v55[1];
    v66[3] = v55[2];
    v66[4] = v55[3];
    v66[5] = v55[4];
    v66[6] = v55[5];
    v67 = *&v55[6];
    sub_2740A6D94(&v58, &v52, &qword_28093A208, &unk_2741D3AF0);
    sub_27409D420(v66, &qword_28093A208, &unk_2741D3AF0);
    *(&v56[4] + 7) = v62;
    *(&v56[5] + 7) = v63;
    *(&v56[6] + 7) = v64;
    *(&v56[7] + 7) = v65;
    *(v56 + 7) = v58;
    *(&v56[1] + 7) = v59;
    *(&v56[2] + 7) = v60;
    *(&v56[3] + 7) = v61;
    v22 = v57;
    v23 = *(v48 + 16);
    if (v23 && (v24 = v48 + 2 * v23, v26 = *(v24 + 30), v25 = v24 + 30, v19 == v26) && *(v25 + 1) == v20)
    {
      v34 = 1;
    }

    else
    {
      sub_2741C7B4C();
      v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A210, &qword_2741D7140) + 36)];
      v27[32] = 0;
      *v27 = 0u;
      *(v27 + 1) = 0u;
      v28 = sub_2741C757C();
      sub_2741C6C6C();
      v29 = &v12[*(v9 + 36)];
      *v29 = v28;
      *(v29 + 1) = v30;
      *(v29 + 2) = v31;
      *(v29 + 3) = v32;
      *(v29 + 4) = v33;
      v29[40] = 0;
      sub_2740A6C18(v12, v18, &qword_28093A1F8, &qword_2741D3AE0);
      v34 = 0;
    }

    (*(v49 + 56))(v18, v34, 1, v9);
    v35 = v50;
    sub_2740A6D94(v18, v50, &qword_28093A200, &qword_2741D3AE8);
    v36 = v45;
    *&v52 = v45;
    *(&v52 + 1) = 0x4034000000000000;
    LOBYTE(v53[0]) = v22;
    *(v53 + 1) = v56[0];
    *(&v53[1] + 1) = v56[1];
    *(&v53[5] + 1) = v56[5];
    *(&v53[4] + 1) = v56[4];
    *(&v53[6] + 1) = v56[6];
    v53[7] = *(&v56[6] + 15);
    *(&v53[2] + 1) = v56[2];
    *(&v53[3] + 1) = v56[3];
    v37 = v53[6];
    v8[6] = v53[5];
    v8[7] = v37;
    v8[8] = v53[7];
    v38 = v53[2];
    v8[2] = v53[1];
    v8[3] = v38;
    v39 = v53[4];
    v8[4] = v53[3];
    v8[5] = v39;
    v40 = v53[0];
    *v8 = v52;
    v8[1] = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A218, &qword_2741D3B00);
    sub_2740A6D94(v35, v8 + *(v41 + 48), &qword_28093A200, &qword_2741D3AE8);
    sub_2740A6D94(&v52, &v54, &qword_28093A220, &qword_2741D3B08);
    sub_27409D420(v18, &qword_28093A200, &qword_2741D3AE8);
    sub_27409D420(v35, &qword_28093A200, &qword_2741D3AE8);
    *(&v55[4] + 1) = v56[4];
    *(&v55[5] + 1) = v56[5];
    *(&v55[6] + 1) = v56[6];
    v55[7] = *(&v56[6] + 15);
    *(v55 + 1) = v56[0];
    *(&v55[1] + 1) = v56[1];
    *(&v55[2] + 1) = v56[2];
    *&v54 = v36;
    *(&v54 + 1) = 0x4034000000000000;
    LOBYTE(v55[0]) = v22;
    *(&v55[3] + 1) = v56[3];
    sub_27409D420(&v54, &qword_28093A220, &qword_2741D3B08);
    v42 = v47;
    sub_2740A6C18(v8, v47, &qword_28093A1E8, &qword_2741D3AD8);
    return (*(v51 + 56))(v42, 0, 1, v46);
  }

  else
  {
    v44 = *(v51 + 56);

    return v44(a3, 1, 1, v5);
  }
}

uint64_t sub_27412CD38@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v25 = sub_2741C71BC();
  sub_27412CF64(a1, v36);
  *&v35[7] = v36[0];
  *&v35[23] = v36[1];
  *&v35[39] = v36[2];
  *&v35[55] = v36[3];
  LOWORD(v28) = a1 & 0x1FF;
  LOBYTE(v26) = a1;
  v4 = sub_27410CA84(&v26);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (v5)
  {
    v7 = v5;
  }

  v28 = v6;
  v29 = v7;
  sub_2740A6A74();
  v8 = sub_2741C76AC();
  v10 = v9;
  v12 = v11;
  LODWORD(v28) = sub_2741C737C();
  v13 = sub_2741C764C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2740A6AC8(v8, v10, v12 & 1);

  *&v26 = v25;
  *(&v26 + 1) = 0x4008000000000000;
  v27[0] = 0;
  *&v27[1] = *v35;
  *&v27[49] = *&v35[48];
  *&v27[33] = *&v35[32];
  *&v27[17] = *&v35[16];
  *&v27[64] = *&v35[63];
  v20 = *&v35[63];
  v21 = *v27;
  *a2 = v26;
  *(a2 + 16) = v21;
  v22 = *&v27[16];
  v23 = *&v27[48];
  *(a2 + 48) = *&v27[32];
  *(a2 + 64) = v23;
  *(a2 + 32) = v22;
  *(a2 + 80) = v20;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = v17 & 1;
  *(a2 + 112) = v19;
  sub_2740A6D94(&v26, &v28, &qword_2809398B8, &qword_2741D07B8);
  sub_27409861C(v13, v15, v17 & 1);

  sub_2740A6AC8(v13, v15, v17 & 1);

  v28 = v25;
  v29 = 0x4008000000000000;
  v30 = 0;
  v32 = *&v35[16];
  v33 = *&v35[32];
  *v34 = *&v35[48];
  *&v34[15] = *&v35[63];
  v31 = *v35;
  return sub_27409D420(&v28, &qword_2809398B8, &qword_2741D07B8);
}

uint64_t sub_27412CF64@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v28[0] = a1;
  sub_27410C238(v28);
  sub_2740A6A74();
  v4 = sub_2741C76AC();
  v6 = v5;
  v8 = v7;
  sub_2741C75EC();
  v26 = sub_2741C767C();
  v27 = v9;
  v11 = v10;
  v25 = v12;

  sub_2740A6AC8(v4, v6, v8 & 1);

  v28[0] = a1;
  sub_27410C5C0(v28);
  v13 = sub_2741C76AC();
  v15 = v14;
  v17 = v16;
  sub_2741C737C();
  v18 = sub_2741C764C();
  v20 = v19;
  LOBYTE(v6) = v21;
  v23 = v22;
  sub_2740A6AC8(v13, v15, v17 & 1);

  v28[0] = v6 & 1;
  *a2 = v26;
  *(a2 + 8) = v11;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v6 & 1;
  *(a2 + 56) = v23;
  sub_27409861C(v26, v11, v25 & 1);

  sub_27409861C(v18, v20, v6 & 1);

  sub_2740A6AC8(v18, v20, v6 & 1);

  sub_2740A6AC8(v26, v11, v25 & 1);
}

uint64_t sub_27412D18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C713C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  LOBYTE(a1) = *(a1 + *(type metadata accessor for NetworkDetailsView() + 32));
  sub_2741C712C();
  sub_2741C711C();
  if (a1)
  {
    if (qword_280937658 != -1)
    {
      swift_once();
    }

    v6 = &qword_2809463E8;
  }

  else
  {
    if (qword_280937650 != -1)
    {
      swift_once();
    }

    v6 = &qword_2809463D8;
  }

  v7 = *v6;
  v8 = v6[1];

  sub_2741C710C();

  sub_2741C711C();
  sub_2741C715C();
  result = sub_2741C768C();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_27412D328(uint64_t a1)
{
  v2 = sub_2741C6DBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  v7 = qword_280946F30;
  v10[3] = &type metadata for ScannedNetwork;
  v10[4] = sub_2740F2248();
  v10[0] = swift_allocObject();
  sub_2740ACAC8(a1, v10[0] + 16);

  sub_274137AA4(v10, v7);

  sub_274138710(v10);
  sub_2741268D8(v6);
  sub_2741C6DAC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_27412D498@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809377F0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_27412D53C(uint64_t a1)
{
  v2 = 0xD000000000000019;
  sub_2741C856C();
  v3 = type metadata accessor for NetworkDetailsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A018, &qword_2741D38E0);
  v4 = sub_2741C7EBC();
  v6 = v5;

  MEMORY[0x2743E5FB0](0xD000000000000023, 0x80000002741DD160);
  v7 = (a1 + *(v3 + 20));
  v12 = *v7;
  v13 = v7[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v8 = *(v11 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v8 <= 1)
  {
    if (v8)
    {
      v9 = 0xEF6B726F7774656ELL;
      v2 = 0x20746E6572727563;
    }

    else
    {
      v9 = 0x80000002741DBD20;
    }
  }

  else if (v8 == 2)
  {
    v9 = 0x80000002741DBD00;
    v2 = 0xD00000000000001CLL;
  }

  else if (v8 == 3)
  {
    v9 = 0x80000002741DBCE0;
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v9 = 0x80000002741DBCB0;
    v2 = 0xD00000000000002ALL;
  }

  MEMORY[0x2743E5FB0](v2, v9);

  sub_2740CB460(v4, v6);
}

uint64_t sub_27412D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A300, &qword_2741D3CE8);
  v167 = *(v168 - 8);
  v3 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v159 = &v146 - v4;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A308, &qword_2741D3CF0);
  v5 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v150 = (&v146 - v6);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A310, &qword_2741D3CF8);
  v160 = *(v157 - 8);
  v7 = *(v160 + 64);
  MEMORY[0x28223BE20](v157);
  v149 = &v146 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A318, &qword_2741D3D00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v161 = &v146 - v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A320, &qword_2741D3D08);
  v154 = *(v155 - 8);
  v15 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v148 = (&v146 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A328, &qword_2741D3D10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v156 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v164 = &v146 - v21;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A330, &qword_2741D3D18);
  v22 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v166 = &v146 - v23;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A338, &qword_2741D3D20);
  v24 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v173 = &v146 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A340, &qword_2741D3D28);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v176 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v175 = &v146 - v30;
  v31 = type metadata accessor for NetworkDetailsView();
  v32 = v31 - 8;
  v33 = *(v31 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v178 = v35;
  v179 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  v184 = *(v36 - 8);
  v37 = *(v184 + 64);
  MEMORY[0x28223BE20](v36);
  v170 = &v146 - v38;
  v39 = type metadata accessor for NetworkSettings();
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v153 = (&v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x28223BE20](v41);
  v152 = &v146 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v165 = &v146 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v146 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A348, &qword_2741D3D30);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v171 = &v146 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v186 = &v146 - v53;
  v54 = *(v32 + 28);
  v180 = a1;
  v55 = (a1 + v54);
  v57 = *v55;
  v56 = v55[1];
  v183 = v57;
  v198 = v57;
  v199 = v56;
  v182 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v59 = v196;
  swift_getKeyPath();
  v198 = v59;
  v181 = sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v60 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v59 + v60, v48, type metadata accessor for NetworkSettings);

  v61 = *&v48[*(v39 + 80)];
  sub_274138044(v48, type metadata accessor for NetworkSettings);
  v185 = v36;
  v158 = v13;
  v169 = v33;
  if ((v61 & 0x200) != 0)
  {
    v147 = v48;
    v162 = v58;
    v163 = v39;
    if (qword_280937798 != -1)
    {
      swift_once();
    }

    v194 = qword_280946678;
    v195 = unk_280946680;
    v65 = v180;
    v66 = v179;
    sub_274137EA4(v180, v179, type metadata accessor for NetworkDetailsView);
    sub_2741C80AC();

    v67 = sub_2741C809C();
    v68 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = v67;
    v70 = MEMORY[0x277D85700];
    *(v69 + 24) = MEMORY[0x277D85700];
    sub_2741383D8(v66, v69 + v68, type metadata accessor for NetworkDetailsView);
    sub_274137EA4(v65, v66, type metadata accessor for NetworkDetailsView);
    v71 = sub_2741C809C();
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    sub_2741383D8(v66, v72 + v68, type metadata accessor for NetworkDetailsView);
    sub_2741C7B2C();
    sub_2740A6A74();
    v73 = v170;
    sub_2741C7ADC();
    v64 = v184;
    v63 = v186;
    v74 = v73;
    v36 = v185;
    (*(v184 + 32))(v186, v74, v185);
    v62 = 0;
    v39 = v163;
    v58 = v162;
    v48 = v147;
  }

  else
  {
    v62 = 1;
    v63 = v186;
    v64 = v184;
  }

  (*(v64 + 56))(v63, v62, 1, v36);
  v75 = v183;
  v76 = v182;
  v196 = v183;
  v197 = v182;
  sub_2741C7A3C();
  v77 = v194;
  swift_getKeyPath();
  v196 = v77;
  sub_2741C6A0C();

  v78 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v77 + v78, v48, type metadata accessor for NetworkSettings);

  v79 = *&v48[*(v39 + 80)];
  sub_274138044(v48, type metadata accessor for NetworkSettings);
  if ((v79 & 0x400) == 0)
  {
    v194 = v75;
    v195 = v76;
    sub_2741C7A3C();
    v80 = v192;
    swift_getKeyPath();
    v194 = v80;
    sub_2741C6A0C();

    v81 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    v82 = v165;
    sub_274137EA4(v80 + v81, v165, type metadata accessor for NetworkSettings);

    v83 = *(v82 + 48);
    sub_274138044(v82, type metadata accessor for NetworkSettings);
    if (v83)
    {
      v84 = 1;
      v85 = v175;
      v86 = v166;
LABEL_22:
      (*(v167 + 56))(v86, v84, 1, v168);
      sub_2740A6D94(v86, v173, &qword_28093A330, &qword_2741D3D18);
      swift_storeEnumTagMultiPayload();
      sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0);
      sub_274138D40();
      sub_2741C72CC();
      sub_27409D420(v86, &qword_28093A330, &qword_2741D3D18);
      goto LABEL_23;
    }

    v192 = v75;
    v193 = v76;
    sub_2741C7A3C();
    v98 = v190;
    swift_getKeyPath();
    v192 = v98;
    sub_2741C6A0C();

    v99 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    sub_274137EA4(v98 + v99, v48, type metadata accessor for NetworkSettings);

    v163 = v39;
    v100 = *&v48[*(v39 + 80)];
    sub_274138044(v48, type metadata accessor for NetworkSettings);
    v162 = v58;
    if ((v100 & 0x800) != 0)
    {
      v190 = v75;
      v191 = v76;
      sub_2741C7A3C();
      v101 = v187;
      swift_getKeyPath();
      v190 = v101;
      sub_2741C6A0C();

      v102 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
      swift_beginAccess();
      v103 = v101 + v102;
      v104 = v152;
      sub_274137EA4(v103, v152, type metadata accessor for NetworkSettings);

      v105 = *(v104 + 72);
      if (v105)
      {
        v106 = *(v104 + 64);
        v107 = *(v104 + 72);

        sub_274138044(v104, type metadata accessor for NetworkSettings);
        v108 = sub_2741C70EC();
        v109 = v148;
        *v148 = v108;
        *(v109 + 8) = 0;
        *(v109 + 16) = 1;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A380, &qword_2741D3D50);
        sub_27412FC2C(v106, v105, (v109 + *(v110 + 44)));

        sub_2740A6C18(v109, v164, &qword_28093A320, &qword_2741D3D08);
        v111 = 0;
LABEL_17:
        v112 = 1;
        (*(v154 + 56))(v164, v111, 1, v155);
        v113 = v183;
        v114 = v182;
        v190 = v183;
        v191 = v182;
        sub_2741C7A3C();
        v115 = v187;
        swift_getKeyPath();
        v190 = v115;
        sub_2741C6A0C();

        v116 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
        swift_beginAccess();
        sub_274137EA4(v115 + v116, v48, type metadata accessor for NetworkSettings);

        v117 = *&v48[*(v163 + 80)];
        sub_274138044(v48, type metadata accessor for NetworkSettings);
        v118 = v157;
        if ((v117 & 0x1000) != 0)
        {
          v187 = v113;
          v188 = v114;
          sub_2741C7A3C();
          v119 = v189;
          swift_getKeyPath();
          v187 = v119;
          sub_2741C6A0C();

          v120 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
          swift_beginAccess();
          v121 = v153;
          sub_274137EA4(v119 + v120, v153, type metadata accessor for NetworkSettings);

          if (v121[9])
          {
            v122 = v121[10];
            v123 = v121[11];

            sub_274138044(v121, type metadata accessor for NetworkSettings);
            v124 = sub_2741C70EC();
            v125 = v150;
            *v150 = v124;
            *(v125 + 8) = 0;
            *(v125 + 16) = 1;
            v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A370, &qword_2741D3D48);
            v127 = v180;
            sub_274130060(v180, v122, v123, (v125 + *(v126 + 44)));

            v128 = v127;
            v129 = v179;
            sub_274137EA4(v128, v179, type metadata accessor for NetworkDetailsView);
            v130 = (*(v169 + 80) + 16) & ~*(v169 + 80);
            v131 = swift_allocObject();
            sub_2741383D8(v129, v131 + v130, type metadata accessor for NetworkDetailsView);
            sub_2740A6D24(&qword_28093A378, &qword_28093A308, &qword_2741D3CF0);
            v132 = v149;
            sub_2741C773C();

            sub_27409D420(v125, &qword_28093A308, &qword_2741D3CF0);
            (*(v160 + 32))(v161, v132, v118);
            v112 = 0;
          }

          else
          {
            sub_274138044(v121, type metadata accessor for NetworkSettings);
          }
        }

        v133 = v161;
        (*(v160 + 56))(v161, v112, 1, v118);
        v134 = v164;
        v135 = v156;
        sub_2740A6D94(v164, v156, &qword_28093A328, &qword_2741D3D10);
        v136 = v158;
        sub_2740A6D94(v133, v158, &qword_28093A318, &qword_2741D3D00);
        v137 = v159;
        sub_2740A6D94(v135, v159, &qword_28093A328, &qword_2741D3D10);
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A350, &qword_2741D3D38);
        sub_2740A6D94(v136, v137 + *(v138 + 48), &qword_28093A318, &qword_2741D3D00);
        sub_27409D420(v133, &qword_28093A318, &qword_2741D3D00);
        sub_27409D420(v134, &qword_28093A328, &qword_2741D3D10);
        sub_27409D420(v136, &qword_28093A318, &qword_2741D3D00);
        sub_27409D420(v135, &qword_28093A328, &qword_2741D3D10);
        v139 = v137;
        v86 = v166;
        sub_2740A6C18(v139, v166, &qword_28093A300, &qword_2741D3CE8);
        v84 = 0;
        v85 = v175;
        goto LABEL_22;
      }

      sub_274138044(v104, type metadata accessor for NetworkSettings);
    }

    v111 = 1;
    goto LABEL_17;
  }

  if (qword_2809377A0 != -1)
  {
    swift_once();
  }

  v192 = qword_280946688;
  v193 = unk_280946690;
  v87 = v180;
  v88 = v179;
  sub_274137EA4(v180, v179, type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();

  v89 = sub_2741C809C();
  v90 = (*(v169 + 80) + 32) & ~*(v169 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  v92 = MEMORY[0x277D85700];
  *(v91 + 24) = MEMORY[0x277D85700];
  sub_2741383D8(v88, v91 + v90, type metadata accessor for NetworkDetailsView);
  sub_274137EA4(v87, v88, type metadata accessor for NetworkDetailsView);
  v93 = sub_2741C809C();
  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  *(v94 + 24) = v92;
  sub_2741383D8(v88, v94 + v90, type metadata accessor for NetworkDetailsView);
  sub_2741C7B2C();
  sub_2740A6A74();
  v95 = v170;
  sub_2741C7ADC();
  v96 = v184;
  v97 = v185;
  (*(v184 + 16))(v173, v95, v185);
  swift_storeEnumTagMultiPayload();
  sub_2740A6D24(&qword_2809383A8, &qword_280938370, &qword_2741CE9B0);
  sub_274138D40();
  v85 = v175;
  sub_2741C72CC();
  (*(v96 + 8))(v95, v97);
LABEL_23:
  v140 = v177;
  v141 = v186;
  v142 = v171;
  sub_2740A6D94(v186, v171, &qword_28093A348, &qword_2741D3D30);
  v143 = v176;
  sub_2740A6D94(v85, v176, &qword_28093A340, &qword_2741D3D28);
  sub_2740A6D94(v142, v140, &qword_28093A348, &qword_2741D3D30);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A368, &qword_2741D3D40);
  sub_2740A6D94(v143, v140 + *(v144 + 48), &qword_28093A340, &qword_2741D3D28);
  sub_27409D420(v85, &qword_28093A340, &qword_2741D3D28);
  sub_27409D420(v141, &qword_28093A348, &qword_2741D3D30);
  sub_27409D420(v143, &qword_28093A340, &qword_2741D3D28);
  return sub_27409D420(v142, &qword_28093A348, &qword_2741D3D30);
}

uint64_t sub_27412EED4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[0] = v10;
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v11 = v14[3];
  swift_getKeyPath();
  v14[0] = v11;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v11 + v12, v7, type metadata accessor for NetworkSettings);

  LOBYTE(v12) = v7[96];
  result = sub_274138044(v7, type metadata accessor for NetworkSettings);
  *a2 = v12;
  return result;
}

uint64_t sub_27412F064(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v6 = type metadata accessor for NetworkDetailsView();
  v7 = v6 - 8;
  v29 = *(v6 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = *a1;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000036, 0x80000002741DD240);
  if (v14)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v15, v16);

  sub_2740CB218(v30, v31, 2036625250, 0xE400000000000000);

  v17 = (a4 + *(v7 + 28));
  v19 = *v17;
  v18 = v17[1];
  v30 = v19;
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v20 = v32;
  swift_getKeyPath();
  v30 = v20;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v30 = v20;
  swift_getKeyPath();
  sub_2741C6A2C();

  v21 = v20 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  *(v21 + 96) = v14;
  v32 = v20;
  swift_getKeyPath();
  sub_2741C6A1C();

  v22 = sub_2741C80DC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_274137EA4(v28, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();
  v23 = sub_2741C809C();
  v24 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  sub_2741383D8(v9, v25 + v24, type metadata accessor for NetworkDetailsView);
  sub_2740CE980(0, 0, v13, &unk_2741D3D60, v25);
}

uint64_t sub_27412F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2741C80AC();
  v4[6] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_27412F4C0, v6, v5);
}

uint64_t sub_27412F4C0()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_27412F594;

  return sub_2741020B8();
}

uint64_t sub_27412F594()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_274139850, v5, v4);
}

uint64_t sub_27412F6D8@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[0] = v10;
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v11 = v14[3];
  swift_getKeyPath();
  v14[0] = v11;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v11 + v12, v7, type metadata accessor for NetworkSettings);

  LOBYTE(v12) = v7[98];
  result = sub_274138044(v7, type metadata accessor for NetworkSettings);
  *a2 = v12;
  return result;
}

uint64_t sub_27412F868(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v6 = type metadata accessor for NetworkDetailsView();
  v7 = v6 - 8;
  v29 = *(v6 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = *a1;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000037, 0x80000002741DD280);
  if (v14)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v15, v16);

  sub_2740CB218(v30, v31, 2036625250, 0xE400000000000000);

  v17 = (a4 + *(v7 + 28));
  v19 = *v17;
  v18 = v17[1];
  v30 = v19;
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v20 = v32;
  swift_getKeyPath();
  v30 = v20;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v30 = v20;
  swift_getKeyPath();
  sub_2741C6A2C();

  v21 = v20 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  *(v21 + 98) = v14;
  v32 = v20;
  swift_getKeyPath();
  sub_2741C6A1C();

  v22 = sub_2741C80DC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_274137EA4(v28, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();
  v23 = sub_2741C809C();
  v24 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  sub_2741383D8(v9, v25 + v24, type metadata accessor for NetworkDetailsView);
  sub_2740CE980(0, 0, v13, &unk_2741D3D70, v25);
}

uint64_t sub_27412FC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v54 = a3;
  v50 = sub_2741C73BC();
  v45 = *(v50 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A388, &qword_2741D3D78);
  v8 = *(*(v51 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v51);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v44 - v11;
  if (qword_2809374A0 != -1)
  {
    swift_once();
  }

  v55 = xmmword_280946078;
  sub_2740A6A74();

  v12 = sub_2741C76AC();
  v46 = v13;
  v47 = v12;
  v48 = v14;
  v49 = v15;
  *&v55 = a1;
  *(&v55 + 1) = a2;

  v16 = sub_2741C76AC();
  v18 = v17;
  v20 = v19;
  *&v55 = sub_2741C798C();
  v21 = sub_2741C764C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_2740A6AC8(v16, v18, v20 & 1);

  *&v55 = v21;
  *(&v55 + 1) = v23;
  v25 &= 1u;
  v56 = v25;
  v57 = v27;
  sub_2741C73AC();
  v28 = v52;
  v29 = v50;
  sub_2741C774C();
  (*(v45 + 8))(v7, v29);
  sub_2740A6AC8(v21, v23, v25);

  v30 = objc_opt_self();
  v31 = [v30 preferredFontForTextStyle_];
  [v31 pointSize];
  v33 = v32;

  v34 = [v30 monospacedSystemFontOfSize:v33 weight:*MEMORY[0x277D74418]];
  v35 = sub_2741C75FC();
  KeyPath = swift_getKeyPath();
  v37 = (v28 + *(v51 + 36));
  *v37 = KeyPath;
  v37[1] = v35;
  v38 = v53;
  sub_2740A6D94(v28, v53, &qword_28093A388, &qword_2741D3D78);
  v39 = v54;
  v41 = v46;
  v40 = v47;
  *v54 = v47;
  v39[1] = v41;
  LOBYTE(v29) = v48 & 1;
  *(v39 + 16) = v48 & 1;
  v39[3] = v49;
  v39[4] = 0;
  *(v39 + 40) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A390, &unk_2741D3DB0);
  sub_2740A6D94(v38, v39 + *(v42 + 64), &qword_28093A388, &qword_2741D3D78);
  sub_27409861C(v40, v41, v29);

  sub_27409D420(v28, &qword_28093A388, &qword_2741D3D78);
  sub_27409D420(v38, &qword_28093A388, &qword_2741D3D78);
  sub_2740A6AC8(v40, v41, v29);
}

uint64_t sub_274130060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v100 = a4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A388, &qword_2741D3D78);
  v7 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v9 = (&v86 - v8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A398, &qword_2741D3DD0);
  v10 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v97 = &v86 - v11;
  v90 = sub_2741C73BC();
  v88 = *(v90 - 8);
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2E0, &qword_2741D3C78);
  v15 = *(v95 - 8);
  v16 = *(v15 + 8);
  MEMORY[0x28223BE20](v95);
  v18 = &v86 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3A0, &qword_2741D3DD8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v98 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v96 = &v86 - v23;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v101 = xmmword_280946088;
  sub_2740A6A74();

  v24 = sub_2741C76AC();
  v92 = v25;
  v93 = v24;
  v89 = v26;
  v94 = v27;
  v28 = (a1 + *(type metadata accessor for NetworkDetailsView() + 24));
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v101) = v29;
  *(&v101 + 1) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v104 == 1)
  {
    *&v101 = sub_2741308B0();
    *(&v101 + 1) = v31;
    v32 = sub_2741C76AC();
    v34 = v33;
    v36 = v35;
    v37 = sub_2741C798C();
    v86 = v18;
    *&v101 = v37;
    v38 = sub_2741C764C();
    v87 = v15;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_2740A6AC8(v32, v34, v36 & 1);

    *&v101 = v39;
    *(&v101 + 1) = v41;
    v43 &= 1u;
    LOBYTE(v102) = v43;
    v103 = v45;
    sub_2741C73AC();
    v46 = MEMORY[0x277CE0BD8];
    v47 = MEMORY[0x277CE06D0];
    v48 = v86;
    v49 = v90;
    sub_2741C774C();
    (*(v88 + 8))(v14, v49);
    sub_2740A6AC8(v39, v41, v43);

    v50 = v87;
    v51 = v95;
    v87[2](v97, v48, v95);
    swift_storeEnumTagMultiPayload();
    *&v101 = v46;
    *(&v101 + 1) = v49;
    v102 = MEMORY[0x277CE0BC8];
    v103 = v47;
    swift_getOpaqueTypeConformance2();
    sub_274139594();
    v52 = v96;
    sub_2741C72CC();
    v50[1](v48, v51);
  }

  else
  {
    *&v101 = a2;
    *(&v101 + 1) = a3;

    v53 = sub_2741C76AC();
    v87 = v9;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    *&v101 = sub_2741C798C();
    v59 = sub_2741C764C();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_2740A6AC8(v54, v56, v58 & 1);

    *&v101 = v59;
    *(&v101 + 1) = v61;
    v66 = v63 & 1;
    LOBYTE(v102) = v63 & 1;
    v103 = v65;
    sub_2741C73AC();
    v67 = MEMORY[0x277CE0BD8];
    v68 = MEMORY[0x277CE0BC8];
    v69 = v87;
    v70 = v90;
    sub_2741C774C();
    (*(v88 + 8))(v14, v70);
    sub_2740A6AC8(v59, v61, v66);

    v71 = objc_opt_self();
    v72 = [v71 preferredFontForTextStyle_];
    [v72 pointSize];
    v74 = v73;

    v75 = [v71 monospacedSystemFontOfSize:v74 weight:*MEMORY[0x277D74418]];
    v76 = sub_2741C75FC();
    KeyPath = swift_getKeyPath();
    v78 = (v69 + *(v99 + 36));
    *v78 = KeyPath;
    v78[1] = v76;
    sub_2740A6D94(v69, v97, &qword_28093A388, &qword_2741D3D78);
    swift_storeEnumTagMultiPayload();
    *&v101 = v67;
    *(&v101 + 1) = v70;
    v102 = v68;
    v103 = MEMORY[0x277CE06D0];
    swift_getOpaqueTypeConformance2();
    sub_274139594();
    v52 = v96;
    sub_2741C72CC();
    sub_27409D420(v69, &qword_28093A388, &qword_2741D3D78);
  }

  v79 = v98;
  sub_2740A6D94(v52, v98, &qword_28093A3A0, &qword_2741D3DD8);
  v80 = v100;
  v82 = v92;
  v81 = v93;
  *v100 = v93;
  v80[1] = v82;
  v83 = v89 & 1;
  *(v80 + 16) = v89 & 1;
  v80[3] = v94;
  v80[4] = 0;
  *(v80 + 40) = 1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3B0, &qword_2741D3DE8);
  sub_2740A6D94(v79, v80 + *(v84 + 64), &qword_28093A3A0, &qword_2741D3DD8);
  sub_27409861C(v81, v82, v83);

  sub_27409D420(v52, &qword_28093A3A0, &qword_2741D3DD8);
  sub_27409D420(v79, &qword_28093A3A0, &qword_2741D3DD8);
  sub_2740A6AC8(v81, v82, v83);
}

uint64_t sub_2741308B0()
{
  if (sub_2741C7F1C() >= 20)
  {
    v1 = 20;
  }

  else
  {
    result = sub_2741C7F1C();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v1 = result;
    if (!result)
    {
      return 0;
    }
  }

  v2 = MEMORY[0x277D83B88];
  v3 = MEMORY[0x277D83C10];
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2741CB550;
    *(v4 + 56) = v2;
    *(v4 + 64) = v3;
    *(v4 + 32) = 63386;
    v5 = sub_2741C7E8C();
    MEMORY[0x2743E5FB0](v5);

    --v1;
  }

  while (v1);
  return 0;
}

uint64_t sub_2741309C4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkDetailsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = a1 + *(v2 + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v26) = *v10;
  v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  result = sub_2741C7A3C();
  if (v25 == 1)
  {
    v24 = v3;
    v14 = (a1 + *(v2 + 20));
    v16 = *v14;
    v15 = v14[1];
    v26 = v16;
    v27 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
    sub_2741C7A3C();
    v17 = v25;
    swift_getKeyPath();
    v26 = v17;
    sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
    sub_2741C6A0C();

    v18 = *(v17 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

    if (v18 == 4)
    {
      LOBYTE(v26) = v11;
      v27 = v12;
      LOBYTE(v25) = 0;
      return sub_2741C7A4C();
    }

    else
    {
      v19 = sub_2741C80DC();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
      sub_274137EA4(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
      sub_2741C80AC();
      v20 = sub_2741C809C();
      v21 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      *(v22 + 16) = v20;
      *(v22 + 24) = v23;
      sub_2741383D8(v5, v22 + v21, type metadata accessor for NetworkDetailsView);
      sub_2740CE980(0, 0, v9, &unk_2741D3DC8, v22);
    }
  }

  return result;
}

uint64_t sub_274130CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_274130DA8;

  return sub_2740B5AD8(1);
}

uint64_t sub_274130DA8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v9 = *v1;
  *(v2 + 72) = a1;

  v7 = sub_2741C805C();
  *(v2 + 48) = v7;
  *(v2 + 56) = v6;

  return MEMORY[0x2822009F8](sub_274130EF4, v7, v6);
}

uint64_t sub_274130EF4()
{
  if ((*(v0 + 72) | 2) == 2)
  {

    return MEMORY[0x2822009F8](sub_274130F9C, 0, 0);
  }

  else
  {
    v1 = *(v0 + 32);

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_274130F9C()
{
  v1 = *(v0 + 24);
  *(v0 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274131028, v3, v2);
}

uint64_t sub_274131028()
{
  v1 = v0[8];
  v2 = v0[2];

  sub_2741C7C4C();
  *(swift_task_alloc() + 16) = v2;
  sub_2741C6DCC();

  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_2741310F0, v3, v4);
}

uint64_t sub_2741310F0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_274131150(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NetworkDetailsView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_2741311C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  v3 = type metadata accessor for NetworkDetailsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_280937730 != -1)
  {
    swift_once();
  }

  v13[4] = qword_280946598;
  v13[5] = unk_2809465A0;
  sub_274137EA4(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();

  v6 = sub_2741C809C();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_2741383D8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for NetworkDetailsView);
  sub_274137EA4(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_2741383D8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for NetworkDetailsView);
  sub_2741C7B2C();
  sub_2740A6A74();
  return sub_2741C7ADC();
}

uint64_t sub_27413140C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[0] = v10;
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v11 = v14[3];
  swift_getKeyPath();
  v14[0] = v11;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v11 + v12, v7, type metadata accessor for NetworkSettings);

  LOBYTE(v12) = v7[56];
  result = sub_274138044(v7, type metadata accessor for NetworkSettings);
  *a2 = v12;
  return result;
}

uint64_t sub_27413159C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v6 = type metadata accessor for NetworkDetailsView();
  v7 = v6 - 8;
  v29 = *(v6 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = *a1;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000003ALL, 0x80000002741DD1B0);
  if (v14)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v15, v16);

  sub_2740CB218(v30, v31, 2036625250, 0xE400000000000000);

  v17 = (a4 + *(v7 + 28));
  v19 = *v17;
  v18 = v17[1];
  v30 = v19;
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v20 = v32;
  swift_getKeyPath();
  v30 = v20;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v30 = v20;
  swift_getKeyPath();
  sub_2741C6A2C();

  v21 = v20 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  *(v21 + 56) = v14;
  v32 = v20;
  swift_getKeyPath();
  sub_2741C6A1C();

  v22 = sub_2741C80DC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_274137EA4(v28, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();
  v23 = sub_2741C809C();
  v24 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  sub_2741383D8(v9, v25 + v24, type metadata accessor for NetworkDetailsView);
  sub_2740CE980(0, 0, v13, &unk_2741D3B38, v25);
}

uint64_t sub_274131960@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2B0, &qword_2741D3C50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2B8, &qword_2741D3C58);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v26 = a1;
  sub_274131C68(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800);
  sub_274138CEC();
  sub_2741C6DDC();
  *v9 = sub_2741C70EC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2C8, &qword_2741D3C60);
  sub_274132464(a1, &v9[*(v18 + 44)]);
  v19 = v11[2];
  v19(v15, v17, v10);
  sub_2740A6D94(v9, v7, &qword_28093A2B0, &qword_2741D3C50);
  v20 = v25;
  v19(v25, v15, v10);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2D0, &qword_2741D3C68);
  sub_2740A6D94(v7, &v20[*(v21 + 48)], &qword_28093A2B0, &qword_2741D3C50);
  sub_27409D420(v9, &qword_28093A2B0, &qword_2741D3C50);
  v22 = v11[1];
  v22(v17, v10);
  sub_27409D420(v7, &qword_28093A2B0, &qword_2741D3C50);
  return (v22)(v15, v10);
}

__n128 sub_274131C68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E8, &unk_2741D3C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v9 = *v8;
  v25 = v8[1];
  v26 = v9;
  *&v45 = v9;
  *(&v45 + 1) = v25;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A5C();
  v10 = v38;
  v11 = v39;
  swift_getKeyPath();
  v36[2] = v10;
  v37 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  sub_2741C7B0C();

  swift_getKeyPath();
  sub_2741C7B0C();

  sub_27409D420(v7, &qword_2809399E8, &unk_2741D3C90);
  v45 = v35[2];
  v46 = v35[3];
  v47[0] = v36[0];
  *(v47 + 9) = *(v36 + 9);
  swift_getKeyPath();
  v33 = v45;
  v34 = v46;
  v35[0] = v47[0];
  *(v35 + 9) = *(v47 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2F8, &qword_2741D3CE0);
  sub_2741C7B0C();

  sub_27409D420(&v45, &qword_28093A2F8, &qword_2741D3CE0);
  v12 = v30;
  v13 = v31;
  v14 = v32;
  *&v38 = v26;
  *(&v38 + 1) = v25;
  sub_2741C7A3C();
  v15 = v27[0];
  swift_getKeyPath();
  *&v38 = v15;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v16 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v15 + v16, v27);

  v17 = v28;
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v19 = (*(v18 + 32))(v17, v18);
  sub_2740C6F94(v12, v13, v14, v19, v20, &v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v21 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v21;
  *(a2 + 96) = v44;
  v22 = v39;
  *a2 = v38;
  *(a2 + 16) = v22;
  result = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_274131FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkDetailsView();
  if (*(a1 + *(v8 + 32)) == 1)
  {
    if (qword_280937A08 != -1)
    {
      swift_once();
    }

    v9 = &qword_280946B68;
  }

  else
  {
    if (qword_280937A00 != -1)
    {
      swift_once();
    }

    v9 = &qword_280946B58;
  }

  v11 = *v9;
  v10 = v9[1];

  v51 = v11;
  v52 = v12;
  sub_2740A6A74();
  v44 = sub_2741C76AC();
  v45 = v13;
  v15 = v14;
  HIDWORD(v43) = v16;
  v17 = (a1 + *(v8 + 20));
  v19 = *v17;
  v18 = v17[1];
  v51 = v19;
  v52 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v20 = v49;
  swift_getKeyPath();
  v51 = v20;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v21 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v20 + v21, v7, type metadata accessor for NetworkSettings);

  v22 = v7[104];
  sub_274138044(v7, type metadata accessor for NetworkSettings);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      if (qword_2809379C8 != -1)
      {
        swift_once();
      }

      v23 = &qword_280946AE8;
    }

    else
    {
      if (qword_2809379C0 != -1)
      {
        swift_once();
      }

      v23 = &qword_280946AD8;
    }
  }

  else if (v22)
  {
    if (qword_2809379B8 != -1)
    {
      swift_once();
    }

    v23 = &qword_280946AC8;
  }

  else
  {
    if (qword_280937408 != -1)
    {
      swift_once();
    }

    v23 = &qword_280945F48;
  }

  v25 = *v23;
  v24 = v23[1];

  v49 = v25;
  v50 = v26;
  v27 = sub_2741C76AC();
  v29 = v28;
  v31 = v30;
  LODWORD(v49) = sub_2741C737C();
  v32 = sub_2741C764C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_2740A6AC8(v27, v29, v31 & 1);

  v39 = BYTE4(v43) & 1;
  LOBYTE(v49) = BYTE4(v43) & 1;
  v48 = BYTE4(v43) & 1;
  v47 = 1;
  v36 &= 1u;
  v46 = v36;
  v41 = v44;
  v40 = v45;
  *a2 = v44;
  *(a2 + 8) = v15;
  *(a2 + 16) = v39;
  *(a2 + 24) = v40;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v32;
  *(a2 + 56) = v34;
  *(a2 + 64) = v36;
  *(a2 + 72) = v38;
  sub_27409861C(v41, v15, v39);

  sub_27409861C(v32, v34, v36);

  sub_2740A6AC8(v32, v34, v36);

  sub_2740A6AC8(v41, v15, v49);
}

uint64_t sub_274132464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v116 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2D8, &qword_2741D3C70);
  v3 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v115 = &v100 - v4;
  v110 = sub_2741C73BC();
  v108 = *(v110 - 8);
  v5 = *(v108 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2E0, &qword_2741D3C78);
  v113 = *(v7 - 8);
  v114 = v7;
  v8 = *(v113 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v100 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v100 - v11;
  v13 = type metadata accessor for NetworkSettings();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v100 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v100 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2E8, &qword_2741D3C80);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v112 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v100 - v27;
  v29 = type metadata accessor for NetworkDetailsView();
  v30 = *(a1 + *(v29 + 32)) == 1;
  v109 = v28;
  v101 = v12;
  if (v30)
  {
    if (qword_280937800 != -1)
    {
      swift_once();
    }

    v31 = &qword_280946748;
  }

  else
  {
    if (qword_2809377F8 != -1)
    {
      swift_once();
    }

    v31 = &qword_280946738;
  }

  v33 = *v31;
  v32 = v31[1];

  v117 = v33;
  v118 = v34;
  v102 = sub_2740A6A74();
  v105 = sub_2741C76AC();
  v104 = v35;
  v103 = v36;
  v106 = v37;
  v38 = (a1 + *(v29 + 20));
  v39 = *v38;
  v40 = v38[1];
  v117 = *v38;
  v118 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v41 = v122;
  swift_getKeyPath();
  v117 = v41;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v42 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v41 + v42, v22, type metadata accessor for NetworkSettings);

  LODWORD(v42) = v22[104];
  sub_274138044(v22, type metadata accessor for NetworkSettings);
  if (v42 == 1)
  {
    v117 = v39;
    v118 = v40;
    sub_2741C7A3C();
    v43 = v121;
    swift_getKeyPath();
    v117 = v43;
    sub_2741C6A0C();

    v44 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    sub_274137EA4(v43 + v44, v17, type metadata accessor for NetworkSettings);

    v45 = *(v17 + 16);
    v46 = *(v17 + 17);

    sub_274138044(v17, type metadata accessor for NetworkSettings);
    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0;
    }

    v48 = 0xE000000000000000;
    if (v46)
    {
      v48 = v46;
    }

    v117 = v47;
    v118 = v48;
    v49 = sub_2741C76AC();
    v51 = v50;
    v53 = v52;
    sub_2741C79AC();
    v54 = sub_2741C763C();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_2740A6AC8(v49, v51, v53 & 1);

    v117 = v54;
    v118 = v56;
    LOBYTE(v51) = v58 & 1;
    LOBYTE(v119) = v58 & 1;
    v120 = v60;
    v61 = v107;
    sub_2741C73AC();
    v62 = MEMORY[0x277CE0BD8];
    v63 = MEMORY[0x277CE0BC8];
    v64 = v100;
    v65 = v110;
    sub_2741C774C();
    (*(v108 + 8))(v61, v65);
    sub_2740A6AC8(v54, v56, v51);

    v67 = v113;
    v66 = v114;
    (*(v113 + 16))(v115, v64, v114);
    swift_storeEnumTagMultiPayload();
    v117 = v62;
    v118 = v65;
    v119 = v63;
    v120 = MEMORY[0x277CE06D0];
    swift_getOpaqueTypeConformance2();
    v68 = v109;
    sub_2741C72CC();
    v69 = v64;
  }

  else
  {
    v117 = v39;
    v118 = v40;
    sub_2741C7A3C();
    v70 = v121;
    swift_getKeyPath();
    v117 = v70;
    sub_2741C6A0C();

    v71 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
    swift_beginAccess();
    sub_274137EA4(v70 + v71, v20, type metadata accessor for NetworkSettings);

    v72 = *(v20 + 14);
    v73 = *(v20 + 15);

    sub_274138044(v20, type metadata accessor for NetworkSettings);
    if (v73)
    {
      v74 = v72;
    }

    else
    {
      v74 = 0;
    }

    v75 = 0xE000000000000000;
    if (v73)
    {
      v75 = v73;
    }

    v117 = v74;
    v118 = v75;
    v76 = sub_2741C76AC();
    v78 = v77;
    v80 = v79;
    sub_2741C79AC();
    v81 = sub_2741C763C();
    v83 = v82;
    v85 = v84;
    v87 = v86;

    sub_2740A6AC8(v76, v78, v80 & 1);

    v117 = v81;
    v118 = v83;
    v88 = v85 & 1;
    LOBYTE(v119) = v85 & 1;
    v120 = v87;
    v89 = v107;
    sub_2741C73AC();
    v90 = MEMORY[0x277CE0BD8];
    v91 = MEMORY[0x277CE06D0];
    v69 = v101;
    v92 = v110;
    sub_2741C774C();
    (*(v108 + 8))(v89, v92);
    sub_2740A6AC8(v81, v83, v88);

    v67 = v113;
    v66 = v114;
    (*(v113 + 16))(v115, v69, v114);
    swift_storeEnumTagMultiPayload();
    v117 = v90;
    v118 = v92;
    v119 = MEMORY[0x277CE0BC8];
    v120 = v91;
    swift_getOpaqueTypeConformance2();
    v68 = v109;
    sub_2741C72CC();
  }

  (*(v67 + 8))(v69, v66);
  v93 = v112;
  sub_2740A6D94(v68, v112, &qword_28093A2E8, &qword_2741D3C80);
  v94 = v116;
  v95 = v105;
  v96 = v104;
  *v116 = v105;
  v94[1] = v96;
  v97 = v103 & 1;
  *(v94 + 16) = v103 & 1;
  v94[3] = v106;
  v94[4] = 0;
  *(v94 + 40) = 1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2F0, &qword_2741D3C88);
  sub_2740A6D94(v93, v94 + *(v98 + 64), &qword_28093A2E8, &qword_2741D3C80);
  sub_27409861C(v95, v96, v97);

  sub_27409D420(v68, &qword_28093A2E8, &qword_2741D3C80);
  sub_27409D420(v93, &qword_28093A2E8, &qword_2741D3C80);
  sub_2740A6AC8(v95, v96, v97);
}

uint64_t sub_274132EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for NetworkDetailsView() + 32)) == 1)
  {
    if (qword_280937750 != -1)
    {
      swift_once();
    }

    v3 = &qword_2809465D8;
  }

  else
  {
    if (qword_280937748 != -1)
    {
      swift_once();
    }

    v3 = &qword_2809465C8;
  }

  v5 = *v3;
  v4 = v3[1];

  sub_2740A6A74();
  v6 = sub_2741C76AC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_27413309C();
  v13 = sub_2741C76AC();
  v15 = v14;
  v16 = v10 & 1;
  v21 = v10 & 1;
  v18 = v17 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17 & 1;
  *(a2 + 56) = v19;
  sub_27409861C(v6, v8, v16);

  sub_27409861C(v13, v15, v18);

  sub_2740A6AC8(v13, v15, v18);

  sub_2740A6AC8(v6, v8, v21);
}

uint64_t sub_27413309C()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkSettings();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NetworkDetailsView();
  v7 = (v0 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  v16[0] = v9;
  v16[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v10 = v16[3];
  swift_getKeyPath();
  v16[0] = v10;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v11 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v10 + v11, v5, type metadata accessor for NetworkSettings);

  v12 = v5[104];
  sub_274138044(v5, type metadata accessor for NetworkSettings);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      if (*(v1 + *(v6 + 32)) == 1)
      {
        if (qword_280937780 != -1)
        {
          swift_once();
        }

        v13 = &qword_280946638;
      }

      else
      {
        if (qword_280937778 != -1)
        {
          swift_once();
        }

        v13 = &qword_280946628;
      }
    }

    else if (*(v1 + *(v6 + 32)) == 1)
    {
      if (qword_280937770 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946618;
    }

    else
    {
      if (qword_280937768 != -1)
      {
        swift_once();
      }

      v13 = &qword_280946608;
    }
  }

  else
  {
    if (!v12)
    {
      return v12;
    }

    if (*(v1 + *(v6 + 32)) == 1)
    {
      if (qword_280937760 != -1)
      {
        swift_once();
      }

      v13 = &qword_2809465F8;
    }

    else
    {
      if (qword_280937758 != -1)
      {
        swift_once();
      }

      v13 = &qword_2809465E8;
    }
  }

  v12 = *v13;
  v14 = v13[1];

  return v12;
}

uint64_t sub_2741333EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  v3 = type metadata accessor for NetworkDetailsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_280937788 != -1)
  {
    swift_once();
  }

  v13[4] = qword_280946658;
  v13[5] = unk_280946660;
  sub_274137EA4(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();

  v6 = sub_2741C809C();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_2741383D8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for NetworkDetailsView);
  sub_274137EA4(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_2741383D8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for NetworkDetailsView);
  sub_2741C7B2C();
  sub_2740A6A74();
  return sub_2741C7ADC();
}

uint64_t sub_274133630@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for NetworkSettings();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[0] = v10;
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v11 = v14[3];
  swift_getKeyPath();
  v14[0] = v11;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  sub_274137EA4(v11 + v12, v7, type metadata accessor for NetworkSettings);

  LOBYTE(v12) = v7[99];
  result = sub_274138044(v7, type metadata accessor for NetworkSettings);
  *a2 = v12;
  return result;
}

uint64_t sub_2741337C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v6 = type metadata accessor for NetworkDetailsView();
  v7 = v6 - 8;
  v29 = *(v6 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = *a1;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000046, 0x80000002741DD1F0);
  if (v14)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v15, v16);

  sub_2740CB218(v30, v31, 2036625250, 0xE400000000000000);

  v17 = (a4 + *(v7 + 28));
  v19 = *v17;
  v18 = v17[1];
  v30 = v19;
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v20 = v32;
  swift_getKeyPath();
  v30 = v20;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v30 = v20;
  swift_getKeyPath();
  sub_2741C6A2C();

  v21 = v20 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  *(v21 + 99) = v14;
  v32 = v20;
  swift_getKeyPath();
  sub_2741C6A1C();

  v22 = sub_2741C80DC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_274137EA4(v28, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkDetailsView);
  sub_2741C80AC();
  v23 = sub_2741C809C();
  v24 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  sub_2741383D8(v9, v25 + v24, type metadata accessor for NetworkDetailsView);
  sub_2740CE980(0, 0, v13, &unk_2741D3C48, v25);
}

uint64_t sub_274133B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2741C80AC();
  v4[6] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_274133C1C, v6, v5);
}

uint64_t sub_274133C1C()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_274133CF0;

  return sub_2741020B8();
}

uint64_t sub_274133CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_274133E34, v5, v4);
}

uint64_t sub_274133E34()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_274133E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for ConfigureIP4View();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A290, &qword_2741D3C00);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v54 - v11;
  v62 = a1;
  v12 = *(type metadata accessor for NetworkDetailsView() + 20);
  v55 = a1;
  v13 = (a1 + v12);
  v15 = v13[1];
  v100[0] = *v13;
  v14 = v100[0];
  v100[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A5C();
  v16 = *&v101[0];
  v56 = *(v101 + 8);
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  v17 = v6 + v3[5];
  LOBYTE(v100[0]) = 2;
  sub_2741C7A2C();
  v18 = *(&v101[0] + 1);
  *v17 = v101[0];
  *(v17 + 1) = v18;
  v19 = v6 + v3[6];
  *v19 = v16;
  *(v19 + 8) = v56;
  v20 = v6 + v3[7];
  v100[0] = 0;
  v100[1] = 0xE000000000000000;
  sub_2741C7A2C();
  v21 = *&v101[1];
  *v20 = v101[0];
  *(v20 + 2) = v21;
  v22 = v6 + v3[8];
  v100[0] = 0;
  v100[1] = 0xE000000000000000;
  sub_2741C7A2C();
  v23 = *&v101[1];
  *v22 = v101[0];
  *(v22 + 2) = v23;
  v24 = v6 + v3[9];
  v100[0] = 0;
  v100[1] = 0xE000000000000000;
  sub_2741C7A2C();
  v25 = *&v101[1];
  *v24 = v101[0];
  *(v24 + 2) = v25;
  v26 = v6 + v3[10];
  v100[0] = 0;
  v100[1] = 0xE000000000000000;
  sub_2741C7A2C();
  v27 = *&v101[1];
  *v26 = v101[0];
  *(v26 + 2) = v27;
  v28 = v6 + v3[11];
  *v28 = sub_2741C6C9C() & 1;
  *(v28 + 1) = v29;
  v28[16] = v30 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800);
  sub_274138B18(&qword_28093A298, type metadata accessor for ConfigureIP4View);
  sub_2741C6DDC();
  *&v101[0] = v14;
  *(&v101[0] + 1) = v15;
  sub_2741C7A3C();
  v31 = v100[0];
  swift_getKeyPath();
  *&v101[0] = v31;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  LODWORD(v28) = *(v31 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);

  if (v28 != 1)
  {
    goto LABEL_5;
  }

  *&v101[0] = v14;
  *(&v101[0] + 1) = v15;
  sub_2741C7A3C();
  v32 = v100[0];
  swift_getKeyPath();
  *&v101[0] = v32;
  sub_2741C6A0C();

  v33 = v32 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v34 = *(v33 + 8);

  if (!v34)
  {
    goto LABEL_5;
  }

  *&v101[0] = v14;
  *(&v101[0] + 1) = v15;
  sub_2741C7A3C();
  v35 = v100[0];
  swift_getKeyPath();
  *&v101[0] = v35;
  sub_2741C6A0C();

  v36 = v35 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v37 = *(v36 + 32);

  if (v37)
  {

    *&v56 = sub_2741C70EC();
    LOBYTE(v99[0]) = 1;
    v38 = v55;
    sub_274134E10(v55, v101);
    v69 = v101[2];
    v70 = v101[3];
    v67 = v101[0];
    v68 = v101[1];
    v72[2] = v101[2];
    v72[3] = v101[3];
    v72[4] = v101[4];
    v72[1] = v101[1];
    v71 = v101[4];
    v72[0] = v101[0];
    sub_2740A6D94(&v67, v100, &qword_280939838, &qword_2741D3B50);
    sub_27409D420(v72, &qword_280939838, &qword_2741D3B50);
    *&v66[23] = v68;
    *&v66[39] = v69;
    *&v66[55] = v70;
    *&v66[71] = v71;
    *&v66[7] = v67;
    v39 = v99[0];
    v54 = sub_2741C70EC();
    LOBYTE(v99[0]) = 1;
    sub_2741351A0(v38, v101);
    v75 = v101[2];
    v76 = v101[3];
    v73 = v101[0];
    v74 = v101[1];
    v78[2] = v101[2];
    v78[3] = v101[3];
    v78[4] = v101[4];
    v78[1] = v101[1];
    v77 = v101[4];
    v78[0] = v101[0];
    sub_2740A6D94(&v73, v100, &qword_280939838, &qword_2741D3B50);
    sub_27409D420(v78, &qword_280939838, &qword_2741D3B50);
    *&v65[23] = v74;
    *&v65[39] = v75;
    *&v65[55] = v76;
    *&v65[71] = v77;
    *&v65[7] = v73;
    v40 = v99[0];
    v41 = sub_2741C70EC();
    LOBYTE(v99[0]) = 1;
    sub_274135538(v38, v101);
    v81 = v101[2];
    v82 = v101[3];
    v83 = v101[4];
    v79 = v101[0];
    v80 = v101[1];
    v84[2] = v101[2];
    v84[3] = v101[3];
    v84[4] = v101[4];
    v84[1] = v101[1];
    v84[0] = v101[0];
    sub_2740A6D94(&v79, v100, &qword_280939838, &qword_2741D3B50);
    sub_27409D420(v84, &qword_280939838, &qword_2741D3B50);
    *&v64[23] = v80;
    *&v64[39] = v81;
    *&v64[55] = v82;
    *&v64[71] = v83;
    *&v64[7] = v79;
    v42 = v56;
    v85[0] = v56;
    v85[1] = 0;
    v86[0] = v39;
    *&v86[1] = *v66;
    *&v86[17] = *&v66[16];
    *&v86[80] = *&v66[79];
    *&v86[65] = *&v66[64];
    *&v86[49] = *&v66[48];
    *&v86[33] = *&v66[32];
    *v63 = v56;
    *&v63[16] = *v86;
    *&v63[64] = *&v86[48];
    *&v63[80] = *&v86[64];
    *&v63[32] = *&v86[16];
    *&v63[48] = *&v86[32];
    v43 = v54;
    v87[0] = v54;
    v87[1] = 0;
    v88[0] = v40;
    *&v88[1] = *v65;
    *&v88[17] = *&v65[16];
    *&v88[80] = *&v65[79];
    *&v88[65] = *&v65[64];
    *&v88[49] = *&v65[48];
    *&v88[33] = *&v65[32];
    *&v63[136] = *&v88[16];
    *&v63[120] = *v88;
    *&v63[104] = v54;
    *&v63[184] = *&v88[64];
    *&v63[168] = *&v88[48];
    *&v63[152] = *&v88[32];
    v89[0] = v41;
    v89[1] = 0;
    v90[0] = v99[0];
    *&v90[1] = *v64;
    *&v90[17] = *&v64[16];
    *&v90[80] = *(&v83 + 1);
    *&v90[65] = *&v64[64];
    *&v90[49] = *&v64[48];
    *&v90[33] = *&v64[32];
    *&v63[208] = v41;
    *&v63[224] = *v90;
    *&v63[272] = *&v90[48];
    *&v63[288] = *&v90[64];
    *&v63[240] = *&v90[16];
    *&v63[256] = *&v90[32];
    v94 = *&v64[16];
    *&v63[96] = *&v86[80];
    *&v63[200] = *&v88[80];
    *&v63[304] = *&v90[80];
    v91[0] = v41;
    v91[1] = 0;
    v92 = v99[0];
    v93 = *v64;
    *(v97 + 15) = *(&v83 + 1);
    v97[0] = *&v64[64];
    v96 = *&v64[48];
    v95 = *&v64[32];
    sub_2740A6D94(v85, v101, &qword_280939820, &unk_2741D05C0);
    sub_2740A6D94(v87, v101, &qword_280939820, &unk_2741D05C0);
    sub_2740A6D94(v89, v101, &qword_280939820, &unk_2741D05C0);
    sub_27409D420(v91, &qword_280939820, &unk_2741D05C0);
    *(&v98[6] + 1) = *&v65[32];
    *(&v98[8] + 1) = *&v65[48];
    *(&v98[10] + 1) = *&v65[64];
    *(&v98[2] + 1) = *v65;
    v98[0] = v43;
    v98[1] = 0;
    LOBYTE(v98[2]) = v40;
    v98[12] = *&v65[79];
    *(&v98[4] + 1) = *&v65[16];
    sub_27409D420(v98, &qword_280939820, &unk_2741D05C0);
    *(&v99[6] + 1) = *&v66[32];
    *(&v99[8] + 1) = *&v66[48];
    *(&v99[10] + 1) = *&v66[64];
    *(&v99[2] + 1) = *v66;
    v99[0] = v42;
    v99[1] = 0;
    LOBYTE(v99[2]) = v39;
    v99[12] = *&v66[79];
    *(&v99[4] + 1) = *&v66[16];
    sub_27409D420(v99, &qword_280939820, &unk_2741D05C0);
    memcpy(v100, v63, sizeof(v100));
    nullsub_1(v100);
    memcpy(v101, v100, 0x138uLL);
  }

  else
  {
LABEL_5:
    v44.n128_f64[0] = sub_274138B60(v101);
  }

  v46 = v57;
  v45 = v58;
  v47 = *(v58 + 16);
  v48 = v61;
  v49 = v59;
  v47(v57, v61, v59, v44);
  memcpy(v98, v101, sizeof(v98));
  v50 = v60;
  (v47)(v60, v46, v49);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A2A0, &qword_2741D3C08) + 48);
  memcpy(v99, v98, sizeof(v99));
  sub_2740A6D94(v99, v100, &qword_28093A2A8, &qword_2741D3C10);
  v52 = *(v45 + 8);
  v52(v48, v49);
  memcpy((v50 + v51), v99, 0x138uLL);
  memcpy(v100, v98, sizeof(v100));
  sub_27409D420(v100, &qword_28093A2A8, &qword_2741D3C10);
  return (v52)(v46, v49);
}

double sub_274134980@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2741C70EC();
  v18 = 1;
  a2(&v12, a1);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_2740A6D94(&v19, &v11, &qword_2809380B0, &qword_2741CD1A0);
  sub_27409D420(v24, &qword_2809380B0, &qword_2741CD1A0);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_274134A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2809377C0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v4 = sub_2741C76AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v34 = *v11;
  v35 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v13 = *(v32 + v12);

  v30 = v4;
  v31 = v10;
  v29 = v8;
  if (v13)
  {
    if (v13 == 1)
    {
      if (qword_280937AC8 != -1)
      {
        swift_once();
      }

      v14 = &qword_280946D78;
    }

    else
    {
      if (qword_280937AD8 != -1)
      {
        swift_once();
      }

      v14 = &qword_280946D98;
    }
  }

  else
  {
    if (qword_280937AC0 != -1)
    {
      swift_once();
    }

    v14 = &qword_280946D68;
  }

  v15 = v14[1];
  v33 = HIDWORD(*v14);

  v16 = sub_2741C76AC();
  v18 = v17;
  v20 = v19;
  sub_2741C737C();
  v21 = sub_2741C764C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_2740A6AC8(v16, v18, v20 & 1);

  *a2 = v30;
  *(a2 + 8) = v6;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v25 & 1;
  *(a2 + 72) = v27;
  sub_27409861C(v30, v6, v29 & 1);

  sub_27409861C(v21, v23, v25 & 1);

  sub_2740A6AC8(v21, v23, v25 & 1);

  sub_2740A6AC8(v30, v6, v29 & 1);
}

uint64_t sub_274134E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2809377C8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v33 = sub_2741C76AC();
  v5 = v4;
  v32 = v6;
  v8 = v7;
  v9 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v35 = *v9;
  v36 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v10 = (v34 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config);
  swift_beginAccess();
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[4];
  v14 = v10[6];
  v15 = v10[8];
  v16 = v10[10];

  if (!v11)
  {

LABEL_8:
    v25 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_9;
  }

  if (!v11[2])
  {

    v11 = 0;
    goto LABEL_8;
  }

  v31 = v8;
  v18 = v11[4];
  v17 = v11[5];

  v19 = sub_2741C76AC();
  v21 = v20;
  v23 = v22;
  sub_2741C737C();
  v11 = sub_2741C764C();
  v25 = v24;
  LOBYTE(v18) = v26;
  v28 = v27;
  sub_2740A6AC8(v19, v21, v23 & 1);

  v29 = v18 & 1;
  v8 = v31;
  sub_27409861C(v11, v25, v29);

LABEL_9:
  sub_27409861C(v33, v5, v32 & 1);

  sub_2740ACA00(v11, v25, v29, v28);
  sub_2740ACA44(v11, v25, v29, v28);
  *a2 = v33;
  *(a2 + 8) = v5;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v11;
  *(a2 + 56) = v25;
  *(a2 + 64) = v29;
  *(a2 + 72) = v28;
  sub_2740ACA44(v11, v25, v29, v28);
  sub_2740A6AC8(v33, v5, v32 & 1);
}

uint64_t sub_2741351A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2809377D0 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v33 = sub_2741C76AC();
  v5 = v4;
  v32 = v6;
  v8 = v7;
  v9 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v35 = *v9;
  v36 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v10 = (v34 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config);
  swift_beginAccess();
  v12 = v10[1];
  v11 = v10[2];
  v13 = v10[4];
  v14 = v10[6];
  v15 = v10[8];
  v16 = v10[10];

  if (!v11)
  {

LABEL_8:
    v25 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_9;
  }

  if (!v11[2])
  {

    v11 = 0;
    goto LABEL_8;
  }

  v31 = v8;
  v18 = v11[4];
  v17 = v11[5];

  v19 = sub_2741C76AC();
  v21 = v20;
  v23 = v22;
  sub_2741C737C();
  v11 = sub_2741C764C();
  v25 = v24;
  LOBYTE(v18) = v26;
  v28 = v27;
  sub_2740A6AC8(v19, v21, v23 & 1);

  v29 = v18 & 1;
  v8 = v31;
  sub_27409861C(v11, v25, v29);

LABEL_9:
  sub_27409861C(v33, v5, v32 & 1);

  sub_2740ACA00(v11, v25, v29, v28);
  sub_2740ACA44(v11, v25, v29, v28);
  *a2 = v33;
  *(a2 + 8) = v5;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v11;
  *(a2 + 56) = v25;
  *(a2 + 64) = v29;
  *(a2 + 72) = v28;
  sub_2740ACA44(v11, v25, v29, v28);
  sub_2740A6AC8(v33, v5, v32 & 1);
}

uint64_t sub_274135538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280937A48 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v4 = sub_2741C76AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v35 = *v11;
  v36 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v12 = v34 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);

  if (v13)
  {
    v15 = sub_2741C76AC();
    v31 = v8;
    v17 = v16;
    v32 = v6;
    v19 = v18;
    sub_2741C737C();
    v13 = sub_2741C764C();
    v21 = v20;
    v33 = v4;
    v22 = v10;
    v24 = v23;
    v26 = v25;
    v27 = v19 & 1;
    v6 = v32;
    v28 = v17;
    v8 = v31;
    sub_2740A6AC8(v15, v28, v27);

    v29 = v24 & 1;
    v10 = v22;
    v4 = v33;
    sub_27409861C(v13, v21, v29);
  }

  else
  {
    v21 = 0;
    v29 = 0;
    v26 = 0;
  }

  sub_27409861C(v4, v6, v8 & 1);

  sub_2740ACA00(v13, v21, v29, v26);
  sub_2740ACA44(v13, v21, v29, v26);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v13;
  *(a2 + 56) = v21;
  *(a2 + 64) = v29;
  *(a2 + 72) = v26;
  sub_2740ACA44(v13, v21, v29, v26);
  sub_2740A6AC8(v4, v6, v8 & 1);
}

uint64_t sub_274135840@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A248, &qword_2741D3B40);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v27 = a1;
  sub_274135BB0(a1, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A250, &qword_2741D3B48);
  sub_2740A6D24(&qword_28093A258, &qword_28093A250, &qword_2741D3B48);
  sub_274138920();
  sub_2741C6DDC();
  v24 = sub_2741C70EC();
  v29 = 1;
  sub_274136440(a1, &v38);
  v32 = *&v39[16];
  v33 = *&v39[32];
  v30 = v38;
  v31 = *v39;
  v35[2] = *&v39[16];
  v35[3] = *&v39[32];
  v35[4] = *&v39[48];
  v35[1] = *v39;
  v34 = *&v39[48];
  v35[0] = v38;
  sub_2740A6D94(&v30, v36, &qword_280939838, &qword_2741D3B50);
  sub_27409D420(v35, &qword_280939838, &qword_2741D3B50);
  *&v28[23] = v31;
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[7] = v30;
  v11 = v29;
  v12 = v4[2];
  v25 = v8;
  v12(v8, v10, v3);
  v13 = v26;
  v12(v26, v8, v3);
  v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A268, &unk_2741D3B58) + 48)];
  v15 = v24;
  v36[0] = v24;
  v36[1] = 0;
  v37[0] = v11;
  *&v37[1] = *v28;
  *&v37[17] = *&v28[16];
  *&v37[65] = *&v28[64];
  *&v37[80] = *&v28[79];
  *&v37[49] = *&v28[48];
  *&v37[33] = *&v28[32];
  v16 = *v37;
  *v14 = v24;
  *(v14 + 1) = v16;
  v17 = *&v37[16];
  v18 = *&v37[32];
  v19 = *&v37[48];
  v20 = *&v37[64];
  *(v14 + 12) = *&v37[80];
  *(v14 + 4) = v19;
  *(v14 + 5) = v20;
  *(v14 + 2) = v17;
  *(v14 + 3) = v18;
  sub_2740A6D94(v36, &v38, &qword_280939820, &unk_2741D05C0);
  v21 = v4[1];
  v21(v10, v3);
  *&v39[33] = *&v28[32];
  *&v39[49] = *&v28[48];
  *v40 = *&v28[64];
  *&v39[1] = *v28;
  v38 = v15;
  v39[0] = v11;
  *&v40[15] = *&v28[79];
  *&v39[17] = *&v28[16];
  sub_27409D420(&v38, &qword_280939820, &unk_2741D05C0);
  return (v21)(v25, v3);
}

uint64_t sub_274135BB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v12 = *v3;
  v13 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v4 = *(v11 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v5 = *(v11 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v6 = *(v11 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v7 = *(v11 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v8 = *(v11 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  sub_274103F80(v4, v5);

  v9 = 0;
  if (v5 != 1)
  {

    v9 = v5;
  }

  result = sub_2740CC5FC(v4, v5);
  *a2 = v9;
  return result;
}

double sub_274135D08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C70EC();
  v17 = 1;
  sub_274135E28(a1, &v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v25 = v15;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[0] = v10;
  v24[1] = v11;
  sub_2740A6D94(&v18, &v9, &qword_28093A270, &qword_2741D3B68);
  sub_27409D420(v24, &qword_28093A270, &qword_2741D3B68);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v16[64];
  v7 = *v16;
  result = *&v16[16];
  *(a2 + 33) = *&v16[16];
  v16[87] = v23;
  v8 = v17;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 97) = *&v16[80];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_274135E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C713C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_2809377C8 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v37 = sub_2741C76AC();
  v7 = v6;
  v36 = v8;
  v10 = v9;
  v11 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v12 = *v11;
  v40 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v14 = *(v38 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v13 = *(v38 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v16 = *(v38 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v15 = *(v38 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v17 = *(v38 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  sub_274103F80(v14, v13);

  if (v13 >= 2)
  {

    sub_2740CC5FC(v14, v13);
    v23 = *(v13 + 16);

    sub_2741C712C();
    sub_2741C711C();
    v35 = v10;
    if (v23 == 1)
    {
      HIDWORD(v39) = 0;
      sub_2741C70FC();
      sub_2741C711C();
      if (qword_2809377D8 != -1)
      {
        swift_once();
      }

      sub_2741C710C();

      sub_2741C711C();
      sub_2741C715C();
      v24 = sub_2741C768C();
      v26 = v25;
      v28 = v27;
      LODWORD(v39) = sub_2741C737C();
      sub_2741C764C();
      sub_2740A6AC8(v24, v26, v28 & 1);
    }

    else
    {
      HIDWORD(v39) = HIDWORD(v23);
      sub_2741C70FC();
      sub_2741C711C();
      if (qword_2809377E0 != -1)
      {
        swift_once();
      }

      sub_2741C710C();

      sub_2741C711C();
      sub_2741C715C();
      v29 = sub_2741C768C();
      v31 = v30;
      v33 = v32;
      LODWORD(v39) = sub_2741C737C();
      sub_2741C764C();
      sub_2740A6AC8(v29, v31, v33 & 1);
    }

    sub_2741C72CC();
    v18 = v39;
    v19 = v40;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    sub_274138974(v39, v40, v41);
    v10 = v35;
  }

  else
  {
    sub_2740CC5FC(v14, v13);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
  }

  sub_27409861C(v37, v7, v36 & 1);

  sub_2741389B0(v18, v19, v20, v21, v22);
  sub_2741389C8(v18, v19, v20, v21, v22);
  *a2 = v37;
  *(a2 + 8) = v7;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;
  *(a2 + 64) = v20;
  *(a2 + 72) = v21;
  *(a2 + 80) = v22;
  sub_2741389C8(v18, v19, v20, v21, v22);
  sub_2740A6AC8(v37, v7, v36 & 1);
}

uint64_t sub_274136440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280937A48 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v30 = sub_2741C76AC();
  v5 = v4;
  v29 = v6;
  v8 = v7;
  v9 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v32 = *v9;
  v33 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v10 = *(v31 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v11 = *(v31 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v13 = *(v31 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v12 = *(v31 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v14 = *(v31 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  sub_274103F80(v10, v11);

  if (v11 == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = 0;
  }

  else
  {

    sub_2740CC5FC(v10, v11);
    if (v14)
    {
      v18 = sub_2741C76AC();
      v20 = v19;
      v22 = v21;
      sub_2741C737C();
      v15 = sub_2741C764C();
      v16 = v23;
      v28 = v8;
      v25 = v24;
      v14 = v26;
      sub_2740A6AC8(v18, v20, v22 & 1);

      v17 = v25 & 1;
      v8 = v28;
      sub_27409861C(v15, v16, v17);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }
  }

  sub_27409861C(v30, v5, v29 & 1);

  sub_2740ACA00(v15, v16, v17, v14);
  sub_2740ACA44(v15, v16, v17, v14);
  *a2 = v30;
  *(a2 + 8) = v5;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = v14;
  sub_2740ACA44(v15, v16, v17, v14);
  sub_2740A6AC8(v30, v5, v29 & 1);
}

uint64_t sub_274136778(uint64_t a1)
{
  v2 = type metadata accessor for ConfigureDNSView();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1;
  v6 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v8 = *v6;
  v7 = v6[1];
  v26 = v8;
  v27 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A5C();
  v9 = v24;
  v22 = v25;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  sub_2740BAE84();
  sub_2741C6CAC();
  LOBYTE(a1) = v24;
  v10 = v25;
  v11 = BYTE8(v25);
  v12 = v5 + v2[6];
  *v12 = v9;
  *(v12 + 8) = v22;
  v13 = v5 + v2[7];
  LOBYTE(v26) = 0;
  sub_2741C7A2C();
  v14 = v25;
  *v13 = v24;
  *(v13 + 1) = v14;
  v15 = (v5 + v2[8]);
  v16 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386A0, &unk_2741CC7C0);
  sub_2741C7A2C();
  v17 = v25;
  *v15 = v24;
  v15[1] = v17;
  v18 = (v5 + v2[9]);
  v26 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809386B0, &qword_2741D3BD0);
  sub_2741C7A2C();
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;
  v20 = v5 + v2[10];
  *v20 = a1;
  *(v20 + 1) = v10;
  v20[16] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800);
  sub_274138B18(&qword_28093A288, type metadata accessor for ConfigureDNSView);
  return sub_2741C6DDC();
}

uint64_t sub_274136A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280937810 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v26 = sub_2741C76AC();
  v27 = v4;
  v6 = v5;
  v25 = v7;
  v8 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v30 = *v8;
  v31 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v9 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  LOBYTE(v9) = *(v28 + v9);

  if (v9)
  {
    if (qword_280937B20 != -1)
    {
      swift_once();
    }

    v10 = &qword_280946E28;
  }

  else
  {
    if (qword_280937B18 != -1)
    {
      swift_once();
    }

    v10 = &qword_280946E18;
  }

  v11 = v10[1];
  v29 = HIDWORD(*v10);

  v12 = sub_2741C76AC();
  v14 = v13;
  v16 = v15;
  sub_2741C737C();
  v17 = sub_2741C764C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_2740A6AC8(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v6;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21 & 1;
  *(a2 + 72) = v23;
  sub_27409861C(v26, v6, v25 & 1);

  sub_27409861C(v17, v19, v21 & 1);

  sub_2740A6AC8(v17, v19, v21 & 1);

  sub_2740A6AC8(v26, v6, v25 & 1);
}

uint64_t sub_274136D94(uint64_t a1)
{
  sub_274136E60(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938098, &unk_2741CB800);
  sub_2740A6D24(&qword_2809380A0, &qword_280938098, &unk_2741CB800);
  sub_274138A4C();
  return sub_2741C6DDC();
}

__n128 sub_274136E60@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v6 = *v3;
  v7 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A5C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  sub_2741C7A2C();
  result = *v5;
  *a2 = *v5;
  *(a2 + 8) = *&v5[8];
  *(a2 + 24) = v5[0];
  *(a2 + 32) = *&v5[8];
  *(a2 + 40) = *v5;
  *(a2 + 56) = *&v5[16];
  *(a2 + 64) = *v5;
  *(a2 + 80) = *&v5[16];
  *(a2 + 88) = v5[0];
  *(a2 + 96) = *&v5[8];
  *(a2 + 104) = *v5;
  *(a2 + 120) = *&v5[16];
  *(a2 + 128) = *v5;
  *(a2 + 144) = *&v5[16];
  *(a2 + 152) = *v5;
  *(a2 + 168) = *&v5[16];
  return result;
}

uint64_t sub_274137034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280937820 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v4 = sub_2741C76AC();
  v29 = v5;
  v7 = v6;
  v9 = v8;
  v10 = (a1 + *(type metadata accessor for NetworkDetailsView() + 20));
  v34 = *v10;
  v35 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v11 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  v12 = *(v32 + v11);

  v13 = *(v12 + 16);

  v30 = v4;
  v31 = v9;
  if (v13)
  {
    if (v13 == 1)
    {
      if (qword_280937B30 != -1)
      {
        swift_once();
      }

      v14 = &qword_280946E48;
    }

    else
    {
      if (qword_280937B38 != -1)
      {
        swift_once();
      }

      v14 = &qword_280946E58;
    }
  }

  else
  {
    if (qword_280937B28 != -1)
    {
      swift_once();
    }

    v14 = &qword_280946E38;
  }

  v15 = v14[1];
  v33 = HIDWORD(*v14);

  v16 = sub_2741C76AC();
  v18 = v17;
  v20 = v19;
  sub_2741C737C();
  v21 = sub_2741C764C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_2740A6AC8(v16, v18, v20 & 1);

  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v25 & 1;
  *(a2 + 72) = v27;
  sub_27409861C(v30, v29, v7 & 1);

  sub_27409861C(v21, v23, v25 & 1);

  sub_2740A6AC8(v21, v23, v25 & 1);

  sub_2740A6AC8(v30, v29, v7 & 1);
}

uint64_t sub_2741373C4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = 0xEF6B726F7774656ELL;
  v5 = 0x20746E6572727563;
  v6 = *a1;
  v25 = *a2;
  v28 = 0xE000000000000000;
  sub_2741C856C();
  v27 = type metadata accessor for NetworkDetailsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A018, &qword_2741D38E0);
  v7 = sub_2741C7EBC();
  v9 = v8;

  v31 = v7;
  v32 = v9;
  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741DD110);
  v10 = (a3 + *(v27 + 20));
  v11 = *v10;
  v28 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  v27 = v26;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v26 + v12, &v27);

  v13 = v29;
  v14 = v30;
  __swift_project_boxed_opaque_existential_1(&v27, v29);
  v15 = (*(v14 + 32))(v13, v14);
  MEMORY[0x2743E5FB0](v15);

  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  MEMORY[0x2743E5FB0](0x6465676E61686320, 0xEE00206D6F726620);
  v16 = 0x80000002741DBD00;
  v17 = 0xD00000000000001CLL;
  v18 = 0x80000002741DBCE0;
  v19 = 0xD00000000000001ELL;
  if (v6 != 3)
  {
    v19 = 0xD00000000000002ALL;
    v18 = 0x80000002741DBCB0;
  }

  if (v6 != 2)
  {
    v17 = v19;
    v16 = v18;
  }

  v20 = 0x80000002741DBD20;
  if (v6)
  {
    v21 = 0x20746E6572727563;
  }

  else
  {
    v21 = 0xD000000000000019;
  }

  if (v6)
  {
    v20 = 0xEF6B726F7774656ELL;
  }

  if (v6 <= 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (v6 <= 1)
  {
    v23 = v20;
  }

  else
  {
    v23 = v16;
  }

  MEMORY[0x2743E5FB0](v22, v23);

  MEMORY[0x2743E5FB0](544175136, 0xE400000000000000);
  if (v25 <= 1)
  {
    if (!v25)
    {
      v4 = 0x80000002741DBD20;
      v5 = 0xD000000000000019;
    }
  }

  else if (v25 == 2)
  {
    v4 = 0x80000002741DBD00;
    v5 = 0xD00000000000001CLL;
  }

  else if (v25 == 3)
  {
    v4 = 0x80000002741DBCE0;
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0x80000002741DBCB0;
    v5 = 0xD00000000000002ALL;
  }

  MEMORY[0x2743E5FB0](v5, v4);

  sub_2740CB460(v31, v32);
}

uint64_t sub_274137734(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v23 = 0xE000000000000000;
  sub_2741C856C();
  v6 = type metadata accessor for NetworkDetailsView();
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A018, &qword_2741D38E0);
  v7 = sub_2741C7EBC();
  v9 = v8;

  v26 = v7;
  v27 = v9;
  MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741DD0E0);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v10, v11);

  MEMORY[0x2743E5FB0](544175136, 0xE400000000000000);
  if (v5)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v5)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v12, v13);

  MEMORY[0x2743E5FB0](0x20726F6620, 0xE500000000000000);
  v14 = (a3 + *(v6 + 20));
  v15 = *v14;
  v23 = v14[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A010, &qword_2741D3858);
  sub_2741C7A3C();
  swift_getKeyPath();
  v22 = v21;
  sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v16 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v21 + v16, &v22);

  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_1(&v22, v24);
  v19 = (*(v18 + 32))(v17, v18);
  MEMORY[0x2743E5FB0](v19);

  __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  sub_2740CB460(v26, v27);
}

uint64_t sub_274137A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for NetworkDetailsView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_274137AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2741C6AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = &type metadata for WiFiAssociationRequest;
  v24[4] = &off_2883289B0;
  v24[0] = swift_allocObject();
  sub_27413879C(a1, v24[0] + 16);
  swift_beginAccess();
  v9 = *(a2 + 16);
  if (*(v9 + 16) && (v10 = sub_274125ECC(1), (v11 & 1) != 0))
  {
    sub_27409D4E4(*(v9 + 56) + 40 * v10, &v21);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  swift_endAccess();
  if (!*(&v22 + 1))
  {
    sub_27409D420(&v21, &qword_280939AF8, &qword_2741D11A0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A230, &unk_2741D3B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A238, &qword_2741D4780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_13;
  }

  if (!*(&v19 + 1))
  {
LABEL_13:
    sub_27409D420(&v18, &qword_28093A228, &unk_2741D4770);
    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  sub_27409D118(&v18, &v21);
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001BLL, 0x80000002741DD190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A240, &unk_2741D3B20);
  sub_2741C862C();
  v12 = v18;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_280945DD8);
  (*(v5 + 16))(v8, v13, v4);
  sub_2740CA9CC(0x5D5355544154535BLL, 0xE800000000000000, v12, *(&v12 + 1));

  (*(v5 + 8))(v8, v4);
  sub_27409D4E4(v24, &v18);
  v14 = *(&v22 + 1);
  v15 = v23;
  __swift_mutable_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  (*(v15 + 72))(&v18, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

unint64_t sub_274137E48()
{
  result = qword_28093A160;
  if (!qword_28093A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A160);
  }

  return result;
}

uint64_t sub_274137EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_274137F10()
{
  result = qword_28093A170;
  if (!qword_28093A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A098, &unk_2741D3960);
    type metadata accessor for ForgetNetworkSection();
    type metadata accessor for NetworkDetailsModel();
    sub_274138B18(&qword_28093A168, type metadata accessor for ForgetNetworkSection);
    sub_274138B18(&qword_280938760, type metadata accessor for NetworkDetailsModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A170);
  }

  return result;
}

uint64_t sub_274138044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2741380C4()
{
  v1 = type metadata accessor for NetworkDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 113) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0[3];

  v6 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  v7 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2741C6DBC();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = (v7 + v1[5]);
  v11 = *v10;

  v12 = v10[1];

  v13 = *(v7 + v1[6] + 8);

  v14 = *(v7 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274138230()
{
  v1 = *(*(type metadata accessor for NetworkDetailsView() - 8) + 80);

  return sub_27412D328(v0 + 16);
}

unint64_t sub_2741382AC()
{
  result = qword_28093A180;
  if (!qword_28093A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A178, &qword_2741D3A88);
    sub_274138330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A180);
  }

  return result;
}

unint64_t sub_274138330()
{
  result = qword_28093A188;
  if (!qword_28093A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A188);
  }

  return result;
}

uint64_t sub_2741383D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_274138448@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(v1 + 16);
  v3 = [objc_allocWithZone(WiFiAccessoryDeviceViewController) initWithDADevice_];
  *a1 = v5;
  a1[1] = v3;

  return MEMORY[0x2821F9840]();
}

unint64_t sub_2741384AC()
{
  result = qword_28093A1A0;
  if (!qword_28093A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A1A0);
  }

  return result;
}

uint64_t sub_274138500()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_274138540()
{
  result = qword_28093A1D0;
  if (!qword_28093A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A1D0);
  }

  return result;
}

unint64_t sub_274138594()
{
  result = qword_28093A1D8;
  if (!qword_28093A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A1C0, &qword_2741D3AD0);
    sub_2740A6D24(&qword_28093A1E0, &qword_28093A1E8, &qword_2741D3AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A1D8);
  }

  return result;
}

unint64_t sub_274138644()
{
  result = qword_28093A1F0;
  if (!qword_28093A1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A1A8, &qword_2741D3A98);
    sub_274138594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A1F0);
  }

  return result;
}

uint64_t sub_2741386C8()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_274138764()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_274138828(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27412F428(a1, v6, v7, v1 + v5);
}

unint64_t sub_274138920()
{
  result = qword_28093A260;
  if (!qword_28093A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A260);
  }

  return result;
}

uint64_t sub_274138974(uint64_t a1, uint64_t a2, char a3)
{
  sub_27409861C(a1, a2, a3 & 1);
}

uint64_t sub_2741389B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_274138974(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2741389C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2741389E0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2741389E0(uint64_t a1, uint64_t a2, char a3)
{
  sub_2740A6AC8(a1, a2, a3 & 1);
}

unint64_t sub_274138A4C()
{
  result = qword_28093A280;
  if (!qword_28093A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A280);
  }

  return result;
}

uint64_t sub_274138B18(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_274138B60(uint64_t a1)
{
  *(a1 + 304) = 0;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_274138BCC(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_274133B84(a1, v6, v7, v1 + v5);
}

unint64_t sub_274138CEC()
{
  result = qword_28093A2C0;
  if (!qword_28093A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A2C0);
  }

  return result;
}

unint64_t sub_274138D40()
{
  result = qword_28093A358;
  if (!qword_28093A358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A330, &qword_2741D3D18);
    sub_2740A6D24(&qword_28093A360, &qword_28093A300, &qword_2741D3CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A358);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for NetworkDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2741C6DBC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + v1[5]);
  v9 = *v8;

  v10 = v8[1];

  v11 = *(v5 + v1[6] + 8);

  v12 = *(v5 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274138F5C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NetworkDetailsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_274139018(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for NetworkDetailsView() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_2741390BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NetworkDetailsView() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_274139144(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27412F428(a1, v6, v7, v1 + v5);
}

uint64_t sub_274139234(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27412F428(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_46Tm()
{
  v1 = type metadata accessor for NetworkDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2741C6DBC();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = (v6 + v1[5]);
  v10 = *v9;

  v11 = v9[1];

  v12 = *(v6 + v1[6] + 8);

  v13 = *(v6 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274139488(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_274130CE8(a1, v6, v7, v1 + v5);
}

unint64_t sub_274139594()
{
  result = qword_28093A3A8;
  if (!qword_28093A3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A388, &qword_2741D3D78);
    sub_2741C73BC();
    swift_getOpaqueTypeConformance2();
    sub_2740A6D24(&qword_280939658, &qword_280939660, &qword_2741D3DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A3A8);
  }

  return result;
}

uint64_t sub_274139690()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939FF0, &qword_2741D3840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939FE8, &qword_2741D3838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939FE0, &qword_2741D3830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939FD8, &qword_2741D3828);
  sub_2740A6D24(&qword_28093A008, &qword_280939FD8, &qword_2741D3828);
  swift_getOpaqueTypeConformance2();
  sub_2740A6A74();
  swift_getOpaqueTypeConformance2();
  sub_274125FA4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274139854()
{
  swift_getKeyPath();
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C6A0C();

  v1 = *(v0 + 56);
}

uint64_t sub_2741398F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C6A0C();

  *a2 = *(v3 + 56);
}

uint64_t sub_2741399A4(uint64_t a1)
{
  if (*(v1 + 56) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel);
    sub_2741C69FC();
  }
}

uint64_t sub_274139AD8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v1 + 64, a1, &qword_28093A3D0, &qword_2741D3EA0);
}

uint64_t sub_274139BA8(uint64_t a1)
{
  swift_beginAccess();
  sub_2740A6D94(v1 + 64, v6, &qword_28093A3D0, &qword_2741D3EA0);
  v3 = sub_27413B5A4(v6, a1);
  sub_27409D420(v6, &qword_28093A3D0, &qword_2741D3EA0);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v6[0] = v1;
    sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel);
    sub_2741C69FC();
  }

  else
  {
    sub_2740A6D94(a1, v6, &qword_28093A3D0, &qword_2741D3EA0);
    swift_beginAccess();
    sub_27413B714(v6, v1 + 64);
    swift_endAccess();
  }

  return sub_27409D420(a1, &qword_28093A3D0, &qword_2741D3EA0);
}

uint64_t sub_274139D5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_27413B7A8(a2, a1 + 64);
  return swift_endAccess();
}

uint64_t sub_274139DC0()
{
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  sub_2741C6A3C();
  v1 = type metadata accessor for AssociationState();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  sub_2741C6A3C();
  *(v0 + 56) = v4;
  v9[3] = v1;
  v9[4] = sub_27413B9D0(&qword_28093A3E0, type metadata accessor for AssociationState);
  v9[0] = v4;
  v5 = qword_280937B98;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_274175B8C(v6, v9);
  *(v0 + 40) = type metadata accessor for WiFiAssociator();
  *(v0 + 48) = &off_28832D700;
  *(v0 + 16) = v7;
  sub_2741C69EC();

  return v0;
}

uint64_t sub_274139F44(uint64_t a1, char a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 88) = a4;
  *(v6 + 90) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v7 = sub_2741C6AFC();
  *(v6 + 48) = v7;
  v8 = *(v7 - 8);
  *(v6 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27413A010, 0, 0);
}

uint64_t sub_27413A010()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 90);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_2741C856C();

  v5 = sub_27409DCD8();
  MEMORY[0x2743E5FB0](v5);

  MEMORY[0x2743E5FB0](0x6974746573202D20, 0xED0000273D73676ELL);
  v6 = sub_27409984C(v2, v3, v1 & 0x101);
  MEMORY[0x2743E5FB0](v6);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 88);
  v12 = __swift_project_value_buffer(v9, qword_280945DD8);
  (*(v8 + 16))(v7, v12, v9);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](43, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, 0xD000000000000018, 0x80000002741DD3A0);

  (*(v8 + 8))(v7, v9);
  *(v0 + 72) = *(*__swift_project_boxed_opaque_existential_1((v10 + 16), *(v10 + 40)) + 16);
  swift_unknownObjectRetain();
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = sub_27413A2A4;
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = *(v0 + 90);
  v17 = *(v0 + 16);

  return sub_2740EB8A4(v17, v16, v14, v11 & 0x101, v15);
}

uint64_t sub_27413A2A4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  swift_unknownObjectRelease();

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_27413A3D8(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 80) = a3;
  *(v5 + 16) = a2;
  *(v5 + 82) = a1;
  v6 = sub_2741C6AFC();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27413A4A4, 0, 0);
}

uint64_t sub_27413A4A4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 82);
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000033, 0x80000002741DD360);
  v4 = sub_27409984C(v3, v2, v1 & 0x101);
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = __swift_project_value_buffer(v7, qword_280945DD8);
  (*(v6 + 16))(v5, v9, v7);
  MEMORY[0x2743E5FB0](0x434F535341, 0xE500000000000000);
  MEMORY[0x2743E5FB0](43, 0xE100000000000000);
  MEMORY[0x2743E5FB0](93, 0xE100000000000000);
  sub_2740CA9CC(91, 0xE100000000000000, 0, 0xE000000000000000);

  (*(v6 + 8))(v5, v7);
  *(v0 + 64) = *(*__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40)) + 16);
  swift_unknownObjectRetain();
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_27413A6FC;
  v11 = *(v0 + 24);

  return sub_2740F1830(v11);
}

uint64_t sub_27413A6FC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  swift_unknownObjectRelease();

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_27413A830(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_2741C6AFC();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27413A8F8, 0, 0);
}

uint64_t sub_27413A8F8()
{
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 88);
  v6 = __swift_project_value_buffer(v3, qword_280945DD8);
  (*(v2 + 16))(v1, v6, v3);
  sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD000000000000035, 0x80000002741DD320);
  (*(v2 + 8))(v1, v3);
  *(v0 + 72) = *(*__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40)) + 16);
  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_27413AA7C;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return sub_274187020(v10, v8, v9, v5 & 1);
}

uint64_t sub_27413AA7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *v2;

  swift_unknownObjectRelease();
  v8 = *(v4 + 64);

  v10 = *(v7 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_27413ABCC(uint64_t a1)
{
  swift_getKeyPath();
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C6A0C();

  v2 = *(a1 + 56);
  swift_getKeyPath();
  sub_27413B9D0(&qword_2809399A0, type metadata accessor for AssociationState);

  sub_2741C6A0C();
}

uint64_t sub_27413ACEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_2741C80DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2741C80AC();

  v7 = sub_2741C809C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_2740CE980(0, 0, v5, &unk_2741D3F10, v8);

  return sub_2741C69EC();
}

uint64_t sub_27413AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a4;
  v5 = sub_2741C6AFC();
  v4[50] = v5;
  v6 = *(v5 - 8);
  v4[51] = v6;
  v7 = *(v6 + 64) + 15;
  v4[52] = swift_task_alloc();
  sub_2741C80AC();
  v4[53] = sub_2741C809C();
  v9 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27413AF44, v9, v8);
}

uint64_t sub_27413AF44()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 392);

  swift_getKeyPath();
  *(v0 + 360) = v2;
  sub_27413B9D0(&qword_280937E70, type metadata accessor for AssociationModel);
  sub_2741C6A0C();

  v3 = *(v2 + 56);
  swift_getKeyPath();
  *(v0 + 368) = v3;
  sub_27413B9D0(&qword_2809399A0, type metadata accessor for AssociationState);

  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v3 + 16, v0 + 56, &qword_2809399A8, &qword_2741D3F40);

  if (*(v0 + 80))
  {
    v4 = (v0 + 256);
    sub_27409D118((v0 + 56), v0 + 16);
    sub_2741C856C();

    sub_27409D4E4(v0 + 16, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A240, &unk_2741D3B20);
    v5 = sub_2741C7EBC();
    MEMORY[0x2743E5FB0](v5);

    MEMORY[0x2743E5FB0](39, 0xE100000000000000);
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 408);
    v7 = *(v0 + 416);
    v8 = *(v0 + 400);
    v9 = __swift_project_value_buffer(v8, qword_280945DD8);
    (*(v6 + 16))(v7, v9, v8);
    sub_2740CA9CC(0x5D434F5353415BLL, 0xE700000000000000, 0xD00000000000001FLL, 0x80000002741DD3C0);

    (*(v6 + 8))(v7, v8);
    sub_27409D4E4(v0 + 16, v0 + 176);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 392);
      *(v0 + 136) = *(v0 + 216);
      *(v0 + 152) = *(v0 + 232);
      *(v0 + 168) = *(v0 + 248);
      sub_27413879C(v0 + 136, v0 + 296);
      sub_274139BA8(v0 + 296);
      sub_274138710(v0 + 136);
    }

    else
    {
      *(v0 + 248) = 0;
      *(v0 + 232) = 0u;
      *(v0 + 216) = 0u;
      sub_27409D420(v0 + 216, &qword_28093A3D0, &qword_2741D3EA0);
    }

    v11 = *(v0 + 392);
    swift_getKeyPath();
    *(v0 + 376) = v11;
    sub_2741C6A0C();

    v12 = *(v2 + 56);
    *(v0 + 288) = 0;
    *v4 = 0u;
    *(v0 + 272) = 0u;
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v4;
    *(v0 + 384) = v12;

    sub_2741C69FC();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    v4 = (v0 + 56);
  }

  sub_27409D420(v4, &qword_2809399A8, &qword_2741D3F40);
  v14 = *(v0 + 416);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_27413B3D8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  sub_27409D420((v0 + 8), &qword_28093A3D0, &qword_2741D3EA0);
  v2 = OBJC_IVAR____TtC15WiFiSettingsKit16AssociationModel___observationRegistrar;
  v3 = sub_2741C6A4C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssociationModel()
{
  result = qword_28093A3C0;
  if (!qword_28093A3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27413B4F0()
{
  result = sub_2741C6A4C();
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

uint64_t sub_27413B5A4(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a1, v14, &qword_28093A3D0, &qword_2741D3EA0);
  sub_2740A6D94(a2, &v16, &qword_28093A3D0, &qword_2741D3EA0);
  if (!v15)
  {
    if (!*(&v17 + 1))
    {
      sub_27409D420(v14, &qword_28093A3D0, &qword_2741D3EA0);
      return 0;
    }

LABEL_7:
    sub_27409D420(v14, &qword_28093A3D8, &qword_2741D3ED0);
    return 1;
  }

  sub_2740A6D94(v14, v13, &qword_28093A3D0, &qword_2741D3EA0);
  if (!*(&v17 + 1))
  {
    sub_274138710(v13);
    goto LABEL_7;
  }

  v10 = v16;
  v11 = v17;
  v12 = v18;
  v3 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v4 = *(v3 + 16);
  v5 = sub_2741C7DAC();
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
  v7 = *(v6 + 16);
  v8 = v5 != sub_2741C7DAC();
  sub_274138710(&v10);
  sub_274138710(v13);
  sub_27409D420(v14, &qword_28093A3D0, &qword_2741D3EA0);
  return v8;
}

uint64_t sub_27413B714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3D0, &qword_2741D3EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27413B7A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3D0, &qword_2741D3EA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27413B81C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2741399A4(v4);
}

uint64_t sub_27413B848()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);
}

uint64_t sub_27413B8D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27413B914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_27413AE50(a1, v4, v5, v6);
}

uint64_t sub_27413B9D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WiFiScanner.deinit()
{
  sub_27413BA48(v0 + 16);
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_27413BA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E10, &qword_2741D8580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WiFiScanner.__deallocating_deinit()
{
  sub_27413BA48(v0 + 16);
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_27413BB40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3E8, qword_2741D3FA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_27413BBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3E8, qword_2741D3FA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DNSDomainTextField()
{
  result = qword_28093A3F0;
  if (!qword_28093A3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27413BC94()
{
  sub_27413BD00();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_27413BD00()
{
  if (!qword_28093A400[0])
  {
    type metadata accessor for DNSDomain();
    v0 = sub_2741C7BFC();
    if (!v1)
    {
      atomic_store(v0, qword_28093A400);
    }
  }
}

uint64_t sub_27413BD74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A3E8, qword_2741D3FA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_2741C714C();
  sub_2741C7BCC();
  swift_getKeyPath();
  sub_2741C7BEC();

  (*(v1 + 8))(v4, v0);
  return sub_2741C7C8C();
}

uint64_t sub_27413BF78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27413BFCC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27413C060(void *a1)
{
  v1 = a1;
  v2 = sub_27413C094();

  return v2;
}

uint64_t sub_27413C094()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v3 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68);
  return sub_2741C7DAC();
}

uint64_t sub_27413C104(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v1;
  sub_2740B2A50(a1, v12);
  if (!v13)
  {
    sub_2740B29E8(v12);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v5 = *((*v3 & *v11) + 0x68);
  v6 = *((*v1 & *v3) + 0x68);
  v7 = *(*(v4 + 96) + 8);
  v8 = *(v4 + 80);
  v9 = sub_2741C7DBC();

  return v9 & 1;
}

uint64_t sub_27413C228(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_2741C83DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_27413C104(v8);

  sub_2740B29E8(v8);
  return v6 & 1;
}

void sub_27413C2A0(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  sub_27413C500();
}

id sub_27413C2F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27413C3A8(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27413C43C()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_27413C564()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E48 = v1;
  unk_280945E50 = v3;
}

void sub_27413C608()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E58 = v1;
  unk_280945E60 = v3;
}

void sub_27413C6B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E68 = v1;
  unk_280945E70 = v3;
}

void sub_27413C76C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E78 = v1;
  unk_280945E80 = v3;
}

void sub_27413C818()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E88 = v1;
  unk_280945E90 = v3;
}

void sub_27413C8CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945E98 = v1;
  unk_280945EA0 = v3;
}

void sub_27413C980()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EA8 = v1;
  unk_280945EB0 = v3;
}

void sub_27413CA38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EB8 = v1;
  unk_280945EC0 = v3;
}

void sub_27413CAF0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EC8 = v1;
  unk_280945ED0 = v3;
}

void sub_27413CB9C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945ED8 = v1;
  unk_280945EE0 = v3;
}

void sub_27413CC38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EE8 = v1;
  unk_280945EF0 = v3;
}

void sub_27413CCE4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945EF8 = v1;
  unk_280945F00 = v3;
}

void sub_27413CD90()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F08 = v1;
  unk_280945F10 = v3;
}

void sub_27413CE48()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F18 = v1;
  unk_280945F20 = v3;
}

void sub_27413CF04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F28 = v1;
  unk_280945F30 = v3;
}

void sub_27413CFB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F38 = v1;
  unk_280945F40 = v3;
}

void sub_27413D06C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F48 = v1;
  unk_280945F50 = v3;
}

void sub_27413D114()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F58 = v1;
  unk_280945F60 = v3;
}

void sub_27413D1BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F68 = v1;
  unk_280945F70 = v3;
}

void sub_27413D264()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F78 = v1;
  unk_280945F80 = v3;
}

void sub_27413D320()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F88 = v1;
  unk_280945F90 = v3;
}

void sub_27413D3DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945F98 = v1;
  unk_280945FA0 = v3;
}

void sub_27413D498()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FA8 = v1;
  unk_280945FB0 = v3;
}

void sub_27413D554()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FB8 = v1;
  unk_280945FC0 = v3;
}

void sub_27413D610()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FC8 = v1;
  unk_280945FD0 = v3;
}

void sub_27413D6C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FD8 = v1;
  unk_280945FE0 = v3;
}

void sub_27413D770()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FE8 = v1;
  unk_280945FF0 = v3;
}

void sub_27413D820()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280945FF8 = v1;
  unk_280946000 = v3;
}

void sub_27413D8D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946008 = v1;
  unk_280946010 = v3;
}

void sub_27413D980()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946018 = v1;
  unk_280946020 = v3;
}

void sub_27413DA3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946028 = v1;
  unk_280946030 = v3;
}

void sub_27413DAF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946038 = v1;
  unk_280946040 = v3;
}

void sub_27413DBA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946048 = v1;
  unk_280946050 = v3;
}

void sub_27413DC58()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946058 = v1;
  unk_280946060 = v3;
}

void sub_27413DD0C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946068 = v1;
  unk_280946070 = v3;
}

void sub_27413DDBC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946078 = v1;
  unk_280946080 = v3;
}

void sub_27413DE6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946088 = v1;
  unk_280946090 = v3;
}

void sub_27413DF1C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946098 = v1;
  unk_2809460A0 = v3;
}

void sub_27413DFC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460A8 = v1;
  unk_2809460B0 = v3;
}

void sub_27413E084()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460B8 = v1;
  unk_2809460C0 = v3;
}

void sub_27413E140()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460C8 = v1;
  unk_2809460D0 = v3;
}

void sub_27413E204()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460D8 = v1;
  unk_2809460E0 = v3;
}

void sub_27413E2C0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460E8 = v1;
  unk_2809460F0 = v3;
}

void sub_27413E37C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809460F8 = v1;
  unk_280946100 = v3;
}

void sub_27413E440()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946108 = v1;
  unk_280946110 = v3;
}

void sub_27413E51C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413E5E4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946138 = v1;
  unk_280946140 = v3;
}

void sub_27413E698()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946148 = v1;
  unk_280946150 = v3;
}

void sub_27413E74C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946158 = v1;
  unk_280946160 = v3;
}

void sub_27413E808()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946168 = v1;
  unk_280946170 = v3;
}

void sub_27413E8C4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946178 = v1;
  unk_280946180 = v3;
}

void sub_27413E980()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946188 = v1;
  unk_280946190 = v3;
}

void sub_27413EA3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946198 = v1;
  unk_2809461A0 = v3;
}

void sub_27413EAF8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461A8 = v1;
  unk_2809461B0 = v3;
}

void sub_27413EBB4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461B8 = v1;
  unk_2809461C0 = v3;
}

void sub_27413EC70()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461C8 = v1;
  unk_2809461D0 = v3;
}

void sub_27413ED2C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461D8 = v1;
  unk_2809461E0 = v3;
}

void sub_27413EDE8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461E8 = v1;
  unk_2809461F0 = v3;
}

void sub_27413EEA4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809461F8 = v1;
  unk_280946200 = v3;
}

void sub_27413EF60()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946208 = v1;
  unk_280946210 = v3;
}

void sub_27413F01C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946218 = v1;
  unk_280946220 = v3;
}

void sub_27413F0D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946228 = v1;
  unk_280946230 = v3;
}

void sub_27413F1B4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413F29C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413F364()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946278 = v1;
  unk_280946280 = v3;
}

void sub_27413F420()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946288 = v1;
  unk_280946290 = v3;
}

void sub_27413F50C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413F5E4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413F6AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809462D8 = v1;
  unk_2809462E0 = v3;
}

void sub_27413F768()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809462E8 = v1;
  unk_2809462F0 = v3;
}

void sub_27413F824()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809462F8 = v1;
  unk_280946300 = v3;
}

void sub_27413F8E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946308 = v1;
  unk_280946310 = v3;
}

void sub_27413F99C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946318 = v1;
  unk_280946320 = v3;
}

void sub_27413FA58()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946328 = v1;
  unk_280946330 = v3;
}

void sub_27413FB14()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946338 = v1;
  unk_280946340 = v3;
}

void sub_27413FC20(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413FCF8(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_2741C676C();
  v8 = v7;

  *a2 = v6;
  *a3 = v8;
}

void sub_27413FDC0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463A8 = v1;
  unk_2809463B0 = v3;
}

void sub_27413FE7C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463B8 = v1;
  unk_2809463C0 = v3;
}

void sub_27413FF38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463C8 = v1;
  unk_2809463D0 = v3;
}

void sub_27413FFF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463D8 = v1;
  unk_2809463E0 = v3;
}

void sub_2741400A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463E8 = v1;
  unk_2809463F0 = v3;
}

void sub_27414015C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809463F8 = v1;
  unk_280946400 = v3;
}

void sub_274140218()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946408 = v1;
  unk_280946410 = v3;
}

void sub_2741402CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946418 = v1;
  unk_280946420 = v3;
}

void sub_274140384()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946428 = v1;
  unk_280946430 = v3;
}

void sub_274140440()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946438 = v1;
  unk_280946440 = v3;
}

void sub_2741404F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946448 = v1;
  unk_280946450 = v3;
}

void sub_2741405F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_2741C676C();
  v10 = v9;

  *a4 = v8;
  *a5 = v10;
}

void sub_2741406A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946478 = v1;
  unk_280946480 = v3;
}

void sub_27414075C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946488 = v1;
  unk_280946490 = v3;
}

void sub_274140810()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946498 = v1;
  unk_2809464A0 = v3;
}

void sub_2741408B8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464A8 = v1;
  unk_2809464B0 = v3;
}

void sub_274140964()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464B8 = v1;
  unk_2809464C0 = v3;
}

void sub_274140A1C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464C8 = v1;
  unk_2809464D0 = v3;
}

void sub_274140AD0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464D8 = v1;
  unk_2809464E0 = v3;
}

void sub_274140B88()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464E8 = v1;
  unk_2809464F0 = v3;
}

void sub_274140C3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809464F8 = v1;
  unk_280946500 = v3;
}

void sub_274140CF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946508 = v1;
  unk_280946510 = v3;
}

void sub_274140DA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946518 = v1;
  unk_280946520 = v3;
}

void sub_274140E60()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946528 = v1;
  unk_280946530 = v3;
}

void sub_274140F14()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946538 = v1;
  unk_280946540 = v3;
}

void sub_274140FCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946548 = v1;
  unk_280946550 = v3;
}

void sub_274141080()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946558 = v1;
  unk_280946560 = v3;
}

void sub_274141134()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946568 = v1;
  unk_280946570 = v3;
}

void sub_2741411E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946578 = v1;
  unk_280946580 = v3;
}

void sub_2741412A4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946588 = v1;
  unk_280946590 = v3;
}

void sub_27414135C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946598 = v1;
  unk_2809465A0 = v3;
}

void sub_274141418()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465A8 = v1;
  unk_2809465B0 = v3;
}

void sub_2741414D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465B8 = v1;
  unk_2809465C0 = v3;
}

void sub_274141588()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465C8 = v1;
  unk_2809465D0 = v3;
}

void sub_274141640()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465D8 = v1;
  unk_2809465E0 = v3;
}

void sub_2741416F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465E8 = v1;
  unk_2809465F0 = v3;
}

void sub_2741417AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809465F8 = v1;
  unk_280946600 = v3;
}

void sub_274141860()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946608 = v1;
  unk_280946610 = v3;
}

void sub_274141918()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946618 = v1;
  unk_280946620 = v3;
}

void sub_2741419D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946628 = v1;
  unk_280946630 = v3;
}

void sub_274141A84()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946638 = v1;
  unk_280946640 = v3;
}

void sub_274141B38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946658 = v1;
  unk_280946660 = v3;
}

void sub_274141BF0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946668 = v1;
  unk_280946670 = v3;
}

void sub_274141CA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946678 = v1;
  unk_280946680 = v3;
}

void sub_274141D64()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946688 = v1;
  unk_280946690 = v3;
}

void sub_274141E18()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946698 = v1;
  unk_2809466A0 = v3;
}

void sub_274141ED0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466A8 = v1;
  unk_2809466B0 = v3;
}

void sub_274141F88()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466B8 = v1;
  unk_2809466C0 = v3;
}

void sub_274142044()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466C8 = v1;
  unk_2809466D0 = v3;
}

void sub_2741420FC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466D8 = v1;
  unk_2809466E0 = v3;
}

void sub_2741421B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466E8 = v1;
  unk_2809466F0 = v3;
}

void sub_274142268()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809466F8 = v1;
  unk_280946700 = v3;
}

void sub_274142318()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946708 = v1;
  unk_280946710 = v3;
}

void sub_2741423CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946718 = v1;
  unk_280946720 = v3;
}

void sub_274142484()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946728 = v1;
  unk_280946730 = v3;
}

void sub_274142540()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946738 = v1;
  unk_280946740 = v3;
}

void sub_2741425FC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946748 = v1;
  unk_280946750 = v3;
}

void sub_2741426B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946758 = v1;
  unk_280946760 = v3;
}

void sub_27414275C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946768 = v1;
  unk_280946770 = v3;
}

void sub_274142818()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946778 = v1;
  unk_280946780 = v3;
}

void sub_2741428CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946788 = v1;
  unk_280946790 = v3;
}

void sub_274142988()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946798 = v1;
  unk_2809467A0 = v3;
}

void sub_274142A3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467A8 = v1;
  unk_2809467B0 = v3;
}

void sub_274142AF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467B8 = v1;
  unk_2809467C0 = v3;
}

void sub_274142BA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467C8 = v1;
  unk_2809467D0 = v3;
}

void sub_274142C60()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467D8 = v1;
  unk_2809467E0 = v3;
}

void sub_274142D14()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467E8 = v1;
  unk_2809467F0 = v3;
}

void sub_274142DCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809467F8 = v1;
  unk_280946800 = v3;
}

void sub_274142E80()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946808 = v1;
  unk_280946810 = v3;
}

void sub_274142F34()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946818 = v1;
  unk_280946820 = v3;
}

void sub_274142FE8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946828 = v1;
  unk_280946830 = v3;
}

void sub_27414309C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946838 = v1;
  unk_280946840 = v3;
}

void sub_274143154()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946848 = v1;
  unk_280946850 = v3;
}

void sub_274143204()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946858 = v1;
  unk_280946860 = v3;
}

void sub_2741432BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946868 = v1;
  unk_280946870 = v3;
}

void sub_274143374()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946878 = v1;
  unk_280946880 = v3;
}

void sub_274143428()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946888 = v1;
  unk_280946890 = v3;
}

void sub_2741434DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946898 = v1;
  unk_2809468A0 = v3;
}

void sub_274143590()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468A8 = v1;
  unk_2809468B0 = v3;
}

void sub_274143648()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468B8 = v1;
  unk_2809468C0 = v3;
}

void sub_2741436EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468C8 = v1;
  unk_2809468D0 = v3;
}

void sub_2741437A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468D8 = v1;
  unk_2809468E0 = v3;
}

void sub_274143860()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468E8 = v1;
  unk_2809468F0 = v3;
}

void sub_27414391C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809468F8 = v1;
  unk_280946900 = v3;
}

void sub_2741439D4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946908 = v1;
  unk_280946910 = v3;
}

void sub_274143A7C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946918 = v1;
  unk_280946920 = v3;
}

void sub_274143B24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946928 = v1;
  unk_280946930 = v3;
}

void sub_274143BDC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946938 = v1;
  unk_280946940 = v3;
}

void sub_274143C84()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946948 = v1;
  unk_280946950 = v3;
}

void sub_274143D3C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946958 = v1;
  unk_280946960 = v3;
}

void sub_274143DE8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946968 = v1;
  unk_280946970 = v3;
}

void sub_274143EA0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946978 = v1;
  unk_280946980 = v3;
}

void sub_274143F48()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946988 = v1;
  unk_280946990 = v3;
}

void sub_274144000()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946998 = v1;
  unk_2809469A0 = v3;
}

void sub_2741440B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469A8 = v1;
  unk_2809469B0 = v3;
}

void sub_274144168()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469B8 = v1;
  unk_2809469C0 = v3;
}

void sub_274144214()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469C8 = v1;
  unk_2809469D0 = v3;
}

void sub_2741442CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469D8 = v1;
  unk_2809469E0 = v3;
}

void sub_274144380()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469E8 = v1;
  unk_2809469F0 = v3;
}

void sub_27414443C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_2809469F8 = v1;
  unk_280946A00 = v3;
}

void sub_2741444F0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A08 = v1;
  unk_280946A10 = v3;
}

void sub_2741445A4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A18 = v1;
  unk_280946A20 = v3;
}

void sub_27414465C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A28 = v1;
  unk_280946A30 = v3;
}

void sub_274144710()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A38 = v1;
  unk_280946A40 = v3;
}

void sub_2741447C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A48 = v1;
  unk_280946A50 = v3;
}

void sub_274144880()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A58 = v1;
  unk_280946A60 = v3;
}

void sub_274144938()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A68 = v1;
  unk_280946A70 = v3;
}

void sub_2741449EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A78 = v1;
  unk_280946A80 = v3;
}

void sub_274144AA4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A88 = v1;
  unk_280946A90 = v3;
}

void sub_274144B58()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946A98 = v1;
  unk_280946AA0 = v3;
}

void sub_274144C10()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AA8 = v1;
  unk_280946AB0 = v3;
}

void sub_274144CC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AC8 = v1;
  unk_280946AD0 = v3;
}

void sub_274144D78()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AD8 = v1;
  unk_280946AE0 = v3;
}

void sub_274144E24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AE8 = v1;
  unk_280946AF0 = v3;
}

void sub_274144ED4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946AF8 = v1;
  unk_280946B00 = v3;
}

void sub_274144F8C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B08 = v1;
  unk_280946B10 = v3;
}

void sub_274145044()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B18 = v1;
  unk_280946B20 = v3;
}

void sub_2741450FC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B28 = v1;
  unk_280946B30 = v3;
}

void sub_2741451B4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B38 = v1;
  unk_280946B40 = v3;
}

void sub_27414526C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B48 = v1;
  unk_280946B50 = v3;
}

void sub_274145328()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B58 = v1;
  unk_280946B60 = v3;
}

void sub_2741453E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B68 = v1;
  unk_280946B70 = v3;
}

void sub_274145498()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B78 = v1;
  unk_280946B80 = v3;
}

void sub_274145540()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946B88 = v1;
  unk_280946B90 = v3;
}

void sub_2741455F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C28 = v1;
  unk_280946C30 = v3;
}

void sub_2741456B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C38 = v1;
  unk_280946C40 = v3;
}

void sub_274145768()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C48 = v1;
  unk_280946C50 = v3;
}

void sub_27414581C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C58 = v1;
  unk_280946C60 = v3;
}

void sub_2741458C4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C68 = v1;
  unk_280946C70 = v3;
}

void sub_274145978()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C78 = v1;
  unk_280946C80 = v3;
}

void sub_274145A24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C88 = v1;
  unk_280946C90 = v3;
}

void sub_274145AD8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946C98 = v1;
  unk_280946CA0 = v3;
}

void sub_274145B94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CA8 = v1;
  unk_280946CB0 = v3;
}

void sub_274145C40()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CB8 = v1;
  unk_280946CC0 = v3;
}

void sub_274145CF4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CC8 = v1;
  unk_280946CD0 = v3;
}

void sub_274145DAC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CD8 = v1;
  unk_280946CE0 = v3;
}

void sub_274145E5C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CE8 = v1;
  unk_280946CF0 = v3;
}

void sub_274145F0C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946CF8 = v1;
  unk_280946D00 = v3;
}

void sub_274145FC4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D08 = v1;
  unk_280946D10 = v3;
}

void sub_274146074()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D18 = v1;
  unk_280946D20 = v3;
}

void sub_274146130()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D28 = v1;
  unk_280946D30 = v3;
}

void sub_2741461E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D38 = v1;
  unk_280946D40 = v3;
}

void sub_2741462A0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D48 = v1;
  unk_280946D50 = v3;
}

void sub_274146388()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D68 = v1;
  unk_280946D70 = v3;
}

void sub_274146484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_2741C676C();
  v10 = v9;

  *a4 = v8;
  *a5 = v10;
}

void sub_27414653C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946D98 = v1;
  unk_280946DA0 = v3;
}

void sub_274146610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_2741C676C();
  v10 = v9;

  *a4 = v8;
  *a5 = v10;
}

void sub_2741466C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946DB8 = v1;
  unk_280946DC0 = v3;
}

void sub_274146770()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946DC8 = v2;
  unk_280946DD0 = v4;
}

void sub_27414683C()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946DD8 = v2;
  unk_280946DE0 = v4;
}

void sub_274146908()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946DE8 = v2;
  unk_280946DF0 = v4;
}

void sub_2741469D8()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946DF8 = v2;
  unk_280946E00 = v4;
}

void sub_274146AA4()
{
  type metadata accessor for WiFiPickerManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2741C676C();
  v4 = v3;

  qword_280946E08 = v2;
  unk_280946E10 = v4;
}

void sub_274146B70()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E18 = v1;
  unk_280946E20 = v3;
}

void sub_274146C24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E28 = v1;
  unk_280946E30 = v3;
}

void sub_274146CD0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E38 = v1;
  unk_280946E40 = v3;
}

void sub_274146D78()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2741C676C();
  v3 = v2;

  qword_280946E48 = v1;
  unk_280946E50 = v3;
}