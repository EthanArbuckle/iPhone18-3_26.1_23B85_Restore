void sub_226FD61BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v272 = a2;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v238 = *(v240 - 8);
  v3 = *(v238 + 64);
  v4 = MEMORY[0x28223BE20](v240);
  v237 = &v228 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v228 - v6;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v242 = *(v243 - 8);
  v8 = *(v242 + 64);
  v9 = MEMORY[0x28223BE20](v243);
  v241 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = v10;
  MEMORY[0x28223BE20](v9);
  v256 = &v228 - v11;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v246 = *(v247 - 8);
  v12 = *(v246 + 64);
  v13 = MEMORY[0x28223BE20](v247);
  v245 = &v228 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = v14;
  MEMORY[0x28223BE20](v13);
  v257 = &v228 - v15;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v251 = *(v252 - 8);
  v16 = *(v251 + 64);
  v17 = MEMORY[0x28223BE20](v252);
  v249 = &v228 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = v18;
  MEMORY[0x28223BE20](v17);
  v250 = &v228 - v19;
  v270 = sub_22766B390();
  v271 = *(v270 - 1);
  v20 = *(v271 + 64);
  v21 = MEMORY[0x28223BE20](v270);
  v23 = &v228 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v258 = &v228 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v259 = &v228 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v253 = &v228 - v29;
  MEMORY[0x28223BE20](v28);
  v234 = &v228 - v30;
  v254 = sub_227664AE0();
  v31 = *(*(v254 - 8) + 64);
  MEMORY[0x28223BE20](v254);
  v255 = &v228 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_2276668A0();
  v262 = *(v263 - 8);
  v33 = *(v262 + 64);
  v34 = MEMORY[0x28223BE20](v263);
  v235 = &v228 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v261 = &v228 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v228 - v38;
  v266 = sub_2276639B0();
  v265 = *(v266 - 8);
  v40 = *(v265 + 64);
  v41 = MEMORY[0x28223BE20](v266);
  v233 = &v228 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v264 = &v228 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = &v228 - v46;
  v274 = sub_2276624A0();
  v273 = *(v274 - 8);
  v48 = *(v273 + 64);
  v49 = MEMORY[0x28223BE20](v274);
  v50 = &v228 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v232 = &v228 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v260 = &v228 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v231 = &v228 - v56;
  MEMORY[0x28223BE20](v55);
  v268 = &v228 - v57;
  v269 = a1;
  if ([a1 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v58 = v278;
    v59 = __swift_project_boxed_opaque_existential_0(&v277, v278);
    v276 = v58;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v275);
    (*(*(v58 - 8) + 16))(boxed_opaque_existential_0, v59, v58);
    sub_226F04970(&v275, &v279);
    __swift_destroy_boxed_opaque_existential_0(&v277);
  }

  else
  {
    v279 = 0u;
    v280 = 0u;
  }

  v281 = v279;
  v282 = v280;
  v61 = *(&v280 + 1);
  if (!*(&v280 + 1))
  {
    sub_226E97D1C(&v281, &unk_27D7B9650, &unk_227674890);
    v283 = 0u;
    v284 = 0u;
    goto LABEL_12;
  }

  v62 = __swift_project_boxed_opaque_existential_0(&v281, *(&v282 + 1));
  *(&v284 + 1) = v61;
  v63 = __swift_allocate_boxed_opaque_existential_0(&v283);
  (*(*(v61 - 8) + 16))(v63, v62, v61);
  __swift_destroy_boxed_opaque_existential_0(&v281);
  if (!*(&v284 + 1))
  {
LABEL_12:
    sub_226E97D1C(&v283, &unk_27D7BC990, &qword_227670A30);
    (*(v273 + 56))(v47, 1, 1, v274);
    goto LABEL_13;
  }

  v64 = v274;
  v65 = swift_dynamicCast();
  v66 = v273;
  (*(v273 + 56))(v47, v65 ^ 1u, 1, v64);
  if ((*(v66 + 48))(v47, 1, v64) == 1)
  {
LABEL_13:
    sub_226E97D1C(v47, &unk_27D7BB570, &unk_227670FC0);
    sub_22766A690();
    v97 = v269;
    v98 = sub_22766B380();
    v99 = sub_22766C890();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138543362;
      *(v100 + 4) = v97;
      *v101 = v97;
      v102 = v97;
      _os_log_impl(&dword_226E8E000, v98, v99, "[Key Loader] Key request doesn't have required identifer %{public}@", v100, 0xCu);
      sub_226E97D1C(v101, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v101, -1, -1);
      MEMORY[0x22AA9A450](v100, -1, -1);
    }

    (*(v271 + 8))(v23, v270);
    v103 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v104 = swift_allocError();
    (*(*(v103 - 8) + 104))(v105, *MEMORY[0x277D4FD40], v103);
    *(swift_allocObject() + 16) = v104;
    sub_227669280();
    return;
  }

  v228 = v7;
  v67 = v66 + 32;
  v68 = *(v66 + 32);
  v69 = v268;
  v230 = v67;
  v229 = v68;
  v70 = (v68)(v268, v47, v64);
  v71 = v267;
  v72 = *&v267[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_lock];
  MEMORY[0x28223BE20](v70);
  *(&v228 - 2) = v71;
  *(&v228 - 1) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  sub_2276696A0();
  if (!v283)
  {
    v106 = v258;
    sub_22766A690();
    v107 = sub_22766B380();
    v108 = sub_22766C8B0();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_226E8E000, v107, v108, "[Key Loader] processKeyRequest failed because load completion doesn't exist.", v109, 2u);
      MEMORY[0x22AA9A450](v109, -1, -1);
    }

    (*(v271 + 8))(v106, v270);
    v110 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v111 = swift_allocError();
    (*(*(v110 - 8) + 104))(v112, *MEMORY[0x277D4FD10], v110);
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_227669280();
    (*(v273 + 8))(v268, v274);
    goto LABEL_25;
  }

  v73 = sub_226EA9E3C(v283);
  MEMORY[0x28223BE20](v73);
  *(&v228 - 2) = v71;
  *(&v228 - 1) = v69;
  sub_2276696A0();
  v74 = v265;
  v75 = v266;
  if ((*(v265 + 48))(v39, 1, v266) == 1)
  {
    sub_226E97D1C(v39, &qword_27D7B9680, &unk_227671520);
    v76 = v259;
    sub_22766A690();
    v77 = v273;
    v78 = v274;
    (*(v273 + 16))(v50, v69, v274);
    v79 = v269;
    v80 = sub_22766B380();
    v81 = sub_22766C890();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v269 = swift_slowAlloc();
      *&v283 = v269;
      *v82 = 141558530;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2080;
      v83 = sub_227662390();
      v85 = v84;
      v86 = v78;
      v87 = *(v77 + 8);
      v88 = v50;
      v89 = v86;
      v87(v88);
      v90 = sub_226E97AE8(v83, v85, &v283);

      *(v82 + 14) = v90;
      *(v82 + 22) = 2114;
      *(v82 + 24) = v79;
      v91 = v267;
      *v267 = v79;
      v92 = v79;
      v93 = v87;
      _os_log_impl(&dword_226E8E000, v80, v81, "[Key Loader] %{mask.hash}s Matching request not found for key request %{public}@", v82, 0x20u);
      sub_226E97D1C(v91, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v91, -1, -1);
      v94 = v269;
      __swift_destroy_boxed_opaque_existential_0(v269);
      MEMORY[0x22AA9A450](v94, -1, -1);
      v95 = v82;
      v96 = v268;
      MEMORY[0x22AA9A450](v95, -1, -1);

      (*(v271 + 8))(v259, v270);
      v78 = v89;
    }

    else
    {
      v96 = v69;

      v93 = *(v77 + 8);
      v93(v50, v78);
      (*(v271 + 8))(v76, v270);
    }

    v134 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v111 = swift_allocError();
    (*(*(v134 - 8) + 104))(v135, *MEMORY[0x277D4FD08], v134);
    *(swift_allocObject() + 16) = v111;
    v136 = v111;
    sub_227669280();
    v93(v96, v78);
LABEL_25:

    return;
  }

  v114 = *(v74 + 32);
  v115 = v74;
  v116 = v264;
  v114(v264, v39, v75);
  v117 = v255;
  sub_227663970();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v119 = v274;
  if (EnumCaseMultiPayload == 1)
  {
    v120 = *(v262 + 32);
    v254 = v262 + 32;
    v253 = v120;
    (v120)(v261, v117, v263);
    v121 = v234;
    sub_22766A690();
    v122 = *(v273 + 16);
    v123 = v231;
    v259 = (v273 + 16);
    v258 = v122;
    (v122)(v231, v268, v119);
    v124 = sub_22766B380();
    v125 = sub_22766C8B0();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *&v283 = v127;
      *v126 = 141558274;
      *(v126 + 4) = 1752392040;
      *(v126 + 12) = 2080;
      v128 = sub_227662390();
      v129 = v123;
      v131 = v130;
      v132 = *(v273 + 8);
      v255 = ((v273 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v132(v129, v119);
      v133 = sub_226E97AE8(v128, v131, &v283);

      *(v126 + 14) = v133;
      _os_log_impl(&dword_226E8E000, v124, v125, "[Key Loader] Begin handshake for key URL: %{mask.hash}s", v126, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x22AA9A450](v127, -1, -1);
      MEMORY[0x22AA9A450](v126, -1, -1);
    }

    else
    {

      v159 = *(v273 + 8);
      v255 = ((v273 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v159(v123, v119);
    }

    (*(v271 + 8))(v121, v270);
    v160 = v267;
    v161 = v228;
    v162 = v261;
    v163 = sub_227666860();
    sub_226FD12CC(v269, v163, v164, v161);

    v165 = v262;
    v166 = v235;
    v167 = v162;
    v168 = v263;
    (*(v262 + 16))(v235, v167, v263);
    v169 = (*(v165 + 80) + 24) & ~*(v165 + 80);
    v170 = swift_allocObject();
    *(v170 + 16) = v160;
    (v253)(v170 + v169, v166, v168);
    v171 = v238;
    v172 = v237;
    v173 = v240;
    (*(v238 + 16))(v237, v161, v240);
    v174 = (*(v171 + 80) + 16) & ~*(v171 + 80);
    v175 = (v236 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
    v176 = swift_allocObject();
    (*(v171 + 32))(v176 + v174, v172, v173);
    v177 = (v176 + v175);
    *v177 = sub_226FDC6E8;
    v177[1] = v170;
    sub_2276631F0();
    v178 = v160;
    v270 = v178;
    v179 = v256;
    sub_227669270();
    (*(v171 + 8))(v161, v173);
    v180 = v260;
    v181 = v274;
    (v258)(v260, v268, v274);
    v182 = *(v273 + 80);
    v271 = (v182 + 32) & ~v182;
    v183 = swift_allocObject();
    *(v183 + 16) = v178;
    v184 = v269;
    *(v183 + 24) = v269;
    v229(v183 + ((v182 + 32) & ~v182), v180, v181);
    v185 = v242;
    v186 = v241;
    v187 = v243;
    (*(v242 + 16))(v241, v179, v243);
    v188 = (*(v185 + 80) + 16) & ~*(v185 + 80);
    v189 = (v239 + v188 + 7) & 0xFFFFFFFFFFFFFFF8;
    v190 = swift_allocObject();
    (*(v185 + 32))(v190 + v188, v186, v187);
    v191 = (v190 + v189);
    *v191 = sub_226FDC794;
    v191[1] = v183;
    type metadata accessor for AssetLoaderResponse();
    v192 = v270;
    v270 = v184;
    v193 = v257;
    sub_227669270();
    (*(v185 + 8))(v256, v187);
    v194 = v260;
    v195 = v274;
    (v258)(v260, v268, v274);
    v196 = swift_allocObject();
    *(v196 + 16) = v192;
    v229(v196 + ((v182 + 24) & ~v182), v194, v195);
    v197 = swift_allocObject();
    *(v197 + 16) = sub_226FDC90C;
    *(v197 + 24) = v196;
    v198 = v246;
    v199 = v245;
    v200 = v247;
    (*(v246 + 16))(v245, v193, v247);
    v201 = (*(v198 + 80) + 16) & ~*(v198 + 80);
    v202 = (v244 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
    v203 = swift_allocObject();
    (*(v198 + 32))(v203 + v201, v199, v200);
    v204 = (v203 + v202);
    *v204 = sub_226FDC98C;
    v204[1] = v197;
    v205 = v192;
    v206 = v250;
    sub_227669270();
    (*(v198 + 8))(v257, v200);
    v207 = v260;
    v208 = v274;
    (v258)(v260, v268, v274);
    v209 = v271;
    v210 = swift_allocObject();
    v211 = v270;
    *(v210 + 16) = v270;
    *(v210 + 24) = v205;
    v229(v210 + v209, v207, v208);
    v212 = swift_allocObject();
    *(v212 + 16) = sub_226FDCA88;
    *(v212 + 24) = v210;
    v213 = v251;
    v214 = v249;
    v215 = v252;
    (*(v251 + 16))(v249, v206, v252);
    v216 = (*(v213 + 80) + 16) & ~*(v213 + 80);
    v217 = (v248 + v216 + 7) & 0xFFFFFFFFFFFFFFF8;
    v218 = swift_allocObject();
    (*(v213 + 32))(v218 + v216, v214, v215);
    v219 = (v218 + v217);
    *v219 = sub_226F5AAF8;
    v219[1] = v212;
    v220 = v205;
    v221 = v211;
    sub_227669270();
    (*(v213 + 8))(v206, v215);
    (*(v262 + 8))(v261, v263);
    (*(v265 + 8))(v264, v266);
    (*(v273 + 8))(v268, v274);
  }

  else
  {
    sub_226FDC688(v117, MEMORY[0x277D50D68]);
    v137 = v253;
    sub_22766A690();
    v138 = v273;
    v139 = v232;
    v140 = v268;
    (*(v273 + 16))(v232, v268, v119);
    v141 = v233;
    (*(v115 + 16))(v233, v116, v75);
    v142 = sub_22766B380();
    v143 = sub_22766C890();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      *&v283 = v267;
      *v144 = 141558786;
      *(v144 + 4) = 1752392040;
      *(v144 + 12) = 2080;
      LODWORD(v263) = v143;
      v145 = sub_227662390();
      v147 = v146;
      v148 = v139;
      v149 = *(v138 + 8);
      v149(v148, v274);
      v150 = sub_226E97AE8(v145, v147, &v283);

      *(v144 + 14) = v150;
      *(v144 + 22) = 2160;
      *(v144 + 24) = 1752392040;
      v119 = v274;
      *(v144 + 32) = 2080;
      v151 = sub_227663920();
      v153 = v152;
      v154 = v141;
      v155 = v266;
      v269 = *(v115 + 8);
      (v269)(v154, v266);
      v156 = sub_226E97AE8(v151, v153, &v283);

      *(v144 + 34) = v156;
      _os_log_impl(&dword_226E8E000, v142, v263, "[Key Loader] %{mask.hash}s Asset request %{mask.hash}s is not a key request", v144, 0x2Au);
      v157 = v267;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v157, -1, -1);
      v158 = v144;
      v140 = v268;
      MEMORY[0x22AA9A450](v158, -1, -1);

      (*(v271 + 8))(v253, v270);
    }

    else
    {

      v222 = v141;
      v155 = v266;
      v269 = *(v115 + 8);
      (v269)(v222, v266);
      v223 = v139;
      v149 = *(v138 + 8);
      v149(v223, v119);
      (*(v271 + 8))(v137, v270);
    }

    v224 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v225 = swift_allocError();
    (*(*(v224 - 8) + 104))(v226, *MEMORY[0x277D4FD08], v224);
    *(swift_allocObject() + 16) = v225;
    v227 = v225;
    sub_227669280();
    (v269)(v264, v155);
    v149(v140, v119);
  }
}

uint64_t sub_226FD81E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyProvider), *(a2 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyProvider + 24));
  v6 = sub_227666830();
  v8 = v7;
  v9 = sub_227666870();
  v10 = *v5;
  sub_22734ED60(a1, v6, v8, v9, a3);
}

uint64_t sub_226FD8270@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a5;
  v27 = a2;
  v28 = a1;
  v7 = sub_2276631F0();
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a2[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_persistenceStore + 32];
  v29 = *&a2[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_persistenceStore + 24];
  v31 = v14;
  v30 = __swift_project_boxed_opaque_existential_0(&a2[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_persistenceStore], v29);
  (*(v11 + 16))(v13, a4, v10);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v7);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v8 + 80) + v16 + 8) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v15, v13, v10);
  v19 = v26;
  v20 = v27;
  *(v18 + v16) = v27;
  (*(v8 + 32))(v18 + v17, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v21 = v32;
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v22 = type metadata accessor for AssetLoaderResponse();
  v23 = v20;
  v24 = v21;
  sub_226ECF5D8(sub_226FDCB08, v18, v29, v22, v31, v33);
}

uint64_t sub_226FD84F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_226FDCC24(a1, &v10 - v7, type metadata accessor for AssetLoaderResponse);
  swift_storeEnumTagMultiPayload();
  sub_226FD85F4(a3, v8);
  return sub_226E97D1C(v8, &qword_27D7B9628, &unk_227674860);
}

uint64_t sub_226FD85F4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v48 = sub_2276624A0();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v48);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v41 - v10;
  v12 = sub_22766B390();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v41 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_lock);
  v45 = v2;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  sub_2276696A0();
  v20 = v47[0];
  if (v47[0])
  {
    v41[2] = v3;
    v21 = v47[1];
    sub_22766A690();
    (*(v5 + 16))(v11, a1, v48);
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      v47[0] = v41[0];
      *v24 = 141558274;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2080;
      v25 = sub_227662390();
      v41[1] = v21;
      v27 = v26;
      (*(v5 + 8))(v11, v48);
      v28 = sub_226E97AE8(v25, v27, v47);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_226E8E000, v22, v23, "[Key Loader] Completing request for URL: %{mask.hash}s", v24, 0x16u);
      v29 = v41[0];
      __swift_destroy_boxed_opaque_existential_0(v41[0]);
      MEMORY[0x22AA9A450](v29, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v48);
    }

    (*(v43 + 8))(v18, v44);
    v20(v42);
    return sub_226EA9E3C(v20);
  }

  else
  {
    sub_22766A690();
    (*(v5 + 16))(v9, a1, v48);
    v30 = sub_22766B380();
    v31 = sub_22766C890();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47[0] = v33;
      *v32 = 141558274;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      v34 = sub_227662390();
      v36 = v35;
      (*(v5 + 8))(v9, v48);
      v37 = sub_226E97AE8(v34, v36, v47);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_226E8E000, v30, v31, "[Key Loader] Expected result completion for key URL %{mask.hash}s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v32, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v48);
    }

    (*(v43 + 8))(v16, v44);
    v39 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D4FD08], v39);
    return swift_willThrow();
  }
}

uint64_t sub_226FD8B60(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - v9);
  v11 = sub_2276622B0();
  [a2 processContentKeyResponseError_];

  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  v12 = a1;
  sub_226FD85F4(a4, v10);
  return sub_226E97D1C(v10, &qword_27D7B9628, &unk_227674860);
}

uint64_t sub_226FD8C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t)@<X8>)
{
  v49 = a3;
  v54 = a2;
  v52 = sub_2276624A0();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9640, &qword_227674878);
  v48 = *(v53 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x28223BE20](v53);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9638, &qword_227674870);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v47 = &v46 - v15;
  v16 = OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_tasks;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;
  v50 = (v4 + 8);
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_8:
      v25 = __clz(__rbit64(v20)) | (v24 << 6);
      v26 = *(v17 + 48);
      v27 = sub_2276639B0();
      (*(*(v27 - 8) + 16))(v12, v26 + *(*(v27 - 8) + 72) * v25, v27);
      v28 = (*(v17 + 56) + 24 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = &v12[*(v53 + 48)];
      *v32 = v29;
      *(v32 + 1) = v30;
      *(v32 + 2) = v31;
      sub_226FDAAF8(v12, v10);

      v33 = v31;
      v34 = v51;
      sub_2276639A0();
      LOBYTE(v30) = sub_227662420();
      (*v50)(v34, v52);
      if (v30)
      {
        break;
      }

      v20 &= v20 - 1;
      result = sub_226E97D1C(v10, &qword_27D7B9640, &qword_227674878);
      v23 = v24;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v36 = v47;
    sub_226FDAAF8(v10, v47);
    v35 = v48;
    v37 = *(v48 + 56);
    v38 = v36;
    v39 = 0;
LABEL_12:
    v40 = v53;
    v37(v38, v39, 1, v53);
    v41 = v49;

    if ((*(v35 + 48))(v36, 1, v40) == 1)
    {
      sub_226E97D1C(v36, &qword_27D7B9638, &qword_227674870);
      v42 = 0;
      result = 0;
    }

    else
    {
      v43 = v36 + *(v40 + 48);
      v44 = *(v43 + 16);
      v53 = *v43;

      v45 = sub_2276639B0();
      (*(*(v45 - 8) + 8))(v36, v45);
      result = swift_allocObject();
      *(result + 16) = v53;
      v42 = sub_226FDD0E4;
    }

    *v41 = v42;
    v41[1] = result;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        v36 = v47;
        v35 = v48;
        v37 = *(v48 + 56);
        v38 = v47;
        v39 = 1;
        goto LABEL_12;
      }

      v20 = *(v17 + 64 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226FD912C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v48 = a3;
  v53 = sub_2276624A0();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9640, &qword_227674878);
  v50 = *(v55 - 8);
  v7 = *(v50 + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9638, &qword_227674870);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v47 - v15;
  v16 = OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_tasks;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;
  v51 = (v4 + 8);
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_8:
      v25 = __clz(__rbit64(v20)) | (v24 << 6);
      v26 = *(v17 + 48);
      v27 = sub_2276639B0();
      (*(*(v27 - 8) + 16))(v12, v26 + *(*(v27 - 8) + 72) * v25, v27);
      v28 = (*(v17 + 56) + 24 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = &v12[*(v55 + 48)];
      *v32 = v29;
      *(v32 + 1) = v30;
      *(v32 + 2) = v31;
      sub_226FDAAF8(v12, v10);

      v33 = v31;
      v34 = v52;
      sub_2276639A0();
      LOBYTE(v30) = sub_227662420();
      (*v51)(v34, v53);
      if (v30)
      {
        break;
      }

      v20 &= v20 - 1;
      result = sub_226E97D1C(v10, &qword_27D7B9640, &qword_227674878);
      v23 = v24;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v36 = v49;
    sub_226FDAAF8(v10, v49);
    v35 = v50;
    v37 = *(v50 + 56);
    v38 = v36;
    v39 = 0;
LABEL_12:
    v40 = v55;
    v37(v38, v39, 1, v55);

    if ((*(v35 + 48))(v36, 1, v40) == 1)
    {
      sub_226E97D1C(v36, &qword_27D7B9638, &qword_227674870);
      v41 = sub_2276639B0();
      return (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
    }

    else
    {
      v42 = v36 + *(v40 + 48);
      v43 = *(v42 + 8);

      v44 = sub_2276639B0();
      v45 = *(v44 - 8);
      v46 = v48;
      (*(v45 + 32))(v48, v36, v44);
      return (*(v45 + 56))(v46, 0, 1, v44);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        v36 = v49;
        v35 = v50;
        v37 = *(v50 + 56);
        v38 = v49;
        v39 = 1;
        goto LABEL_12;
      }

      v20 = *(v17 + 64 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226FD9600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v66 = a2;
  v59 = a3;
  v64 = sub_2276624A0();
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9638, &qword_227674870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = v55 - v9;
  *&v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9640, &qword_227674878);
  v60 = *(v65 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v65);
  v57 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v55 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v55 - v17;
  MEMORY[0x28223BE20](v16);
  v56 = v55 - v19;
  v20 = OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_tasks;
  swift_beginAccess();
  v58 = a1;
  v55[1] = v20;
  v21 = *(a1 + v20);
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  v62 = (v4 + 8);
  result = swift_bridgeObjectRetain_n();
  v27 = 0;
  if (v24)
  {
    while (1)
    {
      v28 = v27;
LABEL_8:
      v29 = __clz(__rbit64(v24)) | (v28 << 6);
      v30 = *(v21 + 48);
      v31 = sub_2276639B0();
      (*(*(v31 - 8) + 16))(v18, v30 + *(*(v31 - 8) + 72) * v29, v31);
      v32 = (*(v21 + 56) + 24 * v29);
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[2];
      v36 = &v18[*(v65 + 48)];
      *v36 = v33;
      *(v36 + 1) = v34;
      *(v36 + 2) = v35;
      sub_226FDAAF8(v18, v15);

      v37 = v35;
      v38 = v63;
      sub_2276639A0();
      LOBYTE(v34) = sub_227662420();
      (*v62)(v38, v64);
      if (v34)
      {
        break;
      }

      v24 &= v24 - 1;
      result = sub_226E97D1C(v15, &qword_27D7B9640, &qword_227674878);
      v27 = v28;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    v39 = v61;
    sub_226FDAAF8(v15, v61);
    v40 = v60;
    v41 = *(v60 + 56);
    v42 = v39;
    v43 = 0;
LABEL_12:
    v44 = v65;
    v41(v42, v43, 1, v65);

    if ((*(v40 + 48))(v39, 1, v44) == 1)
    {
      result = sub_226E97D1C(v39, &qword_27D7B9638, &qword_227674870);
      v45 = v59;
      *v59 = 0;
      v45[1] = 0;
    }

    else
    {
      v46 = v56;
      sub_226FDAAF8(v39, v56);
      v47 = v57;
      sub_226E93170(v46, v57, &qword_27D7B9640, &qword_227674878);
      v48 = v47 + *(v44 + 48);
      v49 = *(v48 + 8);

      swift_beginAccess();
      sub_227363430(0, 0, 0, v47);
      swift_endAccess();
      sub_226FDAAF8(v46, v47);
      v50 = v47 + *(v44 + 48);
      v51 = *(v50 + 16);
      v65 = *v50;

      v52 = swift_allocObject();
      *(v52 + 16) = v65;
      v53 = v59;
      *v59 = sub_226FDAB68;
      v53[1] = v52;
      v54 = sub_2276639B0();
      return (*(*(v54 - 8) + 8))(v47, v54);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v25)
      {

        v40 = v60;
        v39 = v61;
        v41 = *(v60 + 56);
        v42 = v61;
        v43 = 1;
        goto LABEL_12;
      }

      v24 = *(v21 + 64 + 8 * v28);
      ++v27;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226FD9B70(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = (v45 - v4);
  v49 = sub_2276624A0();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v49);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  v12 = sub_22766B390();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v45 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_lock);
  v50 = v1;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  sub_2276696A0();
  v20 = v52[0];
  if (v52[0])
  {
    v21 = v52[1];
    sub_22766A690();
    (*(v5 + 16))(v11, a1, v49);
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[1] = v21;
      v26 = v25;
      v52[0] = v25;
      *v24 = 141558274;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2080;
      v27 = sub_227662390();
      v45[0] = v12;
      v29 = v28;
      (*(v5 + 8))(v11, v49);
      v30 = sub_226E97AE8(v27, v29, v52);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_226E8E000, v22, v23, "[Key Loader] Cancelling request for URL: %{mask.hash}s", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);

      (*(v48 + 8))(v18, v45[0]);
    }

    else
    {

      (*(v5 + 8))(v11, v49);
      (*(v48 + 8))(v18, v12);
    }

    v41 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v42 = swift_allocError();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D4FD10], v41);
    v44 = v47;
    *v47 = v42;
    swift_storeEnumTagMultiPayload();
    v20(v44);
    sub_226EA9E3C(v20);
    return sub_226E97D1C(v44, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    sub_22766A690();
    (*(v5 + 16))(v9, a1, v49);
    v31 = sub_22766B380();
    v32 = sub_22766C890();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v12;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52[0] = v35;
      *v34 = 141558274;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2080;
      v36 = sub_227662390();
      v38 = v37;
      (*(v5 + 8))(v9, v49);
      v39 = sub_226E97AE8(v36, v38, v52);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_226E8E000, v31, v32, "[Key Loader] No load to cancel for key URL %{mask.hash}s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);

      return (*(v48 + 8))(v16, v33);
    }

    else
    {

      (*(v5 + 8))(v9, v49);
      return (*(v48 + 8))(v16, v12);
    }
  }
}

uint64_t sub_226FDA1A0()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  sub_22766A690();
  sub_22766B370();
  (*(v7 + 8))(v10, v6);
  sub_2276639A0();
  sub_226FD9B70(v5);
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_226FDA364@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227665490();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_226FDA3D0()
{
  v0 = sub_227663190();
  sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D4FCD8], v0);
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for AssetLoaderResponse();

  return sub_227669280();
}

uint64_t sub_226FDA558(uint64_t a1, void *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (*(a1 + 8) == 1)
  {
    v12 = *a1;
    sub_22766A690();
    v13 = a2;
    sub_226F04AAC(v12, 1);
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();

    sub_226EB4548(v12, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v4;
      v18 = v17;
      v36 = swift_slowAlloc();
      v40 = v36;
      *v16 = 138543618;
      *(v16 + 4) = v13;
      *v18 = v13;
      *(v16 + 12) = 2082;
      swift_getErrorValue();
      v19 = v38;
      v20 = v39;
      v21 = v13;
      v22 = MEMORY[0x22AA995D0](v19, v20);
      v24 = sub_226E97AE8(v22, v23, &v40);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_226E8E000, v14, v15, "[Key Loader] Ended load for key %{public}@ with error %{public}s", v16, 0x16u);
      sub_226E97D1C(v18, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v18, -1, -1);
      v25 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);

      return (*(v5 + 8))(v11, v37);
    }

    v33 = *(v5 + 8);
    v34 = v11;
  }

  else
  {
    sub_22766A690();
    v27 = a2;
    v28 = sub_22766B380();
    v29 = sub_22766C8B0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_226E8E000, v28, v29, "[Key Loader] Ended load for key %{public}@ successfully", v30, 0xCu);
      sub_226E97D1C(v31, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    v33 = *(v5 + 8);
    v34 = v9;
  }

  return v33(v34, v4);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_226FDAA44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_226FDAA8C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_226FDAAF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9640, &qword_227674878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FDAB70(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_226FD398C(a1, a2, v6, v7);
}

unint64_t sub_226FDAC14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_2274E844C(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_226F04970(v46, v44);
  v14 = *a5;
  result = sub_226E92000(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_226FE4910(v20, a4 & 1);
    v22 = *a5;
    result = sub_226E92000(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22766D220();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_226FF1414();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_226F04970(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_226F04970(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_2274E844C(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_226F04970(v46, v44);
        v33 = *a5;
        result = sub_226E92000(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_226FE4910(v37, 1);
          v38 = *a5;
          result = sub_226E92000(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_226F04970(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_226F04970(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_2274E844C(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_226EBB21C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_226FDAF24(void *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v2 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = (&v62 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v62 - v6;
  v71 = sub_2276624A0();
  v7 = *(v71 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  sub_22766A690();
  v18 = a1;
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_226E8E000, v19, v20, "[Key Loader] initial content key request %{public}@. Requesting persistable content key.", v21, 0xCu);
    sub_226E97D1C(v22, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v22, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  v24 = *(v11 + 8);
  v24(v17, v10);
  *&v82 = 0;
  if (![v18 respondByRequestingPersistableContentKeyRequestAndReturnError_])
  {
    v64 = v10;
    v65 = v7;
    v69 = v82;
    v26 = v82;
    v27 = sub_2276622C0();

    swift_willThrow();
    sub_22766A690();
    v28 = v18;
    v29 = v27;
    v30 = sub_22766B380();
    v31 = sub_22766C890();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v69 = v27;
      v33 = v32;
      v34 = swift_slowAlloc();
      v62 = v34;
      v63 = swift_slowAlloc();
      *&v82 = v63;
      *v33 = 138543618;
      *(v33 + 4) = v28;
      *v34 = v28;
      *(v33 + 12) = 2082;
      swift_getErrorValue();
      v35 = v72;
      v36 = v73;
      v37 = v28;
      v38 = MEMORY[0x22AA995D0](v35, v36);
      v40 = sub_226E97AE8(v38, v39, &v82);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_226E8E000, v30, v31, "[Key Loader] Error requesting persistable key for request: %{public}@ error: %{public}s", v33, 0x16u);
      v41 = v62;
      sub_226E97D1C(v62, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v41, -1, -1);
      v42 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v43 = v33;
      v27 = v69;
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    v24(v15, v64);
    v44 = v28;
    v45 = [v28 identifier];
    v46 = v65;
    if (v45)
    {
      sub_22766CC20();
      swift_unknownObjectRelease();
      v47 = v77;
      v48 = __swift_project_boxed_opaque_existential_0(v76, v77);
      v75 = v47;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
      (*(*(v47 - 8) + 16))(boxed_opaque_existential_0, v48, v47);
      sub_226F04970(&v74, &v78);
      __swift_destroy_boxed_opaque_existential_0(v76);
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
    }

    v80 = v78;
    v81 = v79;
    v50 = *(&v79 + 1);
    if (*(&v79 + 1))
    {
      v51 = __swift_project_boxed_opaque_existential_0(&v80, *(&v81 + 1));
      *(&v83 + 1) = v50;
      v52 = __swift_allocate_boxed_opaque_existential_0(&v82);
      (*(*(v50 - 8) + 16))(v52, v51, v50);
      __swift_destroy_boxed_opaque_existential_0(&v80);
      if (*(&v83 + 1))
      {
        v53 = v70;
        v54 = v71;
        v55 = swift_dynamicCast();
        (*(v46 + 56))(v53, v55 ^ 1u, 1, v54);
        if ((*(v46 + 48))(v53, 1, v54) != 1)
        {
          v57 = v68;
          (*(v46 + 32))(v68, v53, v71);
          v58 = sub_2276622B0();
          [v44 processContentKeyResponseError_];

          v59 = v67;
          *v67 = v27;
          swift_storeEnumTagMultiPayload();
          v60 = v27;
          sub_226FD85F4(v57, v59);

          sub_226E97D1C(v59, &qword_27D7B9628, &unk_227674860);
          result = (*(v46 + 8))(v68, v71);
          goto LABEL_20;
        }

LABEL_19:
        result = sub_226E97D1C(v53, &unk_27D7BB570, &unk_227670FC0);
LABEL_20:
        v56 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else
    {

      sub_226E97D1C(&v80, &unk_27D7B9650, &unk_227674890);
      v82 = 0u;
      v83 = 0u;
    }

    v53 = v70;
    sub_226E97D1C(&v82, &unk_27D7BC990, &qword_227670A30);
    (*(v46 + 56))(v53, 1, 1, v71);
    goto LABEL_19;
  }

  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821F9840]();
}

uint64_t sub_226FDB7C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v49 - v7;
  v55 = sub_22766B390();
  v54 = *(v55 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v57 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v49 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v49 - v19;
  if ([a1 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v21 = v61;
    v22 = __swift_project_boxed_opaque_existential_0(v60, v61);
    v59 = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v58);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
    sub_226F04970(&v58, &v62);
    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  v24 = *(&v63 + 1);
  if (*(&v63 + 1))
  {
    v25 = __swift_project_boxed_opaque_existential_0(&v64, *(&v65 + 1));
    *(&v67 + 1) = v24;
    v26 = __swift_allocate_boxed_opaque_existential_0(&v66);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    __swift_destroy_boxed_opaque_existential_0(&v64);
    v27 = v57;
    if (*(&v67 + 1))
    {
      v28 = sub_2276624A0();
      v29 = swift_dynamicCast();
      (*(*(v28 - 8) + 56))(v20, v29 ^ 1u, 1, v28);
      goto LABEL_9;
    }
  }

  else
  {
    sub_226E97D1C(&v64, &unk_27D7B9650, &unk_227674890);
    v66 = 0u;
    v67 = 0u;
    v27 = v57;
  }

  sub_226E97D1C(&v66, &unk_27D7BC990, &qword_227670A30);
  v30 = sub_2276624A0();
  (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
LABEL_9:
  sub_22766A690();
  v56 = v20;
  sub_226E93170(v20, v18, &unk_27D7BB570, &unk_227670FC0);
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();
  if (os_log_type_enabled(v31, v32))
  {
    v49[1] = v2;
    v50 = a1;
    v51 = v8;
    v52 = v5;
    v53 = v4;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v64 = v34;
    *v33 = 141558274;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2080;
    sub_226E93170(v18, v15, &unk_27D7BB570, &unk_227670FC0);
    v35 = sub_2276624A0();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v15, 1, v35) == 1)
    {
      sub_226E97D1C(v15, &unk_27D7BB570, &unk_227670FC0);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = sub_227662390();
      v38 = v39;
      (*(v36 + 8))(v15, v35);
    }

    v8 = v51;
    *&v66 = v37;
    *(&v66 + 1) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v40 = sub_22766CB80();
    v42 = v41;
    sub_226E97D1C(v18, &unk_27D7BB570, &unk_227670FC0);

    v43 = sub_226E97AE8(v40, v42, &v64);

    *(v33 + 14) = v43;
    _os_log_impl(&dword_226E8E000, v31, v32, "[Key Loader] AVContentKeySession didProvide persistable request for URL: %{mask.hash}s", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AA9A450](v34, -1, -1);
    MEMORY[0x22AA9A450](v33, -1, -1);

    (*(v54 + 8))(v57, v55);
    v4 = v53;
    v5 = v52;
    a1 = v50;
  }

  else
  {

    sub_226E97D1C(v18, &unk_27D7BB570, &unk_227670FC0);
    (*(v54 + 8))(v27, v55);
  }

  sub_226FD61BC(a1, v8);
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  v45 = a1;
  v46 = sub_227669290();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_226FDC648;
  *(v47 + 24) = v44;

  v46(sub_226E9F7B0, v47);

  (*(v5 + 8))(v8, v4);
  return sub_226E97D1C(v56, &unk_27D7BB570, &unk_227670FC0);
}

uint64_t sub_226FDBF40(void *a1, void *a2)
{
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v5 = (&v33 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v33 - v8;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = a2;
    v21 = v20;
    *v20 = 0;
    _os_log_impl(&dword_226E8E000, v18, v19, "[Key Loader] contentKeyRequest keyRequest: AVContentKeyRequest, didFailWithError", v20, 2u);
    a2 = v33;
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  if ([v36 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v22 = v41;
    v23 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v39 = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v23, v22);
    sub_226F04970(v38, &v42);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  v25 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    sub_226E97D1C(&v44, &unk_27D7B9650, &unk_227674890);
    v46 = 0u;
    v47 = 0u;
    goto LABEL_11;
  }

  v26 = __swift_project_boxed_opaque_existential_0(&v44, *(&v45 + 1));
  *(&v47 + 1) = v25;
  v27 = __swift_allocate_boxed_opaque_existential_0(&v46);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  __swift_destroy_boxed_opaque_existential_0(&v44);
  if (!*(&v47 + 1))
  {
LABEL_11:
    sub_226E97D1C(&v46, &unk_27D7BC990, &qword_227670A30);
    v28 = v37;
    (*(v10 + 56))(v37, 1, 1, v9);
    return sub_226E97D1C(v28, &unk_27D7BB570, &unk_227670FC0);
  }

  v28 = v37;
  v29 = swift_dynamicCast();
  (*(v10 + 56))(v28, v29 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v28, 1, v9) != 1)
  {
    v30 = v35;
    (*(v10 + 32))(v35, v28, v9);
    *v5 = a2;
    swift_storeEnumTagMultiPayload();
    v31 = a2;
    sub_226FD85F4(v30, v5);
    sub_226E97D1C(v5, &qword_27D7B9628, &unk_227674860);
    return (*(v10 + 8))(v35, v9);
  }

  return sub_226E97D1C(v28, &unk_27D7BB570, &unk_227670FC0);
}

uint64_t sub_226FDC494(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v7 = a1;
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v12 = sub_22766C000();
    v14 = sub_226E97AE8(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v8, v9, "[Key Loader] shouldRetry keyRequest: AVContentKeyRequest, retryReason: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 1;
}

uint64_t sub_226FDC688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226FDC6E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_2276668A0() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_226FD81E0(a1, v6, a2);
}

uint64_t sub_226FDC794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_226FD8270(a1, v6, v7, v8, a2);
}

uint64_t objectdestroy_10Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_41Tm_0()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

int *sub_226FDCB08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2276631F0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  return sub_226FD3CAC(a1, (v2 + v6), *(v2 + v7), v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_226FDCC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226FDCC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = (v2 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v2 + v9);
  v15 = (v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  return sub_226FD21F4(a1, v2 + v6, v10, v12, v13, v14, v16, v17, a2);
}

uint64_t sub_226FDCD8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_226FDCE54(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227666130() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_226FD2490(a1, a2, v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_226FDCF94(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_2276624A0() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_227666130() - 8);
  return sub_226FD2A70(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + v8, *(v3 + v9), *(v3 + v9 + 8), v3 + ((v9 + *(v10 + 80) + 16) & ~*(v10 + 80)));
}

uint64_t sub_226FDD0E8()
{
  result = sub_22766A100();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_226FDD19C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_22766A070();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  return v11;
}

uint64_t sub_226FDD228(void (*a1)(char *, char *, uint64_t))
{
  v3 = *v1;
  result = sub_226FDDD28(a1);
  if (!v2)
  {
    v5 = result;
    v15 = 0;
    v6 = v1[2];
    v7 = v3[10];
    v8 = v3[11];
    v9 = v3[12];
    if (sub_226FDE4B0(v6, v7, v8))
    {
      v10 = sub_22766C2B0();
    }

    else
    {
      v10 = 0;
    }

    [v5 setRelationshipKeyPathsForPrefetching_];

    v16 = sub_22766BE60();
    MEMORY[0x28223BE20](v16);
    v14[2] = v7;
    v14[3] = v8;
    v14[4] = v9;
    v11 = sub_22766C730();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = v15;
    sub_22711B820(&v16, v5, sub_226FDEBE4, v14, v6, v11, AssociatedTypeWitness, &v17);

    if (!v13)
    {
      return v17;
    }
  }

  return result;
}

uint64_t sub_226FDD3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  result = sub_2274BFFCC(a2, a3, a4, a5);
  if (!v5)
  {
    sub_22766C730();
    swift_getWitnessTable();
    return sub_22766C720();
  }

  return result;
}

uint64_t sub_226FDD488(void (*a1)(char *, char *, uint64_t))
{
  v31 = *v1;
  v4 = v31;
  v32 = v2;
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 40);
  v11 = qword_2813B2078;
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v11, v5);
  v12 = v4[10];
  v13 = v4[11];
  v14 = sub_226F5B64C(v9, v12, *(v1 + 32), v10, v12, v13);
  (*(v6 + 8))(v9, v5);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = sub_22766C370();
      if (sub_22766C3B0())
      {
        v1 = sub_226FDE808(v15, v12, v31[12]);
      }

      else
      {

        return MEMORY[0x277D84FA0];
      }
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v16 = v32;
    v17 = sub_226FDDD28(a1);
    if (!v16)
    {
      v18 = v17;
      v19 = *(v1 + 24);
      v20 = v31[12];
      v31 = *(v1 + 16);
      v32 = v19;
      if (sub_226FDE4B0(v31, v12, v13))
      {
        v21 = sub_22766C2B0();
      }

      else
      {
        v21 = 0;
      }

      [v18 setRelationshipKeyPathsForPrefetching_];

      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      sub_226FDE780();
      v23 = sub_22766BE50();
      v30[1] = v30;
      v33 = v23;
      MEMORY[0x28223BE20](v23);
      v30[-4] = v12;
      v30[-3] = v13;
      v30[-2] = v20;
      v24 = sub_22766BEF0();
      v30[0] = v20;
      v25 = v24;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v27 = v32;
      sub_22711B820(&v33, v18, sub_226FDE7E8, &v30[-6], v31, v25, AssociatedTypeWitness, &v34);

      v28 = v34;
      sub_22766BED0();

      swift_getWitnessTable();
      v29 = sub_22766C740();
      sub_226EDAB78(v29, v27);

      v34 = v28;
      sub_22766BEE0();
      swift_getWitnessTable();
      v1 = sub_22766C740();
    }
  }

  return v1;
}

uint64_t sub_226FDD8E4()
{
  swift_getAssociatedTypeWitness();
  sub_22766C3D0();
  swift_getWitnessTable();
  return sub_22766C270();
}

void sub_226FDD998(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22766CB90();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v15 - v11;
  v13 = *a1;
  v14 = [*a1 objectID];
  (*(a4 + 48))(v13, a3, a4);
  if (v4)
  {
  }

  else
  {
    (*(*(a3 - 8) + 56))(v12, 0, 1, a3);
    v15[1] = v14;
    sub_226E99364(255, &qword_281398AE0, 0x277CBE448);
    sub_226FDE780();
    sub_22766BEF0();
    sub_22766BF30();
  }
}

void sub_226FDDB10()
{
  v2 = *v0;
  v3 = sub_22766A100();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[5];
  v9 = qword_2813B2078;
  swift_beginAccess();
  (*(v4 + 16))(v7, v0 + v9, v3);
  v10 = sub_226F5B64C(v7, *(v2 + 80), *(v0 + 32), v8, *(v2 + 80), *(v2 + 88));
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    if (v10 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v11 = sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v12 = v0;
    v13 = sub_226FDDDA0(0, v11);
    if (!v1)
    {
      v14 = v13;
      [v13 setResultType_];
      v15 = v0[2];
      v16 = sub_22766C9E0();
      v17 = v12[3];
      v18 = sub_226EDAB24(v16);

      sub_226EDAB78(v18, v17);
    }
  }
}

void *sub_226FDDD28(void (*a1)(char *, char *, uint64_t))
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_226FDDDA0(a1, AssociatedTypeWitness);
}

void *sub_226FDDDA0(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v4 = v2;
  v45 = a2;
  v47 = a1;
  v5 = *v2;
  v6 = sub_22766A100();
  v44 = *(v6 - 8);
  v7 = *(v44 + 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  sub_226FDE274();
  if (!v3)
  {
    v39 = v13;
    v40 = v10;
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F8, &qword_2276749C0);
    v19 = v5[10];
    (*(v5[11] + 24))(v46);
    PersistenceEntityName.rawValue.getter();
    v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v42 = sub_226FDE37C();
    [v42 setFetchBatchSize_];
    v21 = qword_2813B2078;
    v45 = qword_2813B2078;
    swift_beginAccess();
    v22 = v44;
    v47 = *(v44 + 2);
    v43 = v44 + 16;
    v47(v18, &v4[v21], v6);
    sub_22766A090();
    v23 = *(v22 + 1);
    v44 = v18;
    v23(v18, v6);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v24 = sub_22766C2B0();

    v25 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v42 setPredicate_];
    v47(v16, &v4[v45], v6);
    v26 = sub_22766A0C0();
    LOBYTE(v24) = v27;
    v23(v16, v6);
    if ((v24 & 1) == 0)
    {
      [v42 setFetchLimit_];
    }

    v28 = v39;
    v47(v39, &v4[v45], v6);
    v29 = sub_22766A0E0();
    v31 = v30;
    v23(v28, v6);
    v5 = v42;
    v32 = v40;
    if ((v31 & 1) == 0)
    {
      [v42 setFetchOffset_];
    }

    v47(v32, &v4[v45], v6);
    v33 = sub_22766A0B0();
    v23(v32, v6);
    v34 = v44;
    if (v33 >> 62)
    {
      v37 = sub_22766CD20();

      if (v37)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v35)
      {
LABEL_8:
        v47(v34, &v4[v45], v6);
        sub_22766A0B0();
        v23(v34, v6);
        sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
        v36 = sub_22766C2B0();

LABEL_11:
        [v5 setSortDescriptors_];

        return v5;
      }
    }

    v36 = 0;
    goto LABEL_11;
  }

  return v5;
}

uint64_t sub_226FDE274()
{
  v1 = *(*v0 + 80);
  v2 = v0[32];
  (*(*(*v0 + 88) + 32))();
  result = sub_227669C10();
  if (result)
  {
    v4 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51010], v4);
    return swift_willThrow();
  }

  return result;
}

id sub_226FDE37C()
{
  v1 = sub_22766BFD0();

  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_226FDE3D4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_22766A080();
  v6 = v5;
  v7 = a1;
  MEMORY[0x22AA985C0]();
  if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v4(v10, 0);
  swift_endAccess();
  return v2;
}

uint64_t sub_226FDE4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2271259C8(a1, a2, a3);
  v4 = v3;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v4 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v4 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_5;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(&v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(&v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_23;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(&v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278();

        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v29 + 16) + 1, 1, v29);
          v29 = result;
        }

        v27 = *(v29 + 16);
        v26 = *(v29 + 24);
        if (v27 >= v26 >> 1)
        {
          result = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
          v29 = result;
        }

        *(v29 + 16) = v27 + 1;
        v28 = v29 + 16 * v27;
        *(v28 + 32) = v16;
        *(v28 + 40) = v17;
      }

      else
      {

LABEL_25:
      }
    }

    else
    {
LABEL_23:

LABEL_5:
      result = sub_226EBC888(&v31);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v29;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_226FDE780()
{
  result = qword_281398AD0;
  if (!qword_281398AD0)
  {
    sub_226E99364(255, &qword_281398AE0, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398AD0);
  }

  return result;
}

uint64_t sub_226FDE7E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_226FDD8E4();
}

uint64_t sub_226FDE808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v41 - v11;
  v42 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  if (sub_22766C3B0())
  {
    sub_22766CDF0();
    v16 = sub_22766CDE0();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_22766C3B0();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_22766C390();
    sub_22766C350();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_22766CE70();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_22766BF50();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v9, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_22766BFB0();
        v35 = *v50;
        (*v50)(v9, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_226FDEC04(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v24 = MEMORY[0x277D84F90];
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
    sub_226ECCEB4(&qword_281398B80, &qword_281398B88, 0x277CE8D50);
    sub_22766C700();
    v5 = v23[1];
    v6 = v23[2];
    v7 = v23[3];
    v8 = v23[4];
    v9 = v23[5];
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  while (v5 < 0)
  {
    v18 = sub_22766CD50();
    if (!v18 || (v22 = v18, sub_226E99364(0, &qword_281398B88, 0x277CE8D50), swift_dynamicCast(), v17 = v23[0], v15 = v8, v16 = v9, !v23[0]))
    {
LABEL_23:
      sub_226EBB21C();
      return;
    }

LABEL_19:
    v23[0] = v17;
    a1(&v22, v23);
    if (v4)
    {

      sub_226EBB21C();

      return;
    }

    if (v22)
    {
      MEMORY[0x22AA985C0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
    }

    v8 = v15;
    v9 = v16;
    v5 = v21;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_226FDEED8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v42 = sub_227664530();
  v10 = *(*(v42 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v42 - 8);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v33 - v14;
  v34 = v13;
  v15 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 56);
  v19 = (v16 + 63) >> 6;
  v37 = (v13 + 32);
  v38 = (v13 + 48);

  v21 = 0;
  v44 = MEMORY[0x277D84F90];
  v35 = a3;
  if (v18)
  {
LABEL_10:
    while (1)
    {
      v23 = (*(a3 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v18)))));
      v24 = v23[1];
      v43[0] = *v23;
      v43[1] = v24;

      v40(v43);
      if (v4)
      {
        break;
      }

      v18 &= v18 - 1;

      v25 = v42;
      if ((*v38)(v9, 1, v42) == 1)
      {
        result = sub_226E97D1C(v9, &qword_27D7B8E60, &unk_2276724B0);
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v36 = 0;
        v26 = v9;
        v27 = *v37;
        v28 = v33;
        v29 = v26;
        (*v37)(v33);
        (v27)(v39, v28, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2273A5338(0, v44[2] + 1, 1, v44);
        }

        v31 = v44[2];
        v30 = v44[3];
        v4 = v36;
        if (v31 >= v30 >> 1)
        {
          v44 = sub_2273A5338(v30 > 1, v31 + 1, 1, v44);
        }

        v32 = v44;
        v44[2] = v31 + 1;
        result = (v27)(v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, v39, v42);
        a3 = v35;
        v9 = v29;
        if (!v18)
        {
          goto LABEL_6;
        }
      }
    }

    return v44;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return v44;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v21 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_226FDF254(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = a1;
  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = *v6;
    v5(&v15, &v18);
    if (v3)
    {
      break;
    }

    if ((v17 & 1) == 0)
    {
      v9 = v15;
      v10 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2273A5360(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_2273A5360((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      v8 = &v7[16 * v12];
      *(v8 + 4) = v9;
      v8[40] = v10 & 1;
      v5 = a1;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void sub_226FDF394(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_281398A50, 0x277CE8CC0);
    sub_226ECCEB4(&unk_281398A40, &qword_281398A50, 0x277CE8CC0);
    sub_22766C700();
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v27 = v5;
  v28 = MEMORY[0x277D84F90];
  while (v5 < 0)
  {
    v19 = sub_22766CD50();
    if (!v19 || (v36 = v19, sub_226E99364(0, &qword_281398A50, 0x277CE8CC0), swift_dynamicCast(), v18 = *&v29[0], v16 = v8, v17 = v9, !*&v29[0]))
    {
LABEL_25:
      sub_226EBB21C();
      return;
    }

LABEL_19:
    v36 = v18;
    a1(v29, &v36);
    if (v4)
    {

      sub_226EBB21C();

      return;
    }

    v20 = v30;
    if (v30 != 255)
    {
      v24 = v29[1];
      v25 = v29[0];
      v21 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2273A664C(0, *(v28 + 2) + 1, 1, v28);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_2273A664C((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v28 = v21;
      v13 = &v21[40 * v23];
      *(v13 + 2) = v25;
      *(v13 + 3) = v24;
      v13[64] = v20 & 1;
    }

    v8 = v16;
    v9 = v17;
    v5 = v27;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_226FDF694(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9970, &qword_227674DA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v54 = sub_2276688F0();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v54);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v39 - v13;
  v14 = sub_227665F20();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_226E97D1C(v8, &qword_27D7B9970, &qword_227674DA8);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2273A69C4(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_2273A69C4(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_226FDFAE0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99E8, &qword_227674E10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v39 - v8;
  v9 = sub_227669480();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v39 - v13;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = a3 + 56;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a3 + 56);
  v22 = (v19 + 63) >> 6;
  v51 = (v15 + 8);
  v52 = v15;
  v46 = (v15 + 48);
  v47 = v15 + 16;
  v41 = (v15 + 32);
  v53 = a3;

  v24 = 0;
  v44 = MEMORY[0x277D84F90];
LABEL_4:
  v25 = v24;
  if (!v21)
  {
    goto LABEL_6;
  }

  do
  {
    v24 = v25;
LABEL_9:
    v26 = *(v53 + 48);
    v45 = *(v52 + 72);
    (*(v52 + 16))(v17, v26 + v45 * (__clz(__rbit64(v21)) | (v24 << 6)), v9);
    v27 = v49;
    v50(v17);
    if (v4)
    {
      (*v51)(v17, v9);

LABEL_19:

      return v44;
    }

    v28 = v22;
    v29 = v18;
    v21 &= v21 - 1;
    (*v51)();
    if ((*v46)(v27, 1, v9) != 1)
    {
      v30 = v27;
      v31 = *v41;
      (*v41)(v42, v30, v9);
      v31(v43, v42, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_2273A6AD0(0, v44[2] + 1, 1, v44);
      }

      v4 = 0;
      v33 = v44[2];
      v32 = v44[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v37 = v33 + 1;
        v40 = v44[2];
        v38 = sub_2273A6AD0(v32 > 1, v33 + 1, 1, v44);
        v34 = v37;
        v33 = v40;
        v44 = v38;
      }

      v18 = v29;
      v35 = v43;
      v36 = v44;
      v44[2] = v34;
      result = (v31)(v36 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + v33 * v45, v35, v9);
      v22 = v28;
      goto LABEL_4;
    }

    result = sub_226E97D1C(v27, &qword_27D7B99E8, &qword_227674E10);
    v25 = v24;
    v4 = 0;
    v22 = v28;
  }

  while (v21);
LABEL_6:
  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      goto LABEL_19;
    }

    v21 = *(v18 + 8 * v24);
    ++v25;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_226FDFF04(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_2276639B0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v31 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = (a3 + 32);
  v26 = v14;
  v29 = (v14 + 32);
  v30 = (v14 + 48);
  v18 = MEMORY[0x277D84F90];
  v27 = a1;
  while (1)
  {
    v33 = *v17;

    a1(&v33);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      sub_226E97D1C(v9, &qword_27D7B9680, &unk_227671520);
    }

    else
    {
      v19 = v10;
      v20 = v28;
      v21 = *v29;
      (*v29)(v28, v9, v19);
      v21(v31, v20, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2273A4EA4(0, *(v18 + 2) + 1, 1, v18);
      }

      v23 = *(v18 + 2);
      v22 = *(v18 + 3);
      if (v23 >= v22 >> 1)
      {
        v18 = sub_2273A4EA4(v22 > 1, v23 + 1, 1, v18);
      }

      *(v18 + 2) = v23 + 1;
      v21(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23], v31, v19);
      v10 = v19;
      a1 = v27;
    }

    ++v17;
    if (!--v16)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_226FE01F8(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v32 = sub_227666FF0();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v29 = v5 + 16;
  v31 = (v5 + 8);
  v33 = a3;

  v15 = 0;
  v28 = MEMORY[0x277D84F90];
  while (v12)
  {
    v16 = v32;
LABEL_11:
    (*(v5 + 16))(v8, *(v33 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v30(&v34, v8);
    if (v3)
    {
      (*v31)(v8, v16);

LABEL_19:

      return v28;
    }

    v12 &= v12 - 1;
    result = (*v31)(v8, v16);
    v18 = v35;
    if (v35 != 255)
    {
      v27 = v34;
      v19 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A7134(0, v28[2] + 1, 1, v28);
        v28 = result;
      }

      v21 = v28[2];
      v20 = v28[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v25 = v28[2];
        v26 = v21 + 1;
        result = sub_2273A7134((v20 > 1), v21 + 1, 1, v28);
        v21 = v25;
        v22 = v26;
        v28 = result;
      }

      v23 = v28;
      v28[2] = v22;
      v24 = &v23[4 * v21];
      *(v24 + 2) = v27;
      *(v24 + 48) = v18 & 1;
      v24[7] = v19;
    }
  }

  v16 = v32;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_19;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226FE04B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696669746E656469;
  v4 = 0xEA00000000007265;
  if (v2 != 1)
  {
    v3 = 0x73656E6F7ALL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x56656C69666F7270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE006E6F69737265;
  }

  v7 = 0x696669746E656469;
  v8 = 0xEA00000000007265;
  if (*a2 != 1)
  {
    v7 = 0x73656E6F7ALL;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x56656C69666F7270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE006E6F69737265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22766D190();
  }

  return v11 & 1;
}

uint64_t sub_226FE05BC()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_226FE066C()
{
  *v0;
  *v0;
  sub_22766C100();
}

uint64_t sub_226FE0708()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_226FE07B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226FF658C();
  *a2 = result;
  return result;
}

void sub_226FE07E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F69737265;
  v4 = 0xEA00000000007265;
  v5 = 0x696669746E656469;
  if (v2 != 1)
  {
    v5 = 0x73656E6F7ALL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x56656C69666F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_226FE0850()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x56656C69666F7270;
  }
}

uint64_t sub_226FE08B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226FF658C();
  *a1 = result;
  return result;
}

uint64_t sub_226FE08F8(uint64_t a1)
{
  v2 = sub_226FE0CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226FE0934(uint64_t a1)
{
  v2 = sub_226FE0CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RestrictionProfile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9700, &qword_2276749C8);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9708, &qword_2276749D0);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_226FE0CA8();
  sub_22766D460();
  if (!v2)
  {
    v13 = v8;
    v14 = v26;
    v29 = 0;
    v23 = sub_22766D0A0();
    v28 = 1;
    v21 = sub_22766D080();
    v22 = v16;
    v27 = 2;
    sub_226FE0CFC();
    sub_22766D050();
    v20 = v4;
    v17 = sub_22766D0C0();
    v19 = &v19;
    MEMORY[0x28223BE20](v17);
    *(&v19 - 2) = v7;
    v18 = sub_226FDF254(sub_226FE1170, (&v19 - 4), v17);

    sub_226F436A0(v18);

    sub_227665660();
    (*(v13 + 8))(v11, v14);
    (*(v24 + 8))(v7, v20);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_226FE0CA8()
{
  result = qword_28139B828;
  if (!qword_28139B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B828);
  }

  return result;
}

unint64_t sub_226FE0CFC()
{
  result = qword_28139B760;
  if (!qword_28139B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B760);
  }

  return result;
}

void sub_226FE0D50(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22766B390();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227669A60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  LOBYTE(v36[0]) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9700, &qword_2276749C8);
  sub_22766D070();
  if (!v2)
  {
    sub_226E91B50(v37, v36);
    v29 = sub_226FF6B90(v36);
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_0(v37);
    *a2 = v29;
    *(a2 + 8) = v31 & 1;
    *(a2 + 9) = 0;
    return;
  }

  v38 = a2;
  v37[0] = v2;
  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    if ((*(v10 + 88))(v13, v9) == *MEMORY[0x277D4E2D8])
    {

      v15 = v38;
      *v38 = 0;
      *(v15 + 4) = 256;

      return;
    }

    (*(v10 + 8))(v13, v9);
  }

  v32 = 0;

  sub_22766A730();
  v16 = v2;
  v17 = sub_22766B380();
  v18 = sub_22766C890();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37[0] = v20;
    *v19 = 136315394;
    LOBYTE(v36[0]) = v33;
    sub_226FF66F0();
    v21 = sub_22766D140();
    v23 = sub_226E97AE8(v21, v22, v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v36[0] = v2;
    v24 = v2;
    v25 = sub_22766C060();
    v27 = sub_226E97AE8(v25, v26, v37);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_226E8E000, v17, v18, "Failed to decode RestrictionZoneKind %s: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v20, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  else
  {
  }

  (*(v34 + 8))(v8, v35);
  v28 = v38;
  *v38 = 0;
  *(v28 + 4) = 256;
}

uint64_t RestrictionProfile.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9710, &qword_2276749D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - v6;
  v8 = sub_227665640();
  if (v9)
  {
    v50 = v8;
    v51 = v4;
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_226FE0CA8();
    sub_22766D480();
    sub_227665670();
    LOBYTE(v52[0]) = 0;
    sub_22766D110();
    if (v1)
    {
      (*(v51 + 8))(v7, v3);
    }

    else
    {
      LOBYTE(v52[0]) = 1;
      sub_22766D0F0();
      v45 = 0;

      LOBYTE(v53) = 2;
      sub_22766D0E0();
      v14 = sub_227665650();
      v15 = v14 + 56;
      v16 = 1 << *(v14 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v14 + 56);
      v19 = (v16 + 63) >> 6;
      v49 = v14;

      v20 = 0;
      v21 = MEMORY[0x277D84F98];
      v46 = v3;
      v47 = v15;
      v48 = v7;
      while (v18)
      {
        v24 = v20;
LABEL_17:
        v26 = *(v49 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v18))));
        v50 = *v26;
        v27 = *(v26 + 8);
        v28 = sub_227665A80();
        v30 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v21;
        v32 = sub_226E92000(v28, v30);
        v34 = v21[2];
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_28;
        }

        v38 = v33;
        if (v21[3] >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = v32;
            sub_226FF185C();
            v32 = v44;
          }
        }

        else
        {
          sub_226FE5520(v37, isUniquelyReferenced_nonNull_native);
          v32 = sub_226E92000(v28, v30);
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_30;
          }
        }

        v18 &= v18 - 1;
        if (v38)
        {
          v22 = v32;

          v21 = v53;
          v23 = v53[7] + 16 * v22;
          *v23 = v50;
          *(v23 + 8) = v27;
        }

        else
        {
          v21 = v53;
          v53[(v32 >> 6) + 8] |= 1 << v32;
          v40 = (v21[6] + 16 * v32);
          *v40 = v28;
          v40[1] = v30;
          v41 = v21[7] + 16 * v32;
          *v41 = v50;
          *(v41 + 8) = v27;
          v42 = v21[2];
          v36 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v36)
          {
            goto LABEL_29;
          }

          v21[2] = v43;
        }

        v20 = v24;
        v15 = v47;
        v7 = v48;
      }

      v25 = v51;
      while (1)
      {
        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v24 >= v19)
        {

          sub_226FF6420();
          sub_22766BF00();

          __swift_destroy_boxed_opaque_existential_0(v52);
          return (*(v25 + 8))(v7, v46);
        }

        v18 = *(v15 + 8 * v24);
        ++v20;
        if (v18)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_22766D220();
      __break(1u);
    }
  }

  else
  {
    v12 = sub_227669A60();
    sub_226FF65D8(&qword_27D7B8A18, MEMORY[0x277D4E2F0]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D4E2E8], v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_226FE16B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98C0, &qword_227674D10);
  v44 = a2;
  result = sub_22766D000();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_226FF65D8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
      result = sub_22766BF50();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
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
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226FE1A70(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_227665440();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97C8, &qword_227674C20);
  v43 = a2;
  result = sub_22766D000();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_226FF65D8(&qword_27D7B8660, MEMORY[0x277D51640]);
      result = sub_22766BF50();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226FE1E4C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_227665440();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9728, &qword_227674B88);
  v43 = a2;
  result = sub_22766D000();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_226FF65D8(&qword_27D7B8660, MEMORY[0x277D51640]);
      result = sub_22766BF50();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226FE2228(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
  v38 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE24C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E78, &qword_2276724C0);
  v37 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE27BC(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, void (*a5)(unint64_t, _BYTE *))
{
  v50 = a5;
  v8 = v5;
  v11 = sub_2276694E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v17 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v48 = a2;
  result = sub_22766D000();
  v19 = result;
  if (*(v16 + 16))
  {
    v52 = v15;
    v53 = v11;
    v44 = v8;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v45 = (v12 + 16);
    v46 = v12;
    v49 = (v12 + 32);
    v26 = result + 64;
    v47 = v16;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = v28 | (v20 << 6);
      v32 = *(v16 + 48);
      v51 = *(v12 + 72);
      v33 = v32 + v51 * v31;
      if (v48)
      {
        (*v49)(v52, v33, v53);
        v50(*(v16 + 56) + 40 * v31, v54);
      }

      else
      {
        (*v45)(v52, v33, v53);
        sub_226E91B50(*(v16 + 56) + 40 * v31, v54);
      }

      v34 = *(v19 + 40);
      sub_226FF65D8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
      result = sub_22766BF50();
      v35 = -1 << *(v19 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v26 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v12 = v46;
        v16 = v47;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v26 + 8 * v37);
          if (v41 != -1)
          {
            v27 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v36) & ~*(v26 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v12 = v46;
      v16 = v47;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v49)((*(v19 + 48) + v51 * v27), v52, v53);
      result = (v50)(v54, *(v19 + 56) + 40 * v27);
      ++*(v19 + 16);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v16 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v21, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v42;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v8 = v19;
  return result;
}

uint64_t sub_226FE2C08(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = sub_227665680();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98F0, &qword_227674D40);
  v40 = a2;
  result = sub_22766D000();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v6 + 72);
      v27 = *(v9 + 56) + v26 * v25;
      v43 = *(*(v9 + 48) + 16 * v25);
      if (v40)
      {
        (*v19)(v41, v27, v42);
      }

      else
      {
        (*v38)(v41, v27, v42);
      }

      v28 = *(v12 + 40);
      sub_22766D370();
      sub_227667E10();
      result = sub_22766D3F0();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 16 * v21) = v43;
      result = (*v19)(*(v12 + 56) + v26 * v21, v41, v42);
      ++*(v12 + 16);
      v6 = v39;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_226FE2FFC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_227662B60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99C8, &qword_227674DF0);
  v43 = a2;
  result = sub_22766D000();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_226FF65D8(&qword_27D7B8938, MEMORY[0x277D49490]);
      result = sub_22766BF50();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226FE33D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - v8;
  v9 = sub_227665680();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9918, &qword_227674D60);
  v48 = a2;
  result = sub_22766D000();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_226E95D18(v31 + v32 * v28, v52, &qword_27D7B8E28, &unk_227672340);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_226E93170(v33 + v32 * v28, v52, &qword_27D7B8E28, &unk_227672340);
      }

      v34 = *(v16 + 40);
      sub_226FF65D8(&unk_28139B7E8, MEMORY[0x277D51898]);
      result = sub_22766BF50();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_226E95D18(v52, *(v16 + 56) + v32 * v24, &qword_27D7B8E28, &unk_227672340);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_226FE3888(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A88, &qword_227674EB0);
  v38 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v41 = *(*(v5 + 48) + v21);
      v22 = (*(v5 + 56) + 40 * v21);
      v23 = v22[1];
      v24 = v22[2];
      v25 = v22[3];
      v39 = v24;
      v40 = *v22;
      v26 = v22[4];
      if ((v38 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_22766D370();
      MEMORY[0x22AA996B0](v41);
      result = sub_22766D3F0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v41;
      v17 = (*(v8 + 56) + 40 * v16);
      *v17 = v40;
      v17[1] = v23;
      v17[2] = v39;
      v17[3] = v25;
      v17[4] = v26;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE3B68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99B8, &qword_227674DE0);
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_22766D370();
      MEMORY[0x22AA996B0](v21);
      result = sub_22766D3F0();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE3DF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE0, &unk_227672B70);
  v40 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_226EB396C(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE40EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98E0, &qword_227674D30);
  v34 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_22766D370();
      sub_227667470();
      sub_22766C100();

      result = sub_22766D3F0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE43BC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = a2;
  result = sub_22766D000();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v8 + 48) + v23);
      v25 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v11 + 40);
      sub_22766D370();
      a5(v24);
      sub_22766C100();

      result = sub_22766D3F0();
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
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v8 + 32);
    v6 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t sub_226FE466C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9790, &qword_227674BF0);
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_22766D360();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_226FE4910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
  v36 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_226F04970(v25, v37);
      }

      else
      {
        sub_226E97CC0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_226F04970(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE4BC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97A0, &qword_227674C00);
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_22766D370();
      v24 = sub_227669410();
      MEMORY[0x22AA996B0](v24);
      result = sub_22766D3F0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE4E4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9780, &qword_227674BE0);
  v40 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE510C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2276639B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9758, &qword_227674BB8);
  v47 = a2;
  result = sub_22766D000();
  v14 = result;
  if (*(v11 + 16))
  {
    v52 = v10;
    v43 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = (v7 + 16);
    v45 = v11;
    v46 = v7;
    v48 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v51 = *(v46 + 72);
      v29 = v28 + v51 * v27;
      if (v47)
      {
        (*v48)(v52, v29, v6);
        v30 = *(v11 + 56) + 24 * v27;
        v50 = *v30;
        v49 = *(v30 + 16);
      }

      else
      {
        (*v44)(v52, v29, v6);
        v31 = *(v11 + 56) + 24 * v27;
        v32 = *(v31 + 16);
        v50 = *v31;

        v49 = v32;
      }

      v33 = *(v14 + 40);
      sub_226FF65D8(&qword_28139BCA8, MEMORY[0x277D501C8]);
      result = sub_22766BF50();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v48)(*(v14 + 48) + v51 * v22, v52, v6);
      v23 = *(v14 + 56) + 24 * v22;
      *v23 = v50;
      *(v23 + 16) = v49;
      ++*(v14 + 16);
      v11 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226FE5520(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A98, &unk_227674EC0);
  v40 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v41 = *(v27 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v28;
      *(v19 + 8) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE57E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98D8, &qword_227674D28);
  v41 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      v28 = *(v22 + 8 * v21);
      v44 = *(v23 + 32);
      if ((v41 & 1) == 0)
      {
        v29 = *v23;

        sub_226EB396C(v27, v26, v44);

        v24 = v29;
      }

      v30 = *(v8 + 40);
      v42 = v24;
      sub_22766D370();
      sub_226F482E4();
      sub_22766BF60();
      result = sub_22766D3F0();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      *v17 = v42;
      *(v17 + 8) = v25;
      *(v17 + 16) = v27;
      *(v17 + 24) = v26;
      *(v17 + 32) = v44;
      *(*(v8 + 56) + 8 * v16) = v28;
      ++*(v8 + 16);
      v5 = v40;
      v13 = v43;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE5AF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98D0, &qword_227674D20);
  v41 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 32 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      v28 = *(v22 + 8 * v21);
      if ((v41 & 1) == 0)
      {
        v29 = *v23;
        sub_226EB396C(*(v23 + 8), *(v23 + 16), *(v23 + 24));

        v24 = v29;
      }

      v30 = *(v8 + 40);
      v42 = v24;
      sub_22766D370();
      sub_226F48338();
      sub_22766BF60();
      result = sub_22766D3F0();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 32 * v16;
      v13 = v43;
      *v17 = v42;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v27;
      *(*(v8 + 56) + 8 * v16) = v28;
      ++*(v8 + 16);
      v5 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE5DE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99C0, &qword_227674DE8);
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_226F04970((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_226EA1E2C(v24, &v38);
        sub_226E97CC0(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_22766CD80();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_226F04970(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_226FE609C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97D8, &qword_227674C30);
  v37 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_226F04970(v23, v38);
      }

      else
      {
        sub_226E97CC0(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_22766C000();
      sub_22766D370();
      sub_22766C100();
      v26 = sub_22766D3F0();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_226F04970(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE636C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
  v41 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_226EA1E2C(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE6650(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9938, &qword_227674D78);
  v39 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 24 * v22;
      v25 = *v24;
      v26 = *(v24 + 16);
      v27 = (v23 + 16 * v22);
      v28 = v27[1];
      v40 = *v27;
      v42 = *(v24 + 8);
      if ((v39 & 1) == 0)
      {
        sub_226EB396C(v25, *(v24 + 8), v26);
      }

      v29 = *(v8 + 40);
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v25;
      *(v17 + 8) = v42;
      *(v17 + 16) = v26;
      v18 = (*(v8 + 56) + 16 * v16);
      v13 = v41;
      *v18 = v40;
      v18[1] = v28;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v39)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v8;
  return result;
}

uint64_t sub_226FE69D0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_227665440();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
  v43 = a2;
  result = sub_22766D000();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_226FF65D8(&qword_27D7B8660, MEMORY[0x277D51640]);
      result = sub_22766BF50();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226FE6DD4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9908, &qword_227674D50);
  v44 = a2;
  result = sub_22766D000();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v41 = v3;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    v45 = v10;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v42 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v44)
      {
        sub_226E95D18(v28, v9, &qword_27D7B88C0, &unk_22767A720);
      }

      else
      {
        sub_226E93170(v28, v9, &qword_27D7B88C0, &unk_22767A720);
      }

      v29 = v9;
      v30 = *(*(v45 + 56) + 8 * v26);
      v31 = *(v14 + 40);
      sub_22766D370();
      sub_226FF65D8(&qword_27D7B88D0, MEMORY[0x277D52730]);
      v32 = v29;
      sub_227663B10();
      result = sub_22766D3F0();
      v33 = -1 << *(v14 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_226E95D18(v32, *(v14 + 48) + v27 * v22, &qword_27D7B88C0, &unk_22767A720);
      *(*(v14 + 56) + 8 * v22) = v30;
      v9 = v32;
      ++*(v14 + 16);
      v13 = v45;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v13 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226FE71A0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = a2;
  result = sub_22766D000();
  v10 = result;
  if (*(v7 + 16))
  {
    v40 = v5;
    v41 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = *(v7 + 56);
      v26 = *(v7 + 48) + 24 * v24;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v25 + 8 * v24);
      if ((v42 & 1) == 0)
      {
        sub_226EB396C(*v26, *(v26 + 8), *(v26 + 16));
      }

      v31 = *(v10 + 40);
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v19 = v30;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v19 = v30;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v20 = *(v10 + 48) + 24 * v18;
      *v20 = v27;
      *(v20 + 8) = v28;
      *(v20 + 16) = v29;
      *(*(v10 + 56) + 8 * v18) = v19;
      ++*(v10 + 16);
      v7 = v41;
      v15 = v43;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v5 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v7 + 32);
    v5 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_226FE74A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9880, &qword_227674CD0);
  v39 = a2;
  v7 = sub_22766D000();
  v8 = v7;
  if (*(v5 + 16))
  {
    v35 = v2;
    v9 = 0;
    v36 = (v5 + 64);
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
    v14 = v7 + 64;
    v37 = v7;
    v38 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_17:
      v20 = v16 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v39 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_22766D370();
      MEMORY[0x22AA996B0](*(v22 + 16));
      v41 = v22;
      v25 = *(v22 + 16);
      if (v25)
      {
        sub_226F480FC();
        v26 = (v22 + 48);
        do
        {
          v42 = *(v26 - 1);
          v43 = *v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_227663B10();
          v26 += 24;
          --v25;
        }

        while (v25);
      }

      result = sub_22766D3F0();
      v8 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v5 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v5 = v38;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v37 + 48) + 8 * v15) = v41;
      v12 = v40;
      *(*(v37 + 56) + 8 * v15) = v23;
      ++*(v37 + 16);
    }

    v17 = v9;
    result = v36;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v13)
      {
        break;
      }

      v19 = v36[v9];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_38;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE77EC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = a2;
  result = sub_22766D000();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_22766D370();
      v26 = sub_227669310();
      MEMORY[0x22AA996B0](v26);
      result = sub_22766D3F0();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_226FE7A78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98B0, &qword_227674D00);
  v42 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v44 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 24 * v22;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = (v23 + 40 * v22);
      v28 = v27[1];
      v43 = *v27;
      v29 = v27[2];
      v30 = v27[3];
      v46 = *(v27 + 32);
      v45 = *v24;
      if ((v42 & 1) == 0)
      {
        sub_226EB396C(*v24, v25, v26);

        sub_226EB396C(v29, v30, v46);
      }

      v31 = *(v8 + 40);
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v45;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v43;
      *(v18 + 8) = v28;
      *(v18 + 16) = v29;
      *(v18 + 24) = v30;
      *(v18 + 32) = v46;
      ++*(v8 + 16);
      v5 = v41;
      v13 = v44;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v42)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_226FE7DD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98A8, &qword_227674CF8);
  v42 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v40 = result;
    v41 = v5;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v44 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v43 = *(v21 + 16 * v20);
      if ((v42 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_22766D370();
      MEMORY[0x22AA996B0](*(v22 + 16));
      v45 = v22;
      v24 = *(v22 + 16);
      if (v24)
      {
        v25 = (v45 + 64);
        do
        {
          v27 = *(v25 - 4);
          v26 = *(v25 - 3);
          v28 = *(v25 - 2);
          v29 = *(v25 - 1);
          v30 = *v25;
          v25 += 40;

          sub_226EB396C(v28, v29, v30);
          sub_226F482E4();
          sub_22766BF60();

          sub_226EB2DFC(v28, v29, v30);
          --v24;
        }

        while (v24);
      }

      result = sub_22766D3F0();
      v8 = v40;
      v31 = -1 << *(v40 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v5 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v5 = v41;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v13 = v44;
      *(*(v40 + 48) + 8 * v16) = v45;
      *(*(v40 + 56) + 16 * v16) = v43;
      ++*(v40 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_38;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE8110(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98B8, &qword_227674D08);
  v43 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v41 = result;
    v42 = v5;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v44 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v43 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_22766D370();
      MEMORY[0x22AA996B0](*(v22 + 16));
      v45 = v22;
      v25 = *(v22 + 16);
      if (v25)
      {
        v26 = (v45 + 64);
        do
        {
          v28 = *(v26 - 4);
          v27 = *(v26 - 3);
          v29 = *(v26 - 2);
          v30 = *(v26 - 1);
          v31 = *v26;
          v26 += 40;

          sub_226EB396C(v29, v30, v31);
          sub_226F482E4();
          sub_22766BF60();

          sub_226EB2DFC(v29, v30, v31);
          --v25;
        }

        while (v25);
      }

      result = sub_22766D3F0();
      v8 = v41;
      v32 = -1 << *(v41 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v5 = v42;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v5 = v42;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v13 = v44;
      *(*(v41 + 48) + 8 * v16) = v45;
      *(*(v41 + 56) + 8 * v16) = v23;
      ++*(v41 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_38;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE844C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
  v38 = a2;
  result = sub_22766D000();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 16);
      v39 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
        sub_226EB396C(v25, v24, v26);
      }

      v27 = *(v8 + 40);
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + 8 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226FE875C(uint64_t a1, int a2)
{
  v3 = v2;
  v51 = sub_227668240();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9998, &qword_227674DC0);
  v46 = a2;
  result = sub_22766D000();
  v12 = result;
  if (*(v9 + 16))
  {
    v42 = v2;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    v20 = v6;
    v45 = v9;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v9 + 48) + 24 * v26;
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = *(v9 + 56) + *(v20 + 72) * v26;
      v48 = *(v20 + 72);
      if (v46)
      {
        (*v47)(v50, v31, v51);
      }

      else
      {
        (*v43)(v50, v31, v51);
        sub_226EB396C(v29, v28, v30);
      }

      v32 = *(v12 + 40);
      v52 = v29;
      v53 = v28;
      v54 = v30;
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = *(v12 + 48) + 24 * v21;
      *v22 = v29;
      *(v22 + 8) = v28;
      *(v22 + 16) = v30;
      result = (*v47)(*(v12 + 56) + v48 * v21, v50, v51);
      ++*(v12 + 16);
      v20 = v44;
      v9 = v45;
      v17 = v49;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_226FE8BB0(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v48 = a3(0);
  v11 = *(v48 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v46 = a2;
  result = sub_22766D000();
  v17 = result;
  if (*(v14 + 16))
  {
    v43 = v8;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v11;
    v24 = (v11 + 32);
    v25 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(*(v14 + 48) + 8 * v30);
      v32 = *(v11 + 72);
      v33 = *(v14 + 56) + v32 * v30;
      if (v46)
      {
        (*v24)(v47, v33, v48);
      }

      else
      {
        (*v44)(v47, v33, v48);
      }

      v34 = *(v17 + 40);
      result = sub_22766D360();
      v35 = -1 << *(v17 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v25 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v25 + 8 * v37);
          if (v41 != -1)
          {
            v26 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v36) & ~*(v25 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v17 + 48) + 8 * v26) = v31;
      result = (*v24)(*(v17 + 56) + v32 * v26, v47, v48);
      ++*(v17 + 16);
      v11 = v45;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v14 + 32);
    v8 = v43;
    if (v42 >= 64)
    {
      bzero((v14 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v42;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}