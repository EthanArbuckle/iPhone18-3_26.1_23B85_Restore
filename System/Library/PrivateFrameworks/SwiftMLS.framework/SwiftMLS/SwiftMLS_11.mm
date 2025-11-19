unint64_t sub_26BECCAAC()
{
  result = qword_28045EE60;
  if (!qword_28045EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE60);
  }

  return result;
}

uint64_t sub_26BECCB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v161 = a6;
  v162 = a8;
  v135 = a5;
  v168 = a4;
  *&v163 = a2;
  v148 = a1;
  v133 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v132 = &v123 - v15;
  v127 = type metadata accessor for MLS.AlgorithmIdentifier();
  v16 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v130 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_26C00959C();
  v129 = *(v131 - 8);
  v18 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v134 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_26C00978C();
  v136 = *(v137 - 8);
  v20 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v139 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEF0, &unk_26C0212A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v145 = (&v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v144 = &v123 - v27;
  MEMORY[0x28223BE20](v26);
  v146 = &v123 - v28;
  v29 = _s25RelativeDistinguishedNameVMa();
  v147 = *(v29 - 8);
  v30 = *(v147 + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v150 = (&v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = _s9AttributeVMa(0);
  v32 = *(*(v142 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v142);
  v143 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v149 = &v123 - v35;
  v138 = _s21RCSTBSParticipantInfoVMa();
  v128 = *(v138 - 8);
  v36 = *(v128 + 64);
  MEMORY[0x28223BE20](v138);
  v140 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for MLS.Validity();
  v38 = *(*(v141 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v141);
  v151 = &v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v152 = &v123 - v41;
  v42 = sub_26C00921C();
  v155 = *(v42 - 8);
  v156 = v42;
  v43 = *(v155 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v154 = &v123 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v157 = &v123 - v46;
  v47 = type metadata accessor for MLS.Time();
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v153 = &v123 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v158 = &v123 - v51;
  v52 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v126 = *(v52 - 8);
  v53 = *(v126 + 64);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v123 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v123 - v57;
  v59 = *(a10 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v165);
  v160 = a3;
  v60 = a7;
  v59(a7, a10);
  v61 = v58;
  v62 = v159;
  sub_26BE106CC(&v165, v58);
  if (v62)
  {

    (*(*(v162 - 8) + 8))(v168);
    return (*(*(a7 - 8) + 8))(v160, a7);
  }

  else
  {
    v64 = v154;
    v65 = v155;
    v66 = v156;
    v125 = v56;
    v124 = v52;
    v159 = a10;
    v67 = v157;
    sub_26C0091CC();
    v68 = v158;
    static MLS.Time.makeTime(from:)(v158);
    v123 = v61;
    v69 = *(v65 + 8);
    v69(v67, v66);
    sub_26C0091CC();
    v70 = v153;
    static MLS.Time.makeTime(from:)(v153);
    v155 = v60;
    v157 = 0;
    v69(v64, v66);
    v71 = v152;
    sub_26BED38EC(v68, v152, type metadata accessor for MLS.Time);
    sub_26BED38EC(v70, v71 + *(v141 + 20), type metadata accessor for MLS.Time);
    v72 = v162;
    AssociatedTypeWitness = v162;
    AssociatedConformanceWitness = a11;
    v73 = __swift_allocate_boxed_opaque_existential_1(&v165);
    v156 = *(v72 - 8);
    (*(v156 + 16))(v73, v168, v72);
    sub_26BED38EC(v71, v151, type metadata accessor for MLS.Validity);
    if (qword_28045E118 != -1)
    {
      swift_once();
    }

    v74 = sub_26C00947C();
    v75 = __swift_project_value_buffer(v74, qword_2804790F8);
    v76 = v149;
    (*(*(v74 - 8) + 16))(v149, v75, v74);
    v77 = (v76 + *(v142 + 20));
    v78 = v163;
    *v77 = v148;
    v77[1] = v78;
    _s9AttributeV5ValueV7StorageOMa(0);
    swift_storeEnumTagMultiPayload();
    v79 = v143;
    sub_26BED38EC(v76, v143, _s9AttributeVMa);
    v80 = v146;
    sub_26BED38EC(v79, v146, _s9AttributeVMa);
    v81 = v144;
    sub_26BE2E1F0(v80, v144, &qword_28045EEF0, &unk_26C0212A0);
    v82 = v145;
    sub_26BE2E1F0(v81, v145, &qword_28045EEF0, &unk_26C0212A0);
    v83 = v150;
    *v150 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
    swift_storeEnumTagMultiPayload();
    sub_26BFD3478(v82);
    sub_26BE2E258(v82, &qword_28045EEF0, &unk_26C0212A0);
    sub_26BE2E258(v81, &qword_28045EEF0, &unk_26C0212A0);
    sub_26BFD99CC(v83);
    v84 = v83;
    sub_26BE2E258(v80, &qword_28045EEF0, &unk_26C0212A0);
    sub_26BED399C(v79, _s9AttributeVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E510, &qword_26C00E4A0);
    v85 = *(v147 + 72);
    v86 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v87 = swift_allocObject();
    v163 = xmmword_26C011280;
    *(v87 + 16) = xmmword_26C011280;
    sub_26BED38EC(v84, v87 + v86, _s25RelativeDistinguishedNameVMa);
    sub_26BE038A8(&v165, &v164);
    v88 = v157;
    sub_26BE106CC(&v164, v125);
    v89 = v161;
    if (v88)
    {

      (*(v156 + 8))(v168, v72);
      (*(*(v155 - 8) + 8))(v160);
      sub_26BED399C(v84, _s25RelativeDistinguishedNameVMa);
      sub_26BED399C(v76, _s9AttributeVMa);
      sub_26BED399C(v151, type metadata accessor for MLS.Validity);
      sub_26BED399C(v152, type metadata accessor for MLS.Validity);
      sub_26BED399C(v153, type metadata accessor for MLS.Time);
      sub_26BED399C(v158, type metadata accessor for MLS.Time);
      sub_26BED399C(v123, type metadata accessor for MLS.SubjectPublicKeyInfo);
      return __swift_destroy_boxed_opaque_existential_1(&v165);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E540, &qword_26C016B90);
      v90 = *(_s11GeneralNameOMa(0) - 8);
      v91 = *(v90 + 72);
      v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = v163;
      v94 = (v93 + v92);
      *v94 = v135;
      v94[1] = v89;
      swift_storeEnumTagMultiPayload();
      sub_26BED399C(v84, _s25RelativeDistinguishedNameVMa);
      sub_26BED399C(v76, _s9AttributeVMa);
      __swift_destroy_boxed_opaque_existential_1(&v165);
      v95 = v138;
      v96 = v140;
      sub_26BED39FC(v125, v140 + *(v138 + 28), type metadata accessor for MLS.SubjectPublicKeyInfo);
      *v96 = v87;
      *(v96 + 8) = 1;
      sub_26BED39FC(v151, v96 + *(v95 + 24), type metadata accessor for MLS.Validity);
      *(v96 + *(v95 + 32)) = v93;
      sub_26C00977C();
      sub_26BED3954(&qword_28045EEF8, _s21RCSTBSParticipantInfoVMa);
      sub_26C00976C();
      v97 = v155;
      v98 = sub_26C00971C();
      v99 = sub_26BE12418(v98);
      v101 = v100;

      v103 = v159;
      v102 = v160;
      v104 = (*(v159 + 32))(v99, v101, v97, v159);
      v157 = 0;
      v105 = v104;
      v107 = v106;
      sub_26BE00258(v99, v101);
      sub_26BE00608(v105, v107);
      v108 = (2 * *(sub_26BF2E8B4(v105, v107) + 16)) | 1;
      sub_26C00957C();
      (*(*(v103 + 8) + 24))(&v165, v97);
      LOBYTE(v96) = v165;

      if (v96)
      {
        v109 = v133;
        v110 = v132;
        v111 = v168;
        v112 = v130;
        v113 = v124;
        if (qword_28045E018 != -1)
        {
          swift_once();
        }

        v114 = qword_28045FFC0;
      }

      else
      {
        v109 = v133;
        v110 = v132;
        v111 = v168;
        v112 = v130;
        v113 = v124;
        if (qword_28045E010 != -1)
        {
          swift_once();
        }

        v114 = qword_28045FFA8;
      }

      v115 = __swift_project_value_buffer(v127, v114);
      sub_26BED38EC(v115, v112, type metadata accessor for MLS.AlgorithmIdentifier);
      sub_26BE00258(v105, v107);
      (*(v156 + 8))(v111, v162);
      (*(*(v97 - 8) + 8))(v102, v97);
      (*(v136 + 8))(v139, v137);
      sub_26BED399C(v153, type metadata accessor for MLS.Time);
      sub_26BED399C(v158, type metadata accessor for MLS.Time);
      v116 = _s18RCSParticipantInfoVMa();
      sub_26BED39FC(v152, &v109[v116[5]], type metadata accessor for MLS.Validity);
      sub_26BED39FC(v123, v110, type metadata accessor for MLS.SubjectPublicKeyInfo);
      v117 = *(v126 + 56);
      v117(v110, 0, 1, v113);
      v118 = v113;
      v119 = v116[8];
      v117(&v109[v119], 1, 1, v118);
      v120 = v116[10];
      v168 = v116[9];
      v121 = *(v128 + 56);
      v122 = v138;
      v121(&v109[v120], 1, 1, v138);
      *v109 = 1;
      sub_26BED39FC(v112, &v109[v116[6]], type metadata accessor for MLS.AlgorithmIdentifier);
      (*(v129 + 32))(&v109[v116[7]], v134, v131);
      sub_26BED3050(v110, &v109[v119]);
      *&v109[v168] = 0;
      sub_26BE2E258(&v109[v120], &qword_28045E680, &unk_26C00ECF8);
      sub_26BED39FC(v140, &v109[v120], _s21RCSTBSParticipantInfoVMa);
      return (v121)(&v109[v120], 0, 1, v122);
    }
  }
}

uint64_t sub_26BECE0F8()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478F20);
  __swift_project_value_buffer(v0, qword_280478F20);
  return sub_26C009A4C();
}

uint64_t MLS.SubjectPublicKeyInfo.description.getter()
{
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000020, 0x800000026C02C330);
  v0 = MLS.AlgorithmIdentifier.description.getter();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](0x63696C627570202CLL, 0xED0000203A79654BLL);
  v1 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  sub_26C00959C();
  sub_26C00AD4C();
  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26BECE270()
{
  v1 = v0;
  v2 = 7104878;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_26C00AC1C();
  v26 = v23;
  v27 = v24;
  MEMORY[0x26D699090](0xD00000000000001DLL, 0x800000026C02C360);
  v23 = *v0;
  v7 = sub_26C00AEFC();
  MEMORY[0x26D699090](v7);

  MEMORY[0x26D699090](0x6964696C6176202CLL, 0xEC000000203A7974);
  v8 = _s18RCSParticipantInfoVMa();
  v9 = v8[5];
  type metadata accessor for MLS.Validity();
  sub_26C00AD4C();
  MEMORY[0x26D699090](0xD000000000000016, 0x800000026C02C380);
  v10 = v1 + v8[6];
  v11 = MLS.AlgorithmIdentifier.description.getter();
  MEMORY[0x26D699090](v11);

  MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
  v12 = v8[7];
  sub_26C00959C();
  sub_26C00AD4C();
  MEMORY[0x26D699090](0x63696C627570202CLL, 0xED0000203A79654BLL);
  sub_26BE2E1F0(v1 + v8[8], v6, &qword_28045EE68, &unk_26C016A90);
  v13 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    sub_26BE2E258(v6, &qword_28045EE68, &unk_26C016A90);
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    v16 = MLS.SubjectPublicKeyInfo.description.getter();
    v14 = v17;
    sub_26BED399C(v6, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v15 = v16;
  }

  MEMORY[0x26D699090](v15, v14);

  MEMORY[0x26D699090](0xD000000000000017, 0x800000026C02C3A0);
  v18 = *(v1 + v8[9]);
  if (v18)
  {
    v23 = v18;
    v24 = sub_26BFB29AC;
    v25 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEA0, &unk_26C022440);
    sub_26BED2530();
    v2 = sub_26C00A3EC();
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  MEMORY[0x26D699090](v2, v20);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return v26;
}

uint64_t sub_26BECE624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a1;
  v54 = a2;
  v59 = sub_26C00930C();
  v56 = *(v59 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v49 - v8;
  v66 = sub_26C00959C();
  v60 = *(v66 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v66);
  v61 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for MLS.AlgorithmIdentifier();
  v11 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v63 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for MLS.Validity();
  v13 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C00934C();
  v57 = *(v15 - 8);
  v16 = *(v57 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v49 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v49 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v29);
  sub_26C0096AC();
  v30 = v68;
  result = sub_26C0096BC();
  if (!v30)
  {
    v68 = v28;
    v52 = v22;
    v53 = v25;
    v50 = v19;
    v51 = v15;
    v33 = v66;
    v32 = v67;
    v34 = v70;
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BED3954(&qword_28045EDD8, type metadata accessor for MLS.Validity);
    v35 = v64;
    sub_26C0096BC();
    v65 = v34;
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BED3954(&qword_28045EEC0, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26C0096BC();
    sub_26C0096AC();
    sub_26C0096BC();
    v36 = v35;
    v37 = type metadata accessor for MLS.SubjectPublicKeyInfo();
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BED3954(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26C0096BC();
    v68 = *(*(v37 - 8) + 56);
    v68(v32, 0, 1, v37);
    (*(v56 + 104))(v58, *MEMORY[0x277D6A898], v59);
    v38 = v50;
    sub_26C0092EC();
    sub_26BED2624();
    sub_26C0097BC();
    v69 = 0;
    v39 = v60;
    (*(v57 + 8))(v38, v51);
    v40 = v70;
    v41 = v32;
    v42 = _s18RCSParticipantInfoVMa();
    v43 = v54;
    sub_26BED39FC(v36, v54 + v42[5], type metadata accessor for MLS.Validity);
    sub_26BED39FC(v63, v43 + v42[6], type metadata accessor for MLS.AlgorithmIdentifier);
    (*(v39 + 32))(v43 + v42[7], v61, v33);
    v44 = v55;
    sub_26BED2FE0(v41, v55);
    v45 = v42[8];
    v68(v43 + v45, 1, 1, v37);
    v46 = v42[9];
    v47 = v42[10];
    v48 = _s21RCSTBSParticipantInfoVMa();
    (*(*(v48 - 8) + 56))(v43 + v47, 1, 1, v48);
    *v43 = v65;
    result = sub_26BED3050(v44, v43 + v45);
    *(v43 + v46) = v40;
  }

  return result;
}

uint64_t sub_26BECEE70(uint64_t a1, void *a2)
{
  v3 = sub_26C00930C();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00934C();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  v42 = *a2;
  v20 = v41;
  result = sub_26C00976C();
  if (!v20)
  {
    v35 = v6;
    v36 = v16;
    v41 = v14;
    v33 = v7;
    v34 = v19;
    v22 = v39;
    v32 = v10;
    v23 = _s18RCSParticipantInfoVMa();
    v24 = v23[5];
    type metadata accessor for MLS.Validity();
    sub_26BED3954(&qword_28045EA80, type metadata accessor for MLS.Validity);
    v25 = v40;
    sub_26C00976C();
    v26 = v23[6];
    type metadata accessor for MLS.AlgorithmIdentifier();
    sub_26BED3954(&qword_28045EE50, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26C00976C();
    v27 = v23[7];
    sub_26C00959C();
    sub_26C00976C();
    v28 = v41;
    sub_26BE2E1F0(v25 + v23[8], v41, &qword_28045EE68, &unk_26C016A90);
    if ((*(v36 + 48))(v28, 1, v15) == 1)
    {
      result = sub_26BE2E258(v28, &qword_28045EE68, &unk_26C016A90);
    }

    else
    {
      v29 = v28;
      v30 = v34;
      sub_26BED39FC(v29, v34, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BED3954(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26C00976C();
      result = sub_26BED399C(v30, type metadata accessor for MLS.SubjectPublicKeyInfo);
    }

    if (*(v25 + v23[9]))
    {
      v42 = *(v25 + v23[9]);
      (*(v38 + 104))(v35, *MEMORY[0x277D6A898], v22);

      v31 = v32;
      sub_26C0092EC();
      sub_26BED2624();
      sub_26C00974C();
      (*(v37 + 8))(v31, v33);
    }
  }

  return result;
}

uint64_t sub_26BECF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 32);
  v14 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  (*(*(v14 - 8) + 56))(a4 + v13, 1, 1, v14);
  v15 = *(a3 + 40);
  *(a4 + *(a3 + 36)) = 0;
  v16 = _s21RCSTBSParticipantInfoVMa();
  (*(*(v16 - 8) + 56))(a4 + v15, 1, 1, v16);
  sub_26C0097FC();
  v17 = sub_26C00934C();
  (*(*(v17 - 8) + 8))(a2, v17);
  v18 = sub_26C00950C();
  (*(*(v18 - 8) + 8))(a1, v18);
  sub_26BE2E258(a4 + v13, &qword_28045EE68, &unk_26C016A90);
  if (v4)
  {
    return sub_26BE2E258(a4 + v15, &qword_28045E680, &unk_26C00ECF8);
  }

  sub_26BE2E258(a4 + v15, &qword_28045E680, &unk_26C00ECF8);
  return sub_26BED39FC(v11, a4, _s18RCSParticipantInfoVMa);
}

void sub_26BECF754(void *a1)
{
  v2 = sub_26C00934C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_28045DF68 != -1)
  {
    swift_once();
  }

  v4 = sub_26C00947C();
  __swift_project_value_buffer(v4, qword_28045E5E0);
  sub_26BED3954(&qword_28045E920, MEMORY[0x277D6A958]);
  sub_26C00AEFC();
  v5 = sub_26C00A45C();

  v6 = SecCertificateCopyExtensionValue();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_26C0090FC();
    }
  }

  type metadata accessor for MLS.IdentityError();
  sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_26BE136AC(0, 0xF000000000000000);
}

uint64_t sub_26BECFA10(__SecCertificate *a1)
{
  v2 = sub_26C00934C();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00978C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SecCertificateCopySubjectSequence();
  if (result)
  {
    v12 = result;
    v13 = sub_26C00910C();
    v15 = v14;

    sub_26BE00608(v13, v15);
    v16 = SecCertificateCopyKey(a1);
    if (!v16)
    {
      type metadata accessor for MLS.IdentityError();
      sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_13;
    }

    v30 = v7;
    v17 = v16;
    result = SecKeyCopySubjectPublicKeyInfo();
    if (result)
    {
      v18 = result;
      v34 = sub_26C00910C();
      v36 = v19;

      v20 = sub_26C00A45C();
      v21 = SecCertificateCopyExtensionValue();
      if (v21)
      {
        v22 = v21;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v35 = xmmword_26C00DA60;
          sub_26C0090FC();

          v23 = *(&v35 + 1);
          if (*(&v35 + 1) >> 60 != 15)
          {
            v29 = v35;
            sub_26BE00258(v13, v15);
            sub_26C00977C();
            v24 = _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
            v28[1] = v28;
            MEMORY[0x28223BE20](v24);
            v28[-8] = v13;
            v28[-7] = v15;
            v25 = v32;
            v26 = v34;
            v28[-6] = v31;
            v28[-5] = v26;
            v27 = v29;
            v28[-4] = v36;
            v28[-3] = v27;
            v31 = v23;
            v28[-2] = v23;
            sub_26C00973C();
            if (v25)
            {
              sub_26BE00258(v13, v15);
              sub_26BE00258(v34, v36);
              sub_26BE136AC(v29, v31);

              (*(v33 + 8))(v5, v2);
            }

            else
            {
              (*(v33 + 8))(v5, v2);
              v33 = sub_26C00971C();
              v2 = sub_26BE12418(v33);

              sub_26BE00258(v13, v15);
              sub_26BE00258(v34, v36);
              sub_26BE136AC(v29, v31);
            }

            (*(v30 + 8))(v10, v6);
            return v2;
          }
        }

        else
        {
        }
      }

      type metadata accessor for MLS.IdentityError();
      sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26BE136AC(0, 0xF000000000000000);

      sub_26BE00258(v34, v36);
LABEL_13:
      sub_26BE00258(v13, v15);
      sub_26BE00258(v13, v15);
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BECFEF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  sub_26BE00608(a2, a3);
  sub_26BF974A8(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26BED3888();
  sub_26C00972C();

  v19 = *a4;
  result = sub_26C00976C();
  if (!v8)
  {
    v17 = a5;
    v16 = *(_s18RCSParticipantInfoVMa() + 20);
    type metadata accessor for MLS.Validity();
    sub_26BED3954(&qword_28045EA80, type metadata accessor for MLS.Validity);
    sub_26C00976C();
    sub_26BE00608(v17, a6);
    sub_26BF974A8(v17, a6);
    sub_26C00972C();

    sub_26BE00608(a7, a8);
    sub_26BF974A8(a7, a8);
    sub_26C00972C();
  }

  return result;
}

uint64_t sub_26BED00C4(__SecCertificate *a1, uint64_t a2)
{
  v174 = a2;
  v159 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v4 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v160 = v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLS.Time();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v155 = v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v161 = v147 - v11;
  v163 = sub_26C00921C();
  v165 = *(v163 - 8);
  v12 = *(v165 + 64);
  v13 = MEMORY[0x28223BE20](v163);
  v162 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v157 = v147 - v16;
  MEMORY[0x28223BE20](v15);
  v158 = v147 - v17;
  v173 = sub_26C00959C();
  v169 = *(v173 - 8);
  v18 = *(v169 + 64);
  MEMORY[0x28223BE20](v173);
  v168 = v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MLS.AlgorithmIdentifier();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v166 = v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s18SignatureAlgorithmVMa();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v167 = v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v170 = v147 - v27;
  v28 = _s9PublicKeyVMa(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v156 = v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v164 = v147 - v33;
  MEMORY[0x28223BE20](v32);
  v171 = v147 - v34;
  v35 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v36 = *(v35 - 8);
  v175 = v35;
  v176 = v36;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v172 = v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = v147 - v40;
  v42 = sub_26C00934C();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v50 = v147 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = v147 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = v147 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = v147 - v57;
  v59 = v181;
  v60 = sub_26BECFA10(a1);
  if (v59)
  {
    return 1;
  }

  v147[1] = v45;
  v148 = v53;
  v151 = v50;
  v150 = a1;
  v149 = v41;
  v154 = 0;
  v152 = v60;
  v153 = v61;
  v63 = _s18RCSParticipantInfoVMa();
  v64 = v2;
  sub_26BE2E1F0(v2 + *(v63 + 32), v58, &qword_28045EE68, &unk_26C016A90);
  v181 = v58;
  sub_26BE2E1F0(v58, v56, &qword_28045EE68, &unk_26C016A90);
  v65 = v175;
  v66 = *(v176 + 48);
  v67 = (v66)(v56, 1, v175);
  sub_26BE2E258(v56, &qword_28045EE68, &unk_26C016A90);
  if (v67 != 1)
  {
    v150 = v66;
    v77 = v65;
    v78 = v181;
    v79 = v174;
    v80 = v173;
    goto LABEL_9;
  }

  v68 = SecCertificateCopyKey(v150);
  if (!v68)
  {
    type metadata accessor for MLS.IdentityError();
    sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_26BE00258(v152, v153);
LABEL_14:
    v86 = v181;
LABEL_15:
    sub_26BE2E258(v86, &qword_28045EE68, &unk_26C016A90);
    return 1;
  }

  v69 = v68;
  v150 = v66;
  v147[0] = v63;
  result = SecKeyCopySubjectPublicKeyInfo();
  if (result)
  {
    v70 = result;
    v71 = sub_26C00910C();
    v73 = v72;

    sub_26BE00608(v71, v73);
    sub_26BF974A8(v71, v73);
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BED3954(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v74 = v148;
    v75 = v154;
    sub_26C0096CC();
    v76 = v181;
    sub_26BE2E258(v181, &qword_28045EE68, &unk_26C016A90);

    sub_26BE00258(v71, v73);
    v154 = v75;
    if (v75)
    {
      sub_26BE00258(v152, v153);
      return 1;
    }

    v2 = v64;
    v77 = v65;
    (*(v176 + 56))(v74, 0, 1, v65);
    sub_26BED2FE0(v74, v76);
    v78 = v76;
    v79 = v174;
    v80 = v173;
    v63 = v147[0];
LABEL_9:
    v81 = v151;
    sub_26BE2E1F0(v78, v151, &qword_28045EE68, &unk_26C016A90);
    v82 = (v150)(v81, 1, v77);
    v83 = v172;
    if (v82 == 1)
    {
      sub_26BE2E258(v81, &qword_28045EE68, &unk_26C016A90);
      type metadata accessor for MLS.IdentityError();
      sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26BE00258(v152, v153);
      sub_26BE2E258(v78, &qword_28045EE68, &unk_26C016A90);
      return 1;
    }

    v147[0] = v63;
    v84 = v149;
    sub_26BED39FC(v81, v149, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BED38EC(v84, v83, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v85 = v154;
    sub_26BFCD8D0(v83, v171);
    if (v85)
    {
      sub_26BE00258(v152, v153);
      sub_26BED399C(v84, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BE2E258(v181, &qword_28045EE68, &unk_26C016A90);
      return 1;
    }

    v87 = v147[0];
    v88 = v166;
    sub_26BED38EC(v2 + *(v147[0] + 24), v166, type metadata accessor for MLS.AlgorithmIdentifier);
    v89 = v170;
    sub_26BFD001C(v88, v170);
    v90 = v167;
    sub_26BED38EC(v89, v167, _s18SignatureAlgorithmVMa);
    v91 = v2 + *(v87 + 28);
    v92 = v168;
    (*(v169 + 16))(v168, v91, v80);
    sub_26BFE6910(v90, v92, v177);
    v176 = v2;
    v179[2] = v177[2];
    v179[3] = v177[3];
    v180 = v178;
    v179[0] = v177[0];
    v179[1] = v177[1];
    v93 = sub_26BED16C4(v179, v152, v153, v89);
    v94 = v181;
    v95 = v89;
    if (v93)
    {
      v96 = v79;
      v97 = v161;
      sub_26BE2E1F0(v96, v161, &qword_28045E4A8, &unk_26C00ECB0);
      v98 = v165;
      v99 = v163;
      if ((*(v165 + 48))(v97, 1, v163) == 1)
      {
        sub_26BE2E258(v97, &qword_28045E4A8, &unk_26C00ECB0);
      }

      else
      {
        v124 = v158;
        (*(v98 + 32))(v158, v97, v99);
        v125 = v176 + *(v147[0] + 20);
        v126 = v155;
        sub_26BED38EC(v125, v155, type metadata accessor for MLS.Time);
        v127 = v157;
        Date.init(_:)(v126, v157);
        v128 = type metadata accessor for MLS.Validity();
        sub_26BED38EC(v125 + *(v128 + 20), v126, type metadata accessor for MLS.Time);
        Date.init(_:)(v126, v162);
        sub_26BED3954(&qword_28045EED0, MEMORY[0x277CC9578]);
        if ((sub_26C00A40C() & 1) == 0 || (sub_26C00A3FC() & 1) == 0)
        {
          v176 = type metadata accessor for MLS.IdentityError();
          sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
          v154 = swift_allocError();
          v131 = v130;
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EAB0, &qword_26C014280);
          v133 = *(v132 + 48);
          v134 = *(v132 + 64);
          v135 = v124;
          v136 = v127;
          v137 = v165;
          v138 = *(v165 + 16);
          v139 = v135;
          v138(v131);
          (v138)(v131 + v133, v136, v99);
          v140 = v162;
          (v138)(v131 + v134, v162, v99);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_26BEC9DC0(v179);
          sub_26BE00258(v152, v153);
          v141 = *(v137 + 8);
          v141(v140, v99);
          v141(v136, v99);
          v141(v139, v99);
          sub_26BED399C(v170, _s18SignatureAlgorithmVMa);
          sub_26BED399C(v171, _s9PublicKeyVMa);
          sub_26BED399C(v149, type metadata accessor for MLS.SubjectPublicKeyInfo);
          v86 = v181;
          goto LABEL_15;
        }

        v129 = *(v165 + 8);
        v129(v162, v99);
        v129(v127, v99);
        v129(v124, v99);
        v94 = v181;
      }

      v100 = *(v176 + *(v147[0] + 36));
      v101 = v89;
      if (v100)
      {
        v102 = v171;
        if (*(v100 + 16) && (sub_26BFB2598(v84, v100) & 1) == 0)
        {
          type metadata accessor for MLS.IdentityError();
          sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_26BEC9DC0(v179);
          sub_26BE00258(v152, v153);
          sub_26BED399C(v101, _s18SignatureAlgorithmVMa);
          sub_26BED399C(v102, _s9PublicKeyVMa);
          sub_26BED399C(v84, type metadata accessor for MLS.SubjectPublicKeyInfo);
          v86 = v94;
          goto LABEL_15;
        }
      }

      else
      {
        v102 = v171;
      }

      sub_26BEC9DC0(v179);
      sub_26BE00258(v152, v153);
      sub_26BED399C(v101, _s18SignatureAlgorithmVMa);
      sub_26BED399C(v102, _s9PublicKeyVMa);
      sub_26BED399C(v84, type metadata accessor for MLS.SubjectPublicKeyInfo);
      v86 = v94;
      goto LABEL_15;
    }

    if (qword_28045DF98 != -1)
    {
      swift_once();
    }

    v103 = sub_26C009A5C();
    __swift_project_value_buffer(v103, qword_280478F20);
    v104 = v171;
    v105 = v164;
    sub_26BED38EC(v171, v164, _s9PublicKeyVMa);
    v106 = v152;
    v107 = v153;
    sub_26BE00608(v152, v153);
    sub_26BEC9F28(v179, v177);
    v108 = sub_26C009A3C();
    v109 = sub_26C00A9FC();
    sub_26BE00258(v106, v107);
    sub_26BEC9DC0(v179);
    if (!os_log_type_enabled(v108, v109))
    {

      sub_26BED399C(v105, _s9PublicKeyVMa);
LABEL_46:
      type metadata accessor for MLS.IdentityError();
      sub_26BED3954(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26BEC9DC0(v179);
      sub_26BE00258(v152, v153);
      sub_26BED399C(v95, _s18SignatureAlgorithmVMa);
      sub_26BED399C(v104, _s9PublicKeyVMa);
      sub_26BED399C(v84, type metadata accessor for MLS.SubjectPublicKeyInfo);
      goto LABEL_14;
    }

    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *&v177[0] = v111;
    *v110 = 136315650;
    v112 = v152;
    v113 = v153;
    sub_26BE00608(v152, v153);
    v114 = v105;
    v115 = sub_26C00901C();
    v117 = v116;
    sub_26BE00258(v112, v113);
    v118 = sub_26BE29740(v115, v117, v177);

    *(v110 + 4) = v118;
    *(v110 + 12) = 2080;
    v119 = v114;
    v120 = v156;
    sub_26BED38EC(v119, v156, _s9PublicKeyVMa);
    v121 = v160;
    sub_26BED38EC(v120, v160, _s9PublicKeyV16BackingPublicKeyOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v143 = 0x800000026C02C3C0;
        v142 = 0xD000000000000011;
        goto LABEL_42;
      }

      v123 = 825374032;
    }

    else if (EnumCaseMultiPayload)
    {
      v123 = 876098384;
    }

    else
    {
      v123 = 909455952;
    }

    v142 = v123 | 0x6275502E00000000;
    v143 = 0xEE0079654B63696CLL;
LABEL_42:
    sub_26BED399C(v120, _s9PublicKeyVMa);
    sub_26BED399C(v164, _s9PublicKeyVMa);
    sub_26BED399C(v121, _s9PublicKeyV16BackingPublicKeyOMa);
    v144 = sub_26BE29740(v142, v143, v177);

    *(v110 + 14) = v144;
    *(v110 + 22) = 2080;
    if (v180)
    {
      v145 = 0x4153444445;
    }

    else
    {
      v145 = 0x4153444345;
    }

    v146 = sub_26BE29740(v145, 0xE500000000000000, v177);

    *(v110 + 24) = v146;
    _os_log_impl(&dword_26BDFE000, v108, v109, "Verify for %s failed (key: %s, sig: %s)", v110, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v111, -1, -1);
    MEMORY[0x26D69A4E0](v110, -1, -1);

    v84 = v149;
    v104 = v171;
    v95 = v170;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BED16C4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v78 = a3;
  v79 = a2;
  v75 = a1;
  v72 = sub_26C009BBC();
  v74 = *(v72 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_26C00A2EC();
  v73 = *(v71 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_26C00A25C();
  v70 = *(v69 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A18C();
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s18SignatureAlgorithmVMa();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MLS.AlgorithmIdentifier();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MLS.Digest();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v64 - v33;
  sub_26BED38EC(a4, v23, _s18SignatureAlgorithmVMa);
  sub_26BFD0404(v23, v27);
  v66 = v12;
  v65 = v11;
  v35 = v76;
  v36 = v77;
  v37 = v78;
  sub_26BED2678(v79, v78, v27, v32);
  sub_26BED399C(v27, type metadata accessor for MLS.AlgorithmIdentifier);
  v39 = v79;
  v40 = v32;
  v41 = v34;
  sub_26BED39FC(v40, v34, type metadata accessor for MLS.Digest);
  v42 = v19;
  sub_26BED38EC(v36, v19, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v49 = v41;
    if (EnumCaseMultiPayload == 2)
    {
      v50 = v73;
      v51 = v67;
      v52 = v71;
      (*(v73 + 32))(v67, v42, v71);
      v53 = *(v75 + 48);
      v82 = *(v75 + 32);
      v83 = v53;
      v84 = *(v75 + 64);
      v54 = *(v75 + 16);
      v80 = *v75;
      v81 = v54;
      v48 = sub_26BFC6258(&v80, v49);
      (*(v50 + 8))(v51, v52);
      sub_26BED399C(v49, type metadata accessor for MLS.Digest);
    }

    else
    {
      v60 = v74;
      v61 = v19;
      v62 = v72;
      (*(v74 + 32))(v35, v61, v72);
      v86 = v39;
      v87 = v37;
      v63 = v75;
      if (*(v75 + 64))
      {
        v85 = *v75;
        sub_26BE00608(v39, v37);
        sub_26BEC9F28(v63, &v80);
        sub_26BE016A8();
        v48 = sub_26C009B8C();
        (*(v60 + 8))(v35, v62);
        sub_26BED399C(v49, type metadata accessor for MLS.Digest);
        sub_26BE00258(v86, v87);
        sub_26BEC9DC0(v63);
      }

      else
      {
        sub_26BE00608(v39, v37);
        (*(v60 + 8))(v35, v62);
        sub_26BED399C(v49, type metadata accessor for MLS.Digest);
        sub_26BE00258(v86, v87);
        v48 = 0;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v55 = v70;
      v56 = v65;
      v57 = v69;
      (*(v70 + 32))(v65, v19, v69);
      v58 = *(v75 + 48);
      v82 = *(v75 + 32);
      v83 = v58;
      v84 = *(v75 + 64);
      v59 = *(v75 + 16);
      v80 = *v75;
      v81 = v59;
      v48 = sub_26BFC5C08(&v80, v41);
      (*(v55 + 8))(v56, v57);
    }

    else
    {
      v44 = v68;
      v45 = v66;
      (*(v68 + 32))(v15, v42, v66);
      v46 = *(v75 + 48);
      v82 = *(v75 + 32);
      v83 = v46;
      v84 = *(v75 + 64);
      v47 = *(v75 + 16);
      v80 = *v75;
      v81 = v47;
      v48 = sub_26BFC5454(&v80, v41);
      (*(v44 + 8))(v15, v45);
    }

    sub_26BED399C(v41, type metadata accessor for MLS.Digest);
  }

  return v48 & 1;
}

uint64_t sub_26BED1E34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MLS.Validity();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_26C00959C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[9]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E680, &unk_26C00ECF8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_26BED206C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MLS.Validity();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for MLS.AlgorithmIdentifier();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_26C00959C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E680, &unk_26C00ECF8);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[10];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t _s18RCSParticipantInfoVMa()
{
  result = qword_28045EE70;
  if (!qword_28045EE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BED22D0()
{
  type metadata accessor for MLS.Validity();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MLS.AlgorithmIdentifier();
    if (v1 <= 0x3F)
    {
      sub_26C00959C();
      if (v2 <= 0x3F)
      {
        sub_26BED244C(319, &qword_28045EE80, type metadata accessor for MLS.SubjectPublicKeyInfo);
        if (v3 <= 0x3F)
        {
          sub_26BED23FC();
          if (v4 <= 0x3F)
          {
            sub_26BED244C(319, &qword_28045EE90, _s21RCSTBSParticipantInfoVMa);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26BED23FC()
{
  if (!qword_28045EE88)
  {
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045EE88);
    }
  }
}

void sub_26BED244C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C00AAAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26BED2530()
{
  result = qword_28045EEA8;
  if (!qword_28045EEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045EEA0, &unk_26C022440);
    sub_26BED25B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EEA8);
  }

  return result;
}

unint64_t sub_26BED25B4()
{
  result = qword_28045EEB0;
  if (!qword_28045EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EEB0);
  }

  return result;
}

unint64_t sub_26BED2624()
{
  result = qword_28045EEB8;
  if (!qword_28045EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EEB8);
  }

  return result;
}

uint64_t sub_26BED2678@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  v57 = a4;
  v6 = sub_26C00A33C();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A31C();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A30C();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C00A35C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MLS.AlgorithmIdentifier();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  sub_26BED38EC(a3, v24, type metadata accessor for MLS.AlgorithmIdentifier);
  if (qword_28045E080 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v21, qword_2804600F8);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v25, v24))
  {
    goto LABEL_7;
  }

  if (qword_28045E078 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v21, qword_2804600E0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v26, v24))
  {
LABEL_7:
    sub_26BED399C(v24, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BED3954(&qword_28045E908, MEMORY[0x277CC5598]);
    sub_26C009BFC();
    v27 = v54;
    sub_26BE00608(a1, v54);
    sub_26BE770BC(a1, v27);
    sub_26BE00258(a1, v27);
    sub_26C009BDC();
    (*(v17 + 8))(v20, v16);
LABEL_8:
    type metadata accessor for MLS.Digest();
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_28045E090 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v21, qword_280460128);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v29, v24))
  {
    goto LABEL_15;
  }

  if (qword_28045E088 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v21, qword_280460110);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v30, v24))
  {
LABEL_15:
    sub_26BED399C(v24, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BED3954(&qword_28045E370, MEMORY[0x277CC5540]);
    sub_26C009BFC();
    v31 = v54;
    sub_26BE00608(a1, v54);
    sub_26BED30C0(a1, v31, v15);
    sub_26BE00258(a1, v31);
    sub_26C009BDC();
    (*(v53 + 8))(v15, v12);
    goto LABEL_8;
  }

  if (qword_28045E0A0 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v21, qword_280460158);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v32, v24))
  {
    goto LABEL_22;
  }

  if (qword_28045E098 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v21, qword_280460140);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v33, v24))
  {
LABEL_22:
    sub_26BED399C(v24, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BED3954(&qword_28045EEE0, MEMORY[0x277CC5550]);
    v34 = v50;
    v35 = v52;
    sub_26C009BFC();
    v36 = v54;
    sub_26BE00608(a1, v54);
    sub_26BED32E4(a1, v36, v34);
    sub_26BE00258(a1, v36);
    sub_26C009BDC();
    (*(v51 + 8))(v34, v35);
    goto LABEL_8;
  }

  if (qword_28045E0B0 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v21, qword_280460188);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v37, v24))
  {
    sub_26BED399C(v24, type metadata accessor for MLS.AlgorithmIdentifier);
LABEL_30:
    sub_26BED3954(&qword_28045E368, MEMORY[0x277CC5560]);
    v40 = v47;
    v41 = v49;
    sub_26C009BFC();
    v42 = v54;
    sub_26BE00608(a1, v54);
    sub_26BED3508(a1, v42, v40);
    sub_26BE00258(a1, v42);
    sub_26C009BDC();
    (*(v48 + 8))(v40, v41);
    goto LABEL_8;
  }

  if (qword_28045E0A8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v21, qword_280460170);
  v39 = _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v38, v24);
  sub_26BED399C(v24, type metadata accessor for MLS.AlgorithmIdentifier);
  if (v39)
  {
    goto LABEL_30;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_26C00AC1C();

  v55 = 0xD00000000000001ALL;
  v56 = 0x800000026C02C3E0;
  v43 = MLS.AlgorithmIdentifier.description.getter();
  MEMORY[0x26D699090](v43);

  v44 = sub_26BFCD430(v55, v56, 0xD000000000000016, 0x800000026C02C400, 40);

  sub_26BED380C();
  swift_allocError();
  *v45 = v44;
  return swift_willThrow();
}

uint64_t sub_26BED2FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BED3050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BED30C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_26C00A30C();
      sub_26BED3954(&qword_28045E370, MEMORY[0x277CC5540]);
      result = sub_26C009BCC();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26BED372C(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_28045E370, MEMORY[0x277CC5540]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BED32E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_26C00A31C();
      sub_26BED3954(&qword_28045EEE0, MEMORY[0x277CC5550]);
      result = sub_26C009BCC();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26BED372C(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_28045EEE0, MEMORY[0x277CC5550]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BED3508(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_26C00A33C();
      sub_26BED3954(&qword_28045E368, MEMORY[0x277CC5560]);
      result = sub_26C009BCC();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26BED372C(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_28045E368, MEMORY[0x277CC5560]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BED372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_26C008E9C();
  if (!result || (result = sub_26C008ECC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C008EBC();
      a5(0);
      sub_26BED3954(a6, a7);
      return sub_26C009BCC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26BED380C()
{
  result = qword_28045EED8;
  if (!qword_28045EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EED8);
  }

  return result;
}

unint64_t sub_26BED3888()
{
  result = qword_28045EEE8;
  if (!qword_28045EEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E228, &qword_26C00CDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EEE8);
  }

  return result;
}

uint64_t sub_26BED38EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BED3954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BED399C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BED39FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BED3A64@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v100 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26BFAF814(v98);
  if (v2)
  {
    goto LABEL_8;
  }

  v95 = v98[2];
  v96 = v98[3];
  v97 = v99;
  v93 = v98[0];
  v94 = v98[1];
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  sub_26BE00608(*v3, v3[1]);
  sub_26BE00608(v10, v11);
  sub_26BF30764(v3, &v90);
  if (v91)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v10;
    v3[1] = v11;
    v13 = v11;
    v14 = v10;
    v3[2] = v12;
LABEL_6:
    sub_26BE00258(v14, v13);
    *v3 = v10;
    v3[1] = v11;
    v3[2] = v12;
    sub_26BE01600();
    swift_allocError();
    *v15 = 1;
    goto LABEL_7;
  }

  v81 = v12;
  v17 = v90;
  sub_26BE00258(v10, v11);
  if (v17 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v18 = 5;
    swift_willThrow();
    v19 = v81;
    goto LABEL_3;
  }

  v20 = sub_26BF2A44C(v17);
  if (v21 >> 60 == 15)
  {
    v14 = *v3;
    v13 = v3[1];
    v12 = v81;
    goto LABEL_6;
  }

  v23 = v22;
  v90 = v20;
  v91 = v21;
  v24 = v21 >> 62;
  v74 = v20 >> 32;
  v84 = MEMORY[0x277D84F90];
  v75 = BYTE6(v21);
  v92 = v22;
  v79 = v11;
  v80 = v10;
  v78 = a1;
  v77 = v20;
  v76 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v25 = v75;
  if (v24)
  {
    v25 = v74;
  }

  while (1)
  {
    v26 = __OFSUB__(v25, v23);
    v27 = v25 - v23;
    if (v26)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v27 < 1)
    {
      v54 = v91 >> 62;
      if ((v91 >> 62) > 1)
      {
        if (v54 == 2)
        {
          v55 = *(v90 + 24);
        }

        else
        {
          v55 = 0;
        }
      }

      else if (v54)
      {
        v55 = v90 >> 32;
      }

      else
      {
        v55 = BYTE6(v91);
      }

      v57 = v55 == v23;
      if (!__OFSUB__(v55, v23))
      {
        v19 = v81;
        if (!v57)
        {
          sub_26BE01654();
          swift_allocError();
          *v58 = 0;
          v58[112] = 1;
          swift_willThrow();

          sub_26BE00258(v90, v91);
          goto LABEL_3;
        }

        sub_26BE00258(v90, v91);
        sub_26BE00258(v10, v11);
        v90 = sub_26BF2F7B0();
        v91 = v59;
        sub_26C009C5C();
        v60 = sub_26BEE6028();
        if ((v60 & 0x100000000) != 0)
        {

          sub_26BE01600();
          swift_allocError();
          *v63 = 1;
          swift_willThrow();
          sub_26BE00204(&v93);
          result = sub_26BEB658C(v8);
        }

        else
        {
          v61 = a1;
          v62 = v60;
          v64 = sub_26BF2F7B0();
          v66 = v65;
          v67 = type metadata accessor for MLS.GroupInfo();
          result = sub_26BED4D74(v8, v61 + v67[6]);
          v68 = v96;
          *(v61 + 32) = v95;
          *(v61 + 48) = v68;
          v69 = v97;
          v70 = v94;
          *v61 = v93;
          *(v61 + 16) = v70;
          v71 = v84;
          *(v61 + 64) = v69;
          *(v61 + 72) = v71;
          *(v61 + v67[7]) = v62;
          v72 = (v61 + v67[8]);
          *v72 = v64;
          v72[1] = v66;
        }

        goto LABEL_8;
      }

LABEL_79:
      __break(1u);
    }

    v87 = 0;
    v28 = v23 + 2;
    if (__OFADD__(v23, 2))
    {
      goto LABEL_74;
    }

    v29 = v90;
    v30 = v91;
    v31 = v91 >> 62;
    if ((v91 >> 62) <= 1)
    {
      if (v31)
      {
        v32 = v90 >> 32;
      }

      else
      {
        v32 = BYTE6(v91);
      }

LABEL_28:
      if (v32 < v28)
      {
        goto LABEL_63;
      }

      goto LABEL_31;
    }

    if (v31 == 2)
    {
      v32 = *(v90 + 24);
      goto LABEL_28;
    }

    if (v28 > 0)
    {
      goto LABEL_63;
    }

LABEL_31:
    v88 = v90;
    v89 = v91;
    if (v28 < v23)
    {
      goto LABEL_75;
    }

    v85 = v23;
    v86 = v23 + 2;
    sub_26BE00608(v90, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v83 = v29;
    sub_26BE016A8();
    sub_26BE016FC();
    v33 = v83;
    sub_26C008E1C();
    sub_26BE00258(v88, v89);
    v34 = v87;
    v92 = v23 + 2;
    sub_26BE00608(v33, v30);
    sub_26BE00608(v33, v30);
    sub_26BF30764(&v90, &v88);
    if (v89)
    {
      break;
    }

    v35 = v88;
    sub_26BE00258(v33, v30);
    v26 = __OFADD__(v92, v35);
    v23 = v92 + v35;
    if (v26)
    {
      goto LABEL_76;
    }

    v36 = v90;
    v37 = v91;
    v38 = v91 >> 62;
    if ((v91 >> 62) <= 1)
    {
      if (v38)
      {
        v39 = v90 >> 32;
      }

      else
      {
        v39 = BYTE6(v91);
      }

LABEL_40:
      if (v39 < v23)
      {
        goto LABEL_62;
      }

      goto LABEL_43;
    }

    if (v38 == 2)
    {
      v39 = *(v90 + 24);
      goto LABEL_40;
    }

    if (v23 > 0)
    {
      goto LABEL_62;
    }

LABEL_43:
    v82 = v34;
    if (v23 < v92)
    {
      goto LABEL_77;
    }

    v40 = sub_26C00909C();
    v41 = v40;
    v43 = v42;
    v92 = v23;
    v44 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v44 != 2)
      {
        goto LABEL_51;
      }

      v40 = *(v40 + 16);
      v45 = *(v41 + 24);
    }

    else
    {
      if (!v44)
      {
        goto LABEL_51;
      }

      v40 = v40;
      v45 = v41 >> 32;
    }

    if (v45 < v40)
    {
      goto LABEL_78;
    }

LABEL_51:
    v46 = sub_26C00909C();
    v48 = v47;
    sub_26BE00258(v41, v43);
    sub_26BE00258(v83, v30);
    sub_26BE00608(v46, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_26BEEBD8C(0, *(v84 + 2) + 1, 1, v84);
    }

    v50 = *(v84 + 2);
    v49 = *(v84 + 3);
    if (v50 >= v49 >> 1)
    {
      v84 = sub_26BEEBD8C((v49 > 1), v50 + 1, 1, v84);
    }

    v51 = bswap32(v82) >> 16;
    sub_26BE00258(v46, v48);
    v52 = v84;
    *(v84 + 2) = v50 + 1;
    v53 = &v52[24 * v50];
    *(v53 + 16) = v51;
    *(v53 + 5) = v46;
    *(v53 + 6) = v48;
    v11 = v79;
    v10 = v80;
    a1 = v78;
    v20 = v77;
    LODWORD(v24) = v76;
    if (v76 <= 1)
    {
      goto LABEL_14;
    }

LABEL_16:
    if (v24 == 2)
    {
      v25 = *(v20 + 24);
    }

    else
    {
      v25 = 0;
    }
  }

  sub_26BE00258(v90, v91);
  v37 = v30;
  v36 = v33;
LABEL_62:
  sub_26BE00258(v36, v37);
  v90 = v33;
  v91 = v30;
  v92 = v28;
LABEL_63:
  sub_26BE01600();
  swift_allocError();
  *v56 = 1;
  v19 = v81;
  swift_willThrow();

  sub_26BE00258(v90, v91);
  v10 = v80;
LABEL_3:
  sub_26BE00258(*v3, v3[1]);
  *v3 = v10;
  v3[1] = v11;
  v3[2] = v19;
LABEL_7:
  swift_willThrow();
  result = sub_26BE00204(&v93);
LABEL_8:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.GroupInfo.groupContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_26BE001A8(v8, v7);
}

__n128 MLS.GroupInfo.groupContext.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE00204(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t MLS.GroupInfo.confirmationTag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.GroupInfo() + 24);

  return sub_26BE8236C(v3, a1);
}

uint64_t type metadata accessor for MLS.GroupInfo()
{
  result = qword_28045EF00;
  if (!qword_28045EF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.GroupInfo.confirmationTag.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.GroupInfo() + 24);

  return sub_26BED4520(a1, v3);
}

uint64_t sub_26BED4520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.GroupInfo.signer.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for MLS.GroupInfo();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MLS.GroupInfo.signer.setter(int *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLS.GroupInfo();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t MLS.GroupInfo.signature.getter()
{
  v1 = v0 + *(type metadata accessor for MLS.GroupInfo() + 32);
  v2 = *v1;
  sub_26BE00608(*v1, *(v1 + 8));
  return v2;
}

uint64_t MLS.GroupInfo.signature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MLS.GroupInfo() + 32);
  result = sub_26BE00258(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_26BED4760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MLS.Cryptography.MACTag(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BED4820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MLS.Cryptography.MACTag(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BED48C4()
{
  sub_26BED4970();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MLS.Cryptography.MACTag(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BED4970()
{
  if (!qword_28045E208)
  {
    v0 = sub_26C00A7AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045E208);
    }
  }
}

uint64_t sub_26BED49C0(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v59 = *(a1 + 32);
  v60 = v4;
  v5 = *(a1 + 16);
  v58[0] = *a1;
  v58[1] = v5;
  v6 = *(a1 + 48);
  v55 = v59;
  v56 = v6;
  v61 = *(a1 + 64);
  v57 = *(a1 + 64);
  v53 = v58[0];
  v54 = v3;
  sub_26BE001A8(v58, &v48);
  v7 = sub_26BFAF494(&v53);
  if (!v1)
  {
    v9 = v7;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v48 = v53;
    v49 = v54;
    sub_26BE00204(&v48);
    v10 = *(a1 + 72);
    v44 = xmmword_26C00BBD0;
    v45 = 0;
    v11 = sub_26BEEAC24(0, v10);
    v13 = sub_26BF30414(v11);
    sub_26BF2A30C(&v44);
    sub_26BE00258(v44, *(&v44 + 1));
    v14 = v13 + v11;
    if (__OFADD__(v13, v11))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v15 = v9 + v14;
    if (__OFADD__(v9, v14))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = type metadata accessor for MLS.GroupInfo();
    v17 = *(v16 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
    sub_26C009C3C();
    v18 = sub_26BE12418(v44);
    v20 = v19;

    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      v22 = 0;
      if (v21 != 2)
      {
        goto LABEL_16;
      }

      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      v22 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v20);
      goto LABEL_16;
    }

    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v22 = HIDWORD(v18) - v18;
LABEL_16:
    v42 = v16;
    v25 = v15;
    v26 = sub_26BF30414(v22);
    sub_26BE11228(v18, v20);
    sub_26BE00258(v18, v20);
    v27 = v26 + v22;
    if (__OFADD__(v26, v22))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v28 = v25 + v27;
    if (__OFADD__(v25, v27))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v43 = bswap32(*(a1 + *(v42 + 28)));
    v46 = MEMORY[0x277D838B0];
    v47 = MEMORY[0x277CC9C18];
    *&v44 = &v43;
    *(&v44 + 1) = &v44;
    v29 = __swift_project_boxed_opaque_existential_1(&v44, MEMORY[0x277D838B0]);
    v31 = *v29;
    v30 = v29[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v44);
    v32 = v28 + 4;
    if (__OFADD__(v28, 4))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v33 = (a1 + *(v42 + 32));
    v34 = *v33;
    v35 = v33[1];
    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v36 != 2)
      {
        v37 = 0;
        goto LABEL_29;
      }

      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      v37 = v38 - v39;
      if (!__OFSUB__(v38, v39))
      {
        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v36)
    {
      v37 = BYTE6(v35);
LABEL_29:
      v40 = sub_26BF30414(v37);
      sub_26BE11228(v34, v35);
      v41 = v40 + v37;
      if (__OFADD__(v40, v37))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      result = v32 + v41;
      if (!__OFADD__(v32, v41))
      {
        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_33;
    }

    if (__OFSUB__(HIDWORD(v34), v34))
    {
      goto LABEL_40;
    }

    v37 = HIDWORD(v34) - v34;
    goto LABEL_29;
  }

  v50 = v55;
  v51 = v56;
  v52 = v57;
  v48 = v53;
  v49 = v54;
  result = sub_26BE00204(&v48);
LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BED4D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BED4DD8(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v17 = *a1;
  v16 = a1[1];
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_10;
    }

    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(v16);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v17), v17))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = HIDWORD(v17) - v17;
LABEL_10:
  v41 = v15;
  v22 = sub_26BF30414(v19);
  if (v2)
  {
    return v3;
  }

  v23 = v22;
  v40 = 0;
  result = sub_26BE11228(v17, v16);
  v24 = __OFADD__(v23, v19);
  v3 = v23 + v19;
  if (v24)
  {
    __break(1u);
    goto LABEL_33;
  }

  v25 = type metadata accessor for MLS.FramedContentAuthData();
  sub_26BED5200(a1 + *(v25 + 20), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26BE2E258(v9, &qword_28045E4E8, &qword_26C012550);
    return v3;
  }

  v26 = v42;
  sub_26BED4D74(v9, v42);
  if (v41 != 3)
  {
    sub_26BE01654();
    swift_allocError();
    *v33 = 6;
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    *(v33 + 40) = 0u;
    *(v33 + 56) = 0u;
    *(v33 + 72) = 0u;
    *(v33 + 88) = 0u;
    *(v33 + 104) = 0;
    *(v33 + 112) = 23;
    swift_willThrow();
LABEL_28:
    sub_26BEB658C(v26);
    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  v27 = v40;
  sub_26C009C3C();
  v28 = sub_26BE12418(v43);
  v30 = v29;

  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    v32 = 0;
    if (v31 != 2 || (v35 = *(v28 + 16), v34 = *(v28 + 24), v32 = v34 - v35, !__OFSUB__(v34, v35)))
    {
LABEL_26:
      v36 = sub_26BF30414(v32);
      if (v27)
      {
        sub_26BE00258(v28, v30);
        goto LABEL_28;
      }

      v37 = v36;
      sub_26BE11228(v28, v30);
      sub_26BE00258(v28, v30);
      result = sub_26BEB658C(v26);
      v38 = v37 + v32;
      if (!__OFADD__(v37, v32))
      {
        v24 = __OFADD__(v3, v38);
        v3 += v38;
        if (!v24)
        {
          return v3;
        }

        goto LABEL_35;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (!v31)
  {
    v32 = BYTE6(v30);
    goto LABEL_26;
  }

  if (!__OFSUB__(HIDWORD(v28), v28))
  {
    v32 = HIDWORD(v28) - v28;
    goto LABEL_26;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t MLS.FramedContentAuthData.confirmationTag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.FramedContentAuthData() + 20);

  return sub_26BED5200(v3, a1);
}

uint64_t type metadata accessor for MLS.FramedContentAuthData()
{
  result = qword_28045EF10;
  if (!qword_28045EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BED5200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.FramedContentAuthData.confirmationTag.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.FramedContentAuthData() + 20);

  return sub_26BED52B4(a1, v3);
}

uint64_t sub_26BED52B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s8SwiftMLS0B0O21FramedContentAuthDataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF28, &qword_26C016C20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  if ((sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for MLS.FramedContentAuthData() + 20);
  v18 = *(v13 + 48);
  sub_26BED5200(a1 + v17, v16);
  sub_26BED5200(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_26BE2E258(v16, &qword_28045E4E8, &qword_26C012550);
      return 1;
    }

    goto LABEL_7;
  }

  sub_26BED5200(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_26BEB658C(v12);
LABEL_7:
    sub_26BE2E258(v16, &qword_28045EF28, &qword_26C016C20);
    return 0;
  }

  sub_26BED4D74(&v16[v18], v8);
  v21 = MEMORY[0x26D698700](v12, v8);
  sub_26BEB658C(v8);
  sub_26BEB658C(v12);
  sub_26BE2E258(v16, &qword_28045E4E8, &qword_26C012550);
  return (v21 & 1) != 0;
}

uint64_t sub_26BED5620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26BED56FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BED57B4()
{
  sub_26BED5830();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26BED5830()
{
  if (!qword_28045EF20)
  {
    type metadata accessor for MLS.Cryptography.MACTag(255);
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045EF20);
    }
  }
}

uint64_t sub_26BED5894(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 184))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 128) & 0x1000000000000000) != 0)) | ((*(a1 + 128) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BED58E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
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
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 128) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
    }
  }

  return result;
}

const char *SwiftMLSFeatureFlags.feature.getter()
{
  v1 = "UsePureSwiftImplementation";
  v2 = "ParticipantKey";
  if (*v0 != 2)
  {
    v2 = "ValidateKeyGeneration";
  }

  if (*v0)
  {
    v1 = "ValidateCredentials";
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

uint64_t SwiftMLSFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1);
  return sub_26C00B0CC();
}

unint64_t sub_26BED5AA8()
{
  result = qword_28045EF30;
  if (!qword_28045EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EF30);
  }

  return result;
}

const char *sub_26BED5B10()
{
  v1 = "UsePureSwiftImplementation";
  v2 = "ParticipantKey";
  if (*v0 != 2)
  {
    v2 = "ValidateKeyGeneration";
  }

  if (*v0)
  {
    v1 = "ValidateCredentials";
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

uint64_t MLS.Sender.init(inner:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t static MLS.Sender.Inner.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (!*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 4) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2)
  {
    if (v4 != 2 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 2 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_26BED5C00(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  v12 = v4 == 2 && v3 == 1;
  if (v2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (*(a1 + 4) == 1)
  {
    v13 = v8;
  }

  if (*(a1 + 4))
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

void MLS.Sender.inner.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t MLS.Sender.inner.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

uint64_t static MLS.Sender.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v2)
    {
      if (v4 != 2 || v3 != 1)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 4))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26BED5D08(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) != 1)
    {
      if (v2)
      {
        if (v4 != 2 || v3 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      return 1;
    }

    v5 = v4 == 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  return v5 && v2 == v3;
}

uint64_t sub_26BED5D78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BED5DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BED5E08(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26BED5E20(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_26BED5E48@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BEE62D4();
  if ((result & 0x100) != 0)
  {
LABEL_12:
    v3 = 1;
    goto LABEL_13;
  }

  v3 = 5;
  if (result <= 2u)
  {
    if (result != 1)
    {
      if (result == 2)
      {
        result = sub_26BEE6028();
        v3 = 1;
        if ((result & 0x100000000) == 0)
        {
          *a1 = result;
          *(a1 + 4) = 1;
          return result;
        }
      }

      goto LABEL_13;
    }

    result = sub_26BEE6028();
    if ((result & 0x100000000) == 0)
    {
      *a1 = result;
      *(a1 + 4) = 0;
      return result;
    }

    goto LABEL_12;
  }

  if (result == 3)
  {
    *a1 = 0;
  }

  else
  {
    if (result != 4)
    {
LABEL_13:
      sub_26BE01600();
      swift_allocError();
      *v4 = v3;
      return swift_willThrow();
    }

    *a1 = 1;
  }

  *(a1 + 4) = 2;
  return result;
}

uint64_t MLS.Commit.proposals.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MLS.Commit.path.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v3;
  v12[8] = *(v1 + 136);
  v4 = *(v1 + 24);
  v5 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v5;
  v12[4] = *(v1 + 72);
  v12[5] = v2;
  v12[0] = *(v1 + 8);
  v12[1] = v4;
  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  a1[6] = *(v1 + 104);
  a1[7] = v7;
  a1[8] = *(v1 + 136);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  a1[2] = *(v1 + 40);
  a1[3] = v9;
  a1[4] = *(v1 + 72);
  a1[5] = v6;
  *a1 = *(v1 + 8);
  a1[1] = v8;
  return sub_26BE7ABF0(v12, &v11);
}

__n128 MLS.Commit.path.setter(__int128 *a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v4;
  v12[8] = *(v1 + 136);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v6;
  v12[4] = *(v1 + 72);
  v12[5] = v3;
  v12[0] = *(v1 + 8);
  v12[1] = v5;
  sub_26BE7AC60(v12);
  v7 = a1[4];
  *(v1 + 88) = a1[5];
  v8 = a1[7];
  *(v1 + 104) = a1[6];
  *(v1 + 120) = v8;
  *(v1 + 136) = a1[8];
  v9 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v11;
  *(v1 + 72) = v7;
  *(v1 + 8) = v9;
  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_26BED6118(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_26BED6160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BED61D4(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 88);
  v4 = *(a1 + 120);
  v66 = *(a1 + 104);
  v67 = v4;
  v68 = *(a1 + 136);
  v5 = *(a1 + 24);
  v6 = *(a1 + 56);
  v62 = *(a1 + 40);
  v63 = v6;
  v64 = *(a1 + 72);
  v65 = v3;
  v60 = *(a1 + 8);
  v61 = v5;
  v58 = xmmword_26C00BBD0;
  v59 = 0;
  v7 = sub_26BED6D74(0, v2);
  if (v1)
  {
    result = sub_26BE00258(v58, *(&v58 + 1));
  }

  else
  {
    v8 = v7;
    v9 = 0;
    v12 = sub_26BF30414(v7);
    sub_26BF2A30C(&v58);
    sub_26BE00258(v58, *(&v58 + 1));
    v13 = v12 + v8;
    if (__OFADD__(v12, v8))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    v57[6] = v66;
    v57[7] = v67;
    v57[8] = v68;
    v57[2] = v62;
    v57[3] = v63;
    v57[4] = v64;
    v57[5] = v65;
    v57[0] = v60;
    v57[1] = v61;
    if (sub_26BE59C80(v57) != 1)
    {
      goto LABEL_10;
    }

    LOBYTE(v39) = 0;
    *(&v49 + 1) = MEMORY[0x277D838B0];
    *&v50 = MEMORY[0x277CC9C18];
    *&v48 = &v39;
    *(&v48 + 1) = &v39 + 1;
    v14 = __swift_project_boxed_opaque_existential_1(&v48, MEMORY[0x277D838B0]);
    v16 = *v14;
    v15 = v14[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v48);
    result = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      while (1)
      {
        __break(1u);
LABEL_10:
        v54 = v66;
        v55 = v67;
        v56 = v68;
        v50 = v62;
        v51 = v63;
        v52 = v64;
        v53 = v65;
        v48 = v60;
        v49 = v61;
        LOBYTE(v28) = 1;
        *(&v31 + 1) = MEMORY[0x277D838B0];
        *&v32 = MEMORY[0x277CC9C18];
        *&v30 = &v28;
        *(&v30 + 1) = &v28 + 1;
        v17 = __swift_project_boxed_opaque_existential_1(&v30, MEMORY[0x277D838B0]);
        v18 = *v17;
        v19 = v17[1];
        sub_26BE7ABF0(&v60, &v39);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v30);
        v45 = v54;
        v46 = v55;
        v47 = v56;
        v41 = v50;
        v42 = v51;
        v43 = v52;
        v44 = v53;
        v39 = v48;
        v40 = v49;
        sub_26BE00758(&v48, &v30);
        v20 = sub_26BE7DD28(&v39);
        if (v9)
        {
          break;
        }

        v21 = v20;
        v22 = *(&v56 + 1);
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v32 = v41;
        v33 = v42;
        v34 = v43;
        v35 = v44;
        v30 = v39;
        v31 = v40;
        sub_26BE00854(&v30);
        v28 = xmmword_26C00BBD0;
        v29 = 0;
        v23 = sub_26BEEB0F4(0, v22);
        v9 = sub_26BF30414(v23);
        sub_26BF2A30C(&v28);
        sub_26BE00258(v28, *(&v28 + 1));
        sub_26BE7AC60(&v60);
        v24 = v9 + v23;
        if (__OFADD__(v9, v23))
        {
          goto LABEL_19;
        }

        v25 = __OFADD__(v21, v24);
        v26 = v21 + v24;
        if (v25)
        {
          goto LABEL_20;
        }

        v25 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        result = v13 + v27;
        if (!__OFADD__(v13, v27))
        {
          goto LABEL_4;
        }
      }

      v36 = v45;
      v37 = v46;
      v38 = v47;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v30 = v39;
      v31 = v40;
      sub_26BE00854(&v30);
      result = sub_26BE7AC60(&v60);
    }
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26BED6530(uint64_t a1@<X8>)
{
  v3 = v1;
  v41 = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  sub_26BE00608(*v1, v5);
  sub_26BE00608(v6, v5);
  sub_26BF30764(v1, v37);
  if (!v2)
  {
    if (BYTE8(v37[0]))
    {
      sub_26BE00258(*v1, v1[1]);
      *v1 = v6;
      v1[1] = v5;
      v8 = v5;
      v9 = v6;
      v1[2] = v7;
LABEL_7:
      sub_26BE00258(v9, v8);
      *v3 = v6;
      v3[1] = v5;
      v3[2] = v7;
      goto LABEL_8;
    }

    v13 = *&v37[0];
    sub_26BE00258(v6, v5);
    if (v13 > 100000000)
    {
      sub_26BE01600();
      swift_allocError();
      *v14 = 5;
      goto LABEL_3;
    }

    v15 = sub_26BF2A44C(v13);
    if (v16 >> 60 == 15)
    {
      v9 = *v3;
      v8 = v3[1];
      goto LABEL_7;
    }

    v34 = a1;
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v18 = MEMORY[0x277D84F90];
    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = *(v15 + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v19)
    {
      v20 = v15 >> 32;
    }

    else
    {
      v20 = BYTE6(v16);
    }

    v21 = __OFSUB__(v20, v17);
    v22 = v20 - v17;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      if (v22 < 1)
      {
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v25 = *(v15 + 24);
          }

          else
          {
            v25 = 0;
          }
        }

        else if (v19)
        {
          v25 = v15 >> 32;
        }

        else
        {
          v25 = BYTE6(v16);
        }

        if (!__OFSUB__(v25, v17))
        {
          if (v25 == v17)
          {
            sub_26BE00258(v15, v16);
            sub_26BE00258(v6, v5);
            v28 = sub_26BEE62D4();
            if ((v28 & 0x100) == 0)
            {
              if (v28)
              {
                if (v28 != 1)
                {

                  sub_26BE01600();
                  swift_allocError();
                  v11 = 5;
                  goto LABEL_9;
                }

                sub_26BFF8178(v37);
                nullsub_1(v37);
              }

              else
              {
                sub_26BE7150C(v37);
              }

              v30 = v37[4];
              *(v34 + 88) = v37[5];
              v31 = v37[7];
              *(v34 + 104) = v37[6];
              *(v34 + 120) = v31;
              *(v34 + 136) = v37[8];
              v32 = v37[0];
              *(v34 + 24) = v37[1];
              v33 = v37[3];
              *(v34 + 40) = v37[2];
              *(v34 + 56) = v33;
              *(v34 + 72) = v30;
              *v34 = v18;
              *(v34 + 8) = v32;
              goto LABEL_11;
            }

LABEL_8:
            sub_26BE01600();
            swift_allocError();
            v11 = 1;
LABEL_9:
            *v10 = v11;
            goto LABEL_10;
          }

          sub_26BE01654();
          swift_allocError();
          *v29 = 0;
          v29[112] = 1;
          swift_willThrow();
LABEL_45:

          sub_26BE00258(v38, v39);
          goto LABEL_4;
        }

LABEL_61:
        __break(1u);
      }

      v23 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            if (v23 > 0)
            {
LABEL_41:
              sub_26BE01600();
              swift_allocError();
              v27 = 1;
              goto LABEL_44;
            }

            goto LABEL_35;
          }

          v24 = *(v15 + 24);
        }

        else if (v19)
        {
          v24 = v15 >> 32;
        }

        else
        {
          v24 = BYTE6(v16);
        }

        if (v24 < v23)
        {
          goto LABEL_41;
        }

LABEL_35:
        v35 = v15;
        v36 = v16;
        if (v23 >= v17)
        {
          sub_26BE00608(v15, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
          sub_26BE016A8();
          sub_26BE016FC();
          sub_26C008E1C();
          sub_26BE00258(v35, v36);
          v40 = v23;
          sub_26BE01600();
          swift_allocError();
          v27 = 5;
LABEL_44:
          *v26 = v27;
          swift_willThrow();
          goto LABEL_45;
        }

        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_61;
  }

  sub_26BE00258(*v1, v1[1]);
  *v1 = v6;
  v1[1] = v5;
  v1[2] = v7;
LABEL_3:
  swift_willThrow();
LABEL_4:
  sub_26BE00258(*v3, v3[1]);
  *v3 = v6;
  v3[1] = v5;
  v3[2] = v7;
LABEL_10:
  swift_willThrow();
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26BED6D74(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    while (1)
    {
      v6 = v5[9];
      v53 = v5[8];
      v54 = v6;
      v55 = v5[10];
      v56 = *(v5 + 22);
      v7 = v5[5];
      v49 = v5[4];
      v50 = v7;
      v8 = v5[7];
      v51 = v5[6];
      v52 = v8;
      v9 = v5[1];
      v45 = *v5;
      v46 = v9;
      v10 = v5[3];
      v47 = v5[2];
      v48 = v10;
      if (sub_26BE592C4(&v45))
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      LOBYTE(v38[0]) = v11;
      v43 = MEMORY[0x277D838B0];
      v44 = MEMORY[0x277CC9C18];
      v41 = v38;
      v42 = v38 + 1;
      v12 = __swift_project_boxed_opaque_existential_1(&v41, MEMORY[0x277D838B0]);
      v13 = *v12;
      v14 = v12[1];
      sub_26BE71830(&v45, v39);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v41);
      v57[8] = v53;
      v57[9] = v54;
      v57[10] = v55;
      v58 = v56;
      v57[4] = v49;
      v57[5] = v50;
      v57[6] = v51;
      v57[7] = v52;
      v57[0] = v45;
      v57[1] = v46;
      v57[2] = v47;
      v57[3] = v48;
      LODWORD(v13) = sub_26BE592C4(v57);
      v15 = sub_26BE13A3C(v57);
      if (v13 != 1)
      {
        v39[8] = *(v15 + 128);
        v39[9] = *(v15 + 144);
        v39[10] = *(v15 + 160);
        v40 = *(v15 + 176);
        v39[4] = *(v15 + 64);
        v39[5] = *(v15 + 80);
        v39[6] = *(v15 + 96);
        v39[7] = *(v15 + 112);
        v39[0] = *v15;
        v39[1] = *(v15 + 16);
        v39[2] = *(v15 + 32);
        v39[3] = *(v15 + 48);
        v20 = sub_26BF31160(v39);
        sub_26BE7188C(&v45);
        if (v2)
        {
          goto LABEL_41;
        }

        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_43;
        }

        goto LABEL_37;
      }

      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = v17 >> 62;
      if ((v17 >> 62) > 1)
      {
        if (v18 == 2)
        {
          v23 = *(v16 + 16);
          v22 = *(v16 + 24);
          v19 = v22 - v23;
          if (__OFSUB__(v22, v23))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else if (v18)
      {
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_47;
        }

        v19 = HIDWORD(v16) - v16;
      }

      else
      {
        v19 = BYTE6(v17);
      }

      v24 = sub_26BF30414(v19);
      if (v2)
      {
        sub_26BE7188C(&v45);
        goto LABEL_41;
      }

      v25 = v24;
      v43 = MEMORY[0x277CC9318];
      v44 = MEMORY[0x277CC9300];
      v41 = v16;
      v42 = v17;
      v26 = __swift_project_boxed_opaque_existential_1(&v41, MEMORY[0x277CC9318]);
      v27 = *v26;
      v28 = v26[1];
      v29 = v28 >> 62;
      if ((v28 >> 62) <= 1)
      {
        break;
      }

      if (v29 == 2)
      {
        v37 = v19;
        v30 = *(v27 + 16);
        v36 = *(v27 + 24);
        sub_26BE71830(&v45, v39);
        if (sub_26C008E9C() && __OFSUB__(v30, sub_26C008ECC()))
        {
          goto LABEL_50;
        }

        if (__OFSUB__(v36, v30))
        {
          goto LABEL_49;
        }

LABEL_33:
        sub_26C008EBC();
        sub_26C00908C();
        v19 = v37;
        goto LABEL_35;
      }

      memset(v38, 0, 14);
      sub_26BE71830(&v45, v39);
      sub_26C00908C();
LABEL_35:
      __swift_destroy_boxed_opaque_existential_1(&v41);
      sub_26BE7188C(&v45);
      v32 = v25 + v19;
      if (__OFADD__(v25, v19))
      {
        goto LABEL_44;
      }

      v33 = __OFADD__(v32, 1);
      v21 = v32 + 1;
      if (v33)
      {
        goto LABEL_45;
      }

LABEL_37:
      v33 = __OFADD__(a1, v21);
      a1 += v21;
      if (v33)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v5 = (v5 + 184);
      if (!--v4)
      {
        goto LABEL_41;
      }
    }

    if (!v29)
    {
      v38[0] = *v26;
      LOWORD(v38[1]) = v28;
      BYTE2(v38[1]) = BYTE2(v28);
      BYTE3(v38[1]) = BYTE3(v28);
      BYTE4(v38[1]) = BYTE4(v28);
      BYTE5(v38[1]) = BYTE5(v28);
      sub_26BE71830(&v45, v39);
      sub_26C00908C();
      goto LABEL_35;
    }

    v37 = v19;
    v31 = v27;
    if (v27 >> 32 < v27)
    {
      goto LABEL_48;
    }

    sub_26BE71830(&v45, v39);
    if (sub_26C008E9C() && __OFSUB__(v31, sub_26C008ECC()))
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

LABEL_41:
  v34 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t MLS.PrivateMessage.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.PrivateMessage.groupID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.PrivateMessage.authenticatedData.getter()
{
  v1 = *(v0 + 32);
  sub_26BE00608(v1, *(v0 + 40));
  return v1;
}

uint64_t MLS.PrivateMessage.authenticatedData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MLS.PrivateMessage.ciphertext.getter()
{
  v1 = *(v0 + 64);
  sub_26BE00608(v1, *(v0 + 72));
  return v1;
}

uint64_t MLS.PrivateMessage.ciphertext.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_26BED7438(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v49 = *(a1 + 56);
  v50 = *(a1 + 32);
  v7 = *(a1 + 64);
  v47 = *(a1 + 72);
  v48 = *(a1 + 48);
  v8 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  if (!v1)
  {
    v13 = result;
    sub_26BE11228(v2, v3);
    v14 = __OFADD__(v13, v9);
    v15 = v13 + v9;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v51 = bswap64(v4);
      v16 = MEMORY[0x277D838B0];
      v17 = MEMORY[0x277CC9C18];
      v54 = MEMORY[0x277D838B0];
      v55 = MEMORY[0x277CC9C18];
      v52 = &v51;
      v53 = &v52;
      v18 = __swift_project_boxed_opaque_existential_1(&v52, MEMORY[0x277D838B0]);
      v20 = *v18;
      v19 = v18[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v52);
      v14 = __OFADD__(v15, 8);
      v21 = v15 + 8;
      if (!v14)
      {
        LOBYTE(v51) = v5;
        v54 = v16;
        v55 = v17;
        v52 = &v51;
        v53 = (&v51 + 1);
        v22 = __swift_project_boxed_opaque_existential_1(&v52, v16);
        v24 = *v22;
        v23 = v22[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v52);
        v14 = __OFADD__(v21, 1);
        v25 = v21 + 1;
        if (!v14)
        {
          v26 = v6 >> 62;
          if ((v6 >> 62) > 1)
          {
            if (v26 != 2)
            {
              v27 = 0;
              goto LABEL_25;
            }

            v29 = *(v50 + 16);
            v28 = *(v50 + 24);
            v27 = v28 - v29;
            if (!__OFSUB__(v28, v29))
            {
LABEL_25:
              v30 = sub_26BF30414(v27);
              sub_26BE11228(v50, v6);
              v31 = v30 + v27;
              if (!__OFADD__(v30, v27))
              {
                v32 = v25 + v31;
                if (!__OFADD__(v25, v31))
                {
                  v33 = v49 >> 62;
                  if ((v49 >> 62) > 1)
                  {
                    if (v33 != 2)
                    {
                      v34 = 0;
                      goto LABEL_37;
                    }

                    v36 = *(v48 + 16);
                    v35 = *(v48 + 24);
                    v34 = v35 - v36;
                    if (!__OFSUB__(v35, v36))
                    {
LABEL_37:
                      v37 = sub_26BF30414(v34);
                      sub_26BE11228(v48, v49);
                      v38 = v37 + v34;
                      if (!__OFADD__(v37, v34))
                      {
                        v14 = __OFADD__(v32, v38);
                        v39 = v32 + v38;
                        if (!v14)
                        {
                          v40 = v47 >> 62;
                          if ((v47 >> 62) > 1)
                          {
                            if (v40 != 2)
                            {
                              v41 = 0;
                              goto LABEL_50;
                            }

                            v43 = *(v7 + 16);
                            v42 = *(v7 + 24);
                            v41 = v42 - v43;
                            if (!__OFSUB__(v42, v43))
                            {
LABEL_50:
                              v45 = sub_26BF30414(v41);
                              sub_26BE11228(v7, v47);
                              v46 = v45 + v41;
                              if (!__OFADD__(v45, v41))
                              {
                                result = v39 + v46;
                                if (!__OFADD__(v39, v46))
                                {
                                  goto LABEL_49;
                                }

                                goto LABEL_64;
                              }

LABEL_63:
                              __break(1u);
LABEL_64:
                              __break(1u);
LABEL_65:
                              __break(1u);
                            }

                            __break(1u);
                          }

                          else if (!v40)
                          {
                            v41 = BYTE6(v47);
                            goto LABEL_50;
                          }

                          if (__OFSUB__(HIDWORD(v7), v7))
                          {
                            goto LABEL_65;
                          }

                          v41 = HIDWORD(v7) - v7;
                          goto LABEL_50;
                        }

                        goto LABEL_61;
                      }

LABEL_60:
                      __break(1u);
LABEL_61:
                      __break(1u);
                      goto LABEL_62;
                    }

                    __break(1u);
                  }

                  else if (!v33)
                  {
                    v34 = BYTE6(v49);
                    goto LABEL_37;
                  }

                  if (__OFSUB__(HIDWORD(v48), v48))
                  {
LABEL_62:
                    __break(1u);
                    goto LABEL_63;
                  }

                  v34 = HIDWORD(v48) - v48;
                  goto LABEL_37;
                }

                goto LABEL_58;
              }

LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            __break(1u);
          }

          else if (!v26)
          {
            v27 = BYTE6(v6);
            goto LABEL_25;
          }

          if (__OFSUB__(HIDWORD(v50), v50))
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v27 = HIDWORD(v50) - v50;
          goto LABEL_25;
        }

        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_49:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BED7790@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BF2F7B0();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = sub_26BEEE594();
    if ((v8 & 1) != 0 || (v9 = v7, v10 = sub_26BEE62D4(), (v10 & 0x100) != 0))
    {
      sub_26BE01600();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
      return sub_26BE00258(v5, v6);
    }

    else
    {
      v11 = v10;
      v12 = sub_26BF2F7B0();
      v14 = v13;
      v18 = sub_26BF2F7B0();
      v19 = v16;
      result = sub_26BF2F7B0();
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v9;
      *(a1 + 24) = v11;
      *(a1 + 32) = v12;
      *(a1 + 40) = v14;
      *(a1 + 48) = v18;
      *(a1 + 56) = v19;
      *(a1 + 64) = result;
      *(a1 + 72) = v17;
    }
  }

  return result;
}

unint64_t sub_26BED78E0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26BED78F8()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_26BED7924@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_26BED7940(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_26BED7960()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_26C00B05C();
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BED79CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BEDBB54();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26BED7A18()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_26C00B05C();
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

BOOL sub_26BED7A80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_26BED7ABC()
{
  v0 = sub_26C009A2C();
  __swift_allocate_value_buffer(v0, qword_280478F38);
  __swift_project_value_buffer(v0, qword_280478F38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F040, &qword_26C0184B0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F048, &qword_26C0184B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0125B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ALGORITHM_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C009A0C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AES256_CTR_HMAC_SHA256_256TAG";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_26C009A1C();
}

uint64_t sub_26BED7CA8()
{
  v0 = sub_26C009A2C();
  __swift_allocate_value_buffer(v0, qword_280478F50);
  __swift_project_value_buffer(v0, qword_280478F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F040, &qword_26C0184B0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F048, &qword_26C0184B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0125F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key_material";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26C009A0C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "initialization_vector";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hmac_tag";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "algorithm";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v9();
  return sub_26C009A1C();
}

uint64_t sub_26BED7EF8()
{
  result = sub_26C00992C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          sub_26BEDBB54();
          sub_26C00993C();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        sub_26C00994C();
      }

      result = sub_26C00992C();
    }
  }

  return result;
}

uint64_t sub_26BED7FDC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_26C0099DC();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = sub_26C0099DC();
  if (v1)
  {
    return result;
  }

LABEL_19:
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_28;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_27:
      result = sub_26C0099DC();
      if (v1)
      {
        return result;
      }

      goto LABEL_28;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (!*(v0 + 48) || (v19 = *(v0 + 48), v20 = *(v0 + 56), sub_26BEDBB54(), result = sub_26C0099CC(), !v1))
  {
    v18 = v0 + *(type metadata accessor for FileEncryptionInfo(0) + 32);
    return sub_26C0098AC();
  }

  return result;
}

uint64_t sub_26BED819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_26C00BBD0;
  *(a2 + 16) = xmmword_26C00BBD0;
  *(a2 + 32) = xmmword_26C00BBD0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v2 = a2 + *(a1 + 32);
  return sub_26C0098BC();
}

uint64_t sub_26BED81F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26C0098CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BED8268(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_26C0098CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_26BED82DC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_26BED8330(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BEDB83C(&qword_28045F050, type metadata accessor for FileEncryptionInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BED83D0(uint64_t a1)
{
  v2 = sub_26BEDB83C(&qword_28045F028, type metadata accessor for FileEncryptionInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BED843C()
{
  sub_26BEDB83C(&qword_28045F028, type metadata accessor for FileEncryptionInfo);

  return sub_26C0099BC();
}

uint64_t sub_26BED84BC()
{
  v0 = sub_26C009A2C();
  __swift_allocate_value_buffer(v0, qword_280478F68);
  __swift_project_value_buffer(v0, qword_280478F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F040, &qword_26C0184B0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F048, &qword_26C0184B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0125A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file_name";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26C009A0C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content_type";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "encryption_info";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_26C009A1C();
}

uint64_t sub_26BED86D0()
{
  while (1)
  {
    result = sub_26C00992C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_26BED8770();
    }

    else if (result == 2 || result == 1)
    {
      sub_26C00995C();
    }
  }

  return result;
}

uint64_t sub_26BED8770()
{
  v0 = *(type metadata accessor for FileMetadata(0) + 28);
  type metadata accessor for FileEncryptionInfo(0);
  sub_26BEDB83C(&qword_28045F028, type metadata accessor for FileEncryptionInfo);
  return sub_26C00996C();
}

uint64_t sub_26BED8824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_26C0099EC(), !v4))
  {
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_26C0099EC(), !v4))
    {
      result = sub_26BED8900(v3, a1, a2, a3);
      if (!v4)
      {
        v14 = v3 + *(type metadata accessor for FileMetadata(0) + 24);
        return sub_26C0098AC();
      }
    }
  }

  return result;
}

uint64_t sub_26BED8900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for FileEncryptionInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileMetadata(0);
  sub_26BE2E1F0(a1 + *(v14 + 28), v8, &qword_28045EF78, &unk_26C017EE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_26BE2E258(v8, &qword_28045EF78, &unk_26C017EE0);
  }

  sub_26BEDC148(v8, v13, type metadata accessor for FileEncryptionInfo);
  sub_26BEDB83C(&qword_28045F028, type metadata accessor for FileEncryptionInfo);
  sub_26C0099FC();
  return sub_26BEDC1B0(v13, type metadata accessor for FileEncryptionInfo);
}

uint64_t sub_26BED8B14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[*(a1 + 24)];
  sub_26C0098BC();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for FileEncryptionInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_26BED8BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26C0098CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BED8C38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_26C0098CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_26BED8CAC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_26BED8D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BEDB83C(&qword_28045F068, type metadata accessor for FileMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BED8DA8(uint64_t a1)
{
  v2 = sub_26BEDB83C(&qword_28045F008, type metadata accessor for FileMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BED8E18()
{
  sub_26BEDB83C(&qword_28045F008, type metadata accessor for FileMetadata);

  return sub_26C0099BC();
}

uint64_t sub_26BED8E98()
{
  v0 = sub_26C009A2C();
  __swift_allocate_value_buffer(v0, qword_280478F80);
  __swift_project_value_buffer(v0, qword_280478F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F040, &qword_26C0184B0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F048, &qword_26C0184B8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C0125F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C009A0C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "thumbnail";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subject";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "icon";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_26C009A1C();
}

uint64_t sub_26BED90DC()
{
  v0 = type metadata accessor for FileInfo._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  v5 = type metadata accessor for FileMetadata(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon, 1, 1, v5);
  qword_28045EF38 = v3;
  return result;
}

uint64_t sub_26BED91E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  v8 = type metadata accessor for FileMetadata(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
  v9(v1 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail, 1, 1, v8);
  v11 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  v9(v1 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject, 1, 1, v8);
  v12 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
  v9(v1 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon, 1, 1, v8);
  v13 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v13, v6, &qword_28045F080, &qword_26C0184C8);
  swift_beginAccess();
  sub_26BEDC210(v6, v1 + v7);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v14, v6, &qword_28045F080, &qword_26C0184C8);
  swift_beginAccess();
  sub_26BEDC210(v6, v1 + v10);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v15, v6, &qword_28045F080, &qword_26C0184C8);
  swift_beginAccess();
  sub_26BEDC210(v6, v1 + v11);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v16, v6, &qword_28045F080, &qword_26C0184C8);

  swift_beginAccess();
  sub_26BEDC210(v6, v1 + v12);
  swift_endAccess();
  return v1;
}

uint64_t sub_26BED94A8()
{
  sub_26BE2E258(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file, &qword_28045F080, &qword_26C0184C8);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail, &qword_28045F080, &qword_26C0184C8);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject, &qword_28045F080, &qword_26C0184C8);
  sub_26BE2E258(v0 + OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon, &qword_28045F080, &qword_26C0184C8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_26BED95A4()
{
  sub_26BED99AC(319, &qword_28045EF70, type metadata accessor for FileMetadata);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26BED9688(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C0098CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26BED97CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C0098CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26BED98FC()
{
  sub_26C0098CC();
  if (v0 <= 0x3F)
  {
    sub_26BED99AC(319, &qword_28045EF90, type metadata accessor for FileEncryptionInfo);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BED99AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C00AAAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BED9A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26C0098CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26BED9B00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26C0098CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BED9BAC()
{
  result = sub_26C0098CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Algorithm(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Algorithm(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26BED9C98(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BED9CB4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_26BED9CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C0098CC();
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

uint64_t sub_26BED9DC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C0098CC();
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

uint64_t sub_26BED9EA0()
{
  result = sub_26C0098CC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FileInfo._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26BED9F28()
{
  result = qword_28045EFB8;
  if (!qword_28045EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EFB8);
  }

  return result;
}

unint64_t sub_26BED9F80()
{
  result = qword_28045EFC0;
  if (!qword_28045EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045EFC8, qword_26C017FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EFC0);
  }

  return result;
}

unint64_t sub_26BED9FE8()
{
  result = qword_28045EFD0;
  if (!qword_28045EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EFD0);
  }

  return result;
}

unint64_t sub_26BEDA040()
{
  result = qword_28045EFD8;
  if (!qword_28045EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EFD8);
  }

  return result;
}

uint64_t sub_26BEDA094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for FileInfo(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for FileInfo._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_26BED91E0(v12);
    *(v4 + v8) = v11;
  }

  return sub_26BEDA13C(v11, a1, a2, a3);
}

uint64_t sub_26BEDA13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26C00992C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
LABEL_5:
          sub_26BEDA254(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        if (result == 4)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_26C00992C();
    }
  }

  return result;
}

uint64_t sub_26BEDA254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for FileMetadata(0);
  sub_26BEDB83C(&qword_28045F008, type metadata accessor for FileMetadata);
  sub_26C00996C();
  return swift_endAccess();
}

uint64_t sub_26BEDA32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for FileInfo(0);
  result = sub_26BEDA398(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_26C0098AC();
  }

  return result;
}

uint64_t sub_26BEDA398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26BEDA448(a1, a2, a3, a4, &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file, 1);
  if (!v4)
  {
    sub_26BEDA448(a1, a2, a3, a4, &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail, 2);
    sub_26BEDA448(a1, a2, a3, a4, &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject, 3);
    return sub_26BEDA448(a1, a2, a3, a4, &OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon, 4);
  }

  return result;
}

uint64_t sub_26BEDA448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for FileMetadata(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v17, v11, &qword_28045F080, &qword_26C0184C8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_26BE2E258(v11, &qword_28045F080, &qword_26C0184C8);
  }

  sub_26BEDC148(v11, v16, type metadata accessor for FileMetadata);
  sub_26BEDB83C(&qword_28045F008, type metadata accessor for FileMetadata);
  sub_26C0099FC();
  return sub_26BEDC1B0(v16, type metadata accessor for FileMetadata);
}

BOOL sub_26BEDA668(uint64_t a1, uint64_t a2)
{
  v101 = type metadata accessor for FileMetadata(0);
  v102 = *(v101 - 8);
  v4 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F088, &qword_26C0184D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v90 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v93 = &v88 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v96 = &v88 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v89 = (&v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v88 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v91 = (&v88 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v95 = &v88 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v94 = (&v88 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v100 = &v88 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = (&v88 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = &v88 - v33;
  v35 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  swift_beginAccess();
  sub_26BE2E1F0(a1 + v35, v34, &qword_28045F080, &qword_26C0184C8);
  v36 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__file;
  swift_beginAccess();
  v99 = v6;
  v37 = *(v6 + 48);
  sub_26BE2E1F0(v34, v15, &qword_28045F080, &qword_26C0184C8);
  v38 = a2 + v36;
  v39 = a2;
  v40 = v101;
  v41 = v102;
  sub_26BE2E1F0(v38, &v15[v37], &qword_28045F080, &qword_26C0184C8);
  v44 = *(v41 + 48);
  v42 = v41 + 48;
  v43 = v44;
  if (v44(v15, 1, v40) == 1)
  {

    sub_26BE2E258(v34, &qword_28045F080, &qword_26C0184C8);
    v45 = a1;
    if (v43(&v15[v37], 1, v40) == 1)
    {
      v97 = v43;
      v102 = v42;
      sub_26BE2E258(v15, &qword_28045F080, &qword_26C0184C8);
      goto LABEL_8;
    }

LABEL_6:
    v46 = v15;
LABEL_21:
    sub_26BE2E258(v46, &qword_28045F088, &qword_26C0184D0);
    goto LABEL_22;
  }

  sub_26BE2E1F0(v15, v32, &qword_28045F080, &qword_26C0184C8);
  if (v43(&v15[v37], 1, v40) == 1)
  {

    sub_26BE2E258(v34, &qword_28045F080, &qword_26C0184C8);
    sub_26BEDC1B0(v32, type metadata accessor for FileMetadata);
    goto LABEL_6;
  }

  v97 = v43;
  v102 = v42;
  v47 = v98;
  sub_26BEDC148(&v15[v37], v98, type metadata accessor for FileMetadata);

  v48 = sub_26BEDBDA4(v32, v47);
  sub_26BEDC1B0(v47, type metadata accessor for FileMetadata);
  sub_26BE2E258(v34, &qword_28045F080, &qword_26C0184C8);
  sub_26BEDC1B0(v32, type metadata accessor for FileMetadata);
  v45 = a1;
  sub_26BE2E258(v15, &qword_28045F080, &qword_26C0184C8);
  if ((v48 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v49 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
  swift_beginAccess();
  v50 = v100;
  sub_26BE2E1F0(v45 + v49, v100, &qword_28045F080, &qword_26C0184C8);
  v51 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__thumbnail;
  swift_beginAccess();
  v52 = v99;
  v53 = *(v99 + 48);
  v54 = v96;
  sub_26BE2E1F0(v50, v96, &qword_28045F080, &qword_26C0184C8);
  v55 = v54;
  sub_26BE2E1F0(v39 + v51, v54 + v53, &qword_28045F080, &qword_26C0184C8);
  v56 = v54;
  v57 = v102;
  v58 = v97;
  v59 = v97(v56, 1, v40);
  v97 = v58;
  if (v59 == 1)
  {
    sub_26BE2E258(v50, &qword_28045F080, &qword_26C0184C8);
    if (v58(v55 + v53, 1, v40) == 1)
    {
      v60 = v40;
      v102 = v57;
      sub_26BE2E258(v55, &qword_28045F080, &qword_26C0184C8);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v61 = v94;
  sub_26BE2E1F0(v55, v94, &qword_28045F080, &qword_26C0184C8);
  if (v58(v55 + v53, 1, v40) == 1)
  {
    sub_26BE2E258(v100, &qword_28045F080, &qword_26C0184C8);
    sub_26BEDC1B0(v61, type metadata accessor for FileMetadata);
LABEL_13:
    v46 = v55;
    goto LABEL_21;
  }

  v60 = v40;
  v102 = v57;
  v62 = v55 + v53;
  v63 = v98;
  sub_26BEDC148(v62, v98, type metadata accessor for FileMetadata);
  v64 = v55;
  v65 = sub_26BEDBDA4(v61, v63);
  sub_26BEDC1B0(v63, type metadata accessor for FileMetadata);
  sub_26BE2E258(v100, &qword_28045F080, &qword_26C0184C8);
  sub_26BEDC1B0(v61, type metadata accessor for FileMetadata);
  sub_26BE2E258(v64, &qword_28045F080, &qword_26C0184C8);
  if ((v65 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v66 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  v67 = v95;
  sub_26BE2E1F0(v45 + v66, v95, &qword_28045F080, &qword_26C0184C8);
  v68 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  v69 = *(v52 + 48);
  v70 = v93;
  sub_26BE2E1F0(v67, v93, &qword_28045F080, &qword_26C0184C8);
  sub_26BE2E1F0(v39 + v68, v70 + v69, &qword_28045F080, &qword_26C0184C8);
  v71 = v97;
  if (v97(v70, 1, v60) != 1)
  {
    v73 = v91;
    sub_26BE2E1F0(v70, v91, &qword_28045F080, &qword_26C0184C8);
    v72 = v71;
    if (v71(v70 + v69, 1, v60) == 1)
    {
      sub_26BE2E258(v95, &qword_28045F080, &qword_26C0184C8);
      sub_26BEDC1B0(v73, type metadata accessor for FileMetadata);
      goto LABEL_20;
    }

    v75 = v70 + v69;
    v76 = v98;
    sub_26BEDC148(v75, v98, type metadata accessor for FileMetadata);
    v77 = sub_26BEDBDA4(v73, v76);
    sub_26BEDC1B0(v76, type metadata accessor for FileMetadata);
    sub_26BE2E258(v95, &qword_28045F080, &qword_26C0184C8);
    sub_26BEDC1B0(v73, type metadata accessor for FileMetadata);
    sub_26BE2E258(v70, &qword_28045F080, &qword_26C0184C8);
    if (v77)
    {
      goto LABEL_26;
    }

LABEL_22:

    return 0;
  }

  sub_26BE2E258(v67, &qword_28045F080, &qword_26C0184C8);
  v72 = v71;
  if (v71(v70 + v69, 1, v60) != 1)
  {
LABEL_20:
    v46 = v70;
    goto LABEL_21;
  }

  sub_26BE2E258(v70, &qword_28045F080, &qword_26C0184C8);
LABEL_26:
  v78 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
  swift_beginAccess();
  v79 = v92;
  sub_26BE2E1F0(v45 + v78, v92, &qword_28045F080, &qword_26C0184C8);
  v80 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__icon;
  swift_beginAccess();
  v81 = *(v99 + 48);
  v82 = v90;
  sub_26BE2E1F0(v79, v90, &qword_28045F080, &qword_26C0184C8);
  v83 = v39 + v80;
  v84 = v82;
  sub_26BE2E1F0(v83, v82 + v81, &qword_28045F080, &qword_26C0184C8);
  if (v72(v82, 1, v60) == 1)
  {

    sub_26BE2E258(v79, &qword_28045F080, &qword_26C0184C8);
    if (v72(v82 + v81, 1, v60) == 1)
    {
      sub_26BE2E258(v82, &qword_28045F080, &qword_26C0184C8);
      return 1;
    }

    goto LABEL_31;
  }

  v85 = v89;
  sub_26BE2E1F0(v82, v89, &qword_28045F080, &qword_26C0184C8);
  if (v72(v82 + v81, 1, v60) == 1)
  {

    sub_26BE2E258(v92, &qword_28045F080, &qword_26C0184C8);
    sub_26BEDC1B0(v85, type metadata accessor for FileMetadata);
LABEL_31:
    sub_26BE2E258(v82, &qword_28045F088, &qword_26C0184D0);
    return 0;
  }

  v86 = v98;
  sub_26BEDC148(v82 + v81, v98, type metadata accessor for FileMetadata);
  v87 = sub_26BEDBDA4(v85, v86);

  sub_26BEDC1B0(v86, type metadata accessor for FileMetadata);
  sub_26BE2E258(v92, &qword_28045F080, &qword_26C0184C8);
  sub_26BEDC1B0(v85, type metadata accessor for FileMetadata);
  sub_26BE2E258(v84, &qword_28045F080, &qword_26C0184C8);
  return (v87 & 1) != 0;
}

uint64_t sub_26BEDB328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26C0098BC();
  v4 = *(a1 + 20);
  if (qword_28045DFC0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_28045EF38;
}

uint64_t sub_26BEDB3B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C0098CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26BEDB420(uint64_t a1)
{
  v3 = sub_26C0098CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_26BEDB4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BEDB83C(&qword_28045F078, type metadata accessor for FileInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BEDB578@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26C009A2C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26BEDB614(uint64_t a1)
{
  v2 = sub_26BEDB83C(&qword_28045EFE8, type metadata accessor for FileInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BEDB680()
{
  sub_26C00B05C();
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BEDB6D8()
{
  sub_26BEDB83C(&qword_28045EFE8, type metadata accessor for FileInfo);

  return sub_26C0099BC();
}

uint64_t sub_26BEDB754()
{
  sub_26C00B05C();
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BEDB83C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BEDBB54()
{
  result = qword_28045F058;
  if (!qword_28045F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F058);
  }

  return result;
}

uint64_t sub_26BEDBBA8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FileInfo(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_26BEDA668(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_26C0098CC();
  sub_26BEDB83C(&qword_28045F060, MEMORY[0x277D216C8]);
  return sub_26C00A43C() & 1;
}

uint64_t sub_26BEDBC90(uint64_t a1, uint64_t a2)
{
  if ((sub_26BE02DEC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_26BE02DEC(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (sub_26BE02DEC(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (*(a1 + 56))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 56) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v7 = *(type metadata accessor for FileEncryptionInfo(0) + 32);
  sub_26C0098CC();
  sub_26BEDB83C(&qword_28045F060, MEMORY[0x277D216C8]);
  return sub_26C00A43C() & 1;
}

uint64_t sub_26BEDBDA4(void *a1, void *a2)
{
  v4 = type metadata accessor for FileEncryptionInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F070, &qword_26C0184C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_26C00AF2C() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_26C00AF2C() & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = v8;
  v26 = type metadata accessor for FileMetadata(0);
  v17 = *(v26 + 28);
  v18 = *(v13 + 48);
  sub_26BE2E1F0(a1 + v17, v16, &qword_28045EF78, &unk_26C017EE0);
  sub_26BE2E1F0(a2 + v17, &v16[v18], &qword_28045EF78, &unk_26C017EE0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_26BE2E258(v16, &qword_28045EF78, &unk_26C017EE0);
LABEL_15:
      v23 = *(v26 + 24);
      sub_26C0098CC();
      sub_26BEDB83C(&qword_28045F060, MEMORY[0x277D216C8]);
      v20 = sub_26C00A43C();
      return v20 & 1;
    }

    goto LABEL_12;
  }

  sub_26BE2E1F0(v16, v12, &qword_28045EF78, &unk_26C017EE0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_26BEDC1B0(v12, type metadata accessor for FileEncryptionInfo);
LABEL_12:
    sub_26BE2E258(v16, &qword_28045F070, &qword_26C0184C0);
    goto LABEL_13;
  }

  v21 = v25;
  sub_26BEDC148(&v16[v18], v25, type metadata accessor for FileEncryptionInfo);
  v22 = sub_26BEDBC90(v12, v21);
  sub_26BEDC1B0(v21, type metadata accessor for FileEncryptionInfo);
  sub_26BEDC1B0(v12, type metadata accessor for FileEncryptionInfo);
  sub_26BE2E258(v16, &qword_28045EF78, &unk_26C017EE0);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_13:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_26BEDC148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEDC1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BEDC210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.FramedContent.contentType.getter@<X0>(char *a1@<X8>)
{
  v3 = v1[12];
  v11[8] = v1[11];
  v11[9] = v3;
  v12[0] = v1[13];
  *(v12 + 9) = *(v1 + 217);
  v4 = v1[8];
  v11[4] = v1[7];
  v11[5] = v4;
  v5 = v1[10];
  v11[6] = v1[9];
  v11[7] = v5;
  v6 = v1[4];
  v11[0] = v1[3];
  v11[1] = v6;
  v7 = v1[6];
  v11[2] = v1[5];
  v11[3] = v7;
  v8 = sub_26BE6917C(v11);
  if (v8)
  {
    if (v8 == 1)
    {
      result = nullsub_1(v11);
      v10 = 2;
    }

    else
    {
      result = nullsub_1(v11);
      v10 = 3;
    }
  }

  else
  {
    result = nullsub_1(v11);
    v10 = 1;
  }

  *a1 = v10;
  return result;
}

__n128 MLS.FramedContent.init(groupID:epoch:sender:authenticatedData:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 4);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = v8;
  *(a8 + 28) = v9;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(a7 + 144);
  *(a8 + 176) = *(a7 + 128);
  *(a8 + 192) = v10;
  *(a8 + 208) = *(a7 + 160);
  *(a8 + 217) = *(a7 + 169);
  v11 = *(a7 + 80);
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 128) = v11;
  v12 = *(a7 + 112);
  *(a8 + 144) = *(a7 + 96);
  *(a8 + 160) = v12;
  v13 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v13;
  result = *(a7 + 32);
  v15 = *(a7 + 48);
  *(a8 + 80) = result;
  *(a8 + 96) = v15;
  return result;
}

uint64_t sub_26BEDC390(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = *(a1 + 40);
  v52 = *(a1 + 32);
  v8 = *(a1 + 192);
  v85 = *(a1 + 176);
  v86 = v8;
  v87[0] = *(a1 + 208);
  *(v87 + 9) = *(a1 + 217);
  v9 = *(a1 + 128);
  v81 = *(a1 + 112);
  v82 = v9;
  v10 = *(a1 + 160);
  v83 = *(a1 + 144);
  v84 = v10;
  v11 = *(a1 + 64);
  v77 = *(a1 + 48);
  v78 = v11;
  v12 = *(a1 + 96);
  v13 = v3 >> 62;
  v79 = *(a1 + 80);
  v80 = v12;
  if ((v3 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v16 = *(v2 + 16);
  v15 = *(v2 + 24);
  v14 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v14 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v14);
  if (v1)
  {
    goto LABEL_44;
  }

  v18 = result;
  sub_26BE11228(v2, v3);
  v19 = v18 + v14;
  if (__OFADD__(v18, v14))
  {
    __break(1u);
    goto LABEL_48;
  }

  *&v55 = bswap64(v4);
  v20 = MEMORY[0x277D838B0];
  v21 = MEMORY[0x277CC9C18];
  *(&v67 + 1) = MEMORY[0x277D838B0];
  *&v68 = MEMORY[0x277CC9C18];
  *&v66 = &v55;
  *(&v66 + 1) = &v55 + 8;
  v22 = __swift_project_boxed_opaque_existential_1(&v66, MEMORY[0x277D838B0]);
  v24 = *v22;
  v23 = v22[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v66);
  v25 = __OFADD__(v19, 8);
  v26 = v19 + 8;
  if (v25)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v27 = 2;
    }

    else if (v5)
    {
      v27 = 4;
    }

    else
    {
      v27 = 3;
    }
  }

  else
  {
    v27 = 1;
  }

  LOBYTE(v55) = v27;
  *(&v67 + 1) = v20;
  *&v68 = v21;
  *&v66 = &v55;
  *(&v66 + 1) = &v55 + 1;
  v28 = __swift_project_boxed_opaque_existential_1(&v66, v20);
  v30 = *v28;
  v29 = v28[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v66);
  if (v6 > 1)
  {
    v34 = 1;
  }

  else
  {
    LODWORD(v55) = bswap32(v5);
    *(&v67 + 1) = v20;
    *&v68 = v21;
    *&v66 = &v55;
    *(&v66 + 1) = &v55 + 4;
    v31 = __swift_project_boxed_opaque_existential_1(&v66, v20);
    v33 = *v31;
    v32 = v31[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v34 = 5;
  }

  v35 = v26 + v34;
  if (__OFADD__(v26, v34))
  {
    goto LABEL_49;
  }

  v36 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(v7);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (v36 != 2)
  {
    v37 = 0;
    goto LABEL_35;
  }

  v39 = *(v52 + 16);
  v38 = *(v52 + 24);
  v37 = v38 - v39;
  if (__OFSUB__(v38, v39))
  {
    __break(1u);
LABEL_32:
    if (__OFSUB__(HIDWORD(v52), v52))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v37 = HIDWORD(v52) - v52;
  }

LABEL_35:
  v40 = sub_26BF30414(v37);
  sub_26BE11228(v52, v7);
  v41 = v40 + v37;
  if (__OFADD__(v40, v37))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v25 = __OFADD__(v35, v41);
  v42 = v35 + v41;
  if (v25)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v74 = v85;
  v75 = v86;
  v76[0] = v87[0];
  *(v76 + 9) = *(v87 + 9);
  v70 = v81;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v66 = v77;
  v67 = v78;
  v68 = v79;
  v69 = v80;
  v43 = sub_26BE6917C(&v66);
  if (v43)
  {
    if (v43 == 1)
    {
      nullsub_1(&v66);
      v44 = 2;
    }

    else
    {
      nullsub_1(&v66);
      v44 = 3;
    }
  }

  else
  {
    nullsub_1(&v66);
    v44 = 1;
  }

  LOBYTE(v53[0]) = v44;
  *(&v56 + 1) = v20;
  *&v57 = v21;
  *&v55 = v53;
  *(&v55 + 1) = v53 + 1;
  v45 = __swift_project_boxed_opaque_existential_1(&v55, v20);
  v47 = *v45;
  v46 = v45[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v55);
  v25 = __OFADD__(v42, 1);
  v48 = v42 + 1;
  if (v25)
  {
    goto LABEL_53;
  }

  v63 = v85;
  v64 = v86;
  v65[0] = v87[0];
  *(v65 + 9) = *(v87 + 9);
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v62 = v84;
  v55 = v77;
  v56 = v78;
  v57 = v79;
  v58 = v80;
  sub_26BE71438(&v77, v53);
  v49 = sub_26BEDCCE4(&v55);
  v53[8] = v63;
  v53[9] = v64;
  v54[0] = v65[0];
  *(v54 + 9) = *(v65 + 9);
  v53[4] = v59;
  v53[5] = v60;
  v53[6] = v61;
  v53[7] = v62;
  v53[0] = v55;
  v53[1] = v56;
  v53[2] = v57;
  v53[3] = v58;
  v51 = v49;
  sub_26BE6FD84(v53);
  result = v51 + v48;
  if (__OFADD__(v48, v51))
  {
LABEL_55:
    __break(1u);
  }

LABEL_44:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.FramedContent.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.FramedContent.groupID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

void MLS.FramedContent.sender.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 28);
  *a1 = *(v1 + 24);
  *(a1 + 4) = v2;
}

uint64_t MLS.FramedContent.sender.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 24) = *result;
  *(v1 + 28) = v2;
  return result;
}

uint64_t MLS.FramedContent.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[10];
  v25 = v1[11];
  v26 = v2;
  v4 = v1[12];
  v27[0] = v1[13];
  *(v27 + 9) = *(v1 + 217);
  v5 = v1[8];
  v7 = v1[6];
  v21 = v1[7];
  v6 = v21;
  v22 = v5;
  v8 = v1[8];
  v9 = v1[10];
  v23 = v1[9];
  v10 = v23;
  v24 = v9;
  v11 = v1[4];
  v18[0] = v1[3];
  v18[1] = v11;
  v12 = v1[6];
  v14 = v1[3];
  v13 = v1[4];
  v19 = v1[5];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[13];
  *(a1 + 169) = *(v1 + 217);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_26BE71438(v18, &v17);
}

__n128 MLS.FramedContent.content.setter(uint64_t a1)
{
  v3 = v1[12];
  v14[8] = v1[11];
  v14[9] = v3;
  v15[0] = v1[13];
  *(v15 + 9) = *(v1 + 217);
  v4 = v1[8];
  v14[4] = v1[7];
  v14[5] = v4;
  v5 = v1[10];
  v14[6] = v1[9];
  v14[7] = v5;
  v6 = v1[4];
  v14[0] = v1[3];
  v14[1] = v6;
  v7 = v1[6];
  v14[2] = v1[5];
  v14[3] = v7;
  sub_26BE6FD84(v14);
  v8 = *(a1 + 144);
  v1[11] = *(a1 + 128);
  v1[12] = v8;
  v1[13] = *(a1 + 160);
  *(v1 + 217) = *(a1 + 169);
  v9 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v9;
  v10 = *(a1 + 112);
  v1[9] = *(a1 + 96);
  v1[10] = v10;
  v11 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  v1[5] = result;
  v1[6] = v13;
  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_26BEDCAFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 233))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 28);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BEDCB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
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
    *(result + 232) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 233) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 233) = 0;
    }

    if (a2)
    {
      *(result + 28) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26BEDCC10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 185))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 184);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BEDCC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
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
    *(result + 184) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 184) = -a2;
    }
  }

  return result;
}

uint64_t *sub_26BEDCCE4(_OWORD *a1)
{
  v2 = a1[9];
  v39[8] = a1[8];
  v39[9] = v2;
  v40[0] = a1[10];
  *(v40 + 9) = *(a1 + 169);
  v3 = a1[5];
  v39[4] = a1[4];
  v39[5] = v3;
  v4 = a1[7];
  v39[6] = a1[6];
  v39[7] = v4;
  v5 = a1[1];
  v39[0] = *a1;
  v39[1] = v5;
  v6 = a1[3];
  v39[2] = a1[2];
  v39[3] = v6;
  v7 = sub_26BE6917C(v39);
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = nullsub_1(v39);
      v9 = *(v8 + 144);
      v35 = *(v8 + 128);
      v36 = v9;
      v37 = *(v8 + 160);
      v38 = *(v8 + 176);
      v10 = *(v8 + 80);
      v31 = *(v8 + 64);
      v32 = v10;
      v11 = *(v8 + 112);
      v33 = *(v8 + 96);
      v34 = v11;
      v12 = *(v8 + 16);
      v27 = *v8;
      v28 = v12;
      v13 = *(v8 + 48);
      v29 = *(v8 + 32);
      v30 = v13;
      return sub_26BF31160(&v27);
    }

    else
    {
      v19 = nullsub_1(v39);
      v20 = *(v19 + 112);
      v33 = *(v19 + 96);
      v34 = v20;
      v35 = *(v19 + 128);
      *&v36 = *(v19 + 144);
      v21 = *(v19 + 48);
      v29 = *(v19 + 32);
      v30 = v21;
      v22 = *(v19 + 80);
      v31 = *(v19 + 64);
      v32 = v22;
      v23 = *(v19 + 16);
      v27 = *v19;
      v28 = v23;
      return sub_26BED61D4(&v27);
    }
  }

  result = nullsub_1(v39);
  v15 = *result;
  v16 = result[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_15;
    }

    v25 = *(v15 + 16);
    v24 = *(v15 + 24);
    v18 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(v16);
    goto LABEL_15;
  }

  if (__OFSUB__(HIDWORD(v15), v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v18 = HIDWORD(v15) - v15;
LABEL_15:
  result = sub_26BF30414(v18);
  if (!v1)
  {
    v26 = result;
    sub_26BE11228(v15, v16);
    result = (v26 + v18);
    if (__OFADD__(v26, v18))
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  return result;
}

void sub_26BEDCE9C(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  switch(v4)
  {
    case 3:
      sub_26BED6530(&v13);
      if (v2)
      {
        return;
      }

      v31 = v19;
      v32 = v20;
      v33 = v21;
      *&v34 = v22;
      v27 = v15;
      v28 = v16;
      v29 = v17;
      v30 = v18;
      v25 = v13;
      v26 = v14;
      sub_26BE7157C(&v25);
      goto LABEL_10;
    case 2:
      sub_26BF3182C(&v13);
      if (v2)
      {
        return;
      }

      v33 = v21;
      v34 = v22;
      *v35 = v23;
      *&v35[16] = v24;
      v29 = v17;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      sub_26BE82200(&v25);
      goto LABEL_10;
    case 1:
      v5 = sub_26BF2F7B0();
      if (v2)
      {
        return;
      }

      *&v25 = v5;
      *(&v25 + 1) = v6;
      sub_26BE8220C(&v25);
LABEL_10:
      v7 = v34;
      a2[8] = v33;
      a2[9] = v7;
      a2[10] = *v35;
      *(a2 + 169) = *&v35[9];
      v8 = v30;
      a2[4] = v29;
      a2[5] = v8;
      v9 = v32;
      a2[6] = v31;
      a2[7] = v9;
      v10 = v26;
      *a2 = v25;
      a2[1] = v10;
      v11 = v28;
      a2[2] = v27;
      a2[3] = v11;
      return;
  }

  sub_26BE01600();
  swift_allocError();
  *v12 = 5;
  swift_willThrow();
}

double sub_26BEDD03C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_26BF2F7B0();
  if (!v1)
  {
    v6 = v3;
    v7 = v4;
    v8 = sub_26BEEE594();
    if (v9)
    {
      sub_26BE01600();
      swift_allocError();
      *v10 = 1;
      swift_willThrow();
LABEL_4:
      sub_26BE00258(v6, v7);
      return result;
    }

    v11 = v8;
    sub_26BED5E48(&v34);
    v12 = v34;
    v13 = v35;
    v14 = sub_26BF2F7B0();
    v23 = v15;
    v16 = sub_26BEE62D4();
    if ((v16 & 0x100) != 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
      sub_26BE00258(v14, v23);
      goto LABEL_4;
    }

    LOBYTE(v34) = v16;
    sub_26BEDCE9C(&v34, v24);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v11;
    *(a1 + 24) = v12;
    *(a1 + 28) = v13;
    *(a1 + 32) = v14;
    *(a1 + 40) = v23;
    v18 = v32;
    *(a1 + 176) = v31;
    *(a1 + 192) = v18;
    *(a1 + 208) = v33[0];
    *(a1 + 217) = *(v33 + 9);
    v19 = v28;
    *(a1 + 112) = v27;
    *(a1 + 128) = v19;
    v20 = v30;
    *(a1 + 144) = v29;
    *(a1 + 160) = v20;
    v21 = v24[1];
    *(a1 + 48) = v24[0];
    *(a1 + 64) = v21;
    result = *&v25;
    v22 = v26;
    *(a1 + 80) = v25;
    *(a1 + 96) = v22;
  }

  return result;
}

uint64_t MLS.GroupInfo.verifySignature(publicKey:)(void *a1)
{
  v3 = v1;
  v5 = _s12GroupInfoTBSVMa();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(v3 + 48);
  v33 = *(v3 + 32);
  v34 = v10;
  v11 = *(v3 + 72);
  v35 = *(v3 + 64);
  v12 = *(v3 + 16);
  v31 = *v3;
  v32 = v12;
  v13 = type metadata accessor for MLS.GroupInfo();
  sub_26BE8236C(v3 + v13[6], &v9[*(v6 + 32)]);
  v14 = *(v3 + v13[7]);
  v15 = v34;
  *(v9 + 2) = v33;
  *(v9 + 3) = v15;
  v16 = v35;
  v17 = v32;
  *v9 = v31;
  *(v9 + 1) = v17;
  *(v9 + 8) = v16;
  *(v9 + 9) = v11;
  *&v9[*(v6 + 36)] = v14;
  v29 = xmmword_26C00BBD0;
  v30 = 0;
  sub_26BE001A8(&v31, v28);

  sub_26BDFF8E4(v9);
  if (!v2)
  {
    v18 = v29;
    v19 = *(&v29 + 1) >> 62;
    if ((*(&v29 + 1) >> 62) > 1)
    {
      if (v19 != 2)
      {
LABEL_11:
        v21 = sub_26C00909C();
        v23 = v22;
        sub_26BEDD44C(v9);
        sub_26BE00258(v18, *(&v18 + 1));
        v24 = a1[3];
        v25 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v24);
        LOBYTE(v3) = MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(0x666E4970756F7247, 0xEC0000005342546FLL, v21, v23, *(v3 + v13[8]), *(v3 + v13[8] + 8), v24, v25);
        sub_26BE00258(v21, v23);
        return v3 & 1;
      }

      v20 = *(v29 + 24);
    }

    else
    {
      if (!v19)
      {
        goto LABEL_11;
      }

      v20 = v29 >> 32;
    }

    if (v20 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  sub_26BEDD44C(v9);
  sub_26BE00258(v29, *(&v29 + 1));
  return v3 & 1;
}

uint64_t sub_26BEDD44C(uint64_t a1)
{
  v2 = _s12GroupInfoTBSVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BEDD4A8(unsigned __int16 *a1)
{
  v122 = *MEMORY[0x277D85DE8];
  LOWORD(v108) = bswap32(*a1) >> 16;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  *(&v120 + 1) = MEMORY[0x277D838B0];
  *v121 = MEMORY[0x277CC9C18];
  *&v119 = &v108;
  *(&v119 + 1) = &v108 + 2;
  v7 = __swift_project_boxed_opaque_existential_1(&v119, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v119);
  v10 = *(a1 + 1);
  v11 = *(a1 + 2);
  v12 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v12)
    {
      v2 = BYTE6(v11);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
    v2 = 0;
    goto LABEL_11;
  }

  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  v2 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v2 = HIDWORD(v10) - v10;
  }

LABEL_11:
  result = sub_26BF30414(v2);
  if (v1)
  {
LABEL_16:
    v26 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  sub_26BE11228(v10, v11);
  v16 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16 + 2;
  if (__OFADD__(v16, 2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *&v108 = bswap64(*(a1 + 3));
  *(&v120 + 1) = v5;
  *v121 = v6;
  *&v119 = &v108;
  *(&v119 + 1) = &v108 + 8;
  v18 = __swift_project_boxed_opaque_existential_1(&v119, v5);
  v20 = *v18;
  v19 = v18[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v119);
  v2 = (v17 + 8);
  if (__OFADD__(v17, 8))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v21 = *(a1 + 7);
  LOWORD(v108) = bswap32(a1[16]) >> 16;
  *(&v120 + 1) = v5;
  *v121 = v6;
  *&v119 = &v108;
  *(&v119 + 1) = &v108 + 2;
  v22 = __swift_project_boxed_opaque_existential_1(&v119, v5);
  v23 = *v22;
  v24 = v22[1];

  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v119);
  *&v119 = v21;
  v1 = 0;
  v25 = 0;
  v27 = sub_26BE7D80C(&v119);

  v28 = v27 + 2;
  if (__OFADD__(v27, 2))
  {
    goto LABEL_34;
  }

  v29 = v2 + v28;
  if (__OFADD__(v2, v28))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = type metadata accessor for MLS.GroupState();
  v30 = sub_26BE54A40((a1 + v3[8]));
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (!v31)
  {
    v33 = a1 + v3[9];
    v34 = *(v33 + 1);
    v35 = *(v33 + 2);
    v36 = *(v33 + 3);
    v37 = *(v33 + 4);
    LOWORD(v119) = *v33;
    *(&v119 + 1) = v34;
    *&v120 = v35;
    *(&v120 + 1) = v36;
    *v121 = v37;
    sub_26BE00608(v34, v35);
    sub_26BE00608(v36, v37);
    v38 = sub_26BE2F818(&v119);
    v79 = v3;
    v2 = *(&v120 + 1);
    v39 = *v121;
    sub_26BE00258(*(&v119 + 1), v120);
    v40 = sub_26BE00258(v2, v39);
    v31 = __OFADD__(v32, v38);
    v41 = v32 + v38;
    if (v31)
    {
      __break(1u);
      goto LABEL_41;
    }

    v3 = v79;
    v42 = *(a1 + v79[10]);
    v78 = xmmword_26C00BBD0;
    v119 = xmmword_26C00BBD0;
    *&v120 = 0;
    v43 = sub_26BEEAC24(0, v42);
    v44 = sub_26BF30414(v43);
    sub_26BF2A30C(&v119);
    sub_26BE00258(v119, *(&v119 + 1));
    v45 = v44 + v43;
    if (__OFADD__(v44, v43))
    {
      __break(1u);
    }

    else
    {
      v46 = v41 + v45;
      if (!__OFADD__(v41, v45))
      {
        v1 = 0;
        v47 = sub_26BEB5330(a1 + v79[11]);
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          __break(1u);
          goto LABEL_53;
        }

        v49 = a1 + v79[12];
        v50 = *(v49 + 5);
        v51 = *(v49 + 3);
        v93 = *(v49 + 4);
        v94 = v50;
        v52 = *(v49 + 5);
        v95 = *(v49 + 6);
        v53 = *(v49 + 1);
        v90[0] = *v49;
        v90[1] = v53;
        v54 = *(v49 + 3);
        v56 = *v49;
        v55 = *(v49 + 1);
        v91 = *(v49 + 2);
        v92 = v54;
        v86 = v93;
        v87 = v52;
        v88 = *(v49 + 6);
        v82 = v56;
        v83 = v55;
        v96 = *(v49 + 14);
        v89 = *(v49 + 14);
        v84 = v91;
        v85 = v51;
        sub_26BEDFD1C(v90, &v119);
        v57 = sub_26BF92D78(&v82);
        v80[4] = v86;
        v80[5] = v87;
        v80[6] = v88;
        v81 = v89;
        v80[0] = v82;
        v80[1] = v83;
        v80[2] = v84;
        v80[3] = v85;
        result = sub_26BE717DC(v80);
        v58 = v48 + v57;
        if (__OFADD__(v48, v57))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        LODWORD(v108) = bswap32(*(a1 + v79[13]));
        *(&v120 + 1) = v5;
        *v121 = v6;
        *&v119 = &v108;
        *(&v119 + 1) = &v108 + 4;
        v59 = __swift_project_boxed_opaque_existential_1(&v119, v5);
        v61 = *v59;
        v60 = v59[1];
        sub_26C00908C();
        result = __swift_destroy_boxed_opaque_existential_1(&v119);
        v31 = __OFADD__(v58, 4);
        v62 = v58 + 4;
        if (v31)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        result = sub_26BE136C4((a1 + v79[14]));
        v2 = v62 + result;
        if (__OFADD__(v62, result))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (*(*(a1 + v79[17]) + 16) || *(*(a1 + v79[18]) + 16))
        {
          sub_26BE01654();
          swift_allocError();
          *v63 = 0xD000000000000029;
          *(v63 + 8) = 0x800000026C02B3B0;
          *(v63 + 112) = 2;
          result = swift_willThrow();
          goto LABEL_16;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v64 = *(a1 + v3[15]);
  v119 = v78;
  *&v120 = 0;
  v65 = sub_26BEDFB9C(0, v64);
  if (v1)
  {
    result = sub_26BE00258(v119, *(&v119 + 1));
    goto LABEL_16;
  }

  v25 = v65;
  v40 = sub_26BF30414(v65);
  *&v78 = 0;
LABEL_41:
  v66 = v40;
  sub_26BF2A30C(&v119);
  result = sub_26BE00258(v119, *(&v119 + 1));
  v67 = v66 + v25;
  if (__OFADD__(v66, v25))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v44 = v2 + v67;
  if (__OFADD__(v2, v67))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_26BE5CE40(a1 + v79[16], &v108);
  if (!*(&v109 + 1))
  {
LABEL_48:
    sub_26BE2E258(&v108, &qword_28045E730, &qword_26C011528);
    LOBYTE(v108) = 0;
    *(&v120 + 1) = v5;
    *v121 = v6;
    *&v119 = &v108;
    *(&v119 + 1) = &v108 + 1;
    v72 = __swift_project_boxed_opaque_existential_1(&v119, v5);
    v74 = *v72;
    v73 = v72[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v119);
    v75 = 1;
    goto LABEL_49;
  }

  *&v121[96] = v116;
  *&v121[112] = v117;
  *&v121[128] = v118;
  *&v121[32] = v112;
  *&v121[48] = v113;
  *&v121[64] = v114;
  *&v121[80] = v115;
  v119 = v108;
  v120 = v109;
  *v121 = v110;
  *&v121[16] = v111;
  LOBYTE(v99) = 1;
  *(&v109 + 1) = v5;
  *&v110 = v6;
  *&v108 = &v99;
  *(&v108 + 1) = &v99 + 1;
  v68 = __swift_project_boxed_opaque_existential_1(&v108, v5);
  v70 = *v68;
  v69 = v68[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v108);
  v71 = sub_26BE10BE4(&v119);
  if (v78)
  {
    result = sub_26BE5CF0C(&v119);
    goto LABEL_16;
  }

  v5 = v71;
  *&v116 = *&v121[136];
  v114 = *&v121[104];
  v115 = *&v121[120];
  v110 = *&v121[40];
  v111 = *&v121[56];
  v112 = *&v121[72];
  v113 = *&v121[88];
  v108 = *&v121[8];
  v109 = *&v121[24];
  v105 = *&v121[104];
  v106 = *&v121[120];
  v107 = *&v121[136];
  v101 = *&v121[40];
  v102 = *&v121[56];
  v103 = *&v121[72];
  v104 = *&v121[88];
  v99 = *&v121[8];
  v100 = *&v121[24];
  sub_26BE5CEB0(&v108, v97);
  v47 = sub_26BE7DD28(&v99);
LABEL_53:
  v76 = v47;
  v97[6] = v105;
  v97[7] = v106;
  v98 = v107;
  v97[2] = v101;
  v97[3] = v102;
  v97[4] = v103;
  v97[5] = v104;
  v97[0] = v99;
  v97[1] = v100;
  sub_26BE00854(v97);
  result = sub_26BE5CF0C(&v119);
  v77 = v5 + v76;
  if (!__OFADD__(v5, v76))
  {
    v31 = __OFADD__(v77, 1);
    v75 = v77 + 1;
    if (!v31)
    {
LABEL_49:
      result = v44 + v75;
      if (!__OFADD__(v44, v75))
      {
        goto LABEL_16;
      }

      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_26BEDDD14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v243[5] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for MLS.KeySchedule();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLS.TreeKEMPrivateKey();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26BEE6180();
  if ((v13 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v20 = 1;
    result = swift_willThrow();
    goto LABEL_8;
  }

  v14 = v13;
  result = sub_26BF2F7B0();
  if (v2)
  {
LABEL_8:
    v28 = *MEMORY[0x277D85DE8];
    return result;
  }

  v190 = result;
  v191 = v16;
  v17 = sub_26BEEE594();
  if (v18)
  {
    sub_26BE01600();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    v26 = v190;
    v27 = v191;
    goto LABEL_7;
  }

  v21 = v17;
  sub_26BE54498(&v208);
  v186 = v14;
  v188 = a1;
  v189 = v8;
  v187 = v21;
  v22 = v208;
  v23 = *(&v208 + 1);
  v24 = v209;
  v25 = *(&v209 + 1);
  sub_26BE554BC(v12);
  v181 = v24;
  v182 = v22;
  v184 = v23;
  v185 = v12;
  v183 = v25;
  v29 = sub_26BEE6180();
  if ((v29 & 0x10000) != 0)
  {

    sub_26BE01600();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    sub_26BE00258(v190, v191);
    goto LABEL_12;
  }

  v180 = v29;
  v30 = sub_26BF2F7B0();
  v31 = v185;
  v178 = v30;
  v179 = v34;
  v176 = sub_26BF2F7B0();
  v177 = v35;
  v37 = *v1;
  v36 = v1[1];
  v38 = v1[2];
  sub_26BE00608(*v1, v36);
  sub_26BE00608(v37, v36);
  sub_26BF30764(v1, &v208);
  if (BYTE8(v208))
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v37;
    v1[1] = v36;
    v39 = v36;
    v40 = v37;
    v1[2] = v38;
LABEL_17:
    sub_26BE00258(v40, v39);

    *v3 = v37;
    v3[1] = v36;
    v3[2] = v38;
    sub_26BE01600();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
    sub_26BE00258(v190, v191);
    sub_26BE00258(v178, v179);
    sub_26BE00258(v176, v177);
    v33 = v31;
    goto LABEL_13;
  }

  v42 = v208;
  v43 = 100000000;
  sub_26BE00258(v37, v36);
  if (v42 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v44 = 5;
    swift_willThrow();
    goto LABEL_14;
  }

  v170 = v38;
  v45 = sub_26BF2A44C(v42);
  if (v46 >> 60 == 15)
  {
    v40 = *v3;
    v39 = v3[1];
    v38 = v170;
    goto LABEL_17;
  }

  *&v167 = v37;
  *(&v167 + 1) = v36;
  *&v208 = v45;
  *(&v208 + 1) = v46;
  v168 = v45;
  v169 = v45 >> 32;
  v175 = v47;
  *&v209 = v47;
  v171 = BYTE6(v46);
  v172 = v46 >> 62;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v172 > 1)
    {
      if (v172 == 2)
      {
        v49 = *(v168 + 3);
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = v171;
      if (v172)
      {
        v49 = v169;
      }
    }

    v50 = __OFSUB__(v49, v175);
    v51 = v49 - v175;
    if (v50)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v51 < 1)
    {
      break;
    }

    v174 = v48;
    LOWORD(v224[0]) = 0;
    v52 = v175 + 2;
    if (__OFADD__(v175, 2))
    {
      goto LABEL_87;
    }

    v43 = *(&v208 + 1);
    v53 = v208;
    v54 = *(&v208 + 1) >> 62;
    if ((*(&v208 + 1) >> 62) <= 1)
    {
      if (v54)
      {
        v55 = v208 >> 32;
      }

      else
      {
        v55 = BYTE14(v208);
      }

LABEL_38:
      if (v55 < v52)
      {
        goto LABEL_74;
      }

      goto LABEL_41;
    }

    if (v54 == 2)
    {
      v55 = *(v208 + 24);
      goto LABEL_38;
    }

    if (v52 > 0)
    {
      goto LABEL_74;
    }

LABEL_41:
    v204[0] = v208;
    if (v52 < v175)
    {
      goto LABEL_88;
    }

    *&v226 = v175;
    *(&v226 + 1) = v175 + 2;
    sub_26BE00608(v208, *(&v208 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(*&v204[0], *(&v204[0] + 1));
    v56 = LOWORD(v224[0]);
    v175 = v52;
    *&v209 = v52;
    sub_26BE00608(v53, v43);
    sub_26BE00608(v53, v43);
    sub_26BF30764(&v208, v204);
    LODWORD(v173) = v56;
    if (BYTE8(v204[0]))
    {
      sub_26BE00258(v208, *(&v208 + 1));
      v81 = v43;
      v60 = v43;
      v82 = v53;
      v59 = v53;
LABEL_73:
      sub_26BE00258(v59, v60);
      *&v208 = v82;
      *(&v208 + 1) = v81;
      *&v209 = v175;
LABEL_74:
      sub_26BE01600();
      swift_allocError();
      *v83 = 1;
      swift_willThrow();
LABEL_75:

      sub_26BE00258(v208, *(&v208 + 1));
      v31 = v185;
      v38 = v170;
      v36 = *(&v167 + 1);
      v37 = v167;
LABEL_14:
      sub_26BE00258(*v3, v3[1]);
      *v3 = v37;
      v3[1] = v36;
      v3[2] = v38;
      swift_willThrow();
      sub_26BEDFD78(v31, type metadata accessor for MLS.TreeKEMPrivateKey);
      sub_26BE00258(v190, v191);

      sub_26BE00258(v178, v179);
      v26 = v176;
      v27 = v177;
LABEL_7:
      result = sub_26BE00258(v26, v27);
      goto LABEL_8;
    }

    v57 = *&v204[0];
    sub_26BE00258(v53, v43);
    v50 = __OFADD__(v209, v57);
    v58 = v209 + v57;
    if (v50)
    {
      goto LABEL_89;
    }

    v60 = *(&v208 + 1);
    v59 = v208;
    v61 = *(&v208 + 1) >> 62;
    if ((*(&v208 + 1) >> 62) <= 1)
    {
      if (v61)
      {
        v62 = v208 >> 32;
      }

      else
      {
        v62 = BYTE14(v208);
      }

LABEL_50:
      if (v62 < v58)
      {
        goto LABEL_72;
      }

      goto LABEL_53;
    }

    if (v61 == 2)
    {
      v62 = *(v208 + 24);
      goto LABEL_50;
    }

    if (v58 > 0)
    {
LABEL_72:
      v82 = v53;
      v81 = v43;
      goto LABEL_73;
    }

LABEL_53:
    if (v58 < v209)
    {
      goto LABEL_90;
    }

    v63 = v53;
    v64 = sub_26C00909C();
    v65 = v64;
    v66 = v58;
    v68 = v67;
    v175 = v66;
    *&v209 = v66;
    v69 = v67 >> 62;
    if ((v67 >> 62) > 1)
    {
      if (v69 != 2)
      {
        goto LABEL_62;
      }

      v64 = *(v64 + 16);
      v70 = *(v65 + 24);
    }

    else
    {
      if (!v69)
      {
        goto LABEL_62;
      }

      v64 = v64;
      v70 = v65 >> 32;
    }

    if (v70 < v64)
    {
      __break(1u);
      goto LABEL_93;
    }

LABEL_62:
    v71 = sub_26C00909C();
    v73 = v72;
    sub_26BE00258(v65, v68);
    v74 = v43;
    v43 = v71;
    sub_26BE00258(v63, v74);
    sub_26BE00608(v71, v73);
    v48 = v174;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_26BEEBD8C(0, *(v48 + 2) + 1, 1, v48);
    }

    v76 = *(v48 + 2);
    v75 = *(v48 + 3);
    if (v76 >= v75 >> 1)
    {
      v48 = sub_26BEEBD8C((v75 > 1), v76 + 1, 1, v48);
    }

    v77 = bswap32(v173) >> 16;
    sub_26BE00258(v43, v73);
    *(v48 + 2) = v76 + 1;
    v78 = &v48[24 * v76];
    *(v78 + 16) = v77;
    *(v78 + 5) = v43;
    *(v78 + 6) = v73;
  }

  v43 = v48;
  v79 = *(&v208 + 1) >> 62;
  if ((*(&v208 + 1) >> 62) > 1)
  {
    if (v79 == 2)
    {
      v80 = *(v208 + 24);
    }

    else
    {
      v80 = 0;
    }
  }

  else if (v79)
  {
    v80 = v208 >> 32;
  }

  else
  {
    v80 = BYTE14(v208);
  }

  if (__OFSUB__(v80, v175))
  {
    __break(1u);
LABEL_164:
    sub_26BE01600();
    swift_allocError();
    v138 = 1;
    goto LABEL_175;
  }

  if (v80 != v175)
  {
    sub_26BE01654();
    swift_allocError();
    *v84 = 0;
    v84[112] = 1;
    swift_willThrow();
    goto LABEL_75;
  }

  sub_26BE00258(v208, *(&v208 + 1));
  sub_26BE00258(v167, *(&v167 + 1));
  sub_26BEB563C(v189);
  sub_26BF93F90(v202);
  v198 = v202[4];
  v199 = v202[5];
  v200 = v202[6];
  v201 = v203;
  v194 = v202[0];
  v195 = v202[1];
  v196 = v202[2];
  v197 = v202[3];
  v175 = sub_26BEE6028();
  if ((v175 & 0x100000000) != 0)
  {

    sub_26BE01600();
    swift_allocError();
    *v85 = 1;
    swift_willThrow();
    sub_26BE00258(v190, v191);
    sub_26BE717DC(&v194);
    sub_26BE00258(v178, v179);
    sub_26BE00258(v176, v177);
    goto LABEL_85;
  }

  sub_26BE108C0();
LABEL_91:
  v86 = *v3;
  v87 = v3[1];
  v172 = v3[2];
  sub_26BE00608(v86, v87);
  v173 = v87;
  v174 = v86;
  sub_26BE00608(v86, v87);
  sub_26BF30764(v3, &v208);
LABEL_93:
  if (BYTE8(v208))
  {
    sub_26BE00258(*v3, v3[1]);
    v90 = v173;
    v89 = v174;
    *v3 = v174;
    v3[1] = v90;
    v3[2] = v172;
    goto LABEL_99;
  }

  v91 = v208;
  sub_26BE00258(v174, v173);
  if (v91 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v92 = 5;
    swift_willThrow();
    goto LABEL_92;
  }

  result = sub_26BF2A44C(v91);
  v170 = result;
  v171 = v94;
  if (v93 >> 60 == 15)
  {
    v89 = *v3;
    v90 = v3[1];
LABEL_99:
    sub_26BE00258(v89, v90);

    v95 = v173;
    *v3 = v174;
    v3[1] = v95;
    v3[2] = v172;
LABEL_100:
    sub_26BE01600();
    swift_allocError();
    v97 = 1;
LABEL_101:
    *v96 = v97;
    swift_willThrow();
    sub_26BE00258(v190, v191);
LABEL_102:
    sub_26BE717DC(&v194);
    sub_26BE00258(v178, v179);
    sub_26BE00258(v176, v177);
    __swift_destroy_boxed_opaque_existential_1(v243);
LABEL_85:
    sub_26BEDFD78(v189, type metadata accessor for MLS.KeySchedule);
LABEL_12:
    v33 = v185;
LABEL_13:
    result = sub_26BEDFD78(v33, type metadata accessor for MLS.TreeKEMPrivateKey);
    goto LABEL_8;
  }

  v98 = v93;
  v240 = v170;
  v241 = v93;
  v168 = MEMORY[0x277D84F90];
  v242 = v171;
  while (2)
  {
    v99 = v98 >> 62;
    if ((v98 >> 62) > 1)
    {
      if (v99 == 2)
      {
        v100 = *(v170 + 24);
      }

      else
      {
        v100 = 0;
      }
    }

    else if (v99)
    {
      v100 = v170 >> 32;
    }

    else
    {
      v100 = BYTE6(v98);
    }

    v50 = __OFSUB__(v100, v171);
    v101 = v100 - v171;
    if (v50)
    {
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    if (v101 < 1)
    {
      if (v99 > 1)
      {
        if (v99 == 2)
        {
          v139 = *(v170 + 24);
        }

        else
        {
          v139 = 0;
        }
      }

      else if (v99)
      {
        v139 = v170 >> 32;
      }

      else
      {
        v139 = BYTE6(v98);
      }

      if (__OFSUB__(v139, v171))
      {
        goto LABEL_198;
      }

      if (v139 != v171)
      {
        sub_26BE01654();
        swift_allocError();
        *v142 = 0;
        v142[112] = 1;
        goto LABEL_171;
      }

      sub_26BE00258(v170, v98);
      sub_26BE00258(v174, v173);
      v141 = sub_26BEE62D4();
      if ((v141 & 0x100) != 0)
      {

        goto LABEL_100;
      }

      if (!v141)
      {
        v209 = 0u;
        memset(v210, 0, sizeof(v210));
        v208 = 0u;
LABEL_187:
        v143 = type metadata accessor for MLS.GroupState();
        v144 = v143[8];
        v169 = type metadata accessor for MLS.TreeKEMPrivateKey;
        v145 = v188;
        sub_26BEDFDD8(v185, v188 + v144, type metadata accessor for MLS.TreeKEMPrivateKey);
        v146 = v143[11];
        v166 = type metadata accessor for MLS.KeySchedule;
        sub_26BEDFDD8(v189, v145 + v146, type metadata accessor for MLS.KeySchedule);
        sub_26BE038A8(v243, v145 + v143[14]);
        sub_26BE5CE40(&v208, v204);
        v148 = v178;
        v147 = v179;
        sub_26BE00608(v178, v179);
        sub_26BE00608(v176, v177);
        sub_26BEDFD1C(&v194, &v226);
        v149 = MEMORY[0x277D84F90];
        v172 = sub_26C001A78(MEMORY[0x277D84F90]);
        v150 = sub_26C00528C(v149);
        v151 = v143[16];
        v173 = v143[15];
        v174 = v150;
        v152 = (v145 + v151);
        v152[9] = 0u;
        v152[10] = 0u;
        v152[7] = 0u;
        v152[8] = 0u;
        v152[5] = 0u;
        v152[6] = 0u;
        v152[3] = 0u;
        v152[4] = 0u;
        v152[1] = 0u;
        v152[2] = 0u;
        *v152 = 0u;
        v171 = v143[17];
        *(&v167 + 1) = sub_26C001A78(v149);
        v170 = v143[18];
        *&v167 = sub_26C00528C(v149);
        sub_26BE717DC(&v194);
        sub_26BE00258(v148, v147);
        v153 = v176;
        sub_26BE00258(v176, v177);
        sub_26BE2E258(&v208, &qword_28045E730, &qword_26C011528);
        __swift_destroy_boxed_opaque_existential_1(v243);
        sub_26BEDFD78(v189, v166);
        sub_26BEDFD78(v185, v169);
        *(v145 + v143[19]) = 0;
        v154 = v143[20];
        v155 = type metadata accessor for MLS.GroupInfo();
        (*(*(v155 - 8) + 56))(v145 + v154, 1, 1, v155);
        *v145 = v186;
        v156 = v191;
        *(v145 + 8) = v190;
        *(v145 + 16) = v156;
        *(v145 + 24) = v187;
        *(v145 + 32) = v182;
        *(v145 + 40) = v184;
        v157 = v180;
        *(v145 + 48) = v181;
        *(v145 + 56) = v183;
        v158 = v145 + v143[9];
        *v158 = v157;
        v159 = v179;
        *(v158 + 8) = v178;
        *(v158 + 16) = v159;
        v160 = v177;
        *(v158 + 24) = v153;
        *(v158 + 32) = v160;
        *(v145 + v143[10]) = v43;
        v161 = v145 + v143[12];
        v162 = v199;
        *(v161 + 64) = v198;
        *(v161 + 80) = v162;
        *(v161 + 96) = v200;
        *(v161 + 112) = v201;
        v163 = v195;
        *v161 = v194;
        *(v161 + 16) = v163;
        v164 = v197;
        *(v161 + 32) = v196;
        *(v161 + 48) = v164;
        *(v145 + v143[13]) = v175;
        *(v145 + v173) = v168;
        sub_26BEDFE40(v204, v152);

        *(v145 + v171) = v172;
        *(v145 + v170) = v174;
        goto LABEL_8;
      }

      if (v141 != 1)
      {

        sub_26BE01600();
        swift_allocError();
        v97 = 5;
        goto LABEL_101;
      }

      sub_26BE10E8C();
      sub_26BE7DE38(v238);
      result = v204;
LABEL_195:
      sub_26BE2E410(result, &v208);
      *(&v210[5] + 8) = v238[5];
      *(&v210[6] + 8) = v238[6];
      *(&v210[7] + 8) = v238[7];
      *(&v210[1] + 8) = v238[1];
      *(&v210[2] + 8) = v238[2];
      *(&v210[3] + 8) = v238[3];
      *(&v210[4] + 8) = v238[4];
      *(&v210[8] + 1) = v239;
      *(v210 + 8) = v238[0];
      goto LABEL_187;
    }

    v102 = v242;
    v103 = v170;
    sub_26BE00608(v170, v98);
    sub_26BE00608(v103, v98);
    sub_26BF30764(&v240, &v208);
    if (BYTE8(v208))
    {
      sub_26BE00258(v240, v241);
      v107 = v98;
      v106 = v170;
LABEL_170:
      sub_26BE00258(v106, v107);
      v240 = v170;
      v241 = v98;
      v242 = v102;
      sub_26BE01600();
      swift_allocError();
      *v140 = 1;
LABEL_171:
      swift_willThrow();
      goto LABEL_176;
    }

    v104 = v208;
    sub_26BE00258(v170, v98);
    result = v242;
    v50 = __OFADD__(v242, v104);
    v105 = v242 + v104;
    if (v50)
    {
      goto LABEL_190;
    }

    v106 = v240;
    v107 = v241;
    v108 = v241 >> 62;
    if ((v241 >> 62) <= 1)
    {
      if (v108)
      {
        v109 = v240 >> 32;
      }

      else
      {
        v109 = BYTE6(v241);
      }

      goto LABEL_121;
    }

    if (v108 == 2)
    {
      v109 = *(v240 + 24);
LABEL_121:
      if (v109 < v105)
      {
        goto LABEL_170;
      }
    }

    else if (v105 > 0)
    {
      goto LABEL_170;
    }

    if (v105 < v242)
    {
      goto LABEL_191;
    }

    result = sub_26C00909C();
    v110 = result;
    v112 = v111;
    v242 = v105;
    v113 = v111 >> 62;
    if ((v111 >> 62) > 1)
    {
      if (v113 != 2)
      {
        goto LABEL_132;
      }

      result = *(result + 16);
      v114 = *(v110 + 24);
    }

    else
    {
      if (!v113)
      {
        goto LABEL_132;
      }

      result = result;
      v114 = v110 >> 32;
    }

    if (v114 < result)
    {
      goto LABEL_192;
    }

LABEL_132:
    *&v167 = sub_26C00909C();
    *(&v167 + 1) = v115;
    sub_26BE00258(v110, v112);
    sub_26BE00258(v170, v98);
    result = sub_26BF3182C(v224);
    v220 = v224[8];
    v221 = v224[9];
    v222 = v224[10];
    v223 = v225;
    v216 = v224[4];
    v217 = v224[5];
    v218 = v224[6];
    v219 = v224[7];
    v212 = v224[0];
    v213 = v224[1];
    v214 = v224[2];
    v215 = v224[3];
    LOBYTE(v193) = 0;
    v171 = v242 + 1;
    if (__OFADD__(v242, 1))
    {
      goto LABEL_193;
    }

    v116 = v240;
    v170 = v241;
    v166 = (v241 >> 62);
    if ((v241 >> 62) <= 1)
    {
      if (v166)
      {
        v117 = v240 >> 32;
      }

      else
      {
        v117 = BYTE6(v170);
      }

      goto LABEL_139;
    }

    if (v166 == 2)
    {
      v117 = *(v240 + 24);
LABEL_139:
      if (v117 < v171)
      {
        goto LABEL_164;
      }
    }

    else if (v171 > 0)
    {
      goto LABEL_164;
    }

    *&v208 = v240;
    *(&v208 + 1) = v170;
    if (v171 < v242)
    {
      goto LABEL_194;
    }

    v118 = v171;
    *&v204[0] = v242;
    *(&v204[0] + 1) = v171;
    sub_26BE00608(v240, v170);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v120 = sub_26BE016A8();
    sub_26BE016FC();
    v165[1] = v120;
    v165[2] = v119;
    sub_26C008E1C();
    result = sub_26BE00258(v208, *(&v208 + 1));
    v242 = v118;
    LODWORD(v169) = v193;
    if (!v193)
    {
      v123 = 1;
      goto LABEL_158;
    }

    if (v169 != 1)
    {
      sub_26BE01600();
      swift_allocError();
      v138 = 5;
LABEL_175:
      *v137 = v138;
      swift_willThrow();
      sub_26BE00258(v167, *(&v167 + 1));
      sub_26BE718E0(&v212);
LABEL_176:

      sub_26BE00258(v240, v241);
LABEL_92:
      sub_26BE00258(*v3, v3[1]);
      v88 = v173;
      *v3 = v174;
      v3[1] = v88;
      v3[2] = v172;
      swift_willThrow();
      sub_26BE00258(v190, v191);

      goto LABEL_102;
    }

    v193 = 0;
    v121 = v171 + 4;
    if (!__OFADD__(v171, 4))
    {
      if (v166 <= 1)
      {
        if (v166)
        {
          v122 = v116 >> 32;
        }

        else
        {
          v122 = BYTE6(v170);
        }

        goto LABEL_153;
      }

      if (v166 == 2)
      {
        v122 = *(v116 + 24);
LABEL_153:
        if (v122 < v121)
        {
          goto LABEL_164;
        }
      }

      else if (v121 > 0)
      {
        goto LABEL_164;
      }

      *&v208 = v116;
      *(&v208 + 1) = v170;
      if (v121 < v171)
      {
        goto LABEL_197;
      }

      *&v204[0] = v171;
      *(&v204[0] + 1) = v171 + 4;
      sub_26BE00608(v116, v170);
      sub_26C008E1C();
      sub_26BE00258(v208, *(&v208 + 1));
      v123 = 0;
      LODWORD(v169) = bswap32(v193);
      v242 = v121;
      v171 = v121;
LABEL_158:
      v234 = v220;
      v235 = v221;
      v236 = v222;
      v230 = v216;
      v231 = v217;
      v232 = v218;
      v233 = v219;
      v226 = v212;
      v227 = v213;
      v228 = v214;
      v229 = v215;
      v210[7] = v220;
      v210[8] = v221;
      v211[0] = v222;
      v210[3] = v216;
      v210[4] = v217;
      v210[5] = v218;
      v210[6] = v219;
      v209 = v212;
      v210[0] = v213;
      v237 = v223;
      v192 = v123;
      v208 = v167;
      *&v211[1] = v223;
      v210[1] = v214;
      v210[2] = v215;
      DWORD2(v211[1]) = v169;
      BYTE12(v211[1]) = v123;
      sub_26BE7009C(&v208, v204);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = sub_26BEEC910(0, *(v168 + 2) + 1, 1, v168);
      }

      v125 = *(v168 + 2);
      v124 = *(v168 + 3);
      if (v125 >= v124 >> 1)
      {
        v168 = sub_26BEEC910((v124 > 1), v125 + 1, 1, v168);
      }

      v204[0] = v167;
      v204[9] = v234;
      v204[10] = v235;
      v204[11] = v236;
      v205 = v237;
      v204[5] = v230;
      v204[6] = v231;
      v204[7] = v232;
      v204[8] = v233;
      v204[1] = v226;
      v204[2] = v227;
      v204[3] = v228;
      v204[4] = v229;
      v206 = v169;
      v207 = v192;
      result = sub_26BE700F8(v204);
      v126 = v168;
      *(v168 + 2) = v125 + 1;
      v127 = &v126[208 * v125];
      *(v127 + 2) = v208;
      v128 = v210[2];
      v130 = v209;
      v129 = v210[0];
      *(v127 + 5) = v210[1];
      *(v127 + 6) = v128;
      *(v127 + 3) = v130;
      *(v127 + 4) = v129;
      v131 = v210[6];
      v133 = v210[3];
      v132 = v210[4];
      *(v127 + 9) = v210[5];
      *(v127 + 10) = v131;
      *(v127 + 7) = v133;
      *(v127 + 8) = v132;
      v135 = v210[8];
      v134 = v211[0];
      v136 = v210[7];
      *(v127 + 221) = *(v211 + 13);
      *(v127 + 12) = v135;
      *(v127 + 13) = v134;
      *(v127 + 11) = v136;
      v98 = v241;
      v170 = v240;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

uint64_t MLS.GroupState.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MLS.GroupState();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  *(a3 + v7[17]) = MEMORY[0x277D84F90];
  v12 = (a3 + v7[18]);
  v12[9] = 0u;
  v12[10] = 0u;
  v12[7] = 0u;
  v12[8] = 0u;
  v12[5] = 0u;
  v12[6] = 0u;
  v12[3] = 0u;
  v12[4] = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  v13 = v7[19];
  *(a3 + v13) = sub_26C001A78(v11);
  v14 = v7[20];
  *(a3 + v14) = sub_26C00528C(v11);
  *(a3 + v7[21]) = 0;
  v15 = v7[22];
  v16 = type metadata accessor for MLS.GroupInfo();
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  v17 = 0;
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_7;
    }

    v17 = *(a1 + 16);
  }

  else
  {
    if (!v18)
    {
      goto LABEL_7;
    }

    v17 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v22 = a1;
  v23 = a2;
  v24 = v17;
  v19 = v25;
  sub_26BEDDD14(v10);
  sub_26BE00258(v22, v23);
  sub_26BE00258(a1, a2);
  sub_26BE2E258(v12, &qword_28045E730, &qword_26C011528);

  if (v19)
  {
    return sub_26BE2E258(a3 + v15, &qword_28045F090, &qword_26C01A358);
  }

  sub_26BE2E258(a3 + v15, &qword_28045F090, &qword_26C01A358);
  return sub_26BEDFCB8(v10, a3);
}

uint64_t MLS.GroupState.rawValue.getter()
{
  sub_26BEDD4A8(v0);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v3 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v3;
}

uint64_t sub_26BEDF894(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 160);
  v59[8] = *(a1 + 144);
  v59[9] = v5;
  v59[10] = *(a1 + 176);
  v60 = *(a1 + 192);
  v6 = *(a1 + 96);
  v59[4] = *(a1 + 80);
  v59[5] = v6;
  v7 = *(a1 + 128);
  v59[6] = *(a1 + 112);
  v59[7] = v7;
  v8 = *(a1 + 32);
  v59[0] = *(a1 + 16);
  v59[1] = v8;
  v9 = *(a1 + 64);
  v59[2] = *(a1 + 48);
  v59[3] = v9;
  v10 = *(a1 + 200);
  v11 = v4 >> 62;
  v12 = *(a1 + 204);
  if ((v4 >> 62) <= 1)
  {
    if (!v11)
    {
      v13 = BYTE6(v4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v15 = *(v3 + 16);
  v14 = *(v3 + 24);
  v13 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v3), v3))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v13 = HIDWORD(v3) - v3;
  }

LABEL_11:
  result = sub_26BF30414(v13);
  if (v1)
  {
    goto LABEL_14;
  }

  v17 = result;
  sub_26BE11228(v3, v4);
  v18 = v17 + v13;
  if (__OFADD__(v17, v13))
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = *(a1 + 160);
  v55 = *(a1 + 144);
  v56 = v19;
  v57 = *(a1 + 176);
  v58 = *(a1 + 192);
  v20 = *(a1 + 96);
  v51 = *(a1 + 80);
  v52 = v20;
  v21 = *(a1 + 128);
  v53 = *(a1 + 112);
  v54 = v21;
  v22 = *(a1 + 32);
  v47 = *(a1 + 16);
  v48 = v22;
  v23 = *(a1 + 64);
  v49 = *(a1 + 48);
  v50 = v23;
  sub_26BE6FE6C(v59, v45);
  v25 = sub_26BF31160(&v47);
  v45[8] = v55;
  v45[9] = v56;
  v45[10] = v57;
  v46 = v58;
  v45[4] = v51;
  v45[5] = v52;
  v45[6] = v53;
  v45[7] = v54;
  v45[0] = v47;
  v45[1] = v48;
  v45[2] = v49;
  v45[3] = v50;
  sub_26BE718E0(v45);
  v26 = __OFADD__(v18, v25);
  v27 = v18 + v25;
  if (v26)
  {
    goto LABEL_23;
  }

  if (v12)
  {
    LOBYTE(v40) = 0;
    v43 = MEMORY[0x277D838B0];
    v44 = MEMORY[0x277CC9C18];
    v41 = &v40;
    v42 = (&v40 + 1);
    v28 = __swift_project_boxed_opaque_existential_1(&v41, MEMORY[0x277D838B0]);
    v30 = *v28;
    v29 = v28[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v31 = 1;
  }

  else
  {
    LOBYTE(v40) = 1;
    v32 = MEMORY[0x277D838B0];
    v33 = MEMORY[0x277CC9C18];
    v43 = MEMORY[0x277D838B0];
    v44 = MEMORY[0x277CC9C18];
    v41 = &v40;
    v42 = (&v40 + 1);
    v34 = __swift_project_boxed_opaque_existential_1(&v41, MEMORY[0x277D838B0]);
    v36 = *v34;
    v35 = v34[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v40 = bswap32(v10);
    v43 = v32;
    v44 = v33;
    v41 = &v40;
    v42 = &v41;
    v37 = __swift_project_boxed_opaque_existential_1(&v41, v32);
    v39 = *v37;
    v38 = v37[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v31 = 5;
  }

  result = v27 + v31;
  if (__OFADD__(v27, v31))
  {
LABEL_24:
    __break(1u);
  }

LABEL_14:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BEDFB9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[9];
      v7 = v5[11];
      v33 = v5[10];
      v34[0] = v7;
      *(v34 + 13) = *(v5 + 189);
      v8 = v5[5];
      v9 = v5[7];
      v29 = v5[6];
      v30 = v9;
      v10 = v5[7];
      v11 = v5[9];
      v31 = v5[8];
      v32 = v11;
      v12 = v5[1];
      v13 = v5[3];
      v25 = v5[2];
      v26 = v13;
      v14 = v5[3];
      v15 = v5[5];
      v27 = v5[4];
      v28 = v15;
      v16 = v5[1];
      v24[0] = *v5;
      v24[1] = v16;
      v17 = v5[11];
      v22[10] = v33;
      v23[0] = v17;
      *(v23 + 13) = *(v5 + 189);
      v22[6] = v29;
      v22[7] = v10;
      v22[8] = v31;
      v22[9] = v6;
      v22[2] = v25;
      v22[3] = v14;
      v22[4] = v27;
      v22[5] = v8;
      v22[0] = v24[0];
      v22[1] = v12;
      sub_26BE7009C(v24, &v21);
      v18 = sub_26BEDF894(v22);
      result = sub_26BE700F8(v24);
      if (v2)
      {
        break;
      }

      v20 = __OFADD__(a1, v18);
      a1 += v18;
      if (v20)
      {
        __break(1u);
        return result;
      }

      v5 += 13;
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t sub_26BEDFCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.GroupState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEDFD78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BEDFDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEDFE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E730, &qword_26C011528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEDFEB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = 0;
  v66 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v4 = *(v5 + 16);
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    v4 = v5;
LABEL_6:
    sub_26BE00608(*(a1 + 8), v6);
  }

  v63 = v5;
  v64 = v6;
  v65 = v4;
  sub_26BE00608(v5, v6);
  sub_26BE00608(v5, v6);
  sub_26BF30764(&v63, &v51);
  if (v2)
  {
    sub_26BE00258(v63, v64);
    v63 = v5;
    v64 = v6;
    v65 = v4;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (BYTE8(v51))
  {
    sub_26BE00258(v63, v64);
    v8 = v6;
    v9 = v5;
LABEL_13:
    sub_26BE00258(v9, v8);
    v63 = v5;
    v64 = v6;
    v65 = v4;
    sub_26BE01600();
    swift_allocError();
    *v10 = 1;
    goto LABEL_14;
  }

  v15 = v51;
  sub_26BE00258(v5, v6);
  if (v15 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v16 = 5;
    goto LABEL_9;
  }

  v17 = sub_26BF2A44C(v15);
  if (v18 >> 60 == 15)
  {
    v9 = v63;
    v8 = v64;
    goto LABEL_13;
  }

  v60 = v17;
  v61 = v18;
  v20 = MEMORY[0x277D84F90];
  v62 = v19;
  v39 = v4;
  while (1)
  {
    v21 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v22 = *(v17 + 24);
      }

      else
      {
        v22 = 0;
      }
    }

    else if (v21)
    {
      v22 = v17 >> 32;
    }

    else
    {
      v22 = BYTE6(v18);
    }

    v23 = __OFSUB__(v22, v19);
    v24 = v22 - v19;
    if (v23)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    if (v24 < 1)
    {
      break;
    }

    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_60;
    }

    if (v21 <= 1)
    {
      if (v21)
      {
        v26 = v17 >> 32;
      }

      else
      {
        v26 = BYTE6(v18);
      }

LABEL_37:
      if (v26 < v25)
      {
        goto LABEL_50;
      }

      goto LABEL_40;
    }

    if (v21 == 2)
    {
      v26 = *(v17 + 24);
      goto LABEL_37;
    }

    if (v25 > 0)
    {
LABEL_50:
      sub_26BE01600();
      swift_allocError();
      *v37 = 1;
      goto LABEL_58;
    }

LABEL_40:
    *&v42 = v17;
    *(&v42 + 1) = v18;
    if (v25 < v19)
    {
      goto LABEL_61;
    }

    *&v40[0] = v19;
    *(&v40[0] + 1) = v19 + 1;
    sub_26BE00608(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v42, *(&v42 + 1));
    v62 = v25;
    sub_26BE2E2B8(&v42);
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v51 = v42;
    v52 = v43;
    sub_26BECBB94(&v42, v40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_26BEEB900(0, v20[2] + 1, 1, v20);
    }

    v4 = v39;
    v28 = v20[2];
    v27 = v20[3];
    if (v28 >= v27 >> 1)
    {
      v20 = sub_26BEEB900((v27 > 1), v28 + 1, 1, v20);
    }

    v40[6] = v57;
    v40[7] = v58;
    v41 = v59;
    v40[2] = v53;
    v40[3] = v54;
    v40[4] = v55;
    v40[5] = v56;
    v40[0] = v51;
    v40[1] = v52;
    sub_26BE7DCC0(v40);
    v20[2] = v28 + 1;
    v29 = &v20[17 * v28];
    *(v29 + 2) = v42;
    v30 = v46;
    v32 = v43;
    v31 = v44;
    *(v29 + 5) = v45;
    *(v29 + 6) = v30;
    *(v29 + 3) = v32;
    *(v29 + 4) = v31;
    v34 = v48;
    v33 = v49;
    v35 = v47;
    v29[20] = v50;
    *(v29 + 8) = v34;
    *(v29 + 9) = v33;
    *(v29 + 7) = v35;
    v17 = v60;
    v18 = v61;
    v19 = v62;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v36 = *(v17 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else if (v21)
  {
    v36 = v17 >> 32;
  }

  else
  {
    v36 = BYTE6(v18);
  }

  if (__OFSUB__(v36, v19))
  {
    goto LABEL_62;
  }

  if (v36 == v19)
  {
    sub_26BE00258(v17, v18);
    sub_26BE00258(v5, v6);
    result = sub_26BE00258(v63, v64);
    *a2 = v20;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v38 = 0;
    v38[112] = 1;
LABEL_58:
    swift_willThrow();

    sub_26BE00258(v60, v61);
LABEL_10:
    sub_26BE00258(v63, v64);
    v63 = v5;
    v64 = v6;
    v65 = v4;
LABEL_14:
    swift_willThrow();
    *&v51 = &type metadata for MLS.RatchetTree;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
    v11 = sub_26C00A4FC();
    sub_26BE826C4(v11, v12, v5, v6);

    swift_willThrow();
    result = sub_26BE00258(v63, v64);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BEE04CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v4 = result;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v33 = a2 + 32;
  while (v3 < v2)
  {
    v7 = v3;
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_45;
    }

    v9 = (v5 + 24 * v7);
    v10 = *v9;
    v12 = *(v9 + 1);
    v11 = *(v9 + 2);
    if (v10 > 9)
    {
      if (*v9 <= 0xF001u)
      {
        if (v10 == 10)
        {
          sub_26BE00608(v12, v11);
          v19 = sub_26BEE0988();
          v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v19);
          v14 = byte_287CBA390;
          goto LABEL_30;
        }

        if (v10 == 61441)
        {
          sub_26BE00608(v12, v11);
          v17 = sub_26BEE0988();
          v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v17);
          v14 = byte_287CBA368;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v10)
        {
          case 0xF002u:
            sub_26BE00608(v12, v11);
            v21 = sub_26BEE0988();
            v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v21);
            v14 = byte_287CBA340;
            goto LABEL_30;
          case 0xF005u:
            sub_26BE00608(v12, v11);
            v23 = sub_26BEE0988();
            v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v23);
            v14 = byte_287CBA318;
            goto LABEL_30;
          case 0xF006u:
            sub_26BE00608(v12, v11);
            v15 = sub_26BEE0988();
            v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v15);
            v14 = byte_287CBA2F0;
            goto LABEL_30;
        }
      }
    }

    else if (*v9 <= 2u)
    {
      if (v10 == 1)
      {
        sub_26BE00608(*(v9 + 1), *(v9 + 2));
        v18 = sub_26BEE0988();
        v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v18);
        v14 = byte_287CBA228;
        goto LABEL_30;
      }

      if (v10 == 2)
      {
        sub_26BE00608(*(v9 + 1), *(v9 + 2));
        v16 = sub_26BEE0988();
        v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v16);
        v14 = byte_287CBA250;
        goto LABEL_30;
      }
    }

    else
    {
      switch(v10)
      {
        case 3u:
          sub_26BE00608(*(v9 + 1), *(v9 + 2));
          v20 = sub_26BEE0988();
          v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v20);
          v14 = byte_287CBA278;
          goto LABEL_30;
        case 4u:
          sub_26BE00608(*(v9 + 1), *(v9 + 2));
          v22 = sub_26BEE0988();
          v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v22);
          v14 = byte_287CBA2A0;
          goto LABEL_30;
        case 5u:
          sub_26BE00608(*(v9 + 1), *(v9 + 2));
          v13 = sub_26BEE0988();
          v34 = MEMORY[0x26D699320](1, &_s20ExtensionMessageTypeON, v13);
          v14 = byte_287CBA2C8;
          goto LABEL_30;
      }
    }

    sub_26BE00608(v12, v11);
    v24 = sub_26BEE0988();
    v34 = MEMORY[0x26D699320](4, &_s20ExtensionMessageTypeON, v24);
    sub_26BF75A34(&v35, byte_287CBA3B8);
    sub_26BF75A34(&v35, byte_287CBA3B9);
    sub_26BF75A34(&v35, byte_287CBA3BA);
    v14 = byte_287CBA3BB;
LABEL_30:
    sub_26BF75A34(&v35, v14);
    if (*(v34 + 16) && (v25 = *(v34 + 40), sub_26C00B05C(), MEMORY[0x26D699B20](v4), v26 = sub_26C00B0CC(), v27 = -1 << *(v34 + 32), v28 = v26 & ~v27, ((*(v34 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
    {
      v29 = ~v27;
      while (*(*(v34 + 48) + v28) != v4)
      {
        v28 = (v28 + 1) & v29;
        if (((*(v34 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = v6;
      if ((result & 1) == 0)
      {
        result = sub_26BECBAB4(0, *(v6 + 16) + 1, 1);
        v6 = v36;
      }

      v31 = *(v6 + 16);
      v30 = *(v6 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_26BECBAB4((v30 > 1), v31 + 1, 1);
        v6 = v36;
      }

      *(v6 + 16) = v31 + 1;
      v32 = v6 + 24 * v31;
      *(v32 + 32) = v10;
      *(v32 + 40) = v12;
      *(v32 + 48) = v11;
      v5 = v33;
      if (v3 == v2)
      {
        return v6;
      }
    }

    else
    {
LABEL_3:
      sub_26BE00258(v12, v11);

      if (v3 == v2)
      {
        return v6;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}