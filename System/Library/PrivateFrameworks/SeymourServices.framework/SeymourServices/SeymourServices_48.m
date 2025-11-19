uint64_t sub_227350054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v160 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v170 = *(v2 - 8);
  v171 = v2;
  v156 = *(v170 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v155 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v169 = &v126 - v5;
  v172 = sub_227662750();
  v159 = *(v172 - 8);
  v158 = *(v159 + 64);
  v6 = MEMORY[0x28223BE20](v172);
  v157 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v173 = &v126 - v8;
  v152 = sub_22766B360();
  v151 = *(v152 - 8);
  v9 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v148 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B340();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v147 = (&v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v134 = *(v135 - 8);
  v133 = *(v134 + 64);
  v14 = MEMORY[0x28223BE20](v135);
  v132 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = &v126 - v16;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v140 = *(v138 - 8);
  v142 = *(v140 + 64);
  v17 = MEMORY[0x28223BE20](v138);
  v136 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v137 = &v126 - v19;
  v129 = sub_22766B390();
  v20 = *(v129 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v129);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v143 = *(v144 - 8);
  v162 = *(v143 + 64);
  v24 = MEMORY[0x28223BE20](v144);
  v141 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v139 = &v126 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v166 = *(v27 - 8);
  v167 = v27;
  v146 = v166[8];
  v28 = MEMORY[0x28223BE20](v27);
  v165 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v150 = &v126 - v31;
  MEMORY[0x28223BE20](v30);
  v164 = &v126 - v32;
  v33 = sub_227666230();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v36);
  v38 = &v126 - v37;
  v154 = sub_227669890();
  v153 = *(v154 - 8);
  v39 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v163 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v41 = *(v34 + 16);
  v168 = v38;
  v41(v38, v130, v33);
  v128 = v41;
  sub_22766A690();
  sub_22766B370();
  (*(v20 + 8))(v23, v129);
  v42 = v161;
  v130 = *(v161 + 16);
  v41(&v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v33);
  v149 = v34;
  v43 = *(v34 + 80);
  v127 = (v43 + 24) & ~v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v129 = *(v34 + 32);
  v45 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129(v44 + ((v43 + 24) & ~v43), v45, v33);
  v46 = swift_allocObject();
  *(v46 + 16) = "SeymourServices/KeyProvider.swift";
  *(v46 + 24) = 33;
  *(v46 + 32) = 2;
  *(v46 + 40) = 97;
  *(v46 + 48) = &unk_2276815D8;
  *(v46 + 56) = v44;
  sub_2276624A0();

  v47 = v131;
  sub_227669270();
  v145 = v33;
  v128(v45, v168, v33);
  v48 = (((v43 + 24) & ~v43) + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  v129(v50 + v127, v45, v33);
  v51 = (v50 + v48);
  *v51 = 0;
  v51[1] = 0;
  *(v50 + v49) = 1;
  v52 = v130;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v130;
  v53 = v134;
  v54 = v132;
  v55 = v135;
  (*(v134 + 16))(v132, v47, v135);
  v56 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v57 = (v133 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v53 + 32))(v58 + v56, v54, v55);
  v59 = (v58 + v57);
  *v59 = sub_22735572C;
  v59[1] = v50;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v60 = v52;
  v61 = v136;
  sub_227669270();
  (*(v53 + 8))(v47, v55);
  v174[3] = sub_22766A4E0();
  v174[4] = MEMORY[0x277D4F7C0];
  __swift_allocate_boxed_opaque_existential_0(v174);
  sub_22766A4D0();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v62 = sub_22766C950();
  v63 = v137;
  v64 = v138;
  v65 = v61;
  sub_2276691F0();

  v66 = v140;
  v67 = *(v140 + 8);
  v67(v61, v64);
  __swift_destroy_boxed_opaque_existential_0(v174);
  v68 = swift_allocObject();
  *(v68 + 16) = sub_2273492CC;
  *(v68 + 24) = 0;
  (*(v66 + 16))(v61, v63, v64);
  v69 = v66;
  v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v71 = &v142[v70 + 7] & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  (*(v69 + 32))(v72 + v70, v65, v64);
  v73 = (v72 + v71);
  *v73 = sub_2273556EC;
  v73[1] = v68;
  v74 = v139;
  sub_227669270();
  v67(v63, v64);
  v75 = v143;
  v76 = v141;
  v77 = v144;
  (*(v143 + 16))(v141, v74, v144);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v162 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  v82 = v161;
  *v81 = sub_227355038;
  v81[1] = v82;
  v162 = sub_2276631F0();

  v83 = v164;
  sub_227669270();
  (*(v75 + 8))(v74, v77);
  v84 = sub_2276697A0();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  v87 = sub_227669770();
  v88 = v148;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v151 + 8))(v88, v152);
  sub_227669880();
  v89 = sub_22766A920();
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  v92 = sub_22766A8F0();
  v152 = v92;
  v174[0] = v87;
  v93 = sub_22766C060();
  v151 = v93;
  v95 = v94;
  sub_227662720();
  v96 = swift_allocObject();
  v161 = v87;
  *(v96 + 16) = v87;
  *(v96 + 24) = v92;
  *(v96 + 32) = v93;
  *(v96 + 40) = v95;
  v148 = v95;
  *(v96 + 48) = "KeyProvider.fetchContext";
  *(v96 + 56) = 24;
  *(v96 + 64) = 2;

  v97 = v169;
  sub_227669270();
  v98 = v166;
  v147 = v166[2];
  v99 = v165;
  v100 = v167;
  v147(v165, v83, v167);
  v144 = *(v98 + 80);
  v142 = v146 + ((v144 + 16) & ~v144);
  v101 = (v144 + 16) & ~v144;
  v143 = v101;
  v102 = swift_allocObject();
  v146 = v98[4];
  v146(v102 + v101, v99, v100);
  v104 = v170;
  v103 = v171;
  v105 = v155;
  (*(v170 + 16))(v155, v97, v171);
  v106 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v107 = (v156 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  (*(v104 + 32))(v108 + v106, v105, v103);
  v109 = (v108 + v107);
  *v109 = sub_22735573C;
  v109[1] = v102;
  v110 = v150;
  sub_227669270();
  v111 = v159;
  v112 = v157;
  v113 = v172;
  (*(v159 + 16))(v157, v173, v172);
  v114 = (*(v111 + 80) + 49) & ~*(v111 + 80);
  v115 = (v158 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = swift_allocObject();
  v117 = v148;
  *(v116 + 16) = v151;
  *(v116 + 24) = v117;
  *(v116 + 32) = "KeyProvider.fetchContext";
  *(v116 + 40) = 24;
  *(v116 + 48) = 2;
  (*(v111 + 32))(v116 + v114, v112, v113);
  *(v116 + v115) = v152;
  *(v116 + ((v115 + 15) & 0xFFFFFFFFFFFFFFF8)) = v161;
  v118 = v165;
  v119 = v110;
  v120 = v167;
  v147(v165, v110, v167);
  v121 = (v142 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = swift_allocObject();
  v146(v122 + v143, v118, v120);
  v123 = (v122 + v121);
  *v123 = sub_227355720;
  v123[1] = v116;

  sub_227669270();
  v124 = v166[1];
  v124(v119, v120);
  (*(v170 + 8))(v169, v171);
  (*(v111 + 8))(v173, v172);
  v124(v164, v120);
  (*(v149 + 8))(v168, v145);
  (*(v153 + 8))(v163, v154);
}

uint64_t sub_227351318@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v160 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v170 = *(v2 - 8);
  v171 = v2;
  v156 = *(v170 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v155 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v169 = &v126 - v5;
  v172 = sub_227662750();
  v159 = *(v172 - 8);
  v158 = *(v159 + 64);
  v6 = MEMORY[0x28223BE20](v172);
  v157 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v173 = &v126 - v8;
  v152 = sub_22766B360();
  v151 = *(v152 - 8);
  v9 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v148 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B340();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v147 = (&v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v134 = *(v135 - 8);
  v133 = *(v134 + 64);
  v14 = MEMORY[0x28223BE20](v135);
  v132 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = &v126 - v16;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v140 = *(v138 - 8);
  v142 = *(v140 + 64);
  v17 = MEMORY[0x28223BE20](v138);
  v136 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v137 = &v126 - v19;
  v129 = sub_22766B390();
  v20 = *(v129 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v129);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v143 = *(v144 - 8);
  v162 = *(v143 + 64);
  v24 = MEMORY[0x28223BE20](v144);
  v141 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v139 = &v126 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v166 = *(v27 - 8);
  v167 = v27;
  v146 = v166[8];
  v28 = MEMORY[0x28223BE20](v27);
  v165 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v150 = &v126 - v31;
  MEMORY[0x28223BE20](v30);
  v164 = &v126 - v32;
  v33 = sub_227666230();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v36);
  v38 = &v126 - v37;
  v154 = sub_227669890();
  v153 = *(v154 - 8);
  v39 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v163 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v41 = *(v34 + 16);
  v168 = v38;
  v41(v38, v130, v33);
  v128 = v41;
  sub_22766A690();
  sub_22766B370();
  (*(v20 + 8))(v23, v129);
  v42 = v161;
  v130 = *(v161 + 16);
  v41(&v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v33);
  v149 = v34;
  v43 = *(v34 + 80);
  v127 = (v43 + 24) & ~v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v129 = *(v34 + 32);
  v45 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129(v44 + ((v43 + 24) & ~v43), v45, v33);
  v46 = swift_allocObject();
  *(v46 + 16) = "SeymourServices/KeyProvider.swift";
  *(v46 + 24) = 33;
  *(v46 + 32) = 2;
  *(v46 + 40) = 97;
  *(v46 + 48) = &unk_2276815C0;
  *(v46 + 56) = v44;
  sub_2276624A0();

  v47 = v131;
  sub_227669270();
  v145 = v33;
  v128(v45, v168, v33);
  v48 = (((v43 + 24) & ~v43) + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  v129(v50 + v127, v45, v33);
  v51 = (v50 + v48);
  *v51 = 0;
  v51[1] = 0;
  *(v50 + v49) = 1;
  v52 = v130;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v130;
  v53 = v134;
  v54 = v132;
  v55 = v135;
  (*(v134 + 16))(v132, v47, v135);
  v56 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v57 = (v133 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v53 + 32))(v58 + v56, v54, v55);
  v59 = (v58 + v57);
  *v59 = sub_22735572C;
  v59[1] = v50;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v60 = v52;
  v61 = v136;
  sub_227669270();
  (*(v53 + 8))(v47, v55);
  v174[3] = sub_22766A4E0();
  v174[4] = MEMORY[0x277D4F7C0];
  __swift_allocate_boxed_opaque_existential_0(v174);
  sub_22766A4D0();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v62 = sub_22766C950();
  v63 = v137;
  v64 = v138;
  v65 = v61;
  sub_2276691F0();

  v66 = v140;
  v67 = *(v140 + 8);
  v67(v61, v64);
  __swift_destroy_boxed_opaque_existential_0(v174);
  v68 = swift_allocObject();
  *(v68 + 16) = sub_2273492CC;
  *(v68 + 24) = 0;
  (*(v66 + 16))(v61, v63, v64);
  v69 = v66;
  v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v71 = &v142[v70 + 7] & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  (*(v69 + 32))(v72 + v70, v65, v64);
  v73 = (v72 + v71);
  *v73 = sub_2273556EC;
  v73[1] = v68;
  v74 = v139;
  sub_227669270();
  v67(v63, v64);
  v75 = v143;
  v76 = v141;
  v77 = v144;
  (*(v143 + 16))(v141, v74, v144);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v162 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  v82 = v161;
  *v81 = sub_227354BAC;
  v81[1] = v82;
  v162 = sub_2276631F0();

  v83 = v164;
  sub_227669270();
  (*(v75 + 8))(v74, v77);
  v84 = sub_2276697A0();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  v87 = sub_227669770();
  v88 = v148;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v151 + 8))(v88, v152);
  sub_227669880();
  v89 = sub_22766A920();
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  v92 = sub_22766A8F0();
  v152 = v92;
  v174[0] = v87;
  v93 = sub_22766C060();
  v151 = v93;
  v95 = v94;
  sub_227662720();
  v96 = swift_allocObject();
  v161 = v87;
  *(v96 + 16) = v87;
  *(v96 + 24) = v92;
  *(v96 + 32) = v93;
  *(v96 + 40) = v95;
  v148 = v95;
  *(v96 + 48) = "KeyProvider.renewContext";
  *(v96 + 56) = 24;
  *(v96 + 64) = 2;

  v97 = v169;
  sub_227669270();
  v98 = v166;
  v147 = v166[2];
  v99 = v165;
  v100 = v167;
  v147(v165, v83, v167);
  v144 = *(v98 + 80);
  v142 = v146 + ((v144 + 16) & ~v144);
  v101 = (v144 + 16) & ~v144;
  v143 = v101;
  v102 = swift_allocObject();
  v146 = v98[4];
  v146(v102 + v101, v99, v100);
  v104 = v170;
  v103 = v171;
  v105 = v155;
  (*(v170 + 16))(v155, v97, v171);
  v106 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v107 = (v156 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  (*(v104 + 32))(v108 + v106, v105, v103);
  v109 = (v108 + v107);
  *v109 = sub_22735573C;
  v109[1] = v102;
  v110 = v150;
  sub_227669270();
  v111 = v159;
  v112 = v157;
  v113 = v172;
  (*(v159 + 16))(v157, v173, v172);
  v114 = (*(v111 + 80) + 49) & ~*(v111 + 80);
  v115 = (v158 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = swift_allocObject();
  v117 = v148;
  *(v116 + 16) = v151;
  *(v116 + 24) = v117;
  *(v116 + 32) = "KeyProvider.renewContext";
  *(v116 + 40) = 24;
  *(v116 + 48) = 2;
  (*(v111 + 32))(v116 + v114, v112, v113);
  *(v116 + v115) = v152;
  *(v116 + ((v115 + 15) & 0xFFFFFFFFFFFFFFF8)) = v161;
  v118 = v165;
  v119 = v110;
  v120 = v167;
  v147(v165, v110, v167);
  v121 = (v142 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = swift_allocObject();
  v146(v122 + v143, v118, v120);
  v123 = (v122 + v121);
  *v123 = sub_227355720;
  v123[1] = v116;

  sub_227669270();
  v124 = v166[1];
  v124(v119, v120);
  (*(v170 + 8))(v169, v171);
  (*(v111 + 8))(v173, v172);
  v124(v164, v120);
  (*(v149 + 8))(v168, v145);
  (*(v153 + 8))(v163, v154);
}

uint64_t sub_2273525DC(uint64_t a1, uint64_t a2)
{
  sub_226E97CC0(a1, v5);
  v3 = swift_allocObject();
  sub_226F04970(v5, (v3 + 16));
  *(v3 + 48) = a2;
  sub_2276631F0();

  return sub_227669280();
}

uint64_t sub_227352674@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a1;
  v162 = a2;
  v171 = sub_227662750();
  v161 = *(v171 - 8);
  v160 = *(v161 + 64);
  v2 = MEMORY[0x28223BE20](v171);
  v159 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v173 = &v130 - v4;
  v156 = sub_22766B360();
  v155 = *(v156 - 8);
  v5 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v154 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B340();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v153 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v137 = *(v138 - 8);
  v136 = *(v137 + 64);
  v10 = MEMORY[0x28223BE20](v138);
  v135 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = &v130 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v143 = *(v141 - 8);
  v145 = *(v143 + 64);
  v13 = MEMORY[0x28223BE20](v141);
  v139 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v140 = &v130 - v15;
  v132 = sub_22766B390();
  v16 = *(v132 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v132);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v147 = *(v148 - 1);
  v146 = *(v147 + 64);
  v20 = MEMORY[0x28223BE20](v148);
  v144 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v142 = &v130 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v167 = *(v23 - 8);
  v168 = v23;
  v150 = v167[8];
  v24 = MEMORY[0x28223BE20](v23);
  v151 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v166 = &v130 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v170 = &v130 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v165 = &v130 - v31;
  MEMORY[0x28223BE20](v30);
  v164 = &v130 - v32;
  v33 = sub_227666230();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v37 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v130 - v38;
  v158 = sub_227669890();
  v157 = *(v158 - 8);
  v40 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v163 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v42 = *(v34 + 16);
  v169 = v39;
  v42(v39, v133, v33);
  v131 = v42;
  sub_22766A690();
  sub_22766B370();
  (*(v16 + 8))(v19, v132);
  v43 = v172;
  v133 = *(v172 + 16);
  v42(v37, v39, v33);
  v44 = v34;
  v152 = v34;
  v45 = *(v34 + 80);
  v130 = (v45 + 24) & ~v45;
  v46 = swift_allocObject();
  *(v46 + 16) = v43;
  v132 = *(v44 + 32);
  v132(v46 + ((v45 + 24) & ~v45), v37, v33);
  v47 = swift_allocObject();
  *(v47 + 16) = "SeymourServices/KeyProvider.swift";
  *(v47 + 24) = 33;
  *(v47 + 32) = 2;
  *(v47 + 40) = 97;
  *(v47 + 48) = &unk_2276815B0;
  *(v47 + 56) = v46;
  sub_2276624A0();
  v48 = v43;

  v49 = v134;
  sub_227669270();
  v149 = v33;
  v131(v37, v169, v33);
  v50 = (((v45 + 24) & ~v45) + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  v132(v52 + v130, v37, v33);
  v53 = (v52 + v50);
  *v53 = 0;
  v53[1] = 0;
  *(v52 + v51) = 1;
  v54 = v133;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v133;
  v55 = v137;
  v56 = v135;
  v57 = v49;
  v58 = v138;
  (*(v137 + 16))(v135, v49, v138);
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v136 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v55 + 32))(v61 + v59, v56, v58);
  v62 = (v61 + v60);
  *v62 = sub_22735572C;
  v62[1] = v52;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v63 = v54;
  v64 = v139;
  sub_227669270();
  (*(v55 + 8))(v57, v58);
  v174[3] = sub_22766A4E0();
  v174[4] = MEMORY[0x277D4F7C0];
  __swift_allocate_boxed_opaque_existential_0(v174);
  sub_22766A4D0();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v65 = sub_22766C950();
  v66 = v140;
  v67 = v141;
  sub_2276691F0();

  v68 = v143;
  v69 = *(v143 + 8);
  v69(v64, v67);
  __swift_destroy_boxed_opaque_existential_0(v174);
  v70 = swift_allocObject();
  *(v70 + 16) = sub_2273492CC;
  *(v70 + 24) = 0;
  (*(v68 + 16))(v64, v66, v67);
  v71 = v68;
  v72 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v73 = (v145 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  (*(v71 + 32))(v74 + v72, v64, v67);
  v75 = (v74 + v73);
  *v75 = sub_2273556EC;
  v75[1] = v70;
  v76 = v142;
  sub_227669270();
  v69(v66, v67);
  v77 = v147;
  v78 = v144;
  v79 = v148;
  (*(v147 + 16))(v144, v76, v148);
  v80 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v81 = (v146 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  (*(v77 + 32))(v82 + v80, v78, v79);
  v83 = (v82 + v81);
  v84 = v172;
  *v83 = sub_227354A30;
  v83[1] = v84;

  v85 = v164;
  sub_227669270();
  (*(v77 + 8))(v76, v79);
  v86 = sub_2276697A0();
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  v89 = sub_227669770();
  v90 = v154;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v155 + 8))(v90, v156);
  sub_227669880();
  v91 = sub_22766A920();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();
  v94 = sub_22766A8F0();
  v156 = v94;
  v174[0] = v89;
  v95 = sub_22766C060();
  v155 = v95;
  v97 = v96;
  sub_227662720();
  v98 = swift_allocObject();
  v172 = v89;
  *(v98 + 16) = v89;
  *(v98 + 24) = v94;
  *(v98 + 32) = v95;
  *(v98 + 40) = v97;
  v154 = v97;
  *(v98 + 48) = "KeyProvider.releaseContext";
  *(v98 + 56) = 26;
  *(v98 + 64) = 2;

  v99 = v165;
  sub_227669270();
  v101 = v166;
  v100 = v167;
  v102 = (v167 + 2);
  v103 = v167[2];
  v104 = v85;
  v105 = v168;
  v103(v166, v104, v168);
  v148 = v103;
  v153 = v102;
  v106 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v107 = &v150[v106];
  v147 = *(v100 + 80);
  v145 = swift_allocObject();
  v108 = v100[4];
  v146 = v106;
  v109 = v105;
  v150 = v108;
  (v108)(v145 + v106, v101, v105);
  v110 = v151;
  v103(v151, v99, v109);
  v111 = (v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  (v108)(v112 + v106, v110, v109);
  v113 = (v112 + v111);
  v114 = v145;
  *v113 = sub_226EC14C0;
  v113[1] = v114;
  sub_227669270();
  v115 = v161;
  v116 = v159;
  v117 = v171;
  (*(v161 + 16))(v159, v173, v171);
  v118 = (*(v115 + 80) + 49) & ~*(v115 + 80);
  v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
  v120 = swift_allocObject();
  v121 = v154;
  *(v120 + 16) = v155;
  *(v120 + 24) = v121;
  *(v120 + 32) = "KeyProvider.releaseContext";
  *(v120 + 40) = 26;
  *(v120 + 48) = 2;
  (*(v115 + 32))(v120 + v118, v116, v117);
  *(v120 + v119) = v156;
  *(v120 + ((v119 + 15) & 0xFFFFFFFFFFFFFFF8)) = v172;
  v122 = v166;
  v123 = v170;
  v124 = v168;
  (v148)(v166, v170, v168);
  v125 = swift_allocObject();
  v126 = v124;
  (v150)(v125 + v146, v122, v124);
  v127 = (v125 + v111);
  *v127 = sub_227354A90;
  v127[1] = v120;

  sub_227669270();
  v128 = v167[1];
  v128(v123, v126);
  v128(v165, v126);
  (*(v115 + 8))(v173, v171);
  v128(v164, v126);
  (*(v152 + 8))(v169, v149);
  (*(v157 + 8))(v163, v158);
}

uint64_t sub_2273538A0(uint64_t a1)
{
  sub_226E97CC0(a1, v3);
  v1 = swift_allocObject();
  sub_226F04970(v3, (v1 + 16));
  return sub_227669280();
}

uint64_t sub_22735391C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_227669270();
}

uint64_t sub_227353A10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_227353AD8(uint64_t a1)
{
  v4 = *(sub_2276624A0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227346B80(a1, v6, v1 + v5);
}

uint64_t sub_227353BD4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_227347484(a1, v2 + v6, v7, a2);
}

uint64_t sub_227353D14(uint64_t a1)
{
  v4 = *(sub_227666230() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227347CB8(a1, v6, v1 + v5);
}

unint64_t sub_227353F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  *(inited + 32) = 25705;
  v9 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = v9;
  *(inited + 80) = 0x64692D6D616461;
  v10 = MEMORY[0x277D837D0];
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  v11 = sub_227149264(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  if (a4)
  {
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_227670CD0;
    *(v12 + 32) = 0x64692D746F6C73;
    *(v12 + 72) = v10;
    *(v12 + 40) = 0xE700000000000000;
    *(v12 + 48) = a3;
    *(v12 + 56) = a4;

    v13 = sub_227149264(v12);
    swift_setDeallocating();
    sub_226E97D1C(v12 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v11;
    sub_226FDAC14(v13, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, &v16);

    return v16;
  }

  return v11;
}

id sub_22735413C(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v3 = sub_227664CB0();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_227665E90();
  v51 = *(v52 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227664740();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22766B390();
  v14 = *(v57 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v57);
  v53 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  sub_22766A690();
  v20 = sub_22766B380();
  v21 = sub_22766C890();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = a2;
    _os_log_impl(&dword_226E8E000, v20, v21, "CKC response has error status: %{public}ld", v22, 0xCu);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  v23 = *(v14 + 8);
  v23(v19, v57);
  (*(v10 + 104))(v13, *MEMORY[0x277D50BE0], v9);
  v24 = sub_227664730();
  (*(v10 + 8))(v13, v9);
  v25 = a2;
  if (v24 == a2 && (v26 = v54, *(v54 + 16)) && (v27 = sub_226E92000(0xD000000000000012, 0x800000022769E1C0), (v28 & 1) != 0) && (sub_226E97CC0(*(v26 + 56) + 32 * v27, v60), (swift_dynamicCast() & 1) != 0))
  {
    v30 = v58;
    v29 = v59;
    v31 = v53;
    sub_22766A690();

    v32 = sub_22766B380();
    v33 = sub_22766C890();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v60[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_226E97AE8(v30, v29, v60);
      _os_log_impl(&dword_226E8E000, v32, v33, "Returning PlaybackVoucherError, currentKeyVersion: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);

      v23(v53, v57);
    }

    else
    {

      v23(v31, v57);
    }

    v42 = v51;
    v43 = v50;
    v44 = v52;
    (*(v51 + 104))(v50, *MEMORY[0x277D51F00], v52);
    sub_227354B64(&qword_28139B6E8, MEMORY[0x277D51F70]);
    sub_22766D280();
    (*(v42 + 8))(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = 0xD000000000000011;
    v46 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x800000022769E1E0;
    *(inited + 48) = v30;
    *(inited + 56) = v29;
    sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(v46, &unk_27D7BE5C0, &qword_22767D1D0);
    v47 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v48 = sub_22766BFD0();

    v39 = sub_22766BE90();

    v40 = [v47 initWithDomain:v48 code:v25 userInfo:v39];
  }

  else
  {
    v37 = v55;
    v36 = v56;
    (*(v55 + 104))(v6, *MEMORY[0x277D50ED8], v56);
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38]);
    sub_22766D280();
    (*(v37 + 8))(v6, v36);
    v38 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v39 = sub_22766BFD0();

    v40 = [v38 initWithDomain:v39 code:v25 userInfo:0];
  }

  return v40;
}

uint64_t sub_22735488C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227666230() - 8);
  v9 = (v7 + *(v8 + 80) + 9) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226E93028;

  return sub_227348614(a1, v10, v1 + v6, v12, v13, v1 + v9, v14);
}

uint64_t sub_227354A90(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22742A6F4(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_227354B64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_78Tm_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227354C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_22734B794(a1, v4, v5, v6);
}

uint64_t sub_227354D2C(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22742A0B8(*a1, *(a1 + 8), *(a1 + 16), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_227354E30(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_226EDC420(result, a2);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_227666230();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_227354F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227666230() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);
  v14 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_227347F3C(a1, v9, v2 + v6, v11, v12, v13, v14, a2);
}

uint64_t sub_227355070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22734DE70(a1, v4, v5, v6);
}

uint64_t sub_227355124(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_22734CA28(a1, v5, v4);
}

uint64_t objectdestroy_283Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227355218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22734C0A0(a1, v4, v5, v6);
}

uint64_t sub_2273552E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22734A528(a1, v1);
}

uint64_t sub_227355420(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_227662750() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22735558C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_2276624A0() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v1 + 16);
  return sub_227346554(v4, a1);
}

uint64_t sub_227355620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_22735574C(void *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 remoteURL];
  if (v12)
  {
    v13 = v12;
    sub_22766C000();
  }

  sub_227662310();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &unk_27D7BB570, &unk_227670FC0);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, v6, v7);
    v15 = [a1 data];
    if (v15)
    {
      v16 = v15;
      v17 = sub_227662590();
      v19 = v18;

      v20 = v25;
      v14(v25, v11, v7);
      v21 = &v20[*(type metadata accessor for KeyCertificate() + 20)];
      *v21 = v17;
      v21[1] = v19;
      return;
    }

    (*(v8 + 8))(v11, v7);
  }

  v22 = sub_227664DD0();
  sub_227355EB0(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51028], v22);
  swift_willThrow();
}

void sub_227355A58(void *a1, uint64_t a2, uint64_t a3)
{
  sub_227662390();
  v6 = sub_22766BFD0();

  [a1 setRemoteURL_];

  v7 = (v3 + *(a3 + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_227662560();
  [a1 setData_];
}

size_t _s15SeymourServices14KeyCertificateV21representativeSamplesSayACGyFZ_0()
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE18, &unk_227681680);
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v25);
  v3 = &v23 - v2;
  v24 = type metadata accessor for KeyCertificate();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276622F0();
  v31 = sub_2276624D0();
  v32[0] = v8;
  v32[1] = v32;
  v32[2] = &v31;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D38, &qword_227671F00);
  v27 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v28 = sub_226F5BF60(&qword_27D7B8D48, &qword_27D7B8D38, &qword_227671F00);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v26 = MEMORY[0x277D84F90];
    v23 = v10;
    result = sub_226F20508(0, v10, 0);
    v12 = 0;
    v13 = v26;
    v14 = v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    while (v12 < *(v9 + 16))
    {
      v15 = v0;
      sub_227355EF8(v14 + *(v0 + 72) * v12, v3);
      v16 = &v3[*(v25 + 48)];
      v17 = *v16;
      v18 = v16[1];
      v19 = sub_2276624A0();
      (*(*(v19 - 8) + 16))(v7, v3, v19);
      v20 = &v7[*(v24 + 20)];
      *v20 = v17;
      v20[1] = v18;
      sub_226F5E0B4(v17, v18);
      sub_226E97D1C(v3, &qword_27D7BCE18, &unk_227681680);
      v26 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F20508(v21 > 1, v22 + 1, 1);
        v13 = v26;
      }

      ++v12;
      *(v13 + 16) = v22 + 1;
      result = sub_22734A444(v7, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22);
      v0 = v15;
      if (v23 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227355E58(uint64_t a1)
{
  result = sub_227355EB0(qword_28139AEA8, type metadata accessor for KeyCertificate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227355EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227355EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE18, &unk_227681680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227355F68@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D50];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227355FDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227668290();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227356004(uint64_t a1)
{
  *(a1 + 24) = sub_22735606C(&qword_2813A5598);
  result = sub_22735606C(&qword_2813A5590);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22735606C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2276682A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2273560B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v35 = MEMORY[0x277D84F90];
  sub_226F20368(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v2 = v35;
  v8 = result;
  v9 = 0;
  v34 = *(a1 + 36);
  v29 = a1 + 72;
  v30 = v1;
  v31 = a1 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_30;
    }

    if (v34 != *(v4 + 36))
    {
      goto LABEL_31;
    }

    if (*(*(v4 + 48) + v8) > 1u)
    {
      if (*(*(v4 + 48) + v8) == 2)
      {
        v33 = 0xD000000000000012;
        v12 = 0x8000000227692380;
      }

      else
      {
        v33 = 0xD000000000000010;
        v12 = 0x80000002276923A0;
      }
    }

    else
    {
      if (*(*(v4 + 48) + v8))
      {
        v32 = 0xE900000000000065;
        v33 = 0x726F63536E616C70;
        goto LABEL_17;
      }

      v33 = 0x6574614C6E616C70;
      v12 = 0xEB0000000079636ELL;
    }

    v32 = v12;
LABEL_17:
    v13 = *(*(v4 + 56) + 8 * v8);
    v36 = v2;
    v14 = v4;
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);
    v17 = v2;
    result = v13;
    v2 = v17;
    if (v15 >= v16 >> 1)
    {
      v28 = result;
      sub_226F20368((v16 > 1), v15 + 1, 1);
      result = v28;
      v2 = v36;
    }

    *(v2 + 16) = v15 + 1;
    v18 = (v2 + 24 * v15);
    v18[4] = v33;
    v18[5] = v32;
    v18[6] = result;
    v10 = 1 << *(v14 + 32);
    v5 = v31;
    if (v8 >= v10)
    {
      goto LABEL_32;
    }

    v19 = *(v31 + 8 * v11);
    if ((v19 & (1 << v8)) == 0)
    {
      goto LABEL_33;
    }

    v4 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_34;
    }

    v20 = v19 & (-2 << (v8 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v29 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          v26 = v2;
          result = sub_226EB526C(v8, v34, 0);
          v2 = v26;
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      v27 = v2;
      result = sub_226EB526C(v8, v34, 0);
      v2 = v27;
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2273563E4()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2273564C0()
{
  *v0;
  *v0;
  *v0;
  sub_22766C100();
}

uint64_t sub_227356588()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227356660@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227356994();
  *a2 = result;
  return result;
}

void sub_227356690(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000079636ELL;
  v3 = 0x6574614C6E616C70;
  v4 = 0x8000000227692380;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000002276923A0;
  }

  if (*v1)
  {
    v3 = 0x726F63536E616C70;
    v2 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_227356728()
{
  v0 = sub_22714B464(MEMORY[0x277D84F90]);
  v1 = sub_22766C4E0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22736BA54(v1, 0, isUniquelyReferenced_nonNull_native);
  v3 = sub_22766C4E0();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22736BA54(v3, 1, v4);
  v5 = sub_22766C750();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v11 = v0;
  sub_22736BA54(v5, 3, v6);
  v7 = sub_2273560B0(v0);

  if (v7[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v8 = sub_22766D010();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v11 = v8;

  sub_22722D490(v9, 1, &v11);

  return v11;
}

unint64_t sub_2273568C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_227356728();
}

uint64_t getEnumTagSinglePayload for CreatePlanAnalyticsEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CreatePlanAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_227356940()
{
  result = qword_27D7BCE20;
  if (!qword_27D7BCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE20);
  }

  return result;
}

uint64_t sub_227356994()
{
  v0 = sub_22766D030();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void sub_2273569E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v22[3] = a2;
    v17 = v16;
    v22[1] = sub_22766C000();

    v18 = [a1 dateWatched];
    if (v18)
    {
      v19 = v18;
      sub_227662710();

      (*(v5 + 32))(v15, v11, v4);
      (*(v5 + 16))(v8, v15, v4);
      sub_227666140();

      (*(v5 + 8))(v15, v4);
      return;
    }
  }

  v20 = sub_227664DD0();
  sub_2273572D4(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
  swift_willThrow();
}

size_t static MarketingVideoJournal.representativeSamples()()
{
  v32 = sub_227662750();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - v5;
  v29 = sub_227666170();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766C090();
  v38 = sub_227662630();
  v39[0] = v11;
  v39[1] = v39;
  v39[2] = &v38;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v34 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v35 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v28 = v10;
    v33 = MEMORY[0x277D84F90];
    result = sub_226F1F648(0, v13, 0);
    v15 = 0;
    v16 = v33;
    v26 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v27 = v7;
    v24 = v7 + 32;
    v25 = (v0 + 16);
    v17 = v31;
    v18 = v28;
    while (v15 < *(v12 + 16))
    {
      v19 = v3;
      sub_2273571A4(v26 + *(v3 + 72) * v15, v6);
      v20 = *v6;
      v21 = *(v6 + 1);
      (*v25)(v17, &v6[*(v30 + 48)], v32);

      sub_227666140();
      sub_227357214(v6);
      v33 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F648(v22 > 1, v23 + 1, 1);
        v16 = v33;
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      result = (*(v27 + 32))(v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v18, v29);
      v3 = v19;
      if (v13 == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_227357070(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666150();
  v7 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666160();
  v8 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setDateWatched_];
}

uint64_t sub_2273571A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227357214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22735727C(uint64_t a1)
{
  result = sub_2273572D4(&qword_2813A56B8, MEMORY[0x277D520D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273572D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22735731C()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v6 + 8))(v4, v7);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];
  v9 = v0[20];

  return v8();
}

uint64_t sub_227357408()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v3 + 8))(v2, v4);
  sub_226E97D1C(v1, &unk_27D7BB570, &unk_227670FC0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22735751C()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2273575AC()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_227357654()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtC15SeymourServices18ScriptBundleLoader__useSystemJetPack;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22735770C()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2273577A8(uint64_t a1, uint64_t a2)
{
  v2[175] = a2;
  v2[169] = a1;
  v3 = sub_22766B390();
  v2[181] = v3;
  v4 = *(v3 - 8);
  v2[187] = v4;
  v5 = *(v4 + 64) + 15;
  v2[193] = swift_task_alloc();
  v2[199] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE28, &unk_227681918);
  v2[200] = v6;
  v7 = *(v6 - 8);
  v2[201] = v7;
  v8 = *(v7 + 64) + 15;
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v9 = sub_22766B5F0();
  v2[206] = v9;
  v10 = *(v9 - 8);
  v2[207] = v10;
  v11 = *(v10 + 64) + 15;
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v2[214] = v12;
  v13 = *(v12 - 8);
  v2[215] = v13;
  v14 = *(v13 + 64) + 15;
  v2[216] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227357A04, 0, 0);
}

uint64_t sub_227357A04()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1712);
  (*(v2 + 16))(v1, *(v0 + 1400) + OBJC_IVAR____TtC15SeymourServices18ScriptBundleLoader__useSystemJetPack, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 1788))
  {
    v4 = *(v0 + 1544);
    sub_22766A730();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "[ScriptBundleLoader] Default set, using local JetPack from system bundle", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v8 = *(v0 + 1544);
    v9 = *(v0 + 1496);
    v10 = *(v0 + 1448);

    (*(v9 + 8))(v8, v10);
    v11 = swift_task_alloc();
    *(v0 + 1768) = v11;
    *v11 = v0;
    v11[1] = sub_22735894C;
    v12 = *(v0 + 1664);
    v13 = *(v0 + 1400);

    return sub_226E957BC(v12);
  }

  else
  {
    v15 = *(v0 + 1704);
    v16 = *(v0 + 1696);
    v17 = *(v0 + 1648);
    v18 = *(v0 + 1608);
    v19 = *(v0 + 1400);

    swift_asyncLet_begin();

    swift_asyncLet_begin();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE30, &qword_227681948);
    *(v0 + 1736) = *(v18 + 72);
    *(v0 + 1784) = *(v18 + 80);
    *(v0 + 1744) = swift_allocObject();
    v20 = *(v0 + 1704);

    return MEMORY[0x282200930](v0 + 16, v20, sub_227357CAC, v0 + 1296);
  }
}

uint64_t sub_227357CAC()
{
  if (v0)
  {

    v1 = sub_227358D74;
  }

  else
  {
    v1 = sub_227357D28;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_227357D28()
{
  (*(*(v0 + 1656) + 16))(*(v0 + 1744) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)), *(v0 + 1704), *(v0 + 1648));
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1648);
  v3 = (*(v0 + 1784) + 32) & ~*(v0 + 1784);
  v4 = *(*(v0 + 1656) + 56);
  *(v0 + 1752) = v4;
  v4(v1 + v3, 0, 1, v2);
  v5 = *(v0 + 1696);

  return MEMORY[0x282200930](v0 + 656, v5, sub_227357DF4, v0 + 1360);
}

uint64_t sub_227357DF4()
{
  if (v0)
  {

    v1 = sub_227358E10;
  }

  else
  {
    v1 = sub_227357E70;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_227357E70()
{
  v74 = v0;
  (*(*(v0 + 1656) + 16))(*(v0 + 1744) + *(v0 + 1736) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)), *(v0 + 1696), *(v0 + 1648));
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1744) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784));
  (*(v0 + 1752))(v5 + *(v0 + 1736), 0, 1, v2);
  sub_226E93170(v5, v3, &qword_27D7BCE28, &unk_227681918);
  sub_226E95D18(v3, v4, &qword_27D7BCE28, &unk_227681918);
  v6 = (v1 + 32);
  v7 = *(v1 + 48);
  v72 = (v1 + 32);
  if (v7(v4, 1, v2) == 1)
  {
    sub_226E97D1C(*(v0 + 1624), &qword_27D7BCE28, &unk_227681918);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = *v6;
    (*v6)(*(v0 + 1688), *(v0 + 1624), *(v0 + 1648));
    v8 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EA7754(0, *(v8 + 2) + 1, 1, v8);
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_226EA7754(v10 > 1, v11 + 1, 1, v8);
    }

    v12 = *(v0 + 1688);
    v13 = *(v0 + 1648);
    *(v8 + 2) = v11 + 1;
    v9(&v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11], v12, v13);
  }

  v14 = *(v0 + 1648);
  v15 = *(v0 + 1632);
  v16 = *(v0 + 1624);
  sub_226E93170(*(v0 + 1744) + *(v0 + 1736) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)), v15, &qword_27D7BCE28, &unk_227681918);
  sub_226E95D18(v15, v16, &qword_27D7BCE28, &unk_227681918);
  if (v7(v16, 1, v14) == 1)
  {
    sub_226E97D1C(*(v0 + 1624), &qword_27D7BCE28, &unk_227681918);
  }

  else
  {
    v17 = *v72;
    (*v72)(*(v0 + 1688), *(v0 + 1624), *(v0 + 1648));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EA7754(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    if (v19 >= v18 >> 1)
    {
      v8 = sub_226EA7754(v18 > 1, v19 + 1, 1, v8);
    }

    v20 = *(v0 + 1688);
    v21 = *(v0 + 1648);
    *(v8 + 2) = v19 + 1;
    v17(&v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19], v20, v21);
  }

  v22 = *(v0 + 1744);
  v23 = *(v0 + 1600);
  v24 = (*(v0 + 1784) + 32) & ~*(v0 + 1784);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v8 + 2))
  {
    (*(*(v0 + 1656) + 16))(*(v0 + 1640), &v8[(*(v1 + 80) + 32) & ~*(v1 + 80)], *(v0 + 1648));
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(v0 + 1752);
  v27 = *(v0 + 1656);
  v28 = *(v0 + 1648);
  v29 = *(v0 + 1640);
  v30 = *(v0 + 1616);

  v26(v29, v25, 1, v28);
  sub_226E93170(v29, v30, &qword_27D7BCE28, &unk_227681918);
  if (v7(v30, 1, v28) == 1)
  {
    v31 = *(v0 + 1640);
    sub_226E97D1C(*(v0 + 1616), &qword_27D7BCE28, &unk_227681918);
    sub_226F6649C();
    *(v0 + 1760) = swift_allocError();
    *v32 = 13;
    swift_willThrow();
    sub_226E97D1C(v31, &qword_27D7BCE28, &unk_227681918);
    v33 = sub_227358648;
    v34 = *(v0 + 1696);
    v35 = v0 + 656;
    v36 = v0 + 1408;
  }

  else
  {
    v37 = *(v0 + 1680);
    v38 = *(v0 + 1672);
    v39 = *(v0 + 1656);
    v40 = *(v0 + 1648);
    v41 = *(v0 + 1592);
    v71 = *v72;
    (*v72)(v37, *(v0 + 1616), v40);
    sub_22766A730();
    (*(v39 + 16))(v38, v37, v40);
    v42 = sub_22766B380();
    v43 = sub_22766C8B0();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 1672);
    v46 = *(v0 + 1656);
    v47 = *(v0 + 1648);
    v48 = *(v0 + 1592);
    v49 = *(v0 + 1496);
    v50 = *(v0 + 1448);
    if (v44)
    {
      v51 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v73 = v69;
      *v51 = 136315138;
      v70 = v48;
      *(v0 + 1336) = sub_22766B690();
      *(v0 + 1344) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v53 = sub_22766CB80();
      v68 = v43;
      v55 = v54;
      (*(v46 + 8))(v45, v47);

      v56 = sub_226E97AE8(v53, v55, &v73);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_226E8E000, v42, v68, "[ScriptBundleLoader] Selected JetPack with version: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v51, -1, -1);

      (*(v49 + 8))(v70, v50);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
      (*(v49 + 8))(v48, v50);
    }

    v57 = *(v0 + 1680);
    v58 = *(v0 + 1648);
    v59 = [objc_opt_self() standardUserDefaults];
    sub_22766B690();
    if (v60)
    {
      v61 = sub_22766BFD0();
    }

    else
    {
      v61 = 0;
    }

    v62 = *(v0 + 1680);
    v63 = *(v0 + 1648);
    v64 = *(v0 + 1640);
    v65 = *(v0 + 1352);
    v66 = sub_22766BFD0();
    [v59 setObject:v61 forKey:v66];

    swift_unknownObjectRelease();
    sub_226E97D1C(v64, &qword_27D7BCE28, &unk_227681918);
    v71(v65, v62, v63);
    v33 = sub_2273587CC;
    v34 = *(v0 + 1696);
    v35 = v0 + 656;
    v36 = v0 + 1504;
  }

  return MEMORY[0x282200920](v35, v34, v33, v36);
}

uint64_t sub_2273586A0()
{
  v1 = v0[175];

  v2 = v0[216];
  v3 = v0[213];
  v4 = v0[212];
  v5 = v0[211];
  v6 = v0[210];
  v7 = v0[209];
  v8 = v0[208];
  v9 = v0[205];
  v10 = v0[204];
  v11 = v0[203];
  v14 = v0[202];
  v15 = v0[199];
  v16 = v0[193];
  v17 = v0[220];

  v12 = v0[1];

  return v12();
}

uint64_t sub_227358824()
{
  v1 = v0[175];

  v2 = v0[216];
  v3 = v0[213];
  v4 = v0[212];
  v5 = v0[211];
  v6 = v0[210];
  v7 = v0[209];
  v8 = v0[208];
  v9 = v0[205];
  v10 = v0[204];
  v11 = v0[203];
  v14 = v0[202];
  v15 = v0[199];
  v16 = v0[193];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22735894C()
{
  v2 = *(*v1 + 1768);
  v5 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v3 = sub_227358C54;
  }

  else
  {
    v3 = sub_227358A60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227358A60()
{
  v1 = v0[208];
  v2 = v0[206];
  v3 = [objc_opt_self() standardUserDefaults];
  sub_22766B690();
  if (v4)
  {
    v5 = sub_22766BFD0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[208];
  v7 = v0[207];
  v8 = v0[206];
  v9 = v0[169];
  v10 = sub_22766BFD0();
  [v3 setObject:v5 forKey:v10];

  swift_unknownObjectRelease();
  (*(v7 + 32))(v9, v6, v8);
  v11 = v0[216];
  v12 = v0[213];
  v13 = v0[212];
  v14 = v0[211];
  v15 = v0[210];
  v16 = v0[209];
  v17 = v0[208];
  v18 = v0[205];
  v19 = v0[204];
  v20 = v0[203];
  v23 = v0[202];
  v24 = v0[199];
  v25 = v0[193];

  v21 = v0[1];

  return v21();
}

uint64_t sub_227358C54()
{
  v1 = v0[216];
  v2 = v0[213];
  v3 = v0[212];
  v4 = v0[211];
  v5 = v0[210];
  v6 = v0[209];
  v7 = v0[208];
  v8 = v0[205];
  v9 = v0[204];
  v10 = v0[203];
  v13 = v0[202];
  v14 = v0[199];
  v15 = v0[193];
  v16 = v0[222];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227358D74()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1648);
  v3 = (*(v0 + 1784) + 32) & ~*(v0 + 1784);
  v4 = *(*(v0 + 1656) + 56);
  *(v0 + 1752) = v4;
  v4(v1 + v3, 1, 1, v2);
  v5 = *(v0 + 1696);

  return MEMORY[0x282200930](v0 + 656, v5, sub_227357DF4, v0 + 1360);
}

uint64_t sub_227358E10()
{
  v74 = v0;
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1744) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784));
  (*(v0 + 1752))(v5 + *(v0 + 1736), 1, 1, v2);
  sub_226E93170(v5, v3, &qword_27D7BCE28, &unk_227681918);
  sub_226E95D18(v3, v4, &qword_27D7BCE28, &unk_227681918);
  v6 = (v1 + 32);
  v7 = *(v1 + 48);
  v72 = (v1 + 32);
  if (v7(v4, 1, v2) == 1)
  {
    sub_226E97D1C(*(v0 + 1624), &qword_27D7BCE28, &unk_227681918);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = *v6;
    (*v6)(*(v0 + 1688), *(v0 + 1624), *(v0 + 1648));
    v8 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EA7754(0, *(v8 + 2) + 1, 1, v8);
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_226EA7754(v10 > 1, v11 + 1, 1, v8);
    }

    v12 = *(v0 + 1688);
    v13 = *(v0 + 1648);
    *(v8 + 2) = v11 + 1;
    v9(&v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11], v12, v13);
  }

  v14 = *(v0 + 1648);
  v15 = *(v0 + 1632);
  v16 = *(v0 + 1624);
  sub_226E93170(*(v0 + 1744) + *(v0 + 1736) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)), v15, &qword_27D7BCE28, &unk_227681918);
  sub_226E95D18(v15, v16, &qword_27D7BCE28, &unk_227681918);
  if (v7(v16, 1, v14) == 1)
  {
    sub_226E97D1C(*(v0 + 1624), &qword_27D7BCE28, &unk_227681918);
  }

  else
  {
    v17 = *v72;
    (*v72)(*(v0 + 1688), *(v0 + 1624), *(v0 + 1648));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EA7754(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    if (v19 >= v18 >> 1)
    {
      v8 = sub_226EA7754(v18 > 1, v19 + 1, 1, v8);
    }

    v20 = *(v0 + 1688);
    v21 = *(v0 + 1648);
    *(v8 + 2) = v19 + 1;
    v17(&v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19], v20, v21);
  }

  v22 = *(v0 + 1744);
  v23 = *(v0 + 1600);
  v24 = (*(v0 + 1784) + 32) & ~*(v0 + 1784);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v8 + 2))
  {
    (*(*(v0 + 1656) + 16))(*(v0 + 1640), &v8[(*(v1 + 80) + 32) & ~*(v1 + 80)], *(v0 + 1648));
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(v0 + 1752);
  v27 = *(v0 + 1656);
  v28 = *(v0 + 1648);
  v29 = *(v0 + 1640);
  v30 = *(v0 + 1616);

  v26(v29, v25, 1, v28);
  sub_226E93170(v29, v30, &qword_27D7BCE28, &unk_227681918);
  if (v7(v30, 1, v28) == 1)
  {
    v31 = *(v0 + 1640);
    sub_226E97D1C(*(v0 + 1616), &qword_27D7BCE28, &unk_227681918);
    sub_226F6649C();
    *(v0 + 1760) = swift_allocError();
    *v32 = 13;
    swift_willThrow();
    sub_226E97D1C(v31, &qword_27D7BCE28, &unk_227681918);
    v33 = sub_227358648;
    v34 = *(v0 + 1696);
    v35 = v0 + 656;
    v36 = v0 + 1408;
  }

  else
  {
    v37 = *(v0 + 1680);
    v38 = *(v0 + 1672);
    v39 = *(v0 + 1656);
    v40 = *(v0 + 1648);
    v41 = *(v0 + 1592);
    v71 = *v72;
    (*v72)(v37, *(v0 + 1616), v40);
    sub_22766A730();
    (*(v39 + 16))(v38, v37, v40);
    v42 = sub_22766B380();
    v43 = sub_22766C8B0();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 1672);
    v46 = *(v0 + 1656);
    v47 = *(v0 + 1648);
    v48 = *(v0 + 1592);
    v49 = *(v0 + 1496);
    v50 = *(v0 + 1448);
    if (v44)
    {
      v51 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v73 = v69;
      *v51 = 136315138;
      v70 = v48;
      *(v0 + 1336) = sub_22766B690();
      *(v0 + 1344) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v53 = sub_22766CB80();
      v68 = v43;
      v55 = v54;
      (*(v46 + 8))(v45, v47);

      v56 = sub_226E97AE8(v53, v55, &v73);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_226E8E000, v42, v68, "[ScriptBundleLoader] Selected JetPack with version: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AA9A450](v69, -1, -1);
      MEMORY[0x22AA9A450](v51, -1, -1);

      (*(v49 + 8))(v70, v50);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
      (*(v49 + 8))(v48, v50);
    }

    v57 = *(v0 + 1680);
    v58 = *(v0 + 1648);
    v59 = [objc_opt_self() standardUserDefaults];
    sub_22766B690();
    if (v60)
    {
      v61 = sub_22766BFD0();
    }

    else
    {
      v61 = 0;
    }

    v62 = *(v0 + 1680);
    v63 = *(v0 + 1648);
    v64 = *(v0 + 1640);
    v65 = *(v0 + 1352);
    v66 = sub_22766BFD0();
    [v59 setObject:v61 forKey:v66];

    swift_unknownObjectRelease();
    sub_226E97D1C(v64, &qword_27D7BCE28, &unk_227681918);
    v71(v65, v62, v63);
    v33 = sub_2273587CC;
    v34 = *(v0 + 1696);
    v35 = v0 + 656;
    v36 = v0 + 1504;
  }

  return MEMORY[0x282200920](v35, v34, v33, v36);
}

uint64_t sub_2273595B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_226E950FC(a1);
}

uint64_t sub_22735964C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_226E957BC(a1);
}

uint64_t sub_2273596E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2273577A8(a1, v1);
}

uint64_t sub_227359798(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_2273595B0(a1);
}

uint64_t sub_227359834(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_22735964C(a1);
}

uint64_t type metadata accessor for EngagementBadgeAdded()
{
  result = qword_2813A0EF0;
  if (!qword_2813A0EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227359944@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22766D030();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_227359998()
{
  v0 = sub_22714B580(MEMORY[0x277D84F90]);
  sub_227664EC0();
  sub_22714F81C();
  sub_22766D270();
  v1 = sub_22766C750();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_22736BC18(v1, isUniquelyReferenced_nonNull_native);
  v3 = sub_22722CFA0(v0);

  if (v3[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v4 = sub_22766D010();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v7 = v4;

  sub_22722D490(v5, 1, &v7);

  return v7;
}

uint64_t type metadata accessor for ModifyPlanFailureAnalyticsEvent()
{
  result = qword_27D7BCE48;
  if (!qword_27D7BCE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_227359B58()
{
  result = qword_27D7BCE58;
  if (!qword_27D7BCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE58);
  }

  return result;
}

uint64_t sub_227359BAC@<X0>(void *a1@<X8>)
{
  result = sub_227664000();
  *a1 = v3;
  return result;
}

BOOL sub_227359BD8()
{
  v0 = sub_2276672A0();
  v1 = sub_227666A50();
  v3 = sub_22718C70C(v1, v2, v0);

  return (v3 & 1) == 0;
}

uint64_t sub_227359C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v28 = v6 + 56;

  v12 = 0;
  v27 = v4;
  v25 = v10;
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v26 = (v13 - 1) & v13;
      v15 = *(v4 + 48) + 24 * (__clz(__rbit64(v13)) | (v12 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v6 + 40);
      sub_22766D370();
      sub_226F491DC(v16, v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
      sub_226F4364C();
      sub_227663B10();
      v20 = sub_22766D3F0();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v28 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        sub_226F50DC8();
        sub_226F50E1C();
        while (1)
        {
          v24 = *(v6 + 48) + 24 * v22;
          v29 = *v24;
          v30 = *(v24 + 16);
          if (sub_227663B20())
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v28 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        sub_226F518C0(v16, v17, v18);
        return 0;
      }

LABEL_24:
      result = sub_226F518C0(v16, v17, v18);
      v9 = v26;
      v4 = v27;
      v10 = v25;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227359ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_22766D370();

      sub_22766C100();
      v20 = sub_22766D3F0();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22735A0C0(uint64_t (*a1)(uint64_t (*)(char *, unint64_t, uint64_t, uint64_t)), uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22735A4E0(a1, a2, a3, MEMORY[0x277D52790], sub_227269EE8, sub_2272C54BC);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22735A148(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v7 = sub_227664530();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a3 + 32);
  v13 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v38 = v13;
    v44 = v12;
    v45 = v10;
    v49 = v4;
    v40 = &v37;
    MEMORY[0x28223BE20](v10);
    v39 = &v37 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v14);
    v15 = 0;
    v47 = a3;
    v17 = *(a3 + 56);
    a3 += 56;
    v16 = v17;
    v18 = 1 << *(a3 - 24);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v12 = ((v18 + 63) >> 6);
    v41 = 0;
    v42 = v8 + 2;
    v43 = (v8 + 1);
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v48 = (v20 - 1) & v20;
LABEL_12:
      v13 = v21 | (v15 << 6);
      v24 = *(v47 + 48) + v8[9] * v13;
      v4 = v8;
      v25 = v8[2];
      v26 = v44;
      v27 = v45;
      v25(v44, v24, v45);
      v28 = v49;
      v29 = v46(v26);
      v49 = v28;
      if (v28)
      {
        (*v43)(v26, v27);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v30 = v29;
      v10 = (*v43)(v26, v27);
      v8 = v4;
      v20 = v48;
      if (v30)
      {
        *&v39[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_22726A210(v39, v38, v41, v47);
          goto LABEL_18;
        }
      }
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_17;
      }

      v23 = *(a3 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v10;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v10 = v34;
  }

  v35 = swift_slowAlloc();
  v36 = sub_226FA3C7C(v35, v13, a3, v46, a2);

  result = MEMORY[0x22AA9A450](v35, -1, -1);
  if (!v4)
  {
    result = v36;
  }

LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22735A4E0(uint64_t (*a1)(uint64_t (*)(char *, unint64_t, uint64_t, uint64_t)), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  v49 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v40 - v14);
  LOBYTE(v14) = *(a3 + 32);
  v41 = ((1 << v14) + 63) >> 6;
  if ((v14 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v47 = v15;
    v48 = v13;
    v40 = a5;
    v43 = &v40;
    MEMORY[0x28223BE20](v13);
    v42 = &v40 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v16);
    a6 = 0;
    v50 = a3;
    v18 = *(a3 + 56);
    a3 += 56;
    v17 = v18;
    v19 = 1 << *(a3 - 24);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v17;
    v22 = (v19 + 63) >> 6;
    v44 = 0;
    v45 = (v11 + 16);
    v46 = (v11 + 8);
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
LABEL_12:
      v26 = v23 | (a6 << 6);
      v27 = *(v50 + 48) + *(v11 + 9) * v26;
      v15 = v11;
      v28 = *(v11 + 2);
      a5 = v47;
      v29 = v48;
      v28(v47, v27, v48);
      v30 = v52;
      v31 = v49(a5);
      v52 = v30;
      if (v30)
      {
        (*v46)(a5, v29);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v32 = v31;
      v13 = (*v46)(a5, v29);
      v11 = v15;
      v21 = v51;
      if (v32)
      {
        *&v42[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_17:
          result = v40(v42, v41, v44, v50);
          goto LABEL_18;
        }
      }
    }

    v24 = a6;
    while (1)
    {
      a6 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (a6 >= v22)
      {
        goto LABEL_17;
      }

      v25 = *(a3 + 8 * a6);
      v24 = (v24 + 1);
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v51 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v36 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v13 = v36;
  }

  v37 = swift_slowAlloc();
  v38 = v52;
  v39 = sub_22735AC98(v37, v41, a3, v49, a2, a6);

  result = MEMORY[0x22AA9A450](v37, -1, -1);
  if (!v38)
  {
    result = v39;
  }

LABEL_18:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22735A88C(uint64_t (*a1)(uint64_t (*)(char *, unint64_t, uint64_t, uint64_t)), uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22735A4E0(a1, a2, a3, MEMORY[0x277D52498], sub_22726B6C8, sub_2272C55FC);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22735A914(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v33 = a1;
  v35[2] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v7;
    v34 = v3;
    v31 = &v28;
    MEMORY[0x28223BE20](a1);
    v30 = &v28 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v8);
    v32 = 0;
    v9 = 0;
    v7 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v18 = v4;
      v19 = (*(v4 + 48) + 16 * v17);
      v20 = v19[1];
      v35[0] = *v19;
      v35[1] = v20;

      v3 = v34;
      v21 = v33(v35);
      v34 = v3;
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      v22 = v21;

      v4 = v18;
      if (v22)
      {
        *&v30[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_22726999C(v30, v29, v32, v4);
          goto LABEL_18;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v7 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = sub_22735AC98(v26, v7, v4, v33, a2, sub_2272C563C);

  result = MEMORY[0x22AA9A450](v26, -1, -1);
  if (!v3)
  {
    result = v27;
  }

LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22735ABE4(uint64_t (*a1)(uint64_t (*)(char *, unint64_t, uint64_t, uint64_t)), uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22735A4E0(a1, a2, a3, MEMORY[0x277D51330], sub_22726C0CC, sub_2272C57B0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22735AC98(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_22735AD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_227667370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = *(sub_2276672A0() + 16);

  if (v17)
  {
    v31 = v9;
    sub_22766A630();
    (*(v5 + 16))(v8, a2, v4);
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = a1;
      v21 = v20;
      *v20 = 134217984;
      v22 = *(sub_2276672A0() + 16);

      (*(v5 + 8))(v8, v4);
      *(v21 + 1) = v22;
      _os_log_impl(&dword_226E8E000, v18, v19, "Hard filtering %ld workouts", v21, 0xCu);
      v23 = v21;
      a1 = v30;
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

    v27 = (*(v10 + 8))(v16, v31);
    MEMORY[0x28223BE20](v27);
    *(&v29 - 2) = a2;

    return sub_22735A4E0(sub_22735BC98, (&v29 - 4), a1, MEMORY[0x277D52828], sub_22726A560, sub_2272C557C);
  }

  else
  {
    sub_22766A630();
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v24, v25, "No workouts to hard filter", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
  }

  return a1;
}

double sub_22735B0EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227667300();
  v10 = sub_227666B00();
  v11 = sub_226F3E6A8(v10);

  if (*(v9 + 16) && *(v11 + 16))
  {
    v12 = sub_227359ED8(v9, v11);

    if (v12)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
    }
  }

  else
  {

    v13 = 0.0;
  }

  v14 = sub_2276672E0();
  v15 = sub_227666AE0();
  v16 = sub_226F3E6A8(v15);

  if (*(v14 + 16) && *(v16 + 16))
  {
    v17 = sub_227359ED8(v14, v16);

    v18 = 0.0;
    if (v17)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    if (a3)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v19 = 0.0;
  v18 = 0.0;
  if ((a3 & 1) == 0)
  {
LABEL_15:
    v20 = sub_227667290();
    v21 = sub_227666AA0();
    v22 = sub_226F3E6A8(v21);

    if (*(v20 + 16) && *(v22 + 16))
    {
      v23 = sub_227359ED8(v20, v22);

      if (v23)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }
    }

    else
    {
    }
  }

LABEL_21:
  v24 = sub_227667270();
  v25 = sub_227666B20();
  if (*(v24 + 16) && *(v25 + 16))
  {
    v26 = sub_227359C44(v24, v25);

    if (v26)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = 1.0;
    }
  }

  else
  {

    v27 = 0.0;
  }

  v28 = sub_2276672B0();
  v29 = sub_227666A50();
  v31 = sub_22718C70C(v29, v30, v28);

  if (v31)
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.0;
  }

  sub_227667240();
  sub_2276680F0();
  v34 = v33;
  v35 = *(v5 + 8);
  v35(v8, v4);
  v36 = v13 * v34;
  sub_227667240();
  sub_2276680C0();
  v38 = v37;
  v35(v8, v4);
  v39 = v19 * v38;
  sub_227667240();
  sub_227668050();
  v41 = v40;
  v35(v8, v4);
  v42 = v18 * v41;
  sub_227667240();
  sub_227668010();
  v44 = v43;
  v35(v8, v4);
  v45 = v27 * v44;
  sub_227667240();
  sub_227667E60();
  v47 = v46;
  v35(v8, v4);
  return v36 + 0.0 + v39 + v42 + v45 + v32 * v47;
}

uint64_t sub_22735B514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 45)
  {
    return a1;
  }

  v14 = 0;
  v15 = a4 + 64;
  v16 = 1 << *(a4 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a4 + 64);
  v19 = (v16 + 63) >> 6;
  if (!v18)
  {
LABEL_6:
    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        goto LABEL_16;
      }

      v18 = *(v15 + 8 * v20);
      ++v14;
      if (v18)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_5:
  v20 = v14;
LABEL_9:
  v21 = __clz(__rbit64(v18));
  v18 &= v18 - 1;
  v22 = *(*(a4 + 56) + ((v20 << 9) | (8 * v21)));
  v23 = *(v22 + 16);
  v24 = (v22 + 32);
  do
  {
    if (!v23)
    {
      v14 = v20;
      if (!v18)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v25 = *v24++;
    --v23;
  }

  while (v25 != 5);
  if (a2 > 2)
  {
    return 45;
  }

LABEL_16:
  v26 = 0;
  v27 = 1 << *(a4 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a4 + 64);
  v30 = (v27 + 63) >> 6;
  if (v29)
  {
LABEL_19:
    v31 = v26;
LABEL_23:
    v32 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v33 = *(*(a4 + 56) + ((v31 << 9) | (8 * v32)));
    v34 = *(v33 + 16);
    v35 = (v33 + 32);
    while (v34)
    {
      v36 = *v35++;
      --v34;
      if (v36 == 45)
      {
        v26 = v31;
        if (!v29)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

LABEL_29:
    v37 = result;
    sub_22766A630();
    v38 = sub_22766B380();
    v39 = sub_22766C8B0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_226E8E000, v38, v39, "Adjusting total daily duration from 45 -> 40", v40, 2u);
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    (*(v9 + 8))(v13, v37);
    return 40;
  }

LABEL_20:
  while (1)
  {
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v31 >= v30)
    {
      if (a3 >= a2)
      {
        return 45;
      }

      goto LABEL_29;
    }

    v29 = *(v15 + 8 * v31);
    ++v26;
    if (v29)
    {
      goto LABEL_23;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22735B7D0(uint64_t a1, double a2)
{
  v4 = sub_22766B390();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227664010();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[1] = a1;
  v42 = a1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9C0, &unk_227676780);
  sub_22735BBDC();
  v12 = sub_22766C220();

  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_11:

    v27 = v39;
    sub_22766A630();

    v28 = sub_22766B380();
    v29 = sub_22766C890();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 134218242;
      *(v30 + 4) = a2;
      *(v30 + 12) = 2080;
      sub_22735BC40();
      v32 = sub_22766C610();
      v34 = sub_226E97AE8(v32, v33, &v42);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_226E8E000, v28, v29, "    Unable to query bucketed duration for duration=%f outside     filterDurations=%s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    (*(v40 + 8))(v27, v41);
    return 0;
  }

  v15 = 0;
  v16 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = (v8 + 8);
  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    (*(v8 + 16))(v11, v16 + *(v8 + 72) * v15, v7);
    sub_227664000();
    v19 = v18;
    sub_227663FE0();
    v21 = v19 - v20;
    sub_227664000();
    v23 = v22;
    result = sub_227663FF0();
    v25 = v23 + v24;
    if (v21 > v25)
    {
      goto LABEL_19;
    }

    if (v21 <= a2 && v25 >= a2)
    {
      break;
    }

    ++v15;
    result = (*v17)(v11, v7);
    if (v14 == v15)
    {
      goto LABEL_11;
    }
  }

  sub_227664000();
  v36 = v35;
  result = (*v17)(v11, v7);
  v37 = v36 / 60.0;
  if (COERCE__INT64(fabs(v36 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v37 < 9.22337204e18)
  {
    return v37;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_22735BBDC()
{
  result = qword_27D7B9E50;
  if (!qword_27D7B9E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BC9C0, &unk_227676780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9E50);
  }

  return result;
}

unint64_t sub_22735BC40()
{
  result = qword_28139BA00;
  if (!qword_28139BA00)
  {
    sub_227664010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BA00);
  }

  return result;
}

unint64_t sub_22735BD88()
{
  result = qword_27D7BCE60;
  if (!qword_27D7BCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE60);
  }

  return result;
}

unint64_t sub_22735BDDC(uint64_t a1)
{
  *(a1 + 8) = sub_22735BE0C();
  result = sub_22735BE60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22735BE0C()
{
  result = qword_27D7BCE68;
  if (!qword_27D7BCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE68);
  }

  return result;
}

unint64_t sub_22735BE60()
{
  result = qword_27D7BCE70;
  if (!qword_27D7BCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE70);
  }

  return result;
}

unint64_t sub_22735BEB8()
{
  result = qword_27D7BCE78;
  if (!qword_27D7BCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE78);
  }

  return result;
}

uint64_t sub_22735BF38@<X0>(uint64_t a1@<X8>)
{
  v93[0] = a1;
  v116 = sub_227667400();
  v1 = *(v116 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v116);
  v4 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_227662F10();
  v5 = *(v120 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v120);
  v8 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_227662B60();
  v9 = *(v96 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v96);
  v112 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_227665440();
  v12 = *(v113 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8540, &qword_22767F770);
  v15 = *(*(v104 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v104);
  v103 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v110 = v93 - v18;
  v19 = sub_227665BD0();
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v19 + 64);
  v107 = (v21 + 63) >> 6;
  v102 = v12 + 16;
  v101 = v12 + 32;
  v105 = v12;
  v109 = v12 + 8;
  v123 = v1 + 16;
  v125 = v1;
  v118 = (v1 + 8);
  v119 = v5;
  v117 = v5 + 32;
  v24 = v23;
  v93[1] = v9 + 16;
  v94 = v9;
  v95 = (v9 + 8);
  v106 = v19;

  v25 = 0;
  v26 = MEMORY[0x277D84F98];
  v97 = v20;
  v114 = v4;
  v115 = v8;
  while (v24)
  {
    v100 = v26;
    v27 = v25;
LABEL_11:
    v108 = v24;
    v98 = v27;
    v28 = __clz(__rbit64(v24)) | (v27 << 6);
    v29 = v106;
    v30 = v105;
    v31 = v110;
    (*(v105 + 16))(v110, *(v106 + 48) + *(v105 + 72) * v28, v113);
    v32 = v104;
    *(v31 + *(v104 + 48)) = *(*(v29 + 56) + 8 * v28);
    v33 = v103;
    sub_226E93170(v31, v103, &qword_27D7B8540, &qword_22767F770);
    v34 = *(v33 + *(v32 + 48));

    v35 = v113;
    (*(v30 + 32))(v111, v33, v113);
    sub_226E93170(v31, v33, &qword_27D7B8540, &qword_22767F770);
    v36 = *(v33 + *(v32 + 48));
    v99 = *(v30 + 8);
    v99(v33, v35);
    sub_227665400();
    sub_227665410();
    sub_227665420();
    sub_227665430();
    v37 = v36;
    sub_227662B40();
    v38 = *(v36 + 16);
    if (v38)
    {
      v134 = MEMORY[0x277D84F90];
      sub_226F203E8(0, v38, 0);
      v39 = 0;
      v40 = v134;
      v124 = v37 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v42 = v115;
      v41 = v116;
      v121 = v38;
      v122 = v37;
      while (v39 < *(v37 + 16))
      {
        v43 = *(v125 + 72);
        v127 = v39;
        (*(v125 + 16))(v4, v124 + v43 * v39, v41);
        v44 = sub_2276673C0();
        v45 = *(v44 + 16);
        if (v45)
        {
          v126 = v40;
          v133 = MEMORY[0x277D84F90];
          sub_226F20408(0, v45, 0);
          v46 = v133;
          v47 = v44 + 56;
          v48 = -1 << *(v44 + 32);
          v49 = sub_22766CC90();
          v50 = 0;
          v128 = v44 + 64;
          v129 = v45;
          v130 = v44 + 56;
          while ((v49 & 0x8000000000000000) == 0 && v49 < 1 << *(v44 + 32))
          {
            v52 = v49 >> 6;
            if ((*(v47 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
            {
              goto LABEL_51;
            }

            v53 = *(v44 + 36);
            v131 = v50;
            v132 = v53;
            v54 = *(v44 + 48) + 24 * v49;
            v56 = *v54;
            v55 = *(v54 + 8);
            v57 = *(v54 + 16);
            sub_226EE2880(*v54, v55, v57);
            v58 = v46;
            v133 = v46;
            v59 = v44;
            v61 = *(v58 + 16);
            v60 = *(v58 + 24);
            if (v61 >= v60 >> 1)
            {
              sub_226F20408((v60 > 1), v61 + 1, 1);
              v58 = v133;
            }

            *(v58 + 16) = v61 + 1;
            v62 = v58 + 24 * v61;
            *(v62 + 32) = v56;
            *(v62 + 40) = v55;
            *(v62 + 48) = v57;
            v51 = 1 << *(v59 + 32);
            if (v49 >= v51)
            {
              goto LABEL_52;
            }

            v47 = v130;
            v63 = *(v130 + 8 * v52);
            if ((v63 & (1 << v49)) == 0)
            {
              goto LABEL_53;
            }

            v44 = v59;
            if (v132 != *(v59 + 36))
            {
              goto LABEL_54;
            }

            v46 = v58;
            v64 = v63 & (-2 << (v49 & 0x3F));
            if (v64)
            {
              v51 = __clz(__rbit64(v64)) | v49 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v65 = v52 << 6;
              v66 = v52 + 1;
              v67 = (v128 + 8 * v52);
              while (v66 < (v51 + 63) >> 6)
              {
                v69 = *v67++;
                v68 = v69;
                v65 += 64;
                ++v66;
                if (v69)
                {
                  sub_226EB526C(v49, v132, 0);
                  v51 = __clz(__rbit64(v68)) + v65;
                  goto LABEL_17;
                }
              }

              sub_226EB526C(v49, v132, 0);
            }

LABEL_17:
            v50 = v131 + 1;
            v49 = v51;
            if (v131 + 1 == v129)
            {

              v42 = v115;
              v4 = v114;
              v40 = v126;
              v70 = v46;
              v41 = v116;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          break;
        }

        v70 = MEMORY[0x277D84F90];
LABEL_34:
        sub_2276673F0();
        sub_226F46500(v70);

        sub_2276673E0();
        sub_227662EF0();
        (*v118)(v4, v41);
        v134 = v40;
        v72 = v40[2];
        v71 = v40[3];
        if (v72 >= v71 >> 1)
        {
          sub_226F203E8(v71 > 1, v72 + 1, 1);
          v40 = v134;
        }

        v39 = v127 + 1;
        v40[2] = v72 + 1;
        (*(v119 + 32))(v40 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v72, v42, v120);
        v37 = v122;
        if (v39 == v121)
        {

          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v40 = MEMORY[0x277D84F90];
LABEL_39:
    v73 = v100;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v73;
    v75 = sub_226F3A7D0(v112);
    v77 = v73[2];
    v78 = (v76 & 1) == 0;
    v79 = __OFADD__(v77, v78);
    v80 = v77 + v78;
    if (v79)
    {
      goto LABEL_57;
    }

    v81 = v76;
    if (v73[3] >= v80)
    {
      v20 = v97;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = v75;
        sub_226FF4514();
        v20 = v97;
        v75 = v91;
      }
    }

    else
    {
      sub_226FEBD84(v80, isUniquelyReferenced_nonNull_native);
      v75 = sub_226F3A7D0(v112);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_59;
      }

      v20 = v97;
    }

    v24 = (v108 - 1) & v108;
    v26 = v134;
    if (v81)
    {
      v83 = v134[7];
      v84 = *(v83 + 8 * v75);
      *(v83 + 8 * v75) = v40;

      (*v95)(v112, v96);
      v99(v111, v113);
      sub_226E97D1C(v110, &qword_27D7B8540, &qword_22767F770);
      v25 = v98;
    }

    else
    {
      v108 &= v108 - 1;
      v134[(v75 >> 6) + 8] |= 1 << v75;
      v85 = v94;
      v86 = v75;
      v87 = v112;
      v88 = v96;
      (*(v94 + 16))(v26[6] + *(v94 + 72) * v75, v112, v96);
      *(v26[7] + 8 * v86) = v40;
      (*(v85 + 8))(v87, v88);
      v99(v111, v113);
      sub_226E97D1C(v110, &qword_27D7B8540, &qword_22767F770);
      v89 = v26[2];
      v79 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v79)
      {
        goto LABEL_58;
      }

      v26[2] = v90;
      v25 = v98;
      v20 = v97;
      v24 = v108;
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v107)
    {

      return sub_227662C70();
    }

    v24 = *(v20 + 8 * v27);
    ++v25;
    if (v24)
    {
      v100 = v26;
      goto LABEL_11;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22735CAE4@<X0>(uint64_t a1@<X8>)
{
  v93[0] = a1;
  v1 = sub_227662F10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_227667400();
  v6 = *(v120 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v120);
  v9 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_227665440();
  v10 = *(v96 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v96);
  v112 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_227662B60();
  v13 = *(v113 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE80, qword_227681C68);
  v16 = *(*(v104 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v104);
  v103 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v110 = v93 - v19;
  v20 = sub_227662C80();
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v20 + 64);
  v107 = (v22 + 63) >> 6;
  v102 = v13 + 16;
  v101 = v13 + 32;
  v105 = v13;
  v109 = v13 + 8;
  v123 = v2 + 16;
  v125 = v2;
  v118 = (v2 + 8);
  v119 = v6;
  v117 = v6 + 32;
  v25 = v24;
  v93[1] = v10 + 16;
  v94 = v10;
  v95 = (v10 + 8);
  v106 = v20;

  v26 = 0;
  v27 = MEMORY[0x277D84F98];
  v97 = v21;
  v115 = v9;
  v116 = v1;
  v114 = v5;
  while (v25)
  {
    v100 = v27;
    v28 = v26;
LABEL_11:
    v108 = v25;
    v98 = v28;
    v29 = __clz(__rbit64(v25)) | (v28 << 6);
    v30 = v106;
    v31 = v105;
    v32 = v110;
    (*(v105 + 16))(v110, *(v106 + 48) + *(v105 + 72) * v29, v113);
    v33 = v104;
    *(v32 + *(v104 + 48)) = *(*(v30 + 56) + 8 * v29);
    v34 = v103;
    sub_226E93170(v32, v103, &qword_27D7BCE80, qword_227681C68);
    v35 = *(v34 + *(v33 + 48));

    v36 = v113;
    (*(v31 + 32))(v111, v34, v113);
    sub_226E93170(v32, v34, &qword_27D7BCE80, qword_227681C68);
    v37 = *(v34 + *(v33 + 48));
    v99 = *(v31 + 8);
    v99(v34, v36);
    sub_227662B50();
    sub_2276653F0();
    v38 = *(v37 + 16);
    if (v38)
    {
      v134 = MEMORY[0x277D84F90];
      sub_226F1F1D0(0, v38, 0);
      v39 = 0;
      v40 = v134;
      v124 = v37 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v42 = v115;
      v41 = v116;
      v121 = v38;
      v122 = v37;
      while (v39 < *(v37 + 16))
      {
        v43 = *(v125 + 72);
        v127 = v39;
        (*(v125 + 16))(v5, v124 + v43 * v39, v41);
        v44 = sub_227662ED0();
        v45 = *(v44 + 16);
        if (v45)
        {
          v126 = v40;
          v133 = MEMORY[0x277D84F90];
          sub_226F1F1F0(0, v45, 0);
          v46 = v133;
          v47 = v44 + 56;
          v48 = -1 << *(v44 + 32);
          v49 = sub_22766CC90();
          v50 = 0;
          v128 = v44 + 64;
          v129 = v45;
          v130 = v44 + 56;
          while ((v49 & 0x8000000000000000) == 0 && v49 < 1 << *(v44 + 32))
          {
            v52 = v49 >> 6;
            if ((*(v47 + 8 * (v49 >> 6)) & (1 << v49)) == 0)
            {
              goto LABEL_51;
            }

            v53 = *(v44 + 36);
            v131 = v50;
            v132 = v53;
            v54 = *(v44 + 48) + 24 * v49;
            v56 = *v54;
            v55 = *(v54 + 8);
            v57 = *(v54 + 16);
            sub_226EE2880(*v54, v55, v57);
            v133 = v46;
            v58 = v44;
            v60 = *(v46 + 16);
            v59 = *(v46 + 24);
            v61 = v46;
            if (v60 >= v59 >> 1)
            {
              sub_226F1F1F0((v59 > 1), v60 + 1, 1);
              v61 = v133;
            }

            *(v61 + 16) = v60 + 1;
            v62 = v61 + 24 * v60;
            *(v62 + 32) = v56;
            *(v62 + 40) = v55;
            *(v62 + 48) = v57;
            v51 = 1 << *(v58 + 32);
            if (v49 >= v51)
            {
              goto LABEL_52;
            }

            v47 = v130;
            v63 = *(v130 + 8 * v52);
            if ((v63 & (1 << v49)) == 0)
            {
              goto LABEL_53;
            }

            v44 = v58;
            if (v132 != *(v58 + 36))
            {
              goto LABEL_54;
            }

            v46 = v61;
            v64 = v63 & (-2 << (v49 & 0x3F));
            if (v64)
            {
              v51 = __clz(__rbit64(v64)) | v49 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v65 = v52 << 6;
              v66 = v52 + 1;
              v67 = (v128 + 8 * v52);
              while (v66 < (v51 + 63) >> 6)
              {
                v69 = *v67++;
                v68 = v69;
                v65 += 64;
                ++v66;
                if (v69)
                {
                  sub_226EB526C(v49, v132, 0);
                  v51 = __clz(__rbit64(v68)) + v65;
                  goto LABEL_17;
                }
              }

              sub_226EB526C(v49, v132, 0);
            }

LABEL_17:
            v50 = v131 + 1;
            v49 = v51;
            if (v131 + 1 == v129)
            {

              v70 = v46;
              v42 = v115;
              v41 = v116;
              v5 = v114;
              v40 = v126;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          break;
        }

        v70 = MEMORY[0x277D84F90];
LABEL_34:
        sub_227662EE0();
        sub_227662F00();
        sub_226F3EAA8(v70);

        sub_2276673D0();
        (*v118)(v5, v41);
        v134 = v40;
        v72 = v40[2];
        v71 = v40[3];
        if (v72 >= v71 >> 1)
        {
          sub_226F1F1D0(v71 > 1, v72 + 1, 1);
          v40 = v134;
        }

        v39 = v127 + 1;
        v40[2] = v72 + 1;
        (*(v119 + 32))(v40 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v72, v42, v120);
        v37 = v122;
        if (v39 == v121)
        {

          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v40 = MEMORY[0x277D84F90];
LABEL_39:
    v73 = v100;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v73;
    v75 = sub_226F39F04(v112);
    v77 = v73[2];
    v78 = (v76 & 1) == 0;
    v79 = __OFADD__(v77, v78);
    v80 = v77 + v78;
    if (v79)
    {
      goto LABEL_57;
    }

    v81 = v76;
    if (v73[3] >= v80)
    {
      v21 = v97;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = v75;
        sub_226FF46C4();
        v21 = v97;
        v75 = v91;
      }
    }

    else
    {
      sub_226FEC70C(v80, isUniquelyReferenced_nonNull_native);
      v75 = sub_226F39F04(v112);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_59;
      }

      v21 = v97;
    }

    v25 = (v108 - 1) & v108;
    v27 = v134;
    if (v81)
    {
      v83 = v134[7];
      v84 = *(v83 + 8 * v75);
      *(v83 + 8 * v75) = v40;

      (*v95)(v112, v96);
      v99(v111, v113);
      sub_226E97D1C(v110, &qword_27D7BCE80, qword_227681C68);
      v26 = v98;
    }

    else
    {
      v108 &= v108 - 1;
      v134[(v75 >> 6) + 8] |= 1 << v75;
      v85 = v94;
      v86 = v75;
      v87 = v112;
      v88 = v96;
      (*(v94 + 16))(v27[6] + *(v94 + 72) * v75, v112, v96);
      *(v27[7] + 8 * v86) = v40;
      (*(v85 + 8))(v87, v88);
      v99(v111, v113);
      sub_226E97D1C(v110, &qword_27D7BCE80, qword_227681C68);
      v89 = v27[2];
      v79 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v79)
      {
        goto LABEL_58;
      }

      v27[2] = v90;
      v26 = v98;
      v21 = v97;
      v25 = v108;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v107)
    {

      return sub_227665BC0();
    }

    v25 = *(v21 + 8 * v28);
    ++v26;
    if (v25)
    {
      v100 = v27;
      goto LABEL_11;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22735D678@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CC0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22735D6F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276648F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22735D720(uint64_t a1)
{
  *(a1 + 24) = sub_22735D788(&qword_2813A57B0);
  result = sub_22735D788(&unk_2813A57A0);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22735D788(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227664900();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22735D7CC(void *a1)
{
  v2 = [a1 uniqueName];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_22766C000();
  v6 = v5;

  if (v4 == 0xD00000000000001CLL && 0x800000022769CA20 == v6)
  {

    return 0;
  }

  v8 = sub_22766D190();

  if (v8)
  {
    return 0;
  }

LABEL_7:
  v9 = (*v1 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_HKWorkoutIdentifier);
  v10 = *v9;
  v11 = v9[1];

  return v10;
}

id sub_22735D8AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_227662940();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = sub_227662750();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  result = [a1 uniqueName];
  if (result)
  {
    v21 = result;
    v22 = sub_22766C000();
    v24 = v23;

    v44 = v22;
    v45 = v24;
    v42 = 0x507373656E746946;
    v43 = 0xEF6E616C5073756CLL;
    sub_226FB2548();
    LOBYTE(v21) = sub_22766CC00();

    v25 = *v3;
    v37 = v12;
    v38 = v5;
    if (v21)
    {
      sub_226E93170(v25 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_planCompletionDate, v11, &qword_27D7B9690, qword_227670B50);
      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        (*(v13 + 32))(v19, v11, v12);
        goto LABEL_7;
      }

      sub_226E97D1C(v11, &qword_27D7B9690, qword_227670B50);
    }

    (*(v13 + 16))(v17, v25 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionStartDate, v12);
    v26 = *(v25 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionDuration);
    sub_227662690();
    (*(v13 + 8))(v17, v12);
LABEL_7:
    v27 = [objc_opt_self() hk_gregorianCalendar];
    v28 = v39;
    sub_2276628C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
    v29 = sub_227662930();
    v30 = *(v29 - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_227675BD0;
    v34 = v33 + v32;
    v35 = *(v30 + 104);
    v35(v34, *MEMORY[0x277CC9968], v29);
    v35(v34 + v31, *MEMORY[0x277CC9998], v29);
    v35(v34 + 2 * v31, *MEMORY[0x277CC9988], v29);
    sub_226F4CE68(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2276628B0();

    (*(v41 + 8))(v28, v38);
    return (*(v13 + 8))(v19, v37);
  }

  __break(1u);
  return result;
}

id sub_22735DDA0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_227662190();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = *(v90 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v83 - v15;
  result = [a1 uniqueName];
  if (result)
  {
    v18 = result;
    v19 = sub_22766C000();
    v21 = v20;

    if (*(a2 + 16))
    {
      v22 = sub_226E92000(v19, v21);
      v24 = v23;

      if (v24)
      {
        v25 = *(*(a2 + 56) + 8 * v22);
        v26 = *v3;
        v27 = v25;
        if ([v27 evaluateWithObject_])
        {
          v87 = v26;
          sub_22766A610();
          sub_22735EE64(v3, &v95);
          v28 = a1;
          v29 = sub_22766B380();
          v30 = sub_22766C8B0();

          v31 = os_log_type_enabled(v29, v30);
          v88 = v28;
          if (v31)
          {
            v85 = v30;
            v86 = v27;
            v32 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v92[0] = v84;
            *v32 = 136315394;
            v33 = *(v95 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier);
            v34 = *(v95 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier + 8);

            sub_22735EE9C(&v95);
            v35 = sub_226E97AE8(v33, v34, v92);

            *(v32 + 4) = v35;
            *(v32 + 12) = 2080;
            v36 = [v28 uniqueName];
            if (v36)
            {
              v37 = v36;
              v38 = sub_22766C000();
              v40 = v39;
            }

            else
            {
              v38 = 0;
              v40 = 0;
            }

            *&v94[0] = v38;
            *(&v94[0] + 1) = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
            v42 = sub_22766CB80();
            v44 = v43;

            v45 = sub_226E97AE8(v42, v44, v92);

            *(v32 + 14) = v45;
            _os_log_impl(&dword_226E8E000, v29, v85, "Session [%s] satisfies template's predicate: %s", v32, 0x16u);
            v46 = v84;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v46, -1, -1);
            MEMORY[0x22AA9A450](v32, -1, -1);

            v41 = *(v90 + 8);
            v41(v16, v91);
            v27 = v86;
          }

          else
          {

            v41 = *(v90 + 8);
            v41(v16, v91);
            sub_22735EE9C(&v95);
          }

          v47 = [objc_allocWithZone(MEMORY[0x277CE8D38]) init];
          v48 = v88;
          v49 = [v88 uniqueName];
          v50 = v47;
          [v47 setTemplateUniqueName_];

          sub_22735D7CC(v48);
          if (v51)
          {
            v52 = sub_22766BFD0();
          }

          else
          {
            v52 = 0;
          }

          [v50 setExternalIdentifier_];

          sub_22735D8AC(v48, v10);
          v53 = sub_227662110();
          (*(v7 + 8))(v10, v6);
          [v50 setEarnedDateComponents_];

          v54 = [v48 valueExpression];
          if (v54)
          {
            v55 = v54;
            sub_22766C000();

            v56 = v88;
            v57 = [v88 canonicalUnit];
            if (v57)
            {
              v58 = v57;
              sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
              v59 = sub_22766C830();

              if ([v59 expressionValueWithObject:v87 context:0])
              {
                sub_22766CC20();
                swift_unknownObjectRelease();
              }

              else
              {
                v95 = 0u;
                v96 = 0u;
              }

              v60 = v89;
              v94[0] = v95;
              v94[1] = v96;
              sub_226E93170(v94, &v95, &unk_27D7BC990, &qword_227670A30);
              if (*(&v96 + 1))
              {
                sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
                if (swift_dynamicCast())
                {
                  v61 = v92[0];
                  v62 = v58;
                  [v61 doubleValue];
                  v64 = [objc_opt_self() quantityWithUnit:v62 doubleValue:v63];

                  [v50 setValue_];
LABEL_35:
                  sub_226E97D1C(v94, &unk_27D7BC990, &qword_227670A30);
                  return v50;
                }

                v65 = v41;
              }

              else
              {
                v65 = v41;
                sub_226E97D1C(&v95, &unk_27D7BC990, &qword_227670A30);
              }

              sub_22766A610();
              sub_22735EE64(v3, &v95);
              v66 = v56;
              v67 = sub_22766B380();
              v68 = sub_22766C890();

              if (!os_log_type_enabled(v67, v68))
              {

                v65(v60, v91);
                sub_226E97D1C(v94, &unk_27D7BC990, &qword_227670A30);
                sub_22735EE9C(&v95);
                return v50;
              }

              v88 = v59;
              v86 = v27;
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v93 = v70;
              *v69 = 136315394;
              v71 = *(v95 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier);
              v72 = *(v95 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier + 8);

              sub_22735EE9C(&v95);
              v73 = sub_226E97AE8(v71, v72, &v93);

              *(v69 + 4) = v73;
              *(v69 + 12) = 2080;
              v74 = [v66 uniqueName];
              if (v74)
              {
                v75 = v74;
                v76 = sub_22766C000();
                v78 = v77;
              }

              else
              {
                v76 = 0;
                v78 = 0;
              }

              v92[0] = v76;
              v92[1] = v78;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
              v79 = sub_22766CB80();
              v81 = v80;

              v82 = sub_226E97AE8(v79, v81, &v93);

              *(v69 + 14) = v82;
              _os_log_impl(&dword_226E8E000, v67, v68, "Could not determine earnedInstance value for session [%s] and template: %s", v69, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA9A450](v70, -1, -1);
              MEMORY[0x22AA9A450](v69, -1, -1);

              v65(v89, v91);
              goto LABEL_35;
            }
          }

          return v50;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22735E6FC(uint64_t a1)
{
  v83 = sub_22766B390();
  v3 = *(v83 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v83);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[5];
  __swift_project_boxed_opaque_existential_0(v1 + 1, v1[4]);
  LOBYTE(v86[0]) = 22;
  v8 = sub_226F19410();
  v78 = sub_226F19464();
  v72 = v78;
  v79 = v8;
  v70 = v7;
  v71 = v8;
  v9 = a1;
  v80 = "ModifyPlanFailure";
  v81 = "AchievementEvaluator.swift";
  sub_22766A130();
  sub_22766A610();
  v82 = v1;
  sub_22735EE64(v1, v86);

  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v83;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v85 = v14;
    *v13 = 136315394;
    v15 = *(v86[0] + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier);
    v16 = *(v86[0] + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier + 8);

    sub_22735EE9C(v86);
    v17 = sub_226E97AE8(v15, v16, &v85);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    v18 = v9 & 0xC000000000000001;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v19 = sub_22766CD20();
    }

    else
    {
      v19 = *(v9 + 16);
    }

    *(v13 + 14) = v19;

    _os_log_impl(&dword_226E8E000, v10, v11, "Evaluating session %s against [%ld] templates", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    (*(v3 + 8))(v6, v12);
  }

  else
  {

    (*(v3 + 8))(v6, v83);
    sub_22735EE9C(v86);
    v18 = a1 & 0xC000000000000001;
  }

  v83 = sub_227148D10(MEMORY[0x277D84F90]);
  v76 = v9;
  if (v18)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
    sub_22735EECC();
    sub_22766C700();
    v21 = v86[0];
    v20 = v86[1];
    v22 = v86[2];
    v23 = v86[3];
    v24 = v86[4];
  }

  else
  {
    v25 = -1 << *(v9 + 32);
    v20 = v9 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v9 + 56);

    v23 = 0;
    v21 = v9;
  }

  v77 = v22;
  v28 = (v22 + 64) >> 6;
  while (2)
  {
    while (2)
    {
      v29 = &selRef_setFetchBatchSize_;
      while (1)
      {
        if (v21 < 0)
        {
          v33 = sub_22766CD50();
          if (!v33 || (v84 = v33, sub_226E99364(0, &qword_281398B88, 0x277CE8D50), swift_dynamicCast(), v32 = v85, v29 = &selRef_setFetchBatchSize_, !v85))
          {
LABEL_38:
            v63 = sub_226EBB21C();
            MEMORY[0x28223BE20](v63);
            v64 = v82;
            v72 = v82;
            v73 = v83;
            sub_226FDEC04(sub_22735EF34, &v70, v76);
            v66 = v65;

            v67 = sub_226F41A28(v66);

            v68 = v64[5];
            __swift_project_boxed_opaque_existential_0(v64 + 1, v64[4]);
            LOBYTE(v85) = 22;
            v72 = v78;
            v70 = v68;
            v71 = v79;
            sub_22766A120();
            return v67;
          }
        }

        else
        {
          v30 = v23;
          v31 = v24;
          if (!v24)
          {
            while (1)
            {
              v23 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                break;
              }

              if (v23 >= v28)
              {
                goto LABEL_38;
              }

              v31 = *(v20 + 8 * v23);
              ++v30;
              if (v31)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

LABEL_20:
          v24 = (v31 - 1) & v31;
          v32 = *(*(v21 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v31)))));
          if (!v32)
          {
            goto LABEL_38;
          }
        }

        v34 = [v32 v29[364]];
        if (v34)
        {
          break;
        }
      }

      v35 = v34;
      sub_22766C000();

      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v36 = sub_22766C7F0();

      v37 = [v32 uniqueName];
      if (!v37)
      {
        goto LABEL_42;
      }

      v38 = v37;
      v39 = sub_22766C000();
      v41 = v40;

      v75 = v36;
      v42 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v42;
      v74 = v39;
      v44 = v39;
      v45 = v41;
      v47 = sub_226E92000(v44, v41);
      v48 = *(v42 + 16);
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (*(v42 + 24) >= v50)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v46 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v56 = v46;
          sub_226FF0DC0();
          if ((v56 & 1) == 0)
          {
            break;
          }
        }

        goto LABEL_34;
      }

      LODWORD(v83) = v46;
      sub_226FE3874(v50, isUniquelyReferenced_nonNull_native);
      v51 = sub_226E92000(v74, v45);
      if ((v83 & 1) != (v52 & 1))
      {
        goto LABEL_43;
      }

      v47 = v51;
      if (v83)
      {
LABEL_34:

        v83 = v85;
        v53 = v85[7];
        v54 = *(v53 + 8 * v47);
        v55 = v75;
        *(v53 + 8 * v47) = v75;

        continue;
      }

      break;
    }

    v57 = v85;
    v85[(v47 >> 6) + 8] |= 1 << v47;
    v58 = (v57[6] + 16 * v47);
    *v58 = v74;
    v58[1] = v45;
    v59 = v75;
    *(v57[7] + 8 * v47) = v75;

    v60 = v57[2];
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (!v61)
    {
      v83 = v57;
      v57[2] = v62;
      continue;
    }

    break;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_22766D220();
  __break(1u);
  return result;
}

unint64_t sub_22735EECC()
{
  result = qword_281398B80;
  if (!qword_281398B80)
  {
    sub_226E99364(255, &qword_281398B88, 0x277CE8D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398B80);
  }

  return result;
}

id sub_22735EF34@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_22735DDA0(*a1, v4);
  *a2 = result;
  return result;
}

uint64_t sub_22735EF78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22735EFC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22735F01C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v37 = *(v2 - 8);
  v3 = v37;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v25 = *(v1 + 32);
  v26 = v1;
  ObjectType = swift_getObjectType();
  v38 = v12;
  v34 = *MEMORY[0x277D4E468];
  v36 = *(v3 + 104);
  v36(v6);
  v35 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
  v32 = sub_226F62F70(&qword_2813990E0, &qword_27D7BEA20, &qword_227685540);
  v31 = sub_227360068();
  sub_227669ED0();

  v13 = *(v37 + 8);
  v37 += 8;
  v22 = v2;
  v23 = v13;
  v13(v6, v2);
  swift_unknownObjectRelease();
  v38 = v12;
  v30 = *MEMORY[0x277D4E7B0];
  v14 = v36;
  v36(v6);
  swift_allocObject();
  v15 = v26;
  swift_weakInit();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE88, &qword_227681D50);
  v28 = sub_226F62F70(&qword_2813990A8, &qword_27D7BCE88, &qword_227681D50);
  v27 = sub_2273601B4();
  sub_227669EE0();

  v16 = v22;
  v17 = v23;
  v23(v6, v22);
  swift_unknownObjectRelease();
  v18 = *(v15 + 40);
  v19 = *(v15 + 56);
  swift_getObjectType();
  v38 = v18;
  (v14)(v6, v34, v16);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669ED0();

  v17(v6, v16);
  swift_unknownObjectRelease();
  v38 = v18;
  (v36)(v6, v30, v16);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v17(v6, v16);
  return swift_unknownObjectRelease();
}

uint64_t sub_22735F554(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_22735F574, 0, 0);
}

uint64_t sub_22735F574()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *v3;
    *(v0 + 104) = *v3;
    v5 = v4[7];
    v6 = v4[8];
    __swift_project_boxed_opaque_existential_0(v4 + 4, v5);
    v7 = *(v6 + 24);

    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
    *v9 = v0;
    v9[1] = sub_22735F77C;

    return (v13)(v0 + 80, sub_227360400, v4, v10, v5, v6);
  }

  else
  {
    **(v0 + 88) = 0;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22735F77C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_227360418;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_226FAD63C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22735F898(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_22735F8BC, 0, 0);
}

uint64_t sub_22735F8BC()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_22735F9D0;
    v5 = v0[11];

    return sub_22709500C(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22735F9D0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F618C8;
  }

  else
  {
    v3 = sub_226F62210;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22735FAE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_22735FB04, 0, 0);
}

uint64_t sub_22735FB04()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *v3;
    *(v0 + 104) = *v3;
    v5 = v4[7];
    v6 = v4[8];
    __swift_project_boxed_opaque_existential_0(v4 + 4, v5);
    v7 = *(v6 + 24);

    v13 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
    *v9 = v0;
    v9[1] = sub_22735FD0C;

    return (v13)(v0 + 80, sub_2273603E4, v4, v10, v5, v6);
  }

  else
  {
    **(v0 + 88) = 0;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_22735FD0C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_227222EC8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_226FABD80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22735FE28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_22735FE4C, 0, 0);
}

uint64_t sub_22735FE4C()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[11];

    return sub_22709500C(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22735FF60()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_22735FFCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22735F554(a1, v1);
}

unint64_t sub_227360068()
{
  result = qword_2813990D8;
  if (!qword_2813990D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BEA20, &qword_227685540);
    sub_227360268(&unk_28139B920, MEMORY[0x277D50CD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813990D8);
  }

  return result;
}

uint64_t sub_22736011C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22735F898(a1, v1);
}

unint64_t sub_2273601B4()
{
  result = qword_2813990A0;
  if (!qword_2813990A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCE88, &qword_227681D50);
    sub_227360268(&qword_28139B850, MEMORY[0x277D51638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813990A0);
  }

  return result;
}

uint64_t sub_227360268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2273602B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22735FAE4(a1, v1);
}

uint64_t sub_22736034C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22735FE28(a1, v1);
}

void sub_22736041C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = [a3 acknowledgePrivacy];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_226EB496C;
  *(v8 + 24) = v6;
  v10[4] = sub_227362E00;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_227360548;
  v10[3] = &block_descriptor_26;
  v9 = _Block_copy(v10);

  [v7 addFinishBlock_];
  _Block_release(v9);
}

void sub_227360548(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_2273605C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = [a3 rejectPrivacy];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_227362FCC;
  *(v8 + 24) = v6;
  v10[4] = sub_227362E24;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_227360548;
  v10[3] = &block_descriptor_79;
  v9 = _Block_copy(v10);

  [v7 addFinishBlock_];
  _Block_release(v9);
}

void sub_2273606EC(char a1, void *a2, void (*a3)(void, void), uint64_t a4, const char *a5)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a3;
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a1 & 1;
    _os_log_impl(&dword_226E8E000, v14, v15, a5, v17, 8u);
    v18 = v17;
    a3 = v16;
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v22[1] = a2;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D420();
  v20 = v23;
  v21 = v24;
  a3(v23, v24);
  sub_226EB4548(v20, v21);
}

uint64_t sub_2273608C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = OBJC_IVAR____TtC15SeymourServices27PrivacyPreferenceDataSource__forceNeedsNoticePrivacyAcknowledgement;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyPreferenceDataSource()
{
  result = qword_28139E498;
  if (!qword_28139E498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2273609D0()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_227360A74@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_227666C80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v29[1] = v5;
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v29 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  sub_22766A730();
  sub_22766B370();
  v20 = *(v13 + 8);
  v20(v19, v12);
  (*(v8 + 16))(v11, v29[0] + OBJC_IVAR____TtC15SeymourServices27PrivacyPreferenceDataSource__forceNeedsNoticePrivacyAcknowledgement, v7);
  sub_227669730();
  (*(v8 + 8))(v11, v7);
  if (v33 == 1)
  {
    sub_22766A730();
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226E8E000, v21, v22, "forceNeedsNoticePrivacyAcknowledgement", v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    v20(v17, v12);
  }

  else
  {
    sub_227106188();
  }

  sub_227666C70();
  v24 = v31;
  sub_227666C50();
  v25 = v30;
  (*(v2 + 16))(v30, v24, v1);
  v26 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v27 = swift_allocObject();
  (*(v2 + 32))(v27 + v26, v25, v1);
  sub_227669280();
  return (*(v2 + 8))(v24, v1);
}

void sub_227360EBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = sub_227666C80();
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v62 = *(v66 - 8);
  v5 = *(v62 + 64);
  v6 = MEMORY[0x28223BE20](v66);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v58 - v7;
  v8 = sub_227665270();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v18 = *MEMORY[0x277D51590];
  v69 = v9;
  v70 = v8;
  (*(v9 + 104))(v12, v18, v8);
  v74 = sub_227666C60();
  v75 = v19 & 1;
  v72 = 1;
  v73 = 1;
  sub_226FFD9B0();
  sub_226FFDA04();
  if (sub_227663B20())
  {
    sub_227665260();
    v20 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
    v21 = sub_22766BFD0();

    v22 = [v20 initWithPrivacyIdentifier_];

    *(swift_allocObject() + 16) = v22;
    v23 = v64;
    sub_227669270();
    v24 = v67;
    v25 = v68;
    (*(v3 + 16))(v67, a1, v68);
    v26 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v65;
    (*(v3 + 32))(v27 + v26, v24, v25);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_227362FBC;
    *(v28 + 24) = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_226F5B0EC;
    *(v29 + 24) = v28;
    v30 = v62;
    v31 = v63;
    v32 = v66;
    (*(v62 + 16))(v63, v23, v66);
    v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v34 = swift_allocObject();
    (*(v30 + 32))(v34 + v33, v31, v32);
    v35 = (v34 + ((v5 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = sub_226F32FEC;
    v35[1] = v29;

    sub_227669270();
    (*(v30 + 8))(v23, v32);
    (*(v69 + 8))(v12, v70);
  }

  else
  {
    v60 = v4;
    v61 = v5;
    v37 = v67;
    v36 = v68;
    v74 = sub_227666C60();
    v75 = v38 & 1;
    v72 = 0;
    v73 = 1;
    if (sub_227663B20())
    {
      v59 = v12;
      sub_227665260();
      v39 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
      v40 = sub_22766BFD0();

      v41 = [v39 initWithPrivacyIdentifier_];

      *(swift_allocObject() + 16) = v41;
      v42 = v64;
      sub_227669270();
      (*(v3 + 16))(v37, a1, v36);
      v43 = (*(v3 + 80) + 24) & ~*(v3 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v65;
      (*(v3 + 32))(v44 + v43, v37, v36);
      v45 = swift_allocObject();
      *(v45 + 16) = sub_227362E48;
      *(v45 + 24) = v44;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_226F5B0EC;
      *(v46 + 24) = v45;
      v48 = v62;
      v47 = v63;
      v49 = v66;
      (*(v62 + 16))(v63, v42, v66);
      v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
      v51 = (v61 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      (*(v48 + 32))(v52 + v50, v47, v49);
      v53 = (v52 + v51);
      *v53 = sub_226F32FEC;
      v53[1] = v46;

      sub_227669270();
      (*(v48 + 8))(v42, v49);
      (*(v69 + 8))(v59, v70);
    }

    else
    {
      v54 = sub_227666720();
      sub_227362CF8();
      v55 = swift_allocError();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D52598], v54);
      *(swift_allocObject() + 16) = v55;
      v57 = v55;
      sub_227669280();
      (*(v69 + 8))(v12, v70);
    }
  }
}

void sub_2273617E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_2276666A0();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v63 = *(v66 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v66);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v59 - v7;
  v8 = sub_227665270();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v18 = *MEMORY[0x277D515A0];
  v69 = v9;
  v70 = v8;
  (*(v9 + 104))(v12, v18, v8);
  v75 = sub_227666680();
  v76 = v19 & 1;
  v73 = 1;
  v74 = 1;
  sub_227033D54();
  sub_227033DA8();
  if (sub_227663B20())
  {
    sub_227665260();
    v20 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
    v21 = sub_22766BFD0();

    v22 = [v20 initWithPrivacyIdentifier_];

    *(swift_allocObject() + 16) = v22;
    sub_227669270();
    v24 = v67;
    v23 = v68;
    (*(v67 + 16))(&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v68);
    v25 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v65;
    (*(v24 + 32))(v26 + v25, &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_227362FB8;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_226F5B0EC;
    *(v28 + 24) = v27;
    v30 = v63;
    v29 = v64;
    v31 = v72;
    v32 = v66;
    (*(v63 + 16))(v64, v72, v66);
    v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v34 = swift_allocObject();
    (*(v30 + 32))(v34 + v33, v29, v32);
    v35 = (v34 + ((v5 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = sub_226F32FEC;
    v35[1] = v28;

    sub_227669270();
    (*(v30 + 8))(v31, v32);
    (*(v69 + 8))(v12, v70);
  }

  else
  {
    v61 = v4;
    v62 = v5;
    v36 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = v67;
    v38 = v68;
    v75 = sub_227666680();
    v76 = v39 & 1;
    v73 = 2;
    v74 = 1;
    if (sub_227663B20())
    {
      v60 = v12;
      sub_227665260();
      v40 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
      v41 = sub_22766BFD0();

      v42 = [v40 initWithPrivacyIdentifier_];

      *(swift_allocObject() + 16) = v42;
      v43 = v72;
      sub_227669270();
      (*(v37 + 16))(v36, a1, v38);
      v44 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = v65;
      (*(v37 + 32))(v45 + v44, v36, v38);
      v46 = swift_allocObject();
      *(v46 + 16) = sub_227362D58;
      *(v46 + 24) = v45;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_226EB4A28;
      *(v47 + 24) = v46;
      v49 = v63;
      v48 = v64;
      v50 = v66;
      (*(v63 + 16))(v64, v43, v66);
      v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
      v52 = (v62 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      (*(v49 + 32))(v53 + v51, v48, v50);
      v54 = (v53 + v52);
      *v54 = sub_226EBFB9C;
      v54[1] = v47;

      sub_227669270();
      (*(v49 + 8))(v43, v50);
      (*(v69 + 8))(v60, v70);
    }

    else
    {
      v55 = sub_227666720();
      sub_227362CF8();
      v56 = swift_allocError();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D52598], v55);
      *(swift_allocObject() + 16) = v56;
      v58 = v56;
      sub_227669280();
      (*(v69 + 8))(v12, v70);
    }
  }
}

uint64_t sub_22736210C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, double), uint64_t a5, uint64_t a6)
{
  v23[0] = a5;
  v23[1] = a6;
  v9 = a3(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - v13;
  v15 = a4(0, v12);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v23 - v18;
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_getObjectType();
  (*(v10 + 16))(v14, a2, v9);
  (v23[0])(v14);
  sub_2276699D0();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_2273622C4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEA0, &qword_227681E30);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_2272394F8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *a2 = v22;
  }

  return result;
}

uint64_t sub_2273624D8(uint64_t a1, void *a2)
{
  v4 = sub_227668A00();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766A5F0();
  v23 = *(v9 - 8);
  v24 = v9;
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0F0, &qword_227679A60);
  v14 = *(v5 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_227670CD0;
  v17 = *(v6 + 16);
  v17(v16 + v15, a1, v4);
  v18 = v26;
  sub_22755FC9C(v16, v13[1], *(v13 + 16), v13[3]);

  if (!v18)
  {
    v20 = *(v25 + 16);
    v26 = *(v25 + 24);
    swift_getObjectType();
    v17(v22, a1, v4);
    sub_22766A5E0();
    v21 = v24;
    sub_2276699D0();
    return (*(v23 + 8))(v12, v21);
  }

  return result;
}

uint64_t sub_227362748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE90, &unk_227681DF0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  sub_2276689D0();
  v14 = sub_2276689E0();
  v16 = v15;
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v41[0] = v14;
  v41[1] = v16;
  sub_226F06498();

  v17 = sub_22766C820();
  sub_226ED25F8(v41, v39);
  v18 = v40;
  if (v40)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v39, v40);
    v42 = a2;
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    a2 = v42;
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE98 &qword_227681E28))];

  sub_226EBC888(v41);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v38 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v41, 0);
  swift_endAccess();

  v31 = MEMORY[0x22AA99A00]();
  sub_22754473C(v11, a2);
  objc_autoreleasePoolPop(v31);
  swift_setDeallocating();

  v32 = *(v11 + 40);

  v33 = qword_2813B2078;
  v34 = sub_22766A100();
  (*(*(v34 - 8) + 8))(v11 + v33, v34);
  v35 = *(*v11 + 48);
  v36 = *(*v11 + 52);
  return swift_deallocClassInstance();
}

id sub_227362B4C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    *(swift_allocObject() + 16) = v2 ^ 1;

    return sub_227669280();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_227362CF8()
{
  result = qword_27D7BCEA8;
  if (!qword_27D7BCEA8)
  {
    sub_227666720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEA8);
  }

  return result;
}

uint64_t objectdestroy_35Tm(uint64_t (*a1)(void))
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

uint64_t sub_227363018(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t))
{
  v4 = sub_2273630D4();
  v5 = sub_226FD00D8();

  return a3(a1, v4, v5);
}

unint64_t sub_227363080()
{
  result = qword_27D7BCEB0;
  if (!qword_27D7BCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEB0);
  }

  return result;
}

unint64_t sub_2273630D4()
{
  result = qword_27D7BCEB8;
  if (!qword_27D7BCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEB8);
  }

  return result;
}

uint64_t sub_227363128(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_226E92AB8(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_22736960C(v10, a2, isUniquelyReferenced_nonNull_native, sub_226FEFED4, sub_226FE1688, sub_226F19770, sub_226F19770);
    v6 = sub_2276694E0();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_226E97D1C(a1, &qword_27D7B8450, &qword_227682050);
    sub_227366AD8(a2, sub_226F19770, sub_226FEFED4, v10);
    v8 = sub_2276694E0();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_226E97D1C(v10, &qword_27D7B8450, &qword_227682050);
  }

  return result;
}

uint64_t sub_2273632AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_226E92AB8(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_22736960C(v10, a2, isUniquelyReferenced_nonNull_native, sub_226FF0450, sub_226FE2794, sub_226F19770, sub_226F19770);
    v6 = sub_2276694E0();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_226E97D1C(a1, &qword_27D7BCEF0, &qword_227682048);
    sub_227366AD8(a2, sub_226F19770, sub_226FF0450, v10);
    v8 = sub_2276694E0();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_226E97D1C(v10, &qword_27D7BCEF0, &qword_227682048);
  }

  return result;
}

uint64_t sub_227363430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v4;
    sub_227369F50(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    v12 = sub_2276639B0();
    result = (*(*(v12 - 8) + 8))(a4, v12);
    *v4 = v29;
  }

  else
  {
    v14 = *v4;
    v15 = sub_226F3AA2C(a4);
    if (v16)
    {
      v17 = v15;
      v18 = *v5;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v5;
      v30 = *v5;
      if (!v19)
      {
        sub_226FF15B8();
        v20 = v30;
      }

      v21 = *(v20 + 48);
      v22 = sub_2276639B0();
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      v25 = *(v20 + 56) + 24 * v17;
      v26 = *(v25 + 8);

      sub_227367968(v17, v20);
      result = (v24)(a4, v22);
      *v5 = v20;
    }

    else
    {
      v27 = sub_2276639B0();
      v28 = *(*(v27 - 8) + 8);

      return v28(a4, v27);
    }
  }

  return result;
}

uint64_t sub_227363610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (a1)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_22736A2BC(a1, a2, a3, a4, a5 & 1, isUniquelyReferenced_nonNull_native);
    result = sub_226EB2DFC(a3, a4, a5 & 1);
    *v5 = v22;
  }

  else
  {
    v15 = *v5;
    v16 = sub_226F3AB00(a2, a3, a4, a5 & 1);
    LOBYTE(v15) = v17;
    result = sub_226EB2DFC(a3, a4, a5 & 1);
    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v23 = *v6;
      if (!v19)
      {
        sub_226FF1B80();
        v20 = v23;
      }

      sub_226EB2DFC(*(*(v20 + 48) + 32 * v16 + 8), *(*(v20 + 48) + 32 * v16 + 16), *(*(v20 + 48) + 32 * v16 + 24));
      v21 = *(*(v20 + 56) + 8 * v16);

      result = sub_227367C8C(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_22736373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_226F04970(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22736A46C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_226E97D1C(a1, &unk_27D7BC990, &qword_227670A30);
    sub_227366BD4(a2, a3, v10);

    return sub_226E97D1C(v10, &unk_27D7BC990, &qword_227670A30);
  }

  return result;
}

uint64_t sub_22736384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_22736AC04(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_226E92000(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_226FF129C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_227368064(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_227363954(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_227663CD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_226E97D1C(a1, &qword_27D7B9648, &unk_227674880);
    sub_227366C78(a2, v8);
    v14 = sub_2276624A0();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_226E97D1C(v8, &qword_27D7B9648, &unk_227674880);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22736AD8C(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2276624A0();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

void sub_227363B80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22736B130(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v9 = *v3;
    v10 = sub_226F3B1C0(a3);
    if (v11)
    {
      v12 = v10;
      v13 = *v4;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v19 = *v4;
      if (!v14)
      {
        sub_226FF3860();
        v15 = v19;
      }

      v16 = *(*(v15 + 56) + 16 * v12 + 8);

      sub_227368A28(v12, v15);

      *v4 = v15;
    }

    else
    {
    }
  }
}

uint64_t sub_227363C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22736AFB8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_226E92000(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_226FF384C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_227368878(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_227363D88(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_226E97D1C(a1, &qword_27D7BB560, &qword_227682040);
    sub_227366E18(a2, v8);

    sub_226E97D1C(v8, &qword_27D7BB560, &qword_227682040);
  }

  else
  {
    sub_22714C150(a1, v12);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22736B2B4(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

void sub_227363F34(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_2276638D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_226E97D1C(a1, &unk_27D7BB920, &unk_227672480);
    sub_227366F84(a2, v8);

    sub_226E97D1C(v8, &unk_27D7BB920, &unk_227672480);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_2273698B8(v14, a2, isUniquelyReferenced_nonNull_native, sub_226FF41D0, sub_226FEB7B4, MEMORY[0x277D50180], MEMORY[0x277D50180]);

    *v2 = v18;
  }
}

uint64_t sub_227364148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22736B864(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_226E92000(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_226FF437C();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_227368878(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_227364280(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    v13 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v6;
    sub_22736BFFC(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v6 = v25;
  }

  else
  {
    v17 = *v6;
    v18 = sub_226E92000(a2, a3);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v26 = *v7;
      if (!v21)
      {
        a6();
        v22 = v26;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      v24 = *(*(v22 + 56) + 8 * v18);

      result = sub_227368878(v18, v22);
      *v7 = v22;
    }
  }

  return result;
}

uint64_t sub_227364398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED0, &qword_227682020);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_227667DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_226E97D1C(a1, &qword_27D7BCED0, &qword_227682020);
    sub_227367198(a2, a3, MEMORY[0x277D53330], MEMORY[0x277D53330], sub_226FF5064, v10);

    return sub_226E97D1C(v10, &qword_27D7BCED0, &qword_227682020);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_226E9202C(v15, a2, a3, isUniquelyReferenced_nonNull_native, sub_226FF5064, sub_226FEDC14, MEMORY[0x277D53330], MEMORY[0x277D53330]);

    *v3 = v20;
  }

  return result;
}

void sub_22736461C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE640, &unk_227682010);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for AssetMediaStreamLoader.TaskResult();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_226E97D1C(a1, &unk_27D7BE640, &unk_227682010);
    sub_22736732C(a2, v8);

    sub_226E97D1C(v8, &unk_27D7BE640, &unk_227682010);
  }

  else
  {
    sub_226FF6688(a1, v13, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_22736C574(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v18;
  }
}

uint64_t sub_2273647D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED8, &qword_227682028);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_226E97D1C(a1, &qword_27D7BCED8, &qword_227682028);
    sub_2273674A8(a2, v8);
    v14 = sub_227668BB0();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_226E97D1C(v8, &qword_27D7BCED8, &qword_227682028);
  }

  else
  {
    sub_226FF6688(a1, v12, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22736C6E0(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_227668BB0();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t UserNotificationContext.header.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserNotificationContext.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UserNotificationContext.lockScreenHeader.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UserNotificationContext.lockScreenMessage.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t UserNotificationContext.defaultButton.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t UserNotificationContext.alternateButton.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

void __swiftcall UserNotificationContext.init(header:message:lockScreenHeader:lockScreenMessage:defaultButton:alternateButton:)(SeymourServices::UserNotificationContext *__return_ptr retstr, Swift::String header, Swift::String message, Swift::String_optional lockScreenHeader, Swift::String_optional lockScreenMessage, Swift::String defaultButton, Swift::String alternateButton)
{
  retstr->header = header;
  retstr->message = message;
  retstr->lockScreenHeader = lockScreenHeader;
  retstr->lockScreenMessage = lockScreenMessage;
  retstr->defaultButton = defaultButton;
  retstr->alternateButton = alternateButton;
}

unint64_t sub_227364B38()
{
  result = sub_22714B5A8(MEMORY[0x277D84F90]);
  qword_27D7BCEC0 = result;
  return result;
}

uint64_t UserNotificationCoordinator.UserNotificationResponse.hashValue.getter(char a1)
{
  sub_22766D370();
  MEMORY[0x22AA996B0](a1 & 1);
  return sub_22766D3F0();
}

uint64_t sub_227364BE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227364CC8();
  }

  return result;
}

void sub_227364C38()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + 24);
    if (v2)
    {
      CFRunLoopSourceInvalidate(v2);
      v3 = *(v1 + 24);
      *(v1 + 24) = 0;
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      CFUserNotificationCancel(v4);
      v5 = *(v1 + 16);
      *(v1 + 16) = 0;
    }

    else
    {
    }
  }
}

uint64_t sub_227364CC8()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEE0, &unk_227682030);
  v30 = *(v29 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - v3;
  type metadata accessor for SeymourServicesLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v27 = sub_2276621B0();
  v26 = v7;

  v8 = [v5 bundleForClass_];
  v9 = sub_2276621B0();
  v11 = v10;

  v12 = [v5 bundleForClass_];
  v13 = sub_2276621B0();
  v15 = v14;

  v16 = [v5 bundleForClass_];
  v17 = sub_2276621B0();
  v19 = v18;

  *&v32 = v27;
  *(&v32 + 1) = v26;
  *&v33 = v9;
  *(&v33 + 1) = v11;
  v34 = 0u;
  v35 = 0u;
  *&v36 = v13;
  *(&v36 + 1) = v15;
  *&v37 = v17;
  *(&v37 + 1) = v19;
  memset(&v31[2], 0, 32);
  v31[4] = v36;
  v31[5] = v37;
  v31[0] = v32;
  v31[1] = v33;
  v20 = v28;
  sub_227365CFC(v31);
  sub_22736CAEC(&v32);

  v21 = v29;
  v22 = sub_227669290();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22736CB1C;
  *(v23 + 24) = v1;

  v22(sub_226E9F768, v23);

  return (*(v30 + 8))(v20, v21);
}

uint64_t sub_2273650BC(int *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  if (a1[2])
  {
    __swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    v9 = off_283AB6110[0];
    v10 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    v9(v10, &off_283AB60F8);
    v11 = sub_226E9F7B0;
  }

  else
  {
    v12 = *a1;
    __swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    v13 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    if (v12)
    {
      (off_283AB6110[0])(v13, &off_283AB60F8);
    }

    else
    {
      (off_283AB6108[0])(v13, &off_283AB60F8);
    }

    v11 = sub_226EB4544;
  }

  v14 = sub_227669290();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v14(v11, v15);

  return (*(v5 + 8))(v8, v4);
}

void sub_2273652D4(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = sub_22766B3B0();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B3F0();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  error = 0;

  v15 = sub_22766BE90();
  v16 = CFUserNotificationCreate(0, 0.0, 0, &error, v15);

  v17 = *(a3 + 16);
  *(a3 + 16) = v16;
  v18 = v16;

  if (!v18)
  {
    goto LABEL_4;
  }

  if (error)
  {

LABEL_4:

    sub_22736CB94();
    v19 = swift_allocError();
    *v20 = 0;
    aBlock = v19;
    LOBYTE(v35) = 1;
    a1(&aBlock);

    goto LABEL_8;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v18, sub_2273657C8, 0);
  v22 = *(a3 + 24);
  *(a3 + 24) = RunLoopSource;

  if (qword_27D7B7F00 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  v23[2] = sub_226E9F728;
  v23[3] = v14;
  v23[4] = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = qword_27D7BCEC0;
  qword_27D7BCEC0 = 0x8000000000000000;
  sub_22736BC60(sub_22736CBE8, v23, v18, isUniquelyReferenced_nonNull_native);
  qword_27D7BCEC0 = v32;
  swift_endAccess();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v25 = sub_22766C950();
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = sub_226E9F728;
  v26[4] = v14;
  v38 = sub_22736CBF4;
  v39 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_226E9D72C;
  v37 = &block_descriptor_27;
  v27 = _Block_copy(&aBlock);

  sub_22766B3D0();
  v32 = MEMORY[0x277D84F90];
  sub_22736CC08(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v13, v9, v27);
  _Block_release(v27);

  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);

LABEL_8:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_2273657C8(void *a1, char a2)
{
  v4 = a1;
  sub_22736581C(a1, a2);
}

void sub_22736581C(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_27D7B7F00;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_227367104(v4);
    swift_endAccess();
    if (v5)
    {
      v6[0] = a2 & 3;
      v5(v6);
      sub_226EA9E3C(v5);
    }
  }
}

uint64_t sub_2273658E8(void *a1, void (*a2)(BOOL, void), uint64_t a3, uint64_t a4)
{
  v7 = sub_22766B3B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B3F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(*a1 != 0, 0);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v17 = sub_22766C950();
  aBlock[4] = sub_22736CC00;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_47;
  v18 = _Block_copy(aBlock);

  sub_22766B3D0();
  v20[1] = MEMORY[0x277D84F90];
  sub_22736CC08(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v16, v11, v18);
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void sub_227365BB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFUserNotificationCancel(v4);
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

void sub_227365C20(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = v2;
    v8 = CFRunLoopGetCurrent();
    CFRunLoopAddSource(v8, v3, *MEMORY[0x277CBF048]);

    v4 = v8;
  }

  else
  {
    sub_22736CB94();
    v6 = swift_allocError();
    *v7 = 1;
    a2(v6, 1);
    v4 = v6;
  }
}

void sub_227365CFC(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v28 = a1[4];
  v29 = a1[6];
  v30 = a1[5];
  v31 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v32 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227681E90;
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 32) = sub_22766C000();
  *(inited + 40) = v12;
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  if (!*MEMORY[0x277CBF198])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 80) = sub_22766C000();
  *(inited + 88) = v14;
  *(inited + 120) = v13;
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 128) = sub_22766C000();
  *(inited + 136) = v15;
  *(inited + 168) = v13;
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 176) = sub_22766C000();
  *(inited + 184) = v16;
  *(inited + 216) = v13;
  *(inited + 192) = v9;
  *(inited + 200) = v10;
  if (!*MEMORY[0x277CBF1B0])
  {
LABEL_15:
    __break(1u);
    return;
  }

  *(inited + 224) = sub_22766C000();
  *(inited + 232) = v17;
  v18 = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  *(inited + 264) = v18;
  *(inited + 272) = 0xD00000000000002CLL;
  *(inited + 280) = 0x800000022769E5E0;
  *(inited + 288) = 0;
  *(inited + 312) = v18;
  *(inited + 320) = 0xD000000000000025;
  *(inited + 328) = 0x800000022769E610;
  *(inited + 336) = 1;
  *(inited + 360) = v18;
  *(inited + 368) = 0xD000000000000022;
  *(inited + 376) = 0x800000022769E640;
  *(inited + 384) = 1;
  *(inited + 408) = v18;
  *(inited + 416) = 0xD00000000000002DLL;
  *(inited + 424) = 0x800000022769E670;
  *(inited + 432) = 0;
  *(inited + 456) = v18;
  strcpy((inited + 464), "DismissOnLock");
  *(inited + 478) = -4864;
  *(inited + 480) = 0;
  *(inited + 504) = v18;
  *(inited + 512) = 0xD00000000000001DLL;
  *(inited + 520) = 0x800000022769E6A0;
  *(inited + 552) = v18;
  *(inited + 528) = 1;
  *(inited + 560) = 0xD00000000000002ALL;
  *(inited + 568) = 0x800000022769E6C0;
  *(inited + 600) = v18;
  *(inited + 576) = 1;
  *(inited + 608) = 0xD000000000000032;
  *(inited + 616) = 0x800000022769E6F0;
  *(inited + 648) = MEMORY[0x277D83B88];
  *(inited + 624) = 2;

  v19 = sub_227149264(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  if (v30)
  {
    v36 = v13;
    *&v35 = v28;
    *(&v35 + 1) = v30;
    sub_226F04970(&v35, v34);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22736A46C(v34, 0xD000000000000027, 0x800000022769E7D0, isUniquelyReferenced_nonNull_native);
  }

  if (v31)
  {
    v36 = v13;
    *&v35 = v29;
    *(&v35 + 1) = v31;
    sub_226F04970(&v35, v34);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_22736A46C(v34, 0xD000000000000028, 0x800000022769E7A0, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9120, &qword_227681EA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_227670CD0;
  *(v22 + 32) = 0xD000000000000021;
  *(v22 + 40) = 0x800000022769E730;
  *(v22 + 88) = v13;
  *(v22 + 56) = v13;
  *(v22 + 64) = 0xD000000000000011;
  *(v22 + 72) = 0x800000022769D220;
  v23 = sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  v24 = sub_22766C800();
  v36 = v23;
  *&v35 = v24;
  sub_226F04970(&v35, v34);
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_22736A46C(v34, 0xD000000000000030, 0x800000022769E760, v26);
  v27 = swift_allocObject();
  v27[2] = v33;
  v27[3] = v19;
  v27[4] = v32;

  sub_227669270();
}

uint64_t UserNotificationCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_227366268(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_2276694E0();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = a5(a3, a4[7] + 40 * a1);
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

uint64_t sub_227366334(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_2276639B0();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

_OWORD *sub_227366408(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_226F04970(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_227366484(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_226F04970(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2273664F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_227366538(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_22736657C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  result = sub_22714C150(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

uint64_t sub_22736661C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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

uint64_t sub_22736671C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2276638D0();
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

uint64_t sub_2273667D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_227366888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AssetMediaStreamLoader.TaskResult();
  result = sub_226FF6688(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for AssetMediaStreamLoader.TaskResult);
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

uint64_t sub_227366930(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = a5(0);
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v15 = a4[7];
  v16 = a6(0);
  result = sub_226FF6688(a3, v15 + *(*(v16 - 8) + 72) * a1, a7);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

uint64_t sub_227366A28(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = a5(0);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
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

double sub_227366AD8@<D0>(uint64_t a1@<X0>, void (*a2)(int64_t, uint64_t)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = *v4;
  v10 = sub_226F39E30(a1);
  if (v11)
  {
    v12 = v10;
    v13 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v7;
    v19 = *v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = sub_2276694E0();
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v12, v17);
    a2(*(v15 + 56) + 40 * v12, a4);
    sub_227367644(v12, v15);
    *v7 = v15;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_227366BD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_226E92000(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF1414();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_226F04970((*(v12 + 56) + 32 * v9), a3);
    sub_227367EB4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_227366C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226F3B058(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF3640();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2276624A0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_227663CD0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_227368214(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_227663CD0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_227366E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226F3B1C0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF39D8();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
    v20 = *(v13 - 8);
    sub_22714C150(v12 + *(v20 + 72) * v8, a2);
    sub_227368BB4(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_227366F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226F3A030(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF41D0();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_2276638D0();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_2273690F8(v8, v11, MEMORY[0x277D50180]);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_2276638D0();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_227367104(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_226E923A0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_226FF4ADC();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_227368D94(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_227367198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_226E92000(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_227368F04(v15, v18, a4);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_22736732C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226F3B23C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF5AB8();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for AssetMediaStreamLoader.TaskResult();
    v20 = *(v13 - 8);
    sub_226FF6688(v12 + *(v20 + 72) * v8, a2, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    sub_2273690F8(v8, v11, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for AssetMediaStreamLoader.TaskResult();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2273674A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226F3B28C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF5E68();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_227668BB0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
    v22 = *(v15 - 8);
    sub_226FF6688(v14 + *(v22 + 72) * v8, a2, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
    sub_2273692C8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_227367644(int64_t a1, uint64_t a2)
{
  v45 = sub_2276694E0();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_22766CCA0();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_22736CC08(&qword_2813A54D0, MEMORY[0x277D53DA0]);
      v26 = sub_22766BF50();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_227367968(int64_t a1, uint64_t a2)
{
  v44 = sub_2276639B0();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = sub_22766CCA0();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v41 = (v13 + 1) & v12;
    v42 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    v40 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v42(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_22736CC08(&qword_28139BCA8, MEMORY[0x277D501C8]);
      v26 = sub_22766BF50();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 24 * a1;
          v33 = (v31 + 24 * v11);
          if (a1 != v11 || v32 >= v33 + 24)
          {
            v34 = *v33;
            *(v32 + 16) = *(v33 + 2);
            *v32 = v34;
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
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_227367C8C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    v31 = v4;
    do
    {
      v9 = 32 * v6;
      v10 = *(v2 + 40);
      v11 = v2;
      v12 = *(v2 + 48) + 32 * v6;
      v13 = v7;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v32 = *v12;
      v17 = v8;
      sub_22766D370();
      sub_226EB396C(v14, v15, v16);
      sub_226F48338();
      sub_22766BF60();
      v18 = sub_22766D3F0();
      v19 = v14;
      v7 = v13;
      result = sub_226EB2DFC(v19, v15, v16);
      v8 = v17;
      v20 = v18 & v13;
      if (v3 >= v17)
      {
        if (v20 < v17)
        {
          v4 = v31;
          v2 = v11;
        }

        else
        {
          v4 = v31;
          v2 = v11;
          if (v3 >= v20)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v31;
        v2 = v11;
        if (v20 >= v8 || v3 >= v20)
        {
LABEL_11:
          v21 = *(v2 + 48);
          v22 = (v21 + 32 * v3);
          v23 = (v21 + v9);
          if (32 * v3 != v9 || v22 >= v23 + 2)
          {
            v24 = v23[1];
            *v22 = *v23;
            v22[1] = v24;
          }

          v25 = *(v2 + 56);
          v26 = (v25 + 8 * v3);
          v27 = (v25 + 8 * v6);
          if (v3 != v6 || v26 >= v27 + 1)
          {
            *v26 = *v27;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v13;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_227367EB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22766D370();

      sub_22766C100();
      v14 = sub_22766D3F0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_227368064(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22766D370();

      sub_22766C100();
      v13 = sub_22766D3F0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

unint64_t sub_227368214(int64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
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
    v14 = sub_22766CCA0();
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
      sub_22736CC08(&qword_28139BDE0, MEMORY[0x277CC9260]);
      v24 = sub_22766BF50();
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
          v29 = *(*(sub_227663CD0() - 8) + 72);
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

unint64_t sub_227368558(int64_t a1, uint64_t a2)
{
  v43 = sub_2276624A0();
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
    v13 = sub_22766CCA0();
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
      sub_22736CC08(&qword_28139BDE0, MEMORY[0x277CC9260]);
      v26 = sub_22766BF50();
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

uint64_t sub_227368878(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22766D370();

      sub_22766C100();
      v13 = sub_22766D3F0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

void sub_227368A28(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22766CB20();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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
}

void sub_227368BB4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22766CB20();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

uint64_t sub_227368D94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22766D360();
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
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
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

unint64_t sub_227368F04(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22766CCA0() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_22766D370();

      sub_22766C100();
      v15 = sub_22766D3F0();

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