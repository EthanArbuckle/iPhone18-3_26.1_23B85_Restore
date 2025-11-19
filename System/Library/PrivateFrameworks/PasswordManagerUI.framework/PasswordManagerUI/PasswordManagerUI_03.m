unint64_t sub_21C73B6AC()
{
  result = qword_27CDEF2E0;
  if (!qword_27CDEF2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEF290, &qword_21CBABF20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF2E0);
  }

  return result;
}

uint64_t sub_21C73B7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v47 = a2;
  v46 = sub_21CB82444();
  v44 = *(v46 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for PMAppCommands();
  v38 = *(v36 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF288, &qword_21CBABF18);
  v43 = *(v45 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v37 = &v36 - v19;
  sub_21CB81014();
  sub_21CB81014();
  v20 = sub_21CB80FF4();
  v22 = v21;
  v23 = *(v6 + 8);
  v23(v10, v5);
  v23(v12, v5);
  sub_21C73A7B0(v39, &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v24 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v25 = swift_allocObject();
  sub_21C73A8E8(&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PMAppCommands);
  v51 = v20;
  v52 = v22;
  v48 = &v51;
  v49 = 0x697966696E67616DLL;
  v50 = 0xEF7373616C67676ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v26 = v37;
  sub_21CB84DA4();

  v27 = v42;
  sub_21CB82424();
  sub_21CB82574();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  v28 = v40;
  sub_21CB84324();
  (*(v44 + 8))(v27, v46);
  (*(v41 + 8))(v17, v28);
  if (sub_21C73BDF0())
  {
    goto LABEL_6;
  }

  v29 = *(v36 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  if (v52 != 1)
  {
    j__swift_release();
    goto LABEL_6;
  }

  if (!v51)
  {
LABEL_6:
    v30 = 1;
    goto LABEL_7;
  }

  j__swift_release();
  v30 = 0;
LABEL_7:
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  v33 = v47;
  (*(v43 + 32))(v47, v26, v45);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF290, &qword_21CBABF20);
  v35 = (v33 + *(result + 36));
  *v35 = KeyPath;
  v35[1] = sub_21C87E800;
  v35[2] = v32;
  return result;
}

uint64_t sub_21C73BDF0()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppCommands();
  v3 = *(v2 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  if (v9 == 1)
  {
    if (v8)
    {
      j__swift_release();
      v4 = *(v1 + *(v2 + 48) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v5 = v7 ^ 1;
    }

    else
    {
      v5 = 1;
      j__swift_release();
    }
  }

  else
  {
    j__swift_release();
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_21C73BEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF090, &qword_21CBABA88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0A0, &unk_21CBABA90);
  sub_21C6EADEC(&qword_27CDEF098, &qword_27CDEF0A0, &unk_21CBABA90);
  sub_21CB85054();
  v9 = *(a1 + *(type metadata accessor for PMAppCommands() + 52) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = v18;
  if (v18)
  {
  }

  v11 = v10 != 0;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(a2, v8, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF078, &qword_21CBABA80);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_21C87E800;
  v15[2] = v13;
  return result;
}

uint64_t sub_21C73C11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v79 = sub_21CB81024();
  v78 = *(v79 - 8);
  v3 = *(v78 + 64);
  v4 = MEMORY[0x28223BE20](v79);
  v77 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v87 = *(v7 - 8);
  v88 = v7;
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v7);
  v80 = v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF268, &unk_21CBABDE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v90 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v89 = v74 - v14;
  v15 = sub_21CB82444();
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMAppCommands();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF288, &qword_21CBABF18);
  v85 = *(v27 - 8);
  v86 = v27;
  v28 = *(v85 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v84 = v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v93 = v74 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF290, &qword_21CBABF20);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v94 = v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v92 = v74 - v36;
  sub_21C73CBD8(v74 - v36);
  v81 = a1;
  sub_21C73A7B0(a1, v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v37 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v74[2] = v21;
  v38 = swift_allocObject();
  v75 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C73A8E8(v75, v38 + v37, type metadata accessor for PMAppCommands);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v40 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v74[1] = v39;
  v74[0] = v40;
  sub_21CB84DA4();
  sub_21CB82424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  v42 = sub_21CB82554();
  *(inited + 32) = v42;
  v43 = sub_21CB82574();
  *(inited + 40) = v43;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v42)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v43)
  {
    sub_21CB82594();
  }

  v44 = v89;
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB84324();
  (*(v82 + 8))(v18, v83);
  (*(v23 + 8))(v26, v22);
  if ([objc_opt_self() isOngoingCredentialSharingEnabled])
  {
    v45 = v76;
    sub_21CB81014();
    v46 = v77;
    sub_21CB81014();
    v47 = sub_21CB80FF4();
    v49 = v48;
    v50 = *(v78 + 8);
    v51 = v46;
    v52 = v79;
    v50(v51, v79);
    v50(v45, v52);
    v53 = v75;
    sub_21C73A7B0(v81, v75, type metadata accessor for PMAppCommands);
    v54 = swift_allocObject();
    v55 = sub_21C73A8E8(v53, v54 + v37, type metadata accessor for PMAppCommands);
    v95[0] = v47;
    v95[1] = v49;
    MEMORY[0x28223BE20](v55);
    v74[-4] = v95;
    v74[-3] = 0x322E6E6F73726570;
    v74[-2] = 0xE800000000000000;
    v56 = v80;
    sub_21CB84DA4();

    LOBYTE(v47) = sub_21C73BDF0();
    KeyPath = swift_getKeyPath();
    v58 = swift_allocObject();
    *(v58 + 16) = v47 & 1;
    v59 = v88;
    v60 = (v56 + *(v88 + 36));
    *v60 = KeyPath;
    v60[1] = sub_21C87E800;
    v60[2] = v58;
    sub_21C716934(v56, v44, &qword_27CDEEBA0, &qword_21CBABC80);
    v61 = 0;
  }

  else
  {
    v61 = 1;
    v59 = v88;
  }

  (*(v87 + 56))(v44, v61, 1, v59);
  v62 = v94;
  sub_21C6EDBAC(v92, v94, &qword_27CDEF290, &qword_21CBABF20);
  v64 = v84;
  v63 = v85;
  v65 = *(v85 + 16);
  v66 = v93;
  v67 = v44;
  v68 = v86;
  v65(v84, v93, v86);
  v69 = v90;
  sub_21C6EDBAC(v67, v90, &qword_27CDEF268, &unk_21CBABDE0);
  v70 = v91;
  sub_21C6EDBAC(v62, v91, &qword_27CDEF290, &qword_21CBABF20);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF298, &qword_21CBABF28);
  v65((v70 + *(v71 + 48)), v64, v68);
  sub_21C6EDBAC(v69, v70 + *(v71 + 64), &qword_27CDEF268, &unk_21CBABDE0);
  sub_21C6EA794(v67, &qword_27CDEF268, &unk_21CBABDE0);
  v72 = *(v63 + 8);
  v72(v66, v68);
  sub_21C6EA794(v92, &qword_27CDEF290, &qword_21CBABF20);
  sub_21C6EA794(v69, &qword_27CDEF268, &unk_21CBABDE0);
  v72(v64, v68);
  return sub_21C6EA794(v94, &qword_27CDEF290, &qword_21CBABF20);
}

uint64_t sub_21C73CBD8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_21CB82444();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAppCommands();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF288, &qword_21CBABF18);
  v44 = *(v19 - 8);
  v45 = v19;
  v20 = *(v44 + 64);
  MEMORY[0x28223BE20](v19);
  v38 = &v37 - v21;
  sub_21CB81014();
  sub_21CB81014();
  v22 = sub_21CB80FF4();
  v24 = v23;
  v25 = *(v7 + 8);
  v25(v11, v6);
  v25(v13, v6);
  sub_21C73A7B0(v40, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v27 = swift_allocObject();
  sub_21C73A8E8(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for PMAppCommands);
  v52[0] = v22;
  v52[1] = v24;
  v49 = v52;
  v50 = 1937075312;
  v51 = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();
  v28 = v38;

  v29 = v43;
  sub_21CB82424();
  sub_21CB82574();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
  v30 = v41;
  sub_21CB84324();
  (*(v46 + 8))(v29, v47);
  (*(v42 + 8))(v18, v30);
  if (sub_21C73BDF0())
  {
    v31 = 1;
  }

  else
  {
    v31 = [objc_opt_self() shouldAllowAddingNewPasswords] ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = v48;
  (*(v44 + 32))(v48, v28, v45);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF290, &qword_21CBABF20);
  v36 = (v34 + *(result + 36));
  *v36 = KeyPath;
  v36[1] = sub_21C87E800;
  v36[2] = v33;
  return result;
}

uint64_t sub_21C73D1B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  v13(v9, v2);
  v18[0] = v10;
  v18[1] = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_21C73D398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C73D3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0D0, &qword_21CBABAB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0C0, &qword_21CBABAA8);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for PMAppCommands();
  if (*(a1 + *(v16 + 64)) == 1)
  {
    v17 = v16;
    v27 = v5;
    v28 = v4;
    v29 = a2;
    v26 = &v26;
    MEMORY[0x28223BE20](v16);
    *(&v26 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF0E0, &qword_21CBABAB8);
    sub_21C6EADEC(&qword_27CDEF0D8, &qword_27CDEF0E0, &qword_21CBABAB8);
    sub_21CB85054();
    v18 = *(a1 + *(v17 + 52) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v19 = v31;
    if (v31)
    {
    }

    KeyPath = swift_getKeyPath();
    v21 = swift_allocObject();
    *(v21 + 16) = v19 != 0;
    (*(v27 + 32))(v13, v8, v28);
    v22 = &v13[*(v9 + 36)];
    *v22 = KeyPath;
    v22[1] = sub_21C87E800;
    v22[2] = v21;
    sub_21C716934(v13, v15, &qword_27CDEF0C0, &qword_21CBABAA8);
    v23 = v29;
    sub_21C716934(v15, v29, &qword_27CDEF0C0, &qword_21CBABAA8);
    return (*(v30 + 56))(v23, 0, 1, v9);
  }

  else
  {
    v25 = *(v30 + 56);

    return v25(a2, 1, 1, v9);
  }
}

uint64_t sub_21C73D79C@<X0>(uint64_t a1@<X8>)
{
  v1 = *(type metadata accessor for PMAppCommands() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  sub_21CB821D4();
  if (v32 != 1)
  {
    j__swift_release();
    goto LABEL_8;
  }

  if (!v31)
  {
LABEL_8:
    v24 = 0;
    KeyPath = 0;
    v22 = 0;
    v23 = 0;
    v26 = 0;
    v20 = 0;
    v21 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  sub_21C6F0700(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v2 = *(v31 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v4 = sub_21C884770(v3);

  j__swift_release();
  if (*(v4 + 16))
  {
    KeyPath = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v5 = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    v26 = v4;
    sub_21CB86544();
    sub_21C704E4C(v5, v31);

    type metadata accessor for PMSecureWindowLockPolicyEnforcer();
    sub_21C6F0700(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer);
    v6 = sub_21CB82674();
    v22 = v7;
    v23 = v6;

    v8 = sub_21C89D7EC();
    v21 = swift_getKeyPath();
    v20 = swift_allocObject();
    *(v20 + 16) = v8 & 1;
    v9 = sub_21C87E800;
  }

  else
  {

    v24 = 0;
    KeyPath = 0;
    v22 = 0;
    v23 = 0;
    v26 = 0;
    v20 = 0;
    v21 = 0;
    v9 = 0;
  }

LABEL_9:
  v18 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704E4C(v10, v31);

  type metadata accessor for PMSecureWindowLockPolicyEnforcer();
  sub_21C6F0700(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer);
  v11 = sub_21CB82674();
  v13 = v12;

  *&v27 = KeyPath;
  *(&v27 + 1) = v24;
  *&v28 = v23;
  *(&v28 + 1) = v22;
  *&v29 = v26;
  *(&v29 + 1) = v21;
  *&v30 = v9;
  *(&v30 + 1) = v20;
  v14 = v28;
  *a1 = v27;
  *(a1 + 16) = v14;
  v15 = v30;
  *(a1 + 32) = v29;
  *(a1 + 48) = v15;
  *(a1 + 64) = v18;
  *(a1 + 72) = v17;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13;
  *(a1 + 96) = 0;
  sub_21C6EDBAC(&v27, &v31, &qword_27CDEF280, &qword_21CBABEA0);

  v31 = KeyPath;
  v32 = v24;
  v33 = v23;
  v34 = v22;
  v35 = v26;
  v36 = v21;
  v37 = v9;
  v38 = v20;
  return sub_21C6EA794(&v31, &qword_27CDEF280, &qword_21CBABEA0);
}

uint64_t sub_21C73DBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF200, &qword_21CBABCF8);
  v104 = *(v3 - 8);
  v105 = v3;
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v3);
  v103 = &v86 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF208, &qword_21CBABD00);
  v6 = *(*(v102 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v102);
  v107 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v101 = &v86 - v10;
  MEMORY[0x28223BE20](v9);
  v106 = &v86 - v11;
  v89 = sub_21CB81024();
  v88 = *(v89 - 8);
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF210, &qword_21CBABD08);
  v93 = *(v94 - 8);
  v14 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF218, &qword_21CBABD10);
  v96 = *(v16 - 8);
  v97 = v16;
  v17 = *(v96 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v90 = &v86 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF220, &qword_21CBABD18);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v100 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v99 = &v86 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF228, &qword_21CBABD20);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v86 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF230, &qword_21CBABD28);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v98 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v86 - v36;
  MEMORY[0x28223BE20](v35);
  v109 = &v86 - v38;
  v110 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF238, &qword_21CBABD30);
  sub_21C6EADEC(&qword_27CDEF240, &qword_27CDEF238, &qword_21CBABD30);
  sub_21CB85054();
  v39 = type metadata accessor for PMAppCommands();
  v40 = *(a1 + v39[13] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v95 = v40;
  sub_21CB81DB4();

  v41 = v111;
  if (v111)
  {
  }

  v42 = v41 != 0;
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  (*(v27 + 32))(v37, v30, v26);
  v45 = &v37[*(v31 + 36)];
  *v45 = KeyPath;
  v45[1] = sub_21C87E800;
  v45[2] = v44;
  sub_21C716934(v37, v109, &qword_27CDEF230, &qword_21CBABD28);
  v46 = *(a1 + v39[12] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v111 != 1)
  {
    v68 = 1;
    v69 = v103;
    v49 = v99;
LABEL_10:
    v64 = v97;
    goto LABEL_11;
  }

  v47 = *(a1 + v39[15] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v48 = *(v111 + 16);

  v49 = v99;
  if (!v48)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v50 = *(v111 + 16);

    if (!v50)
    {
      v68 = 1;
      v69 = v103;
      goto LABEL_10;
    }
  }

  v51 = v87;
  sub_21CB81014();
  v52 = sub_21CB81004();
  v54 = v53;
  (*(v88 + 8))(v51, v89);
  v111 = v52;
  v112 = v54;
  sub_21C71F3FC();
  v111 = sub_21CB84054();
  v112 = v55;
  v113 = v56 & 1;
  v114 = v57;
  MEMORY[0x28223BE20](v111);
  *(&v86 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF250, &qword_21CBABD88);
  sub_21C6EADEC(&qword_27CDEF258, &qword_27CDEF250, &qword_21CBABD88);
  v58 = v92;
  sub_21CB85034();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v59 = v111;
  if (v111)
  {
  }

  v60 = v59 != 0;
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  *(v62 + 16) = v60;
  v63 = v91;
  (*(v93 + 32))(v91, v58, v94);
  v64 = v97;
  v65 = &v63[*(v97 + 36)];
  *v65 = v61;
  v65[1] = sub_21C87E800;
  v65[2] = v62;
  v66 = v63;
  v67 = v90;
  sub_21C716934(v66, v90, &qword_27CDEF218, &qword_21CBABD10);
  sub_21C716934(v67, v49, &qword_27CDEF218, &qword_21CBABD10);
  v68 = 0;
  v69 = v103;
LABEL_11:
  v70 = (*(v96 + 56))(v49, v68, 1, v64);
  MEMORY[0x28223BE20](v70);
  *(&v86 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  sub_21C735EA0();
  sub_21CB85054();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v71 = v111;
  if (v111)
  {
  }

  v72 = v71 != 0;
  v73 = swift_getKeyPath();
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  v75 = v101;
  (*(v104 + 32))(v101, v69, v105);
  v76 = (v75 + *(v102 + 36));
  *v76 = v73;
  v76[1] = sub_21C87E800;
  v76[2] = v74;
  v77 = v106;
  sub_21C716934(v75, v106, &qword_27CDEF208, &qword_21CBABD00);
  v78 = v109;
  v79 = v98;
  sub_21C6EDBAC(v109, v98, &qword_27CDEF230, &qword_21CBABD28);
  v80 = v100;
  sub_21C6EDBAC(v49, v100, &qword_27CDEF220, &qword_21CBABD18);
  v81 = v49;
  v82 = v107;
  sub_21C6EDBAC(v77, v107, &qword_27CDEF208, &qword_21CBABD00);
  v83 = v108;
  sub_21C6EDBAC(v79, v108, &qword_27CDEF230, &qword_21CBABD28);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF248, &qword_21CBABD38);
  sub_21C6EDBAC(v80, v83 + *(v84 + 48), &qword_27CDEF220, &qword_21CBABD18);
  sub_21C6EDBAC(v82, v83 + *(v84 + 64), &qword_27CDEF208, &qword_21CBABD00);
  sub_21C6EA794(v77, &qword_27CDEF208, &qword_21CBABD00);
  sub_21C6EA794(v81, &qword_27CDEF220, &qword_21CBABD18);
  sub_21C6EA794(v78, &qword_27CDEF230, &qword_21CBABD28);
  sub_21C6EA794(v82, &qword_27CDEF208, &qword_21CBABD00);
  sub_21C6EA794(v80, &qword_27CDEF220, &qword_21CBABD18);
  return sub_21C6EA794(v79, &qword_27CDEF230, &qword_21CBABD28);
}

uint64_t sub_21C73E8F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v151 = a1;
  v150 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v145 = *(v146 - 8);
  v2 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v144 = &v143 - v3;
  v4 = sub_21CB82444();
  v5 = *(v4 - 8);
  v179 = v4;
  v180 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v165 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAppCommands();
  v175 = *(v8 - 8);
  v9 = *(v175 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v177 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v143 - v16;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v18 = *(*(v178 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v178);
  v143 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v143 - v21;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C0, &qword_21CBABC88);
  v149 = *(v147 - 8);
  v23 = *(v149 + 64);
  v24 = MEMORY[0x28223BE20](v147);
  v148 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v162 = &v143 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v161 = &v143 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v160 = &v143 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v159 = &v143 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v158 = &v143 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v157 = &v143 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v156 = &v143 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v166 = &v143 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v164 = &v143 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v163 = &v143 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v143 - v46;
  sub_21CB81014();
  sub_21CB81014();
  v48 = sub_21CB80FF4();
  v50 = v49;
  v51 = *(v11 + 8);
  v168 = v51;
  v167 = v11 + 8;
  v176 = v10;
  v51(v15, v10);
  v51(v17, v10);
  v153 = type metadata accessor for PMAppCommands;
  v52 = v151;
  v53 = v177;
  sub_21C73A7B0(v151, v177, type metadata accessor for PMAppCommands);
  v170 = *(v175 + 80);
  v54 = (v170 + 16) & ~v170;
  v169 = v54 + v9;
  v174 = v54;
  v55 = swift_allocObject();
  v152 = type metadata accessor for PMAppCommands;
  sub_21C73A8E8(v53, v55 + v54, type metadata accessor for PMAppCommands);
  v190 = v48;
  v191 = v50;
  v187 = &v190;
  v188 = 7955819;
  v189 = 0xE300000000000000;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v173 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();

  v56 = v52;
  LOBYTE(v9) = sub_21C73BDF0();
  KeyPath = swift_getKeyPath();
  v58 = swift_allocObject();
  *(v58 + 16) = v9 & 1;
  v59 = &v22[*(v178 + 36)];
  *v59 = KeyPath;
  v59[1] = sub_21C87E800;
  v59[2] = v58;
  v60 = v165;
  sub_21CB82424();
  sub_21CB82574();
  v172 = sub_21C735EA0();
  v155 = v47;
  v61 = v22;
  sub_21CB84324();
  v62 = *(v180 + 8);
  v180 += 8;
  v171 = v62;
  v63 = v179;
  v62(v60, v179);
  sub_21C6EA794(v22, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v64 = v15;
  v154 = v15;
  sub_21CB81014();
  v65 = sub_21CB80FF4();
  v67 = v66;
  v68 = v176;
  v69 = v168;
  v168(v64, v176);
  v69(v17, v68);
  v70 = v177;
  sub_21C73A7B0(v56, v177, v153);
  v71 = swift_allocObject() + v174;
  v72 = v70;
  v73 = v17;
  sub_21C73A8E8(v72, v71, v152);
  v190 = v65;
  v191 = v67;
  v184 = &v190;
  v185 = 0xD000000000000010;
  v186 = 0x800000021CB91E10;
  sub_21CB84DA4();

  LOBYTE(v64) = sub_21C73BDF0();
  v74 = swift_getKeyPath();
  v75 = swift_allocObject();
  *(v75 + 16) = v64 & 1;
  v76 = v178;
  v77 = (v61 + *(v178 + 36));
  *v77 = v74;
  v77[1] = sub_21C87E800;
  v77[2] = v75;
  v78 = v165;
  sub_21CB82424();
  sub_21CB82574();
  sub_21CB84324();
  v171(v78, v63);
  sub_21C6EA794(v61, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v79 = v154;
  sub_21CB81014();
  v80 = sub_21CB80FF4();
  v82 = v81;
  v83 = v79;
  v84 = v176;
  v69(v83, v176);
  v69(v73, v84);
  v85 = v151;
  v86 = v177;
  sub_21C73A7B0(v151, v177, v153);
  v87 = swift_allocObject();
  sub_21C73A8E8(v86, v87 + v174, v152);
  v190 = v80;
  v191 = v82;
  v181 = &v190;
  v182 = 0xD000000000000010;
  v183 = 0x800000021CB91E50;
  sub_21CB84DA4();

  LOBYTE(v82) = sub_21C73BDF0();
  v88 = swift_getKeyPath();
  v89 = swift_allocObject();
  *(v89 + 16) = v82 & 1;
  v90 = (v61 + *(v76 + 36));
  *v90 = v88;
  v90[1] = sub_21C87E800;
  v90[2] = v89;
  sub_21CB82424();
  sub_21CB82574();
  sub_21CB84324();
  v171(v78, v179);
  sub_21C6EA794(v61, &qword_27CDEEBA0, &qword_21CBABC80);
  MGGetBoolAnswer();
  sub_21CB81014();
  v91 = sub_21CB81004();
  v93 = v92;
  v168(v73, v176);
  v153 = type metadata accessor for PMAppCommands;
  v94 = v177;
  sub_21C73A7B0(v85, v177, type metadata accessor for PMAppCommands);
  v95 = swift_allocObject();
  v152 = type metadata accessor for PMAppCommands;
  v96 = sub_21C73A8E8(v94, v95 + v174, type metadata accessor for PMAppCommands);
  v190 = v91;
  v191 = v93;
  MEMORY[0x28223BE20](v96);
  *(&v143 - 4) = &v190;
  *(&v143 - 3) = 1768319351;
  *(&v143 - 2) = 0xE400000000000000;
  v97 = v144;
  sub_21CB84DA4();

  v98 = v85;
  LOBYTE(v82) = sub_21C73BDF0();
  v99 = swift_getKeyPath();
  v100 = swift_allocObject();
  *(v100 + 16) = v82 & 1;
  v101 = v143;
  (*(v145 + 32))(v143, v97, v146);
  v102 = (v101 + *(v178 + 36));
  *v102 = v99;
  v102[1] = sub_21C87E800;
  v102[2] = v100;
  v103 = v165;
  sub_21CB82424();
  sub_21CB82574();
  sub_21CB84324();
  v171(v103, v179);
  sub_21C6EA794(v101, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  v104 = v154;
  sub_21CB81014();
  v105 = sub_21CB80FF4();
  v107 = v106;
  v108 = v176;
  v109 = v168;
  v168(v104, v176);
  v109(v73, v108);
  v110 = v177;
  sub_21C73A7B0(v98, v177, v153);
  v111 = swift_allocObject();
  v112 = sub_21C73A8E8(v110, v111 + v174, v152);
  v190 = v105;
  v191 = v107;
  MEMORY[0x28223BE20](v112);
  *(&v143 - 4) = &v190;
  *(&v143 - 3) = 0x74616D616C637865;
  *(&v143 - 2) = 0xEF6B72616D6E6F69;
  sub_21CB84DA4();

  v113 = v98;
  LOBYTE(v107) = sub_21C73BDF0();
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  *(v115 + 16) = v107 & 1;
  v116 = (v61 + *(v178 + 36));
  *v116 = v114;
  v116[1] = sub_21C87E800;
  v116[2] = v115;
  sub_21CB82424();
  sub_21CB82574();
  sub_21CB84324();
  v171(v103, v179);
  sub_21C6EA794(v61, &qword_27CDEEBA0, &qword_21CBABC80);
  sub_21CB81014();
  sub_21CB81014();
  v117 = sub_21CB80FF4();
  v119 = v118;
  v120 = v104;
  v121 = v176;
  v122 = v168;
  v168(v120, v176);
  v122(v73, v121);
  sub_21C73A7B0(v113, v110, v153);
  v123 = swift_allocObject();
  v124 = sub_21C73A8E8(v110, v123 + v174, v152);
  v190 = v117;
  v191 = v119;
  MEMORY[0x28223BE20](v124);
  *(&v143 - 4) = &v190;
  *(&v143 - 3) = 0x6873617274;
  *(&v143 - 2) = 0xE500000000000000;
  sub_21CB84DA4();

  LOBYTE(v122) = sub_21C73BDF0();
  v125 = swift_getKeyPath();
  v126 = swift_allocObject();
  *(v126 + 16) = v122 & 1;
  v127 = (v61 + *(v178 + 36));
  *v127 = v125;
  v127[1] = sub_21C87E800;
  v127[2] = v126;
  sub_21CB82424();
  sub_21CB82574();
  v128 = v157;
  sub_21CB84324();
  v171(v103, v179);
  sub_21C6EA794(v61, &qword_27CDEEBA0, &qword_21CBABC80);
  v129 = v149;
  v130 = *(v149 + 16);
  v131 = v158;
  v132 = v147;
  v130(v158, v155, v147);
  v133 = v159;
  v130(v159, v163, v132);
  v130(v160, v164, v132);
  v134 = v161;
  v130(v161, v166, v132);
  v135 = v156;
  v130(v162, v156, v132);
  v136 = v148;
  v130(v148, v128, v132);
  v137 = v150;
  v130(v150, v131, v132);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF278, &qword_21CBABE70);
  v130(&v137[v138[12]], v133, v132);
  v139 = v160;
  v130(&v137[v138[16]], v160, v132);
  v130(&v137[v138[20]], v134, v132);
  v140 = v162;
  v130(&v137[v138[24]], v162, v132);
  v130(&v137[v138[28]], v136, v132);
  v141 = *(v129 + 8);
  v141(v157, v132);
  v141(v135, v132);
  v141(v166, v132);
  v141(v164, v132);
  v141(v163, v132);
  v141(v155, v132);
  v141(v136, v132);
  v141(v140, v132);
  v141(v161, v132);
  v141(v139, v132);
  v141(v159, v132);
  return (v141)(v158, v132);
}

uint64_t sub_21C740020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v37 = a2;
  v2 = type metadata accessor for PMAppCommands();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  sub_21CB81014();
  sub_21CB81014();
  v17 = sub_21CB80FF4();
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v10, v5);
  v20(v12, v5);
  v21 = v34;
  sub_21C73A7B0(v34, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v22 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v23 = swift_allocObject();
  sub_21C73A8E8(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PMAppCommands);
  v41[0] = v17;
  v41[1] = v19;
  v38 = v41;
  v39 = 0xD000000000000012;
  v40 = 0x800000021CB90140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();

  if (sub_21C73BDF0())
  {
    v24 = 1;
  }

  else
  {
    v25 = *(v21 + *(v32 + 56) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v26 = *(v41[0] + 16);

    v24 = v26 == 0;
  }

  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  v29 = v37;
  (*(v35 + 32))(v37, v16, v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v31 = (v29 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = sub_21C87E800;
  v31[2] = v28;
  return result;
}

uint64_t sub_21C7404C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1E8, &qword_21CBABCA0);
  v3 = *(*(v37 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v37);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1F0, &qword_21CBABCA8);
  v11 = *(v38 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v38);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C844588();
  v21 = v20;
  sub_21CB85054();
  v41 = a1;
  sub_21CB85054();
  v22 = *(a1 + *(type metadata accessor for PMAppCommands() + 52) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v23 = v43;
  if (v43)
  {
  }

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v23 != 0;
  v26 = v11;
  v27 = *(v11 + 32);
  v28 = v38;
  v27(v8, v18, v38);
  v29 = &v8[*(v37 + 36)];
  *v29 = KeyPath;
  v29[1] = sub_21C87E800;
  v29[2] = v25;
  sub_21C716934(v8, v10, &qword_27CDEF1E8, &qword_21CBABCA0);
  v30 = *(v26 + 16);
  v30(v15, v20, v28);
  v31 = v40;
  sub_21C6EDBAC(v10, v40, &qword_27CDEF1E8, &qword_21CBABCA0);
  v32 = v10;
  v33 = v39;
  v30(v39, v15, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1F8, &qword_21CBABCC0);
  sub_21C6EDBAC(v31, &v33[*(v34 + 48)], &qword_27CDEF1E8, &qword_21CBABCA0);
  sub_21C6EA794(v32, &qword_27CDEF1E8, &qword_21CBABCA0);
  v35 = *(v26 + 8);
  v35(v21, v28);
  sub_21C6EA794(v31, &qword_27CDEF1E8, &qword_21CBABCA0);
  return (v35)(v15, v28);
}

uint64_t sub_21C7408D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v2 = type metadata accessor for PMAppCommands();
  v3 = v2 - 8;
  v27 = *(v2 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v27 - v12;
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v31 = v14;
  v32 = v16;
  v17 = v28;
  sub_21C73A7B0(v28, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  sub_21C73A8E8(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PMAppCommands);
  sub_21C71F3FC();
  sub_21CB84DE4();
  v20 = *(v17 + *(v3 + 60) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v21 = v31;
  if (v31)
  {
  }

  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21 != 0;
  v24 = v30;
  (*(v10 + 32))(v30, v13, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v26 = (v24 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = sub_21C87E800;
  v26[2] = v23;
  return result;
}

uint64_t sub_21C740C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for PMAppCommands();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  sub_21CB81014();
  sub_21CB81014();
  v13 = sub_21CB80FF4();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  v16(v12, v5);
  v26 = v13;
  v27 = v15;
  sub_21C73A7B0(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppCommands);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = swift_allocObject();
  sub_21C73A8E8(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMAppCommands);
  sub_21C71F3FC();
  v19 = v25;
  sub_21CB84DE4();
  LOBYTE(a1) = sub_21C73BDF0();
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = a1 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v23 = (v19 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_21C87E800;
  v23[2] = v21;
  return result;
}

uint64_t type metadata accessor for PMMultipleWiFiDetailsModel()
{
  result = qword_27CDF8458;
  if (!qword_27CDF8458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C740FD0()
{
  result = sub_21CB81114();
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

uint64_t objectdestroy_53Tm()
{
  v1 = (type metadata accessor for PMGroupInvitationDetails() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_21CB85C44();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(v0 + v3 + v8[5] + 8);

  v10 = *(v0 + v3 + v8[6]);

  v11 = *(v0 + v3 + v8[7] + 8);

  v12 = *(v0 + v3 + v1[8] + 8);

  v13 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21CB823B4();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_21C74123C()
{
  result = qword_27CDF5488;
  if (!qword_27CDF5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5488);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for PMSearchable();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  if (*(v0 + v3 + 40))
  {
    v9 = *(v5 + 4);

    v10 = *(v5 + 5);
  }

  if (*(v5 + 8))
  {
    v11 = *(v5 + 7);

    v12 = *(v5 + 8);
  }

  v13 = *(v5 + 11);

  v14 = *(v5 + 13);

  v15 = *(v5 + 15);

  v16 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB83834();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(&v5[v16], 1, v17))
    {
      (*(v18 + 8))(&v5[v16], v17);
    }
  }

  else
  {
    v19 = *&v5[v16];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  if (*(v0 + 56))
  {
    v4 = *(v0 + 64);
  }

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21C741520@<X0>(_BYTE *a1@<X8>)
{
  sub_21C741570();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

unint64_t sub_21C741570()
{
  result = qword_27CDF3868;
  if (!qword_27CDF3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3868);
  }

  return result;
}

uint64_t sub_21C7415C4(char *a1)
{
  v2 = *a1;
  sub_21C741570();
  return sub_21CB82FA4();
}

uint64_t sub_21C741620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14[-v4 - 8];
  v6 = sub_21CB858E4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21CB858B4();
  sub_21C7380DC(a1, v14);
  v7 = sub_21CB858A4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v10;
  *(v8 + 96) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v11;
  sub_21C98B308(0, 0, v5, &unk_21CBBDF80, v8);
}

uint64_t sub_21C74176C(uint64_t a1)
{
  v2 = sub_21CB81FE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = type metadata accessor for PMAppRootView();
  v11 = *(a1 + *(v10 + 32));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v12 = sub_21C741948(v11, v16[1]);

  if (v12)
  {
    v14 = a1 + *(v10 + 28);
    sub_21C7260B0(v9);
    (*(v3 + 104))(v7, *MEMORY[0x277CDD6B8], v2);
    LOBYTE(v14) = sub_21CB81FD4();
    v15 = *(v3 + 8);
    v15(v7, v2);
    v15(v9, v2);
    if (v14)
    {
      [*(v12 + 16) applicationDidForeground];
    }
  }

  return result;
}

uint64_t sub_21C74195C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!*(a2 + 16) || (v7 = sub_21CB10910(a1), (v8 & 1) == 0) || (sub_21C7A3394(*(a2 + 56) + 32 * v7, v10), __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4), (swift_dynamicCast() & 1) == 0) || (result = v11, v11 == 1))
  {
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v11 = qword_27CE184E8;

    swift_getAtKeyPath();

    return v10[0];
  }

  return result;
}

uint64_t sub_21C741A58(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppRootNavigationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C741AE4(uint64_t a1)
{
  v2 = sub_21CB83834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v34 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v31[-v18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  sub_21CB85084();
  v35 = v36;
  v20 = a1 + *(type metadata accessor for PMAppRootNavigationView() + 24);
  sub_21C728D50(v19);
  (*(v3 + 104))(v17, *MEMORY[0x277CE0558], v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v21 = *(v7 + 56);
  sub_21C6EDBAC(v19, v10, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v17, &v10[v21], &qword_27CDEC390, &qword_21CBA40E0);
  v22 = *(v3 + 48);
  if (v22(v10, 1, v2) == 1)
  {
    sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    if (v22(&v10[v21], 1, v2) == 1)
    {
      sub_21C6EA794(v10, &qword_27CDEC390, &qword_21CBA40E0);
      v23 = v35;
      v24 = (v35 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact);
      v25 = 1;
      if (*(v35 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact))
      {
        goto LABEL_10;
      }

LABEL_8:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v31[-16] = v23;
      v31[-8] = v25 & 1;
      v36 = v23;
      sub_21C71B768(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
      sub_21CB810C4();
    }
  }

  else
  {
    sub_21C6EDBAC(v10, v34, &qword_27CDEC390, &qword_21CBA40E0);
    if (v22(&v10[v21], 1, v2) != 1)
    {
      v28 = v33;
      (*(v3 + 32))(v33, &v10[v21], v2);
      sub_21C71B768(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v29 = v34;
      v25 = sub_21CB85574();
      v32 = v25 & 1;
      v30 = *(v3 + 8);
      v30(v28, v2);
      sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
      v30(v29, v2);
      sub_21C6EA794(v10, &qword_27CDEC390, &qword_21CBA40E0);
      v23 = v35;
      v24 = (v35 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact);
      if (v32 != *(v35 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact))
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v3 + 8))(v34, v2);
  }

  sub_21C6EA794(v10, &qword_27CDEE530, &unk_21CBA9D80);
  v25 = 0;
  v23 = v35;
  v24 = (v35 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact);
  if (*(v35 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact))
  {
    goto LABEL_8;
  }

LABEL_10:
  *v24 = v25 & 1;
}

uint64_t sub_21C7420A8(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 48);
    v9 = *(result + 32);
    v10 = v1;
    v11 = v2 & 1;
    v3 = result;

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    MEMORY[0x21CF14A20](&v8, v4);
    v5 = *(v3 + 112);
    v6 = *(v3 + 120);
    v7 = *(v3 + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
    sub_21CB81F64();
  }

  return result;
}

uint64_t sub_21C7421E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppSourceList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C742274(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v7 = a1 + *(type metadata accessor for PMAppSourceList() + 36);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9 == 1)
  {
    v10 = *v7;
  }

  else
  {
    v11 = *v7;

    sub_21CB85B04();
    v12 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v8, 0);
    (*(v3 + 8))(v6, v2);
    LOBYTE(v10) = v18;
  }

  sub_21C74256C(v10 & 1);

  if (!v9)
  {

    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v8, 0);
    result = (*(v3 + 8))(v6, v2);
    if (v18 != 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v8)
  {
LABEL_8:
    sub_21CB85084();
    v15 = v18;
    swift_getKeyPath();
    v18 = v15;
    sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810D4();

    v16 = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

    sub_21C87FF18(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_21C74256C(int a1)
{
  v3 = *(v1 + 17);
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
  }

  if (a1 == 2 || ((v3 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 17) = a1;

  return sub_21C742704(v3);
}

uint64_t sub_21C7426C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 17);
  *(v1 + 17) = *(v0 + 24);
  return sub_21C742704(v2);
}

uint64_t sub_21C742704(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v44 = type metadata accessor for PMAppSourceListModel.Source(0);
  v4 = *(v44 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v44);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel___observationRegistrar;
  v46 = v2;
  v42 = sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  v43 = v23;
  sub_21CB810D4();

  if (v3 != 2 || *(v2 + 17) == 2)
  {
    return result;
  }

  v38 = v17;
  swift_getKeyPath();
  v46 = v2;
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  v26 = v44;
  v39 = v4[7];
  v39(v22, 1, 1, v44);
  v27 = *(v7 + 48);
  sub_21C742C18(v2 + v25, v10);
  sub_21C742C18(v22, &v10[v27]);
  v28 = v4[6];
  if (v28(v10, 1, v26) != 1)
  {
    sub_21C742C18(v10, v20);
    if (v28(&v10[v27], 1, v26) != 1)
    {
      v29 = &v10[v27];
      v30 = v41;
      sub_21C919658(v29, v41);
      v31 = sub_21C918FE4(v20, v30);
      sub_21C919E5C(v30, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C919E5C(v20, type metadata accessor for PMAppSourceListModel.Source);
      result = sub_21C6EA794(v10, &qword_27CDEAC20, &qword_21CBAD710);
      if ((v31 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C919E5C(v20, type metadata accessor for PMAppSourceListModel.Source);
    return sub_21C6EA794(v10, &unk_27CDED310, &unk_21CBA0150);
  }

  sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
  if (v28(&v10[v27], 1, v26) != 1)
  {
    return sub_21C6EA794(v10, &unk_27CDED310, &unk_21CBA0150);
  }

  sub_21C6EA794(v10, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
  swift_getKeyPath();
  v45 = v2;
  sub_21CB810D4();

  v32 = *(v2 + 17);
  if (v32 == 2)
  {
    v33 = v40;
    v34 = v44;
    swift_storeEnumTagMultiPayload();
    v35 = v33;
    v36 = 0;
  }

  else
  {
    v34 = v44;
    if (v32)
    {
      v33 = v38;
      swift_storeEnumTagMultiPayload();
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v33 = v38;
    }

    v35 = v33;
  }

  v39(v35, v36, 1, v34);
  return sub_21C742C88(v33);
}

uint64_t sub_21C742C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C742C88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C742C18(v1 + v10, v9);
  v11 = sub_21C742EE8(v9, a1);
  sub_21C6EA794(v9, &qword_27CDEAC20, &qword_21CBAD710);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14[-2] = v1;
    v14[-1] = a1;
    v14[2] = v1;
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
  }

  else
  {
    sub_21C742C18(a1, v9);
    sub_21C742C18(v1 + v10, v7);
    swift_beginAccess();
    sub_21C743188(v9, v1 + v10);
    swift_endAccess();
    sub_21C7431F8(v7);
    sub_21C6EA794(v7, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EA794(v9, &qword_27CDEAC20, &qword_21CBAD710);
  }

  return sub_21C6EA794(a1, &qword_27CDEAC20, &qword_21CBAD710);
}

uint64_t sub_21C742EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_21C742C18(a1, &v23 - v16);
  sub_21C742C18(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_21C742C18(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_21C919658(&v17[v18], v8);
      v21 = sub_21C918FE4(v12, v8);
      sub_21C919E5C(v8, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C919E5C(v12, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v17, &qword_27CDEAC20, &qword_21CBAD710);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    sub_21C919E5C(v12, type metadata accessor for PMAppSourceListModel.Source);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v17, &unk_27CDED310, &unk_21CBA0150);
    v20 = 1;
    return v20 & 1;
  }

  sub_21C6EA794(v17, &qword_27CDEAC20, &qword_21CBAD710);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21C743188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7431F8(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for PMAppSourceListModel.Action(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppSourceListModel.Source(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v32 - v18;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel___observationRegistrar;
  v36 = v2;
  v32[0] = sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  v32[1] = v20;
  sub_21CB810D4();

  v21 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  v22 = *(v16 + 56);
  v23 = v34;
  sub_21C742C18(v34, v19);
  sub_21C742C18(v2 + v21, &v19[v22]);
  v24 = *(v7 + 48);
  if (v24(v19, 1, v6) == 1)
  {
    if (v24(&v19[v22], 1, v6) == 1)
    {
      return sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
    }

    goto LABEL_6;
  }

  sub_21C742C18(v19, v14);
  if (v24(&v19[v22], 1, v6) == 1)
  {
    sub_21C919E5C(v14, type metadata accessor for PMAppSourceListModel.Source);
LABEL_6:
    sub_21C6EA794(v19, &unk_27CDED310, &unk_21CBA0150);
LABEL_7:
    v26 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction);
    v27 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction + 8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
    v29 = *(v28 + 48);
    v30 = v33;
    sub_21C742C18(v23, v33);
    swift_getKeyPath();
    v35 = v2;

    sub_21CB810D4();

    sub_21C742C18(v2 + v21, v30 + v29);
    (*(*(v28 - 8) + 56))(v30, 0, 1, v28);
    v26(v30);

    return sub_21C919E5C(v30, type metadata accessor for PMAppSourceListModel.Action);
  }

  sub_21C919658(&v19[v22], v10);
  v31 = sub_21C918FE4(v14, v10);
  sub_21C919E5C(v10, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C919E5C(v14, type metadata accessor for PMAppSourceListModel.Source);
  result = sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
  if ((v31 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21C743660()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_21C7335A8(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v6 == 0;
  v10 = &v4[*(v1 + 36)];
  *v10 = KeyPath;
  v10[1] = sub_21C735744;
  v10[2] = v9;
  sub_21C735EA0();
  sub_21CB845C4();
  return sub_21C735DAC(v4);
}

uint64_t sub_21C74382C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C743884()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v5, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C743A2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C743AAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PMGridContent.Root();
  swift_getWitnessTable();
  sub_21CB82504();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C743BDC(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  sub_21CB828F4();
  sub_21CB83B74();
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B78, &qword_21CBCC880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B80, &qword_21CBCC888);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B88, &qword_21CBCC890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B90, &qword_21CBCC898);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B98, &qword_21CBCC8A0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9BA0, &unk_21CBCC8A8);
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDF9BA8, &qword_27CDF9B98, &qword_21CBCC8A0);
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDF9BB0, &qword_27CDF9BA0, &unk_21CBCC8A8);
  swift_getWitnessTable();
  sub_21CB84DF4();
  swift_getWitnessTable();
  sub_21C744100();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  swift_getOpaqueTypeConformance2();
  sub_21C74422C(&qword_27CDEB908, MEMORY[0x277CDE470]);
  return swift_getWitnessTable();
}

unint64_t sub_21C744100()
{
  result = qword_27CDF9BB8;
  if (!qword_27CDF9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9BB8);
  }

  return result;
}

uint64_t sub_21C744154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C74419C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7441E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C74422C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C744290@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21C749E44(a1);
}

unint64_t sub_21C744298()
{
  result = qword_27CDF8210;
  if (!qword_27CDF8210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8208, &qword_21CBCC220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8210);
  }

  return result;
}

uint64_t sub_21C744334()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECFE0, &qword_21CBA5EA8);
  sub_21C744404();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21C7443AC()
{
  result = qword_27CDED030;
  if (!qword_27CDED030)
  {
    sub_21CB853A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED030);
  }

  return result;
}

unint64_t sub_21C744404()
{
  result = qword_27CDED000;
  if (!qword_27CDED000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECFE0, &qword_21CBA5EA8);
    sub_21C6EADEC(&qword_27CDED008, &qword_27CDECFF0, &qword_21CBA5F08);
    sub_21C6EADEC(&qword_27CDED010, &qword_27CDED018, &qword_21CBA5FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED000);
  }

  return result;
}

uint64_t sub_21C744594@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PMSourceGrid();
  v5 = v4 - 8;
  v21 = *(v4 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_21CB82834();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85214();
  v14 = v13;
  v15 = v2 + *(v5 + 40);
  sub_21C7448E0(v11);
  LOBYTE(v15) = sub_21CB82824();
  (*(v8 + 8))(v11, v7);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  sub_21C744908(v2, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSourceGrid);
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  result = sub_21C744970(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMSourceGrid);
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = 0x4020000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4020000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = v16;
  *(a1 + 56) = sub_21C744D3C;
  *(a1 + 64) = v18;
  return result;
}

uint64_t sub_21C7447AC()
{
  v1 = (type metadata accessor for PMSourceGrid() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82834();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C744908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C744970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7449EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a3;
  v21[1] = a6;
  type metadata accessor for PMGridContent.Root();
  swift_getWitnessTable();
  v10 = sub_21CB82504();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[11] = a1;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a1;
  v21[7] = a2;
  v21[8] = v21[0];
  sub_21CB82514();
  v21[9] = swift_getWitnessTable();
  v21[10] = a5;
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v15, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v15, v10);
  sub_21C72BE10(v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t sub_21C744BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18 - v13;
  v15(v12);
  sub_21C72BE10(v11, a4, a5);
  v16 = *(v7 + 8);
  v16(v11, a4);
  sub_21C72BE10(v14, a4, a5);
  return (v16)(v14, a4);
}

uint64_t sub_21C744D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMSourceGrid() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C744DAC(v4, a1);
}

uint64_t sub_21C744DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v121 = type metadata accessor for PMAppSourceListModel.Source(0);
  v3 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v5 = &v102[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = sub_21CB84A44();
  v125 = *(v118 - 8);
  v6 = *(v125 + 64);
  MEMORY[0x28223BE20](v118);
  v120 = &v102[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v102[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v102[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8208, &qword_21CBCC220);
  v17 = *(v16 - 8);
  v122 = v16 - 8;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8);
  v124 = &v102[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v123 = &v102[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v102[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v102[-v26];
  sub_21CB81014();
  sub_21CB81014();
  v28 = sub_21CB80FF4();
  v109 = v29;
  v110 = v28;
  v30 = *(v9 + 8);
  v114 = (v9 + 8);
  v115 = v30;
  v113 = v8;
  v30(v13, v8);
  v30(v15, v8);
  v31 = *(a1 + 16);
  v111 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v108 = v31;
  sub_21CB81DB4();

  v32 = *(v127 + 16);

  LODWORD(v117) = *MEMORY[0x277CE0EE8];
  v33 = *(v125 + 104);
  v125 += 104;
  v119 = v33;
  v33(v120);
  v34 = sub_21CB84B44();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v31) = v127;
  swift_storeEnumTagMultiPayload();
  v35 = sub_21C745C40(v5);
  v37 = v36;
  LOBYTE(v8) = v38;
  sub_21C7463DC(v5);
  v39 = swift_allocObject();
  *(v39 + 16) = 0x6C6C69662E79656BLL;
  *(v39 + 24) = 0xE800000000000000;
  v40 = v109;
  *v27 = v110;
  *(v27 + 1) = v40;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v32;
  v27[40] = 0;
  *(v27 + 6) = v34;
  v27[56] = (v31 & 1) == 0;
  v27[57] = 0;
  *(v27 + 8) = v35;
  *(v27 + 9) = v37;
  v27[80] = v8 & 1;
  *(v27 + 11) = sub_21C744290;
  *(v27 + 12) = v39;
  v126 = 0;
  sub_21CB84D44();
  v41 = v128;
  v27[104] = v127;
  *(v27 + 14) = v41;
  v42 = v122;
  v43 = *(v122 + 76);
  *&v27[v43] = swift_getKeyPath();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v44 = &v27[*(v42 + 80)];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = *(v42 + 84);
  *&v27[v45] = swift_getKeyPath();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFF8, &qword_21CBCC350);
  swift_storeEnumTagMultiPayload();
  sub_21CB81014();
  v46 = v112;
  sub_21CB81014();
  v107 = sub_21CB80FF4();
  v106 = v47;
  v48 = v46;
  v49 = v113;
  v50 = v115;
  (v115)(v48, v113);
  v50(v15, v49);
  v115 = 0x800000021CB96F60;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v114 = *(v127 + 16);

  v119(v120, v117, v118);
  v51 = sub_21CB84B44();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v37) = v127;
  swift_storeEnumTagMultiPayload();
  v52 = sub_21C745C40(v5);
  v54 = v53;
  LOBYTE(v8) = v55;
  sub_21C7463DC(v5);
  v56 = swift_allocObject();
  v57 = v115;
  *(v56 + 16) = 0xD000000000000015;
  *(v56 + 24) = v57;
  v58 = v106;
  *v25 = v107;
  *(v25 + 1) = v58;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v114;
  v25[40] = 0;
  *(v25 + 6) = v51;
  v25[56] = (v37 & 1) == 0;
  v25[57] = 0;
  *(v25 + 8) = v52;
  *(v25 + 9) = v54;
  v25[80] = v8 & 1;
  *(v25 + 11) = sub_21C74B520;
  *(v25 + 12) = v56;
  v126 = 0;
  sub_21CB84D44();
  v59 = v128;
  v25[104] = v127;
  *(v25 + 14) = v59;
  v60 = v122;
  v61 = *(v122 + 76);
  *&v25[v61] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v62 = &v25[*(v60 + 80)];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = *(v60 + 84);
  *&v25[v63] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v125 = sub_21C745C40(v5);
  v122 = v64;
  LODWORD(v115) = v65;
  sub_21C7463DC(v5);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v127);

  v117 = type metadata accessor for PMAccountsState();
  sub_21C7062A0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v67 = sub_21CB82674();
  v113 = v68;
  v114 = v67;

  swift_storeEnumTagMultiPayload();
  v120 = sub_21C745C40(v5);
  v112 = v69;
  LODWORD(v110) = v70;
  sub_21C7463DC(v5);
  v71 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C746438(v71, v127);

  type metadata accessor for PMWiFiNetworksStore();
  sub_21C7062A0(&qword_27CDF98E8, type metadata accessor for PMWiFiNetworksStore);
  v72 = sub_21CB82674();
  v108 = v73;
  v109 = v72;

  swift_storeEnumTagMultiPayload();
  v106 = sub_21C745C40(v5);
  v107 = v74;
  v103 = v75;
  sub_21C7463DC(v5);
  v76 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7072A8(v76, v127);

  v105 = sub_21CB82674();
  v104 = v77;

  v78 = [objc_opt_self() pm_defaults];
  v119 = sub_21CB81E74();
  swift_storeEnumTagMultiPayload();
  v121 = sub_21C745C40(v5);
  v118 = v79;
  v81 = v80;
  sub_21C7463DC(v5);
  v82 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7072A8(v82, v127);

  v111 = sub_21CB82674();
  v117 = v83;

  v84 = v123;
  sub_21C6EDBAC(v27, v123, &qword_27CDF8208, &qword_21CBCC220);
  v85 = v124;
  sub_21C6EDBAC(v25, v124, &qword_27CDF8208, &qword_21CBCC220);
  LOBYTE(v82) = v115 & 1;
  v115 = v25;
  v86 = v110 & 1;
  v103 &= 1u;
  LODWORD(v110) = v81 & 1;
  v87 = v116;
  sub_21C6EDBAC(v84, v116, &qword_27CDF8208, &qword_21CBCC220);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF98F0, &unk_21CBCC3C0);
  sub_21C6EDBAC(v85, v87 + v88[12], &qword_27CDF8208, &qword_21CBCC220);
  v89 = v87 + v88[16];
  v90 = v122;
  *v89 = v125;
  *(v89 + 8) = v90;
  *(v89 + 16) = v82;
  v91 = v113;
  *(v89 + 24) = v114;
  *(v89 + 32) = v91;
  v92 = v87 + v88[20];
  v93 = v112;
  *v92 = v120;
  *(v92 + 8) = v93;
  *(v92 + 16) = v86;
  v114 = v27;
  v94 = v108;
  *(v92 + 24) = v109;
  *(v92 + 32) = v94;
  v95 = v87 + v88[24];
  v96 = v107;
  *v95 = v106;
  *(v95 + 8) = v96;
  *(v95 + 16) = v103;
  v97 = v104;
  *(v95 + 24) = v105;
  *(v95 + 32) = v97;
  *(v95 + 40) = v119;
  v98 = v87 + v88[28];
  v100 = v117;
  v99 = v118;
  *v98 = v121;
  *(v98 + 8) = v99;
  *(v98 + 16) = v110;
  *(v98 + 24) = v111;
  *(v98 + 32) = v100;

  sub_21C6EA794(v115, &qword_27CDF8208, &qword_21CBCC220);
  sub_21C6EA794(v114, &qword_27CDF8208, &qword_21CBCC220);

  sub_21C6EA794(v124, &qword_27CDF8208, &qword_21CBCC220);
  return sub_21C6EA794(v123, &qword_27CDF8208, &qword_21CBCC220);
}

uint64_t sub_21C745BC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C745C40(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v20[1] = v5;
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMSourceGrid();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C744908(v2, v10, type metadata accessor for PMSourceGrid);
  sub_21C744908(a1, v6, type metadata accessor for PMAppSourceListModel.Source);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = (v9 + *(v23 + 80) + v12) & ~*(v23 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v11;
  *(v14 + 24) = v15;
  v16 = v15;
  sub_21C744970(v10, v14 + v12, type metadata accessor for PMSourceGrid);
  sub_21C744970(v6, v14 + v13, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C744908(v22, v10, type metadata accessor for PMSourceGrid);
  sub_21C744908(v21, v6, type metadata accessor for PMAppSourceListModel.Source);
  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  sub_21C744970(v10, v18 + v12, type metadata accessor for PMSourceGrid);
  sub_21C744970(v6, v18 + v13, type metadata accessor for PMAppSourceListModel.Source);
  sub_21CB84F64();
  return v24;
}

uint64_t sub_21C745EF4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for PMSourceGrid() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAppSourceListModel.Source(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21C745FCC((v1 + v4), v9, a1);
}

uint64_t sub_21C745FCC@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = *a1;
  swift_getKeyPath();
  v31 = v20;
  sub_21C7062A0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v21 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C744908(v29, v19, type metadata accessor for PMAppSourceListModel.Source);
  (*(v5 + 56))(v19, 0, 1, v4);
  v22 = *(v9 + 56);
  sub_21C6EDBAC(v20 + v21, v12, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v19, &v12[v22], &qword_27CDEAC20, &qword_21CBAD710);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) != 1)
  {
    sub_21C6EDBAC(v12, v17, &qword_27CDEAC20, &qword_21CBAD710);
    if (v23(&v12[v22], 1, v4) != 1)
    {
      v26 = &v12[v22];
      v27 = v28;
      sub_21C744970(v26, v28, type metadata accessor for PMAppSourceListModel.Source);
      v25 = sub_21C918FE4(v17, v27);
      sub_21C7463DC(v27);
      sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C7463DC(v17);
      result = sub_21C6EA794(v12, &qword_27CDEAC20, &qword_21CBAD710);
      goto LABEL_8;
    }

    sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C7463DC(v17);
    goto LABEL_6;
  }

  sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
  if (v23(&v12[v22], 1, v4) != 1)
  {
LABEL_6:
    result = sub_21C6EA794(v12, &unk_27CDED310, &unk_21CBA0150);
    v25 = 0;
    goto LABEL_8;
  }

  result = sub_21C6EA794(v12, &qword_27CDEAC20, &qword_21CBAD710);
  v25 = 1;
LABEL_8:
  *v30 = v25 & 1;
  return result;
}

uint64_t sub_21C7463DC(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSourceListModel.Source(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C746450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9A28, &qword_21CBCC590);
  v54 = *(v59 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v59);
  v51 = (v49 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9A30, &qword_21CBCC598);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9A38, &unk_21CBCC5A0);
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = v49 - v18;
  v19 = sub_21CB83854();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C48, &qword_21CBBF4D0);
  v24 = *(*(v50 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v50);
  v49[1] = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v60 = v49 - v27;
  sub_21C7062A0(&qword_27CDF9A40, MEMORY[0x277CE05F0]);
  sub_21CB85A24();
  sub_21CB85A64();
  v28 = sub_21CB85A54();
  if (v28 >= a2)
  {
    v29 = a2;
  }

  else
  {
    v29 = v28;
  }

  sub_21CB85A24();
  sub_21CB85A64();
  result = sub_21CB85A54();
  if (!v29)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (result == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_12;
  }

  v52 = v12;
  v53 = a3;
  v31 = result % v29;
  v32 = *(v20 + 16);
  v32(v23, a1, v19);
  sub_21C746B78(v31);
  v33 = sub_21C746CF4(v29);
  v34 = sub_21C747188(v33);

  v62 = v34;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9A48, &qword_21CBCC5D0);
  sub_21C6EADEC(&qword_27CDF9A50, &qword_27CDF9A48, &qword_21CBCC5D0);
  sub_21C6EADEC(&qword_27CDF9A58, &qword_27CDF9A28, &qword_21CBCC590);
  v35 = v59;
  sub_21CB84FD4();
  v36 = 1;
  if (v31 < 1)
  {
    v41 = v52;
    v40 = v53;
    v43 = v57;
    v42 = v58;
    v39 = v55;
  }

  else
  {
    v37 = v51;
    *v51 = 0;
    *(v37 + 8) = 1;
    v38 = *(v35 + 36);
    v32(v23, a1, v19);
    sub_21C7477A8(v31);
    sub_21CB83844();
    sub_21C747680();
    sub_21C7062A0(&qword_27CDF9A78, MEMORY[0x277CE05E0]);
    v35 = v59;
    sub_21CB84FF4();
    v39 = v55;
    sub_21C716934(v37, v55, &qword_27CDF9A28, &qword_21CBCC590);
    v36 = 0;
    v41 = v52;
    v40 = v53;
    v43 = v57;
    v42 = v58;
  }

  (*(v54 + 56))(v39, v36, 1, v35);
  v44 = *(v43 + 16);
  v45 = v56;
  v46 = v61;
  v44(v56, v61, v42);
  sub_21C6EDBAC(v39, v41, &qword_27CDF9A30, &qword_21CBCC598);
  v44(v40, v45, v42);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9A60, &qword_21CBCC5D8);
  sub_21C6EDBAC(v41, &v40[*(v47 + 48)], &qword_27CDF9A30, &qword_21CBCC598);
  sub_21C6EA794(v39, &qword_27CDF9A30, &qword_21CBCC598);
  v48 = *(v43 + 8);
  v48(v46, v42);
  sub_21C6EA794(v60, &qword_27CDF5C48, &qword_21CBBF4D0);
  sub_21C6EA794(v41, &qword_27CDF9A30, &qword_21CBCC598);
  return (v48)(v45, v42);
}

uint64_t sub_21C746B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_21C746450(a1, *v3, a3);
}

uint64_t sub_21C746B78(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_21CB83854();
    v3 = MEMORY[0x277CE05F0];
    sub_21C7062A0(&qword_27CDF9A40, MEMORY[0x277CE05F0]);
    sub_21CB85A64();
    sub_21CB85A24();
    sub_21C7062A0(&qword_27CDF9A80, v3);
    sub_21CB854F4();
    if (v5)
    {
      sub_21CB85A24();
    }

    else
    {
      v7 = v4;
    }

    result = sub_21CB85A24();
    if (v7 >= v6)
    {
      sub_21CB85A84();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C746CF4(uint64_t a1)
{
  v20 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C48, &qword_21CBBF4D0);
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v8 = *v1;
  v7 = *(v1 + 1);
  if (*v1 >= v7)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v18 = v4;
    v9 = *(v4 + 40);
    v10 = sub_21CB83854();
    sub_21C7062A0(&qword_27CDF9A40, MEMORY[0x277CE05F0]);
    v11 = MEMORY[0x277D84F90];
    v16 = v10 - 8;
    v17 = v8;
    while (1)
    {
      v21 = v8;
      v25 = v7;
      result = sub_21CB85A44();
      v13 = v24 ? v7 : v23;
      if (v13 < v8)
      {
        break;
      }

      v23 = v8;
      v24 = v13;
      v21 = v17;
      v22 = v7;
      sub_21CB85A34();
      (*(*(v10 - 8) + 16))(&v6[*(v18 + 40)], &v1[v9], v10);
      *v6 = v8;
      *(v6 + 1) = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_21C747164(0, v11[2] + 1, 1, v11);
      }

      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        v11 = sub_21C747164(v14 > 1, v15 + 1, 1, v11);
      }

      v11[2] = v15 + 1;
      sub_21C716934(v6, v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15, &qword_27CDF5C48, &qword_21CBBF4D0);
      v8 = v13;
      if (v13 >= v7)
      {
        return v11;
      }
    }

    __break(1u);
  }

  return result;
}

size_t sub_21C746F7C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_21C747188(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C40, &qword_21CBCC5E0);
  v2 = *(*(v48 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v46 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = &v41 - v6;
  v47 = a1;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  v45 = v9;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = v7;
    v14 = *(v7 + 80);
    v43 = v14;
    v44 = (v14 + 32) & ~v14;
    v15 = MEMORY[0x277D84F90] + v44;
    v16 = &qword_21CBCC5E0;
    v17 = MEMORY[0x277D84F90];
    v42 = &v41 - v6;
    while (1)
    {
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C48, &qword_21CBBF4D0) - 8);
      v19 = v47 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11;
      v20 = *(v48 + 48);
      v21 = v16;
      v22 = v46;
      *v46 = v11;
      sub_21C6EDBAC(v19, v22 + v20, &qword_27CDF5C48, &qword_21CBBF4D0);
      v23 = v22;
      v16 = v21;
      result = sub_21C716934(v23, v8, &qword_27CDF5C40, v21);
      if (v12)
      {
        v10 = v17;
        v24 = v13;
        v25 = __OFSUB__(v12--, 1);
        if (v25)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v26 = v17[3];
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_32;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C50, &qword_21CBBF4D8);
        v29 = *(v13 + 72);
        v30 = v44;
        v10 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v10);
        if (!v29)
        {
          goto LABEL_33;
        }

        v31 = result - v30;
        if (result - v30 == 0x8000000000000000 && v29 == -1)
        {
          goto LABEL_34;
        }

        v33 = v31 / v29;
        v10[2] = v28;
        v10[3] = 2 * (v31 / v29);
        v34 = v10 + v30;
        v35 = v17[3] >> 1;
        v36 = v35 * v29;
        if (v17[2])
        {
          if (v10 < v17 || v34 >= v17 + v44 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v15 = &v34[v36];
        v37 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v24 = v13;
        v8 = v42;
        v16 = v21;
        v25 = __OFSUB__(v37, 1);
        v12 = v37 - 1;
        if (v25)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }
      }

      ++v11;
      result = sub_21C716934(v8, v15, &qword_27CDF5C40, v16);
      v13 = v24;
      v15 += *(v24 + 72);
      v17 = v10;
      if (v45 == v11)
      {
        goto LABEL_27;
      }
    }
  }

  v12 = 0;
LABEL_27:
  v38 = v10[3];
  if (v38 >= 2)
  {
    v39 = v38 >> 1;
    v25 = __OFSUB__(v39, v12);
    v40 = v39 - v12;
    if (v25)
    {
      goto LABEL_35;
    }

    v10[2] = v40;
  }

  return v10;
}

uint64_t sub_21C747504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C48, &qword_21CBBF4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C40, &qword_21CBCC5E0) + 48);
  *a2 = 0;
  *(a2 + 8) = 1;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9A28, &qword_21CBCC590) + 36);
  sub_21C6EDBAC(a1 + v8, v7, &qword_27CDF5C48, &qword_21CBBF4D0);
  sub_21CB83844();
  sub_21C747680();
  sub_21C7062A0(&qword_27CDF9A78, MEMORY[0x277CE05E0]);
  return sub_21CB84FF4();
}

unint64_t sub_21C747680()
{
  result = qword_27CDF9A68;
  if (!qword_27CDF9A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5C48, &qword_21CBBF4D0);
    sub_21C7062A0(&qword_27CDF9A70, MEMORY[0x277CE05F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9A68);
  }

  return result;
}

uint64_t sub_21C747734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB83844();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_21C7477A8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_21CB83854();
    v3 = MEMORY[0x277CE05F0];
    sub_21C7062A0(&qword_27CDF9A40, MEMORY[0x277CE05F0]);
    sub_21CB85A64();
    sub_21CB85A24();
    sub_21C7062A0(&qword_27CDF9A80, v3);
    sub_21CB854F4();
    if (v5)
    {
      sub_21CB85A24();
    }

    else
    {
      v7 = v4;
    }

    result = sub_21CB85A64();
    if (v6 >= v7)
    {
      sub_21CB85A84();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C747940()
{
  sub_21CB83904();
  sub_21C74422C(&qword_27CDF9C78, MEMORY[0x277CDE278]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7479E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a1;
  v95 = a2;
  v94 = sub_21CB83274();
  v93 = *(v94 - 8);
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21CB83A34();
  v90 = *(v91 - 8);
  v5 = *(v90 + 64);
  v6 = MEMORY[0x28223BE20](v91);
  v89 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(a1 - 8);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v6);
  v84 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  sub_21CB828F4();
  v83 = sub_21CB83B74();
  sub_21CB828F4();
  v9 = sub_21CB828F4();
  v10 = MEMORY[0x277CE1180];
  v114 = v9;
  v115 = MEMORY[0x277CE1180];
  v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B78, &qword_21CBCC880);
  v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B80, &qword_21CBCC888);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  v114 = sub_21CB84E14();
  v115 = v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B88, &qword_21CBCC890);
  v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B90, &qword_21CBCC898);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B98, &qword_21CBCC8A0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9BA0, &unk_21CBCC8A8);
  v11 = sub_21CB828F4();
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x277CDF918];
  v112 = WitnessTable;
  v113 = MEMORY[0x277CDF918];
  v14 = MEMORY[0x277CDFAD8];
  v110 = swift_getWitnessTable();
  v111 = v13;
  v15 = swift_getWitnessTable();
  v16 = sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
  v108 = v15;
  v109 = v16;
  v82 = v14;
  v17 = swift_getWitnessTable();
  v18 = sub_21C6EADEC(&qword_27CDF9BA8, &qword_27CDF9B98, &qword_21CBCC8A0);
  v106 = v17;
  v107 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_21C6EADEC(&qword_27CDF9BB0, &qword_27CDF9BA0, &unk_21CBCC8A8);
  v104 = v19;
  v105 = v20;
  v77 = v11;
  v76 = swift_getWitnessTable();
  v21 = sub_21CB84DF4();
  v81 = *(v21 - 8);
  v22 = *(v81 + 64);
  MEMORY[0x28223BE20](v21);
  v71 = &v65 - v23;
  v24 = swift_getWitnessTable();
  v25 = sub_21C744100();
  v114 = v21;
  v115 = &type metadata for PMPressedBindingButtonStyle;
  v116 = v24;
  v117 = v25;
  v69 = v24;
  v26 = v25;
  v68 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  v28 = *(v79 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v70 = &v65 - v29;
  v114 = v21;
  v115 = &type metadata for PMPressedBindingButtonStyle;
  v116 = v24;
  v117 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  v115 = OpaqueTypeConformance2;
  v75 = MEMORY[0x277CDEAE8];
  v73 = swift_getOpaqueTypeMetadata2();
  v78 = *(v73 - 8);
  v30 = *(v78 + 64);
  MEMORY[0x28223BE20](v73);
  v66 = &v65 - v31;
  v32 = sub_21CB828F4();
  v80 = *(v32 - 8);
  v33 = *(v80 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v67 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v74 = &v65 - v37;
  MEMORY[0x28223BE20](v36);
  v83 = &v65 - v38;
  v39 = v86;
  v40 = v84;
  v41 = v88;
  v42 = v96;
  (*(v86 + 16))(v84, v88, v96);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  v45 = v42;
  v46 = *(v42 + 24);
  v47 = v85;
  *(v44 + 16) = v85;
  *(v44 + 24) = v46;
  (*(v39 + 32))(v44 + v43, v40, v45);
  v97 = v47;
  v98 = v46;
  v99 = v41;
  v48 = v71;
  sub_21CB84DA4();
  v49 = *(v41 + 112);
  v102 = *(v41 + 104);
  v103 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v50 = v70;
  sub_21CB84134();

  (*(v81 + 8))(v48, v21);
  v51 = v89;
  sub_21CB83A24();
  v52 = v66;
  v53 = OpaqueTypeConformance2;
  sub_21CB844F4();
  (*(v90 + 8))(v51, v91);
  (*(v79 + 8))(v50, OpaqueTypeMetadata2);
  v54 = v92;
  sub_21C74B2F0();
  v114 = OpaqueTypeMetadata2;
  v115 = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v67;
  v57 = v73;
  sub_21CB84594();
  (*(v93 + 8))(v54, v94);
  (*(v78 + 8))(v52, v57);
  v58 = *(v41 + 8);
  v114 = *v41;
  v115 = v58;

  MEMORY[0x21CF151F0](1701603668, 0xE400000000000000);
  v59 = v74;
  sub_21CB828C4();

  v60 = *(v80 + 8);
  v60(v56, v32);
  v61 = sub_21C74422C(&qword_27CDEB908, MEMORY[0x277CDE470]);
  v100 = v55;
  v101 = v61;
  v62 = swift_getWitnessTable();
  v63 = v83;
  sub_21C72BE10(v59, v32, v62);
  v60(v59, v32);
  sub_21C72BE10(v63, v32, v62);
  return (v60)(v63, v32);
}

uint64_t sub_21C748684()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PMSourceTile();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 48);

  v11 = *(v0 + v5 + 64);

  v12 = *(v0 + v5 + 72);

  v13 = *(v0 + v5 + 96);

  v14 = *(v0 + v5 + 112);

  v15 = v3[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB82054();
    (*(*(v16 - 8) + 8))(v7 + v15, v16);
  }

  else
  {
    v17 = *(v7 + v15);
  }

  sub_21C7025C4(*(v7 + v3[18]), *(v7 + v3[18] + 8));
  v18 = v3[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFF8, &qword_21CBCC350);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_21CB85164();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v7 + v18, 1, v19))
    {
      (*(v20 + 8))(v7 + v18, v19);
    }
  }

  else
  {
    v21 = *(v7 + v18);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_21C7488B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24[1] = a2;
  v24[2] = a1;
  v24[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  sub_21CB828F4();
  sub_21CB83B74();
  sub_21CB828F4();
  sub_21CB828F4();
  v3 = MEMORY[0x277CE1180];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B78, &qword_21CBCC880);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B80, &qword_21CBCC888);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  v24[14] = sub_21CB84E14();
  v24[15] = v3;
  v24[16] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B88, &qword_21CBCC890);
  v24[17] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B90, &qword_21CBCC898);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84EE4();
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B98, &qword_21CBCC8A0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9BA0, &unk_21CBCC8A8);
  v4 = sub_21CB828F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for PMSourceTile();
  sub_21C748DB4(v12, v9);
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x277CDF918];
  v24[12] = WitnessTable;
  v24[13] = MEMORY[0x277CDF918];
  v24[10] = swift_getWitnessTable();
  v24[11] = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
  v24[8] = v15;
  v24[9] = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_21C6EADEC(&qword_27CDF9BA8, &qword_27CDF9B98, &qword_21CBCC8A0);
  v24[6] = v17;
  v24[7] = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_21C6EADEC(&qword_27CDF9BB0, &qword_27CDF9BA0, &unk_21CBCC8A8);
  v24[4] = v19;
  v24[5] = v20;
  v21 = swift_getWitnessTable();
  sub_21C72BE10(v9, v4, v21);
  v22 = *(v5 + 8);
  v22(v9, v4);
  sub_21C72BE10(v11, v4, v21);
  return (v22)(v11, v4);
}

uint64_t sub_21C748DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = sub_21CB82A84();
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = *(a1 + 16);
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  sub_21CB828F4();
  sub_21CB83B74();
  sub_21CB828F4();
  v5 = sub_21CB828F4();
  v6 = MEMORY[0x277CE1180];
  v68 = v5;
  v69 = MEMORY[0x277CE1180];
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B78, &qword_21CBCC880);
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B80, &qword_21CBCC888);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  swift_getWitnessTable();
  v68 = sub_21CB84E14();
  v69 = v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B88, &qword_21CBCC890);
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B90, &qword_21CBCC898);
  swift_getTupleTypeMetadata();
  sub_21CB85354();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_21CB84EE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_21CB828F4();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = sub_21CB828F4();
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  v43 = sub_21CB828F4();
  v45 = *(v43 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  v39 = &v38 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B98, &qword_21CBCC8A0);
  v46 = sub_21CB828F4();
  v47 = *(v46 - 8);
  v22 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v42 = &v38 - v23;
  sub_21CB832F4();
  v38 = *(a1 + 24);
  v57 = v53;
  v58 = v38;
  v24 = v48;
  v59 = v48;
  sub_21CB84ED4();
  sub_21CB83CD4();
  v25 = swift_getWitnessTable();
  sub_21CB84884();
  (*(v8 + 8))(v11, v7);
  sub_21CB83D44();
  v26 = MEMORY[0x277CDF918];
  v66 = v25;
  v67 = MEMORY[0x277CDF918];
  v27 = swift_getWitnessTable();
  sub_21CB84884();
  (*(v41 + 8))(v15, v12);
  v68 = sub_21CB426E0(v52, MEMORY[0x277CE0F38]);
  v64 = v27;
  v65 = v26;
  v28 = swift_getWitnessTable();
  v29 = v39;
  sub_21CB842C4();

  (*(v44 + 8))(v19, v16);
  v54 = v53;
  v55 = v38;
  v56 = v24;
  sub_21CB85214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4C80, &unk_21CBCC8C0);
  v30 = sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
  v62 = v28;
  v63 = v30;
  v31 = v43;
  v32 = swift_getWitnessTable();
  sub_21C74AAA4();
  v33 = v42;
  sub_21CB840B4();
  (*(v45 + 8))(v29, v31);
  v34 = v49;
  sub_21C74AC64(v49);
  v35 = sub_21C6EADEC(&qword_27CDF9BA8, &qword_27CDF9B98, &qword_21CBCC8A0);
  v60 = v32;
  v61 = v35;
  v36 = v46;
  swift_getWitnessTable();
  sub_21C74422C(&qword_27CDF9BC8, MEMORY[0x277CDFC08]);
  sub_21CB841C4();
  sub_21C74B294(v34);
  return (*(v47 + 8))(v33, v36);
}

uint64_t sub_21C7496B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C749718();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21C749718()
{
  result = qword_27CDF9A98;
  if (!qword_27CDF9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9A98);
  }

  return result;
}

uint64_t sub_21C749784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v42 - v7;
  v9 = *(a1 + 16);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEECF0, &qword_21CBAF890);
  v13 = sub_21CB828F4();
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  v17 = sub_21CB828F4();
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v47 = sub_21CB828F4();
  v51 = *(v47 - 8);
  v21 = *(v51 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = &v42 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B70, &qword_21CBCC878);
  v50 = sub_21CB828F4();
  v52 = *(v50 - 8);
  v23 = *(v52 + 64);
  v24 = MEMORY[0x28223BE20](v50);
  v46 = &v42 - v25;
  v26 = v2;
  v27 = *(v2 + 88);
  v28 = *(v2 + 96);
  v43 = v26;
  v27(v24);
  v65 = sub_21C749E8C(a1);
  v29 = *(a1 + 24);
  sub_21CB842C4();

  (*(v44 + 8))(v12, v9);
  v30 = sub_21CB83DC4();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  sub_21CB83E14();
  sub_21C6EA794(v8, &qword_27CDEBB58, &qword_21CBAF8A0);
  v31 = sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
  v63 = v29;
  v64 = v31;
  WitnessTable = swift_getWitnessTable();
  sub_21CB846C4();

  (*(v48 + 8))(v16, v13);
  sub_21CB85214();
  v33 = sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  v61 = WitnessTable;
  v62 = v33;
  v34 = swift_getWitnessTable();
  v35 = v45;
  sub_21CB84794();
  (*(v49 + 8))(v20, v17);
  v54 = v9;
  v55 = v29;
  v56 = v43;
  sub_21CB85214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E58, &unk_21CBB2A48);
  v59 = v34;
  v60 = MEMORY[0x277CDF678];
  v36 = v47;
  v37 = swift_getWitnessTable();
  sub_21C74A048();
  v38 = v46;
  sub_21CB840B4();
  (*(v51 + 8))(v35, v36);
  v39 = sub_21C6EADEC(&qword_27CDF9C30, &qword_27CDF9B70, &qword_21CBCC878);
  v57 = v37;
  v58 = v39;
  v40 = v50;
  swift_getWitnessTable();
  sub_21CB84494();
  return (*(v52 + 8))(v38, v40);
}

uint64_t sub_21C749E44@<X0>(uint64_t *a1@<X8>)
{

  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C749E8C(uint64_t a1)
{
  if (sub_21C749ED4(a1))
  {
    v2 = *(v1 + 48);
  }

  else
  {

    return sub_21CB84AD4();
  }
}

uint64_t sub_21C749ED4(uint64_t a1)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 72);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_21CB85B04();
    v11 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v9, 0);
    (*(v4 + 8))(v7, v3);
    if (v13[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = sub_21C74B23C();
    return v10 & 1;
  }

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 0;
  return v10 & 1;
}

unint64_t sub_21C74A048()
{
  result = qword_27CDF1E50;
  if (!qword_27CDF1E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1E58, &unk_21CBB2A48);
    sub_21C74A100();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1E50);
  }

  return result;
}

unint64_t sub_21C74A100()
{
  result = qword_27CDF0D98;
  if (!qword_27CDF0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0D98);
  }

  return result;
}

uint64_t sub_21C74A154@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for PMSourceTile();
  result = sub_21C74A18C(v6);
  *a1 = result;
  return result;
}

uint64_t sub_21C74A18C(uint64_t a1)
{
  if (sub_21C749ED4(a1))
  {

    return sub_21CB84AD4();
  }

  else
  {
    v3 = *(v1 + 48);
  }
}

uint64_t sub_21C74A1D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C74A250()
{
  result = qword_27CDF9C48;
  if (!qword_27CDF9C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9C50, &unk_21CBCC930);
    sub_21C6EADEC(&qword_27CDED010, &qword_27CDED018, &qword_21CBA5FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9C48);
  }

  return result;
}

unint64_t sub_21C74A308()
{
  result = qword_27CDF9C40;
  if (!qword_27CDF9C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9C28, &qword_21CBCC928);
    sub_21C74A250();
    sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9C40);
  }

  return result;
}

unint64_t sub_21C74A3C0()
{
  result = qword_27CDF9C68;
  if (!qword_27CDF9C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9C70, &qword_21CBCC948);
    sub_21C6EADEC(&qword_27CDF0470, &qword_27CDF0478, &unk_21CBB2E10);
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9C68);
  }

  return result;
}

unint64_t sub_21C74A4A4()
{
  result = qword_27CDF9C60;
  if (!qword_27CDF9C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9C20, &qword_21CBCC920);
    sub_21C74A3C0();
    sub_21C6EADEC(&qword_27CDF1398, &qword_27CDF13A0, &qword_21CBB1100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9C60);
  }

  return result;
}

uint64_t sub_21C74A55C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_21CB85364();
}

uint64_t sub_21C74A72C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21C74A73C()
{
  result = qword_27CDF9BE8;
  if (!qword_27CDF9BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9B88, &qword_21CBCC890);
    sub_21CB427E0();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9BE8);
  }

  return result;
}

unint64_t sub_21C74A7F4()
{
  result = qword_27CDF55D0;
  if (!qword_27CDF55D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF55C8, &qword_21CBBE560);
    sub_21C7441E4(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF55D0);
  }

  return result;
}

unint64_t sub_21C74A8B0()
{
  result = qword_27CDF9C00;
  if (!qword_27CDF9C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9C08, &qword_21CBCC910);
    sub_21C74A968();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9C00);
  }

  return result;
}

unint64_t sub_21C74A968()
{
  result = qword_27CDF9C10;
  if (!qword_27CDF9C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9C18, &qword_21CBCC918);
    sub_21C74AA20();
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9C10);
  }

  return result;
}

unint64_t sub_21C74AA20()
{
  result = qword_27CDF0B88;
  if (!qword_27CDF0B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0B80, &qword_21CBAFAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0B88);
  }

  return result;
}

unint64_t sub_21C74AAA4()
{
  result = qword_27CDF4CB8;
  if (!qword_27CDF4CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4C80, &unk_21CBCC8C0);
    sub_21C74AB8C(&qword_27CDF0BE8, MEMORY[0x277CDFC08]);
    sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4CB8);
  }

  return result;
}

uint64_t sub_21C74AB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C74ABD4@<X0>(__n128 *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for PMSourceTile();
  return sub_21C74AC0C(v6, a1);
}

uint64_t sub_21C74AC0C@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_21C74AC64(a2);
  v4 = sub_21C74ACE8(a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4C80, &unk_21CBCC8C0);
  *(a2->n128_u64 + *(result + 36)) = v4;
  return result;
}

__n128 sub_21C74AC64@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(sub_21CB82A84() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_21CB831A4();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #18.0 }

  *a1 = result;
  return result;
}

uint64_t sub_21C74ACE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB82054();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = sub_21CB82F84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21C74B23C())
  {
    if (sub_21C749ED4(a1))
    {
      v38 = *(v1 + 48);

      return sub_21CB82384();
    }

    v22 = v1 + *(a1 + 72);
    v23 = *v22;
    if (*(v22 + 8) == 1)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {

      sub_21CB85B04();
      v27 = sub_21CB83C94();
      sub_21CB81C14();

      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C7025C4(v23, 0);
      (*(v13 + 8))(v16, v12);
      if ((v38 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v26 = sub_21CB837D4();
LABEL_19:
    LODWORD(v38) = v26;
    return sub_21CB82384();
  }

  v17 = *(v1 + 112);
  LOBYTE(v38) = *(v1 + 104);
  v39 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v18 = v1 + *(a1 + 72);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v37 == 1)
  {
    if (v20)
    {
      if ((v19 & 1) == 0)
      {
LABEL_7:
        v21 = [objc_opt_self() secondarySystemFillColor];
LABEL_14:
        v24 = v21;
        v38 = sub_21CB84A24();
        return sub_21CB82384();
      }
    }

    else
    {

      sub_21CB85B04();
      v25 = sub_21CB83C94();
      sub_21CB81C14();

      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C7025C4(v19, 0);
      (*(v13 + 8))(v16, v12);
      if (v38 != 1)
      {
        goto LABEL_7;
      }
    }

    v26 = sub_21CB837A4();
    goto LABEL_19;
  }

  if (v20)
  {
    if ((v19 & 1) == 0)
    {
LABEL_13:
      v21 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
      goto LABEL_14;
    }
  }

  else
  {

    v35[3] = sub_21CB85B04();
    v28 = sub_21CB83C94();
    v36 = v5;
    v29 = v28;
    sub_21CB81C14();

    v5 = v36;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v19, 0);
    (*(v13 + 8))(v16, v12);
    if (v38 != 1)
    {
      goto LABEL_13;
    }
  }

  v30 = sub_21CB837B4();
  v31 = v2 + *(a1 + 68);
  sub_21C74F0F8(v11);
  (*(v5 + 104))(v9, *MEMORY[0x277CDF3D0], v4);
  LOBYTE(v31) = sub_21CB82044();
  v32 = *(v5 + 8);
  v32(v9, v4);
  v32(v11, v4);
  v33 = 0.1;
  if (v31)
  {
    v33 = 0.05;
  }

  v38 = __PAIR64__(LODWORD(v33), v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9BD0, &qword_21CBCC8D0);
  sub_21C6EADEC(&qword_27CDF9BD8, &qword_27CDF9BD0, &qword_21CBCC8D0);
  return sub_21CB82384();
}

uint64_t sub_21C74B23C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  MEMORY[0x21CF14A20](&v5, v3);
  return v5;
}

uint64_t sub_21C74B294(uint64_t a1)
{
  v2 = sub_21CB82A84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C74B2F0()
{
  v0 = sub_21CB83274();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9BC0, &qword_21CBCC8B8);
  v9 = *(v1 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  sub_21CB83254();
  v14[1] = v11;
  sub_21C74422C(&qword_27CDF4520, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4528, &unk_21CBBAD40);
  sub_21C6EADEC(&qword_27CDF4530, &qword_27CDF4528, &unk_21CBBAD40);
  sub_21CB85F14();
  result = sub_21C74B23C();
  if (result)
  {
    sub_21CB83204();
    sub_21CB83234();
    v13 = *(v2 + 8);
    v13(v6, v0);
    return (v13)(v8, v0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21C74B53C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB84A44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  sub_21CB81014();
  sub_21CB81014();
  v16 = sub_21CB80FF4();
  v33 = v17;
  v34 = v16;
  v18 = *(v9 + 8);
  v18(v13, v8);
  v18(v15, v8);
  v19 = *(v1 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v20 = *(v38 + 16);

  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE8], v3);
  v21 = sub_21CB84B44();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v4) = v38;
  v38 = *v1;
  v39 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  v22 = v35;
  v23 = v36;
  LOBYTE(v7) = v37;
  v24 = swift_allocObject();
  *(v24 + 16) = 0xD000000000000015;
  *(v24 + 24) = 0x800000021CB96E80;
  v25 = v33;
  *a1 = v34;
  *(a1 + 8) = v25;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v20;
  *(a1 + 40) = 0;
  *(a1 + 48) = v21;
  *(a1 + 56) = (v4 & 1) == 0;
  *(a1 + 57) = 0;
  *(a1 + 64) = v22;
  *(a1 + 72) = v23;
  *(a1 + 80) = v7;
  *(a1 + 88) = sub_21C744290;
  *(a1 + 96) = v24;
  LOBYTE(v35) = 0;
  sub_21CB84D44();
  v26 = *(&v38 + 1);
  *(a1 + 104) = v38;
  *(a1 + 112) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8208, &qword_21CBCC220);
  v28 = v27[17];
  *(a1 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v29 = a1 + v27[18];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  v30 = v27[19];
  *(a1 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFF8, &qword_21CBCC350);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C74B988()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C74B9D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMWiFiNetworksStore();
  result = sub_21CB81CF4();
  *a1 = result;
  return result;
}

uint64_t sub_21C74BA1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB84A44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MGGetBoolAnswer();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = *(v1 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v17 = *(v32 + 16);

  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE8], v3);
  v18 = sub_21CB84B44();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v7) = v32;
  v32 = *v1;
  v33 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  v19 = v29;
  v20 = v30;
  LOBYTE(v12) = v31;
  v21 = swift_allocObject();
  *(v21 + 16) = 1768319351;
  *(v21 + 24) = 0xE400000000000000;
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v17;
  *(a1 + 40) = 0;
  *(a1 + 48) = v18;
  *(a1 + 56) = (v7 & 1) == 0;
  *(a1 + 57) = 0;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = v12;
  *(a1 + 88) = sub_21C744290;
  *(a1 + 96) = v21;
  LOBYTE(v29) = 0;
  sub_21CB84D44();
  v22 = *(&v32 + 1);
  *(a1 + 104) = v32;
  *(a1 + 112) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8208, &qword_21CBCC220);
  v24 = v23[17];
  *(a1 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v25 = a1 + v23[18];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v23[19];
  *(a1 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFF8, &qword_21CBCC350);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C74BE20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21C74BE88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE0, &qword_21CBA5EA8);
  v11 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v13 = &v38 - v12;
  sub_21CB81014();
  sub_21CB81014();
  v14 = sub_21CB80FF4();
  v40 = v15;
  v41 = v14;
  v16 = *(v4 + 8);
  v16(v8, v3);
  v16(v10, v3);
  v51 = *(v2 + 3);
  v39 = sub_21C74C3BC();
  v42 = v2[5];
  v17 = sub_21C74C5EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v4) = v48;
  v18 = v2[1];
  v20 = *(v2 + 16);
  v48 = *v2;
  v19 = v48;
  v49 = v18;
  v50 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  v21 = v46[0];
  v22 = v46[1];
  v23 = v47;
  v46[0] = v19;
  v24 = swift_allocObject();
  v25 = *(v2 + 1);
  v24[1] = *v2;
  v24[2] = v25;
  v24[3] = *(v2 + 2);
  v26 = v40;
  *v13 = v41;
  *(v13 + 1) = v26;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v39;
  v13[40] = 0;
  *(v13 + 6) = v17;
  *(v13 + 28) = (v4 & 1) == 0;
  *(v13 + 8) = v21;
  *(v13 + 9) = v22;
  v13[80] = v23;
  *(v13 + 11) = sub_21C74C83C;
  *(v13 + 12) = v24;
  LOBYTE(v45) = 0;
  sub_21C74C770(v46, &v48);

  sub_21C74C7CC(&v51, &v48);

  sub_21CB84D44();
  v27 = v49;
  v13[104] = v48;
  *(v13 + 14) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFF0, &qword_21CBA5F08);
  v29 = v28[17];
  *&v13[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v30 = &v13[v28[18]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v28[19];
  *&v13[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFF8, &qword_21CBCC350);
  swift_storeEnumTagMultiPayload();
  v32 = sub_21CB85254();
  v33 = sub_21C74C3BC();
  v34 = &v13[*(v43 + 36)];
  *v34 = v32;
  v34[1] = v33;
  v45 = sub_21C74C3BC();
  v35 = swift_allocObject();
  v36 = *(v2 + 1);
  v35[1] = *v2;
  v35[2] = v36;
  v35[3] = *(v2 + 2);
  sub_21C74C770(v46, &v48);

  sub_21C74C7CC(&v51, &v48);
  sub_21C744404();

  sub_21CB84934();

  return sub_21C74C350(v13);
}

uint64_t sub_21C74C350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE0, &qword_21CBA5EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C74C3BC()
{
  v0 = [objc_opt_self() isPasswordsAppInstalled];
  swift_getKeyPath();
  swift_getKeyPath();
  if (v0)
  {
    sub_21CB81DB4();

    v1 = *(v9 + 16);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v2 = *(v9 + 16);

    v4 = __OFADD__(v1, v2);
    v5 = v1 + v2;
    if (v4)
    {
      __break(1u);
      goto LABEL_9;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v6 = *(v9 + 16);

    result = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      return result;
    }

    __break(1u);
  }

  sub_21CB81DB4();

  v7 = *(v9 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v8 = *(v9 + 16);

  result = v7 + v8;
  if (__OFADD__(v7, v8))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_21C74C5EC()
{
  v0 = sub_21CB84A44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v6[15])
  {
    if (sub_21C74C3BC())
    {
LABEL_3:
      (*(v1 + 104))(v4, *MEMORY[0x277CE0EE8], v0);
      return sub_21CB84B44();
    }
  }

  else
  {
    sub_21CB81E94();
    if ((v6[14] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_21CB84A84();
}

uint64_t sub_21C74C7CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB4E0, &qword_21CBA5F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C74C844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = sub_21CB853C4();
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB853A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  sub_21C74CAB0();
  v20[1] = sub_21CB84BB4();
  sub_21C81E3E8();
  sub_21CB840D4();

  v15 = sub_21CB85254();
  v16 = sub_21C74C3BC();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED020, &qword_21CBA5FB8) + 36));
  *v17 = v15;
  v17[1] = v16;
  sub_21CB85394();
  sub_21CB853B4();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED028, &unk_21CBA5FC0) + 36));
  LODWORD(a2) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940) + 28);
  sub_21C7443AC();
  sub_21CB82B24();
  (*(v4 + 8))(v7, v20[0]);
  (*(v9 + 8))(v12, v8);
  result = swift_getKeyPath();
  *v18 = result;
  return result;
}

uint64_t sub_21C74CAB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v3 == 1)
  {
    v0 = sub_21C74C3BC() == 0;
  }

  else
  {
    sub_21CB81E94();
    v0 = v2;
  }

  if (v0)
  {
    return 0x72616D6B63656863;
  }

  else
  {
    return 0x74616D616C637865;
  }
}

uint64_t sub_21C74CBA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB84A44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = *(v1 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v17 = *(v32 + 16);

  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE8], v3);
  v18 = sub_21CB84B44();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v7) = v32;
  v32 = *v1;
  v33 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  v19 = v29;
  v20 = v30;
  LOBYTE(v12) = v31;
  v21 = swift_allocObject();
  *(v21 + 16) = 0x69662E6873617274;
  *(v21 + 24) = 0xEA00000000006C6CLL;
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v17;
  *(a1 + 40) = 0;
  *(a1 + 48) = v18;
  *(a1 + 56) = (v7 & 1) == 0;
  *(a1 + 57) = 0;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = v12;
  *(a1 + 88) = sub_21C744290;
  *(a1 + 96) = v21;
  LOBYTE(v29) = 0;
  sub_21CB84D44();
  v22 = *(&v32 + 1);
  *(a1 + 104) = v32;
  *(a1 + 112) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8208, &qword_21CBCC220);
  v24 = v23[17];
  *(a1 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v25 = a1 + v23[18];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v23[19];
  *(a1 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFF8, &qword_21CBCC350);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C74CF94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C74CFE4()
{
  v1 = sub_21CB83904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 16);
  sub_21CB83914();
  v11[15] = sub_21CB83924() & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  sub_21C74422C(&qword_27CDF9C78, MEMORY[0x277CDE278]);

  sub_21CB84924();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_21C74D194()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21C74D1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v10)
  {
    v6 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v6 = v9;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *a3 = v6;
  *(a3 + 8) = sub_21CA3BAD0;
  *(a3 + 16) = v7;
}

uint64_t sub_21C74D300()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C74D344@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5CD0, &qword_21CBBF9C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v42 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5CD8, &qword_21CBBF9D0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5CE0, &qword_21CBBF9D8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  *v10 = sub_21CB85214();
  v10[1] = v21;
  v22 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5CE8, &qword_21CBBF9E0) + 44);
  *v22 = sub_21CB832E4();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5CF0, &qword_21CBBF9E8);
  sub_21CA3AD68(a1, a2, a3, &v22[*(v23 + 44)]);
  LOBYTE(a3) = sub_21CB83D04();
  sub_21CB81F24();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5CF8, &qword_21CBBF9F0) + 36)];
  *v32 = a3;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v10, v15, &qword_27CDF5CD0, &qword_21CBBF9C8);
  v33 = &v15[*(v12 + 44)];
  v34 = v48;
  *(v33 + 4) = v47;
  *(v33 + 5) = v34;
  *(v33 + 6) = v49;
  v35 = v44;
  *v33 = v43;
  *(v33 + 1) = v35;
  v36 = v46;
  *(v33 + 2) = v45;
  *(v33 + 3) = v36;
  LOBYTE(v10) = sub_21CB83CE4();
  sub_21C716934(v15, v20, &qword_27CDF5CD8, &qword_21CBBF9D0);
  v37 = &v20[*(v17 + 44)];
  *v37 = 1;
  v37[8] = v10;
  v38 = sub_21CB82944();
  LOBYTE(v12) = sub_21CB83D04();
  v39 = v42;
  sub_21C716934(v20, v42, &qword_27CDF5CE0, &qword_21CBBF9D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D00, &qword_21CBBF9F8);
  v41 = v39 + *(result + 36);
  *v41 = v38;
  *(v41 + 8) = v12;
  return result;
}

uint64_t sub_21C74D668@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v73 = a2;
  v72 = a1;
  v75 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D88, &qword_21CBBFAF8);
  v9 = *(v8 - 8);
  *&v70 = v8 - 8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v58 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D90, &qword_21CBBFB00);
  v13 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v15 = (&v58 - v14);
  v15->i64[0] = 0;
  v15->i64[1] = 0;
  v15[1] = vdupq_n_s64(0x405E000000000000uLL);
  v15[2].i8[0] = 0;
  v16 = *(type metadata accessor for PMPasswordsIcon() + 28);
  *(v15->i64 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v69 = sub_21CB851F4();
  v68 = v17;
  v67 = sub_21CB85214();
  v66 = v18;
  v62 = (v15->i64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D98, &qword_21CBBFB40) + 36));
  v58 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DA0, &qword_21CBBFB48) + 36);
  v19 = sub_21CB84BB4();
  v64 = sub_21CB83DC4();
  v20 = *(v64 - 8);
  v63 = *(v20 + 56);
  v65 = v20 + 56;
  v59 = v7;
  v63(v7, 1, 1, v64);
  v21 = sub_21CB83E14();
  sub_21C6EA794(v7, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath();
  v84 = v19;
  v85 = KeyPath;
  v86 = v21;
  sub_21CB83E04();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4E8, &unk_21CBA6BB0);
  v60 = sub_21C74DDEC();
  sub_21CB840D4();

  v23 = sub_21CB85214();
  v25 = v24;
  sub_21CB85214();
  sub_21CB82374();
  v26 = v84;
  LOBYTE(v19) = v85;
  v27 = v86;
  v28 = v87;
  v29 = v88;
  v30 = v89;
  LOBYTE(v80) = v85;
  v83 = v87;
  v31 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DA8, &qword_21CBBFB80) + 36)];
  *v31 = v26;
  v31[8] = v19;
  *(v31 + 2) = v27;
  v31[24] = v28;
  *(v31 + 4) = v29;
  *(v31 + 5) = v30;
  *(v31 + 3) = xmmword_21CBBF810;
  *(v31 + 8) = v23;
  *(v31 + 9) = v25;
  *&v12[*(v70 + 44)] = sub_21CB84A94();
  v32 = v58;
  sub_21C74DEA4(v58);
  sub_21C6EA794(v12, &qword_27CDF5D88, &qword_21CBBFAF8);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DB0, &qword_21CBBFB88) + 36);
  v70 = xmmword_21CBBF820;
  *(v32 + v33) = xmmword_21CBBF820;
  v34 = v32;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DB8, &qword_21CBBFB90) + 36);
  v36 = *MEMORY[0x277CE13C0];
  v37 = sub_21CB85284();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  v38 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DC0, &qword_21CBBFB98) + 36));
  v39 = v68;
  *v38 = v69;
  v38[1] = v39;
  v40 = v62;
  v41 = v66;
  *v62 = v67;
  v40[1] = v41;
  v42 = sub_21CB851F4();
  v44 = v43;
  v45 = &v15->i8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DC8, &qword_21CBBFBA0) + 36)];
  v46 = sub_21CB84BB4();
  v47 = v59;
  v63(v59, 1, 1, v64);
  v48 = sub_21CB83E14();
  sub_21C6EA794(v47, &qword_27CDEBB58, &qword_21CBAF8A0);
  v49 = swift_getKeyPath();
  v80 = v46;
  v81 = v49;
  v82 = v48;
  sub_21CB83E04();
  sub_21CB840D4();

  LODWORD(v48) = sub_21CB837E4();
  *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DD0, &qword_21CBBFBA8) + 36)] = v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DD8, &qword_21CBBFBB0);
  *&v45[*(v50 + 36)] = v70;
  v51 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DE0, &qword_21CBBFBB8) + 36)];
  *v51 = v42;
  v51[1] = v44;
  LOBYTE(v48) = sub_21CB83D04();
  sub_21CB81F24();
  v52 = &v15->i8[*(v71 + 36)];
  *v52 = v48;
  *(v52 + 1) = v53;
  *(v52 + 2) = v54;
  *(v52 + 3) = v55;
  *(v52 + 4) = v56;
  v52[40] = 0;
  sub_21CB85184();
  v77 = v72;
  v78 = v73;
  v79 = v74;
  v76 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DE8, &qword_21CBBFBC0);
  sub_21CA3BB80();
  sub_21CA3BC0C();
  sub_21CB85194();
  return sub_21C6EA794(v15, &qword_27CDF5D90, &qword_21CBBFB00);
}

unint64_t sub_21C74DDEC()
{
  result = qword_27CDF4580;
  if (!qword_27CDF4580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED4E8, &unk_21CBA6BB0);
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4580);
  }

  return result;
}

uint64_t sub_21C74DEA4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_21CB826E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB824C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB84E94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMPasswordManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_21CB824B4();

  sub_21CB824A4();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5E50, &qword_21CBBFBE8);
  v18 = *(sub_21CB84E84() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_21CBA0690;
  sub_21CB84E74();
  sub_21CB826D4();

  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D88, &qword_21CBBFAF8);
  sub_21C74E200();
  sub_21CB84184();
  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_21C74E200()
{
  result = qword_27CDF5E58;
  if (!qword_27CDF5E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D88, &qword_21CBBFAF8);
    sub_21C738900();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E58);
  }

  return result;
}

unint64_t sub_21C74E2B8()
{
  result = qword_27CDF5DF8;
  if (!qword_27CDF5DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5E00, &qword_21CBBFBC8);
    sub_21C74E3A0(&qword_27CDEBAD8, type metadata accessor for PMPasswordsIcon);
    sub_21C6EADEC(&qword_27CDF5E08, &qword_27CDF5E10, &qword_21CBBFBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5DF8);
  }

  return result;
}

uint64_t sub_21C74E3A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C74E3E8()
{
  result = qword_27CDF5E20;
  if (!qword_27CDF5E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5DC8, &qword_21CBBFBA0);
    sub_21C74E4A0();
    sub_21C6EADEC(&qword_27CDF5E38, &qword_27CDF5DE0, &qword_21CBBFBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E20);
  }

  return result;
}

unint64_t sub_21C74E4A0()
{
  result = qword_27CDF5E28;
  if (!qword_27CDF5E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D98, &qword_21CBBFB40);
    sub_21C74E3A0(&qword_27CDEBAD8, type metadata accessor for PMPasswordsIcon);
    sub_21C6EADEC(&qword_27CDF5E30, &qword_27CDF5DA0, &qword_21CBBFB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E28);
  }

  return result;
}

uint64_t sub_21C74E588@<X0>(int64x2_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - v4;
  a1->i64[0] = 0;
  a1->i64[1] = 0;
  a1[1] = vdupq_n_s64(0x405E000000000000uLL);
  a1[2].i8[0] = 0;
  v6 = *(type metadata accessor for PMPasswordsIcon() + 28);
  *(a1->i64 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_21CB851F4();
  v9 = v8;
  v10 = &a1->i8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5E00, &qword_21CBBFBC8) + 36)];
  v11 = sub_21CB84BB4();
  v12 = sub_21CB83DC4();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_21CB83E14();
  sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath();
  v27[1] = v11;
  v27[2] = KeyPath;
  v27[3] = v13;
  sub_21CB83E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED4E8, &unk_21CBA6BB0);
  sub_21C74DDEC();
  sub_21CB840D4();

  v15 = sub_21CB84A84();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5E40, &qword_21CBBFBD8) + 36)] = v15;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5E48, &qword_21CBBFBE0) + 36)] = xmmword_21CBBF820;
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5E10, &qword_21CBBFBD0) + 36)];
  *v16 = v7;
  v16[1] = v9;
  LOBYTE(v15) = sub_21CB83D04();
  sub_21CB81F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5DE8, &qword_21CBBFBC0);
  v26 = &a1->i8[*(result + 36)];
  *v26 = v15;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  return result;
}

uint64_t sub_21C74E860@<X0>(int64x2_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_21C74E588(a1);
}

uint64_t sub_21C74E878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D90, &qword_21CBBFB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C74E8E8()
{
  result = qword_27CDF5D48;
  if (!qword_27CDF5D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D08, &qword_21CBBFA00);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&qword_27CDF1398, &qword_27CDF13A0, &qword_21CBB1100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5D48);
  }

  return result;
}

unint64_t sub_21C74E9CC()
{
  result = qword_27CDF5D58;
  if (!qword_27CDF5D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D30, &qword_21CBBFA28);
    sub_21CA3BAF4();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5D58);
  }

  return result;
}

unint64_t sub_21C74EA84()
{
  result = qword_27CDF5D70;
  if (!qword_27CDF5D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D18, &qword_21CBBFA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D08, &qword_21CBBFA00);
    sub_21CB83294();
    sub_21C74E8E8();
    sub_21C74E3A0(&qword_27CDF5D50, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5D70);
  }

  return result;
}

unint64_t sub_21C74EB9C()
{
  result = qword_27CDF5D68;
  if (!qword_27CDF5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D20, &qword_21CBBFA18);
    sub_21C74EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5D68);
  }

  return result;
}

uint64_t sub_21C74EC28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D80, &unk_21CBBFAE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_21C74EC98@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB84BD4();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB82054();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = v1[2];
  v15 = v1[3];
  v16 = *v1;
  v17 = *(v1 + 1);
  v18 = v1 + *(type metadata accessor for PMPasswordsIcon() + 28);
  sub_21C74F0F8(v13);
  if (!v17)
  {
    v19 = *MEMORY[0x277D49CC0];
    sub_21CB855C4();
  }

  v20 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

  v21 = sub_21CB85584();

  v22 = [v20 initWithBundleIdentifier_];

  v23 = [objc_opt_self() mainScreen];
  [v23 scale];
  v25 = v24;

  v26 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v14 scale:{v15, v25}];
  (*(v7 + 104))(v11, *MEMORY[0x277CDF3C0], v6);
  v27 = sub_21CB82044();
  v28 = *(v7 + 8);
  v28(v11, v6);
  [v26 setAppearance_];
  [v26 setDrawBorder_];
  v29 = [v22 prepareImageForDescriptor_];
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = v29;
  v31 = [v29 CGImage];
  if (!v31)
  {

LABEL_7:
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    goto LABEL_8;
  }

  v32 = v31;
  [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  v26 = v30;
  v22 = v32;
LABEL_8:

  v28(v13, v6);
  sub_21CB84BA4();
  v34 = v39;
  v33 = v40;
  v35 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277CE0FE0], v41);
  v36 = sub_21CB84C64();

  (*(v33 + 8))(v34, v35);
  sub_21CB85214();
  sub_21CB82374();
  *&v42[6] = v43;
  *&v42[22] = v44;
  *&v42[38] = v45;
  v37 = *&v42[16];
  *(a1 + 18) = *v42;
  *a1 = v36;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v37;
  result = *&v42[32];
  *(a1 + 50) = *&v42[32];
  *(a1 + 64) = *&v42[46];
  return result;
}

uint64_t sub_21C74F120(uint64_t a1)
{
  v33 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v31 = &v30 - v17;
  MEMORY[0x28223BE20](v16);
  v32 = &v30 - v18;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v30 = sub_21CB81034();
  v19 = *(v30 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v23 = *(v2 + 8);
  v23(v6, v1);
  v23(v9, v1);
  v23(v12, v1);
  v23(v15, v1);
  swift_setDeallocating();
  (*(v19 + 8))(v22 + v21, v30);
  swift_deallocClassInstance();
  v24 = v32;
  sub_21CB81004();
  v23(v31, v1);
  v23(v24, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D83B88];
  *(v25 + 16) = xmmword_21CBA0690;
  v27 = MEMORY[0x277D83C10];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = v33;
  v28 = sub_21CB85594();

  return v28;
}

uint64_t sub_21C74F50C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21C6F35D0;

  return sub_21C74F8C8();
}

uint64_t objectdestroy_104Tm()
{
  v1 = type metadata accessor for PMAppCommands();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = v1[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v1[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF170, &qword_21CBABBC8);
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = v1[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF178, &unk_21CBABBD0);
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);
  v16 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21CB82484();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_21CB82A34();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  v22 = *(v5 + v1[12] + 8);

  v23 = *(v5 + v1[13] + 8);

  v24 = *(v5 + v1[14] + 8);

  v25 = *(v5 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C74F8C8()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21C74F974();
}

uint64_t sub_21C74F974()
{
  v1[18] = v0;
  sub_21CB858B4();
  v1[19] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_21C74FA10, v3, v2);
}

uint64_t sub_21C74FA10()
{
  v1 = [objc_opt_self() sharedObserver];
  v0[22] = v1;
  if ([v1 isUsingICloud])
  {
    v2 = [objc_opt_self() sharedMonitor];
    v3 = [v2 canKeychainSyncBeEnabled];

    if (v3)
    {
      v0[2] = v0;
      v0[7] = v0 + 23;
      v0[3] = sub_21C79CDA4;
      v4 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_21C7A1808;
      v0[13] = &block_descriptor;
      v0[14] = v4;
      [v1 needsToVerifyTermsWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v6 = v0[18];
    v7 = v0[19];

    if (*(v6 + 56))
    {
      goto LABEL_9;
    }

LABEL_10:

    *(v6 + 56) = 0;
    goto LABEL_11;
  }

  v6 = v0[18];
  v5 = v0[19];

  if ((*(v6 + 56) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v8 = v0[18];
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  v0[10] = v8;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810C4();

LABEL_11:
  v10 = v0[1];

  return v10();
}

uint64_t sub_21C74FD7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21C74FDC4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C74FF00, v5, v4);
}

uint64_t sub_21C74FF00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C74FFA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C750050(a1, v4, v5, v1 + 32);
}

uint64_t sub_21C750050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_21CB858B4();
  v4[15] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[16] = v6;
  v4[17] = v5;

  return MEMORY[0x2822009F8](sub_21C7500E8, v6, v5);
}

uint64_t sub_21C7500E8()
{
  v1 = v0[14];
  v2 = *v1;
  v0[18] = *v1;
  v3 = v1[1];
  v0[19] = v3;
  v4 = v1[2];
  v0[8] = v2;
  v0[9] = v4;
  v0[20] = v4;
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = v4;

  sub_21C74C770((v0 + 8), (v0 + 11));
  sub_21C7504F0((v0 + 9), (v0 + 12));
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5420, &qword_21CBBDF40);
  MEMORY[0x21CF14A20]();
  v5 = v0[10];
  v0[22] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_21CA23D5C;
    v8 = v0[14];

    return sub_21CA23744(v6);
  }

  else
  {
    v10 = v0[15];
    sub_21C7509C4((v0 + 8));

    sub_21C6EA794((v0 + 9), &qword_27CDF5470, &qword_21CBBDF88);

    v11 = v0[1];

    return v11();
  }
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = (type metadata accessor for PMSourceGrid() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(type metadata accessor for PMAppSourceListModel.Source(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = (v0 + v3);
  v11 = *v10;

  v12 = *(v10 + 2);

  v13 = *(v10 + 4);

  v14 = *(v10 + 6);

  v15 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB82834();
    (*(*(v16 - 8) + 8))(&v10[v15], v16);
  }

  else
  {
    v17 = *&v10[v15];
  }

  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v18 = sub_21CB85C44();
    (*(*(v18 - 8) + 8))(v0 + v7, v18);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_21C7504F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5470, &qword_21CBBDF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21C750560(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    v5 = v29;
    v6 = [v29 domain];
    v7 = sub_21CB855C4();
    v9 = v8;

    v10 = *MEMORY[0x277CD4770];
    if (v7 == sub_21CB855C4() && v9 == v11)
    {
    }

    else
    {
      v13 = sub_21CB86344();

      if ((v13 & 1) == 0)
      {
LABEL_20:

LABEL_21:
        *(a1 + 16) = 0;
        if (qword_27CDEA470 != -1)
        {
          swift_once();
        }

        v22 = sub_21CB81C84();
        __swift_project_value_buffer(v22, qword_27CE186E0);
        v23 = a2;
        v5 = sub_21CB81C64();
        v24 = sub_21CB85AF4();

        if (os_log_type_enabled(v5, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138412290;
          v27 = a2;
          v28 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 4) = v28;
          *v26 = v28;
          _os_log_impl(&dword_21C6E5000, v5, v24, "Failed LocalAuthentication auth attempt for Passwords with error: %@", v25, 0xCu);
          sub_21C6EA794(v26, &unk_27CDF76B0, &qword_21CBA2BE0);
          MEMORY[0x21CF16D90](v26, -1, -1);
          v17 = v25;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    if ([v29 code]== -2)
    {
      *(a1 + 16) = 1;
      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v18 = sub_21CB81C84();
      __swift_project_value_buffer(v18, qword_27CE186E0);
      v19 = sub_21CB81C64();
      v20 = sub_21CB85B14();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_21C6E5000, v19, v20, "User cancelled auth attempt", v21, 2u);
        MEMORY[0x21CF16D90](v21, -1, -1);
      }

      goto LABEL_26;
    }

    goto LABEL_20;
  }

  *(a1 + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  sub_21CACC6CC(0, 1);
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v14 = sub_21CB81C84();
  __swift_project_value_buffer(v14, qword_27CE186E0);
  v5 = sub_21CB81C64();
  v15 = sub_21CB85B14();
  if (os_log_type_enabled(v5, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21C6E5000, v5, v15, "Successfully unlocked Passwords", v16, 2u);
    v17 = v16;
LABEL_25:
    MEMORY[0x21CF16D90](v17, -1, -1);
  }

LABEL_26:
}

void sub_21C750A80()
{
  if (*(v0 + 16) == 1)
  {
    *(v0 + 16) = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if ((v1 & 1) == 0)
    {
      sub_21C750B10();
    }
  }
}

void sub_21C750B10()
{
  aBlock[16] = *MEMORY[0x277D85DE8];
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if ((aBlock[0] & 1) == 0)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
    v19 = WBSAuthenticationPolicyForPasswordManager();
    aBlock[0] = 0;
    v7 = [v6 canEvaluatePolicy_error_];
    v8 = aBlock[0];
    if (v7)
    {
      v9 = aBlock[0];
    }

    else if (!aBlock[0] || [aBlock[0] code] == -5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 1;

      sub_21CB81DC4();
      sub_21CACC6CC(0, 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7850, &qword_21CBC6198);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA15B0;
    *(inited + 32) = 1037;
    *(inited + 40) = sub_21CACC8A8();
    *(inited + 48) = v11;
    *(inited + 56) = 1030;
    sub_21CB81014();
    v12 = sub_21CB81004();
    v14 = v13;
    (*(v2 + 8))(v5, v1);
    *(inited + 64) = v12;
    *(inited + 72) = v14;
    v15 = sub_21CB133DC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7858, &unk_21CBC61A0);
    swift_arrayDestroy();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;

    sub_21CB81DC4();
    sub_21CADA76C(v15);

    v16 = sub_21CB85464();

    aBlock[4] = sub_21CACC9FC;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CACBE9C;
    aBlock[3] = &block_descriptor_37;
    v17 = _Block_copy(aBlock);

    [v6 evaluatePolicy:v19 options:v16 reply:v17];

    _Block_release(v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void *sub_21C750F40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_21C750FB8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21C750FE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21C751014@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_21C75113C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21C79AF88(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21C7511A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21CB855C4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21C7511D4(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21CB827C4();
  }

  else
  {
    sub_21CB824F4();
  }

  return sub_21CB828F4();
}

uint64_t sub_21C75123C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21CB827C4();
    sub_21CB828F4();
    sub_21C79B0BC();
  }

  else
  {
    sub_21CB824F4();
    sub_21CB828F4();
    sub_21C79B218(&qword_27CDEA598, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_21C751330(uint64_t a1, int a2)
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

uint64_t sub_21C751350(uint64_t result, int a2, int a3)
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

uint64_t sub_21C75140C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PMAccount(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C7514B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PMAccount(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C7515D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C751640()
{
  v1 = sub_21CB80BE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C751704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACB0, &qword_21CBA0360);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21C751840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACB0, &qword_21CBA0360);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21C751ADC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21C751B34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C751B6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C751C64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_21C751CBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21C751D28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_21C751D84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21C751DE0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21C751E34()
{
  MEMORY[0x21CF16E70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7520C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C752100()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C75213C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C7B5208(v4);
}

uint64_t sub_21C75216C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C7B57D0(v2, v3);
}

uint64_t sub_21C7521C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C752200()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C75225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21C752364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3010, &unk_21CBA8EB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C75247C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C7B5320(v4);
}

uint64_t sub_21C752554(uint64_t a1)
{
  result = sub_21C7D1210(&qword_27CDEB2B8, type metadata accessor for PMAccount);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21C7525F4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t sub_21C7527D8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[18];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21C7529BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21CB85B74();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C752AEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_21CB85B74();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C752C1C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_21C752DAC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21C752F4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB420, &qword_21CBA1D90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C752FF4(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  type metadata accessor for PMAccount(255);
  type metadata accessor for PMAccountDetailsView(255);
  sub_21C705D90(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21C705D90(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7530E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C75314C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C7531BC()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v54 = *(*(v2 - 1) + 64);
  v5 = v0 + v4;
  v6 = *(v0 + v4 + 8);

  v7 = (v0 + v4 + v2[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v5 + v2[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v1;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v4 = (v3 + 16) & ~v3;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    v1 = v53;
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v5 + v2[7];
  if (*(v51 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v54, v3 | 7);
}

uint64_t sub_21C753818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21C7538D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_21C753998()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C7539D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C753AA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C753B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5A0, &qword_21CBA2180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C753BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB5A0, &qword_21CBA2180);
  sub_21C7D6B4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C753C40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21CB83F04();
  sub_21CB829D4();
  swift_getWitnessTable();
  sub_21C7D6AF4();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C753D84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C753DBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for PMAccount(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_21C753F58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = type metadata accessor for PMAccount(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21C7540F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7B8, &qword_21CBA2558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C754180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7B0, &qword_21CBA2550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7541F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6D0, &qword_21CBA24A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB6C8, &qword_21CBA2498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB710, &qword_21CBA2508);
  sub_21C7D9C20();
  type metadata accessor for PMAirDropView();
  sub_21CB83994();
  sub_21C7DA098(&qword_27CDEB788, type metadata accessor for PMAirDropView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7543C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_21CB82F34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21C7543F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_21CB82F44();
}

uint64_t sub_21C754424(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B0, &unk_21CBA2690);
  sub_21CB85E54();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8B8, &qword_21CBA4300);
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  swift_getWitnessTable();
  sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
  swift_getWitnessTable();
  sub_21C7E3710();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8D8, &qword_21CBA26B0);
  swift_getOpaqueTypeConformance2();
  sub_21C7E37C0();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84F04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8F8, &qword_21CBA26C0);
  sub_21CB828F4();
  sub_21CB83B74();
  sub_21CB828F4();
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
  swift_getWitnessTable();
  sub_21C6F06B8(&qword_27CDEB908, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB839C4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB910, &qword_21CBA26C8);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB918, &unk_21CBA26D0);
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB920, &qword_21CBCC940);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEB928, &qword_27CDEB910, &qword_21CBA26C8);
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0);
  swift_getWitnessTable();
  sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C7E3870();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB948, &unk_21CBA26E0);
  sub_21CB828F4();
  sub_21CB834A4();
  sub_21CB825E4();
  type metadata accessor for PMAdapativeStackLabeledContentStyle();
  sub_21C7E38C4();
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C6F06B8(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB980, &qword_21CBA26F8);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for PMLargeTypeView(255);
  sub_21CB83994();
  sub_21C6F06B8(&qword_27CDEB988, type metadata accessor for PMLargeTypeView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB834A4();
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21CB834A4();
  sub_21CB834A4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21C754F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 72);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21C7550C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C755200()
{
  v1 = sub_21CB85B74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_21C755344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21CB81F14();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C7553F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21CB81F14();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C755498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C755554(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI12PMAccountRowV14SubtitleLayoutO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C755628@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7EC528();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C755678(char *a1)
{
  v2 = *a1;
  sub_21C7EC528();
  return sub_21CB82FA4();
}

uint64_t sub_21C7556FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBCB8, &qword_21CBA33B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBCC0, &qword_21CBA33C0);
  sub_21C6EADEC(&qword_27CDEBCC8, &qword_27CDEBCC0, &qword_21CBA33C0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C7557D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C755860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C75591C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C755A14()
{
  v1 = type metadata accessor for PMAccountPickerViewContent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82484();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  v13 = *(v6 + *(v1 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C755B9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C755C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC110, &qword_21CBA3CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C755C7C()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v68 = *(*(v2 - 1) + 80);
  v3 = (v68 + 16) & ~v68;
  v4 = *(*(v2 - 1) + 64);
  v67 = type metadata accessor for PMAccountPickerViewContent();
  v65 = *(*(v67 - 8) + 80);
  v5 = v4 + v65;
  v66 = *(*(v67 - 8) + 64);
  v6 = v1 + v3;
  v7 = *(v1 + v3 + 8);

  v8 = (v1 + v3 + v2[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v8 + 1);

  v11 = *(v8 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v8 + 5);

    v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v14 = v13[7];
    v15 = sub_21CB85B74();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    v16 = *&v8[v13[8] + 8];

    v17 = v13[9];
    v18 = sub_21CB85C44();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(&v8[v17], 1, v18))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v45 = *(v8 + 4);

  v46 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v47 = v46[7];
  v48 = sub_21CB85C04();
  v49 = *(v48 - 8);
  if (!(*(v49 + 48))(&v8[v47], 1, v48))
  {
    (*(v49 + 8))(&v8[v47], v48);
  }

  v50 = v46[8];
  v51 = sub_21CB85BB4();
  v52 = *(v51 - 8);
  if (!(*(v52 + 48))(&v8[v50], 1, v51))
  {
    (*(v52 + 8))(&v8[v50], v51);
  }

  v17 = v46[9];
  v18 = sub_21CB85C44();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&v8[v17], 1, v18))
  {
LABEL_3:
    (*(v19 + 8))(&v8[v17], v18);
  }

LABEL_4:
  v20 = v3 + v5;
  v21 = v6 + v2[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = v1;
    v22 = *(v21 + 8);

    v23 = *(v21 + 24);

    v24 = *(v21 + 40);

    v25 = *(v21 + 56);

    v26 = type metadata accessor for PMAccount.MockData(0);
    v27 = v26[8];
    v28 = sub_21CB80DD4();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (!v30(v21 + v27, 1, v28))
    {
      (*(v29 + 8))(v21 + v27, v28);
    }

    v31 = *(v21 + v26[9]);

    v32 = *(v21 + v26[10] + 8);

    v33 = *(v21 + v26[11] + 8);

    v34 = v26[12];
    if (!v30(v21 + v34, 1, v28))
    {
      (*(v29 + 8))(v21 + v34, v28);
    }

    v35 = v26[15];
    v36 = sub_21CB85BB4();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v21 + v35, 1, v36))
    {
      (*(v37 + 8))(v21 + v35, v36);
    }

    v38 = v26[16];
    v39 = sub_21CB85C04();
    v40 = *(v39 - 8);
    v1 = v64;
    if (!(*(v40 + 48))(v21 + v38, 1, v39))
    {
      (*(v40 + 8))(v21 + v38, v39);
    }

    v41 = *(v21 + v26[17] + 8);

    v42 = v26[18];
    v43 = sub_21CB85C44();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v21 + v42, 1, v43))
    {
      (*(v44 + 8))(v21 + v42, v43);
    }
  }

  else
  {
  }

  v53 = v20 & ~v65;
  v54 = v6 + v2[7];
  if (*(v54 + 8))
  {
  }

  v55 = v1 + v53;
  v56 = *(v1 + v53 + 8);

  v57 = *(v1 + v53 + 24);

  v58 = *(v1 + v53 + 32);

  v59 = *(v67 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = sub_21CB82484();
    (*(*(v60 - 8) + 8))(v55 + v59, v60);
  }

  else
  {
    v61 = *(v55 + v59);
  }

  v62 = *(v55 + *(v67 + 32) + 8);

  return MEMORY[0x2821FE8E8](v1, v53 + v66, v68 | v65 | 7);
}

uint64_t sub_21C7563E8()
{
  v1 = type metadata accessor for PMAccountPickerViewContent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB82484();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + *(v1 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_21C756580()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBD98, &qword_21CBA3678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBDE8, &qword_21CBA3758);
  sub_21C7FB378();
  sub_21C71F3FC();
  sub_21C7FB6BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C756694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21C756760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC370, &unk_21CBA40B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C756830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC3B0, &qword_21CBA4148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7568A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC4F0, &qword_21CBA4290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C756914(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC4A0, &unk_21CBA4260);
  swift_getTupleTypeMetadata3();
  sub_21CB85354();
  swift_getWitnessTable();
  sub_21CB84E14();

  return swift_getWitnessTable();
}

uint64_t sub_21C7569CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[12];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A8, &qword_21CBA43E0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21C756B5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PMAccount(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A0, &unk_21CBA5080);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[12];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC5A8, &qword_21CBA43E0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

void *sub_21C756CEC(void *result, int a2)
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

uint64_t sub_21C756D44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC5E0, &qword_21CBA4520);
  type metadata accessor for PMAccountRowLabelStyle();
  sub_21C6EADEC(&qword_27CDEC648, &qword_27CDEC5E0, &qword_21CBA4520);
  sub_21C7064A0(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C756E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21C756E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21C756F4C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_21C7570DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEC7B8, &unk_21CBABBE0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21C75726C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for PMAccountsContextMenu();
  v5 = *(*(v4 - 1) + 80);
  v183 = *(*(v4 - 1) + 64);
  v184 = (v5 + 32) & ~v5;
  v6 = v1 + v184;
  v7 = *(v1 + v184);

  v8 = *(v1 + v184 + 8);

  if (*(v1 + v184 + 16))
  {

    v9 = *(v6 + 24);
  }

  v10 = v6 + v4[9];
  v11 = type metadata accessor for PMAccount(0);
  v12 = *(*(v11 - 1) + 48);
  v185 = v4;
  v182 = v11;
  if (!v12(v10, 1, v11))
  {
    v13 = *(v10 + 8);

    v14 = (v10 + v11[5]);
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v14 + 1);

    v17 = *(v14 + 3);

    v180 = v12;
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v14 + 5);

      v19 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v20 = v19[7];
      v21 = sub_21CB85B74();
      (*(*(v21 - 8) + 8))(&v14[v20], v21);
      v22 = *&v14[v19[8] + 8];

      v23 = v19[9];
      v24 = sub_21CB85C44();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(&v14[v23], 1, v24))
      {
LABEL_7:
        v26 = v10 + v11[6];
        type metadata accessor for PMAccount.Storage(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *(v26 + 8);

          v28 = *(v26 + 24);

          v29 = *(v26 + 40);

          v30 = *(v26 + 56);

          v31 = type metadata accessor for PMAccount.MockData(0);
          v32 = v31[8];
          v33 = sub_21CB80DD4();
          v34 = *(v33 - 8);
          v35 = *(v34 + 48);
          if (!v35(v26 + v32, 1, v33))
          {
            (*(v34 + 8))(v26 + v32, v33);
          }

          v36 = *(v26 + v31[9]);

          v37 = *(v26 + v31[10] + 8);

          v38 = *(v26 + v31[11] + 8);

          v39 = v31[12];
          if (!v35(v26 + v39, 1, v33))
          {
            (*(v34 + 8))(v26 + v39, v33);
          }

          v40 = v31[15];
          v41 = sub_21CB85BB4();
          v42 = *(v41 - 8);
          if (!(*(v42 + 48))(v26 + v40, 1, v41))
          {
            (*(v42 + 8))(v26 + v40, v41);
          }

          v43 = v31[16];
          v44 = sub_21CB85C04();
          v45 = *(v44 - 8);
          v11 = v182;
          if (!(*(v45 + 48))(v26 + v43, 1, v44))
          {
            (*(v45 + 8))(v26 + v43, v44);
          }

          v46 = *(v26 + v31[17] + 8);

          v47 = v31[18];
          v48 = sub_21CB85C44();
          v49 = *(v48 - 8);
          v12 = v180;
          if (!(*(v49 + 48))(v26 + v47, 1, v48))
          {
            (*(v49 + 8))(v26 + v47, v48);
          }
        }

        else
        {
        }

        v58 = v10 + v11[7];
        v4 = v185;
        if (*(v58 + 8))
        {
        }

        goto LABEL_27;
      }
    }

    else
    {
      v50 = *(v14 + 4);

      v51 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v52 = v51[7];
      v53 = sub_21CB85C04();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(&v14[v52], 1, v53))
      {
        (*(v54 + 8))(&v14[v52], v53);
      }

      v55 = v51[8];
      v56 = sub_21CB85BB4();
      v57 = *(v56 - 8);
      if (!(*(v57 + 48))(&v14[v55], 1, v56))
      {
        (*(v57 + 8))(&v14[v55], v56);
      }

      v23 = v51[9];
      v24 = sub_21CB85C44();
      v25 = *(v24 - 8);
      v12 = v180;
      if ((*(v25 + 48))(&v14[v23], 1, v24))
      {
        goto LABEL_7;
      }
    }

    (*(v25 + 8))(&v14[v23], v24);
    goto LABEL_7;
  }

LABEL_27:
  v59 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80) + 28));

  v60 = v6 + v4[10];
  v61 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if ((*(*(v61 - 8) + 48))(v60, 1, v61))
  {
    goto LABEL_55;
  }

  v181 = v12;
  v62 = *(v60 + 8);

  v63 = (v60 + v11[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v64 = swift_getEnumCaseMultiPayload();
  v65 = *(v63 + 1);

  v66 = *(v63 + 3);

  if (v64 != 1)
  {
    v99 = *(v63 + 4);

    v100 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v101 = v100[7];
    v102 = sub_21CB85C04();
    v103 = *(v102 - 8);
    if (!(*(v103 + 48))(&v63[v101], 1, v102))
    {
      (*(v103 + 8))(&v63[v101], v102);
    }

    v104 = v100[8];
    v105 = sub_21CB85BB4();
    v106 = *(v105 - 8);
    if (!(*(v106 + 48))(&v63[v104], 1, v105))
    {
      (*(v106 + 8))(&v63[v104], v105);
    }

    v72 = v100[9];
    v73 = sub_21CB85C44();
    v74 = *(v73 - 8);
    v11 = v182;
    if ((*(v74 + 48))(&v63[v72], 1, v73))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v67 = *(v63 + 5);

  v68 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v69 = v68[7];
  v70 = sub_21CB85B74();
  (*(*(v70 - 8) + 8))(&v63[v69], v70);
  v71 = *&v63[v68[8] + 8];

  v72 = v68[9];
  v73 = sub_21CB85C44();
  v74 = *(v73 - 8);
  if (!(*(v74 + 48))(&v63[v72], 1, v73))
  {
LABEL_30:
    (*(v74 + 8))(&v63[v72], v73);
  }

LABEL_31:
  v75 = v60 + v11[6];
  type metadata accessor for PMAccount.Storage(0);
  v178 = v1;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v76 = *(v75 + 8);

    v77 = *(v75 + 24);

    v78 = *(v75 + 40);

    v79 = *(v75 + 56);

    v80 = type metadata accessor for PMAccount.MockData(0);
    v81 = v80[8];
    v82 = sub_21CB80DD4();
    v83 = *(v82 - 8);
    v84 = *(v83 + 48);
    if (!v84(v75 + v81, 1, v82))
    {
      (*(v83 + 8))(v75 + v81, v82);
    }

    v85 = *(v75 + v80[9]);

    v86 = *(v75 + v80[10] + 8);

    v87 = *(v75 + v80[11] + 8);

    v88 = v80[12];
    if (!v84(v75 + v88, 1, v82))
    {
      (*(v83 + 8))(v75 + v88, v82);
    }

    v89 = v80[15];
    v90 = sub_21CB85BB4();
    v91 = *(v90 - 8);
    if (!(*(v91 + 48))(v75 + v89, 1, v90))
    {
      (*(v91 + 8))(v75 + v89, v90);
    }

    v92 = v80[16];
    v93 = sub_21CB85C04();
    v94 = *(v93 - 8);
    if (!(*(v94 + 48))(v75 + v92, 1, v93))
    {
      (*(v94 + 8))(v75 + v92, v93);
    }

    v95 = *(v75 + v80[17] + 8);

    v96 = v80[18];
    v97 = sub_21CB85C44();
    v98 = *(v97 - 8);
    v11 = v182;
    if (!(*(v98 + 48))(v75 + v96, 1, v97))
    {
      (*(v98 + 8))(v75 + v96, v97);
    }
  }

  else
  {
  }

  v107 = v11;
  v108 = v60 + v11[7];
  if (*(v108 + 8))
  {
  }

  v109 = v60 + *(v61 + 20);
  v110 = type metadata accessor for PMSharingGroup();
  v111 = *(*(v110 - 1) + 48);
  if (!v111(v109, 1, v110))
  {
    v112 = sub_21CB85C44();
    (*(*(v112 - 8) + 8))(v109, v112);
    v113 = *(v109 + v110[5] + 8);

    v114 = *(v109 + v110[6]);

    v115 = *(v109 + v110[7] + 8);
  }

  v116 = v60 + *(v61 + 24);
  v117 = v111(v116, 1, v110);
  v4 = v185;
  v11 = v107;
  v1 = v178;
  v12 = v181;
  if (!v117)
  {
    v118 = sub_21CB85C44();
    (*(*(v118 - 8) + 8))(v116, v118);
    v119 = *(v116 + v110[5] + 8);

    v120 = *(v116 + v110[6]);

    v121 = *(v116 + v110[7] + 8);
  }

LABEL_55:
  v122 = v60 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
  if (v12(v122, 1, v11))
  {
    goto LABEL_79;
  }

  v123 = *(v122 + 8);

  v124 = (v122 + v11[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v125 = swift_getEnumCaseMultiPayload();
  v126 = *(v124 + 1);

  v127 = *(v124 + 3);

  if (v125 != 1)
  {
    v160 = *(v124 + 4);

    v161 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v162 = v161[7];
    v163 = sub_21CB85C04();
    v164 = *(v163 - 8);
    if (!(*(v164 + 48))(&v124[v162], 1, v163))
    {
      (*(v164 + 8))(&v124[v162], v163);
    }

    v165 = v161[8];
    v166 = sub_21CB85BB4();
    v167 = *(v166 - 8);
    if (!(*(v167 + 48))(&v124[v165], 1, v166))
    {
      (*(v167 + 8))(&v124[v165], v166);
    }

    v133 = v161[9];
    v134 = sub_21CB85C44();
    v135 = *(v134 - 8);
    v11 = v182;
    if ((*(v135 + 48))(&v124[v133], 1, v134))
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v128 = *(v124 + 5);

  v129 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v130 = v129[7];
  v131 = sub_21CB85B74();
  (*(*(v131 - 8) + 8))(&v124[v130], v131);
  v132 = *&v124[v129[8] + 8];

  v133 = v129[9];
  v134 = sub_21CB85C44();
  v135 = *(v134 - 8);
  if (!(*(v135 + 48))(&v124[v133], 1, v134))
  {
LABEL_58:
    (*(v135 + 8))(&v124[v133], v134);
  }

LABEL_59:
  v136 = v122 + v11[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v177 = v5;
    v179 = v1;
    v137 = *(v136 + 8);

    v138 = *(v136 + 24);

    v139 = *(v136 + 40);

    v140 = *(v136 + 56);

    v141 = type metadata accessor for PMAccount.MockData(0);
    v142 = v141[8];
    v143 = sub_21CB80DD4();
    v144 = *(v143 - 8);
    v145 = *(v144 + 48);
    if (!v145(v136 + v142, 1, v143))
    {
      (*(v144 + 8))(v136 + v142, v143);
    }

    v146 = *(v136 + v141[9]);

    v147 = *(v136 + v141[10] + 8);

    v148 = *(v136 + v141[11] + 8);

    v149 = v141[12];
    if (!v145(v136 + v149, 1, v143))
    {
      (*(v144 + 8))(v136 + v149, v143);
    }

    v150 = v141[15];
    v151 = sub_21CB85BB4();
    v152 = *(v151 - 8);
    if (!(*(v152 + 48))(v136 + v150, 1, v151))
    {
      (*(v152 + 8))(v136 + v150, v151);
    }

    v153 = v141[16];
    v154 = sub_21CB85C04();
    v155 = *(v154 - 8);
    v5 = v177;
    v1 = v179;
    if (!(*(v155 + 48))(v136 + v153, 1, v154))
    {
      (*(v155 + 8))(v136 + v153, v154);
    }

    v156 = *(v136 + v141[17] + 8);

    v157 = v141[18];
    v158 = sub_21CB85C44();
    v159 = *(v158 - 8);
    v11 = v182;
    if (!(*(v159 + 48))(v136 + v157, 1, v158))
    {
      (*(v159 + 8))(v136 + v157, v158);
    }
  }

  else
  {
  }

  v168 = v122 + v11[7];
  v4 = v185;
  if (*(v168 + 8))
  {
  }

LABEL_79:
  v169 = *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410) + 28));

  v170 = *(v6 + v4[11] + 8);

  v171 = (v6 + v4[12]);
  if (*v171)
  {
    v172 = v171[1];
  }

  v173 = v4[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v174 = sub_21CB82A34();
    (*(*(v174 - 8) + 8))(v6 + v173, v174);
  }

  else
  {
    v175 = *(v6 + v173);
  }

  sub_21C7025C4(*(v6 + v4[14]), *(v6 + v4[14] + 8));

  return MEMORY[0x2821FE8E8](v1, v184 + v183, v5 | 7);
}

BOOL sub_21C758768@<W0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_21C80C028(a1);
  *a2 = result;
  return result;
}

unint64_t sub_21C7587A0()
{
  v0 = *(type metadata accessor for PMAccount(0) - 8);
  result = (*(v0 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + 80) & 0xF8 | 7;
  return result;
}

void sub_21C758810(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = type metadata accessor for PMAccount(0);
  v4 = (a1 + v3[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v4 + 1);

  v7 = *(v4 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(v4 + 5);

    v9 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v10 = v9[7];
    v11 = sub_21CB85B74();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
    v12 = *&v4[v9[8] + 8];

    v13 = v9[9];
    v14 = sub_21CB85C44();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(&v4[v13], 1, v14))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v40 = *(v4 + 4);

  v41 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v42 = v41[7];
  v43 = sub_21CB85C04();
  v44 = *(v43 - 8);
  if (!(*(v44 + 48))(&v4[v42], 1, v43))
  {
    (*(v44 + 8))(&v4[v42], v43);
  }

  v45 = v41[8];
  v46 = sub_21CB85BB4();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v4[v45], 1, v46))
  {
    (*(v47 + 8))(&v4[v45], v46);
  }

  v13 = v41[9];
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v4[v13], 1, v14))
  {
LABEL_3:
    (*(v15 + 8))(&v4[v13], v14);
  }

LABEL_4:
  v16 = a1 + v3[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v16 + 8);

    v18 = *(v16 + 24);

    v19 = *(v16 + 40);

    v20 = *(v16 + 56);

    v21 = type metadata accessor for PMAccount.MockData(0);
    v22 = v21[8];
    v23 = sub_21CB80DD4();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (!v25(v16 + v22, 1, v23))
    {
      (*(v24 + 8))(v16 + v22, v23);
    }

    v26 = *(v16 + v21[9]);

    v27 = *(v16 + v21[10] + 8);

    v28 = *(v16 + v21[11] + 8);

    v29 = v21[12];
    if (!v25(v16 + v29, 1, v23))
    {
      (*(v24 + 8))(v16 + v29, v23);
    }

    v30 = v21[15];
    v31 = sub_21CB85BB4();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v16 + v30, 1, v31))
    {
      (*(v32 + 8))(v16 + v30, v31);
    }

    v33 = v21[16];
    v34 = sub_21CB85C04();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v16 + v33, 1, v34))
    {
      (*(v35 + 8))(v16 + v33, v34);
    }

    v36 = *(v16 + v21[17] + 8);

    v37 = v21[18];
    v38 = sub_21CB85C44();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v16 + v37, 1, v38))
    {
      (*(v39 + 8))(v16 + v37, v38);
    }
  }

  else
  {
  }

  v48 = a1 + v3[7];
  if (*(v48 + 8))
  {

    v49 = *(v48 + 24);
  }
}

uint64_t sub_21C758E08(uint64_t a1, uint64_t a2)
{
  sub_21C80CB60(a1, a2, type metadata accessor for PMAccount);

  return type metadata accessor for PMAccount(0);
}

uint64_t sub_21C758EC8()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v58 = *(*(v2 - 1) + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = (v0 + v4 + v2[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v8 + 1);

  v11 = *(v8 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v8 + 5);

    v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v14 = v13[7];
    v15 = sub_21CB85B74();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    v16 = *&v8[v13[8] + 8];

    v17 = v13[9];
    v18 = sub_21CB85C44();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(&v8[v17], 1, v18))
    {
      (*(v19 + 8))(&v8[v17], v18);
    }
  }

  else
  {
    v20 = *(v8 + 4);

    v21 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v22 = v21[7];
    v23 = sub_21CB85C04();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(&v8[v22], 1, v23))
    {
      (*(v24 + 8))(&v8[v22], v23);
    }

    v25 = v21[8];
    v26 = sub_21CB85BB4();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(&v8[v25], 1, v26))
    {
      (*(v27 + 8))(&v8[v25], v26);
    }

    v28 = v21[9];
    v29 = sub_21CB85C44();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(&v8[v28], 1, v29))
    {
      (*(v30 + 8))(&v8[v28], v29);
    }
  }

  v31 = v6 + v2[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = v1;
    v32 = *(v31 + 8);

    v33 = *(v31 + 24);

    v34 = *(v31 + 40);

    v35 = *(v31 + 56);

    v36 = type metadata accessor for PMAccount.MockData(0);
    v37 = v36[8];
    v38 = sub_21CB80DD4();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (!v40(v31 + v37, 1, v38))
    {
      (*(v39 + 8))(v31 + v37, v38);
    }

    v41 = *(v31 + v36[9]);

    v42 = *(v31 + v36[10] + 8);

    v43 = *(v31 + v36[11] + 8);

    v44 = v36[12];
    if (!v40(v31 + v44, 1, v38))
    {
      (*(v39 + 8))(v31 + v44, v38);
    }

    v45 = v36[15];
    v46 = sub_21CB85BB4();
    v47 = *(v46 - 8);
    v4 = (v3 + 32) & ~v3;
    if (!(*(v47 + 48))(v31 + v45, 1, v46))
    {
      (*(v47 + 8))(v31 + v45, v46);
    }

    v48 = v36[16];
    v49 = sub_21CB85C04();
    v50 = *(v49 - 8);
    v1 = v57;
    if (!(*(v50 + 48))(v31 + v48, 1, v49))
    {
      (*(v50 + 8))(v31 + v48, v49);
    }

    v51 = *(v31 + v36[17] + 8);

    v52 = v36[18];
    v53 = sub_21CB85C44();
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(v31 + v52, 1, v53))
    {
      (*(v54 + 8))(v31 + v52, v53);
    }
  }

  else
  {
  }

  v55 = v6 + v2[7];
  if (*(v55 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v58, v3 | 7);
}

uint64_t sub_21C759544()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for PMAccountsContextMenu();
  v5 = *(*(v4 - 1) + 80);
  v185 = *(*(v4 - 1) + 64);
  v186 = (v5 + 32) & ~v5;
  v6 = v1 + v186;
  v7 = *(v1 + v186);

  v8 = *(v1 + v186 + 8);

  if (*(v1 + v186 + 16))
  {

    v9 = *(v6 + 24);
  }

  v10 = v6 + v4[9];
  v11 = type metadata accessor for PMAccount(0);
  v12 = *(*(v11 - 1) + 48);
  v187 = v4;
  v184 = v11;
  if (!v12(v10, 1, v11))
  {
    v13 = *(v10 + 8);

    v14 = (v10 + v11[5]);
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v14 + 1);

    v17 = *(v14 + 3);

    v182 = v12;
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v14 + 5);

      v19 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v20 = v19[7];
      v21 = sub_21CB85B74();
      (*(*(v21 - 8) + 8))(&v14[v20], v21);
      v22 = *&v14[v19[8] + 8];

      v23 = v19[9];
      v24 = sub_21CB85C44();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(&v14[v23], 1, v24))
      {
LABEL_7:
        v26 = v10 + v11[6];
        type metadata accessor for PMAccount.Storage(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *(v26 + 8);

          v28 = *(v26 + 24);

          v29 = *(v26 + 40);

          v30 = *(v26 + 56);

          v31 = type metadata accessor for PMAccount.MockData(0);
          v32 = v31[8];
          v33 = sub_21CB80DD4();
          v34 = *(v33 - 8);
          v35 = *(v34 + 48);
          if (!v35(v26 + v32, 1, v33))
          {
            (*(v34 + 8))(v26 + v32, v33);
          }

          v36 = *(v26 + v31[9]);

          v37 = *(v26 + v31[10] + 8);

          v38 = *(v26 + v31[11] + 8);

          v39 = v31[12];
          if (!v35(v26 + v39, 1, v33))
          {
            (*(v34 + 8))(v26 + v39, v33);
          }

          v40 = v31[15];
          v41 = sub_21CB85BB4();
          v42 = *(v41 - 8);
          if (!(*(v42 + 48))(v26 + v40, 1, v41))
          {
            (*(v42 + 8))(v26 + v40, v41);
          }

          v43 = v31[16];
          v44 = sub_21CB85C04();
          v45 = *(v44 - 8);
          v11 = v184;
          if (!(*(v45 + 48))(v26 + v43, 1, v44))
          {
            (*(v45 + 8))(v26 + v43, v44);
          }

          v46 = *(v26 + v31[17] + 8);

          v47 = v31[18];
          v48 = sub_21CB85C44();
          v49 = *(v48 - 8);
          v12 = v182;
          if (!(*(v49 + 48))(v26 + v47, 1, v48))
          {
            (*(v49 + 8))(v26 + v47, v48);
          }
        }

        else
        {
        }

        v58 = v10 + v11[7];
        v4 = v187;
        if (*(v58 + 8))
        {
        }

        goto LABEL_27;
      }
    }

    else
    {
      v50 = *(v14 + 4);

      v51 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v52 = v51[7];
      v53 = sub_21CB85C04();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(&v14[v52], 1, v53))
      {
        (*(v54 + 8))(&v14[v52], v53);
      }

      v55 = v51[8];
      v56 = sub_21CB85BB4();
      v57 = *(v56 - 8);
      if (!(*(v57 + 48))(&v14[v55], 1, v56))
      {
        (*(v57 + 8))(&v14[v55], v56);
      }

      v23 = v51[9];
      v24 = sub_21CB85C44();
      v25 = *(v24 - 8);
      v12 = v182;
      if ((*(v25 + 48))(&v14[v23], 1, v24))
      {
        goto LABEL_7;
      }
    }

    (*(v25 + 8))(&v14[v23], v24);
    goto LABEL_7;
  }

LABEL_27:
  v59 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80) + 28));

  v60 = v6 + v4[10];
  v61 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if ((*(*(v61 - 8) + 48))(v60, 1, v61))
  {
    goto LABEL_55;
  }

  v183 = v12;
  v62 = *(v60 + 8);

  v63 = (v60 + v11[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v64 = swift_getEnumCaseMultiPayload();
  v65 = *(v63 + 1);

  v66 = *(v63 + 3);

  if (v64 != 1)
  {
    v99 = *(v63 + 4);

    v100 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v101 = v100[7];
    v102 = sub_21CB85C04();
    v103 = *(v102 - 8);
    if (!(*(v103 + 48))(&v63[v101], 1, v102))
    {
      (*(v103 + 8))(&v63[v101], v102);
    }

    v104 = v100[8];
    v105 = sub_21CB85BB4();
    v106 = *(v105 - 8);
    if (!(*(v106 + 48))(&v63[v104], 1, v105))
    {
      (*(v106 + 8))(&v63[v104], v105);
    }

    v72 = v100[9];
    v73 = sub_21CB85C44();
    v74 = *(v73 - 8);
    v11 = v184;
    if ((*(v74 + 48))(&v63[v72], 1, v73))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v67 = *(v63 + 5);

  v68 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v69 = v68[7];
  v70 = sub_21CB85B74();
  (*(*(v70 - 8) + 8))(&v63[v69], v70);
  v71 = *&v63[v68[8] + 8];

  v72 = v68[9];
  v73 = sub_21CB85C44();
  v74 = *(v73 - 8);
  if (!(*(v74 + 48))(&v63[v72], 1, v73))
  {
LABEL_30:
    (*(v74 + 8))(&v63[v72], v73);
  }

LABEL_31:
  v75 = v60 + v11[6];
  type metadata accessor for PMAccount.Storage(0);
  v180 = v1;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v76 = *(v75 + 8);

    v77 = *(v75 + 24);

    v78 = *(v75 + 40);

    v79 = *(v75 + 56);

    v80 = type metadata accessor for PMAccount.MockData(0);
    v81 = v80[8];
    v82 = sub_21CB80DD4();
    v83 = *(v82 - 8);
    v84 = *(v83 + 48);
    if (!v84(v75 + v81, 1, v82))
    {
      (*(v83 + 8))(v75 + v81, v82);
    }

    v85 = *(v75 + v80[9]);

    v86 = *(v75 + v80[10] + 8);

    v87 = *(v75 + v80[11] + 8);

    v88 = v80[12];
    if (!v84(v75 + v88, 1, v82))
    {
      (*(v83 + 8))(v75 + v88, v82);
    }

    v89 = v80[15];
    v90 = sub_21CB85BB4();
    v91 = *(v90 - 8);
    if (!(*(v91 + 48))(v75 + v89, 1, v90))
    {
      (*(v91 + 8))(v75 + v89, v90);
    }

    v92 = v80[16];
    v93 = sub_21CB85C04();
    v94 = *(v93 - 8);
    if (!(*(v94 + 48))(v75 + v92, 1, v93))
    {
      (*(v94 + 8))(v75 + v92, v93);
    }

    v95 = *(v75 + v80[17] + 8);

    v96 = v80[18];
    v97 = sub_21CB85C44();
    v98 = *(v97 - 8);
    v11 = v184;
    if (!(*(v98 + 48))(v75 + v96, 1, v97))
    {
      (*(v98 + 8))(v75 + v96, v97);
    }
  }

  else
  {
  }

  v107 = v11;
  v108 = v60 + v11[7];
  if (*(v108 + 8))
  {
  }

  v109 = v60 + *(v61 + 20);
  v110 = type metadata accessor for PMSharingGroup();
  v111 = *(*(v110 - 1) + 48);
  if (!v111(v109, 1, v110))
  {
    v112 = sub_21CB85C44();
    (*(*(v112 - 8) + 8))(v109, v112);
    v113 = *(v109 + v110[5] + 8);

    v114 = *(v109 + v110[6]);

    v115 = *(v109 + v110[7] + 8);
  }

  v116 = v60 + *(v61 + 24);
  v117 = v111(v116, 1, v110);
  v4 = v187;
  v11 = v107;
  v1 = v180;
  v12 = v183;
  if (!v117)
  {
    v118 = sub_21CB85C44();
    (*(*(v118 - 8) + 8))(v116, v118);
    v119 = *(v116 + v110[5] + 8);

    v120 = *(v116 + v110[6]);

    v121 = *(v116 + v110[7] + 8);
  }

LABEL_55:
  v122 = v60 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
  if (v12(v122, 1, v11))
  {
    goto LABEL_79;
  }

  v123 = *(v122 + 8);

  v124 = (v122 + v11[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v125 = swift_getEnumCaseMultiPayload();
  v126 = *(v124 + 1);

  v127 = *(v124 + 3);

  if (v125 != 1)
  {
    v160 = *(v124 + 4);

    v161 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v162 = v161[7];
    v163 = sub_21CB85C04();
    v164 = *(v163 - 8);
    if (!(*(v164 + 48))(&v124[v162], 1, v163))
    {
      (*(v164 + 8))(&v124[v162], v163);
    }

    v165 = v161[8];
    v166 = sub_21CB85BB4();
    v167 = *(v166 - 8);
    if (!(*(v167 + 48))(&v124[v165], 1, v166))
    {
      (*(v167 + 8))(&v124[v165], v166);
    }

    v133 = v161[9];
    v134 = sub_21CB85C44();
    v135 = *(v134 - 8);
    v11 = v184;
    if ((*(v135 + 48))(&v124[v133], 1, v134))
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v128 = *(v124 + 5);

  v129 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v130 = v129[7];
  v131 = sub_21CB85B74();
  (*(*(v131 - 8) + 8))(&v124[v130], v131);
  v132 = *&v124[v129[8] + 8];

  v133 = v129[9];
  v134 = sub_21CB85C44();
  v135 = *(v134 - 8);
  if (!(*(v135 + 48))(&v124[v133], 1, v134))
  {
LABEL_58:
    (*(v135 + 8))(&v124[v133], v134);
  }

LABEL_59:
  v136 = v122 + v11[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v179 = v5;
    v181 = v1;
    v137 = *(v136 + 8);

    v138 = *(v136 + 24);

    v139 = *(v136 + 40);

    v140 = *(v136 + 56);

    v141 = type metadata accessor for PMAccount.MockData(0);
    v142 = v141[8];
    v143 = sub_21CB80DD4();
    v144 = *(v143 - 8);
    v145 = *(v144 + 48);
    if (!v145(v136 + v142, 1, v143))
    {
      (*(v144 + 8))(v136 + v142, v143);
    }

    v146 = *(v136 + v141[9]);

    v147 = *(v136 + v141[10] + 8);

    v148 = *(v136 + v141[11] + 8);

    v149 = v141[12];
    if (!v145(v136 + v149, 1, v143))
    {
      (*(v144 + 8))(v136 + v149, v143);
    }

    v150 = v141[15];
    v151 = sub_21CB85BB4();
    v152 = *(v151 - 8);
    if (!(*(v152 + 48))(v136 + v150, 1, v151))
    {
      (*(v152 + 8))(v136 + v150, v151);
    }

    v153 = v141[16];
    v154 = sub_21CB85C04();
    v155 = *(v154 - 8);
    v5 = v179;
    v1 = v181;
    if (!(*(v155 + 48))(v136 + v153, 1, v154))
    {
      (*(v155 + 8))(v136 + v153, v154);
    }

    v156 = *(v136 + v141[17] + 8);

    v157 = v141[18];
    v158 = sub_21CB85C44();
    v159 = *(v158 - 8);
    v11 = v184;
    if (!(*(v159 + 48))(v136 + v157, 1, v158))
    {
      (*(v159 + 8))(v136 + v157, v158);
    }
  }

  else
  {
  }

  v168 = v122 + v11[7];
  v4 = v187;
  if (*(v168 + 8))
  {
  }

LABEL_79:
  v169 = *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410) + 28));

  v170 = *(v6 + v4[11] + 8);

  v171 = (v6 + v4[12]);
  if (*v171)
  {
    v172 = v171[1];
  }

  v173 = v4[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v174 = sub_21CB82A34();
    (*(*(v174 - 8) + 8))(v6 + v173, v174);
  }

  else
  {
    v175 = *(v6 + v173);
  }

  v176 = (v185 + v186 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21C7025C4(*(v6 + v4[14]), *(v6 + v4[14] + 8));
  v177 = *(v1 + v176);

  return MEMORY[0x2821FE8E8](v1, v176 + 8, v5 | 7);
}