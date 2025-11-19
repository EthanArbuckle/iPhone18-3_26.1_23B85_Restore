uint64_t sub_266C0AD5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C0AD3C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266C0AED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_266C0AF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_266C0AFB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0AFE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0B020()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0B0A0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0B0D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_266C0B0F0()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  v3 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 21);

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_266C0B158()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266C0B240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_266C0B308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_266C0B478()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_266C0B504()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_266C0B554()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_266DAAB4C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266C0B62C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_266DAAB4C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C0B6AC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0B6E0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_15_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0B714()
{
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();
  OUTLINED_FUNCTION_24_0(FriendSessionManager);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + v5 + 16);

  v9 = *(v0 + 36);
  v10 = sub_266DAAB4C();
  OUTLINED_FUNCTION_0(v10);
  (*(v11 + 8))(v1 + v5 + v9);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_266C0B7F4()
{
  OUTLINED_FUNCTION_6();
  v2 = type metadata accessor for FriendLocation();
  OUTLINED_FUNCTION_24_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + v4 + 8);

  v8 = v1 + v4 + *(v0 + 40);
  v9 = type metadata accessor for Location();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = v9[7];
    v11 = sub_266DA746C();
    OUTLINED_FUNCTION_0(v11);
    (*(v12 + 8))(v8 + v10);
    v13 = *(v8 + v9[8] + 8);

    v14 = v8 + v9[11];
    v15 = type metadata accessor for Address();
    if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
    {
      v16 = sub_266DA919C();
      if (!__swift_getEnumTagSinglePayload(v14, 1, v16))
      {
        (*(*(v16 - 8) + 8))(v14, v16);
      }

      OUTLINED_FUNCTION_21_0(v15[5]);
      OUTLINED_FUNCTION_21_0(v15[6]);
      OUTLINED_FUNCTION_21_0(v15[7]);
      v17 = v15[8];
      if (!__swift_getEnumTagSinglePayload(v14 + v17, 1, v16))
      {
        (*(*(v16 - 8) + 8))(v14 + v17, v16);
      }

      OUTLINED_FUNCTION_21_0(v15[9]);
      OUTLINED_FUNCTION_21_0(v15[10]);
      OUTLINED_FUNCTION_21_0(v15[11]);
      v18 = *(v14 + v15[12]);
    }

    v19 = *(v8 + v9[12] + 8);
  }

  OUTLINED_FUNCTION_5();

  return MEMORY[0x2821FE8E8](v20, v21, v22);
}

uint64_t sub_266C0BA34()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0BAB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_266C0BAF8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0BBAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0BBE4()
{
  v1 = *(v0 + 24);

  sub_266C479B0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0BC30()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0BD08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0BD40()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0BD74()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0BDD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_266C0BE10()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v73 = v12 + v28;
        v1 = type metadata accessor for Location();
        v74 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v74, v75, v1))
        {
          v76 = v1[7];
          v77 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v77);
          (*(v78 + 8))(&v73[v76]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v73[v1[11]];
          v79 = type metadata accessor for Address();
          v80 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v80, v81, v79))
          {
            sub_266DA919C();
            v82 = OUTLINED_FUNCTION_109();
            v242 = v83;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, v84, v83);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v86, v87, v88, v89, v90, v91, v92, v239, v242);
              (*(v93 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v79[5]);
            OUTLINED_FUNCTION_70(v79[6]);
            v94 = OUTLINED_FUNCTION_70(v79[7]);
            v102 = OUTLINED_FUNCTION_115(v94, v95, v96, v97, v98, v99, v100, v101, v239, v242);
            if (!v102)
            {
              OUTLINED_FUNCTION_20_2(v102, v103, v104, v105, v106, v107, v108, v109, v239, v243);
              (*(v110 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v79[9]);
            OUTLINED_FUNCTION_70(v79[10]);
            OUTLINED_FUNCTION_70(v79[11]);
            v111 = *&v2[v79[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v241 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v241);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v239, v241);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v239 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v239, 1, v241))
              {
                OUTLINED_FUNCTION_9_3(v241);
                (*(v70 + 8))(v60 + v71);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v72 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v112 = v12[1];

        v113 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v114);
        }

        v115 = v12[8];

        v116 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v117 = v12[1];

        v118 = v12[3];

        v119 = type metadata accessor for Snippets.Contact();
        v120 = OUTLINED_FUNCTION_98(v119);
        OUTLINED_FUNCTION_8_0(v120);
        (*(v121 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v122 = (v0 + v10);
  v123 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v123, v124, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v149 = *(v122 + 1);

        v150 = *(v122 + 3);

        v151 = type metadata accessor for Snippets.Contact();
        v152 = OUTLINED_FUNCTION_96(v151);
        OUTLINED_FUNCTION_8_0(v152);
        (*(v153 + 8))(v1 + v122);
        v148 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v125 = *v122;
        goto LABEL_73;
      case 4u:
        v132 = *(v122 + 1);

        v133 = *(v122 + 3);

        v134 = *(v122 + 5);

        v135 = *(v122 + 6);

        v136 = &v122[*(type metadata accessor for Friend() + 40)];
        v137 = type metadata accessor for FriendLocation();
        v138 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v138, v139, v137))
        {
          break;
        }

        v140 = *(v136 + 1);

        v141 = &v136[*(v137 + 32)];
LABEL_59:
        v211 = type metadata accessor for Location();
        v212 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v212, v213, v211))
        {
          break;
        }

        v214 = v211[7];
        v215 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v215);
        (*(v216 + 8))(&v141[v214]);
        v217 = *&v141[v211[8] + 8];

        v218 = &v141[v211[11]];
        v219 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v219))
        {
          v220 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v218, 1, v220))
          {
            OUTLINED_FUNCTION_9_3(v220);
            (*(v221 + 8))(v218, v220);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v222 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v218 + v222, 1, v220))
          {
            OUTLINED_FUNCTION_9_3(v220);
            (*(v223 + 8))(v218 + v222, v220);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v224 = *(v218 + *(v2 + 12));
        }

        v225 = &v141[v211[12]];
LABEL_72:
        v237 = *(v225 + 1);
LABEL_73:

        break;
      case 5u:
        v160 = *(v122 + 1);

        v161 = *(v122 + 3);

        v162 = *(v122 + 5);

        v163 = *(v122 + 6);

        v164 = &v122[*(type metadata accessor for Friend() + 40)];
        v165 = type metadata accessor for FriendLocation();
        v166 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v166, v167, v165))
        {
          v168 = *(v164 + 1);

          v169 = &v164[*(v165 + 32)];
          v170 = type metadata accessor for Location();
          v171 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v171, v172, v170))
          {
            v173 = v170[7];
            v174 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v174);
            (*(v175 + 8))(&v169[v173]);
            v176 = *&v169[v170[8] + 8];

            v2 = &v169[v170[11]];
            v177 = type metadata accessor for Address();
            v178 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v178, v179, v177))
            {
              sub_266DA919C();
              v180 = OUTLINED_FUNCTION_109();
              v244 = v181;
              v183 = __swift_getEnumTagSinglePayload(v180, v182, v181);
              if (!v183)
              {
                OUTLINED_FUNCTION_20_2(v183, v184, v185, v186, v187, v188, v189, v190, v239, v244);
                (*(v191 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v177[5]);
              OUTLINED_FUNCTION_70(v177[6]);
              v192 = OUTLINED_FUNCTION_70(v177[7]);
              v200 = OUTLINED_FUNCTION_115(v192, v193, v194, v195, v196, v197, v198, v199, v239, v244);
              if (!v200)
              {
                OUTLINED_FUNCTION_20_2(v200, v201, v202, v203, v204, v205, v206, v207, v240, v245);
                (*(v208 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v177[9]);
              OUTLINED_FUNCTION_70(v177[10]);
              OUTLINED_FUNCTION_70(v177[11]);
              v209 = *&v2[v177[12]];
            }

            v210 = *&v169[v170[12] + 8];
          }
        }

        v141 = &v122[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v226 = *(v122 + 1);

        v227 = *(v122 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v122 + 5), v228);
        }

        v229 = *(v122 + 8);

        v230 = *(v122 + 10);
        goto LABEL_73;
      case 7u:
        v154 = *(v122 + 1);

        v155 = *(v122 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v122 + 5), v156);
        }

        v157 = *(v122 + 8);

        v158 = *(v122 + 10);

        v159 = *(v122 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v122 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v142 = *(v122 + 1);

        v143 = *(v122 + 3);

        v144 = type metadata accessor for Snippets.Contact();
        v145 = OUTLINED_FUNCTION_96(v144);
        OUTLINED_FUNCTION_8_0(v145);
        (*(v146 + 8))(v1 + v122);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v147 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v147 + 20));

        v148 = *(v147 + 24);
        goto LABEL_71;
      case 0xAu:
        v231 = *(v122 + 1);

        v232 = *(v122 + 3);

        v233 = type metadata accessor for Snippets.Contact();
        v234 = OUTLINED_FUNCTION_96(v233);
        OUTLINED_FUNCTION_8_0(v234);
        (*(v235 + 8))(v1 + v122);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v236 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v236 + 28));

        v148 = *(v236 + 32);
LABEL_71:
        v225 = &v122[v148];
        goto LABEL_72;
      case 0xBu:
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v126);
        (*(v127 + 8))(v0 + v10);
        v128 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v129 = *(v128 + 20);
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v130);
        (*(v131 + 8))(&v122[v129]);
        if (*&v122[*(v128 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C0CC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA8BDC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_266C0CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA8BDC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_266C0CCAC()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v73 = v12 + v28;
        v1 = type metadata accessor for Location();
        v74 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v74, v75, v1))
        {
          v76 = v1[7];
          v77 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v77);
          (*(v78 + 8))(&v73[v76]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v73[v1[11]];
          v79 = type metadata accessor for Address();
          v80 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v80, v81, v79))
          {
            sub_266DA919C();
            v82 = OUTLINED_FUNCTION_109();
            v242 = v83;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, v84, v83);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v86, v87, v88, v89, v90, v91, v92, v239, v242);
              (*(v93 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v79[5]);
            OUTLINED_FUNCTION_70(v79[6]);
            v94 = OUTLINED_FUNCTION_70(v79[7]);
            v102 = OUTLINED_FUNCTION_115(v94, v95, v96, v97, v98, v99, v100, v101, v239, v242);
            if (!v102)
            {
              OUTLINED_FUNCTION_20_2(v102, v103, v104, v105, v106, v107, v108, v109, v239, v243);
              (*(v110 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v79[9]);
            OUTLINED_FUNCTION_70(v79[10]);
            OUTLINED_FUNCTION_70(v79[11]);
            v111 = *&v2[v79[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v241 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v241);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v239, v241);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v239 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v239, 1, v241))
              {
                OUTLINED_FUNCTION_9_3(v241);
                (*(v70 + 8))(v60 + v71);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v72 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v112 = v12[1];

        v113 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v114);
        }

        v115 = v12[8];

        v116 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v117 = v12[1];

        v118 = v12[3];

        v119 = type metadata accessor for Snippets.Contact();
        v120 = OUTLINED_FUNCTION_98(v119);
        OUTLINED_FUNCTION_8_0(v120);
        (*(v121 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v122 = (v0 + v10);
  v123 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v123, v124, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v149 = *(v122 + 1);

        v150 = *(v122 + 3);

        v151 = type metadata accessor for Snippets.Contact();
        v152 = OUTLINED_FUNCTION_96(v151);
        OUTLINED_FUNCTION_8_0(v152);
        (*(v153 + 8))(v1 + v122);
        v148 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v125 = *v122;
        goto LABEL_73;
      case 4u:
        v132 = *(v122 + 1);

        v133 = *(v122 + 3);

        v134 = *(v122 + 5);

        v135 = *(v122 + 6);

        v136 = &v122[*(type metadata accessor for Friend() + 40)];
        v137 = type metadata accessor for FriendLocation();
        v138 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v138, v139, v137))
        {
          break;
        }

        v140 = *(v136 + 1);

        v141 = &v136[*(v137 + 32)];
LABEL_59:
        v211 = type metadata accessor for Location();
        v212 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v212, v213, v211))
        {
          break;
        }

        v214 = v211[7];
        v215 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v215);
        (*(v216 + 8))(&v141[v214]);
        v217 = *&v141[v211[8] + 8];

        v218 = &v141[v211[11]];
        v219 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v219))
        {
          v220 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v218, 1, v220))
          {
            OUTLINED_FUNCTION_9_3(v220);
            (*(v221 + 8))(v218, v220);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v222 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v218 + v222, 1, v220))
          {
            OUTLINED_FUNCTION_9_3(v220);
            (*(v223 + 8))(v218 + v222, v220);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v224 = *(v218 + *(v2 + 12));
        }

        v225 = &v141[v211[12]];
LABEL_72:
        v237 = *(v225 + 1);
LABEL_73:

        break;
      case 5u:
        v160 = *(v122 + 1);

        v161 = *(v122 + 3);

        v162 = *(v122 + 5);

        v163 = *(v122 + 6);

        v164 = &v122[*(type metadata accessor for Friend() + 40)];
        v165 = type metadata accessor for FriendLocation();
        v166 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v166, v167, v165))
        {
          v168 = *(v164 + 1);

          v169 = &v164[*(v165 + 32)];
          v170 = type metadata accessor for Location();
          v171 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v171, v172, v170))
          {
            v173 = v170[7];
            v174 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v174);
            (*(v175 + 8))(&v169[v173]);
            v176 = *&v169[v170[8] + 8];

            v2 = &v169[v170[11]];
            v177 = type metadata accessor for Address();
            v178 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v178, v179, v177))
            {
              sub_266DA919C();
              v180 = OUTLINED_FUNCTION_109();
              v244 = v181;
              v183 = __swift_getEnumTagSinglePayload(v180, v182, v181);
              if (!v183)
              {
                OUTLINED_FUNCTION_20_2(v183, v184, v185, v186, v187, v188, v189, v190, v239, v244);
                (*(v191 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v177[5]);
              OUTLINED_FUNCTION_70(v177[6]);
              v192 = OUTLINED_FUNCTION_70(v177[7]);
              v200 = OUTLINED_FUNCTION_115(v192, v193, v194, v195, v196, v197, v198, v199, v239, v244);
              if (!v200)
              {
                OUTLINED_FUNCTION_20_2(v200, v201, v202, v203, v204, v205, v206, v207, v240, v245);
                (*(v208 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v177[9]);
              OUTLINED_FUNCTION_70(v177[10]);
              OUTLINED_FUNCTION_70(v177[11]);
              v209 = *&v2[v177[12]];
            }

            v210 = *&v169[v170[12] + 8];
          }
        }

        v141 = &v122[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v226 = *(v122 + 1);

        v227 = *(v122 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v122 + 5), v228);
        }

        v229 = *(v122 + 8);

        v230 = *(v122 + 10);
        goto LABEL_73;
      case 7u:
        v154 = *(v122 + 1);

        v155 = *(v122 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v122 + 5), v156);
        }

        v157 = *(v122 + 8);

        v158 = *(v122 + 10);

        v159 = *(v122 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v122 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v142 = *(v122 + 1);

        v143 = *(v122 + 3);

        v144 = type metadata accessor for Snippets.Contact();
        v145 = OUTLINED_FUNCTION_96(v144);
        OUTLINED_FUNCTION_8_0(v145);
        (*(v146 + 8))(v1 + v122);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v147 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v147 + 20));

        v148 = *(v147 + 24);
        goto LABEL_71;
      case 0xAu:
        v231 = *(v122 + 1);

        v232 = *(v122 + 3);

        v233 = type metadata accessor for Snippets.Contact();
        v234 = OUTLINED_FUNCTION_96(v233);
        OUTLINED_FUNCTION_8_0(v234);
        (*(v235 + 8))(v1 + v122);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v236 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v236 + 28));

        v148 = *(v236 + 32);
LABEL_71:
        v225 = &v122[v148];
        goto LABEL_72;
      case 0xBu:
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v126);
        (*(v127 + 8))(v0 + v10);
        v128 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v129 = *(v128 + 20);
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v130);
        (*(v131 + 8))(&v122[v129]);
        if (*&v122[*(v128 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C0D9CC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0DA9C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_21_2();
  v6 = sub_266DA746C();
  v7 = OUTLINED_FUNCTION_20_3(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[7];
LABEL_5:

    return __swift_getEnumTagSinglePayload(v3 + v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v12 = OUTLINED_FUNCTION_20_3(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[11];
    goto LABEL_5;
  }

  v15 = *(v3 + a3[12] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_266C0DB94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_21_2();
  v8 = sub_266DA746C();
  v9 = OUTLINED_FUNCTION_20_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[7];
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
    result = OUTLINED_FUNCTION_20_3(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + a4[12] + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[11];
  }

  return __swift_storeEnumTagSinglePayload(v4 + v12, a2, a2, v11);
}

uint64_t sub_266C0DD58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266C0DDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C0DEE4()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0DF18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C0DF80()
{
  OUTLINED_FUNCTION_4_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_266C0DFBC()
{
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_266C0DFF0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0E030()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_266C0E070()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0E0B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0E158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPCoreDeviceSearcher();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266C0E208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FMIPCoreDeviceSearcher();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266C0E2B8()
{
  v1 = type metadata accessor for FMIPCoreDevicePinger();
  OUTLINED_FUNCTION_24_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0 + v7;
  OUTLINED_FUNCTION_2_19();
  __swift_destroy_boxed_opaque_existential_0((v9 + 216));
  __swift_destroy_boxed_opaque_existential_0((v9 + 256));
  v10 = type metadata accessor for FMIPCoreDeviceSearcher();
  v11 = *(v10 + 52);
  v12 = sub_266DAAB4C();
  OUTLINED_FUNCTION_8_0(v12);
  (*(v13 + 8))(v9 + v11);

  OUTLINED_FUNCTION_6_15();
  __swift_destroy_boxed_opaque_existential_0((v0 + v8));

  return MEMORY[0x2821FE8E8](v0, v8 + 40, v6 | 7);
}

uint64_t sub_266C0E3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = sub_266DA7FDC();
  if (*(*(v8 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v8);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_266C0E484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  result = sub_266DA7FDC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266C0E7E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_266C0E830()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  v2 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_266C0E8A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j__swift_bridgeObjectRetain(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_266C0E914()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C0E9A4()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v71 = v12 + v28;
        v1 = type metadata accessor for Location();
        v72 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v72, v73, v1))
        {
          v74 = v1[7];
          v75 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v75);
          (*(v76 + 8))(&v71[v74]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v71[v1[11]];
          v77 = type metadata accessor for Address();
          v78 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
          {
            sub_266DA919C();
            v80 = OUTLINED_FUNCTION_109();
            v238 = v81;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v82, v81);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v84, v85, v86, v87, v88, v89, v90, v235, v238);
              (*(v91 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v77[5]);
            OUTLINED_FUNCTION_70(v77[6]);
            v92 = OUTLINED_FUNCTION_70(v77[7]);
            v100 = OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v235, v238);
            if (!v100)
            {
              OUTLINED_FUNCTION_20_2(v100, v101, v102, v103, v104, v105, v106, v107, v235, v239);
              (*(v108 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v77[9]);
            OUTLINED_FUNCTION_70(v77[10]);
            OUTLINED_FUNCTION_70(v77[11]);
            v109 = *&v2[v77[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v237 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v237);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v235, v237);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v235 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v235, 1, v237))
              {
                (*(*(v237 - 8) + 8))(v60 + v235);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v70 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v110 = v12[1];

        v111 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v112);
        }

        v113 = v12[8];

        v114 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v115 = v12[1];

        v116 = v12[3];

        v117 = type metadata accessor for Snippets.Contact();
        v118 = OUTLINED_FUNCTION_98(v117);
        OUTLINED_FUNCTION_8_0(v118);
        (*(v119 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v120 = (v0 + v10);
  v121 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v121, v122, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v147 = *(v120 + 1);

        v148 = *(v120 + 3);

        v149 = type metadata accessor for Snippets.Contact();
        v150 = OUTLINED_FUNCTION_96(v149);
        OUTLINED_FUNCTION_8_0(v150);
        (*(v151 + 8))(v1 + v120);
        v146 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v123 = *v120;
        goto LABEL_73;
      case 4u:
        v130 = *(v120 + 1);

        v131 = *(v120 + 3);

        v132 = *(v120 + 5);

        v133 = *(v120 + 6);

        v134 = &v120[*(type metadata accessor for Friend() + 40)];
        v135 = type metadata accessor for FriendLocation();
        v136 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v136, v137, v135))
        {
          break;
        }

        v138 = *(v134 + 1);

        v139 = &v134[*(v135 + 32)];
LABEL_59:
        v209 = type metadata accessor for Location();
        v210 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v210, v211, v209))
        {
          break;
        }

        v212 = v209[7];
        v213 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v213);
        (*(v214 + 8))(&v139[v212]);
        v215 = *&v139[v209[8] + 8];

        v216 = &v139[v209[11]];
        v217 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v217))
        {
          v218 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v216, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v219 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v216 + v219, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216 + v219, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v220 = *(v216 + *(v2 + 12));
        }

        v221 = &v139[v209[12]];
LABEL_72:
        v233 = *(v221 + 1);
LABEL_73:

        break;
      case 5u:
        v158 = *(v120 + 1);

        v159 = *(v120 + 3);

        v160 = *(v120 + 5);

        v161 = *(v120 + 6);

        v162 = &v120[*(type metadata accessor for Friend() + 40)];
        v163 = type metadata accessor for FriendLocation();
        v164 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v164, v165, v163))
        {
          v166 = *(v162 + 1);

          v167 = &v162[*(v163 + 32)];
          v168 = type metadata accessor for Location();
          v169 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
          {
            v171 = v168[7];
            v172 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v172);
            (*(v173 + 8))(&v167[v171]);
            v174 = *&v167[v168[8] + 8];

            v2 = &v167[v168[11]];
            v175 = type metadata accessor for Address();
            v176 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v176, v177, v175))
            {
              sub_266DA919C();
              v178 = OUTLINED_FUNCTION_109();
              v240 = v179;
              v181 = __swift_getEnumTagSinglePayload(v178, v180, v179);
              if (!v181)
              {
                OUTLINED_FUNCTION_20_2(v181, v182, v183, v184, v185, v186, v187, v188, v235, v240);
                (*(v189 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v175[5]);
              OUTLINED_FUNCTION_70(v175[6]);
              v190 = OUTLINED_FUNCTION_70(v175[7]);
              v198 = OUTLINED_FUNCTION_115(v190, v191, v192, v193, v194, v195, v196, v197, v235, v240);
              if (!v198)
              {
                OUTLINED_FUNCTION_20_2(v198, v199, v200, v201, v202, v203, v204, v205, v236, v241);
                (*(v206 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v175[9]);
              OUTLINED_FUNCTION_70(v175[10]);
              OUTLINED_FUNCTION_70(v175[11]);
              v207 = *&v2[v175[12]];
            }

            v208 = *&v167[v168[12] + 8];
          }
        }

        v139 = &v120[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v222 = *(v120 + 1);

        v223 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v224);
        }

        v225 = *(v120 + 8);

        v226 = *(v120 + 10);
        goto LABEL_73;
      case 7u:
        v152 = *(v120 + 1);

        v153 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v154);
        }

        v155 = *(v120 + 8);

        v156 = *(v120 + 10);

        v157 = *(v120 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v120 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v140 = *(v120 + 1);

        v141 = *(v120 + 3);

        v142 = type metadata accessor for Snippets.Contact();
        v143 = OUTLINED_FUNCTION_96(v142);
        OUTLINED_FUNCTION_8_0(v143);
        (*(v144 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v145 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v145 + 20));

        v146 = *(v145 + 24);
        goto LABEL_71;
      case 0xAu:
        v227 = *(v120 + 1);

        v228 = *(v120 + 3);

        v229 = type metadata accessor for Snippets.Contact();
        v230 = OUTLINED_FUNCTION_96(v229);
        OUTLINED_FUNCTION_8_0(v230);
        (*(v231 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v232 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v232 + 28));

        v146 = *(v232 + 32);
LABEL_71:
        v221 = &v120[v146];
        goto LABEL_72;
      case 0xBu:
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v124);
        (*(v125 + 8))(v0 + v10);
        v126 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v127 = *(v126 + 20);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v128);
        (*(v129 + 8))(&v120[v127]);
        if (*&v120[*(v126 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C0F680()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  OUTLINED_FUNCTION_54_2();
  v2 = v0[29];

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_266C0F6CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_54_2();
  v2 = *(v0 + 240);

  v3 = *(v0 + 256);

  return MEMORY[0x2821FE8E8](v0, 264, 7);
}

uint64_t sub_266C0F808()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C0F83C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_266C0F904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_2();
  v6 = sub_266DA750C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    FriendSnippetType = v6;
    v8 = v3;
  }

  else
  {
    FriendSnippetType = type metadata accessor for FindFriendSnippetType(0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, FriendSnippetType);
}

uint64_t sub_266C0F99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_2();
  v8 = sub_266DA750C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    FriendSnippetType = v8;
    v10 = v4;
  }

  else
  {
    FriendSnippetType = type metadata accessor for FindFriendSnippetType(0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, FriendSnippetType);
}

uint64_t sub_266C0FAE0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_266C0FB30()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0FB68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  v2 = v0[28];

  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  v3 = v0[34];

  __swift_destroy_boxed_opaque_existential_0(v0 + 35);
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  __swift_destroy_boxed_opaque_existential_0(v0 + 45);
  __swift_destroy_boxed_opaque_existential_0(v0 + 50);
  v4 = v0[55];

  return MEMORY[0x2821FE8E8](v0, 448, 7);
}

uint64_t sub_266C0FC08()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_266C0FC58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C0FC90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_266C0FD10(uint64_t a1)
{
  OUTLINED_FUNCTION_12_13(a1);
  sub_266CB7990();
  *v1 = v2;
}

uint64_t sub_266C0FD50()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_266C0FDA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C0FDE0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_266C0FE30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C0FE68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266C0FEA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C0FEE8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C0FF28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  v2 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_266C0FF78@<X0>(_BYTE *a1@<X8>)
{
  result = Snippets.SetSharedLocationVisibilityResult.alreadySet.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_266C0FFD0@<X0>(unint64_t *a1@<X8>)
{
  result = Snippets.SetSharedLocationVisibilityResult.visibility.getter();
  *a1 = result;
  return result;
}

uint64_t sub_266C10024@<X0>(_BYTE *a1@<X8>)
{
  result = Snippets.SetSharedLocationVisibilityResult.isVisible.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266C1007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  v7 = OUTLINED_FUNCTION_20_3(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  v12 = OUTLINED_FUNCTION_20_3(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 16);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  v17 = v16 <= 0;
  if (v16 < 0)
  {
    v16 = -1;
  }

  if (v17)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_266C10190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  v9 = OUTLINED_FUNCTION_20_3(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
    result = OUTLINED_FUNCTION_20_3(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 + 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_266C102D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C10308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v7);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C10354(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 2);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();

  return __swift_storeEnumTagSinglePayload(a1, v6, a3, v9);
}

uint64_t sub_266C103CC()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v73 = v12 + v28;
        v1 = type metadata accessor for Location();
        v74 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v74, v75, v1))
        {
          v76 = v1[7];
          v77 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v77);
          (*(v78 + 8))(&v73[v76]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v73[v1[11]];
          v79 = type metadata accessor for Address();
          v80 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v80, v81, v79))
          {
            sub_266DA919C();
            v82 = OUTLINED_FUNCTION_109();
            v242 = v83;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, v84, v83);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v86, v87, v88, v89, v90, v91, v92, v239, v242);
              (*(v93 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v79[5]);
            OUTLINED_FUNCTION_70(v79[6]);
            v94 = OUTLINED_FUNCTION_70(v79[7]);
            v102 = OUTLINED_FUNCTION_115(v94, v95, v96, v97, v98, v99, v100, v101, v239, v242);
            if (!v102)
            {
              OUTLINED_FUNCTION_20_2(v102, v103, v104, v105, v106, v107, v108, v109, v239, v243);
              (*(v110 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v79[9]);
            OUTLINED_FUNCTION_70(v79[10]);
            OUTLINED_FUNCTION_70(v79[11]);
            v111 = *&v2[v79[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v241 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v241);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v239, v241);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v239 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v239, 1, v241))
              {
                OUTLINED_FUNCTION_9_3(v241);
                (*(v70 + 8))(v60 + v71);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v72 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v112 = v12[1];

        v113 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v114);
        }

        v115 = v12[8];

        v116 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v117 = v12[1];

        v118 = v12[3];

        v119 = type metadata accessor for Snippets.Contact();
        v120 = OUTLINED_FUNCTION_98(v119);
        OUTLINED_FUNCTION_8_0(v120);
        (*(v121 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v122 = (v0 + v10);
  v123 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v123, v124, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v149 = *(v122 + 1);

        v150 = *(v122 + 3);

        v151 = type metadata accessor for Snippets.Contact();
        v152 = OUTLINED_FUNCTION_96(v151);
        OUTLINED_FUNCTION_8_0(v152);
        (*(v153 + 8))(v1 + v122);
        v148 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v125 = *v122;
        goto LABEL_73;
      case 4u:
        v132 = *(v122 + 1);

        v133 = *(v122 + 3);

        v134 = *(v122 + 5);

        v135 = *(v122 + 6);

        v136 = &v122[*(type metadata accessor for Friend() + 40)];
        v137 = type metadata accessor for FriendLocation();
        v138 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v138, v139, v137))
        {
          break;
        }

        v140 = *(v136 + 1);

        v141 = &v136[*(v137 + 32)];
LABEL_59:
        v211 = type metadata accessor for Location();
        v212 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v212, v213, v211))
        {
          break;
        }

        v214 = v211[7];
        v215 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v215);
        (*(v216 + 8))(&v141[v214]);
        v217 = *&v141[v211[8] + 8];

        v218 = &v141[v211[11]];
        v219 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v219))
        {
          v220 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v218, 1, v220))
          {
            OUTLINED_FUNCTION_9_3(v220);
            (*(v221 + 8))(v218, v220);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v222 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v218 + v222, 1, v220))
          {
            OUTLINED_FUNCTION_9_3(v220);
            (*(v223 + 8))(v218 + v222, v220);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v224 = *(v218 + *(v2 + 12));
        }

        v225 = &v141[v211[12]];
LABEL_72:
        v237 = *(v225 + 1);
LABEL_73:

        break;
      case 5u:
        v160 = *(v122 + 1);

        v161 = *(v122 + 3);

        v162 = *(v122 + 5);

        v163 = *(v122 + 6);

        v164 = &v122[*(type metadata accessor for Friend() + 40)];
        v165 = type metadata accessor for FriendLocation();
        v166 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v166, v167, v165))
        {
          v168 = *(v164 + 1);

          v169 = &v164[*(v165 + 32)];
          v170 = type metadata accessor for Location();
          v171 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v171, v172, v170))
          {
            v173 = v170[7];
            v174 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v174);
            (*(v175 + 8))(&v169[v173]);
            v176 = *&v169[v170[8] + 8];

            v2 = &v169[v170[11]];
            v177 = type metadata accessor for Address();
            v178 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v178, v179, v177))
            {
              sub_266DA919C();
              v180 = OUTLINED_FUNCTION_109();
              v244 = v181;
              v183 = __swift_getEnumTagSinglePayload(v180, v182, v181);
              if (!v183)
              {
                OUTLINED_FUNCTION_20_2(v183, v184, v185, v186, v187, v188, v189, v190, v239, v244);
                (*(v191 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v177[5]);
              OUTLINED_FUNCTION_70(v177[6]);
              v192 = OUTLINED_FUNCTION_70(v177[7]);
              v200 = OUTLINED_FUNCTION_115(v192, v193, v194, v195, v196, v197, v198, v199, v239, v244);
              if (!v200)
              {
                OUTLINED_FUNCTION_20_2(v200, v201, v202, v203, v204, v205, v206, v207, v240, v245);
                (*(v208 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v177[9]);
              OUTLINED_FUNCTION_70(v177[10]);
              OUTLINED_FUNCTION_70(v177[11]);
              v209 = *&v2[v177[12]];
            }

            v210 = *&v169[v170[12] + 8];
          }
        }

        v141 = &v122[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v226 = *(v122 + 1);

        v227 = *(v122 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v122 + 5), v228);
        }

        v229 = *(v122 + 8);

        v230 = *(v122 + 10);
        goto LABEL_73;
      case 7u:
        v154 = *(v122 + 1);

        v155 = *(v122 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v122 + 5), v156);
        }

        v157 = *(v122 + 8);

        v158 = *(v122 + 10);

        v159 = *(v122 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v122 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v142 = *(v122 + 1);

        v143 = *(v122 + 3);

        v144 = type metadata accessor for Snippets.Contact();
        v145 = OUTLINED_FUNCTION_96(v144);
        OUTLINED_FUNCTION_8_0(v145);
        (*(v146 + 8))(v1 + v122);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v147 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v147 + 20));

        v148 = *(v147 + 24);
        goto LABEL_71;
      case 0xAu:
        v231 = *(v122 + 1);

        v232 = *(v122 + 3);

        v233 = type metadata accessor for Snippets.Contact();
        v234 = OUTLINED_FUNCTION_96(v233);
        OUTLINED_FUNCTION_8_0(v234);
        (*(v235 + 8))(v1 + v122);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v236 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v236 + 28));

        v148 = *(v236 + 32);
LABEL_71:
        v225 = &v122[v148];
        goto LABEL_72;
      case 0xBu:
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v126);
        (*(v127 + 8))(v0 + v10);
        v128 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v129 = *(v128 + 20);
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v130);
        (*(v131 + 8))(&v122[v129]);
        if (*&v122[*(v128 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C11098(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_266DAAB4C();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266C11120(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266DAAB4C();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C111A0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C111D8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C1120C()
{
  v3 = type metadata accessor for FMIPCoreDeviceSearcher();
  OUTLINED_FUNCTION_24_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v5 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v9;
  OUTLINED_FUNCTION_2_19();
  v12 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_0(v12);
  (*(v13 + 8))(v11 + v2);

  v14 = *(v1 + v10);

  return MEMORY[0x2821FE8E8](v1, v10 + 8, v8 | 7);
}

uint64_t sub_266C112F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C113BC()
{
  v1 = type metadata accessor for GEOServicesReverseGeocoder();
  OUTLINED_FUNCTION_11_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Location();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = sub_266DA750C();
  OUTLINED_FUNCTION_0(v11);
  (*(v12 + 8))(v0 + v4);
  v13 = v7[7];
  v14 = sub_266DA746C();
  OUTLINED_FUNCTION_0(v14);
  (*(v15 + 8))(v0 + v9 + v13);
  v16 = *(v0 + v9 + v7[8] + 8);

  v17 = v0 + v9 + v7[11];
  v18 = type metadata accessor for Address();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    v24 = v10;
    v19 = sub_266DA919C();
    if (!__swift_getEnumTagSinglePayload(v17, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v17, v19);
    }

    OUTLINED_FUNCTION_13_12(v18[5]);
    OUTLINED_FUNCTION_13_12(v18[6]);
    OUTLINED_FUNCTION_13_12(v18[7]);
    v20 = v18[8];
    if (!__swift_getEnumTagSinglePayload(v17 + v20, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v17 + v20, v19);
    }

    OUTLINED_FUNCTION_13_12(v18[9]);
    OUTLINED_FUNCTION_13_12(v18[10]);
    OUTLINED_FUNCTION_13_12(v18[11]);
    v21 = *(v17 + v18[12]);

    v10 = v24;
  }

  v22 = *(v0 + v9 + v7[12] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v8 | 7);
}

uint64_t sub_266C11664()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C116AC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C116EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11728(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA8BDC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_266C11770(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA8BDC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_266C117BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C117F4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C1182C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C11864()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C118A4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C118D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C11928()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_266C11990()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266C119D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266C11A08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11A40()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C11A88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C11B14()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  sub_266C17E24(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_266C11BC8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_266C11C18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11C50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C11C88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C11CD4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266C11D1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11D94()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C11DCC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C11E0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C11E44()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_266C11E8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C12030()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266C12068()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C120B0()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v71 = v12 + v28;
        v1 = type metadata accessor for Location();
        v72 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v72, v73, v1))
        {
          v74 = v1[7];
          v75 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v75);
          (*(v76 + 8))(&v71[v74]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v71[v1[11]];
          v77 = type metadata accessor for Address();
          v78 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
          {
            sub_266DA919C();
            v80 = OUTLINED_FUNCTION_109();
            v238 = v81;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v82, v81);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v84, v85, v86, v87, v88, v89, v90, v235, v238);
              (*(v91 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v77[5]);
            OUTLINED_FUNCTION_70(v77[6]);
            v92 = OUTLINED_FUNCTION_70(v77[7]);
            v100 = OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v235, v238);
            if (!v100)
            {
              OUTLINED_FUNCTION_20_2(v100, v101, v102, v103, v104, v105, v106, v107, v235, v239);
              (*(v108 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v77[9]);
            OUTLINED_FUNCTION_70(v77[10]);
            OUTLINED_FUNCTION_70(v77[11]);
            v109 = *&v2[v77[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v237 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v237);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v235, v237);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v235 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v235, 1, v237))
              {
                (*(*(v237 - 8) + 8))(v60 + v235);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v70 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v110 = v12[1];

        v111 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v112);
        }

        v113 = v12[8];

        v114 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v115 = v12[1];

        v116 = v12[3];

        v117 = type metadata accessor for Snippets.Contact();
        v118 = OUTLINED_FUNCTION_98(v117);
        OUTLINED_FUNCTION_8_0(v118);
        (*(v119 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v120 = (v0 + v10);
  v121 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v121, v122, v13))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v147 = *(v120 + 1);

        v148 = *(v120 + 3);

        v149 = type metadata accessor for Snippets.Contact();
        v150 = OUTLINED_FUNCTION_96(v149);
        OUTLINED_FUNCTION_8_0(v150);
        (*(v151 + 8))(v1 + v120);
        v146 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v123 = *v120;
        goto LABEL_73;
      case 4u:
        v130 = *(v120 + 1);

        v131 = *(v120 + 3);

        v132 = *(v120 + 5);

        v133 = *(v120 + 6);

        v134 = &v120[*(type metadata accessor for Friend() + 40)];
        v135 = type metadata accessor for FriendLocation();
        v136 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v136, v137, v135))
        {
          break;
        }

        v138 = *(v134 + 1);

        v139 = &v134[*(v135 + 32)];
LABEL_59:
        v209 = type metadata accessor for Location();
        v210 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v210, v211, v209))
        {
          break;
        }

        v212 = v209[7];
        v213 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v213);
        (*(v214 + 8))(&v139[v212]);
        v215 = *&v139[v209[8] + 8];

        v216 = &v139[v209[11]];
        v217 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v217))
        {
          v218 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v216, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v219 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v216 + v219, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216 + v219, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v220 = *(v216 + *(v2 + 12));
        }

        v221 = &v139[v209[12]];
LABEL_72:
        v233 = *(v221 + 1);
LABEL_73:

        break;
      case 5u:
        v158 = *(v120 + 1);

        v159 = *(v120 + 3);

        v160 = *(v120 + 5);

        v161 = *(v120 + 6);

        v162 = &v120[*(type metadata accessor for Friend() + 40)];
        v163 = type metadata accessor for FriendLocation();
        v164 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v164, v165, v163))
        {
          v166 = *(v162 + 1);

          v167 = &v162[*(v163 + 32)];
          v168 = type metadata accessor for Location();
          v169 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
          {
            v171 = v168[7];
            v172 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v172);
            (*(v173 + 8))(&v167[v171]);
            v174 = *&v167[v168[8] + 8];

            v2 = &v167[v168[11]];
            v175 = type metadata accessor for Address();
            v176 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v176, v177, v175))
            {
              sub_266DA919C();
              v178 = OUTLINED_FUNCTION_109();
              v240 = v179;
              v181 = __swift_getEnumTagSinglePayload(v178, v180, v179);
              if (!v181)
              {
                OUTLINED_FUNCTION_20_2(v181, v182, v183, v184, v185, v186, v187, v188, v235, v240);
                (*(v189 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v175[5]);
              OUTLINED_FUNCTION_70(v175[6]);
              v190 = OUTLINED_FUNCTION_70(v175[7]);
              v198 = OUTLINED_FUNCTION_115(v190, v191, v192, v193, v194, v195, v196, v197, v235, v240);
              if (!v198)
              {
                OUTLINED_FUNCTION_20_2(v198, v199, v200, v201, v202, v203, v204, v205, v236, v241);
                (*(v206 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v175[9]);
              OUTLINED_FUNCTION_70(v175[10]);
              OUTLINED_FUNCTION_70(v175[11]);
              v207 = *&v2[v175[12]];
            }

            v208 = *&v167[v168[12] + 8];
          }
        }

        v139 = &v120[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v222 = *(v120 + 1);

        v223 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v224);
        }

        v225 = *(v120 + 8);

        v226 = *(v120 + 10);
        goto LABEL_73;
      case 7u:
        v152 = *(v120 + 1);

        v153 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v154);
        }

        v155 = *(v120 + 8);

        v156 = *(v120 + 10);

        v157 = *(v120 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v120 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v140 = *(v120 + 1);

        v141 = *(v120 + 3);

        v142 = type metadata accessor for Snippets.Contact();
        v143 = OUTLINED_FUNCTION_96(v142);
        OUTLINED_FUNCTION_8_0(v143);
        (*(v144 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v145 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v145 + 20));

        v146 = *(v145 + 24);
        goto LABEL_71;
      case 0xAu:
        v227 = *(v120 + 1);

        v228 = *(v120 + 3);

        v229 = type metadata accessor for Snippets.Contact();
        v230 = OUTLINED_FUNCTION_96(v229);
        OUTLINED_FUNCTION_8_0(v230);
        (*(v231 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v232 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v232 + 28));

        v146 = *(v232 + 32);
LABEL_71:
        v221 = &v120[v146];
        goto LABEL_72;
      case 0xBu:
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v124);
        (*(v125 + 8))(v0 + v10);
        v126 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v127 = *(v126 + 20);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v128);
        (*(v129 + 8))(&v120[v127]);
        if (*&v120[*(v126 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266C12D8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C12DC4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_266C12DFC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266C12F44()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C12F80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C12FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, FriendSessionManager);
}

uint64_t sub_266C13044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, FriendSessionManager);
}

uint64_t sub_266C130D8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266C13130(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_266DA74AC();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266C131B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_266DA74AC();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C13268()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_266C132A0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266C132E0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C1331C()
{
  v1 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 209) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v14 = *(v0 + 64);

  OUTLINED_FUNCTION_69_2();
  v15 = *(v0 + 200);

  v16 = *(v3 + 8);
  v16(v0 + v5, v1);
  if (!__swift_getEnumTagSinglePayload(v0 + v11, 1, v1))
  {
    v16(v0 + v11, v1);
  }

  v17 = (v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17);

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v4 | v10 | 7);
}

uint64_t sub_266C1349C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 216) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2(v7);
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v13 = *(v0 + 64);

  OUTLINED_FUNCTION_69_2();
  v14 = *(v0 + 208);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(v9 + 8))(v0 + v4, v7);
  }

  v15 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v10 + 8) & ~v10;
  v17 = *(v0 + v15);

  (*(v9 + 8))(v0 + v16, v7);

  return MEMORY[0x2821FE8E8](v0, v16 + v12, v3 | v10 | 7);
}

uint64_t sub_266C137E8()
{
  v1 = (type metadata accessor for DeviceLocationDescriptionProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3));
  v5 = *(v0 + v3 + 40);

  v6 = v1[8];
  v7 = sub_266DA750C();
  OUTLINED_FUNCTION_0(v7);
  (*(v8 + 8))(v0 + v3 + v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_266C138E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266C13920()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_62_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_266C1397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_266C13A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_266C13B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_8();
  v6 = type metadata accessor for Snippets.Contact();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266C13BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snippets.Contact();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266C13DE4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_266C13E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

BOOL sub_266C13FB8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_266C14064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_2();
  v6 = type metadata accessor for Friend();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_266C14108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_2();
  v8 = type metadata accessor for Friend();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_266C1428C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266C142CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_266C14314()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_1_51();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266C14348()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

char *sub_266C143B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

uint64_t sub_266C14448()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_266C1454C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266C14588()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C146D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_266C14770(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266C14834()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_266C149F8()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266C14A38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v3 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_266C14ABC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266D7CDE8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_266C14AEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C14B0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_266C14B44()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_266C14B50()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t sub_266C14BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_266C14C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_266C14E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_8();
  v6 = type metadata accessor for Snippets.Contact();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 28) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_266C14EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snippets.Contact();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266C15080@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_266C2BA98(a1, a2);
}

uint64_t sub_266C15100()
{
  v1 = type metadata accessor for GEOServicesReverseGeocoder();
  OUTLINED_FUNCTION_11_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Location();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = sub_266DA750C();
  OUTLINED_FUNCTION_0(v11);
  (*(v12 + 8))(v0 + v4);
  v13 = v7[7];
  v14 = sub_266DA746C();
  OUTLINED_FUNCTION_0(v14);
  (*(v15 + 8))(v0 + v9 + v13);
  v16 = *(v0 + v9 + v7[8] + 8);

  v17 = v0 + v9 + v7[11];
  v18 = type metadata accessor for Address();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    v24 = v10;
    v19 = sub_266DA919C();
    if (!__swift_getEnumTagSinglePayload(v17, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v17, v19);
    }

    OUTLINED_FUNCTION_13_12(v18[5]);
    OUTLINED_FUNCTION_13_12(v18[6]);
    OUTLINED_FUNCTION_13_12(v18[7]);
    v20 = v18[8];
    if (!__swift_getEnumTagSinglePayload(v17 + v20, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v17 + v20, v19);
    }

    OUTLINED_FUNCTION_13_12(v18[9]);
    OUTLINED_FUNCTION_13_12(v18[10]);
    OUTLINED_FUNCTION_13_12(v18[11]);
    v21 = *(v17 + v18[12]);

    v10 = v24;
  }

  v22 = *(v0 + v9 + v7[12] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v10 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4, v3 | v8 | 7);
}

uint64_t sub_266C153A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_2();
  v4 = sub_266DA750C();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_266C153EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_2();
  v4 = sub_266DA750C();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_266C15434()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDFA0, &qword_266DBF870);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_266C154C0()
{
  v1 = sub_266DA750C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_266C15584()
{
  sub_266D77B84(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266C15638()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C15670()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266C156AC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_266C15750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266D9EF10();
  *a2 = result;
  return result;
}

uint64_t sub_266C157EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266D9FFD8();
  *a2 = result;
  return result;
}

id sub_266C15840@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visibility];
  *a2 = result;
  return result;
}

uint64_t sub_266C15888@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266DA0EDC();
  *a2 = result;
  return result;
}

id sub_266C15964@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trigger];
  *a2 = result;
  return result;
}

id sub_266C159AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 action];
  *a2 = result;
  return result;
}

uint64_t sub_266C15A0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266DA1BB0();
  *a2 = result;
  return result;
}

id sub_266C15B8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceLocality];
  *a2 = result;
  return result;
}

id sub_266C15CA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceSpecificityLevel];
  *a2 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy12DeviceSearchV5QueryVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_266C16230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CB0CF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266C16270(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C16290(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_266C162E0(uint64_t a1, int a2)
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

uint64_t sub_266C16300(uint64_t result, int a2, int a3)
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

uint64_t sub_266C16368()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C90C8);
  v1 = __swift_project_value_buffer(v0, qword_2800C90C8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C16430(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))(v16);
  v4 = v16[0];
  if (v17 != 2)
  {
    sub_266C17E24(v16[0], v16[1], v17);
    return 2;
  }

  v5 = LOBYTE(v16[0]);
  if (LOBYTE(v16[0]) != 2 && (sub_266C1A06C(v16[0] & 1) & 1) != 0)
  {
    return 2;
  }

  v6 = *(a2 + 16);
  if (v6(a1, a2))
  {
    v7 = OUTLINED_FUNCTION_2();
    if (v8(v7) == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 2;
  }

  if (v6(a1, a2))
  {
    if (v5 == 2)
    {
      return v9;
    }

    v11 = 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2();
    v14 = v13(v12);
    v11 = v14 == 2;
    if (v5 == 2)
    {
      if (v14 == 2)
      {
        return 1;
      }

      return v9;
    }
  }

  v15 = sub_266C1A06C(v4 & 1);
  result = 1;
  if ((v15 & 1) == 0 && !v11)
  {
    return v9;
  }

  return result;
}

uint64_t sub_266C16588@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X8>)
{

  v2 = sub_266DA8B0C();
  if (!v2)
  {
    goto LABEL_7;
  }

  v5 = v2;
  if (!sub_266C3A14C(v2, v3, v4))
  {

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  sub_266CB9F54(0, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5F1780](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  sub_266DA865C();

  v7 = v10;
LABEL_8:
  v8 = sub_266DA8AFC();

  sub_266C1666C(v7, v8, a1);
}

uint64_t sub_266C1666C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X8>)
{
  v83 = a2;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95F0, &qword_266DAD570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v76 - v6;
  v82 = sub_266DA847C();
  v7 = *(v82 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v82);
  v76 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v79 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v76 - v16;
  v17 = sub_266DA879C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95F8, &qword_266DAD578);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v76 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9600, &unk_266DAD580);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v76 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v76 - v34;
  v85 = a1;
  v77 = v7;
  if (a1)
  {

    sub_266DA878C();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v76 - v34, 1, 1, v17);
  }

  (*(v18 + 104))(v33, *MEMORY[0x277D5E828], v17);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v17);
  v36 = *(v22 + 48);
  sub_266C186BC(v35, v25, &qword_2800C9600, &unk_266DAD580);
  sub_266C186BC(v33, &v25[v36], &qword_2800C9600, &unk_266DAD580);
  if (__swift_getEnumTagSinglePayload(v25, 1, v17) == 1)
  {
    sub_266C1825C(v33, &qword_2800C9600, &unk_266DAD580);
    sub_266C1825C(v35, &qword_2800C9600, &unk_266DAD580);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v25[v36], 1, v17);
    v38 = v84;
    if (EnumTagSinglePayload == 1)
    {
      sub_266C1825C(v25, &qword_2800C9600, &unk_266DAD580);
      v39 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_266C186BC(v25, v30, &qword_2800C9600, &unk_266DAD580);
  if (__swift_getEnumTagSinglePayload(&v25[v36], 1, v17) == 1)
  {
    sub_266C1825C(v33, &qword_2800C9600, &unk_266DAD580);
    sub_266C1825C(v35, &qword_2800C9600, &unk_266DAD580);
    (*(v18 + 8))(v30, v17);
    v38 = v84;
LABEL_9:
    sub_266C1825C(v25, &qword_2800C95F8, &qword_266DAD578);
    v39 = 0;
    goto LABEL_11;
  }

  (*(v18 + 32))(v21, &v25[v36], v17);
  sub_266C182B4(&unk_2800C9608, MEMORY[0x277D5E830]);
  v39 = sub_266DAA6EC();
  v40 = *(v18 + 8);
  v40(v21, v17);
  sub_266C1825C(v33, &qword_2800C9600, &unk_266DAD580);
  sub_266C1825C(v35, &qword_2800C9600, &unk_266DAD580);
  v40(v30, v17);
  sub_266C1825C(v25, &qword_2800C9600, &unk_266DAD580);
  v38 = v84;
LABEL_11:
  v41 = v85;
  v42 = v81;
  v43 = v82;
  v44 = v79;
  v45 = type metadata accessor for SetGeoFenceUsoIntentWrapper(0);
  *(v38 + v45[5]) = v39 & 1;
  v46 = v83;
  if (v39)
  {
    if (!v83 || (, v47 = sub_266DA890C(), , !v47))
    {
      v48 = 1;
      v44 = v78;
      goto LABEL_20;
    }

    v44 = v78;
    sub_266DA877C();
  }

  else
  {
    if (!v41)
    {
      v48 = 1;
      goto LABEL_20;
    }

    sub_266DA877C();
  }

  v48 = 0;
LABEL_20:
  v49 = sub_266DA8D0C();
  __swift_storeEnumTagSinglePayload(v44, v48, 1, v49);
  sub_266C17FCC(v44, v38);
  *(v38 + v45[6]) = 1;
  *(v38 + v45[7]) = 1;
  if (!v46)
  {
    goto LABEL_30;
  }

  v50 = sub_266DA891C();

  if (!v50)
  {
    goto LABEL_30;
  }

  if (!sub_266C3A14C(v50, v51, v52))
  {

LABEL_30:
    v54 = v80;
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v43);
LABEL_31:
    sub_266C1825C(v54, &qword_2800C95F0, &qword_266DAD570);
    *(v38 + v45[8]) = 0;
    if (!v46)
    {
LABEL_44:

      goto LABEL_45;
    }

    goto LABEL_32;
  }

  sub_266CB9F54(0, (v50 & 0xC000000000000001) == 0, v50);
  if ((v50 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5F1780](0, v50);
  }

  else
  {
    v53 = *(v50 + 32);
  }

  sub_266DA865C();

  if (!v86)
  {
    goto LABEL_30;
  }

  v54 = v80;
  sub_266DA846C();

  if (__swift_getEnumTagSinglePayload(v54, 1, v43) == 1)
  {
    goto LABEL_31;
  }

  v55 = v77;
  (*(v77 + 32))(v42, v54, v43);
  v56 = *MEMORY[0x277D5E3B8];
  v57 = v76;
  v84 = *(v55 + 104);
  v84(v76, v56, v43);
  v58 = sub_266C1A0EC(v42, v57);
  v59 = *(v55 + 8);
  v59(v57, v43);
  if (v58)
  {
    v59(v42, v43);
    v60 = v45[8];
    v61 = 1;
  }

  else
  {
    v84(v57, *MEMORY[0x277D5E3C0], v43);
    v75 = sub_266C1A0EC(v42, v57);
    v59(v57, v43);
    v59(v42, v43);
    v60 = v45[8];
    if ((v75 & 1) == 0)
    {
      *(v38 + v60) = 0;
      goto LABEL_32;
    }

    v61 = 2;
  }

  *(v38 + v60) = v61;
LABEL_32:

  v62 = sub_266DA88EC();

  v63 = sub_266DA88FC();

  if (v62)
  {

    v64 = sub_266DA898C();

    if (v64)
    {
      v65 = sub_266DA87AC();

      if (v65)
      {
        sub_266D907E0(v65, &v86);

LABEL_39:

        v68 = v87;
        v69 = v38 + v45[9];
        *v69 = v86;
        *(v69 + 16) = v68;
        return result;
      }
    }
  }

  if (v63)
  {

    v66 = sub_266DA87AC();

    if (v66)
    {
      sub_266D907E0(v66, &v86);

      goto LABEL_39;
    }
  }

  if (!v62)
  {

    goto LABEL_44;
  }

  v70 = sub_266DA899C();
  v72 = v71;

  if (!v72)
  {
LABEL_45:
    v73 = v38 + v45[9];
    *v73 = xmmword_266DAD420;
    v74 = 2;
    goto LABEL_46;
  }

  v73 = v38 + v45[9];
  *v73 = v70;
  *(v73 + 8) = v72;
  v74 = 1;
LABEL_46:
  *(v73 + 16) = v74;
  return result;
}

void sub_266C17094()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ContactNLIntent();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95D8, &unk_266DAD560);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v46 - v19;
  sub_266C56388(v16);
  v21 = sub_266DA867C();
  if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
  {
    sub_266C1825C(v16, &qword_2800C95D8, &unk_266DAD560);
    v22 = 1;
  }

  else
  {
    PersonIntentNode.toContactQuery()();
    (*(*(v21 - 8) + 8))(v16, v21);
    v22 = 0;
  }

  v23 = sub_266DA8D0C();
  __swift_storeEnumTagSinglePayload(v20, v22, 1, v23);
  sub_266C17FCC(v20, v3);
  if (qword_28156F710 != -1)
  {
LABEL_24:
    swift_once();
  }

  v46[1] = sub_266C182B4(&qword_28156F668, type metadata accessor for ContactNLIntent);
  v24 = sub_266DA874C();
  v25 = 0;
  v26 = *(v24 + 16);
  do
  {
    v27 = v25;
    if (v26 == v25)
    {
      break;
    }

    if (v25 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    ++v25;
    v28 = *(v24 + v27 + 32);
    sub_266C175B0();
  }

  while ((v29 & 1) == 0);
  v46[0] = v4;

  v30 = type metadata accessor for SetGeoFenceNLv3IntentWrapper(0);
  *(v3 + v30[5]) = v26 == v27;
  *(v3 + v30[6]) = 1;
  sub_266C1805C(v1, v12);
  *(v3 + v30[7]) = sub_266D5443C(v12);
  sub_266C1805C(v1, v12);
  *(v3 + v30[8]) = sub_266D546D8(v12);
  if (qword_2800C90C0 != -1)
  {
    swift_once();
  }

  v31 = sub_266DA94AC();
  __swift_project_value_buffer(v31, qword_2800C90C8);
  sub_266C1805C(v1, v10);
  v32 = sub_266DA948C();
  v33 = sub_266DAAB0C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v47 = v35;
    *v34 = 136315138;
    v36 = sub_266C565E0();
    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = 45;
    }

    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0xE100000000000000;
    }

    sub_266C180F8(v10);
    v40 = sub_266C22A3C(v38, v39, &v47);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_266C08000, v32, v33, "SetGeoFenceNLv3IntentWrapper personPlaceReference %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26D5F2480](v35, -1, -1);
    MEMORY[0x26D5F2480](v34, -1, -1);
  }

  else
  {

    sub_266C180F8(v10);
  }

  if (qword_28156F6F8 != -1)
  {
    swift_once();
  }

  sub_266DA873C();
  v41 = v47;
  v42 = sub_266C565E0();
  sub_266D90D14(v41, *(&v41 + 1), v42, v43, &v47);
  sub_266C180F8(v1);
  v44 = v48;
  v45 = v3 + v30[9];
  *v45 = v47;
  *(v45 + 16) = v44;
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C17594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return sub_266C186A4(v4, v5, v6);
}

void sub_266C175B0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    v6 = 0xE600000000000000;
    v7 = 0x657669727261;
    switch(*v4)
    {
      case 1:
        v7 = 0x747261706564;
        break;
      case 2:
        v6 = 0xE800000000000000;
        v7 = 0x6576697272612069;
        break;
      case 3:
        v6 = 0xE800000000000000;
        v7 = 0x7472617065642069;
        break;
      case 4:
        v7 = 0x656D697420656E6FLL;
        v6 = 0xED0000796C6E6F20;
        break;
      case 5:
        v7 = 0xD000000000000016;
        v6 = 0x8000000266DC11B0;
        break;
      default:
        break;
    }

    v8 = 0xE600000000000000;
    v9 = 0x657669727261;
    switch(v1)
    {
      case 1:
        v9 = 0x747261706564;
        break;
      case 2:
        v8 = 0xE800000000000000;
        v9 = 0x6576697272612069;
        break;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x7472617065642069;
        break;
      case 4:
        v9 = 0x656D697420656E6FLL;
        v8 = 0xED0000796C6E6F20;
        break;
      case 5:
        v9 = 0xD000000000000016;
        v8 = 0x8000000266DC11B0;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {

      break;
    }

    v11 = OUTLINED_FUNCTION_1();

    ++v4;
  }

  while ((v11 & 1) == 0);
  OUTLINED_FUNCTION_5();
}

void sub_266C1778C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    v6 = 0xE400000000000000;
    v7 = 1684957542;
    switch(*v4)
    {
      case 1:
        v6 = 0xE300000000000000;
        v7 = 7301239;
        break;
      case 2:
        v6 = 0xE600000000000000;
        v9 = 1634038371;
        goto LABEL_15;
      case 3:
        v6 = 0xE600000000000000;
        v9 = 1701602660;
LABEL_15:
        v7 = v9 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 4:
        v6 = 0xE600000000000000;
        v7 = 0x796669646F6DLL;
        break;
      case 5:
        v6 = 0xE800000000000000;
        v7 = 0x646E696620666D66;
        break;
      case 6:
        v7 = 0xD000000000000010;
        v6 = 0x8000000266DC10D0;
        break;
      case 7:
        v7 = 0x69746F6E20666D66;
        v6 = 0xEF706F7473207966;
        break;
      case 8:
        v6 = 0xE800000000000000;
        v7 = 0x7369206572656877;
        break;
      case 9:
        v7 = 1701079400;
        break;
      case 0xA:
        v6 = 0xE600000000000000;
        v7 = 0x656469686E75;
        break;
      case 0xB:
        v7 = 1684104562;
        break;
      case 0xC:
        OUTLINED_FUNCTION_3();
        v7 = v8 + 5;
        v6 = 0x8000000266DC1110;
        break;
      case 0xD:
        OUTLINED_FUNCTION_3();
        v7 = v10 + 6;
        v6 = 0x8000000266DC1130;
        break;
      case 0xE:
        v7 = 0x636E756F6E6F7270;
        v6 = 0xEE00656D616E2065;
        break;
      case 0xF:
        v7 = 0x6E20746567726F66;
        v6 = 0xEF656D616E6B6369;
        break;
      case 0x10:
        v7 = 0x72696620646E6966;
        v6 = 0xEF7473616C207473;
        break;
      default:
        break;
    }

    v11 = 0xE400000000000000;
    v12 = 1684957542;
    switch(v1)
    {
      case 1:
        v11 = 0xE300000000000000;
        v12 = 7301239;
        break;
      case 2:
        v11 = 0xE600000000000000;
        v14 = 1634038371;
        goto LABEL_33;
      case 3:
        v11 = 0xE600000000000000;
        v14 = 1701602660;
LABEL_33:
        v12 = v14 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 4:
        v11 = 0xE600000000000000;
        v12 = 0x796669646F6DLL;
        break;
      case 5:
        v11 = 0xE800000000000000;
        v12 = 0x646E696620666D66;
        break;
      case 6:
        v12 = 0xD000000000000010;
        v11 = 0x8000000266DC10D0;
        break;
      case 7:
        v12 = 0x69746F6E20666D66;
        v11 = 0xEF706F7473207966;
        break;
      case 8:
        v11 = 0xE800000000000000;
        v12 = 0x7369206572656877;
        break;
      case 9:
        v12 = 1701079400;
        break;
      case 10:
        v11 = 0xE600000000000000;
        v12 = 0x656469686E75;
        break;
      case 11:
        v12 = 1684104562;
        break;
      case 12:
        OUTLINED_FUNCTION_3();
        v12 = v13 + 5;
        v11 = 0x8000000266DC1110;
        break;
      case 13:
        OUTLINED_FUNCTION_3();
        v12 = v15 + 6;
        v11 = 0x8000000266DC1130;
        break;
      case 14:
        v12 = 0x636E756F6E6F7270;
        v11 = 0xEE00656D616E2065;
        break;
      case 15:
        v12 = 0x6E20746567726F66;
        v11 = 0xEF656D616E6B6369;
        break;
      case 16:
        v12 = 0x72696620646E6966;
        v11 = 0xEF7473616C207473;
        break;
      default:
        break;
    }

    if (v7 == v12 && v6 == v11)
    {

      break;
    }

    v17 = OUTLINED_FUNCTION_1();

    ++v4;
  }

  while ((v17 & 1) == 0);
  OUTLINED_FUNCTION_5();
}

void sub_266C17B68()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    v6 = 0xE200000000000000;
    v7 = 28265;
    switch(*v4)
    {
      case 1:
        v7 = 28271;
        break;
      case 2:
        v6 = 0xE400000000000000;
        v7 = 1918985582;
        break;
      case 3:
        v7 = 0xD000000000000010;
        v6 = 0x8000000266DC1070;
        break;
      case 4:
        v7 = 0xD000000000000010;
        v6 = 0x8000000266DC1090;
        break;
      default:
        break;
    }

    v8 = 0xE200000000000000;
    v9 = 28265;
    switch(v1)
    {
      case 1:
        v9 = 28271;
        break;
      case 2:
        v8 = 0xE400000000000000;
        v9 = 1918985582;
        break;
      case 3:
        v9 = 0xD000000000000010;
        v8 = 0x8000000266DC1070;
        break;
      case 4:
        v9 = 0xD000000000000010;
        v8 = 0x8000000266DC1090;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {

      break;
    }

    v11 = OUTLINED_FUNCTION_1();

    ++v4;
  }

  while ((v11 & 1) == 0);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C17CD8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x26D5F13E0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_266C17D2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_266DAAA8C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

void sub_266C17D88(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_266C17DBC();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_266C17DC4()
{
  v1 = OUTLINED_FUNCTION_4();
  result = nullsub_1(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_266C17DFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C17D84();
  *a1 = result;
  return result;
}

uint64_t sub_266C17E24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void *sub_266C17E3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_266C17E4C()
{
  v2 = *v0;
  sub_266C182B4(&qword_2800C9668, type metadata accessor for SPBeaconRoleId);
  sub_266C182B4(&qword_2800C9670, type metadata accessor for SPBeaconRoleId);
  return sub_266DAAF7C();
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

uint64_t sub_266C17FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C1805C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactNLIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_266C180F8(uint64_t a1)
{
  v2 = type metadata accessor for ContactNLIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_266C18224(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C1825C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_266C182B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_266C18324()
{
  if (!qword_2800C9628)
  {
    sub_266DA8D0C();
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2800C9628);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_266C18520()
{
  sub_266C18324();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_266C186A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_266C186BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_266C18728(uint64_t a1, int a2)
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

uint64_t sub_266C18748(uint64_t result, int a2, int a3)
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

void sub_266C18784(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1()
{

  return sub_266DAB17C();
}

uint64_t static SFMLog.logger(category:)()
{

  OUTLINED_FUNCTION_3_0();

  return sub_266DA949C();
}

uint64_t sub_266C188F8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E6160);
  __swift_project_value_buffer(v0, qword_2800E6160);
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  v1 = qword_28156EF98;
  return sub_266DA94BC();
}

uint64_t sub_266C18A88()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_266DA94AC();
  __swift_allocate_value_buffer(v1, v0);
  __swift_project_value_buffer(v1, v0);
  OUTLINED_FUNCTION_3_0();
  return sub_266DA949C();
}

uint64_t sub_266C18B0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_266C18CA4()
{
  OUTLINED_FUNCTION_4_0();
  sub_266C18E7C();
  result = sub_266DAAC0C();
  *v0 = result;
  return result;
}

id sub_266C18D24(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t getEnumTagSinglePayload for SFMLog(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SFMLog(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266C18E7C()
{
  result = qword_28156EF90;
  if (!qword_28156EF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156EF90);
  }

  return result;
}

uint64_t GeoFenceTrigger.description.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x73657669727261;
      break;
    case 2:
      result = 0x73747261706564;
      break;
    case 3:
      result = 0x74616964656D6D69;
      break;
    case 5:
      result = 0x7441746F4E7369;
      break;
    default:
      result = sub_266DAB1DC();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_266C18FDC(unsigned __int8 a1, char a2)
{
  v2 = 0x4C45434E4143;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x4C45434E4143;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x45554E49544E4F43;
      break;
    case 2:
      v3 = 0x8000000266DC1300;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v5 = 0x5050415F4E45504FLL;
      v3 = 0xEE0045524F54535FLL;
      break;
    case 4:
      v5 = 0x4E49465F4E45504FLL;
      v3 = 0xEB00000000594D44;
      break;
    case 5:
      v5 = 0x5445535F4E45504FLL;
      v3 = 0xED000053474E4954;
      break;
    case 6:
      v5 = 0x554F535F59414C50;
      v3 = 0xEA0000000000444ELL;
      break;
    case 7:
      v5 = 0xD000000000000011;
      v3 = 0x8000000266DC1350;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x45554E49544E4F43;
      break;
    case 2:
      v6 = 0x8000000266DC1300;
      v2 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0x5050415F4E45504FLL;
      v6 = 0xEE0045524F54535FLL;
      break;
    case 4:
      v2 = 0x4E49465F4E45504FLL;
      v6 = 0xEB00000000594D44;
      break;
    case 5:
      v2 = 0x5445535F4E45504FLL;
      v6 = 0xED000053474E4954;
      break;
    case 6:
      v2 = 0x554F535F59414C50;
      v6 = 0xEA0000000000444ELL;
      break;
    case 7:
      OUTLINED_FUNCTION_23();
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7();
  }

  return v9 & 1;
}

uint64_t sub_266C19228(unsigned __int8 a1, char a2)
{
  v2 = 0x656C706F6570;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x73656369766564;
    }

    else
    {
      v4 = 0x736D657469;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656C706F6570;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x73656369766564;
    }

    else
    {
      v2 = 0x736D657469;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7();
  }

  return v8 & 1;
}

uint64_t sub_266C1930C(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x614E656369766564;
    }

    else
    {
      v3 = 0x72656E776FLL;
    }

    if (v2 == 1)
    {
      v4 = 0xEA0000000000656DLL;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000266DC1020;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x614E656369766564;
    }

    else
    {
      v5 = 0x72656E776FLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xD000000000000013;
    v6 = 0x8000000266DC1020;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7();
  }

  return v8 & 1;
}

uint64_t sub_266C193F0(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x74616964656D6D69;
  v4 = a1;
  v5 = 0x74616964656D6D69;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0x636F4C7265707968;
      v6 = 0xEA00000000006C61;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x6C61636F6CLL;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x65746F6D6572;
      break;
    case 4:
      v5 = 0xD000000000000016;
      v6 = 0x8000000266DC1400;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x636F4C7265707968;
      v2 = 0xEA00000000006C61;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x6C61636F6CLL;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x65746F6D6572;
      break;
    case 4:
      OUTLINED_FUNCTION_23();
      v2 = v7 | 0x8000000000000000;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_15();
  }

  return v9 & 1;
}

uint64_t sub_266C1958C()
{
  v0 = 0xEC0000005F24213ELL;
  OUTLINED_FUNCTION_20();
  v3 = v2 | 0x656D6F6800000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xEC0000005F24213ELL;
  switch(v5)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_24() | 0x6B726F7700000000;
      v7 = 0xEC0000005F24213ELL;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_24() | 0x6F68637300000000;
      v7 = 0xEE005F24213E6C6FLL;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_24() | 0x3E6D796700000000;
      v7 = 0xEB000000005F2421;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_24() | 0x6568746F00000000;
      v7 = 0xED00005F24213E72;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_20();
      v3 = v8 | 0x6B726F7700000000;
      break;
    case 2:
      OUTLINED_FUNCTION_20();
      v3 = v10 | 0x6F68637300000000;
      v0 = 0xEE005F24213E6C6FLL;
      break;
    case 3:
      OUTLINED_FUNCTION_20();
      v3 = v11 | 0x3E6D796700000000;
      v0 = 0xEB000000005F2421;
      break;
    case 4:
      OUTLINED_FUNCTION_20();
      v3 = v9 | 0x6568746F00000000;
      v0 = 0xED00005F24213E72;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15();
  }

  return v13 & 1;
}

uint64_t sub_266C1971C(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000726F7272;
  v3 = 0x45636972656E6567;
  v4 = a1;
  v5 = 0x45636972656E6567;
  v6 = 0xEC000000726F7272;
  switch(v4)
  {
    case 1:
      v6 = 0x8000000266DC1460;
      v5 = 0xD000000000000010;
      break;
    case 2:
      v6 = 0x8000000266DC1440;
      v5 = 0xD000000000000019;
      break;
    case 3:
      break;
    default:
      v6 = 0x8000000266DC1480;
      v5 = 0xD000000000000011;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x8000000266DC1460;
      v3 = 0xD000000000000010;
      break;
    case 2:
      v2 = 0x8000000266DC1440;
      v3 = 0xD000000000000019;
      break;
    case 3:
      break;
    default:
      v2 = 0x8000000266DC1480;
      v3 = 0xD000000000000011;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15();
  }

  return v8 & 1;
}

uint64_t sub_266C1985C()
{
  OUTLINED_FUNCTION_16();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266DAB17C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_266C198D8(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000006E6F6974;
  }

  else
  {
    v1 = 0xE900000000000064;
  }

  OUTLINED_FUNCTION_16();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7();
  }

  return v8 & 1;
}

uint64_t sub_266C19974(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28265;
  switch(a1)
  {
    case 1:
      v4 = 28271;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1918985582;
      break;
    case 3:
      v4 = 0xD000000000000010;
      v5 = "cancel";
      goto LABEL_6;
    case 4:
      v4 = 0xD000000000000010;
      v5 = "walking distance";
LABEL_6:
      v3 = v5 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 28265;
  switch(a2)
  {
    case 1:
      v7 = 28271;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v7 = 1918985582;
      break;
    case 3:
      v7 = 0xD000000000000010;
      v8 = "cancel";
      goto LABEL_12;
    case 4:
      OUTLINED_FUNCTION_23();
LABEL_12:
      v6 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7();
  }

  return v10 & 1;
}

uint64_t sub_266C19AB8(char a1)
{
  if (a1)
  {
    v1 = 0xE200000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_16();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7();
  }

  return v8 & 1;
}

uint64_t sub_266C19B34(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_16();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7();
  }

  return v8 & 1;
}

uint64_t sub_266C19BB8(unsigned __int8 a1, char a2)
{
  v2 = 0x657669727261;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x657669727261;
  switch(v4)
  {
    case 1:
      v5 = 0x747261706564;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x6576697272612069;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x7472617065642069;
      break;
    case 4:
      v5 = 0x656D697420656E6FLL;
      v3 = 0xED0000796C6E6F20;
      break;
    case 5:
      v5 = 0xD000000000000016;
      v3 = 0x8000000266DC11B0;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x747261706564;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x6576697272612069;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x7472617065642069;
      break;
    case 4:
      v2 = 0x656D697420656E6FLL;
      v6 = 0xED0000796C6E6F20;
      break;
    case 5:
      OUTLINED_FUNCTION_23();
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7();
  }

  return v9 & 1;
}

uint64_t sub_266C19D58()
{
  v0 = LocationLabel.rawValue.getter();
  v2 = v1;
  if (v0 == LocationLabel.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7();
  }

  return v5 & 1;
}

uint64_t sub_266C19E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7();
  }

  return v10 & 1;
}

uint64_t sub_266C19E84()
{
  OUTLINED_FUNCTION_16();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266DAB17C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_266C19EF0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "SHARE_MY_LOCATION";
  }

  else
  {
    v4 = "notificationDescription";
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = "notificationDescription";
  }

  else
  {
    v6 = "SHARE_MY_LOCATION";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7();
  }

  return v8 & 1;
}

uint64_t sub_266C19F88(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7();
  }

  return v8 & 1;
}

uint64_t sub_266C1A054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_0_1();
  }

  else
  {
    return sub_266DAB17C();
  }
}

uint64_t sub_266C1A06C(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_16();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7();
  }

  return v8 & 1;
}

uint64_t sub_266C1A17C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_266C1E29C(a4, a5);
  sub_266DAA8DC();
  sub_266DAA8DC();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15();
  }

  return v8 & 1;
}

uint64_t static Snippets.PunchoutLocation.device(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v3 = sub_266C1CEB4(result);
    v5 = v4;
    result = sub_266CC7C44();
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = result & 1;
  return result;
}

uint64_t static Snippets.PunchoutLocation.device(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t Snippets.PunchoutLocation.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  switch(v3)
  {
    case 1:
      if (qword_2800C93C8 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6480;
      goto LABEL_26;
    case 2:
      if (qword_2800C93C0 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6468;
      goto LABEL_26;
    case 3:
      if (qword_2800C93A8 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6420;
      goto LABEL_26;
    case 4:
      if (qword_2800C94A0 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6560;
      goto LABEL_26;
    case 5:
      if (qword_2800C93B8 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6450;
      goto LABEL_26;
    case 6:
      if (qword_2800C93A0 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6408;
      goto LABEL_26;
    case 7:
      if (qword_2800C93B0 != -1)
      {
        swift_once();
      }

      v4 = sub_266DA737C();
      v5 = v4;
      v6 = qword_2800E6438;
LABEL_26:
      v10 = __swift_project_value_buffer(v4, v6);
      v11 = *(*(v5 - 8) + 16);

      result = v11(a1, v10, v5);
      break;
    default:
      v7 = *v1;
      v8 = *(v1 + 16) & 1;

      result = sub_266D2CA28(v7, v3, v8, a1);
      break;
  }

  return result;
}

uint64_t Snippets.PunchoutLocation.isValid(on:)()
{
  v1 = sub_266DA8DEC();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v9 = *(v0 + 8);
  v11 = *(v0 + 16);
  (*(v4 + 104))(v8, *MEMORY[0x277D61C10], v1);
  v12 = sub_266DA8DDC();
  (*(v4 + 8))(v8, v1);
  if (v12)
  {
    if (v9 == 5)
    {
      sub_266C1CF30(v10, 5);
      sub_266C1CF30(0, 5);
      return 0;
    }

    else
    {
      sub_266C1CF18(v10, v9);
      sub_266C1CF30(v10, v9);
      sub_266C1CF30(0, 5);
      return 1;
    }
  }

  else
  {
    v17[1] = v10;
    v17[2] = v9;
    v18 = v11;
    v14 = sub_266C1A708();
    v16 = v9 == 5 || v9 == 2;
    return (v14 & 1) == 0 || v16;
  }
}

uint64_t sub_266C1A708()
{
  v0 = sub_266DA8DEC();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x277D61BE0], v0);
  v9 = sub_266DA8DDC();
  v10 = *(v3 + 8);
  v10(v7, v0);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v8(v7, *MEMORY[0x277D61C20], v0);
    v11 = sub_266DA8DDC();
    v10(v7, v0);
  }

  return v11 & 1;
}

uint64_t static Snippets.PunchoutLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v3)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_26;
      }

      v8 = 1;
      v9 = OUTLINED_FUNCTION_5_0(*a1, 1);
      sub_266C1CF30(v9, 1);
      return v8 & 1;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 2);
      v11 = 2;
      goto LABEL_25;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 3);
      v11 = 3;
      goto LABEL_25;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 4);
      v11 = 4;
      goto LABEL_25;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 5);
      v11 = 5;
      goto LABEL_25;
    case 6:
      if (v6 != 6)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 6);
      v11 = 6;
      goto LABEL_25;
    case 7:
      if (v6 != 7)
      {
        goto LABEL_26;
      }

      v10 = OUTLINED_FUNCTION_5_0(*a1, 7);
      v11 = 7;
LABEL_25:
      sub_266C1CF30(v10, v11);
      v8 = 1;
      return v8 & 1;
    default:
      if ((v6 - 1) < 7)
      {
LABEL_26:
        v23 = OUTLINED_FUNCTION_8();
        sub_266C1CF18(v23, v24);
        v25 = OUTLINED_FUNCTION_2_1();
        sub_266C1CF18(v25, v26);
        v27 = OUTLINED_FUNCTION_2_1();
        sub_266C1CF30(v27, v28);
        goto LABEL_27;
      }

      if (v3)
      {
        if (v6)
        {
          v12 = *a1;
          if (v2 == v5 && v3 == v6)
          {
            sub_266C1CF18(v12, v3);
            v40 = OUTLINED_FUNCTION_2_1();
            sub_266C1CF18(v40, v41);
            v42 = OUTLINED_FUNCTION_2_1();
            sub_266C1CF30(v42, v43);
            sub_266C1CF30(v2, v3);
          }

          else
          {
            v14 = sub_266DAB17C();
            v15 = OUTLINED_FUNCTION_8();
            sub_266C1CF18(v15, v16);
            v17 = OUTLINED_FUNCTION_2_1();
            sub_266C1CF18(v17, v18);
            v19 = OUTLINED_FUNCTION_2_1();
            sub_266C1CF30(v19, v20);
            v21 = OUTLINED_FUNCTION_8();
            sub_266C1CF30(v21, v22);
            v8 = 0;
            if ((v14 & 1) == 0)
            {
              return v8 & 1;
            }
          }

          goto LABEL_34;
        }

        sub_266C1CF18(*a2, 0);
        sub_266C1CF18(v5, 0);
        v36 = OUTLINED_FUNCTION_2_1();
        sub_266C1CF18(v36, v37);
        v38 = OUTLINED_FUNCTION_2_1();
        sub_266C1CF30(v38, v39);
        v29 = v5;
        v30 = 0;
LABEL_28:
        sub_266C1CF30(v29, v30);
        v8 = 0;
        return v8 & 1;
      }

      v32 = *(a2 + 8);

      v33 = OUTLINED_FUNCTION_8();
      sub_266C1CF18(v33, v34);
      sub_266C1CF18(v2, 0);
      v35 = OUTLINED_FUNCTION_5_0(v2, 0);
      sub_266C1CF30(v35, v6);
      if (v6)
      {
LABEL_27:
        v29 = v5;
        v30 = v6;
        goto LABEL_28;
      }

LABEL_34:
      v8 = v7 ^ v4 ^ 1;
      return v8 & 1;
  }
}

uint64_t sub_266C1AB28@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266C1AB54(uint64_t a1)
{
  v2 = sub_266C1D22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1AB90(uint64_t a1)
{
  v2 = sub_266C1D22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1ABCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7453707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000266DC1500 == a2;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73656369766564 && a2 == 0xE700000000000000;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73646E65697266 && a2 == 0xE700000000000000;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x655364756F6C4369 && a2 == 0xEE0073676E697474;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
              if (v11 || (sub_266DAB17C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x626154656DLL && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_266DAB17C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266C1AE58(unsigned __int8 a1)
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](a1);
  return sub_266DAB2DC();
}

uint64_t sub_266C1AEA0(char a1)
{
  result = 0x65726F7453707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x656369766564;
      break;
    case 3:
      v3 = 0x656369766564;
      goto LABEL_6;
    case 4:
      v3 = 0x646E65697266;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 5:
      result = 0x655364756F6C4369;
      break;
    case 6:
      result = 0x736D657469;
      break;
    case 7:
      result = 0x626154656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C1AF84(uint64_t a1)
{
  v2 = sub_266C1D1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1AFC0(uint64_t a1)
{
  v2 = sub_266C1D1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B004()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

uint64_t sub_266C1B048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574497369 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266C1B11C(char a1)
{
  if (a1)
  {
    return 0x6D6574497369;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_266C1B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C1ABCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C1B1A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C1AE50();
  *a1 = result;
  return result;
}

uint64_t sub_266C1B1CC(uint64_t a1)
{
  v2 = sub_266C1CF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B208(uint64_t a1)
{
  v2 = sub_266C1CF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C1B048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C1B274@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C1B114();
  *a1 = result;
  return result;
}

uint64_t sub_266C1B29C(uint64_t a1)
{
  v2 = sub_266C1D184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B2D8(uint64_t a1)
{
  v2 = sub_266C1D184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B314(uint64_t a1)
{
  v2 = sub_266C1D130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B350(uint64_t a1)
{
  v2 = sub_266C1D130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B38C(uint64_t a1)
{
  v2 = sub_266C1D0DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B3C8(uint64_t a1)
{
  v2 = sub_266C1D0DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B404(uint64_t a1)
{
  v2 = sub_266C1D088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B440(uint64_t a1)
{
  v2 = sub_266C1D088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B47C(uint64_t a1)
{
  v2 = sub_266C1D034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B4B8(uint64_t a1)
{
  v2 = sub_266C1D034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C1B4F4(uint64_t a1)
{
  v2 = sub_266C1CFE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1B530(uint64_t a1)
{
  v2 = sub_266C1CFE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippets.PunchoutLocation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27();
  a19 = v23;
  a20 = v24;
  v124 = v21;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9830, &qword_266DAD830);
  v28 = OUTLINED_FUNCTION_0_2(v27);
  v120 = v29;
  v121 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10();
  v119 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9838, &qword_266DAD838);
  v35 = OUTLINED_FUNCTION_0_2(v34);
  v117 = v36;
  v118 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10();
  v116 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9840, &qword_266DAD840);
  v42 = OUTLINED_FUNCTION_0_2(v41);
  v114 = v43;
  v115 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_10();
  v113 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9848, &qword_266DAD848);
  v49 = OUTLINED_FUNCTION_0_2(v48);
  v111 = v50;
  v112 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10();
  v109 = v54;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9850, &qword_266DAD850);
  OUTLINED_FUNCTION_0_2(v108);
  v106 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10();
  v105 = v59;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9858, &qword_266DAD858);
  OUTLINED_FUNCTION_0_2(v110);
  v103 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_10();
  v107 = v64;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9860, &qword_266DAD860);
  OUTLINED_FUNCTION_0_2(v101);
  v104 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v68);
  v70 = v100 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9868, &qword_266DAD868);
  OUTLINED_FUNCTION_0_2(v71);
  v102 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_17();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9870, &qword_266DAD870);
  v122 = OUTLINED_FUNCTION_0_2(v76);
  v123 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_10();
  v81 = *(v20 + 8);
  v100[1] = *v20;
  v82 = *(v20 + 16);
  v83 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_266C1CF8C();
  sub_266DAB36C();
  switch(v81)
  {
    case 1:
      v125 = 0;
      sub_266C1D22C();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_9(&a16);
      v84(v22, v71);
      v85 = OUTLINED_FUNCTION_18_0();
      v87 = v70;
      goto LABEL_15;
    case 2:
      v126 = 1;
      sub_266C1D1D8();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_9(&a18);
      v99 = v70;
      v89 = v101;
      goto LABEL_13;
    case 3:
      sub_266C1D130();
      v91 = v105;
      OUTLINED_FUNCTION_3_1();
      (*(v106 + 8))(v91, v108);
      goto LABEL_14;
    case 4:
      sub_266C1D0DC();
      v88 = v109;
      OUTLINED_FUNCTION_3_1();
      v90 = v111;
      v89 = v112;
      goto LABEL_12;
    case 5:
      sub_266C1D088();
      v88 = v113;
      OUTLINED_FUNCTION_3_1();
      v90 = v114;
      v89 = v115;
      goto LABEL_12;
    case 6:
      sub_266C1D034();
      v88 = v116;
      OUTLINED_FUNCTION_3_1();
      v90 = v117;
      v89 = v118;
      goto LABEL_12;
    case 7:
      sub_266C1CFE0();
      v88 = v119;
      OUTLINED_FUNCTION_3_1();
      v90 = v120;
      v89 = v121;
LABEL_12:
      v98 = *(v90 + 8);
      v99 = v88;
LABEL_13:
      v98(v99, v89);
LABEL_14:
      v85 = OUTLINED_FUNCTION_18_0();
      v87 = v71;
LABEL_15:
      v86(v85, v87);
      break;
    default:
      v92 = v103;
      sub_266C1D184();
      v93 = v107;
      OUTLINED_FUNCTION_21();
      v94 = v110;
      v95 = v124;
      sub_266DAB09C();
      if (!v95)
      {
        sub_266DAB0FC();
      }

      (*(v92 + 8))(v93, v94);
      v96 = OUTLINED_FUNCTION_18_0();
      v97(v96, v70);
      break;
  }

  OUTLINED_FUNCTION_26();
}

void Snippets.PunchoutLocation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27();
  a19 = v22;
  a20 = v23;
  v165 = v20;
  v25 = v24;
  v163 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98C0, &qword_266DAD878);
  v28 = OUTLINED_FUNCTION_0_2(v27);
  v154 = v29;
  v155 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10();
  v162 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98C8, &qword_266DAD880);
  v35 = OUTLINED_FUNCTION_0_2(v34);
  v152 = v36;
  v153 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10();
  v161 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98D0, &qword_266DAD888);
  v42 = OUTLINED_FUNCTION_0_2(v41);
  v150 = v43;
  v151 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_10();
  v157 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98D8, &qword_266DAD890);
  v49 = OUTLINED_FUNCTION_0_2(v48);
  v147 = v50;
  v148 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10();
  v160 = v54;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98E0, &qword_266DAD898);
  OUTLINED_FUNCTION_0_2(v146);
  v145 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10();
  v156 = v59;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98E8, &qword_266DAD8A0);
  OUTLINED_FUNCTION_0_2(v149);
  v159 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_10();
  v158 = v64;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98F0, &qword_266DAD8A8);
  OUTLINED_FUNCTION_0_2(v144);
  v143 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v68);
  v70 = &v136 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C98F8, &qword_266DAD8B0);
  OUTLINED_FUNCTION_0_2(v71);
  v142 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_17();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9900, &qword_266DAD8B8);
  OUTLINED_FUNCTION_0_2(v76);
  v78 = v77;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v81);
  v83 = &v136 - v82;
  v84 = v25[3];
  v85 = v25[4];
  v164 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v84);
  sub_266C1CF8C();
  v86 = v165;
  sub_266DAB34C();
  if (v86)
  {
    goto LABEL_8;
  }

  v138 = v21;
  v137 = v71;
  v139 = v70;
  v87 = v160;
  v88 = v161;
  v89 = v162;
  v140 = v78;
  v90 = v163;
  v165 = v83;
  v91 = sub_266DAB06C();
  sub_266C1CE7C(v91, 0);
  v141 = v76;
  if (v94 == v95 >> 1)
  {
LABEL_7:
    v107 = sub_266DAAE4C();
    swift_allocError();
    v109 = v108;
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0) + 48);
    *v109 = &type metadata for Snippets.PunchoutLocation;
    v111 = v141;
    v112 = v165;
    sub_266DAAFBC();
    sub_266DAAE3C();
    (*(*(v107 - 8) + 104))(v109, *MEMORY[0x277D84160], v107);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9(&a13);
    v113(v112, v111);
LABEL_8:
    v114 = v164;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v114);
    OUTLINED_FUNCTION_26();
    return;
  }

  v136 = 0;
  if (v94 < (v95 >> 1))
  {
    v96 = *(v93 + v94);
    sub_266C1E220(v94 + 1, v95 >> 1, v92, v93, v94, v95);
    v98 = v97;
    v100 = v99;
    swift_unknownObjectRelease();
    if (v98 == v100 >> 1)
    {
      v101 = v90;
      switch(v96)
      {
        case 1:
          v167 = 1;
          sub_266C1D1D8();
          v90 = v139;
          OUTLINED_FUNCTION_4_1();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9(&a16);
          v122(v90, v144);
          v123 = OUTLINED_FUNCTION_1_1();
          v124(v123);
          OUTLINED_FUNCTION_14();
          v106 = 2;
          goto LABEL_17;
        case 2:
          sub_266C1D184();
          OUTLINED_FUNCTION_4_1();
          v127 = v90;
          v90 = sub_266DAAFCC();
          v106 = v130;
          v131 = sub_266DAB02C();
          swift_unknownObjectRelease();
          v132 = OUTLINED_FUNCTION_22();
          v133(v132);
          v134 = OUTLINED_FUNCTION_12();
          v135(v134);
          v105 = v131 & 1;
          v114 = v164;
          v101 = v127;
          goto LABEL_18;
        case 3:
          sub_266C1D130();
          v90 = v156;
          OUTLINED_FUNCTION_4_1();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9(&a18);
          v117(v90, v146);
          v118 = OUTLINED_FUNCTION_1_1();
          v119(v118);
          OUTLINED_FUNCTION_14();
          v106 = 3;
          goto LABEL_17;
        case 4:
          sub_266C1D0DC();
          OUTLINED_FUNCTION_4_1();
          swift_unknownObjectRelease();
          (*(v147 + 8))(v87, v148);
          v115 = OUTLINED_FUNCTION_1_1();
          v116(v115);
          OUTLINED_FUNCTION_14();
          v106 = 4;
          goto LABEL_17;
        case 5:
          sub_266C1D088();
          v90 = v157;
          OUTLINED_FUNCTION_4_1();
          swift_unknownObjectRelease();
          (*(v150 + 8))(v90, v151);
          v125 = OUTLINED_FUNCTION_1_1();
          v126(v125);
          OUTLINED_FUNCTION_14();
          v106 = 5;
          goto LABEL_17;
        case 6:
          sub_266C1D034();
          OUTLINED_FUNCTION_4_1();
          swift_unknownObjectRelease();
          (*(v152 + 8))(v88, v153);
          v128 = OUTLINED_FUNCTION_1_1();
          v129(v128);
          OUTLINED_FUNCTION_14();
          v106 = 6;
          goto LABEL_17;
        case 7:
          sub_266C1CFE0();
          OUTLINED_FUNCTION_4_1();
          swift_unknownObjectRelease();
          (*(v154 + 8))(v89, v155);
          v120 = OUTLINED_FUNCTION_1_1();
          v121(v120);
          OUTLINED_FUNCTION_14();
          v106 = 7;
          goto LABEL_17;
        default:
          v166 = 0;
          sub_266C1D22C();
          v90 = v138;
          OUTLINED_FUNCTION_4_1();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9(&a15);
          v102(v90, v137);
          v103 = OUTLINED_FUNCTION_1_1();
          v104(v103);
          OUTLINED_FUNCTION_14();
          v106 = 1;
LABEL_17:
          v114 = v164;
LABEL_18:
          *v101 = v90;
          *(v101 + 8) = v106;
          *(v101 + 16) = v105;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static Snippets.punchoutButton(title:to:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = *(a2 + 16);
  type metadata accessor for Snippets();
  swift_storeEnumTagMultiPayload();

  return sub_266C1CF18(v3, v4);
}

__n128 Snippets.PunchoutButton.init(title:location:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

uint64_t Snippets.PunchoutButton.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 24);
  return sub_266C1CF18(v2, v3);
}

uint64_t Snippets.PunchoutButton.location.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 24);
  result = sub_266C1CF30(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t static Snippets.PunchoutButton.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (sub_266C18FDC(*a1, *a2))
  {
    v12[0] = v2;
    v12[1] = v3;
    v13 = v4;
    v10[0] = v5;
    v10[1] = v6;
    v11 = v7;
    sub_266C1CF18(v2, v3);
    sub_266C1CF18(v5, v6);
    v8 = static Snippets.PunchoutLocation.== infix(_:_:)(v12, v10);
    sub_266C1CF30(v5, v6);
    sub_266C1CF30(v2, v3);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_266C1C954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266C1CA18(char a1)
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](a1 & 1);
  return sub_266DAB2DC();
}

uint64_t sub_266C1CA60(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_266C1CA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C1C954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C1CAC4(uint64_t a1)
{
  v2 = sub_266C1D280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C1CB00(uint64_t a1)
{
  v2 = sub_266C1D280();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippets.PunchoutButton.encode(to:)()
{
  OUTLINED_FUNCTION_27();
  v19 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9910, &qword_266DAD8C8);
  OUTLINED_FUNCTION_0_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v17 = *(v0 + 2);
  v18 = v13;
  v14 = v0[24];
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266C1D280();
  sub_266DAB36C();
  LOBYTE(v20) = v12;
  sub_266C1D2D4();
  OUTLINED_FUNCTION_25();
  v16 = v19;
  sub_266DAB11C();
  if (!v16)
  {
    v20 = v18;
    v21 = v17;
    v22 = v14;
    sub_266C1CF18(v18, v17);
    sub_266C1D328();
    OUTLINED_FUNCTION_25();
    sub_266DAB11C();
    sub_266C1CF30(v20, v21);
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_26();
}

void Snippets.PunchoutButton.init(from:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9930, &qword_266DAD8D0);
  OUTLINED_FUNCTION_0_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266C1D280();
  sub_266DAB34C();
  if (!v0)
  {
    sub_266C1D37C();
    OUTLINED_FUNCTION_19();
    sub_266C1D3D0();
    OUTLINED_FUNCTION_19();
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    *(v5 + 8) = v13;
    *(v5 + 24) = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_26();
}

void sub_266C1CE7C(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_13();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_266C1CEB4(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266C1CF18(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 7)
  {
  }

  return result;
}

uint64_t sub_266C1CF30(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 7)
  {
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

unint64_t sub_266C1CF8C()
{
  result = qword_2800C9878;
  if (!qword_2800C9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9878);
  }

  return result;
}

unint64_t sub_266C1CFE0()
{
  result = qword_2800C9880;
  if (!qword_2800C9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9880);
  }

  return result;
}

unint64_t sub_266C1D034()
{
  result = qword_2800C9888;
  if (!qword_2800C9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9888);
  }

  return result;
}

unint64_t sub_266C1D088()
{
  result = qword_2800C9890;
  if (!qword_2800C9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9890);
  }

  return result;
}

unint64_t sub_266C1D0DC()
{
  result = qword_2800C9898;
  if (!qword_2800C9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9898);
  }

  return result;
}

unint64_t sub_266C1D130()
{
  result = qword_2800C98A0;
  if (!qword_2800C98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C98A0);
  }

  return result;
}

unint64_t sub_266C1D184()
{
  result = qword_2800C98A8;
  if (!qword_2800C98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C98A8);
  }

  return result;
}

unint64_t sub_266C1D1D8()
{
  result = qword_2800C98B0;
  if (!qword_2800C98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C98B0);
  }

  return result;
}

unint64_t sub_266C1D22C()
{
  result = qword_2800C98B8;
  if (!qword_2800C98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C98B8);
  }

  return result;
}

unint64_t sub_266C1D280()
{
  result = qword_2800C9918;
  if (!qword_2800C9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9918);
  }

  return result;
}

unint64_t sub_266C1D2D4()
{
  result = qword_2800C9920;
  if (!qword_2800C9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9920);
  }

  return result;
}

unint64_t sub_266C1D328()
{
  result = qword_2800C9928;
  if (!qword_2800C9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9928);
  }

  return result;
}

unint64_t sub_266C1D37C()
{
  result = qword_2800C9938;
  if (!qword_2800C9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9938);
  }

  return result;
}

unint64_t sub_266C1D3D0()
{
  result = qword_2800C9940;
  if (!qword_2800C9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9940);
  }

  return result;
}

unint64_t sub_266C1D428()
{
  result = qword_2800C9948;
  if (!qword_2800C9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9948);
  }

  return result;
}

unint64_t sub_266C1D480()
{
  result = qword_2800C9950;
  if (!qword_2800C9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9950);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy8SnippetsO16PunchoutLocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_266C1D50C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 17))
  {
    return (*a1 + 2147483640);
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

  v5 = v4 + 1;
  v6 = v4 - 6;
  if (v5 >= 8)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C1D56C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_266C1D5CC(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_266C1D620(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF7 && *(a1 + 25))
    {
      v2 = *a1 + 2147483639;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 7;
      if (v4 < 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266C1D680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483640;
    if (a3 > 0x7FFFFFF7)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF7)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 7;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizedLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16PunchoutLocationO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationLabel.LocationReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_266C1D90C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C1DA3C()
{
  result = qword_2800C9958;
  if (!qword_2800C9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9958);
  }

  return result;
}

unint64_t sub_266C1DA94()
{
  result = qword_2800C9960;
  if (!qword_2800C9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9960);
  }

  return result;
}

unint64_t sub_266C1DAEC()
{
  result = qword_2800C9968;
  if (!qword_2800C9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9968);
  }

  return result;
}

unint64_t sub_266C1DB44()
{
  result = qword_2800C9970;
  if (!qword_2800C9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9970);
  }

  return result;
}

unint64_t sub_266C1DB9C()
{
  result = qword_2800C9978;
  if (!qword_2800C9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9978);
  }

  return result;
}

unint64_t sub_266C1DBF4()
{
  result = qword_2800C9980;
  if (!qword_2800C9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9980);
  }

  return result;
}

unint64_t sub_266C1DC4C()
{
  result = qword_2800C9988;
  if (!qword_2800C9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9988);
  }

  return result;
}

unint64_t sub_266C1DCA4()
{
  result = qword_2800C9990;
  if (!qword_2800C9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9990);
  }

  return result;
}

unint64_t sub_266C1DCFC()
{
  result = qword_2800C9998;
  if (!qword_2800C9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9998);
  }

  return result;
}

unint64_t sub_266C1DD54()
{
  result = qword_2800C99A0;
  if (!qword_2800C99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99A0);
  }

  return result;
}

unint64_t sub_266C1DDAC()
{
  result = qword_2800C99A8;
  if (!qword_2800C99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99A8);
  }

  return result;
}

unint64_t sub_266C1DE04()
{
  result = qword_2800C99B0;
  if (!qword_2800C99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99B0);
  }

  return result;
}

unint64_t sub_266C1DE5C()
{
  result = qword_2800C99B8;
  if (!qword_2800C99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99B8);
  }

  return result;
}

unint64_t sub_266C1DEB4()
{
  result = qword_2800C99C0;
  if (!qword_2800C99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99C0);
  }

  return result;
}

unint64_t sub_266C1DF0C()
{
  result = qword_2800C99C8;
  if (!qword_2800C99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99C8);
  }

  return result;
}

unint64_t sub_266C1DF64()
{
  result = qword_2800C99D0;
  if (!qword_2800C99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99D0);
  }

  return result;
}

unint64_t sub_266C1DFBC()
{
  result = qword_2800C99D8;
  if (!qword_2800C99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99D8);
  }

  return result;
}

unint64_t sub_266C1E014()
{
  result = qword_2800C99E0;
  if (!qword_2800C99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99E0);
  }

  return result;
}

unint64_t sub_266C1E06C()
{
  result = qword_2800C99E8;
  if (!qword_2800C99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99E8);
  }

  return result;
}

unint64_t sub_266C1E0C4()
{
  result = qword_2800C99F0;
  if (!qword_2800C99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99F0);
  }

  return result;
}

unint64_t sub_266C1E11C()
{
  result = qword_2800C99F8;
  if (!qword_2800C99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C99F8);
  }

  return result;
}

unint64_t sub_266C1E174()
{
  result = qword_2800C9A00;
  if (!qword_2800C9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9A00);
  }

  return result;
}

unint64_t sub_266C1E1CC()
{
  result = qword_2800C9A08;
  if (!qword_2800C9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9A08);
  }

  return result;
}

uint64_t sub_266C1E220(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266C1E29C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_1()
{
  v2 = *(v0 - 120);

  return sub_266DAB08C();
}

uint64_t OUTLINED_FUNCTION_4_1()
{
  v2 = *(v0 - 336);

  return sub_266DAAFAC();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return sub_266DAB17C();
}

uint64_t OUTLINED_FUNCTION_12()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_266DAB17C();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_266DAB05C();
}

uint64_t OUTLINED_FUNCTION_21()
{
  v2 = *(v0 - 120);

  return sub_266DAB08C();
}

uint64_t type metadata accessor for FindFriendIntentWrapper()
{
  result = qword_2800C9A20;
  if (!qword_2800C9A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}