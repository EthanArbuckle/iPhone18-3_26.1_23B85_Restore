unint64_t sub_1C73C2290(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x614E776F64616873;
      break;
    case 2:
      result = 0x69726F7661467369;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x65707954656761;
      break;
    case 6:
      result = 0x6C696843794D7369;
      break;
    case 7:
      result = 1699574633;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73C2384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73C2000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73C23AC(uint64_t a1)
{
  v2 = sub_1C73C5978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73C23E8(uint64_t a1)
{
  v2 = sub_1C73C5978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonSummary.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v18 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B318);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = v9;
  LODWORD(v9) = *(v0 + 32);
  v15[6] = *(v0 + 33);
  v15[7] = v9;
  LODWORD(v9) = *(v0 + 34);
  v15[4] = *(v0 + 36);
  v15[5] = v9;
  v15[3] = *(v0 + 38);
  v10 = v3[3];
  v11 = v3;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1C73C5978();
  sub_1C755200C();
  v14 = v18;
  sub_1C7551C7C();
  if (!v14)
  {
    sub_1C7551C7C();
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CDC();
    sub_1C7025BF4();
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CBC();
    v21 = 5;
    type metadata accessor for PHPersonAgeType(0);
    sub_1C73C5A20(&qword_1EDD0CE88, type metadata accessor for PHPersonAgeType);
    sub_1C7551D2C();
    v20 = 6;
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CDC();
    v19 = 7;
    OUTLINED_FUNCTION_8_77();
    sub_1C7551CDC();
  }

  (*(v5 + 8))(v8, v13);
  OUTLINED_FUNCTION_125();
}

uint64_t PetSummary.init(name:shadowName:isFavorite:hasConfirmedRelationship:detectionType:isMyPet:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, __int16 a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 34) = a7;
  *(a9 + 36) = a8;
  return result;
}

uint64_t sub_1C73C2788(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E776F64616873 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001C75AE320 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F69746365746564 && a2 == 0xED0000657079546ELL;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x746550794D7369 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C73C298C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x614E776F64616873;
      break;
    case 2:
      result = 0x69726F7661467369;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x6F69746365746564;
      break;
    case 5:
      result = 0x746550794D7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73C2A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73C2788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73C2A84(uint64_t a1)
{
  v2 = sub_1C73C59CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73C2AC0(uint64_t a1)
{
  v2 = sub_1C73C59CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PetSummary.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v15 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B328);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = v10;
  LODWORD(v10) = *(v0 + 32);
  v12[4] = *(v0 + 33);
  v12[5] = v10;
  LODWORD(v10) = *(v0 + 34);
  v12[2] = *(v0 + 36);
  v12[3] = v10;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C73C59CC();
  sub_1C755200C();
  v11 = v15;
  sub_1C7551C7C();
  if (!v11)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_97();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CDC();
    type metadata accessor for PHDetectionType(0);
    sub_1C73C5A20(&qword_1EC215D10, type metadata accessor for PHDetectionType);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_97();
    sub_1C7551CDC();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_125();
}

uint64_t CharacterCurationInfo.init(personRelationshipByUUID:myPetUUIDs:favoritedCharacterUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C73C2D98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C75AE340 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x495555746550796DLL && a2 == 0xEA00000000007344;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x80000001C75AE360 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C73C2EBC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0x495555746550796DLL;
  }

  return 0xD000000000000017;
}

uint64_t sub_1C73C2F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73C2D98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73C2F54(uint64_t a1)
{
  v2 = sub_1C73C5A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73C2F90(uint64_t a1)
{
  v2 = sub_1C73C5A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CharacterCurationInfo.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B338);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v0 + 8);
  v11[1] = *(v0 + 16);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v10 = sub_1C73C5A68();
  sub_1C75504FC();
  sub_1C755200C();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B340);
  sub_1C73C5ABC(&qword_1EDD06C58, sub_1C7025BF4);
  OUTLINED_FUNCTION_3_97();
  OUTLINED_FUNCTION_97();
  sub_1C7551D2C();

  if (!v10)
  {
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    sub_1C70FBAD0(&qword_1EDD0CEF0);
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v12 = 2;
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

void CharacterCurationInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B348);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C73C5A68();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B340);
    sub_1C73C5ABC(&qword_1EDD06C50, sub_1C7025C48);
    sub_1C7551C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    sub_1C70FBAD0(&qword_1EDD0CEE8);
    OUTLINED_FUNCTION_3_104();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_3_104();
    sub_1C7551C1C();
    v16 = OUTLINED_FUNCTION_19_0();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    v14[2] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C73C34E0()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755BAB0;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1C6F6D524();
  *(v0 + 32) = 0xD00000000000001CLL;
  *(v0 + 40) = 0x80000001C75A2960;
  result = sub_1C755112C();
  qword_1EC21B308 = result;
  return result;
}

uint64_t sub_1C73C35A8@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v122 = a8;
  v114 = a4;
  v116 = a9;
  v18 = sub_1C754F38C();
  v118 = *(v18 - 8);
  v119 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v115 = v20;
  sub_1C754F1CC();
  v112 = a2;
  v22 = [a2 librarySpecificFetchOptions];
  v113 = a3;
  [v22 setSharingFilter_];
  v123 = v22;
  [v22 setFetchLimit_];
  v23 = sub_1C710DE50(a6, a7);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v23 = 48;
    v25 = 0xE100000000000000;
  }

  if (v23 == 56 && v25 == 0xE100000000000000)
  {

    v27 = 0;
  }

  else
  {
    v27 = sub_1C7551DBC();
  }

  v28 = sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v29 = swift_allocObject();
  v124 = xmmword_1C75604F0;
  *(v29 + 16) = xmmword_1C75604F0;
  v30 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v31 = sub_1C6F6D524();
  *(v29 + 32) = 1684632949;
  *(v29 + 40) = 0xE400000000000000;
  *(v29 + 96) = v30;
  *(v29 + 104) = v31;
  *(v29 + 64) = v31;
  *(v29 + 72) = a6;
  *(v29 + 80) = a7;
  sub_1C75504FC();
  v32 = sub_1C755112C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C7565670;
  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v33 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, v27 & 1);
  sub_1C71F8834(v33, v123);
  v35 = swift_allocObject();
  *(v35 + 16) = v124;
  *(v35 + 56) = v30;
  *(v35 + 64) = v31;
  v36 = v30;
  *(v35 + 32) = 0xD000000000000028;
  *(v35 + 40) = 0x80000001C75A3700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B3A0);
  v37 = swift_allocObject();
  *(v37 + 16) = v124;
  *(v37 + 32) = 131073;
  *(v35 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B3A8);
  *(v35 + 104) = sub_1C73C67FC();
  *(v35 + 72) = v37;
  v38 = sub_1C755112C();
  v39 = swift_allocObject();
  *(v39 + 16) = v124;
  *(v39 + 56) = v36;
  *(v39 + 64) = v31;
  v121 = v31;
  v40 = MEMORY[0x1E69E7290];
  *(v39 + 32) = 1684957547;
  *(v39 + 40) = 0xE400000000000000;
  v41 = MEMORY[0x1E69E72E8];
  *(v39 + 96) = v40;
  *(v39 + 104) = v41;
  v42 = v122;
  *(v39 + 72) = v122;
  v120 = v28;
  v43 = sub_1C755112C();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C756AD80;
  *(v44 + 32) = v43;
  *(v44 + 40) = v32;
  *(v44 + 48) = v38;
  v45 = qword_1EC214090;
  v111 = v43;
  v110 = v32;
  v109 = v38;
  if (v45 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v46 = a10;
    v47 = qword_1EC21B308;
    *(v44 + 56) = qword_1EC21B308;
    v128 = v44;
    v48 = swift_allocObject();
    v49 = v48;
    *(v48 + 16) = v124;
    v50 = MEMORY[0x1E69E63B0];
    v51 = MEMORY[0x1E69E6438];
    if (v42 == 1)
    {
      v52 = v121;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = v52;
      *(v48 + 32) = 0xD000000000000022;
      *(v48 + 40) = 0x80000001C75AE430;
      *(v48 + 96) = v50;
      *(v48 + 104) = v51;
      *(v48 + 72) = 0x3FE999999999999ALL;
      v53 = v47;
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v54 = 0x736F65646976;
      v55 = 0xE600000000000000;
    }

    else
    {
      v108 = a10;
      v56 = MEMORY[0x1E69E6158];
      v57 = v121;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = v57;
      strcpy((v48 + 32), "curationScore");
      *(v48 + 46) = -4864;
      v58 = qword_1EC214080;
      v59 = v47;
      if (v58 != -1)
      {
        swift_once();
      }

      v60 = qword_1EC21B300;
      v49[12] = v50;
      v49[13] = v51;
      v49[9] = v60;
      v61 = sub_1C755112C();
      v62 = swift_allocObject();
      *(v62 + 16) = v124;
      *(v62 + 56) = v56;
      *(v62 + 64) = v57;
      *(v62 + 32) = 0xD00000000000001ALL;
      *(v62 + 40) = 0x80000001C75AE3E0;
      *(v62 + 96) = MEMORY[0x1E69E7290];
      *(v62 + 104) = MEMORY[0x1E69E72E8];
      *(v62 + 72) = 0;
      v63 = sub_1C755112C();
      v64 = v61;
      MEMORY[0x1CCA5D040]();
      v65 = v56;
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      v107 = v64;
      sub_1C7550BEC();
      v66 = v63;
      MEMORY[0x1CCA5D040]();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      v55 = 0xEC000000736F746FLL;
      v54 = 0x6870206C6C697473;
      sub_1C7550BEC();
      v67 = swift_allocObject();
      *(v67 + 16) = v124;
      v68 = v121;
      *(v67 + 56) = v65;
      *(v67 + 64) = v68;
      *(v67 + 32) = 0x74627553646E696BLL;
      *(v67 + 40) = 0xEB00000000657079;
      *(v67 + 96) = MEMORY[0x1E69E7290];
      *(v67 + 104) = MEMORY[0x1E69E72E8];
      *(v67 + 72) = 2;
      if (v108)
      {
        v69 = sub_1C755112C();
        v70 = swift_allocObject();
        *(v70 + 16) = v124;
        *(v70 + 56) = v65;
        *(v70 + 64) = v68;
        *(v70 + 32) = 0xD00000000000002FLL;
        *(v70 + 40) = 0x80000001C75AE400;
        *(v70 + 96) = MEMORY[0x1E69E63B0];
        *(v70 + 104) = MEMORY[0x1E69E6438];
        *(v70 + 72) = 0x3FE0000000000000;
        sub_1C755112C();
        v71 = v69;
        MEMORY[0x1CCA5D040]();
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        v72 = sub_1C7550BEC();
        MEMORY[0x1CCA5D040](v72);
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
      }

      else
      {
        sub_1C755112C();
        MEMORY[0x1CCA5D040]();
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
      }

      v46 = v108;
    }

    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    v73 = sub_1C6F6E5C4();
    v74 = v123;
    [v123 setInternalPredicate_];
    v75 = [objc_opt_self() fetchAssetsWithOptions_];
    if (v46)
    {
      v54 = 0x6F6870206576696CLL;
      v55 = 0xEB00000000736F74;
    }

    if (qword_1EDD09EB8 != -1)
    {
      swift_once();
    }

    v76 = sub_1C754FF1C();
    __swift_project_value_buffer(v76, qword_1EDD09EC0);
    v77 = v75;
    sub_1C75504FC();
    v78 = sub_1C754FEEC();
    v79 = sub_1C75511BC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v125 = v81;
      *v80 = 134218242;
      *(v80 + 4) = [v77 count];

      *(v80 + 12) = 2080;
      v82 = sub_1C6F765A4(v54, v55, &v125);

      *(v80 + 14) = v82;
      _os_log_impl(&dword_1C6F5C000, v78, v79, "Finished fetching %ld %s for background suggestion playback.", v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1CCA5F8E0](v81, -1, -1);
      MEMORY[0x1CCA5F8E0](v80, -1, -1);
    }

    else
    {
    }

    v83 = v77;
    v84 = v122;
    v121 = v83;
    v85 = [v83 fetchedObjects];
    if (!v85)
    {
      break;
    }

    v86 = v85;
    v120 = v73;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v44 = sub_1C7550B5C();

    v87 = sub_1C6FB6304();
    v88 = 0;
    v42 = v44 & 0xFFF8;
    *&v124 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v87 == v88)
      {

        v84 = v122;
        v73 = v120;
        v102 = v124;
        goto LABEL_54;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        v89 = MEMORY[0x1CCA5DDD0](v88, v44);
      }

      else
      {
        if (v88 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v89 = *(v44 + 8 * v88 + 32);
      }

      v90 = v89;
      v91 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      v92 = sub_1C70CAC04(v89);
      v94 = v93;

      ++v88;
      if (v94)
      {
        v95 = v124;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v95 = v100;
        }

        v97 = *(v95 + 16);
        v96 = *(v95 + 24);
        *&v124 = v95;
        if (v97 >= v96 >> 1)
        {
          sub_1C6FB1814();
          *&v124 = v101;
        }

        v98 = v124;
        *(v124 + 16) = v97 + 1;
        v99 = v98 + 16 * v97;
        *(v99 + 32) = v92;
        *(v99 + 40) = v94;
        v88 = v91;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v102 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v103 = v117;
  v104 = sub_1C73C4378(v102, a12, v84, &v125, v117);

  *v116 = v104;
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v105 = v115;
  sub_1C754F1AC();
  return (*(v118 + 8))(v105, v119);
}

uint64_t sub_1C73C4378(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, void *a5)
{
  v57 = sub_1C754F38C();
  v10 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v14 = *(a4 + 8);
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  sub_1C754F1CC();
  v62 = a2;
  if (*(a2 + 16))
  {
    v60 = a5;
    v15 = [v13 librarySpecificFetchOptions];
    [v15 setSharingFilter_];
    if (a3 == 1)
    {
      [v15 setIncludeMediaAnalysisProcessingRangeTypes_];
    }

    v16 = objc_opt_self();
    v17 = sub_1C7550B3C();
    v18 = [v16 fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v17 options:v15];

    v19 = v60;
    if (v18)
    {
      v53 = v15;
      v54 = v12;
      v55 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      v20 = sub_1C75504AC();

      v15 = 0;
      v12 = *(a1 + 16);
      v56 = a1 + 40;
      v58 = MEMORY[0x1E69E7CC0];
      *&v21 = 136315394;
      v59 = v21;
      v61 = v12;
LABEL_6:
      v22 = (v56 + 16 * v15);
      while (1)
      {
        if (v12 == v15)
        {

          __swift_project_boxed_opaque_existential_1(v19, v19[3]);
          v12 = v54;
          sub_1C754F1AC();
          v41 = v57;
          a1 = v58;
          v10 = v55;
          goto LABEL_32;
        }

        if (v15 >= v12)
        {
          break;
        }

        if (__OFADD__(v15, 1))
        {
          goto LABEL_34;
        }

        a1 = *(v22 - 1);
        v10 = *v22;
        v23 = *(v20 + 16);
        sub_1C75504FC();
        if (!v23)
        {
          goto LABEL_20;
        }

        sub_1C6F78124(a1, v10);
        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }

        v25 = v20;
        v26 = sub_1C75504FC();
        sub_1C706D154(v26);
        sub_1C7069A44();
        if (!*(v27 + 16))
        {

          v12 = v61;
LABEL_20:
          v37 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6F7ED9C();
            v37 = v65;
          }

          v39 = *(v37 + 16);
          if (v39 >= *(v37 + 24) >> 1)
          {
            sub_1C6F7ED9C();
            v37 = v65;
          }

          *(v37 + 16) = v39 + 1;
          v58 = v37;
          v40 = v37 + 16 * v39;
          *(v40 + 32) = a1;
          *(v40 + 40) = v10;
          v15 = v15 + 1;
          goto LABEL_6;
        }

        v63 = v22;
        if (qword_1EDD09EB8 != -1)
        {
          swift_once();
        }

        v28 = sub_1C754FF1C();
        __swift_project_value_buffer(v28, qword_1EDD09EC0);
        sub_1C75504FC();

        v29 = sub_1C754FEEC();
        v30 = sub_1C755117C();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v64 = v32;
          *v31 = v59;
          *(v31 + 4) = sub_1C6F765A4(a1, v10, &v64);
          *(v31 + 12) = 2080;
          a1 = sub_1C7550F9C();
          v34 = v33;

          v35 = sub_1C6F765A4(a1, v34, &v64);

          *(v31 + 14) = v35;
          _os_log_impl(&dword_1C6F5C000, v29, v30, "Asset %s has %s negative feedback person UUIDs in it, filtering this asset out.", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v32, -1, -1);
          v36 = v31;
          v19 = v60;
          MEMORY[0x1CCA5F8E0](v36, -1, -1);
        }

        else
        {
        }

        v15 = v15 + 1;
        v22 = v63 + 2;
        v20 = v25;
        v12 = v61;
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    else if (qword_1EDD09EB8 == -1)
    {
LABEL_28:
      v44 = sub_1C754FF1C();
      __swift_project_value_buffer(v44, qword_1EDD09EC0);
      sub_1C75504FC();
      v45 = sub_1C754FEEC();
      v46 = sub_1C755119C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v65 = v48;
        *v47 = 136315138;
        v49 = MEMORY[0x1CCA5D090](a1, MEMORY[0x1E69E6158]);
        v51 = sub_1C6F765A4(v49, v50, &v65);
        v19 = v60;

        *(v47 + 4) = v51;
        _os_log_impl(&dword_1C6F5C000, v45, v46, "Could not generate personUUIDsByAssetUUID dictionary for asset UUIDs %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1CCA5F8E0](v48, -1, -1);
        MEMORY[0x1CCA5F8E0](v47, -1, -1);
      }

      v42 = v19[3];
      v43 = v19;
      goto LABEL_31;
    }

    swift_once();
    goto LABEL_28;
  }

  v42 = a5[3];
  v43 = a5;
LABEL_31:
  __swift_project_boxed_opaque_existential_1(v43, v42);
  sub_1C75504FC();
  sub_1C754F1AC();
  v41 = v57;
LABEL_32:
  (*(v10 + 8))(v12, v41);
  return a1;
}

uint64_t sub_1C73C4A20@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v28 = a2;
  v9 = sub_1C754F38C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C754F1CC();
  if (qword_1EDD09EB8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EDD09EC0);
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v12;
    v17 = v10;
    v18 = a3;
    v19 = v9;
    v20 = a4;
    v21 = a5;
    v22 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Library required absolute fallback case for background suggestions.", v16, 2u);
    v23 = v22;
    a5 = v21;
    a4 = v20;
    v9 = v19;
    a3 = v18;
    v10 = v17;
    v12 = v27;
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
  }

  v24 = [v28 librarySpecificFetchOptions];
  [v24 setSharingFilter_];
  [v24 setFetchLimit_];
  if (qword_1EC214090 != -1)
  {
    swift_once();
  }

  [v24 setInternalPredicate_];
  v25 = [objc_opt_self() fetchAssetsWithOptions_];

  *a5 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C754F1AC();
  return (*(v10 + 8))(v12, v9);
}

void sub_1C73C4D08(char a1)
{
  v2 = sub_1C754DFFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_1C754DFEC();
    v25 = sub_1C754DFDC();
    (*(v3 + 8))(v5, v2);
    if ((v25 & 0x8000000000000000) == 0 || (v26 = __OFSUB__(0, v25), v25 = -v25, !v26))
    {
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v27 = sub_1C754FF1C();
      __swift_project_value_buffer(v27, qword_1EDD09EC0);
      v10 = sub_1C754FEEC();
      v28 = sub_1C755117C();
      if (os_log_type_enabled(v10, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v25;
        _os_log_impl(&dword_1C6F5C000, v10, v28, "SuggestedAssetsForBackgroundPlayback random number generator seed = %ld, randomly chosen.", v29, 0xCu);
        MEMORY[0x1CCA5F8E0](v29, -1, -1);
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0x64644D4D79797979, 0xE800000000000000, v10);
  sub_1C754DF5C();
  v11 = sub_1C754DECC();
  (*(v7 + 8))(v9, v6);
  v12 = [v10 stringFromDate:v11];

  v13 = sub_1C755068C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_71;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v53 = 0;
    sub_1C71CBAA8(v13, v15, 10);
    v21 = v49;
    v44 = v50;
LABEL_70:

    if ((v44 & 1) == 0)
    {
LABEL_72:
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v45 = sub_1C754FF1C();
      __swift_project_value_buffer(v45, qword_1EDD09EC0);
      v46 = sub_1C754FEEC();
      v47 = sub_1C755117C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        *(v48 + 4) = v21;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "SuggestedAssetsForBackgroundPlayback random number generator seed = %ld, set by date.", v48, 0xCu);
        MEMORY[0x1CCA5F8E0](v48, -1, -1);
      }

LABEL_77:
      return;
    }

LABEL_71:
    v21 = 0;
    goto LABEL_72;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v19 = sub_1C75518FC();
    }

    v20 = *v19;
    if (v20 == 43)
    {
      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          if (v19)
          {
            v33 = v19 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                goto LABEL_68;
              }

              v35 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_68;
              }

              v21 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_68;
              }

              ++v33;
              if (!--v16)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_68;
      }

      goto LABEL_84;
    }

    if (v20 != 45)
    {
      if (v17)
      {
        v21 = 0;
        if (v19)
        {
          while (1)
          {
            v39 = *v19 - 48;
            if (v39 > 9)
            {
              goto LABEL_68;
            }

            v40 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_68;
            }

            v21 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              goto LABEL_68;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_68:
      v21 = 0;
      LOBYTE(v16) = 1;
      goto LABEL_69;
    }

    if (v17 >= 1)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v21 = 0;
        if (v19)
        {
          v22 = v19 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_68;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_68;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_68;
            }

            ++v22;
            if (!--v16)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v16) = 0;
LABEL_69:
        v53 = v16;
        v44 = v16;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    goto LABEL_82;
  }

  v52[0] = v13;
  v52[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 != 45)
    {
      if (v16)
      {
        v21 = 0;
        v41 = v52;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v16)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v16)
    {
      if (--v16)
      {
        v21 = 0;
        v30 = v52 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v32 - v31;
          if (__OFSUB__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v16)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_83;
  }

  if (v16)
  {
    if (--v16)
    {
      v21 = 0;
      v36 = v52 + 1;
      while (1)
      {
        v37 = *v36 - 48;
        if (v37 > 9)
        {
          break;
        }

        v38 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        ++v36;
        if (!--v16)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_85:
  __break(1u);
}

void sub_1C73C5360(id *a1)
{
  v1 = 0;
  sub_1C73BEEC0(0, 16, a1);
  if (*(v2 + 16) < 7uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v1 = *(v2 + 38);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  sub_1C70E3D7C();
  v3 = v4;
LABEL_3:
  *(v3 + 38) = v1 & 0xF | 0x40;
  if (*(v3 + 16) < 9uLL)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 40) = *(v3 + 40) & 0x3F | 0x80;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
    sub_1C754DFBC();
  }
}

uint64_t sub_1C73C5444(void *a1)
{
  if (!sub_1C73C6790(a1))
  {
    return sub_1C73C5848(a1);
  }

  sub_1C755176C();
  sub_1C6FE1034();
  sub_1C6FCA5E0(v4);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      v2 = 0x616E2D7473726966;
      if ((sub_1C73BF00C(0x616E2D7473726966, 0xEA0000000000656DLL) & 1) == 0)
      {

        return v2;
      }
    }
  }

  else
  {
    sub_1C7030CDC(v5, &qword_1EC219770);
  }

  sub_1C755176C();
  sub_1C6FE1034();

  sub_1C6FCA5E0(v4);
  if (!v6)
  {
    sub_1C7030CDC(v5, &qword_1EC219770);
    return sub_1C73C5848(a1);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1C73C5848(a1);
  }

  v2 = 0x6D616E2D7473616CLL;
  if (sub_1C73BF00C(0x6D616E2D7473616CLL, 0xE900000000000065))
  {

    return sub_1C73C5848(a1);
  }

  return v2;
}

uint64_t sub_1C73C561C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t *a5)
{
  if ((a4 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_11;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *a5;
  v27 = *a5;
  v10 = sub_1C6F78124(a1, a2);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
  if (sub_1C7551A2C())
  {
    v14 = sub_1C6F78124(a1, a2);
    if ((v13 & 1) != (v15 & 1))
    {
LABEL_19:
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    v12 = v14;
  }

  *a5 = v27;
  if ((v13 & 1) == 0)
  {
    sub_1C6FC6D3C(v12, a1, a2, 0, v27);
    sub_1C75504FC();
  }

  v16 = *(v27 + 56);
  v17 = *(v16 + 8 * v12);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v16 + 8 * v12) = v19;
  v20 = sub_1C6FBBCA8;
LABEL_11:
  v21 = 2128237;
  if ((a3 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  v28 = v21;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](a1, a2);

  sub_1C6FE0FE8(a1, a2, *a5);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    sub_1C7025C9C();
    v24 = sub_1C75515BC();
    v22 = v25;
  }

  MEMORY[0x1CCA5CD70](v24, v22);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

  sub_1C6FC0A8C(v20);
  return v28;
}

uint64_t sub_1C73C5848(void *a1)
{
  v2 = sub_1C7416D60(a1);
  if (v3)
  {
    v4 = v2;
    if ((sub_1C73BF00C(v2, v3) & 1) == 0)
    {
      return v4;
    }
  }

  v5 = sub_1C72372BC(a1);
  if (!v6)
  {
    return 0;
  }

  v4 = v5;
  if (sub_1C73BF00C(v5, v6))
  {

    return 0;
  }

  return v4;
}

unint64_t sub_1C73C58D0()
{
  result = qword_1EC21B310;
  if (!qword_1EC21B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B310);
  }

  return result;
}

unint64_t sub_1C73C5924()
{
  result = qword_1EDD0A018;
  if (!qword_1EDD0A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A018);
  }

  return result;
}

unint64_t sub_1C73C5978()
{
  result = qword_1EC21B320;
  if (!qword_1EC21B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B320);
  }

  return result;
}

unint64_t sub_1C73C59CC()
{
  result = qword_1EC21B330;
  if (!qword_1EC21B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B330);
  }

  return result;
}

uint64_t sub_1C73C5A20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C73C5A68()
{
  result = qword_1EDD0E4F0;
  if (!qword_1EDD0E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E4F0);
  }

  return result;
}

uint64_t sub_1C73C5ABC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B340);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C73C5B40(uint64_t a1)
{
  result = sub_1C73C5B68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C73C5B68()
{
  result = qword_1EDD0C0B0;
  if (!qword_1EDD0C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C0B0);
  }

  return result;
}

unint64_t sub_1C73C5BBC(uint64_t a1)
{
  result = sub_1C73C5BE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C73C5BE4()
{
  result = qword_1EC21B350;
  if (!qword_1EC21B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetCurationUtilities.Options(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetCurationUtilities.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_1C73C5E48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73C5E9C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C73C5F1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 37))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73C5F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CharacterCurationInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PetSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AssetCurationUtilities.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C73C6330()
{
  result = qword_1EC21B358;
  if (!qword_1EC21B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B358);
  }

  return result;
}

unint64_t sub_1C73C6388()
{
  result = qword_1EC21B360;
  if (!qword_1EC21B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B360);
  }

  return result;
}

unint64_t sub_1C73C63E0()
{
  result = qword_1EC21B368;
  if (!qword_1EC21B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B368);
  }

  return result;
}

unint64_t sub_1C73C6438()
{
  result = qword_1EC21B370;
  if (!qword_1EC21B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B370);
  }

  return result;
}

unint64_t sub_1C73C6490()
{
  result = qword_1EDD0E4E0;
  if (!qword_1EDD0E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E4E0);
  }

  return result;
}

unint64_t sub_1C73C64E8()
{
  result = qword_1EDD0E4E8;
  if (!qword_1EDD0E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E4E8);
  }

  return result;
}

unint64_t sub_1C73C6540()
{
  result = qword_1EC21B378;
  if (!qword_1EC21B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B378);
  }

  return result;
}

unint64_t sub_1C73C6598()
{
  result = qword_1EC21B380;
  if (!qword_1EC21B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B380);
  }

  return result;
}

unint64_t sub_1C73C65F0()
{
  result = qword_1EC21B388;
  if (!qword_1EC21B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B388);
  }

  return result;
}

unint64_t sub_1C73C6648()
{
  result = qword_1EC21B390;
  if (!qword_1EC21B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B390);
  }

  return result;
}

unint64_t sub_1C73C669C()
{
  result = qword_1EC21B398;
  if (!qword_1EC21B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B398);
  }

  return result;
}

unint64_t sub_1C73C66F0()
{
  result = qword_1EDD0C0A8;
  if (!qword_1EDD0C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C0A8);
  }

  return result;
}

uint64_t objectdestroyTm_3(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C73C6790(void *a1)
{
  v1 = [a1 contactMatchingDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C75504AC();

  return v3;
}

unint64_t sub_1C73C67FC()
{
  result = qword_1EC21B3B0;
  if (!qword_1EC21B3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B3B0);
  }

  return result;
}

void sub_1C73C6860(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v39 = a1;
  v42 = a3;
  v4 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v38 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  type metadata accessor for FreeformStoryDiagnosticsUtils();
  sub_1C734B404();
  if (!v3)
  {
    v36 = v4;
    v22 = v38;
    v21 = v39;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1C7044B24(v11);
    }

    else
    {
      v33 = *(v14 + 32);
      v34 = v14 + 32;
      v33(v20, v11, v12);
      v35 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
      v40 = v21;
      v41 = v37;
      v23 = v22;
      v24 = *(v22 + 104);
      v25 = v36;
      v24(v8, *MEMORY[0x1E6968F70], v36);
      sub_1C6FB5E8C();
      sub_1C754DD1C();
      (*(v23 + 8))(v8, v25);
      sub_1C754DCDC();
      v26 = sub_1C755065C();

      v27 = v35;
      v28 = [v35 fileExistsAtPath_];

      v29 = *(v14 + 8);
      v29(v20, v12);
      if (v28)
      {
        v30 = v42;
        v33(v42, v17, v12);
        v31 = 0;
LABEL_8:
        __swift_storeEnumTagSinglePayload(v30, v31, 1, v12);
        return;
      }

      v29(v17, v12);
    }

    v31 = 1;
    v30 = v42;
    goto LABEL_8;
  }
}

void sub_1C73C6BB8()
{
  v1 = [v0 sceneprintProperties];
  if (v1)
  {
    v2 = sub_1C73C6F38(v1, &selRef_sceneprint);
    if (v3 >> 60 != 15)
    {
      v4 = v2;
      v5 = v3;
      sub_1C6F65BE8(0, &qword_1EDD0CE48);
      sub_1C6F65BE8(0, &qword_1EDD069C8);
      v6 = sub_1C75511FC();
      if (!v6)
      {
        goto LABEL_4;
      }

      v7 = v6;
      v8 = sub_1C73C6F38(v7, &selRef_descriptorData);
      if (v9 >> 60 == 15)
      {

LABEL_4:
        sub_1C70B5C10(v4, v5);
        return;
      }

      v10 = v8;
      v11 = v9;
      v12 = MEMORY[0x1CCA5A320]();
      sub_1C725CE9C(v12 / 4, 0.0);
      v14 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C70E3D94();
        v14 = v15;
      }

      if (*(v14 + 16) >> 61)
      {
        __break(1u);
      }

      else
      {
        sub_1C73C6FA4();
        sub_1C754D85C();
        sub_1C70B5C10(v4, v5);

        sub_1C70B5C10(v10, v11);
      }
    }
  }
}

unint64_t sub_1C73C6D60(uint64_t a1, uint64_t a2)
{
  sub_1C73C6EBC(a1, a2);
  sub_1C73C6E9C(a1);
  return sub_1C73C6E9C(a2);
}

uint64_t sub_1C73C6DDC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v7 = 1065353216;
  __Mean = 0.0;
  sub_1C725CE9C(v2, 0.0);
  v4 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB1B5C();
    v4 = v5;
  }

  vDSP_normalize((a1 + 32), 1, (v4 + 32), 1, &__Mean, &v7, v2);
  return v4;
}

unint64_t sub_1C73C6E9C(uint64_t a1)
{
  result = *(a1 + 16);
  if (!(result >> 31))
  {
    return cblas_snrm2_NEWLAPACK();
  }

  __break(1u);
  return result;
}

float sub_1C73C6EBC(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = 0.0;
  vDSP_dotpr((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  return __C;
}

uint64_t sub_1C73C6F38(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C754DDEC();

  return v4;
}

unint64_t sub_1C73C6FA4()
{
  result = qword_1EDD0CBC8;
  if (!qword_1EDD0CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CBC8);
  }

  return result;
}

uint64_t static MomentsPromptDatabaseLoader.MomentsPromptTemplate.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C7551DBC();
  }
}

uint64_t sub_1C73C7160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xEE00676E69727453;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E4974706D6F7270 && a2 == 0xEB00000000786564;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954656C646E7562 && a2 == 0xEA00000000006570;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7079546563616C70 && a2 == 0xE900000000000065;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001C75AE4D0 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C616E6F73726570 && a2 == 0xEE00737469617254;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x614E6E6F73726570 && a2 == 0xEA0000000000656DLL;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656D614E79746963 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x65666552656D6974 && a2 == 0xED000065636E6572)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C7551DBC();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
  }
}

unint64_t sub_1C73C74EC(char a1)
{
  result = 0x6574616C706D6574;
  switch(a1)
  {
    case 1:
      result = 0x6E4974706D6F7270;
      break;
    case 2:
      result = 0x7974697669746361;
      break;
    case 3:
      result = 0x7954656C646E7562;
      break;
    case 4:
      result = 0x7079546563616C70;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6C616E6F73726570;
      break;
    case 7:
      result = 0x614E6E6F73726570;
      break;
    case 8:
      result = 0x6D614E6563616C70;
      break;
    case 9:
      result = 0x656D614E79746963;
      break;
    case 10:
      result = 0x65666552656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73C7664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73C7160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73C768C(uint64_t a1)
{
  v2 = sub_1C73C7D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73C76C8(uint64_t a1)
{
  v2 = sub_1C73C7D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MomentsPromptDatabaseLoader.MomentsPromptTemplate.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t MomentsPromptDatabaseLoader.MomentsPromptTemplate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B3B8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73C7D4C();
  sub_1C7551FFC();
  if (!v2)
  {
    LOBYTE(v41[0]) = 0;
    v10 = sub_1C7551BBC();
    v12 = v11;
    OUTLINED_FUNCTION_0_168(1);
    v34 = sub_1C7551BFC();
    OUTLINED_FUNCTION_0_168(2);
    v33 = sub_1C7551BBC();
    v39 = v13;
    OUTLINED_FUNCTION_0_168(3);
    v32 = sub_1C7551BBC();
    v38 = v14;
    OUTLINED_FUNCTION_0_168(4);
    v31 = sub_1C7551BBC();
    v37 = v15;
    OUTLINED_FUNCTION_0_168(5);
    v30 = sub_1C7551BBC();
    v36 = v16;
    OUTLINED_FUNCTION_0_168(6);
    v29 = sub_1C7551BBC();
    v35 = v17;
    OUTLINED_FUNCTION_0_168(7);
    v46 = sub_1C7551BCC();
    OUTLINED_FUNCTION_0_168(8);
    v28 = sub_1C7551BCC();
    OUTLINED_FUNCTION_0_168(9);
    v27 = sub_1C7551BCC();
    v47 = 10;
    v18 = sub_1C7551BCC();
    v46 &= 1u;
    v28 &= 1u;
    v27 &= 1u;
    v19 = OUTLINED_FUNCTION_2_116();
    v20(v19);
    HIDWORD(v26) = v18 & 1;
    __src[0] = v10;
    __src[1] = v12;
    __src[2] = v34;
    __src[3] = v33;
    v21 = v39;
    __src[4] = v39;
    __src[5] = v32;
    v22 = v38;
    __src[6] = v38;
    v23 = v37;
    __src[7] = v31;
    __src[8] = v37;
    v24 = v36;
    __src[9] = v30;
    __src[10] = v36;
    __src[11] = v29;
    __src[12] = v35;
    LOBYTE(__src[13]) = v46;
    BYTE1(__src[13]) = v28;
    BYTE2(__src[13]) = v27;
    BYTE3(__src[13]) = BYTE4(v26);
    memcpy(a2, __src, 0x6CuLL);
    sub_1C7262AA8(__src, v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41[0] = v10;
    v41[1] = v12;
    v41[2] = v34;
    v41[3] = v33;
    v41[4] = v21;
    v41[5] = v32;
    v41[6] = v22;
    v41[7] = v31;
    v41[8] = v23;
    v41[9] = v30;
    v41[10] = v24;
    v41[11] = v29;
    v41[12] = v35;
    v42 = v46;
    v43 = v28;
    v44 = v27;
    v45 = BYTE4(v26);
    return sub_1C7262B04(v41);
  }

  OUTLINED_FUNCTION_4_95();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (v5)
  {

    if ((v8 & 1) == 0)
    {
LABEL_9:
      if (v9)
      {
      }

      return result;
    }
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  if (v9)
  {
  }

  return result;
}

uint64_t sub_1C73C7D04()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

unint64_t sub_1C73C7D4C()
{
  result = qword_1EC21B3C0;
  if (!qword_1EC21B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B3C0);
  }

  return result;
}

id static MomentsPromptDatabaseLoader.readTemplates(from:)()
{
  v16[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C75506CC();
  v6 = sub_1C755069C();
  v8 = v7;
  (*(v2 + 8))(v5, v0);
  if (v8 >> 60 != 15)
  {
    v10 = objc_opt_self();
    v11 = sub_1C754DDCC();
    v16[0] = 0;
    v0 = [v10 JSONObjectWithData:v11 options:0 error:v16];

    if (v0)
    {
      v12 = v16[0];
      sub_1C75515CC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
      if (swift_dynamicCast())
      {
        v0 = sub_1C725EAB0(v15);
        sub_1C70B5C10(v6, v8);

        return v0;
      }

      sub_1C726152C();
      swift_allocError();
      *v13 = 0;
      v13[1] = 0;
    }

    else
    {
      v0 = v16[0];
      sub_1C754DBEC();
    }

    swift_willThrow();
    sub_1C70B5C10(v6, v8);
    return v0;
  }

  sub_1C726152C();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
  swift_willThrow();
  return v0;
}

uint64_t sub_1C73C8044@<X0>(uint64_t a1@<X8>)
{
  v2 = 0xEE00676E69727453;
  v3 = 0x6574616C706D6574;
  OUTLINED_FUNCTION_9_84();
  if (!v29)
  {
    sub_1C6FE32F4(v28);
    goto LABEL_7;
  }

  if ((OUTLINED_FUNCTION_1_124() & 1) == 0)
  {
LABEL_7:
    sub_1C726152C();
    swift_allocError();
    *v5 = v3;
    v5[1] = v2;
    return swift_willThrow();
  }

  v2 = 0xEB00000000786564;
  v3 = 0x6E4974706D6F7270;
  OUTLINED_FUNCTION_9_84();
  if ((OUTLINED_FUNCTION_1_124() & 1) == 0)
  {

    goto LABEL_7;
  }

  v30 = v26;
  sub_1C6FE3750(0x7974697669746361, 0xEC00000065707954);
  if (OUTLINED_FUNCTION_1_124())
  {
    v4 = v27;
    v25 = v26;
  }

  else
  {
    v25 = 0;
    v4 = 0xE000000000000000;
  }

  v24 = v4;
  sub_1C6FE3750(0x7954656C646E7562, 0xEA00000000006570);
  if (v29)
  {
    if (OUTLINED_FUNCTION_1_124())
    {
      v7 = v27;
      v23 = v26;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1C6FE32F4(v28);
  }

  v23 = 0;
  v7 = 0xE000000000000000;
LABEL_15:
  v22 = v7;
  OUTLINED_FUNCTION_8_78(0x7079546563616C70);
  if (v29)
  {
    if (OUTLINED_FUNCTION_1_124())
    {
      v8 = v27;
      v21 = v26;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1C6FE32F4(v28);
  }

  v21 = 0;
  v8 = 0xE000000000000000;
LABEL_20:
  v20 = v8;
  sub_1C6FE3750(0xD000000000000014, 0x80000001C75AE4D0);
  if (v29)
  {
    if (OUTLINED_FUNCTION_1_124())
    {
      v9 = v27;
      v19 = v26;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1C6FE32F4(v28);
  }

  v19 = 0;
  v9 = 0xE000000000000000;
LABEL_25:
  v18 = v9;
  sub_1C6FE3750(0x6C616E6F73726570, 0xEE00737469617254);
  if (v29)
  {
    if (OUTLINED_FUNCTION_1_124())
    {
      v10 = v27;
      v17 = v26;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1C6FE32F4(v28);
  }

  v17 = 0;
  v10 = 0xE000000000000000;
LABEL_30:
  v16 = v10;
  sub_1C6FE3750(0x614E6E6F73726570, 0xEA0000000000656DLL);
  if (v29)
  {
    if (OUTLINED_FUNCTION_1_124())
    {
      v11 = v26;
      goto LABEL_35;
    }
  }

  else
  {
    sub_1C6FE32F4(v28);
  }

  v11 = 0;
LABEL_35:
  OUTLINED_FUNCTION_8_78(0x6D614E6563616C70);
  if (v29)
  {
    v12 = v26;
    if (OUTLINED_FUNCTION_1_124())
    {
      v13 = v26;
      goto LABEL_40;
    }
  }

  else
  {
    v12 = v26;
    sub_1C6FE32F4(v28);
  }

  v13 = 0;
LABEL_40:
  sub_1C6FE3750(0x656D614E79746963, 0xE800000000000000);
  if (v29)
  {
    if (OUTLINED_FUNCTION_1_124())
    {
      v14 = v26;
      goto LABEL_45;
    }
  }

  else
  {
    sub_1C6FE32F4(v28);
  }

  v14 = 0;
LABEL_45:
  sub_1C6FE3750(0x65666552656D6974, 0xED000065636E6572);
  if (!v29)
  {
    result = sub_1C6FE32F4(v28);
    goto LABEL_49;
  }

  result = OUTLINED_FUNCTION_1_124();
  if (!result)
  {
LABEL_49:
    v15 = 0;
    goto LABEL_50;
  }

  v15 = v26;
LABEL_50:
  *a1 = v12;
  *(a1 + 8) = v27;
  *(a1 + 16) = v30;
  *(a1 + 24) = v25;
  *(a1 + 32) = v24;
  *(a1 + 40) = v23;
  *(a1 + 48) = v22;
  *(a1 + 56) = v21;
  *(a1 + 64) = v20;
  *(a1 + 72) = v19;
  *(a1 + 80) = v18;
  *(a1 + 88) = v17;
  *(a1 + 96) = v16;
  *(a1 + 104) = v11;
  *(a1 + 105) = v13;
  *(a1 + 106) = v14;
  *(a1 + 107) = v15;
  return result;
}

unint64_t sub_1C73C84BC()
{
  result = qword_1EC21B3C8;
  if (!qword_1EC21B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B3C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MomentsPromptDatabaseLoader(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C73C85C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 108))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73C8600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 108) = 1;
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

    *(result + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MomentsPromptDatabaseLoader.MomentsPromptTemplate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C73C8754()
{
  result = qword_1EC21B3D0;
  if (!qword_1EC21B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B3D0);
  }

  return result;
}

unint64_t sub_1C73C87AC()
{
  result = qword_1EC21B3D8;
  if (!qword_1EC21B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B3D8);
  }

  return result;
}

unint64_t sub_1C73C8804()
{
  result = qword_1EC21B3E0;
  if (!qword_1EC21B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B3E0);
  }

  return result;
}

uint64_t dispatch thunk of static PhotosFeedbackGenerativeStoryFactoryProtocol.createDonation(memory:prompt:statistics:generationTime:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1C72CCAE8;

  return v20(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, a10);
}

uint64_t sub_1C73C89C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = a4;
  v23 = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v20 - v7;
  v24 = a1;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;
  result = sub_1C75504FC();
  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(a2 + 48);
    v19 = type metadata accessor for Hastings.Feature();
    sub_1C73CAAA0(v18 + *(*(v19 - 8) + 72) * v17, v8, type metadata accessor for Hastings.Feature);
    *&v8[*(v21 + 48)] = *(*(a2 + 56) + 8 * v17);
    sub_1C75504FC();
    sub_1C73CA310(&v24, v8, v23, v22);
    result = sub_1C73CAD08(v8);
    if (v4)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v24;
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void Hastings.FeatureSelector.selectSignificantFeatures(for:scopingAssetUUIDs:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v169 = a1;
  v8 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v152 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v139 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v162 = (v139 - v18);
  v168 = _s15FeatureSelectorV11FeatureInfoVMa(0);
  OUTLINED_FUNCTION_3_0();
  v141 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_78();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v139 - v25;
  sub_1C754F2CC();
  v151 = v4;
  if (v4)
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v28 + 8))(a3);
  }

  else
  {
    v156 = v26;
    v154 = v16;
    v170 = v13;
    v29 = 0;
    v145 = *(v169 + 16);
    v144 = v169 + 32;
    v166 = "Hastings.curatedAssets";
    *&v27 = 136315650;
    v142 = v27;
    *&v27 = 136315394;
    v150 = v27;
    v149 = MEMORY[0x1E69E7CC8];
    v139[0] = a3;
    v30 = v168;
    v155 = v23;
    v158 = v5;
    v143 = a2;
    v167 = v8;
    while (v29 != v145)
    {
      v31 = (v144 + 32 * v29);
      v32 = v31[1];
      v157 = *v31;
      v33 = v31[2];
      v34 = v31[3];
      v148 = v29 + 1;
      v35 = MEMORY[0x1E69E7CC0];
      v177 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      v147 = v33;
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      v36 = v151;
      v37 = sub_1C73C89C4(MEMORY[0x1E69E7CC8], v34, a2, &v177);
      v151 = v36;
      v146 = v34;

      v38 = 0;
      v176 = v35;
      v39 = v37 + 64;
      v40 = 1 << *(v37 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(v37 + 64);
      v43 = (v40 + 63) >> 6;
      v169 = v35;
      v153 = v32;
      v160 = v37 + 64;
      v159 = v43;
      if (v42)
      {
        while (1)
        {
LABEL_13:
          v45 = __clz(__rbit64(v42));
          v42 &= v42 - 1;
          v46 = v45 | (v38 << 6);
          v47 = *(*(v37 + 56) + 8 * v46);
          v48 = *(v47 + 16);
          if (v48)
          {
            v140 = v37;
            v174 = MEMORY[0x1E69E7CC0];
            sub_1C75504FC();
            sub_1C716D854();
            v57 = v174;
            OUTLINED_FUNCTION_15_4();
            v139[1] = v47;
            v59 = v47 + v58;
            v164 = *(v60 + 72);
            v165 = v59;
            v61 = v48;
            v62 = v156;
            do
            {
              v63 = v62;
              sub_1C73CAAA0(v59, v62, _s15FeatureSelectorV11FeatureInfoVMa);
              v64 = *(v63 + *(v30 + 24));
              sub_1C73CAB00(v63, _s15FeatureSelectorV11FeatureInfoVMa);
              v174 = v57;
              v66 = *(v57 + 16);
              v65 = *(v57 + 24);
              v67 = v66 + 1;
              if (v66 >= v65 >> 1)
              {
                OUTLINED_FUNCTION_15(v65);
                sub_1C716D854();
                v57 = v174;
              }

              *(v57 + 16) = v67;
              *(v57 + 8 * v66 + 32) = v64;
              v59 += v164;
              --v61;
              v30 = v168;
              v62 = v156;
            }

            while (v61);
            v68 = 0;
            v69 = 0;
            v70 = v66 + 1;
            v71 = v155;
            v72 = v169;
            do
            {
              v73 = *(v57 + 8 * v68 + 32);
              v74 = __OFADD__(v69, v73);
              v69 += v73;
              if (v74)
              {
                __break(1u);
                goto LABEL_71;
              }

              ++v68;
            }

            while (v70 != v68);
            v75 = v69 / v67;
            v76 = 0.0;
            v77 = 32;
            do
            {
              v76 = v76 + (*(v57 + v77) - v75) * (*(v57 + v77) - v75);
              v77 += 8;
              --v70;
            }

            while (v70);

            v78 = sqrt(v76 / v67) * 0.5;
            if (v78 <= v75 * 0.6)
            {
              v78 = v75 * 0.6;
            }

            v79 = OUTLINED_FUNCTION_10_73(v75 - v78);
            if (!(v81 ^ v74 | v80))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
              return;
            }

            if (v79 <= -9.22337204e18)
            {
              goto LABEL_72;
            }

            if (v79 >= 9.22337204e18)
            {
              goto LABEL_73;
            }

            v161 = v79;
            v82 = v165;
            v83 = v162;
            do
            {
              v163 = v48;
              sub_1C73CAAA0(v82, v71, _s15FeatureSelectorV11FeatureInfoVMa);
              OUTLINED_FUNCTION_0_169();
              sub_1C73CAAA0(v71, v83, v84);
              v85 = *(v71 + *(v30 + 24));
              v86 = v161;
              v165 = v82;
              if (v85 >= v161)
              {
                OUTLINED_FUNCTION_0_169();
                sub_1C73CAAA0(v83, v154, v93);
                OUTLINED_FUNCTION_12_69();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C6FB2E64(0, *(v72 + 16) + 1, 1, v72);
                  v72 = v107;
                }

                OUTLINED_FUNCTION_18_59();
                v95 = *(v72 + 16);
                v94 = *(v72 + 24);
                if (v95 >= v94 >> 1)
                {
                  v108 = OUTLINED_FUNCTION_15(v94);
                  sub_1C6FB2E64(v108, v95 + 1, 1, v72);
                  v72 = v109;
                }

                *(v72 + 16) = v95 + 1;
                OUTLINED_FUNCTION_15_4();
                OUTLINED_FUNCTION_4_96();
                sub_1C73CADE0(v96, v97, v98);
                v169 = v72;
                v176 = v72;
                swift_endAccess();
                v174 = 0;
                v175 = 0xE000000000000000;
                sub_1C755180C();
                v100 = *v162;
                v99 = v162[1];
                sub_1C75504FC();

                v174 = v100;
                v175 = v99;
                MEMORY[0x1CCA5CD70](0x2073657373617020, 0xE900000000000028);
                v173 = v85;
                sub_1C7551D8C();
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](40, 0xE100000000000000);
                OUTLINED_FUNCTION_7_86(*(v71 + *(v30 + 20)));
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](0x203D3E2029, 0xE500000000000000);
                OUTLINED_FUNCTION_7_86(v161);
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
                v90 = v174;
                v91 = v175;
                OUTLINED_FUNCTION_12_69();
                v92 = v177;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_2_117();
                  sub_1C6FB1814();
                  v92 = v110;
                }
              }

              else
              {
                v169 = v72;
                v174 = 0;
                v175 = 0xE000000000000000;
                v87 = v83;
                sub_1C755180C();
                v89 = *v83;
                v88 = v87[1];
                sub_1C75504FC();

                v174 = v89;
                v175 = v88;
                MEMORY[0x1CCA5CD70](0x2820736C69616620, 0xE800000000000000);
                v173 = v85;
                sub_1C7551D8C();
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](40, 0xE100000000000000);
                OUTLINED_FUNCTION_7_86(*(v71 + *(v30 + 20)));
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](540811305, 0xE400000000000000);
                v173 = v86;
                sub_1C7551D8C();
                OUTLINED_FUNCTION_14_62();

                MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
                v90 = v174;
                v91 = v175;
                OUTLINED_FUNCTION_12_69();
                v92 = v177;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_2_117();
                  sub_1C6FB1814();
                  v92 = v106;
                }

                OUTLINED_FUNCTION_18_59();
              }

              v102 = *(v92 + 16);
              v101 = *(v92 + 24);
              v72 = v169;
              if (v102 >= v101 >> 1)
              {
                OUTLINED_FUNCTION_15(v101);
                sub_1C6FB1814();
                v92 = v105;
              }

              *(v92 + 16) = v102 + 1;
              v103 = v92 + 16 * v102;
              *(v103 + 32) = v90;
              *(v103 + 40) = v91;
              v177 = v92;
              swift_endAccess();
              v71 = v155;
              sub_1C73CAB00(v155, _s15FeatureSelectorV11FeatureInfoVMa);
              OUTLINED_FUNCTION_3_105();
              v83 = v162;
              sub_1C73CAB00(v162, v104);
              v82 = v165 + v164;
              v48 = v86 - 1;
              v30 = v168;
            }

            while (v48);
            v169 = v72;

            v32 = v153;
            v37 = v140;
          }

          else
          {
            v49 = *(*(v37 + 48) + v46);
            sub_1C75504FC();
            v50 = sub_1C754FEEC();
            v51 = sub_1C755117C();

            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              v174 = swift_slowAlloc();
              *v52 = v150;
              v53 = 0xE900000000000072;
              v54 = 0x6574636172616843;
              switch(v49)
              {
                case 1:
                  v53 = 0xE800000000000000;
                  v54 = 0x6E6F697461636F4CLL;
                  break;
                case 2:
                  v53 = 0xE500000000000000;
                  v54 = 0x746E657645;
                  break;
                case 3:
                  v53 = 0xE400000000000000;
                  v54 = 1885958740;
                  break;
                case 4:
                  v53 = 0xE500000000000000;
                  v54 = 0x7972657551;
                  break;
                case 5:
                  v53 = 0xEA00000000007265;
                  v54 = 0x6B61657262656954;
                  break;
                default:
                  break;
              }

              v55 = sub_1C6F765A4(v54, v53, &v174);

              *(v52 + 4) = v55;
              *(v52 + 12) = 2080;
              v56 = v153;
              *(v52 + 14) = sub_1C6F765A4(v157, v153, &v174);
              _os_log_impl(&dword_1C6F5C000, v50, v51, "No feature %s for cluster %s is found", v52, 0x16u);
              swift_arrayDestroy();
              v32 = v56;
              OUTLINED_FUNCTION_109();
              OUTLINED_FUNCTION_109();

              v30 = v168;
            }

            else
            {
            }
          }

          v39 = v160;
          v43 = v159;
          if (!v42)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
LABEL_9:
        v44 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
          return;
        }

        if (v44 >= v43)
        {
          break;
        }

        v42 = *(v39 + 8 * v44);
        ++v38;
        if (v42)
        {
          v38 = v44;
          goto LABEL_13;
        }
      }

      sub_1C75504FC();
      v111 = sub_1C754FEEC();
      v112 = sub_1C755117C();

      if (os_log_type_enabled(v111, v112))
      {
        LODWORD(v164) = v112;
        v113 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v173 = v163;
        *v113 = v142;
        v114 = sub_1C6F765A4(v157, v32, &v173);

        *(v113 + 4) = v114;
        v165 = v113;
        *(v113 + 12) = 2080;
        v115 = v169;
        v116 = *(v169 + 16);
        if (v116)
        {
          v161 = v111;
          v172 = MEMORY[0x1E69E7CC0];
          sub_1C75504FC();
          sub_1C6F7ED9C();
          v117 = v172;
          OUTLINED_FUNCTION_15_4();
          v119 = v115 + v118;
          v121 = *(v120 + 72);
          v122 = v170;
          do
          {
            sub_1C73CAAA0(v119, v122, type metadata accessor for Hastings.Feature);
            v174 = 0;
            v175 = 0xE000000000000000;
            sub_1C755180C();
            MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
            MEMORY[0x1CCA5CD70](*v170, *(v170 + 8));
            MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
            v171 = *(v170 + 16);
            sub_1C75519EC();
            MEMORY[0x1CCA5CD70](0xD000000000000010, v166 | 0x8000000000000000);
            sub_1C754F58C();
            sub_1C75519EC();
            MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
            v122 = v170;
            v123 = v174;
            v124 = v175;
            sub_1C73CAB00(v170, type metadata accessor for Hastings.Feature);
            v172 = v117;
            v126 = *(v117 + 16);
            v125 = *(v117 + 24);
            if (v126 >= v125 >> 1)
            {
              OUTLINED_FUNCTION_15(v125);
              sub_1C6F7ED9C();
              v122 = v170;
              v117 = v172;
            }

            *(v117 + 16) = v126 + 1;
            v127 = v117 + 16 * v126;
            *(v127 + 32) = v123;
            *(v127 + 40) = v124;
            v119 += v121;
            --v116;
          }

          while (v116);

          v30 = v168;
          v111 = v161;
        }

        else
        {
          v117 = MEMORY[0x1E69E7CC0];
        }

        v174 = v117;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        sub_1C703328C();
        v128 = OUTLINED_FUNCTION_13_76();
        v130 = v129;

        v131 = sub_1C6F765A4(v128, v130, &v173);

        v132 = v165;
        *(v165 + 14) = v131;
        *(v132 + 22) = 2080;
        swift_beginAccess();
        v174 = v177;
        sub_1C75504FC();
        v133 = OUTLINED_FUNCTION_13_76();
        v135 = v134;

        v136 = sub_1C6F765A4(v133, v135, &v173);

        *(v132 + 24) = v136;
        _os_log_impl(&dword_1C6F5C000, v111, v164, "Cluster %s with significant features\n\t%s.\nStatus of the feature selection\n\t%s.", v132, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        a2 = v143;
      }

      else
      {

        a2 = v143;
      }

      sub_1C75504FC();
      v137 = v149;
      swift_isUniquelyReferenced_nonNull_native();
      v174 = v137;
      sub_1C6FC8618();

      v149 = v174;

      v29 = v148;
    }

    v138 = v151;
    sub_1C754F2EC();
    if (v138)
    {
    }
  }
}

uint64_t Hastings.FeatureSelector.selectNonsignificantFeatures(from:for:)(uint64_t a1, void *a2)
{
  v104 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v100 = v9;
  v101 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v88 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v87 - v14;
  v15 = *(a1 + 56);
  v103 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v102 = (v16 + 63) >> 6;
  v99 = *MEMORY[0x1E69C1920];
  v97 = v5 + 8;
  v98 = (v5 + 104);
  sub_1C75504FC();
  v19 = 0;
  v93 = a2 + 7;
  v91 = MEMORY[0x1E69E7CC8];
  v90 = a1;
  v89 = a2;
  while (v18)
  {
    v20 = v104;
LABEL_11:
    v105 = v19;
    v106 = v18;
    v94 = *(v101 + 72);
    OUTLINED_FUNCTION_0_169();
    sub_1C73CAAA0(v22, v109, v23);
    (*v98)(v8, v99, v20);
    sub_1C73CAB58();
    sub_1C7550A5C();
    sub_1C7550A5C();
    if (v112 == v110 && v113 == v111)
    {
      v28 = OUTLINED_FUNCTION_17_73();
      v29(v28);
    }

    else
    {
      v25 = sub_1C7551DBC();
      v26 = OUTLINED_FUNCTION_17_73();
      v27(v26);

      if ((v25 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v30 = a2[2];
    if (v30)
    {
      v31 = a2[5];
      v92 = a2[4];
      v33 = a2[6];
      v32 = a2[7];
      v96 = v31;
      sub_1C75504FC();
      v95 = v33;
      sub_1C75504FC();
      sub_1C75504FC();
      v34 = 1;
LABEL_20:
      v35 = &v93[4 * v34];
      v108 = v32;
      while (v30 != v34)
      {
        if (v34 >= v30)
        {
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (__OFADD__(v34, 1))
        {
          goto LABEL_55;
        }

        v36 = *(v35 - 2);
        v107 = *(v35 - 3);
        v37 = *(v35 - 1);
        v38 = *v35;
        v39 = *(v32 + 16);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        if (v39)
        {
          v40 = sub_1C6FC27A8();
          if (v41)
          {
            v39 = *(*(*(v32 + 56) + 8 * v40) + 16);
          }

          else
          {
            v39 = 0;
          }
        }

        if (*(v38 + 16))
        {
          v42 = sub_1C6FC27A8();
          if ((v43 & 1) != 0 && v39 < *(*(*(v38 + 56) + 8 * v42) + 16))
          {

            ++v34;
            v92 = v107;
            v95 = v37;
            v96 = v36;
            v32 = v38;
            goto LABEL_20;
          }
        }

        ++v34;
        v35 += 4;
        v32 = v108;
      }

      v44 = v32;
      v45 = v95;
      if (!*(v32 + 16))
      {

        OUTLINED_FUNCTION_18_59();
        a2 = v89;
        goto LABEL_51;
      }

      sub_1C6FC27A8();
      OUTLINED_FUNCTION_18_59();
      a2 = v89;
      v47 = v96;
      if ((v48 & 1) == 0 || !*(*(*(v32 + 56) + 8 * v46) + 16))
      {

        goto LABEL_51;
      }

      OUTLINED_FUNCTION_0_169();
      sub_1C73CAAA0(v109, v88, v49);
      v50 = v91;
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v50;
      v51 = OUTLINED_FUNCTION_15_73();
      v54 = sub_1C6FC2E14(v51, v52, v53, v44);
      if (__OFADD__(v50[2], (v55 & 1) == 0))
      {
        goto LABEL_57;
      }

      v56 = v54;
      v57 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215348);
      v58 = sub_1C7551A2C();
      v59 = v112;
      v91 = v112;
      if (v58)
      {
        v60 = OUTLINED_FUNCTION_15_73();
        v63 = sub_1C6FC2E14(v60, v61, v62, v108);
        if ((v57 & 1) != (v64 & 1))
        {
          goto LABEL_59;
        }

        v56 = v63;
        v59 = v91;
      }

      if (v57)
      {

        v59 = v91;
      }

      else
      {
        v59[(v56 >> 6) + 8] |= 1 << v56;
        v65 = (v59[6] + 32 * v56);
        *v65 = v92;
        v65[1] = v47;
        v66 = v108;
        v65[2] = v45;
        v65[3] = v66;
        *(v59[7] + 8 * v56) = MEMORY[0x1E69E7CC0];
        v67 = v59[2];
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_58;
        }

        v59[2] = v69;
      }

      v70 = v59[7];
      v71 = *(v70 + 8 * v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v70 + 8 * v56) = v71;
      if (isUniquelyReferenced_nonNull_native)
      {
        v73 = v56;
      }

      else
      {
        v79 = OUTLINED_FUNCTION_2_117();
        sub_1C6FB2E64(v79, v80, v81, v82);
        v71 = v83;
        v73 = v56;
        *(v70 + 8 * v56) = v83;
      }

      v75 = *(v71 + 16);
      v74 = *(v71 + 24);
      if (v75 >= v74 >> 1)
      {
        v84 = OUTLINED_FUNCTION_15(v74);
        sub_1C6FB2E64(v84, v75 + 1, 1, v71);
        v71 = v85;
        *(v70 + 8 * v73) = v85;
      }

      *(v71 + 16) = v75 + 1;
      OUTLINED_FUNCTION_4_96();
      sub_1C73CADE0(v88, v76, v77);
    }

LABEL_51:
    v18 = (v106 - 1) & v106;
    OUTLINED_FUNCTION_3_105();
    sub_1C73CAB00(v109, v78);
    v19 = v105;
  }

  v20 = v104;
  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v102)
    {

      return v91;
    }

    v18 = *(v103 + 8 * v21);
    ++v19;
    if (v18)
    {
      v19 = v21;
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
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C73CA310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v66 = a4;
  v70 = a1;
  v67 = _s15FeatureSelectorV11FeatureInfoVMa(0);
  v7 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v61 - v10;
  v11 = type metadata accessor for Hastings.Asset(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - v17;
  v19 = type metadata accessor for Hastings.Feature();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C73CAD70(a2, v18);
  v22 = v18;
  v23 = *&v18[*(v16 + 56)];
  sub_1C73CADE0(v22, v21, type metadata accessor for Hastings.Feature);
  v69 = v21[16];
  v24 = *(v23 + 16);
  if (v24)
  {
    v62 = a3;
    v63 = v7;
    v64 = v21;
    v65 = v4;
    v72 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v25 = v72;
    v26 = *(v12 + 80);
    v61 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v12 + 72);
    do
    {
      sub_1C73CAAA0(v27, v14, type metadata accessor for Hastings.Asset);
      v29 = *v14;
      v30 = v14[1];
      sub_1C75504FC();
      sub_1C73CAB00(v14, type metadata accessor for Hastings.Asset);
      v72 = v25;
      v31 = *(v25 + 16);
      if (v31 >= *(v25 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v25 = v72;
      }

      *(v25 + 16) = v31 + 1;
      v32 = v25 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v30;
      v27 += v28;
      --v24;
    }

    while (v24);

    v21 = v64;
    a3 = v62;
    v7 = v63;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v25 + 16);
  if (a3)
  {
    sub_1C75504FC();
    v34 = sub_1C72B8CBC(v25, a3);

    v35 = *(v34 + 16);
  }

  else
  {

    v35 = v33;
  }

  v36 = v68;
  if (!v35)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](*v21, *(v21 + 1));
    MEMORY[0x1CCA5CD70](0xD00000000000002ALL, 0x80000001C75AE4F0);
    v74 = 0;
    v53 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v53);

    MEMORY[0x1CCA5CD70](40, 0xE100000000000000);
    v74 = v33;
    v54 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v54);

    MEMORY[0x1CCA5CD70](10537, 0xE200000000000000);
    v55 = v72;
    v56 = v73;
    v57 = v66;
    swift_beginAccess();
    sub_1C6FB0600();
    v58 = *(*v57 + 16);
    sub_1C6FB0EFC();
    v59 = *v57;
    *(v59 + 16) = v58 + 1;
    v60 = v59 + 16 * v58;
    *(v60 + 32) = v55;
    *(v60 + 40) = v56;
    swift_endAccess();
    return sub_1C73CAB00(v21, type metadata accessor for Hastings.Feature);
  }

  v37 = v71;
  sub_1C73CAAA0(v21, v71, type metadata accessor for Hastings.Feature);
  v38 = v67;
  *(v37 + *(v67 + 20)) = v33;
  *(v37 + *(v38 + 24)) = v35;
  sub_1C73CAAA0(v37, v36, _s15FeatureSelectorV11FeatureInfoVMa);
  v39 = v70;
  swift_isUniquelyReferenced_nonNull_native();
  v72 = *v39;
  v40 = v72;
  v41 = sub_1C6FC34C8(v69);
  if (__OFADD__(*(v40 + 16), (v42 & 1) == 0))
  {
    __break(1u);
    goto LABEL_21;
  }

  v43 = v41;
  v44 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B408);
  v45 = sub_1C7551A2C();
  v46 = v72;
  if (v45)
  {
    v47 = sub_1C6FC34C8(v69);
    if ((v44 & 1) == (v48 & 1))
    {
      v43 = v47;
      goto LABEL_16;
    }

LABEL_21:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

LABEL_16:
  *v70 = v46;
  if ((v44 & 1) == 0)
  {
    sub_1C6FCABDC(v43, v69, MEMORY[0x1E69E7CC0], v46);
  }

  v49 = *(v46 + 56) + 8 * v43;
  sub_1C6FB0E54();
  v50 = *(*v49 + 16);
  sub_1C6FB16A0();
  sub_1C73CAB00(v71, _s15FeatureSelectorV11FeatureInfoVMa);
  sub_1C73CAB00(v21, type metadata accessor for Hastings.Feature);
  v51 = *v49;
  *(v51 + 16) = v50 + 1;
  return sub_1C73CADE0(v36, v51 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v50, _s15FeatureSelectorV11FeatureInfoVMa);
}

Swift::Int __swiftcall Hastings.FeatureSelector.threshold(for:)(Swift::OpaquePointer a1)
{
  sub_1C73CA9F8(a1._rawValue);
  v3 = v2;
  v4 = sub_1C73CAA3C(a1._rawValue, v2) * 0.5;
  if (v4 <= v3 * 0.6)
  {
    v4 = v3 * 0.6;
  }

  v6 = OUTLINED_FUNCTION_10_73(v3 - v4);
  if (!(v8 ^ v9 | v7))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 <= -9.22337204e18)
  {
    goto LABEL_8;
  }

  if (v6 < 9.22337204e18)
  {
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C73CA9F8(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = 0;
    v2 = (result + 32);
    v3 = *(result + 16);
    while (1)
    {
      v4 = *v2++;
      v5 = __OFADD__(v1, v4);
      v1 += v4;
      if (v5)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

double sub_1C73CAA3C(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = 0.0;
    v5 = *(a1 + 16);
    do
    {
      v6 = *v3++;
      v4 = v4 + (v6 - a2) * (v6 - a2);
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0.0;
  }

  return sqrt(v4 / v2);
}

uint64_t sub_1C73CAAA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C73CAB00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C73CAB58()
{
  result = qword_1EC2147A0;
  if (!qword_1EC2147A0)
  {
    sub_1C754F58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2147A0);
  }

  return result;
}

uint64_t sub_1C73CABF8()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C73CAC8C()
{
  result = type metadata accessor for Hastings.Feature();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C73CAD08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C73CAD70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73CADE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t DynamicLifeContextGenerator.__allocating_init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(a1, a2, a3);
  return v6;
}

uint64_t DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v9 = a1[4];
  v8 = a1[5];
  sub_1C754FEFC();
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personExtendedTokens) = v5;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petExtendedTokens) = v6;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_locationExtendedTokens) = v7;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_homeExtendedTokens) = v9;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_timeExtendedTokens) = v8;
  sub_1C75504FC();

  result = v3;
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_shufflePromptParameters) = a3;
  if (a2)
  {
    v11 = *(a2 + 16);
    v12 = &unk_1C756A000;
    if (v11)
    {
      v13 = a2 + 32;
      sub_1C75504FC();
      v14 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C6FB5E28(v13, v37);
        sub_1C6F699F8(v37, &v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738);
        if (swift_dynamicCast())
        {
          v15 = v36;
          if (*(&v33 + 1) != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_19_3();
              sub_1C6FB2768();
              v14 = v18;
            }

            v16 = *(v14 + 24);
            if (*(v14 + 16) >= v16 >> 1)
            {
              OUTLINED_FUNCTION_8_79(v16);
              sub_1C6FB2768();
              v14 = v19;
            }

            OUTLINED_FUNCTION_11_70();
            *(v17 + 64) = v15;
            goto LABEL_13;
          }
        }

        else
        {
          v33 = xmmword_1C756A560;
          v35 = 0;
          v36 = 0;
          v34 = 0;
        }

        sub_1C73CB2E4(v33, 1);
LABEL_13:
        v13 += 40;
        if (!--v11)
        {

          result = v3;
          v12 = &unk_1C756A000;
          goto LABEL_17;
        }
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(result + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personSummaries) = v14;
    v21 = *(a2 + 16);
    if (v21)
    {
      v22 = a2 + 32;
      v20 = MEMORY[0x1E69E7CC0];
      v29 = v12[86];
      while (1)
      {
        sub_1C6FB5E28(v22, v37);
        sub_1C6F699F8(v37, &v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738);
        if (swift_dynamicCast())
        {
          v23 = LODWORD(v32[1]) | (BYTE4(v32[1]) << 32);
          if (*(&v30 + 1) != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_19_3();
              sub_1C6FB2738();
              v20 = v26;
            }

            v24 = *(v20 + 24);
            if (*(v20 + 16) >= v24 >> 1)
            {
              OUTLINED_FUNCTION_8_79(v24);
              sub_1C6FB2738();
              v20 = v27;
            }

            OUTLINED_FUNCTION_11_70();
            *(v25 + 68) = BYTE4(v23);
            *(v25 + 64) = v23;
            goto LABEL_28;
          }
        }

        else
        {
          v30 = v29;
          v31 = 0;
          memset(v32, 0, 13);
        }

        sub_1C73CB2E4(v30, 1);
LABEL_28:
        v22 += 40;
        if (!--v21)
        {
          goto LABEL_31;
        }
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_31:

    result = v3;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
    *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personSummaries) = MEMORY[0x1E69E7CC0];
  }

  *(result + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petSummaries) = v20;
  return result;
}

uint64_t sub_1C73CB2E4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t DynamicLifeContextGenerator.DynamicLifeContextInfo.relationshipsAsSentence.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t DynamicLifeContextGenerator.DynamicLifeContextInfo.homeLocationsAsSentence.getter()
{
  v1 = *(v0 + 40);
  sub_1C75504FC();
  return v1;
}

uint64_t DynamicLifeContextGenerator.DynamicLifeContextInfo.topLocationsAsSentence.getter()
{
  v1 = *(v0 + 64);
  sub_1C75504FC();
  return v1;
}

uint64_t DynamicLifeContextGenerator.DynamicLifeContextInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v15 = *(v0 + 4);
  v16 = *(v0 + 6);
  v17 = *(v0 + 5);
  v18 = *(v0 + 7);
  v19 = *(v0 + 9);
  v20 = *(v0 + 8);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x646C696843736168, 0xED0000203A6E6572);
  if (v1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v6, v7);

  MEMORY[0x1CCA5CD70](0x737465507361680ALL, 0xEA0000000000203ALL);
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  v10 = MEMORY[0x1E69E6158];
  v11 = MEMORY[0x1CCA5D090](v3, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v11);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70](0xD00000000000001ALL);
  MEMORY[0x1CCA5CD70](v4, v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  v12 = MEMORY[0x1CCA5D090](v15, v10);
  MEMORY[0x1CCA5CD70](v12);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70](0xD00000000000001ALL);
  MEMORY[0x1CCA5CD70](v17, v16);
  MEMORY[0x1CCA5CD70](0x61636F4C706F740ALL, 0xEF203A736E6F6974);
  v13 = MEMORY[0x1CCA5D090](v18, v10);
  MEMORY[0x1CCA5CD70](v13);

  OUTLINED_FUNCTION_21();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](v20, v19);
  return 0;
}

uint64_t DynamicLifeContextGenerator.CharacterSourceForLifeContext.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C73CB6F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v11 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = v16 - v15;
  v18 = *a1;
  v19 = *a5;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v20 = a4;
  sub_1C754F1CC();
  sub_1C754F2CC();
  if (v81)
  {
    OUTLINED_FUNCTION_70(a3, a3[3]);
    OUTLINED_FUNCTION_13_77();
    (*(v13 + 8))(v17, v11);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    return (*(v21 + 8))(a4);
  }

  else
  {
    v75 = v7;
    v76 = v13;
    v73 = a3;
    v74 = v17;
    v23 = v11;
    v24 = v7;
    v25 = a2;
    switch(v18)
    {
      case 1:
      case 2:
        LOBYTE(__src[0]) = 0;
        v71 = sub_1C73CC054(__src);
        LOBYTE(__src[0]) = 0;
        goto LABEL_9;
      case 3:
        v32 = v19 ^ 1;
        LOBYTE(__src[0]) = v32;
        v71 = sub_1C73CC054(__src);
        LOBYTE(__src[0]) = v32;
LABEL_9:
        v33 = sub_1C73CC0F4(__src);
        v72 = *(v7 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_shufflePromptParameters);
        v34 = v76;
        v70 = v33;
        if (v72 == 1)
        {
          __src[0] = v33;
          v20 = OUTLINED_FUNCTION_12_70(*(a2 + 32));
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          sub_1C73CE3F0();
          OUTLINED_FUNCTION_7_87();
          v35 = sub_1C7550A1C();
        }

        else
        {
          v35 = sub_1C75504FC();
        }

        v69 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v35, 1, 1701736270);
        v68 = v36;

        v37 = *(v7 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_homeExtendedTokens);
        v38 = *(v37 + 16);
        v39 = MEMORY[0x1E69E7CC0];
        if (v38)
        {
          v67 = v23;
          __src[0] = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          v39 = __src[0];
          v40 = (v37 + 56);
          do
          {
            v42 = *(v40 - 1);
            v41 = *v40;
            __src[0] = v39;
            v44 = *(v39 + 16);
            v43 = *(v39 + 24);
            v20 = v44 + 1;
            sub_1C75504FC();
            if (v44 >= v43 >> 1)
            {
              sub_1C6F7ED9C();
              v39 = __src[0];
            }

            *(v39 + 16) = v20;
            v45 = v39 + 16 * v44;
            *(v45 + 32) = v42;
            *(v45 + 40) = v41;
            v40 += 7;
            --v38;
          }

          while (v38);
          v23 = v67;
          v34 = v76;
          v24 = v75;
          v25 = a2;
        }

        __src[0] = v39;
        sub_1C75504FC();
        sub_1C70401E8();

        v46 = __src[0];
        if (v72)
        {
          v20 = OUTLINED_FUNCTION_12_70(*(v25 + 32));
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          sub_1C73CE3F0();
          OUTLINED_FUNCTION_7_87();
          v47 = sub_1C7550A1C();
        }

        else
        {
          sub_1C75504FC();
          v47 = v46;
        }

        OUTLINED_FUNCTION_14_63();
        v80 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v47, 1, v20);
        v77 = v48;

        v49 = sub_1C73CCE24(*(v24 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_locationExtendedTokens));
        v50 = v49;
        if (v72)
        {
          __src[0] = v49;
          OUTLINED_FUNCTION_12_70(*(v25 + 32));
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          sub_1C73CE3F0();
          OUTLINED_FUNCTION_14_63();
          v51 = sub_1C7550A1C();
        }

        else
        {
          sub_1C75504FC();
          v51 = v50;
        }

        v52 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v51, 1, v20);
        v54 = v53;

        LOWORD(__src[0]) = v71 & 0x101;
        __src[1] = v70;
        __src[2] = v69;
        __src[3] = v68;
        __src[4] = v46;
        __src[5] = v80;
        __src[6] = v77;
        __src[7] = v50;
        __src[8] = v52;
        __src[9] = v54;
        sub_1C73CE3B8(__src, v84);
        v55 = sub_1C754FEEC();
        v56 = sub_1C75511BC();
        sub_1C730BAFC(__src);
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v34;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v86 = v59;
          *v58 = 136642819;
          memcpy(__dst, __src, sizeof(__dst));
          sub_1C73CE3B8(__src, v84);
          v60 = DynamicLifeContextGenerator.DynamicLifeContextInfo.description.getter();
          v62 = v61;
          memcpy(v84, __dst, sizeof(v84));
          sub_1C730BAFC(v84);
          v63 = sub_1C6F765A4(v60, v62, &v86);

          *(v58 + 4) = v63;
          _os_log_impl(&dword_1C6F5C000, v55, v56, "DynamicLifeContextInfo: %{sensitive}s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          OUTLINED_FUNCTION_109();
          v34 = v57;
          OUTLINED_FUNCTION_109();
        }

        sub_1C754F2EC();
        memcpy(a6, __src, 0x50uLL);
        OUTLINED_FUNCTION_70(v73, v73[3]);
        OUTLINED_FUNCTION_13_77();
        result = (*(v34 + 8))(v74, v23);
        break;
      default:
        v26 = sub_1C754FEEC();
        v27 = sub_1C755119C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          __src[0] = v29;
          *v28 = 136315138;
          v30 = 0xED00007374696172;
          v31 = 0x74206C61626F6C67;
          switch(v18)
          {
            case 0:
              v30 = 0x80000001C7595DE0;
              v31 = 0xD000000000000013;
              break;
            case 1:
              break;
            case 2:
              v30 = 0xEB0000000072656CLL;
              v31 = 0x6C657479726F7473;
              break;
            case 3:
              v30 = 0xEE006E6F69746172;
              v31 = 0x7563207465737361;
              break;
            case 4:
              v30 = 0xE500000000000000;
              v31 = 0x636973756DLL;
              break;
            default:
              JUMPOUT(0);
          }

          v64 = sub_1C6F765A4(v31, v30, __src);

          *(v28 + 4) = v64;
          _os_log_impl(&dword_1C6F5C000, v26, v27, "Could not generate person or pet information for %s adapter.", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();

          v20 = a4;
        }

        else
        {
        }

        sub_1C73CE364();
        OUTLINED_FUNCTION_166_0();
        *v65 = 1;
        swift_willThrow();
        OUTLINED_FUNCTION_70(v73, v73[3]);
        OUTLINED_FUNCTION_13_77();
        (*(v76 + 8))(v74, v23);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        result = (*(v66 + 8))(v20);
        break;
    }
  }

  return result;
}

uint64_t sub_1C73CC054(_BYTE *a1)
{
  if (*a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personSummaries);
    v3 = (v2 + 68);
    v4 = *(v2 + 16) + 1;
    v5 = &OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petSummaries;
    do
    {
      v6 = --v4 != 0;
      if (!v4)
      {
        break;
      }

      v7 = *v3;
      v3 += 20;
    }

    while ((v7 - 1) > 1);
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personExtendedTokens);
    v9 = (v8 + 80);
    v10 = *(v8 + 16) + 1;
    v5 = &OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petExtendedTokens;
    do
    {
      v6 = --v10 != 0;
      if (!v10)
      {
        break;
      }

      v11 = *v9;
      v9 += 36;
    }

    while ((v11 - 1) >= 2);
  }

  return v6 | ((*(*(v1 + *v5) + 16) != 0) << 8);
}

uint64_t sub_1C73CC0F4(_BYTE *a1)
{
  if (*a1 != 1)
  {
    v15 = 0;
    v16 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personExtendedTokens);
    v17 = *(v16 + 16);
    v18 = v16 + 88;
    v135 = MEMORY[0x1E69E7CC0];
    v137 = v16;
    v133 = v16 + 88;
LABEL_15:
    v19 = v18 + 72 * v15;
    while (v17 != v15)
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_159;
      }

      isUniquelyReferenced_nonNull_native = *(v19 - 5);
      if (isUniquelyReferenced_nonNull_native != 18)
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 4);
        LOBYTE(v140) = *(v19 - 5);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v22 = sub_1C73CE308(&v140, v20, v21);

        v16 = v137;

        if (v22)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB27C0();
            v135 = v24;
          }

          v18 = v133;
          v23 = *(v135 + 16);
          if (v23 >= *(v135 + 24) >> 1)
          {
            sub_1C6FB27C0();
            v135 = v25;
          }

          ++v15;
          *(v135 + 16) = v23 + 1;
          *(v135 + v23 + 32) = isUniquelyReferenced_nonNull_native;
          goto LABEL_15;
        }
      }

      v19 += 72;
      ++v15;
    }

    v37 = 0;
    isUniquelyReferenced_nonNull_native = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petExtendedTokens);
    v38 = *(isUniquelyReferenced_nonNull_native + 16);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v135;
LABEL_43:
    v39 = (isUniquelyReferenced_nonNull_native + 97 + 72 * v37);
    while (v38 != v37)
    {
      if (v37 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        goto LABEL_161;
      }

      v40 = *(v39 - 17);
      if (v40 == 4)
      {
        if (*v39)
        {
          v41 = 4;
LABEL_52:
          v42 = v28;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v28 = v42;
          }

          else
          {
            sub_1C6FB2798();
            v28 = v44;
          }

          v43 = *(v28 + 16);
          if (v43 >= *(v28 + 24) >> 1)
          {
            sub_1C6FB2798();
            v28 = v45;
          }

          ++v37;
          *(v28 + 16) = v43 + 1;
          *(v28 + 2 * v43 + 32) = v41;
          goto LABEL_43;
        }
      }

      else if (((v40 == 3) & *v39) != 0)
      {
        v41 = 3;
        goto LABEL_52;
      }

      v39 += 72;
      ++v37;
    }

LABEL_58:
    v138 = v28;
    sub_1C73CE918();
    v46 = sub_1C75504DC();
    v47 = *(v29 + 16);
    if (v47)
    {
      isUniquelyReferenced_nonNull_native = 0;
      v48 = v29 + 32;
      while (isUniquelyReferenced_nonNull_native < *(v29 + 16))
      {
        v49 = v29;
        v50 = *(v48 + isUniquelyReferenced_nonNull_native);
        swift_isUniquelyReferenced_nonNull_native();
        v140 = v46;
        v51 = sub_1C6FC2CD8();
        if (__OFADD__(*(v46 + 16), (v52 & 1) == 0))
        {
          goto LABEL_147;
        }

        v53 = v51;
        v54 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B430);
        v55 = sub_1C7551A2C();
        v46 = v140;
        if (v55)
        {
          v56 = sub_1C6FC2CD8();
          if ((v54 & 1) != (v57 & 1))
          {
            goto LABEL_164;
          }

          v53 = v56;
        }

        if ((v54 & 1) == 0)
        {
          *(v46 + 8 * (v53 >> 6) + 64) |= 1 << v53;
          *(*(v46 + 48) + v53) = v50;
          *(*(v46 + 56) + 8 * v53) = 0;
          v58 = *(v46 + 16);
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_162;
          }

          *(v46 + 16) = v60;
        }

        v61 = *(v46 + 56);
        v62 = *(v61 + 8 * v53);
        v59 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v59)
        {
          goto LABEL_148;
        }

        ++isUniquelyReferenced_nonNull_native;
        *(v61 + 8 * v53) = v63;
        v29 = v49;
        if (v47 == isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_70;
        }
      }

LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
    }

    else
    {
LABEL_70:

      v64 = 1 << *(v46 + 32);
      v65 = -1;
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      v66 = v65 & *(v46 + 64);
      v67 = (v64 + 63) >> 6;
      sub_1C75504FC();
      v68 = 0;
      v69 = MEMORY[0x1E69E7CC0];
      if (v66)
      {
        goto LABEL_77;
      }

      while (1)
      {
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          __break(1u);
          goto LABEL_146;
        }

        if (v70 >= v67)
        {
          break;
        }

        v66 = *(v46 + 64 + 8 * v70);
        ++v68;
        if (v66)
        {
          v68 = v70;
          do
          {
LABEL_77:
            v71 = __clz(__rbit64(v66)) | (v68 << 6);
            if (*(*(v46 + 56) + 8 * v71) < 2)
            {
              v76 = 0xEC00000065636E61;
              v74 = 0x746E696175716361;
              switch(*(*(v46 + 48) + v71))
              {
                case 1:
                  v76 = 0xE700000000000000;
                  v80 = 0x6568746F7262;
                  goto LABEL_89;
                case 2:
                  v76 = 0xE500000000000000;
                  v74 = 0x646C696863;
                  break;
                case 3:
                  v74 = 0xD000000000000015;
                  v76 = 0x80000001C7596B70;
                  break;
                case 4:
                  v76 = 0xE800000000000000;
                  v82 = 0x6B726F776F63;
                  goto LABEL_100;
                case 5:
                  v76 = 0xE800000000000000;
                  v82 = 0x746867756164;
LABEL_100:
                  v74 = v82 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
                  break;
                case 6:
                  v74 = 0xD000000000000013;
                  v76 = 0x80000001C7596BA0;
                  break;
                case 7:
                  v76 = 0xE600000000000000;
                  v74 = 0x796C696D6166;
                  break;
                case 8:
                  v76 = 0xE600000000000000;
                  v81 = 1752457574;
                  goto LABEL_105;
                case 9:
                  v76 = 0xE600000000000000;
                  v74 = 0x646E65697266;
                  break;
                case 0xA:
                  v74 = 0xD000000000000010;
                  v76 = 0x80000001C7596BD0;
                  break;
                case 0xB:
                  v76 = 0xE200000000000000;
                  v74 = 25965;
                  break;
                case 0xC:
                  v74 = 0x726568746F6DLL;
                  v76 = 0xE600000000000000;
                  break;
                case 0xD:
                  v76 = 0xE600000000000000;
                  v74 = 0x746E65726170;
                  break;
                case 0xE:
                  v76 = 0xE700000000000000;
                  v80 = 0x656E74726170;
LABEL_89:
                  v74 = v80 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
                  break;
                case 0xF:
                  v76 = 0xE300000000000000;
                  v74 = 7237491;
                  break;
                case 0x10:
                  v76 = 0xE600000000000000;
                  v81 = 1953720691;
LABEL_105:
                  v74 = v81 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
                  break;
                case 0x11:
                  v76 = 0xE300000000000000;
                  v74 = 7367030;
                  break;
                default:
                  break;
              }
            }

            else
            {
              LOBYTE(v140) = *(*(v46 + 48) + v71);
              v72 = v69;
              v73 = StoryPersonRelationshipType.pluralValue.getter();
              v69 = v72;
              v74 = v73;
              v76 = v75;
            }

            v77 = v69;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v69 = v77;
            }

            else
            {
              sub_1C6FB1814();
              v69 = v83;
            }

            v78 = *(v69 + 16);
            isUniquelyReferenced_nonNull_native = v78 + 1;
            if (v78 >= *(v69 + 24) >> 1)
            {
              sub_1C6FB1814();
              v69 = v84;
            }

            v66 &= v66 - 1;
            *(v69 + 16) = isUniquelyReferenced_nonNull_native;
            v79 = v69 + 16 * v78;
            *(v79 + 32) = v74;
            *(v79 + 40) = v76;
          }

          while (v66);
        }
      }

      v130 = v69;

      v85 = sub_1C75504DC();
      v86 = v138;
      v87 = *(v138 + 16);
      if (!v87)
      {
LABEL_120:

        v106 = *(v85 + 16);
        if (!v106)
        {

          v128 = MEMORY[0x1E69E7CC0];
LABEL_144:
          v140 = v130;
          sub_1C6FD2568(v128);
          sub_1C75504FC();
          sub_1C70401E8();

          return v140;
        }

        v142 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        v107 = v142;
        v110 = sub_1C70D4544(v85);
        v111 = 0;
        v112 = v85 + 64;
        v131 = v108;
        v132 = v106;
        while ((v110 & 0x8000000000000000) == 0 && v110 < 1 << *(v85 + 32))
        {
          v113 = v110 >> 6;
          if ((*(v112 + 8 * (v110 >> 6)) & (1 << v110)) == 0)
          {
            goto LABEL_153;
          }

          if (*(v85 + 36) != v108)
          {
            goto LABEL_154;
          }

          v139 = v108;
          v114 = (*(v85 + 48) + 16 * v110);
          v115 = *v114;
          v116 = v114[1];
          v136 = v109;
          if (*(*(v85 + 56) + 8 * v110) < 2)
          {
            sub_1C75504FC();
          }

          else
          {
            v140 = *v114;
            v141 = v116;
            swift_bridgeObjectRetain_n();
            MEMORY[0x1CCA5CD70](115, 0xE100000000000000);

            v115 = v140;
            v116 = v141;
          }

          v117 = v107;
          v142 = v107;
          v118 = *(v107 + 16);
          isUniquelyReferenced_nonNull_native = v118 + 1;
          v119 = v139;
          if (v118 >= *(v117 + 24) >> 1)
          {
            sub_1C6F7ED9C();
            v119 = v139;
            v117 = v142;
          }

          *(v117 + 16) = isUniquelyReferenced_nonNull_native;
          v120 = v117 + 16 * v118;
          *(v120 + 32) = v115;
          *(v120 + 40) = v116;
          v121 = 1 << *(v85 + 32);
          if (v110 >= v121)
          {
            goto LABEL_155;
          }

          v112 = v85 + 64;
          v122 = *(v85 + 64 + 8 * v113);
          if ((v122 & (1 << v110)) == 0)
          {
            goto LABEL_156;
          }

          v107 = v117;
          if (*(v85 + 36) != v119)
          {
            goto LABEL_157;
          }

          v123 = v122 & (-2 << (v110 & 0x3F));
          if (v123)
          {
            v121 = __clz(__rbit64(v123)) | v110 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v113 << 6;
            v124 = v113 + 1;
            v125 = (v85 + 72 + 8 * v113);
            while (v124 < (v121 + 63) >> 6)
            {
              v127 = *v125++;
              v126 = v127;
              isUniquelyReferenced_nonNull_native += 64;
              ++v124;
              if (v127)
              {
                sub_1C6F9ED50(v110, v119, v136 & 1);
                v121 = __clz(__rbit64(v126)) + isUniquelyReferenced_nonNull_native;
                goto LABEL_141;
              }
            }

            sub_1C6F9ED50(v110, v119, v136 & 1);
          }

LABEL_141:
          v109 = 0;
          ++v111;
          v110 = v121;
          v108 = v131;
          if (v111 == v132)
          {

            v128 = v107;
            goto LABEL_144;
          }
        }

        goto LABEL_152;
      }

      v88 = 0;
      while (v88 < *(v86 + 16))
      {
        v89 = PHDetectionTypeDescription();
        v90 = sub_1C755068C();
        v92 = v91;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140 = v85;
        v93 = sub_1C6F78124(v90, v92);
        if (__OFADD__(*(v85 + 16), (v94 & 1) == 0))
        {
          goto LABEL_150;
        }

        v95 = v93;
        v96 = v94;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
        v97 = sub_1C7551A2C();
        v85 = v140;
        if (v97)
        {
          v98 = sub_1C6F78124(v90, v92);
          if ((v96 & 1) != (v99 & 1))
          {
            goto LABEL_164;
          }

          v95 = v98;
        }

        if (v96)
        {
        }

        else
        {
          *(v85 + 8 * (v95 >> 6) + 64) |= 1 << v95;
          v100 = (*(v85 + 48) + 16 * v95);
          *v100 = v90;
          v100[1] = v92;
          *(*(v85 + 56) + 8 * v95) = 0;
          v101 = *(v85 + 16);
          v59 = __OFADD__(v101, 1);
          v102 = v101 + 1;
          if (v59)
          {
            goto LABEL_163;
          }

          *(v85 + 16) = v102;
        }

        v103 = *(v85 + 56);
        v104 = *(v103 + 8 * v95);
        v59 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        v86 = v138;
        if (v59)
        {
          goto LABEL_151;
        }

        ++v88;
        *(v103 + 8 * v95) = v105;
        if (v87 == v88)
        {
          goto LABEL_120;
        }
      }
    }

    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v3 = 0;
  v4 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_personSummaries);
  v5 = v4 + 71;
  v6 = -*(v4 + 16);
  v134 = MEMORY[0x1E69E7CC0];
LABEL_3:
  for (i = (v5 + 40 * v3++); ; i += 40)
  {
    if (v6 + v3 == 1)
    {
      v26 = 0;
      isUniquelyReferenced_nonNull_native = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_petSummaries);
      v27 = *(isUniquelyReferenced_nonNull_native + 16);
      v28 = MEMORY[0x1E69E7CC0];
      v29 = v134;
LABEL_27:
      for (j = (isUniquelyReferenced_nonNull_native + 68 + 40 * v26); ; j += 40)
      {
        if (v27 == v26)
        {
          goto LABEL_58;
        }

        if (v26 >= *(isUniquelyReferenced_nonNull_native + 16))
        {
          goto LABEL_160;
        }

        v31 = *(j - 1);
        if (v31 == 4)
        {
          if (*j)
          {
            v32 = 4;
LABEL_36:
            v33 = v28;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v28 = v33;
            }

            else
            {
              sub_1C6FB2798();
              v28 = v35;
            }

            v34 = *(v28 + 16);
            if (v34 >= *(v28 + 24) >> 1)
            {
              sub_1C6FB2798();
              v28 = v36;
            }

            ++v26;
            *(v28 + 16) = v34 + 1;
            *(v28 + 2 * v34 + 32) = v32;
            goto LABEL_27;
          }
        }

        else if (((v31 == 3) & *j) != 0)
        {
          v32 = 3;
          goto LABEL_36;
        }

        ++v26;
      }
    }

    if ((v3 - 1) >= *(v4 + 16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = *(i - 5);
    if (isUniquelyReferenced_nonNull_native != 18)
    {
      v8 = *i;
      v9 = *(i - 1);
      LOBYTE(v140) = *(i - 5);
      sub_1C75504FC();
      sub_1C75504FC();
      v10 = sub_1C73CE308(&v140, v8, v9);

      if (v10)
      {
        v11 = v134;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB27C0();
          v11 = v13;
        }

        v5 = v4 + 71;
        v12 = *(v11 + 16);
        if (v12 >= *(v11 + 24) >> 1)
        {
          sub_1C6FB27C0();
          v11 = v14;
        }

        *(v11 + 16) = v12 + 1;
        v134 = v11;
        *(v11 + v12 + 32) = isUniquelyReferenced_nonNull_native;
        goto LABEL_3;
      }
    }

    ++v3;
  }

LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  sub_1C7551E4C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C73CCE24(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v4 + 56 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_22:
      __break(1u);

      __break(1u);
      return result;
    }

    v8 = v7[1];
    v26 = *v7;
    v27 = v8;
    v28 = v7[2];
    v29 = *(v7 + 6);
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_22;
    }

    if (BYTE8(v28))
    {
      sub_1C70260B4(&v26, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DD2C();
        v6 = v30;
      }

      v11 = v6[2];
      v1 = (v11 + 1);
      if (v11 >= v6[3] >> 1)
      {
        sub_1C716DD2C();
        v6 = v30;
      }

      v6[2] = v1;
      v12 = &v6[7 * v11];
      v13 = v26;
      v14 = v27;
      v15 = v28;
      v12[10] = v29;
      *(v12 + 3) = v14;
      *(v12 + 4) = v15;
      *(v12 + 2) = v13;
      v2 = v9;
      goto LABEL_2;
    }

    ++v2;
    v7 = (v7 + 56);
  }

  v16 = v6[2];
  if (v16)
  {
    *&v26 = v5;
    sub_1C6F7ED9C();
    v17 = v26;
    v18 = v6 + 7;
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      *&v26 = v17;
      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      sub_1C75504FC();
      if (v21 >= v22 >> 1)
      {
        sub_1C6F7ED9C();
        v17 = v26;
      }

      *(v17 + 16) = v21 + 1;
      v23 = v17 + 16 * v21;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v18 += 7;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  *&v26 = v17;
  sub_1C75504FC();
  sub_1C70401E8();

  return v26;
}

void sub_1C73CD040(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v78 = a2;
  v75 = a7;
  v77 = a3;
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v80 = v11;
  v81 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v17 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_0();
  v23 = v22 - v21;
  LODWORD(v76) = *a1;
  LODWORD(v73) = *a6;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  v24 = v79;
  sub_1C754F2CC();
  v25 = v24;
  if (v24)
  {
    v79 = v24;
    OUTLINED_FUNCTION_70(a4, a4[3]);
    sub_1C754F1AC();
    (*(v19 + 8))(v23, v17);
    (*(v81 + 8))(a5, v80);
    return;
  }

  v26 = v16;
  v27 = v76;
  v70 = v17;
  v71 = a4;
  v68 = v19;
  v69 = v23;
  v28 = v81;
  v72 = a5;
  if (v78 <= 0)
  {
    sub_1C73CE364();
    v33 = OUTLINED_FUNCTION_166_0();
    *v34 = 0;
    v79 = v33;
    swift_willThrow();
    goto LABEL_6;
  }

  v29 = v26;
  sub_1C754F2BC();
  v90 = v27;
  v30 = v74;
  (*(v28 + 32))(v74, v29, v80);
  v89 = v73;
  v31 = v30;
  v32 = v75;
  sub_1C73CB6F0(&v90, v77, v71, v31, &v89, __src);
  memcpy(v87, __src, sizeof(v87));
  LOBYTE(v86[0]) = v27;
  v37 = sub_1C73CDFA0(v86);
  v76 = v38;
  v86[20] = 0;
  v86[21] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  OUTLINED_FUNCTION_30();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1C73CE97C;
  *(v40 + 24) = v32;
  *(inited + 32) = sub_1C73CE970;
  *(inited + 40) = v40;
  v41 = inited + 40;
  OUTLINED_FUNCTION_30();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1C73CE974;
  *(v42 + 24) = v32;
  *(inited + 48) = sub_1C73CE970;
  *(inited + 56) = v42;
  OUTLINED_FUNCTION_30();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1C73CE978;
  *(v43 + 24) = v32;
  *(inited + 64) = sub_1C73CE970;
  *(inited + 72) = v43;
  v65 = inited;
  swift_retain_n();
  v79 = 0;
  for (i = 1; ; ++i)
  {
    if (i == 4)
    {
LABEL_25:
      sub_1C730BAFC(v87);
      swift_setDeallocating();
      sub_1C6FDE6C8();
      sub_1C754F2EC();
      v79 = v25;
      OUTLINED_FUNCTION_70(v71, v71[3]);
      v62 = v69;
      sub_1C754F1AC();
      (*(v68 + 8))(v62, v70);
      return;
    }

    v45 = v25;
    v46 = *(v41 - 8);
    memcpy(v86, v87, 0x50uLL);
    v47 = v37;
    v84 = v37;
    v85 = v76;

    v46(&v82, &v84, v86, v77);

    v48 = v83;
    if (!v83)
    {
      v25 = v45;
      goto LABEL_24;
    }

    if (v82 || v83 != 0xE000000000000000)
    {
      break;
    }

    v49 = 0;
    v50 = v78;
LABEL_20:
    v61 = &v49[v79];
    if (__OFADD__(v79, v49))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (v61 <= v50)
    {
      MEMORY[0x1CCA5CD70]();
      v50 = v78;
      v79 = v61;
    }

    v25 = v45;
    if (v79 == v50)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_1C754F2DC();
    v41 += 16;
    v37 = v47;
  }

  v75 = v82;
  if (sub_1C7551DBC())
  {
    v49 = 0;
    v50 = v78;
    goto LABEL_20;
  }

  v51 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v52 = sub_1C71C8B80(0x5A2D417A2D615E5BLL, 0xED00005D20392D30, 0);
  if (!v52)
  {
    goto LABEL_27;
  }

  v53 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v54 = sub_1C71C8B80(0x5D275C090A5BLL, 0xE600000000000000, 0);
  if (v54)
  {
    v74 = v52;
    v45 = 0;
    v86[0] = v75;
    v86[1] = v48;
    v84 = 32;
    v85 = 0xE100000000000000;
    v67 = v54;
    sub_1C6FB5E8C();
    v73 = *(sub_1C755152C() + 16);

    sub_1C75507FC();
    v55 = sub_1C755065C();
    v66 = OUTLINED_FUNCTION_15_74(v74, sel_numberOfMatchesInString_options_range_);

    v56 = sub_1C755065C();
    v57 = v67;
    v58 = OUTLINED_FUNCTION_15_74(v67, sel_numberOfMatchesInString_options_range_);

    v59 = &v66[v73];
    if (__OFADD__(v73, v66))
    {
      goto LABEL_29;
    }

    v60 = __OFADD__(v59, v58);
    v49 = &v58[v59];
    if (v60)
    {
      goto LABEL_30;
    }

    v50 = v78;
    v28 = v81;
    goto LABEL_20;
  }

LABEL_27:
  sub_1C7196EF4();
  v63 = OUTLINED_FUNCTION_166_0();
  *v64 = 0;
  *(v64 + 8) = 2;
  v79 = v63;
  swift_willThrow();

  sub_1C730BAFC(v87);
  swift_setDeallocating();
  sub_1C6FDE6C8();
LABEL_6:
  OUTLINED_FUNCTION_1_125(v71);
  v35 = OUTLINED_FUNCTION_2_118();
  v36(v35);
  (*(v28 + 8))(v72, v80);
}

uint64_t sub_1C73CD8BC(unsigned __int8 *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unsigned __int8 *a8)
{
  v69 = a2;
  v64 = a4;
  v73 = a7;
  v68 = a5;
  v63 = a3;
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v71 = v12;
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v24 = (v23 - v22);
  LODWORD(v67) = *a1;
  LODWORD(v66) = *a8;
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  v25 = v73;
  sub_1C754F1CC();
  v26 = v70;
  sub_1C754F2CC();
  v70 = v26;
  if (v26)
  {
    OUTLINED_FUNCTION_70(a6, a6[3]);
    OUTLINED_FUNCTION_16_60();
    (*(v20 + 8))(v24, v18);
    (*(v71 + 8))(v25, v72);
    return a6;
  }

  v27 = v66;
  v28 = v17;
  v29 = v67;
  v61 = v20;
  v62 = a6;
  v59 = v24;
  v60 = v18;
  if (v69 < 1)
  {
    sub_1C73CE364();
    OUTLINED_FUNCTION_166_0();
    *v42 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_70(v62, v62[3]);
    a6 = v59;
    OUTLINED_FUNCTION_16_60();
    (*(v61 + 8))(a6, v60);
    (*(v71 + 8))(v73, v72);
    return a6;
  }

  v30 = v28;
  sub_1C754F2BC();
  v83 = v29;
  v31 = v71;
  v32 = v14;
  (*(v71 + 32))(v14, v30, v72);
  v82 = v27;
  v33 = v62;
  v34 = v32;
  v35 = v65;
  v36 = v70;
  sub_1C73CB6F0(&v83, v68, v62, v34, &v82, __src);
  v38 = v60;
  v37 = v61;
  if (v36)
  {
    OUTLINED_FUNCTION_70(v33, v33[3]);
    v39 = v38;
    v40 = v59;
    OUTLINED_FUNCTION_16_60();
    v41 = *(v37 + 8);
    a6 = (v37 + 8);
    v41(v40, v39);
    (*(v31 + 8))(v73, v72);
    return a6;
  }

  memcpy(v80, __src, sizeof(v80));
  v77[0] = v29;
  v43 = sub_1C73CDFA0(v77);
  v46 = v45;
  v67 = v43;
  v78 = 0;
  v79 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  OUTLINED_FUNCTION_30();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1C73CE454;
  *(v48 + 24) = v35;
  *(inited + 32) = sub_1C73CE498;
  *(inited + 40) = v48;
  v49 = inited + 40;
  OUTLINED_FUNCTION_30();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1C73CE49C;
  *(v50 + 24) = v35;
  *(inited + 48) = sub_1C73CE970;
  *(inited + 56) = v50;
  OUTLINED_FUNCTION_30();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1C73CE4A4;
  *(v51 + 24) = v35;
  *(inited + 64) = sub_1C73CE970;
  *(inited + 72) = v51;
  v66 = inited;
  swift_retain_n();
  v70 = 0;
  for (i = 1; ; ++i)
  {
    if (i == 4)
    {
LABEL_16:
      sub_1C730BAFC(v80);
      swift_setDeallocating();
      sub_1C6FDE6C8();
      sub_1C754F2EC();
      a6 = v78;
      OUTLINED_FUNCTION_70(v33, v33[3]);
      v58 = v59;
      sub_1C754F1AC();
      (*(v61 + 8))(v58, v60);
      return a6;
    }

    v53 = *(v49 - 8);
    memcpy(v77, v80, 0x50uLL);
    v76[0] = v67;
    v76[1] = v46;

    v53(&v74, v76, v77, v68);

    v54 = v75;
    if (v75)
    {
      break;
    }

LABEL_15:
    sub_1C754F2DC();
    v49 += 16;
  }

  v55 = v74;
  result = v63(v74, v75);
  v56 = v70 + result;
  if (!__OFADD__(v70, result))
  {
    v57 = v69;
    if (v56 <= v69)
    {
      MEMORY[0x1CCA5CD70](v55, v54);
      v57 = v69;
      v70 = v56;
    }

    v33 = v62;
    if (v70 == v57)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

ValueMetadata *sub_1C73CDFA0(unsigned __int8 *a1)
{
  v1 = *a1;
  result = &type metadata for StoryGenerationStrings.DynamicLifeContextForGlobalTraitsGeneration;
  switch(v1)
  {
    case 1:
      return result;
    case 2:
    case 3:
      result = &type metadata for StoryGenerationStrings.DynamicLifeContextForStoryGeneration;
      break;
    default:
      sub_1C73CE364();
      swift_allocError();
      *v3 = 1;
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1C73CE09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_shufflePromptParameters);
  v10 = (*(a2 + 56))(*(a3 + 32), a4, v9, a1, a2);
  v12 = v11;
  v13 = (*(a2 + 64))(v8, a4, v9, a1, a2);
  v15 = (*(a2 + 72))(v10, v12, v13, v14, a1, a2);

  return v15;
}

uint64_t DynamicLifeContextGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence27DynamicLifeContextGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t DynamicLifeContextGenerator.__deallocating_deinit()
{
  DynamicLifeContextGenerator.deinit();

  return swift_deallocClassInstance();
}

BOOL sub_1C73CE308(char *a1, char a2, char a3)
{
  if (a2)
  {
    return 0;
  }

  v4 = *a1;
  return ((sub_1C6FA0848(*a1, 2) & 1) == 0 || (a3 & 1) != 0) && !sub_1C705D5AC(v4, &unk_1F469EDE0);
}

unint64_t sub_1C73CE364()
{
  result = qword_1EC21B410;
  if (!qword_1EC21B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B410);
  }

  return result;
}

unint64_t sub_1C73CE3F0()
{
  result = qword_1EDD06AA0;
  if (!qword_1EDD06AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06AA0);
  }

  return result;
}

unint64_t sub_1C73CE4B0()
{
  result = qword_1EC21B420;
  if (!qword_1EC21B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B420);
  }

  return result;
}

uint64_t type metadata accessor for DynamicLifeContextGenerator()
{
  result = qword_1EDD08F70;
  if (!qword_1EDD08F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C73CE558()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicLifeContextGenerator.Options(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C73CE7A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C73CE884()
{
  result = qword_1EC21B428;
  if (!qword_1EC21B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B428);
  }

  return result;
}

uint64_t sub_1C73CE8D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, a1[1], a2, a3);
  *a4 = result;
  a4[1] = v7;
  return result;
}

unint64_t sub_1C73CE918()
{
  result = qword_1EDD08BE0;
  if (!qword_1EDD08BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08BE0);
  }

  return result;
}

uint64_t LLMSamplingParameters.init(temperature:strategy:maxTokens:randomSeed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5 & 1;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7 & 1;
  return result;
}

uint64_t static LLMSamplingParameters.SamplingStrategy.topK(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t static LLMSamplingParameters.SamplingStrategy.Choice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (*&v2 == *&v3)
    {
      return *(a2 + 8);
    }

    else
    {
      return 0;
    }
  }

  else if ((*(a2 + 8) & 1) != 0 || v2 != v3)
  {
    return OUTLINED_FUNCTION_5_9();
  }

  else
  {
    return OUTLINED_FUNCTION_10_6();
  }
}

uint64_t sub_1C73CEA54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1349545844 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C73CEB24(char a1)
{
  if (a1)
  {
    return 1265659764;
  }

  else
  {
    return 1349545844;
  }
}

uint64_t sub_1C73CEB44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C73CEBCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C73CEC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CEA54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73CEC84(uint64_t a1)
{
  v2 = sub_1C73CF0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CECC0(uint64_t a1)
{
  v2 = sub_1C73CF0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73CED00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CEB44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73CED2C(uint64_t a1)
{
  v2 = sub_1C73CF150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CED68(uint64_t a1)
{
  v2 = sub_1C73CF150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73CEDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CEBCC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73CEDD4(uint64_t a1)
{
  v2 = sub_1C73CF1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CEE10(uint64_t a1)
{
  v2 = sub_1C73CF1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LLMSamplingParameters.SamplingStrategy.Choice.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B438);
  OUTLINED_FUNCTION_3_0();
  v25 = v5;
  v26 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B440);
  OUTLINED_FUNCTION_3_0();
  v22 = v9;
  v23 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B448);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_389();
  v27 = *v1;
  v17 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73CF0FC();
  sub_1C755200C();
  if (v17)
  {
    v29 = 1;
    sub_1C73CF150();
    v18 = v24;
    OUTLINED_FUNCTION_7_88();
    sub_1C7551C6C();
    v19 = v26;
    sub_1C7551D0C();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v28 = 0;
    sub_1C73CF1A4();
    OUTLINED_FUNCTION_7_88();
    sub_1C7551C6C();
    v20 = v23;
    sub_1C7551CEC();
    (*(v22 + 8))(v12, v20);
  }

  return (*(v15 + 8))(v2, v13);
}

unint64_t sub_1C73CF0FC()
{
  result = qword_1EDD09F90;
  if (!qword_1EDD09F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F90);
  }

  return result;
}

unint64_t sub_1C73CF150()
{
  result = qword_1EDD09F68;
  if (!qword_1EDD09F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F68);
  }

  return result;
}

unint64_t sub_1C73CF1A4()
{
  result = qword_1EC21B450;
  if (!qword_1EC21B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B450);
  }

  return result;
}

uint64_t LLMSamplingParameters.SamplingStrategy.Choice.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1CCA5E460](1);
    return MEMORY[0x1CCA5E460](v1);
  }

  else
  {
    MEMORY[0x1CCA5E460](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1CCA5E4A0](v3);
  }
}

uint64_t LLMSamplingParameters.SamplingStrategy.Choice.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C7551F3C();
  if (v2)
  {
    MEMORY[0x1CCA5E460](1);
    MEMORY[0x1CCA5E460](v1);
  }

  else
  {
    MEMORY[0x1CCA5E460](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1CCA5E4A0](v3);
  }

  return sub_1C7551FAC();
}

uint64_t LLMSamplingParameters.SamplingStrategy.Choice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B458);
  OUTLINED_FUNCTION_3_0();
  v53 = v4;
  v54 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B460);
  OUTLINED_FUNCTION_3_0();
  v52 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_389();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B468);
  OUTLINED_FUNCTION_3_0();
  v55 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47[-v14];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73CF0FC();
  v16 = v57;
  sub_1C7551FFC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v50 = v2;
  v51 = v8;
  v57 = a1;
  v17 = v56;
  v18 = v15;
  v19 = sub_1C7551C5C();
  result = sub_1C6FD80E0(v19, 0);
  if (v22 == v23 >> 1)
  {
    goto LABEL_8;
  }

  v49 = 0;
  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    sub_1C6FD80C8(v22 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      v48 = v24;
      if (v24)
      {
        v59 = 1;
        sub_1C73CF150();
        OUTLINED_FUNCTION_12_71();
        v29 = v49;
        sub_1C7551B4C();
        if (!v29)
        {
          v36 = sub_1C7551BFC();
          swift_unknownObjectRelease();
          v37 = OUTLINED_FUNCTION_6_99();
          v38(v37);
          v39 = OUTLINED_FUNCTION_3_106();
          v40(v39);
LABEL_13:
          *v17 = v36;
          *(v17 + 8) = v48;
          return __swift_destroy_boxed_opaque_existential_1(v57);
        }
      }

      else
      {
        v58 = 0;
        sub_1C73CF1A4();
        v33 = v49;
        OUTLINED_FUNCTION_12_71();
        sub_1C7551B4C();
        if (!v33)
        {
          sub_1C7551BDC();
          v42 = v41;
          swift_unknownObjectRelease();
          v43 = OUTLINED_FUNCTION_6_99();
          v44(v43);
          v45 = OUTLINED_FUNCTION_3_106();
          v46(v45);
          v36 = v42;
          goto LABEL_13;
        }
      }

      v34 = OUTLINED_FUNCTION_3_106();
      v35(v34);
      swift_unknownObjectRelease();
      a1 = v57;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_8:
    v30 = sub_1C75518EC();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v32 = &type metadata for LLMSamplingParameters.SamplingStrategy.Choice;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v18, v11);
    a1 = v57;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C73CF7EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C7551F3C();
  if (v2)
  {
    MEMORY[0x1CCA5E460](1);
    MEMORY[0x1CCA5E460](v1);
  }

  else
  {
    MEMORY[0x1CCA5E460](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1CCA5E4A0](v3);
  }

  return sub_1C7551FAC();
}

uint64_t static LLMSamplingParameters.SamplingStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*&v2 != *&v3)
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    if (v2 != v3)
    {
      v4 = 1;
    }

    if (v4)
    {
      return OUTLINED_FUNCTION_5_9();
    }
  }

  return OUTLINED_FUNCTION_10_6();
}

uint64_t sub_1C73CF8B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6563696F6863 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C73CF93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CF8B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73CF968(uint64_t a1)
{
  v2 = sub_1C73D0438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CF9A4(uint64_t a1)
{
  v2 = sub_1C73D0438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMSamplingParameters.SamplingStrategy.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B470);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = *v0;
  v10 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C73D0438();
  sub_1C755200C();
  v11 = v9;
  v12 = v10;
  sub_1C73D048C();
  sub_1C7551D2C();
  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

void LLMSamplingParameters.SamplingStrategy.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B478);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_389();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C73D0438();
  OUTLINED_FUNCTION_9_85();
  if (!v0)
  {
    sub_1C73D04E0();
    sub_1C7551C1C();
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    *(v5 + 8) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_125();
}

uint64_t static LLMSamplingParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return OUTLINED_FUNCTION_5_9();
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return OUTLINED_FUNCTION_5_9();
    }
  }

  if (v3 == 255)
  {
    if (v9 == 255)
    {
      goto LABEL_18;
    }

    return OUTLINED_FUNCTION_5_9();
  }

  if (v9 == 255)
  {
    return OUTLINED_FUNCTION_5_9();
  }

  result = 0;
  if (v3)
  {
    if ((v9 & 1) == 0 || *&v2 != *&v8)
    {
      return result;
    }

LABEL_18:
    if (v5)
    {
      if (!*(a2 + 40))
      {
        return OUTLINED_FUNCTION_5_9();
      }
    }

    else
    {
      if (v4 == *(a2 + 32))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return OUTLINED_FUNCTION_5_9();
      }
    }

    if (v7)
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return OUTLINED_FUNCTION_5_9();
      }
    }

    else
    {
      if (v6 == *(a2 + 48))
      {
        v13 = *(a2 + 56);
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return OUTLINED_FUNCTION_5_9();
      }
    }

    return OUTLINED_FUNCTION_10_6();
  }

  if ((v9 & 1) == 0 && v2 == v8)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1C73CFD5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7967657461727473 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C73CFEC8(char a1)
{
  result = 0x74617265706D6574;
  switch(a1)
  {
    case 1:
      result = 0x7967657461727473;
      break;
    case 2:
      result = 0x6E656B6F5478616DLL;
      break;
    case 3:
      result = 0x65536D6F646E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73CFF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73CFD5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73CFF8C(uint64_t a1)
{
  v2 = sub_1C73D0534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73CFFC8(uint64_t a1)
{
  v2 = sub_1C73D0534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMSamplingParameters.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v17 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B488);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *(v0 + 16);
  v20 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = v10;
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  v12[1] = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C73D0534();
  sub_1C755200C();
  v11 = v17;
  sub_1C7551C9C();
  if (!v11)
  {
    v18 = v16;
    v19 = v20;
    sub_1C73D0588();
    sub_1C7551CBC();
    sub_1C7551CAC();
    sub_1C7551CAC();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_125();
}

void LLMSamplingParameters.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B490);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_389();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C73D0534();
  OUTLINED_FUNCTION_9_85();
  if (!v0)
  {
    LOBYTE(v17) = 0;
    OUTLINED_FUNCTION_2_119();
    v10 = sub_1C7551B8C();
    v20 = v11 & 1;
    sub_1C73D05DC();
    OUTLINED_FUNCTION_7_88();
    sub_1C7551BAC();
    OUTLINED_FUNCTION_2_119();
    v16 = sub_1C7551B9C();
    v19 = v12 & 1;
    OUTLINED_FUNCTION_2_119();
    v13 = sub_1C7551B9C();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    *(v5 + 8) = v20;
    *(v5 + 16) = v17;
    *(v5 + 24) = v18;
    *(v5 + 32) = v16;
    *(v5 + 40) = v19;
    *(v5 + 48) = v13;
    *(v5 + 56) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C73D0438()
{
  result = qword_1EDD09FA8;
  if (!qword_1EDD09FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FA8);
  }

  return result;
}

unint64_t sub_1C73D048C()
{
  result = qword_1EDD09F50;
  if (!qword_1EDD09F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F50);
  }

  return result;
}

unint64_t sub_1C73D04E0()
{
  result = qword_1EC21B480;
  if (!qword_1EC21B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B480);
  }

  return result;
}

unint64_t sub_1C73D0534()
{
  result = qword_1EDD09FC0;
  if (!qword_1EDD09FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FC0);
  }

  return result;
}

unint64_t sub_1C73D0588()
{
  result = qword_1EDD09F48;
  if (!qword_1EDD09F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F48);
  }

  return result;
}

unint64_t sub_1C73D05DC()
{
  result = qword_1EC21B498;
  if (!qword_1EC21B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B498);
  }

  return result;
}

unint64_t sub_1C73D0634()
{
  result = qword_1EC21B4A0;
  if (!qword_1EC21B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B4A0);
  }

  return result;
}

uint64_t sub_1C73D0688(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 57))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73D06CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMSamplingParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMSamplingParameters.SamplingStrategy.Choice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C73D0924(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_5_9();
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

_BYTE *sub_1C73D0970(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C73D0A20()
{
  result = qword_1EC21B4A8;
  if (!qword_1EC21B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B4A8);
  }

  return result;
}

unint64_t sub_1C73D0A78()
{
  result = qword_1EC21B4B0;
  if (!qword_1EC21B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B4B0);
  }

  return result;
}

unint64_t sub_1C73D0AD0()
{
  result = qword_1EC21B4B8;
  if (!qword_1EC21B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B4B8);
  }

  return result;
}

unint64_t sub_1C73D0B28()
{
  result = qword_1EC21B4C0;
  if (!qword_1EC21B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B4C0);
  }

  return result;
}

unint64_t sub_1C73D0B80()
{
  result = qword_1EC21B4C8;
  if (!qword_1EC21B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B4C8);
  }

  return result;
}

unint64_t sub_1C73D0BD8()
{
  result = qword_1EDD09FB0;
  if (!qword_1EDD09FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FB0);
  }

  return result;
}

unint64_t sub_1C73D0C30()
{
  result = qword_1EDD09FB8;
  if (!qword_1EDD09FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FB8);
  }

  return result;
}

unint64_t sub_1C73D0C88()
{
  result = qword_1EDD09F98;
  if (!qword_1EDD09F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F98);
  }

  return result;
}

unint64_t sub_1C73D0CE0()
{
  result = qword_1EDD09FA0;
  if (!qword_1EDD09FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FA0);
  }

  return result;
}

unint64_t sub_1C73D0D38()
{
  result = qword_1EDD09F58;
  if (!qword_1EDD09F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F58);
  }

  return result;
}

unint64_t sub_1C73D0D90()
{
  result = qword_1EDD09F60;
  if (!qword_1EDD09F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F60);
  }

  return result;
}

unint64_t sub_1C73D0DE8()
{
  result = qword_1EDD09F70;
  if (!qword_1EDD09F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F70);
  }

  return result;
}

unint64_t sub_1C73D0E40()
{
  result = qword_1EDD09F78;
  if (!qword_1EDD09F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F78);
  }

  return result;
}

unint64_t sub_1C73D0E98()
{
  result = qword_1EDD09F80;
  if (!qword_1EDD09F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F80);
  }

  return result;
}

unint64_t sub_1C73D0EF0()
{
  result = qword_1EDD09F88;
  if (!qword_1EDD09F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F88);
  }

  return result;
}

uint64_t sub_1C73D0F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v12 = a1;
  v9 = *(a2 + 16);
  while (v9 != v8)
  {
    v10 = *(type metadata accessor for Hastings.Asset(0) - 8);
    sub_1C73D4B94(&v12, (a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++), a3, a4);
    if (v4)
    {
    }
  }

  return v12;
}

void sub_1C73D1050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9)
{
  v73 = a5;
  v70 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v63 - v22;
  v23 = 0;
  v24 = *(a1 + 16);
  v77 = a1;
  v78 = v24;
  v76 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_anchorAssetUUIDs;
  v65 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_dependentAssetUUIDs;
  v75 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_allRequiredCharactersAssetUUIDs;
  v64 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_numberOfRequiredCharacters;
  v67 = a2 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration;
  v25 = MEMORY[0x1E69E7CC0];
  v74 = a2;
  v72 = a3;
  v66 = a4;
  while (1)
  {
    if (v78 == v23)
    {

      return;
    }

    v87 = type metadata accessor for Hastings.Asset(0);
    v26 = v77 + ((*(*(v87 - 8) + 80) + 32) & ~*(*(v87 - 8) + 80)) + *(*(v87 - 8) + 72) * v23;
    v28 = *v26;
    v27 = *(v26 + 8);
    if (sub_1C7009C30(*v26, v27, *(a2 + v76)))
    {
      v86 = 0;
    }

    else
    {
      v29 = (sub_1C7009C30(v28, v27, *(a2 + v65)) & 1) != 0 ? 2 : 1;
      v86 = v29;
    }

    if (sub_1C7009C30(v28, v27, *(a2 + v75)))
    {
      v30 = *(a2 + v64);
      v31 = v87;
      v32 = v30 < 0 || *(v26 + *(v87 + 36)) != v30;
    }

    else
    {
      v32 = 2;
      v31 = v87;
    }

    v33 = *(v26 + *(v31 + 40));
    v84 = *(a2 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_curationOptions + qword_1C7589210[v86]);
    if (*(a3 + 16) && (sub_1C6FC292C(), (v35 & 1) != 0))
    {
      v85 = 0;
      v36 = *(*(a3 + 56) + 8 * v34);
    }

    else
    {
      v36 = 0;
      v85 = 1;
    }

    if (a6 < 0.0)
    {
      break;
    }

    v80 = v36;
    v81 = v33;
    v82 = v32;
    v83 = v25;
    v37 = v23;
    v38 = *(v26 + 16);
    v88 = -a6;
    v89 = a6;
    __swift_mutable_project_boxed_opaque_existential_0(a4, *(a4 + 24));
    sub_1C70AB55C();
    sub_1C70AB5B0();
    sub_1C755046C();
    v39 = floor((v38 + v90) / a7) * a7;
    if (a7 > 0.0)
    {
      v40 = v39;
    }

    else
    {
      v40 = v38 + v90;
    }

    if (a8 < 0.0)
    {
      goto LABEL_39;
    }

    v41 = *(v26 + 24);
    v88 = -a8;
    v89 = a8;
    __swift_mutable_project_boxed_opaque_existential_0(a4, *(a4 + 24));
    sub_1C755046C();
    v42 = floor((v41 + v90) / a9) * a9;
    if (a9 > 0.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = v41 + v90;
    }

    v44 = v87;
    v45 = [*(v26 + *(v87 + 52)) iconicScoreModel];
    v46 = [v45 bucketForIconicScore_];

    if (v73)
    {
      v47 = *(v26 + *(v44 + 44));
    }

    else
    {
      v47 = 0;
    }

    v48 = v18;
    v49 = *(v67 + 57) == 1;
    v50 = v66;
    v79 = v37;
    if (v49)
    {
      v51 = *(v26 + *(v44 + 48));
    }

    else
    {
      v51 = 0;
    }

    v52 = v85;
    v53 = v84 & v85 ^ 1;
    v54 = v68;
    sub_1C73D968C();
    v55 = v70;
    v54[*(v70 + 20)] = v86;
    v56 = v81;
    v54[v55[6]] = v82;
    v54[v55[7]] = v56;
    v54[v55[8]] = v53;
    v57 = &v54[v55[9]];
    *v57 = v80;
    v57[8] = v52;
    *&v54[v55[10]] = v40;
    *&v54[v55[11]] = v43;
    *&v54[v55[12]] = v46;
    v54[v55[13]] = v47;
    v54[v55[14]] = v51;
    sub_1C73D973C();
    v18 = v48;
    sub_1C73D973C();
    v25 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB4C0C(0, *(v25 + 16) + 1, 1, v25);
      v25 = v61;
    }

    a2 = v74;
    a3 = v72;
    a4 = v50;
    v59 = *(v25 + 16);
    v58 = *(v25 + 24);
    v60 = v79;
    if (v59 >= v58 >> 1)
    {
      sub_1C6FB4C0C(v58 > 1, v59 + 1, 1, v25);
      v25 = v62;
    }

    *(v25 + 16) = v59 + 1;
    sub_1C73D973C();
    v23 = v60 + 1;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1C73D16EC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C73D934C(a1, sub_1C73D92DC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C73D1770(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0) - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422EC4();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  sub_1C73D7E68(v9, a2);
  *a1 = v5;
}

void sub_1C73D1850()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v93 = v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_2();
  v104 = v6;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v89 - v8;
  v10 = type metadata accessor for Hastings.Asset(0);
  v11 = OUTLINED_FUNCTION_18(v10);
  v107 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  v96 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v103 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v89 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  sub_1C754F46C();
  v20 = v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_curationOptions;
  v97 = v19;
  v21 = v3;
  sub_1C754F45C();
  v99 = v1;
  Hastings.ClusterAssetElector.sortedAssets(from:assetsByQueryString:clusterID:randomizer:)();
  v23 = v22;

  v92 = v20;
  v24 = *(v20 + 8);
  v25 = MEMORY[0x1E69E7CC0];
  v98 = v21;
  v91 = v23;
  v102 = v9;
  if (!v24)
  {
    goto LABEL_24;
  }

  if (!*(v24 + 16))
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v105 = v25;
    goto LABEL_25;
  }

  v26 = sub_1C754F46C();
  v27 = 0;
  v106 = *(v26 + 16);
  v105 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v28 = v27;
  while (v28 != v106)
  {
    if (v28 >= *(v26 + 16))
    {
      goto LABEL_56;
    }

    v108 = v28 + 1;
    v29 = v26;
    OUTLINED_FUNCTION_0_170();
    sub_1C73D968C();
    if (*(v24 + 16))
    {
      v31 = *v18;
      v30 = v18[1];
      sub_1C7551F3C();
      sub_1C75505AC();
      v32 = sub_1C7551FAC();
      v33 = ~(-1 << *(v24 + 32));
      while (1)
      {
        v34 = v32 & v33;
        if (((*(v24 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
        {
          break;
        }

        v35 = (*(v24 + 48) + 16 * v34);
        if (*v35 != v31 || v35[1] != v30)
        {
          v37 = sub_1C7551DBC();
          v32 = v34 + 1;
          if ((v37 & 1) == 0)
          {
            continue;
          }
        }

        OUTLINED_FUNCTION_1_126();
        sub_1C73D973C();
        v39 = v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = OUTLINED_FUNCTION_99();
          sub_1C716E298(v41, v42, v43);
          v39 = v110;
        }

        v45 = *(v39 + 16);
        v44 = *(v39 + 24);
        if (v45 >= v44 >> 1)
        {
          v46 = OUTLINED_FUNCTION_15(v44);
          sub_1C716E298(v46, v45 + 1, 1);
          v39 = v110;
        }

        *(v39 + 16) = v45 + 1;
        v105 = v39;
        OUTLINED_FUNCTION_1_126();
        sub_1C73D973C();
        v26 = v29;
        v27 = v108;
        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_3_107();
    sub_1C73D96E4(v18, v38);
    v28 = v108;
    v26 = v29;
  }

  v9 = v102;
LABEL_25:
  v47 = v99;
  sub_1C73D37A4();
  v49 = v48;
  OUTLINED_FUNCTION_56_27();
  v50 = sub_1C754F42C();
  v51 = sub_1C73D16EC(v49, v50);
  v52 = *(v47 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_diagnosticReporter);
  if (v52)
  {
    v90 = *(v47 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_diagnosticReporter);
    OUTLINED_FUNCTION_56_27();
    v89[1] = sub_1C754F45C();
    v89[2] = v53;
    v54 = v51 + 64;
    v55 = 1 << *(v51 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v51 + 64);
    v58 = (v55 + 63) >> 6;
    sub_1C75504FC();
    v59 = 0;
    v108 = MEMORY[0x1E69E7CC8];
    v99 = v58;
    v100 = v51;
    v94 = v51 + 64;
    if (v57)
    {
      while (1)
      {
LABEL_33:
        v106 = v57;
        v95 = type metadata accessor for Hastings.Feature();
        OUTLINED_FUNCTION_12();
        v103 = *(v61 + 72);
        OUTLINED_FUNCTION_2_120();
        sub_1C73D968C();
        v62 = *(*(v51 + 56) + 8 * (__clz(__rbit64(v57)) | (v59 << 6)));
        *&v9[*(v101 + 48)] = v62;
        sub_1C6FD7F70();
        sub_1C75504FC();

        v63 = *(v62 + 16);
        if (v63)
        {
          v109 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          v64 = v109;
          OUTLINED_FUNCTION_191();
          v66 = v62 + v65;
          v68 = *(v67 + 72);
          v69 = v96;
          do
          {
            OUTLINED_FUNCTION_0_170();
            sub_1C73D968C();
            v70 = *v69;
            v71 = v69[1];
            sub_1C75504FC();
            OUTLINED_FUNCTION_3_107();
            sub_1C73D96E4(v69, v72);
            v109 = v64;
            v74 = *(v64 + 16);
            v73 = *(v64 + 24);
            if (v74 >= v73 >> 1)
            {
              OUTLINED_FUNCTION_15(v73);
              sub_1C6F7ED9C();
              v69 = v96;
              v64 = v109;
            }

            *(v64 + 16) = v74 + 1;
            v75 = v64 + 16 * v74;
            *(v75 + 32) = v70;
            *(v75 + 40) = v71;
            v66 += v68;
            --v63;
          }

          while (v63);
          v54 = v94;
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

        v76 = v108;
        swift_isUniquelyReferenced_nonNull_native();
        v109 = v76;
        v77 = sub_1C6FC27A8();
        if (__OFADD__(*(v76 + 16), (v78 & 1) == 0))
        {
          break;
        }

        v79 = v77;
        v80 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168E0);
        if (sub_1C7551A2C())
        {
          v81 = sub_1C6FC27A8();
          if ((v80 & 1) != (v82 & 1))
          {
            goto LABEL_59;
          }

          v79 = v81;
        }

        v83 = v109;
        v108 = v109;
        if (v80)
        {
          *(*(v109 + 56) + 8 * v79) = v64;
        }

        else
        {
          *(v109 + 8 * (v79 >> 6) + 64) |= 1 << v79;
          OUTLINED_FUNCTION_2_120();
          sub_1C73D968C();
          *(*(v83 + 56) + 8 * v79) = v64;
          v84 = *(v83 + 16);
          v85 = __OFADD__(v84, 1);
          v86 = v84 + 1;
          if (v85)
          {
            goto LABEL_58;
          }

          *(v83 + 16) = v86;
        }

        v57 = (v106 - 1) & v106;
        OUTLINED_FUNCTION_7_89();
        sub_1C73D96E4(v104, v87);
        v9 = v102;
        sub_1C6FD7FC8(v102, &qword_1EC2168B0);
        v58 = v99;
        v51 = v100;
        if (!v57)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
LABEL_29:
      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v60 >= v58)
        {

          v52 = v90;
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v110 = *(v52 + 24);
          sub_1C6FC9C70();
          *(v52 + 24) = v110;

          swift_endAccess();
          goto LABEL_51;
        }

        v57 = *(v54 + 8 * v60);
        ++v59;
        if (v57)
        {
          v59 = v60;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
LABEL_51:
    type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter();
    *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218118);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1C755BAB0;
    *(v88 + 32) = v91;
    sub_1C75504FC();
    OUTLINED_FUNCTION_56_27();
    sub_1C754F45C();
    swift_retain_n();
    Hastings.ClusterAssetElector.ElectedAssetIterator.init(from:assetsByFeature:assetDependencySets:requiredAssets:id:diagnosticReporter:)();
    if (v52)
    {
      OUTLINED_FUNCTION_56_27();
      sub_1C754F45C();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v110 = *(v52 + 32);
      sub_1C6FC9B94();
      *(v52 + 32) = v110;

      swift_endAccess();
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t Hastings.ClusterAssetElector.Configuration.init(alwaysPrioritizeBetterCurationScoreOverNotImproved:alwaysPrioritizeBetterCurationScore:prioritizeTopNSemanticMatch:prioritizeSemanticMatchIfAssetsAreGoodEnough:prioritizeAestheticallyGoodAssetForNonMatches:prioritizeIconicity:assetElectionSortingCurationScoreRandomizationWeight:assetElectionSortingCurationScoreQuantum:assetElectionSortingAestheticScoreRandomizationWeight:assetElectionSortingAestheticScoreQuantum:promotePlayableAssets:promoteAssetsWithLocation:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4 & 1;
  *(a9 + 17) = a5;
  *(a9 + 18) = a6;
  *(a9 + 19) = a7;
  *(a9 + 24) = a10;
  *(a9 + 32) = a11;
  *(a9 + 40) = a12;
  *(a9 + 48) = a13;
  *(a9 + 56) = a8;
  *(a9 + 57) = a14;
  return result;
}

uint64_t Hastings.ClusterAssetElector.__allocating_init(configuration:curationOptions:diagnosticReporter:)()
{
  v0 = swift_allocObject();
  Hastings.ClusterAssetElector.init(configuration:curationOptions:diagnosticReporter:)();
  return v0;
}

uint64_t sub_1C73D2218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000022 && 0x80000001C75AE7A0 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x80000001C75AE7D0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000031 && 0x80000001C75AE7F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1C73D2330(char a1)
{
  if (!a1)
  {
    return 0xD000000000000022;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ELL;
  }

  return 0xD000000000000031;
}

uint64_t sub_1C73D238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73D2218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73D23B4(uint64_t a1)
{
  v2 = sub_1C73D3000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D23F0(uint64_t a1)
{
  v2 = sub_1C73D3000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.DiagnosticReporter.deinit()
{

  return v0;
}

uint64_t Hastings.ClusterAssetElector.DiagnosticReporter.__deallocating_deinit()
{
  Hastings.ClusterAssetElector.DiagnosticReporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C73D2490()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B4E8);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_61_1();
  v6 = OUTLINED_FUNCTION_23_14();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1C73D3000();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_23_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  sub_1C73D3128(&qword_1EC21B500, &qword_1EC21B4F8, &unk_1C7588538, sub_1C73D3054);
  OUTLINED_FUNCTION_67_21();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v9 = OUTLINED_FUNCTION_23_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9);
    sub_1C73D3128(&qword_1EC21B528, &qword_1EC21B520, &unk_1C7588548, sub_1C708CA7C);
    OUTLINED_FUNCTION_67_21();
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B530);
    sub_1C73D31F4();
    sub_1C7551D2C();
  }

  return (*(v4 + 8))(v1, v2);
}

void *sub_1C73D26D4()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[3] = v2;
  v0[4] = v2;
  return result;
}

uint64_t sub_1C73D2710()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21B4D0);
  v1 = __swift_project_value_buffer(v0, qword_1EC21B4D0);
  if (qword_1EC213E88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC25B6F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void Hastings.ClusterAssetElector.init(configuration:curationOptions:diagnosticReporter:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_108_0(v13 - v12);
  v68 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v71 = (v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_2();
  v73 = v21;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_108_0(&v61 - v23);
  v24 = *(v5 + 16);
  v80 = *v5;
  v81 = v24;
  *v82 = *(v5 + 32);
  *&v82[14] = *(v5 + 46);
  v25 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_logger;
  if (qword_1EC214098 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v26 = sub_1C754FF1C();
    v27 = __swift_project_value_buffer(v26, qword_1EC21B4D0);
    (*(*(v26 - 8) + 16))(&v25[v1], v27, v26);
    v28 = (v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration);
    v29 = v7[1];
    *v28 = *v7;
    v28[1] = v29;
    v28[2] = v7[2];
    *(v28 + 42) = *(v7 + 42);
    v30 = v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_curationOptions;
    *(v30 + 46) = *(v5 + 46);
    v31 = *(v5 + 32);
    *(v30 + 16) = *(v5 + 16);
    *(v30 + 32) = v31;
    *v30 = *v5;
    *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_diagnosticReporter) = v3;
    if (!*(&v81 + 1))
    {
      break;
    }

    v67 = v8;
    v62 = v1;
    v32 = *(&v81 + 1) + 64;
    v33 = 1 << *(*(&v81 + 1) + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v1 = v34 & *(*(&v81 + 1) + 64);
    v74 = *(&v81 + 1);
    swift_bridgeObjectRetain_n();
    sub_1C7035CB0(&v80, &v78);
    v35 = v3;
    v3 = v32;
    v8 = (v33 + 63) >> 6;
    v66 = *MEMORY[0x1E69C1920];
    v65 = (v10 + 104);
    v64 = (v10 + 8);
    v61 = v35;

    v5 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v25 = v71;
    v7 = v70;
    v72 = v3;
    while (v1)
    {
LABEL_11:
      v37 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v38 = v37 | (v5 << 6);
      v39 = v74;
      OUTLINED_FUNCTION_2_120();
      sub_1C73D968C();
      v10 = *(*(v39 + 56) + 8 * v38);
      *(v7 + *(v19 + 48)) = v10;
      v40 = v73;
      sub_1C6FD7F70();
      v75 = *(v40 + *(v19 + 48));
      OUTLINED_FUNCTION_16_61();
      sub_1C73D973C();
      switch(v25[16])
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          v41 = sub_1C7551DBC();
          sub_1C75504FC();

          if ((v41 & 1) == 0)
          {
            goto LABEL_19;
          }

          break;
        default:
          sub_1C75504FC();

          break;
      }

      v7 = v19;
      v19 = v15;
      v42 = v69;
      v15 = v67;
      (*v65)(v69, v66, v67);
      sub_1C73D31AC(&qword_1EC2147A0, MEMORY[0x1E69C1928]);
      OUTLINED_FUNCTION_135();
      sub_1C7550A5C();
      OUTLINED_FUNCTION_135();
      sub_1C7550A5C();
      v10 = v79;
      if (v78 == v76 && v79 == v77)
      {
        (*v64)(v42, v15);

        OUTLINED_FUNCTION_42_34();
LABEL_21:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C6FB20F8();
          v63 = v51;
        }

        v10 = v63[2];
        v48 = v63[3];
        if (v10 >= v48 >> 1)
        {
          OUTLINED_FUNCTION_15(v48);
          sub_1C6FB20F8();
          v63 = v52;
        }

        v3 = v72;
        OUTLINED_FUNCTION_7_89();
        sub_1C73D96E4(v25, v49);
        sub_1C6FD7FC8(v7, &qword_1EC216A40);
        v50 = v63;
        v63[2] = v10 + 1;
        v50[v10 + 4] = v75;
      }

      else
      {
        v44 = sub_1C7551DBC();
        v45 = v42;
        v46 = v44;
        (*v64)(v45, v15);

        OUTLINED_FUNCTION_42_34();
        if (v46)
        {
          goto LABEL_21;
        }

LABEL_19:

        OUTLINED_FUNCTION_7_89();
        sub_1C73D96E4(v25, v47);
        sub_1C6FD7FC8(v7, &qword_1EC216A40);
        v3 = v72;
      }
    }

    while (1)
    {
      v36 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v36 >= v8)
      {

        v1 = v62;
        v3 = v61;
        v10 = v63;
        goto LABEL_28;
      }

      v1 = *(v3 + 8 * v36);
      ++v5;
      if (v1)
      {
        v5 = v36;
        goto LABEL_11;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  sub_1C7035CB0(&v80, &v78);

  v10 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v53 = sub_1C75504FC();
  sub_1C6FDE498(v53);
  v55 = v54;

  v19 = MEMORY[0x1E69E7CD0];
  if (v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_allRequiredCharactersAssetUUIDs) = v56;
  v57 = *(v10 + 16);

  v25 = 0;
  *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_numberOfRequiredCharacters) = v57;
  v58 = *&v82[8];
  v78 = v19;
  v5 = *(*&v82[8] + 16);
  v7 = (*&v82[8] + 32);
  while (v5 != v25)
  {
    if (v25 >= *(v58 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    ++v25;
    v7 = (v7 + 24);
    v59 = sub_1C75504FC();
    v10 = &v78;
    sub_1C739796C(v59);
  }

  v25 = 0;
  *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_anchorAssetUUIDs) = v78;
  v78 = v19;
  v19 = *(v58 + 16);
  v5 = v58 + 40;
  while (v19 != v25)
  {
    if (v25 >= *(v58 + 16))
    {
      goto LABEL_41;
    }

    ++v25;
    v5 += 24;
    v60 = sub_1C75504FC();
    v10 = &v78;
    sub_1C739796C(v60);
  }

  sub_1C714E318(&v80);

  *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_dependentAssetUUIDs) = v78;
  OUTLINED_FUNCTION_25_0();
}