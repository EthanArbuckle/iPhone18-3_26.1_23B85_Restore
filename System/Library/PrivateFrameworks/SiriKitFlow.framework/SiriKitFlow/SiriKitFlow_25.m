uint64_t sub_1DCD6B7B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD6B838(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  OUTLINED_FUNCTION_20_18();
  done = type metadata accessor for ForEach.State.DoneCodingKeys();
  OUTLINED_FUNCTION_5_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  v71 = done;
  v69 = v9;
  v10 = sub_1DD0DF00C();
  v11 = OUTLINED_FUNCTION_9(v10);
  v72 = v12;
  v73 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_34_0();
  v70 = v17;
  OUTLINED_FUNCTION_20_18();
  v18 = type metadata accessor for ForEach.State.RunCodingKeys();
  OUTLINED_FUNCTION_4_56();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  v66 = v18;
  v62[1] = v19;
  v20 = sub_1DD0DF00C();
  v21 = OUTLINED_FUNCTION_9(v20);
  v67 = v22;
  v68 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_34_0();
  v64 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v63 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_34_0();
  v62[0] = v33;
  OUTLINED_FUNCTION_0_1();
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_16();
  v42 = (v41 - v40);
  v78 = v4;
  v79 = v5;
  v80 = v6;
  v81 = v7;
  v74 = v7;
  type metadata accessor for ForEach.State.CodingKeys();
  OUTLINED_FUNCTION_6_42();
  OUTLINED_FUNCTION_21_20();
  v43 = sub_1DD0DF00C();
  v75 = OUTLINED_FUNCTION_9(v43);
  v76 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = v62 - v49;
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_21_20();
  sub_1DD0DF24C();
  (*(v35 + 16))(v42, v77, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v42;
    LOBYTE(v78) = 1;
    v53 = v70;
    v54 = v75;
    OUTLINED_FUNCTION_16_26();
    sub_1DD0DEF7C();
    v55 = v73;
    sub_1DD0DEFCC();
    (*(v72 + 8))(v53, v55);
  }

  else
  {
    v56 = v63;
    v57 = v62[0];
    v58 = AssociatedTypeWitness;
    (*(v63 + 32))(v62[0], v42, AssociatedTypeWitness);
    LOBYTE(v78) = 0;
    v59 = v64;
    v54 = v75;
    OUTLINED_FUNCTION_16_26();
    sub_1DD0DEF7C();
    v60 = v68;
    sub_1DD0DEFFC();
    (*(v67 + 8))(v59, v60);
    (*(v56 + 8))(v57, v58);
  }

  return (*(v76 + 8))(v50, v54);
}

uint64_t sub_1DCD6BC88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v106 = a1;
  v96 = a6;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  done = type metadata accessor for ForEach.State.DoneCodingKeys();
  OUTLINED_FUNCTION_5_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  v92 = v11;
  v93 = done;
  v87 = sub_1DD0DEF6C();
  OUTLINED_FUNCTION_9(v87);
  v86 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_34_0();
  v94 = v17;
  OUTLINED_FUNCTION_13_35();
  v18 = type metadata accessor for ForEach.State.RunCodingKeys();
  OUTLINED_FUNCTION_4_56();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  v90 = v18;
  v89 = v19;
  v85 = sub_1DD0DEF6C();
  OUTLINED_FUNCTION_9(v85);
  v84 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_34_0();
  v91 = v25;
  OUTLINED_FUNCTION_13_35();
  type metadata accessor for ForEach.State.CodingKeys();
  OUTLINED_FUNCTION_6_42();
  v97 = sub_1DD0DEF6C();
  OUTLINED_FUNCTION_9(v97);
  v100 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v79 - v31;
  v88 = a2;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  v98 = a4;
  v99 = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  v33 = type metadata accessor for ForEach.State();
  v34 = OUTLINED_FUNCTION_9(v33);
  v95 = v35;
  v37 = *(v36 + 64);
  v39 = MEMORY[0x1EEE9AC00](v34, v38);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = &v79 - v44;
  MEMORY[0x1EEE9AC00](v43, v46);
  v48 = &v79 - v47;
  v49 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  v50 = v101;
  sub_1DD0DF23C();
  if (!v50)
  {
    v80 = v41;
    v82 = v45;
    v81 = v48;
    v101 = v33;
    v83 = 0;
    v51 = v97;
    *&v102 = sub_1DD0DEF5C();
    sub_1DD0DE40C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_21_20();
    *&v104 = sub_1DD0DEA9C();
    *(&v104 + 1) = v52;
    *&v105 = v53;
    *(&v105 + 1) = v54;
    sub_1DD0DEA8C();
    swift_getWitnessTable();
    sub_1DD0DE63C();
    v55 = v102;
    if (v102 == 2 || (v79 = v104, v102 = v104, v103 = v105, (sub_1DD0DE65C() & 1) == 0))
    {
      v59 = sub_1DD0DECAC();
      swift_allocError();
      v61 = v60;
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
      *v61 = v101;
      sub_1DD0DEECC();
      sub_1DD0DEC8C();
      (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
      swift_willThrow();
      (*(v100 + 8))(v32, v51);
    }

    else
    {
      if (v55)
      {
        LOBYTE(v102) = 1;
        OUTLINED_FUNCTION_16_26();
        v56 = v83;
        sub_1DD0DEEBC();
        v57 = v96;
        v58 = v100;
        if (!v56)
        {
          v66 = sub_1DD0DEF1C();
          v67 = OUTLINED_FUNCTION_10_37();
          v68(v67);
          (*(v58 + 8))(v32, v51);
          OUTLINED_FUNCTION_9_36();
          swift_unknownObjectRelease();
          v69 = v66 & 1;
          v70 = v80;
          *v80 = v69;
          v71 = v101;
          swift_storeEnumTagMultiPayload();
          v72 = v70;
          v73 = v95;
LABEL_14:
          v77 = v81;
          v78 = *(v73 + 32);
          v78(v81, v72, v71);
          v78(v57, v77, v71);
          return __swift_destroy_boxed_opaque_existential_1Tm(v106);
        }
      }

      else
      {
        LOBYTE(v102) = 0;
        OUTLINED_FUNCTION_16_26();
        v63 = v83;
        sub_1DD0DEEBC();
        v64 = v100;
        v73 = v95;
        if (!v63)
        {
          swift_getAssociatedTypeWitness();
          sub_1DD0DEF4C();
          v74 = OUTLINED_FUNCTION_15_37(&v107);
          v75(v74);
          (*(v64 + 8))(v32, v51);
          OUTLINED_FUNCTION_9_36();
          swift_unknownObjectRelease();
          v76 = v82;
          v71 = v101;
          swift_storeEnumTagMultiPayload();
          v57 = v96;
          v72 = v76;
          goto LABEL_14;
        }
      }

      (*(v100 + 8))(v32, v51);
      OUTLINED_FUNCTION_9_36();
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v106);
}

BOOL sub_1DCD6C3AC(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1DCBB11B4(*a1, *a2);
}

uint64_t sub_1DCD6C3C4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1DCC183C8(*v1);
}

uint64_t sub_1DCD6C3D8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1DCBB11C4(a1, *v2);
}

uint64_t sub_1DCD6C3EC(uint64_t a1, void *a2)
{
  sub_1DD0DF1DC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1DCBB11C4(v9, *v2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD6C438(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1DCD6B6EC(*v1);
}

uint64_t sub_1DCD6C44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1DCD6B624(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DCD6C480(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return sub_1DCC6E198();
}

uint64_t sub_1DCD6C4AC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1DCCBE404();
  *a2 = result;
  return result;
}

uint64_t sub_1DCD6C4E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DCD6C534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DCD6C588(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v6 = a3[4];
  v5 = a3[5];
  return OUTLINED_FUNCTION_2_15();
}

unint64_t sub_1DCD6C5B0(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_1DCD6B794();
}

uint64_t sub_1DCD6C608(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DCD6C65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DCD6C6B0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void))
{
  sub_1DD0DF1DC();
  a4(v7, a2[2], a2[3], a2[4], a2[5]);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD6C700(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_1DCD6B824();
}

uint64_t sub_1DCD6C728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1DCD6C798@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5]);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DCD6C7D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DCD6C82C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ForEach.deinit()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  (*(*(v1[10] - 8) + 8))(v0 + v1[14], v1[10]);
  OUTLINED_FUNCTION_66();
  v5 = *(v0 + *(v4 + 120) + 8);

  OUTLINED_FUNCTION_66();
  v7 = *(v6 + 128);
  v13 = *(v2 + 11);
  v14 = v1[13];
  v8 = type metadata accessor for ForEach.State();
  OUTLINED_FUNCTION_2(v8);
  (*(v9 + 8))(v0 + v7);
  OUTLINED_FUNCTION_66();
  v11 = *(v0 + *(v10 + 136) + 8);

  return v0;
}

uint64_t ForEach.__deallocating_deinit()
{
  ForEach.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD6CA98(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v1[6];
  v7 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_1DCD6AED8(a1, v6, v7);
}

uint64_t sub_1DCD6CB20(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v6 = *(a1 + 88);
    v7 = *(a1 + 104);
    result = type metadata accessor for ForEach.State();
    if (v5 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DCD6CC64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCD6CD08(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if (*(v9 + 64) <= 1uLL)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (*(v9 + 80) > 7u || (*(v9 + 80) & 0x100000) != 0 || (v10 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v13 = a2[v10];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v10 <= 3)
    {
      v15 = v10;
    }

    else
    {
      v15 = 4;
    }

    switch(v15)
    {
      case 1:
        v16 = *a2;
        goto LABEL_22;
      case 2:
        v16 = *a2;
        goto LABEL_22;
      case 3:
        v16 = *a2 | (a2[2] << 16);
        goto LABEL_22;
      case 4:
        v16 = *a2;
LABEL_22:
        v17 = (v16 | (v14 << (8 * v10))) + 2;
        v13 = v16 + 2;
        if (v10 < 4)
        {
          v13 = v17;
        }

        break;
      default:
        break;
    }
  }

  if (v13 == 1)
  {
    *a1 = *a2;
    *(a1 + v10) = 1;
  }

  else
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v10) = 0;
  }

  return a1;
}

uint64_t sub_1DCD6CE90(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 64);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = a1[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a1;
        goto LABEL_12;
      case 2:
        v10 = *a1;
        goto LABEL_12;
      case 3:
        v10 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v10 = *a1;
LABEL_12:
        v11 = (v10 | (v8 << (8 * v6))) + 2;
        v7 = v10 + 2;
        if (v6 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 != 1)
  {
    v12 = *(*(result - 8) + 8);

    return v12(a1, result);
  }

  return result;
}

unsigned __int8 *sub_1DCD6CFCC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64) <= 1uLL)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    switch(v12)
    {
      case 1:
        v13 = *a2;
        goto LABEL_13;
      case 2:
        v13 = *a2;
        goto LABEL_13;
      case 3:
        v13 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v13 = *a2;
LABEL_13:
        v14 = (v13 | (v11 << (8 * v9))) + 2;
        v10 = v13 + 2;
        if (v9 < 4)
        {
          v10 = v14;
        }

        break;
      default:
        break;
    }
  }

  if (v10 == 1)
  {
    *a1 = *a2;
    v15 = 1;
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
    v15 = 0;
  }

  a1[v9] = v15;
  return a1;
}

unsigned __int8 *sub_1DCD6D118(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v7 = a3 + 16;
    v6 = *(a3 + 16);
    v5 = *(v7 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(AssociatedTypeWitness - 8);
    if (*(v9 + 64) <= 1uLL)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v11 = a1[v10];
    v12 = v11 - 2;
    if (v11 >= 2)
    {
      if (v10 <= 3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 4;
      }

      switch(v13)
      {
        case 1:
          v14 = *a1;
          goto LABEL_14;
        case 2:
          v14 = *a1;
          goto LABEL_14;
        case 3:
          v14 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v14 = *a1;
LABEL_14:
          v15 = (v14 | (v12 << (8 * v10))) + 2;
          v11 = v14 + 2;
          if (v10 < 4)
          {
            v11 = v15;
          }

          break;
        default:
          break;
      }
    }

    if (v11 != 1)
    {
      (*(v9 + 8))(a1, AssociatedTypeWitness);
    }

    v16 = a2[v10];
    v17 = v16 - 2;
    if (v16 >= 2)
    {
      if (v10 <= 3)
      {
        v18 = v10;
      }

      else
      {
        v18 = 4;
      }

      switch(v18)
      {
        case 1:
          v19 = *a2;
          goto LABEL_27;
        case 2:
          v19 = *a2;
          goto LABEL_27;
        case 3:
          v19 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v19 = *a2;
LABEL_27:
          v20 = (v19 | (v17 << (8 * v10))) + 2;
          v16 = v19 + 2;
          if (v10 < 4)
          {
            v16 = v20;
          }

          break;
        default:
          break;
      }
    }

    if (v16 == 1)
    {
      *a1 = *a2;
      v21 = 1;
    }

    else
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      v21 = 0;
    }

    a1[v10] = v21;
  }

  return a1;
}

unsigned __int8 *sub_1DCD6D314(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64) <= 1uLL)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    switch(v12)
    {
      case 1:
        v13 = *a2;
        goto LABEL_13;
      case 2:
        v13 = *a2;
        goto LABEL_13;
      case 3:
        v13 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v13 = *a2;
LABEL_13:
        v14 = (v13 | (v11 << (8 * v9))) + 2;
        v10 = v13 + 2;
        if (v9 < 4)
        {
          v10 = v14;
        }

        break;
      default:
        break;
    }
  }

  if (v10 == 1)
  {
    *a1 = *a2;
    v15 = 1;
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
    v15 = 0;
  }

  a1[v9] = v15;
  return a1;
}

unsigned __int8 *sub_1DCD6D460(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v7 = a3 + 16;
    v6 = *(a3 + 16);
    v5 = *(v7 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(AssociatedTypeWitness - 8);
    if (*(v9 + 64) <= 1uLL)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    v11 = a1[v10];
    v12 = v11 - 2;
    if (v11 >= 2)
    {
      if (v10 <= 3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 4;
      }

      switch(v13)
      {
        case 1:
          v14 = *a1;
          goto LABEL_14;
        case 2:
          v14 = *a1;
          goto LABEL_14;
        case 3:
          v14 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v14 = *a1;
LABEL_14:
          v15 = (v14 | (v12 << (8 * v10))) + 2;
          v11 = v14 + 2;
          if (v10 < 4)
          {
            v11 = v15;
          }

          break;
        default:
          break;
      }
    }

    if (v11 != 1)
    {
      (*(v9 + 8))(a1, AssociatedTypeWitness);
    }

    v16 = a2[v10];
    v17 = v16 - 2;
    if (v16 >= 2)
    {
      if (v10 <= 3)
      {
        v18 = v10;
      }

      else
      {
        v18 = 4;
      }

      switch(v18)
      {
        case 1:
          v19 = *a2;
          goto LABEL_27;
        case 2:
          v19 = *a2;
          goto LABEL_27;
        case 3:
          v19 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v19 = *a2;
LABEL_27:
          v20 = (v19 | (v17 << (8 * v10))) + 2;
          v16 = v19 + 2;
          if (v10 < 4)
          {
            v16 = v20;
          }

          break;
        default:
          break;
      }
    }

    if (v16 == 1)
    {
      *a1 = *a2;
      v21 = 1;
    }

    else
    {
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      v21 = 0;
    }

    a1[v10] = v21;
  }

  return a1;
}

uint64_t sub_1DCD6D65C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return (v10 | v15) + 255;
}

void sub_1DCD6D7B4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= 1)
  {
    v9 = 1;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v10 <= 3)
  {
    v15 = ((a3 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v10 < 4)
    {
      v14 = (v13 >> v11) + 1;
      if (v9 != -1)
      {
        v17 = v13 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v10 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v10] = v14;
        break;
      case 2:
        *&a1[v10] = v14;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v12)
    {
      case 1:
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v10] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v9] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCD6D994(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  result = a1[v5];
  if (result >= 2)
  {
    if (v5 <= 3)
    {
      v7 = v5;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a1;
        goto LABEL_12;
      case 2:
        v8 = *a1;
        goto LABEL_12;
      case 3:
        v8 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v8 = *a1;
LABEL_12:
        v9 = (v8 | ((result - 2) << (8 * v5))) + 2;
        v10 = v8 + 2;
        if (v5 >= 4)
        {
          result = v10;
        }

        else
        {
          result = v9;
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCD6DA68(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (a2 > 1)
  {
    v10 = a2 - 2;
    if (v9 < 4)
    {
      a1[v9] = (v10 >> (8 * v9)) + 2;
      if (v9)
      {
        v11 = v10 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v11;
          a1[2] = BYTE2(v11);
        }

        else if (v9 == 2)
        {
          *a1 = v11;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      a1[v9] = 2;
      bzero(a1, v9);
      *a1 = v10;
    }
  }

  else
  {
    a1[v9] = a2;
  }
}

uint64_t sub_1DCD6DBA4(char *a1, void (*a2)(uint64_t *))
{
  v2 = *a1;
  v4[3] = &type metadata for FlowLoopControl;
  LOBYTE(v4[0]) = v2;
  a2(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_1DCD6DBFC()
{
  result = qword_1ECCA5280;
  if (!qword_1ECCA5280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA5278, &qword_1DD0F10C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5280);
  }

  return result;
}

_BYTE *sub_1DCD6DC60(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCD6DD2C(_BYTE *result, int a2, int a3)
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

void *sub_1DCD6DED8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  *(v3 + 1) = xmmword_1DD0E2F10;
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v3[6] = 0;
  v7 = v3[2];
  v8 = v3[3];
  v3[2] = v5;
  v3[3] = v6;
  sub_1DCB07180(v7, v8);
  v3[5] = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1DCD6DF5C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD6E004, 0, 0);
}

uint64_t sub_1DCD6E004()
{
  v105 = v0;
  v2 = v0[5];
  if (v2[6])
  {
    v3 = v0[4];
LABEL_9:
    static ExecuteResponse.complete()();
    goto LABEL_10;
  }

  v4 = v2[3];
  if ((~v4 & 0xF000000000000007) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "No more action groups to run. Action handling frame is complete", v8, 2u);
      OUTLINED_FUNCTION_80();
    }

    v9 = v0[4];

    goto LABEL_9;
  }

  v14 = v2[2];
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1 || (v14 & 0x8000000000000000) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v16 = v0[6];
      v15 = v0[7];
      v17 = sub_1DD0DD8FC();
      v18 = __swift_project_value_buffer(v17, qword_1EDE57E00);
      v19 = *(v17 - 8);
      (*(v19 + 16))(v15, v18, v17);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
      sub_1DCBCF6C8(v15, v16);
      if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
      {
        sub_1DCBCF738(v0[6]);
      }

      else
      {
        v24 = v0[6];
        v25 = sub_1DD0DD8EC();
        v26 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v104[0] = swift_slowAlloc();
          *v27 = 136315650;
          v28 = sub_1DD0DEC3C();
          v30 = sub_1DCB10E9C(v28, v29, v104);

          *(v27 + 4) = v30;
          *(v27 + 12) = 2048;
          *(v27 + 14) = 115;
          *(v27 + 22) = 2080;
          *(v27 + 24) = sub_1DCB10E9C(0xD000000000000054, 0x80000001DD11B040, v104);
          _os_log_impl(&dword_1DCAFC000, v25, v26, "FatalError at %s:%lu - %s", v27, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        (*(v19 + 8))(v0[6], v17);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000054, 0x80000001DD11B040);
    }

    v75 = v14 & 0x7FFFFFFFFFFFFFFFLL;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v76 = *(v0[5] + 40);
      ObjectType = swift_getObjectType();
      v1 = *(v76 + 24);
      v78 = OUTLINED_FUNCTION_1_58();
      sub_1DCBFAABC(v78, v79);
      (v1)(v14 & 0x7FFFFFFFFFFFFFFFLL, ObjectType, v76);
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = OUTLINED_FUNCTION_1_58();
      sub_1DCBFAABC(v80, v81);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v82 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v82, qword_1EDE57E00);
    v83 = OUTLINED_FUNCTION_1_58();
    sub_1DCBFAABC(v83, v84);
    v85 = sub_1DD0DD8EC();
    v86 = sub_1DD0DE6DC();
    v87 = OUTLINED_FUNCTION_1_58();
    sub_1DCB07180(v87, v88);
    if (os_log_type_enabled(v85, v86))
    {
      swift_slowAlloc();
      v89 = OUTLINED_FUNCTION_3_60();
      v104[0] = v89;
      *v1 = 136315138;
      v90 = sub_1DCBFBFC0();
      v92 = sub_1DCB10E9C(v90, v91, v104);

      *(v1 + 4) = v92;
      OUTLINED_FUNCTION_4_57(&dword_1DCAFC000, v93, v94, "Starting deferred frame type transition: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v95 = v0[4];
    v96 = v0[5];
    v97 = swift_allocObject();
    *(v97 + 16) = v75;
    *(v97 + 24) = v96;
    v99 = *(v75 + 48);
    v98 = *(v75 + 56);
    v100 = OUTLINED_FUNCTION_1_58();
    sub_1DCBFAAA8(v100, v101);
    sub_1DD0DCF8C();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = v2[5];
    swift_getObjectType();
    v1 = *(v20 + 8);
    v21 = OUTLINED_FUNCTION_1_58();
    sub_1DCBFAABC(v21, v22);
    v23 = OUTLINED_FUNCTION_1_58();
    (v1)(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_1_58();
    sub_1DCBFAABC(v31, v32);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v33 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v33, qword_1EDE57E00);
  v34 = OUTLINED_FUNCTION_1_58();
  sub_1DCBFAABC(v34, v35);
  v36 = sub_1DD0DD8EC();
  v37 = sub_1DD0DE6DC();
  v38 = OUTLINED_FUNCTION_1_58();
  sub_1DCB07180(v38, v39);
  if (os_log_type_enabled(v36, v37))
  {
    swift_slowAlloc();
    v102 = OUTLINED_FUNCTION_3_60();
    v104[0] = v102;
    *v1 = 136315138;
    swift_getObjectType();
    v0[3] = v14;
    v40 = *(v4 + 8);
    v41 = sub_1DD0DF0BC();
    v43 = v14;
    v44 = sub_1DCB10E9C(v41, v42, v104);

    *(v1 + 4) = v44;
    v14 = v43;
    _os_log_impl(&dword_1DCAFC000, v36, v37, "Transitioning to action group: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v45 = swift_getObjectType();
  if ((*(v4 + 16))(v45, v4))
  {
    v47 = v46;
    v48 = v0[4];
    v49 = v0[5];
    Strong = swift_unknownObjectWeakLoadStrong();
    v51 = v2[5];
    type metadata accessor for ActionHandlingFlow();
    swift_allocObject();
    v52 = swift_unknownObjectRetain();
    sub_1DCBFCDA4(v52, v47, Strong, v51);
    v53 = swift_allocObject();
    v53[2] = v49;
    v53[3] = v14;
    v53[4] = v4;
    sub_1DCBFAAA8(v14, v4);
    sub_1DD0DCF8C();
  }

  v54 = OUTLINED_FUNCTION_1_58();
  sub_1DCBFAABC(v54, v55);
  v56 = sub_1DD0DD8EC();
  v57 = sub_1DD0DE6DC();
  v58 = OUTLINED_FUNCTION_1_58();
  sub_1DCB07180(v58, v59);
  if (os_log_type_enabled(v56, v57))
  {
    swift_slowAlloc();
    v103 = OUTLINED_FUNCTION_3_60();
    v104[0] = v103;
    *v1 = 136315138;
    v0[2] = v14;
    v60 = *(v4 + 8);
    v61 = sub_1DD0DF0BC();
    v63 = sub_1DCB10E9C(v61, v62, v104);

    *(v1 + 4) = v63;
    OUTLINED_FUNCTION_4_57(&dword_1DCAFC000, v64, v65, "Action group had no flows. Moving on (%s)");
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = v2[5];
    swift_getObjectType();
    v67 = *(v66 + 16);
    v68 = OUTLINED_FUNCTION_1_58();
    v69(v68);
    swift_unknownObjectRelease();
  }

  v70 = v0[4];
  (*(v4 + 24))(v104, v45, v4);
  v71 = OUTLINED_FUNCTION_1_58();
  sub_1DCB07180(v71, v72);
  v73 = v2[2];
  v74 = v2[3];
  *(v2 + 1) = *v104;
  sub_1DCB07180(v73, v74);
  static ExecuteResponse.ongoing(requireInput:)(0, v70);
LABEL_10:
  v11 = v0[6];
  v10 = v0[7];

  v12 = v0[1];

  return v12();
}

void sub_1DCD6E938(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (v5)
  {
    v6 = a2[6];
    a2[6] = v5;
    v7 = v5;
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = a2[5];
      ObjectType = swift_getObjectType();
      (*(v10 + 16))(a3, a4, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    v12 = swift_getObjectType();
    (*(a4 + 24))(&v15, v12, a4);
    v13 = a2[2];
    v14 = a2[3];
    *(a2 + 1) = v15;

    sub_1DCB07180(v13, v14);
  }
}

void sub_1DCD6EA40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCD6EC3C(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCD6ECD8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCD6DF5C(a1);
}

unint64_t sub_1DCD6ED74(uint64_t a1)
{
  result = sub_1DCD6ED9C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD6ED9C()
{
  result = qword_1ECCA5410;
  if (!qword_1ECCA5410)
  {
    type metadata accessor for GroupHandlingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5410);
  }

  return result;
}

void sub_1DCD6EDF0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DCD6EA40(a1);
}

uint64_t sub_1DCD6EE04(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void *sub_1DCD6EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = 0xD000000000000029;
  v4[3] = 0x80000001DD113770;
  *(v4 + 2) = xmmword_1DD0E2F10;
  v4[7] = 0;
  swift_unknownObjectWeakInit();
  v8 = v4[4];
  v9 = v4[5];
  v4[4] = a1;
  v4[5] = a2;
  sub_1DCB07180(v8, v9);
  v4[7] = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1DCD6EEE0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - v9;
  v11 = *MEMORY[0x1E699F738];
  v12 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v12);
  (*(v13 + 104))(v10, v11);
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_1DCB0E9D8(v10, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCD6EFDC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v73 - v21;
  v23 = v4[5];
  if ((~v23 & 0xF000000000000007) != 0)
  {
    v25 = v4[4];
    if (v23 >> 62)
    {
      if (v23 >> 62 == 1 || (v25 & 0x8000000000000000) == 0)
      {
        v26 = OUTLINED_FUNCTION_49_3();
        sub_1DCBFAABC(v26, v27);
        sub_1DCD6F8CC(v25);
      }

      v61 = OUTLINED_FUNCTION_49_3();
      sub_1DCBFAABC(v61, v62);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v63 = sub_1DD0DD8FC();
      v64 = __swift_project_value_buffer(v63, qword_1EDE57E00);
      v65 = *(v63 - 8);
      (*(v65 + 16))(v15, v64, v63);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v63);
      sub_1DCBCF6C8(v15, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v63) == 1)
      {
        sub_1DCB0E9D8(v12, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v66 = sub_1DD0DD8EC();
        v67 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *&v80 = v69;
          *v68 = 136315650;
          v70 = sub_1DD0DEC3C();
          v72 = sub_1DCB10E9C(v70, v71, &v80);

          *(v68 + 4) = v72;
          *(v68 + 12) = 2048;
          *(v68 + 14) = 102;
          *(v68 + 22) = 2080;
          *(v68 + 24) = sub_1DCB10E9C(0xD000000000000054, 0x80000001DD11B1B0, &v80);
          _os_log_impl(&dword_1DCAFC000, v66, v67, "FatalError at %s:%lu - %s", v68, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v69, -1, -1);
          MEMORY[0x1E12A8390](v68, -1, -1);
        }

        (*(v65 + 8))(v12, v63);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000054, 0x80000001DD11B1B0);
    }

    v78 = a3;
    v79 = a2;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = v4[7];
      swift_getObjectType();
      v29 = *(v28 + 8);
      v30 = OUTLINED_FUNCTION_49_3();
      sub_1DCBFAABC(v30, v31);
      v32 = OUTLINED_FUNCTION_49_3();
      v29(v32);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = OUTLINED_FUNCTION_49_3();
      sub_1DCBFAABC(v33, v34);
    }

    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    v35 = qword_1EDE57E18;
    LODWORD(v77) = sub_1DD0DE6DC();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v36 = swift_allocObject();
    v74 = xmmword_1DD0E07C0;
    *(v36 + 16) = xmmword_1DD0E07C0;
    ObjectType = swift_getObjectType();
    *&v80 = v25;
    v73[1] = *(v23 + 8);
    v38 = sub_1DD0DF0BC();
    v40 = v39;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    v73[0] = sub_1DCB34060();
    *(v36 + 64) = v73[0];
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    v76 = v35;
    sub_1DD0DD7EC();

    if ((*(v23 + 16))(ObjectType, v23))
    {
      v42 = v41;
      Strong = swift_unknownObjectWeakLoadStrong();
      v44 = v4[7];
      v77 = type metadata accessor for ActionHandlingFlowFrame();
      swift_allocObject();
      v45 = swift_unknownObjectRetain();
      *&v80 = sub_1DCBFD654(v45, v42, Strong, v44);
      v46 = swift_allocObject();
      v46[2] = v4;
      v46[3] = v25;
      v46[4] = v23;
      v47 = OUTLINED_FUNCTION_49_3();
      sub_1DCBFAAA8(v47, v48);
      type metadata accessor for SiriKitFlowFrameInput();
      sub_1DD0DCF8C();
    }

    sub_1DD0DE6DC();
    v49 = swift_allocObject();
    *(v49 + 16) = v74;
    *&v80 = v25;
    v50 = sub_1DD0DF0BC();
    v51 = v73[0];
    *(v49 + 56) = MEMORY[0x1E69E6158];
    *(v49 + 64) = v51;
    *(v49 + 32) = v50;
    *(v49 + 40) = v52;
    sub_1DD0DD7EC();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = v4[7];
      swift_getObjectType();
      v54 = *(v53 + 16);
      v55 = OUTLINED_FUNCTION_49_3();
      v56(v55);
      swift_unknownObjectRelease();
    }

    (*(v23 + 24))(&v80, ObjectType, v23);
    v57 = v4[4];
    v58 = v4[5];
    *(v4 + 2) = v80;
    sub_1DCB07180(v57, v58);
    type metadata accessor for SiriKitFlowFrameInput();
    sub_1DD0DB30C();
    OUTLINED_FUNCTION_3_61();
    v79(v22);
    v59 = OUTLINED_FUNCTION_49_3();
    sub_1DCB07180(v59, v60);
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    type metadata accessor for SiriKitFlowFrameInput();
    sub_1DD0DB32C();
    OUTLINED_FUNCTION_3_61();
    a2(v22);
  }

  return sub_1DCB0E9D8(v22, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCD6F804(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = a3[7];
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a4, a5, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = swift_getObjectType();
  (*(a5 + 24))(&v14, v10, a5);
  v11 = a3[4];
  v12 = a3[5];
  *(a3 + 2) = v14;

  return sub_1DCB07180(v11, v12);
}

void sub_1DCD6F8CC(uint64_t a1)
{
  v2 = v1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2(v20);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5418, &qword_1DD0F15B0) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(a1, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E07C0;
  v14 = sub_1DCBFBB5C();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DCB34060();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1DD0DD7EC();

  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  v19 = *(a1 + 48);
  v18 = *(a1 + 56);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD6FBA8(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a2[7];
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  v9 = a2[4];
  v10 = a2[5];
  a2[4] = v5;
  a2[5] = v6;
  sub_1DCBFAAA8(v5, v6);

  return sub_1DCB07180(v9, v10);
}

void *sub_1DCD6FCB8()
{
  v1 = v0[3];

  sub_1DCB07180(v0[4], v0[5]);
  sub_1DCB0720C((v0 + 6));
  return v0;
}

uint64_t sub_1DCD6FCE8()
{
  sub_1DCD6FCB8();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCD6FD98()
{
  result = qword_1ECCA5428;
  if (!qword_1ECCA5428)
  {
    type metadata accessor for ActionHandlingFlowFrame();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5428);
  }

  return result;
}

uint64_t GuardFlowResult.description.getter(char a1)
{
  if (a1)
  {
    return 1818845542;
  }

  else
  {
    return 1936941424;
  }
}

uint64_t GuardFlowResult.hashValue.getter(char a1)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](a1 & 1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD6FEAC()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  GuardFlowResult.hash(into:)(v3, v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD6FF1C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1 & 1;
  return result;
}

uint64_t GuardFlow.__allocating_init(preconditionFlows:)(unint64_t a1)
{
  v2 = swift_allocObject();
  GuardFlow.init(preconditionFlows:)(a1);
  return v2;
}

uint64_t GuardFlow.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

void sub_1DCD6FFC4(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

unint64_t sub_1DCD70064()
{
  result = qword_1ECCA5430;
  if (!qword_1ECCA5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5430);
  }

  return result;
}

unint64_t sub_1DCD700B8(uint64_t a1)
{
  result = sub_1DCD700E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD700E0()
{
  result = qword_1ECCA5438;
  if (!qword_1ECCA5438)
  {
    type metadata accessor for GuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5438);
  }

  return result;
}

uint64_t dispatch thunk of GuardFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCB193FC;

  return v8(a1);
}

uint64_t sub_1DCD70408(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1DCD70448();
}

uint64_t sub_1DCD70448()
{
  OUTLINED_FUNCTION_60();
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1DCD70498(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain();
  return sub_1DCD70508();
}

uint64_t sub_1DCD704D4()
{
  OUTLINED_FUNCTION_156();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_1DCD70508()
{
  OUTLINED_FUNCTION_60();
  swift_beginAccess();
  *(v1 + 80) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DCD70564(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 80);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1DCD705E4;
}

void sub_1DCD705E4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 80) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t GuidedConversationFlowFrame.__allocating_init(source:)()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_allocObject();
  GuidedConversationFlowFrame.init(source:)();
  return v0;
}

uint64_t GuidedConversationFlowFrame.init(source:)()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 16) = 0xD000000000000029;
  *(v1 + 24) = 0x80000001DD113770;
  *(v1 + 80) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 48) = 0;
  return v1;
}

uint64_t sub_1DCD70718(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - v12;
  if (*(v4 + 48) != 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_156();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 80);
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 56))(a2, ObjectType, v14);
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *(v4 + 56);
  *(v4 + 56) = v16;
  *(v4 + 64) = v18;
  swift_unknownObjectRelease();
  if (!*(v4 + 56))
  {
    v20 = MEMORY[0x1E699F738];
  }

  else
  {
LABEL_6:
    v20 = MEMORY[0x1E699F740];
  }

  v21 = *v20;
  v22 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v22);
  (*(v23 + 104))(v13, v21);
  swift_storeEnumTagMultiPayload();
  a3(v13);
  return sub_1DCB0E9D8(v13, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCD708B8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (*(a2 + 48))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a2 + 48) = v4;
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = v5;
  }

  else
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    ObjectType = swift_getObjectType();
    v7 = (*(v9 + 8))(ObjectType, v9);
  }

  v12[0] = v7;
  v12[1] = v6;
  v13 = 0;
  swift_unknownObjectRetain();
  a3(v12);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DCD70978(uint64_t a1, void (*a2)(uint64_t, uint64_t, void))
{
  if (*(v2 + 48))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(v2 + 48) = v4;
  v5 = *(v2 + 56);
  if (v5)
  {
    v6 = *(v2 + 64);
    v7 = v5;
  }

  else
  {
    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v7 = (*(v9 + 8))(ObjectType, v9);
    v6 = v11;
  }

  swift_unknownObjectRetain();
  a2(v7, v6, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DCD70A38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v27 - v16;
  if (*(v6 + 48) != 2)
  {
    v27[0] = a5;
    v27[1] = a4;
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DD0E07C0;
    swift_getObjectType();
    v27[3] = a2;
    v19 = *(a3 + 8);
    v20 = sub_1DD0DF0BC();
    v22 = v21;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1DCB34060();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_156();
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = *(v6 + 80);
    type metadata accessor for GroupHandlingFlowFrame();
    swift_allocObject();
    v25 = swift_unknownObjectRetain();
    v27[2] = sub_1DCD6EE44(v25, a3, Strong, v24);
    type metadata accessor for SiriKitFlowFrameInput();
    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitFlowFrameInput();
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  a4(v17);
  return sub_1DCB0E9D8(v17, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

void *GuidedConversationFlowFrame.deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[7];
  swift_unknownObjectRelease();
  sub_1DCB0720C((v0 + 9));
  return v0;
}

uint64_t GuidedConversationFlowFrame.__deallocating_deinit()
{
  GuidedConversationFlowFrame.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCD70E28()
{
  result = qword_1ECCA5440;
  if (!qword_1ECCA5440)
  {
    type metadata accessor for GroupHandlingFlowFrame();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GuidedConversationFlowConstants(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD711C4()
{
  result = qword_1ECCA5448;
  if (!qword_1ECCA5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5448);
  }

  return result;
}

uint64_t HandcraftedPluginManifestEntry.bundlePath.getter()
{
  OUTLINED_FUNCTION_1_59();
  v0 = sub_1DCB50C00();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DCD712AC()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000016;
  *(result + 24) = 0x80000001DD11BC10;
  *(result + 32) = 0xD00000000000001ELL;
  *(result + 40) = 0x80000001DD1100A0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E450 = result;
  return result;
}

uint64_t sub_1DCD71324()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000016;
  *(result + 24) = 0x80000001DD11BBF0;
  *(result + 32) = 0xD00000000000001ELL;
  *(result + 40) = 0x80000001DD1100C0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E2E8 = result;
  return result;
}

uint64_t sub_1DCD7139C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = 0x80000001DD11BBD0;
  *(result + 32) = 0xD00000000000002CLL;
  *(result + 40) = 0x80000001DD1100E0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E440 = result;
  return result;
}

uint64_t sub_1DCD71414()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000018;
  *(result + 24) = 0x80000001DD11BBB0;
  *(result + 32) = 0xD000000000000020;
  *(result + 40) = 0x80000001DD110140;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E498 = result;
  return result;
}

uint64_t sub_1DCD7148C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11BB80;
  *(result + 32) = 0xD000000000000029;
  *(result + 40) = 0x80000001DD110110;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3A0 = result;
  return result;
}

uint64_t sub_1DCD71504()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000024;
  *(result + 24) = 0x80000001DD11BB50;
  *(result + 32) = 0xD00000000000002CLL;
  *(result + 40) = 0x80000001DD110170;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E598 = result;
  return result;
}

uint64_t sub_1DCD7157C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000016;
  *(result + 24) = 0x80000001DD11BB30;
  *(result + 32) = 0xD00000000000001ELL;
  *(result + 40) = 0x80000001DD1101A0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E430 = result;
  return result;
}

uint64_t sub_1DCD715F4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11BB00;
  *(result + 32) = 0xD000000000000029;
  *(result + 40) = 0x80000001DD1101C0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E388 = result;
  return result;
}

uint64_t sub_1DCD7166C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = 0x80000001DD11BAB0;
  *(result + 32) = 0xD000000000000026;
  *(result + 40) = 0x80000001DD110220;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E520 = result;
  return result;
}

uint64_t sub_1DCD716E4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001CLL;
  *(result + 24) = 0x80000001DD11BA90;
  *(result + 32) = 0xD000000000000024;
  *(result + 40) = 0x80000001DD110250;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E588 = result;
  return result;
}

uint64_t sub_1DCD7175C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ALL;
  *(result + 24) = 0x80000001DD11BA70;
  *(result + 32) = 0xD000000000000022;
  *(result + 40) = 0x80000001DD110280;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E2D0 = result;
  return result;
}

uint64_t sub_1DCD717D4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000017;
  *(result + 24) = 0x80000001DD11BA50;
  *(result + 32) = 0xD000000000000026;
  *(result + 40) = 0x80000001DD1102B0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3F8 = result;
  return result;
}

uint64_t sub_1DCD7184C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001CLL;
  *(result + 24) = 0x80000001DD11BA30;
  *(result + 32) = 0xD000000000000024;
  *(result + 40) = 0x80000001DD1102E0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E480 = result;
  return result;
}

uint64_t sub_1DCD718C4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001FLL;
  *(result + 24) = 0x80000001DD11BA10;
  *(result + 32) = 0xD000000000000027;
  *(result + 40) = 0x80000001DD110310;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3E8 = result;
  return result;
}

uint64_t sub_1DCD7193C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000027;
  *(result + 24) = 0x80000001DD11B9E0;
  *(result + 32) = 0xD00000000000002FLL;
  *(result + 40) = 0x80000001DD110340;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E500 = result;
  return result;
}

uint64_t sub_1DCD719B4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000002ALL;
  *(result + 24) = 0x80000001DD11B9B0;
  *(result + 32) = 0xD000000000000032;
  *(result + 40) = 0x80000001DD110370;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E4B8 = result;
  return result;
}

uint64_t sub_1DCD71A2C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x80000001DD11B990;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001DD1103B0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E370 = result;
  return result;
}

uint64_t sub_1DCD71AA4()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000013;
  *(result + 24) = 0x80000001DD11B970;
  *(result + 32) = 0xD000000000000016;
  *(result + 40) = 0x80000001DD1103E0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3D8 = result;
  return result;
}

uint64_t sub_1DCD71B1C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001CLL;
  *(result + 24) = 0x80000001DD11B950;
  *(result + 32) = 0xD000000000000024;
  *(result + 40) = 0x80000001DD110400;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E570 = result;
  return result;
}

uint64_t sub_1DCD71B94()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001DLL;
  *(result + 24) = 0x80000001DD11B930;
  *(result + 32) = 0xD000000000000025;
  *(result + 40) = 0x80000001DD110430;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E468 = result;
  return result;
}

uint64_t sub_1DCD71C0C()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11B900;
  *(result + 32) = 0xD000000000000031;
  *(result + 40) = 0x80000001DD110460;
  *(result + 48) = 1;
  *(result + 56) = 2;
  qword_1EDE4E360 = result;
  return result;
}

uint64_t sub_1DCD71C88()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x80000001DD11B8E0;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001DD1104A0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E348 = result;
  return result;
}

uint64_t sub_1DCD71D00()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000026;
  *(result + 24) = 0x80000001DD11B8B0;
  *(result + 32) = 0xD00000000000002ELL;
  *(result + 40) = 0x80000001DD1104D0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E510 = result;
  return result;
}

uint64_t sub_1DCD71D78()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11B880;
  *(result + 32) = 0xD000000000000029;
  *(result + 40) = 0x80000001DD110500;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E338 = result;
  return result;
}

uint64_t sub_1DCD71DF0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000022;
  *(result + 24) = 0x80000001DD11B850;
  *(result + 32) = 0xD00000000000002ALL;
  *(result + 40) = 0x80000001DD110530;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E2C0 = result;
  return result;
}

uint64_t sub_1DCD71E68()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001FLL;
  *(result + 24) = 0x80000001DD11B830;
  *(result + 32) = 0xD000000000000027;
  *(result + 40) = 0x80000001DD110560;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3C8 = result;
  return result;
}

uint64_t sub_1DCD71EE0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11BAD0;
  *(result + 32) = 0xD00000000000002FLL;
  *(result + 40) = 0x80000001DD1101F0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E4D0 = result;
  return result;
}

uint64_t sub_1DCD71F58()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000017;
  *(result + 24) = 0x80000001DD11B810;
  *(result + 32) = 0xD00000000000001FLL;
  *(result + 40) = 0x80000001DD110590;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E3B8 = result;
  return result;
}

uint64_t sub_1DCD71FD0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000021;
  *(result + 24) = 0x80000001DD11B7E0;
  *(result + 32) = 0xD000000000000029;
  *(result + 40) = 0x80000001DD1105B0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E320 = result;
  return result;
}

uint64_t sub_1DCD72048()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x80000001DD11B7C0;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001DD1105E0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E308 = result;
  return result;
}

uint64_t sub_1DCD720C0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001BLL;
  *(result + 24) = 0x80000001DD11B7A0;
  *(result + 32) = 0xD000000000000027;
  *(result + 40) = 0x80000001DD110610;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E5B0 = result;
  return result;
}

uint64_t sub_1DCD72138()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000002BLL;
  *(result + 24) = 0x80000001DD11B740;
  *(result + 32) = 0xD000000000000033;
  *(result + 40) = 0x80000001DD110640;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E4A8 = result;
  return result;
}

uint64_t sub_1DCD721B0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000020;
  *(result + 24) = 0x80000001DD11B770;
  *(result + 32) = 0xD000000000000023;
  *(result + 40) = 0x80000001DD110680;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E560 = result;
  return result;
}

uint64_t sub_1DCD72228()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000027;
  *(result + 24) = 0x80000001DD11B710;
  *(result + 32) = 0xD00000000000002FLL;
  *(result + 40) = 0x80000001DD1106B0;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E4E8 = result;
  return result;
}

uint64_t sub_1DCD722A0()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = 0x80000001DD11B6F0;
  *(result + 32) = 0xD000000000000026;
  *(result + 40) = 0x80000001DD1106E0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E420 = result;
  return result;
}

uint64_t sub_1DCD72318()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000024;
  *(result + 24) = 0x80000001DD11B6C0;
  *(result + 32) = 0xD00000000000002CLL;
  *(result + 40) = 0x80000001DD110710;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E548 = result;
  return result;
}

uint64_t sub_1DCD72390()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ELL;
  *(result + 24) = 0x80000001DD11B6A0;
  *(result + 32) = 0xD000000000000026;
  *(result + 40) = 0x80000001DD110740;
  *(result + 48) = 0;
  *(result + 56) = 1;
  qword_1EDE4E410 = result;
  return result;
}

uint64_t sub_1DCD72408()
{
  type metadata accessor for InternalPluginData();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000019;
  *(result + 24) = 0x80000001DD11B680;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001DD110770;
  *(result + 48) = 1;
  *(result + 56) = 1;
  qword_1EDE4E2F8 = result;
  return result;
}

void sub_1DCD72480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0F1920;
  if (qword_1EDE4E448 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EDE4E450;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD72E60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1DCD72E88()
{
  sub_1DCD72E60();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD72EB8()
{
  if (qword_1EDE4E528 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE4E530;
  v1 = sub_1DCB08B14(qword_1EDE4E530);
  v2 = v0 & 0xC000000000000001;

  v3 = MEMORY[0x1E69E7CC8];
  if (v1)
  {
    sub_1DCB35460(0, v2 == 0, v0);
    if (!v2)
    {
      v4 = *(v0 + 32);
      sub_1DD0DCF8C();
    }

    v7 = MEMORY[0x1E12A72C0](0, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5458, &qword_1DD0F1AD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    v6 = *(v7 + 24);
    *(inited + 32) = *(v7 + 16);
    *(inited + 40) = v6;
    *(inited + 48) = v7;
    type metadata accessor for InternalPluginData();

    sub_1DD0DCF8C();
  }

  qword_1EDE46968 = v3;
  return result;
}

uint64_t sub_1DCD73098()
{
  if (qword_1EDE4E528 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE4E530;
  v1 = sub_1DCB08B14(qword_1EDE4E530);
  v2 = v0 & 0xC000000000000001;

  v3 = MEMORY[0x1E69E7CC8];
  if (v1)
  {
    sub_1DCB35460(0, v2 == 0, v0);
    if (!v2)
    {
      v4 = *(v0 + 32);
      sub_1DD0DCF8C();
    }

    v7 = MEMORY[0x1E12A72C0](0, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5458, &qword_1DD0F1AD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    v6 = *(v7 + 40);
    *(inited + 32) = *(v7 + 32);
    *(inited + 40) = v6;
    *(inited + 48) = v7;
    type metadata accessor for InternalPluginData();

    sub_1DD0DCF8C();
  }

  qword_1EDE4D9C0 = v3;
  return result;
}

SiriKitFlow::HandcraftedPluginManifestEntry static HandcraftedPluginManifestEntry.fromPluginBundlePath(_:)@<W0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_3_62();
  v2 = OUTLINED_FUNCTION_2_55();
  v3 = sub_1DCB1D5C0(v2);
  v5 = v4;

  if (!v5)
  {
    goto LABEL_6;
  }

  if (qword_1EDE46960 != -1)
  {
    OUTLINED_FUNCTION_0_55();
  }

  v7 = sub_1DCB508E0(v3, v5, qword_1EDE46968);

  if (v7)
  {
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);

    v10._countAndFlagsBits = v8;
    v10._object = v9;
    return HandcraftedPluginManifestEntry.init(rawValue:)(v10).value;
  }

  else
  {
LABEL_6:
    *a1 = 38;
  }

  return result;
}

unint64_t HandcraftedPluginManifestEntry.associatedAppBundleId.getter()
{
  result = 0;
  switch(*v0)
  {
    case 1:
    case 3:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x17:
    case 0x1A:
    case 0x1B:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
      return result;
    case 2:
    case 0xD:
    case 0xF:
    case 0x10:
    case 0x24:
      result = 0x6C7070612E6D6F63;
      break;
    case 4:
    case 0x15:
    case 0x1D:
    case 0x23:
      OUTLINED_FUNCTION_4_58();
      result = v5 - 2;
      break;
    case 5:
    case 0x14:
      OUTLINED_FUNCTION_4_58();
      result = v2 - 1;
      break;
    case 7:
      OUTLINED_FUNCTION_4_58();
      result = v3 + 6;
      break;
    case 0xC:
    case 0x25:
      OUTLINED_FUNCTION_4_58();
      result = v4 - 5;
      break;
    case 0xE:
      OUTLINED_FUNCTION_4_58();
      result = v7 - 4;
      break;
    case 0x16:
      result = 0xD000000000000015;
      break;
    case 0x18:
      OUTLINED_FUNCTION_4_58();
      result = v6 - 3;
      break;
    case 0x19:
      result = 0xD000000000000015;
      break;
    case 0x1C:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_1DCD73598()
{
  result = qword_1ECCA5450;
  if (!qword_1ECCA5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5450);
  }

  return result;
}

unint64_t sub_1DCD73610@<X0>(unint64_t *a1@<X8>)
{
  result = HandcraftedPluginManifestEntry.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DCD7366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  sub_1DCC72794(v5);

  sub_1DD0DCF8C();
}

void HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v26 - v19;
  v21 = swift_allocObject();
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v22 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v20, v23, v24, v22);
  OUTLINED_FUNCTION_41_4();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_1DD0F1B18;
  v25[5] = v21;
  v25[6] = a4;
  v25[7] = a5;
  sub_1DD0DCF8C();
}

void HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v19 - v13;
  v15 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v14, v16, v17, v15);
  OUTLINED_FUNCTION_41_4();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1DD0F1B30;
  v18[5] = a1;
  v18[6] = a4;
  v18[7] = a5;
  sub_1DD0DCF8C();
}

void sub_1DCD73DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  v18 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v17, v19, v20, v18);
  OUTLINED_FUNCTION_41_4();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a9;
  v21[5] = 0;
  v21[6] = a4;
  v21[7] = a5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD73EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDB478();
}

void sub_1DCD73F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - v9;
  v11 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v10, v12, v13, v11);
  OUTLINED_FUNCTION_41_4();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DD0F2598;
  v14[5] = 0;
  v14[6] = a1;
  v14[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD74044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEABBD8();
}

uint64_t sub_1DCD740DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAAE74();
}

uint64_t sub_1DCD74194()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEABCC0();
}

uint64_t sub_1DCD74234()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAC3B0();
}

void HandleIntentFlowStrategyAsync.authenticationPolicy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCD742EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DCD74408(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1);
}

uint64_t sub_1DCD744B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1);
}

uint64_t sub_1DCD74560()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput();
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = v2[7];
  v5 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v4, v6, v7, v5);
  v8 = v2[9];
  v9 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v8, v10, v11, v9);
  v12 = v2[8];
  v13 = *MEMORY[0x1E69D0678];
  v14 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_112(v14);
  (*(v15 + 104))(boxed_opaque_existential_1Tm + v12, v13);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v2[10]) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_152();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1DCD746BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEABBD8();
}

uint64_t sub_1DCD747D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_40(v5);

  return sub_1DCEAAE74();
}

uint64_t sub_1DCD74918()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_40(v3);

  return sub_1DCEABCC0();
}

uint64_t sub_1DCD74A44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)();
}

uint64_t HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAC3B0();
}

uint64_t sub_1DCD74B60()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1DCD74BA0();
  return v3;
}

uint64_t sub_1DCD74BA0()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_112(*(v3 + 80));
  (*(v4 + 32))(v0 + v5);
  return v0;
}

uint64_t sub_1DCD74C08()
{
  v1 = *(*(*v0 + 88) + 24);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t sub_1DCD74CA0()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD74D6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 32))(a3, v18, v19, sub_1DCD7B27C, v16, v7[10]);
}

uint64_t sub_1DCD74F24(uint64_t a1, uint64_t a2)
{
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  *(v3 + 200) = *a2;
  *(v3 + 216) = *(a2 + 16);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD74F48()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  *(v0 + 224) = v1;
  v2 = *(v0 + 208);
  *(v1 + 16) = *(v0 + 192);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  v4[1] = sub_1DCD7502C;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCD7502C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCD7512C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 184);
  sub_1DCB17C3C(v0 + 16, v0 + 72, &qword_1ECCA5500, &qword_1DD0F20A0);
  v2 = *(v0 + 120);

  v3 = *(v0 + 48);
  *(v0 + 144) = *(v0 + 32);
  *(v0 + 160) = v3;
  *(v0 + 128) = *(v0 + 16);
  v4 = *(v0 + 64);
  *(v0 + 176) = v4;
  v5 = *(v0 + 168);
  v1[8] = 0;
  v1[9] = 0;
  sub_1DCAFF9E8((v0 + 72), v1);
  v1[5] = v5;
  v1[6] = v4;
  v1[7] = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1DCD751E8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 224);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 240);

  return v2();
}

uint64_t sub_1DCD75244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 40))(a3, v18, v19, sub_1DCD7ACA8, v16, v7[10]);
}

uint64_t sub_1DCD753FC(uint64_t a1)
{
  sub_1DCB17C3C(a1, &v2, &qword_1ECCA2288, &unk_1DD0E4840);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCD754CC()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD75598(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 48))(a3, v18, v19, sub_1DCD7B27C, v16, v7[10]);
}

uint64_t sub_1DCD75750(uint64_t a1)
{
  sub_1DCB17C3C(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCD75814()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD758E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 56))(a3, v18, v19, sub_1DCD7B27C, v16, v7[10]);
}

uint64_t sub_1DCD75ABC()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD75B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 64))(a3, v18, v19, sub_1DCD7B27C, v16, v7[10]);
}

uint64_t sub_1DCD75D64()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD75E30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 72))(a3, v18, v19, sub_1DCD7B27C, v16, v7[10]);
}

uint64_t sub_1DCD7600C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_46_0(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD760D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 80))(a3, v18, v19, sub_1DCD7AC68, v16, v7[10]);
}

uint64_t sub_1DCD76290(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD762A8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  v5[1] = sub_1DCD76388;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DDE0](v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCD76388()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCD7648C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F8, &qword_1DD0F2098);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(*(v6[11] + 8) + 40))(a3, v18, sub_1DCD7ABF0, v15, v6[10]);
}

uint64_t sub_1DCD76698()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_112(*(v3 + 80));
  (*(v4 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_1DCD76738(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCD74C7C(a1, a2);
}

uint64_t sub_1DCD767E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCD74F24(a1, a2);
}

uint64_t sub_1DCD76890(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCD754A8(a1, a2);
}

uint64_t sub_1DCD7693C(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCD757F0(a1, a2);
}

uint64_t sub_1DCD769E8(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCD75A98(a1, a2);
}

uint64_t sub_1DCD76A94(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCD75D40(a1, a2);
}

uint64_t sub_1DCD76B40(unint64_t a1, __n128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCD75FE8(a1, a2);
}

uint64_t sub_1DCD76BEC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCBCF434;

  return sub_1DCD76290(a1, a2);
}

uint64_t NoOutputHandleIntentFlowStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v6[3] = type metadata accessor for EmptyOutput();
  v6[4] = &protocol witness table for EmptyOutput;
  v6[0] = swift_allocObject();
  v7 = 0;
  a4(v6);
  return sub_1DCB185D0(v6, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCD76D2C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for EmptyOutput();
  v3 = swift_allocObject();
  v1[3] = v2;
  v1[4] = &protocol witness table for EmptyOutput;
  *v1 = v3;
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCD76DA8()
{
  OUTLINED_FUNCTION_52_14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1DCD76E1C();
  return v3;
}

uint64_t sub_1DCD76E1C()
{
  OUTLINED_FUNCTION_52_14();
  v8 = *(v7 + 16);
  v9 = *(*v1 + 96);
  OUTLINED_FUNCTION_112(*(*v1 + 80));
  (*(v10 + 32))(v1 + v11);
  OUTLINED_FUNCTION_66();
  *(v1 + *(v12 + 104)) = v6;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v5, v1 + *(v13 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, v1 + *(v14 + 120));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v15 + 128));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v2, v1 + *(v16 + 136));
  OUTLINED_FUNCTION_66();
  v18 = v1 + *(v17 + 144);
  *v18 = *v0;
  *(v18 + 16) = v8;
  *(v18 + 24) = 0;
  return v1;
}

void sub_1DCD76F5C()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCD76FE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCD770D0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB799DC(v0[12], v0[13], v0[14], 0);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD77130(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = sub_1DD0DD85C();
  *(v3 + 32) = v5;
  v6 = *(v5 - 8);
  *(v3 + 40) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *a2;
  *(v3 + 72) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCD77204, 0, 0);
}

uint64_t sub_1DCD77204()
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "HandleIntentFlow presenting optional PreHandle views...");
    OUTLINED_FUNCTION_62();
  }

  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5();
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = sub_1DD0DD88C();
  v26 = *(v0 + 56);
  OUTLINED_FUNCTION_92(v10, qword_1EDE57DD0);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v26;
  *(v11 + 40) = v7;
  sub_1DD0DD84C();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v12;
  *v12 = v13;
  v12[1] = sub_1DCD773A4;
  v14 = *(v0 + 48);
  v15 = *(v0 + 16);
  OUTLINED_FUNCTION_68_10();
  OUTLINED_FUNCTION_47();

  return v23(v16, v17, v18, v19, v20, v21, v22, v23, sub_1DCB62EFC, *(&v26 + 1));
}

void sub_1DCD773A4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[10];
    (*(v3[5] + 8))(v3[6], v3[4]);

    v10 = *(v7 + 8);

    v10();
  }
}

void sub_1DCD774E8()
{
  v28 = v0;
  v1 = v0[31];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    OUTLINED_FUNCTION_151();
    v7 = OUTLINED_FUNCTION_52_0();
    v26[0] = v7;
    *v1 = 136315138;
    swift_getErrorValue();
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[7];
    v11 = sub_1DD0DF18C();
    v13 = sub_1DCB10E9C(v11, v12, v26);

    *(v1 + 1) = v13;
    OUTLINED_FUNCTION_72_6(&dword_1DCAFC000, v4, v5, "HandleIntentProcessing resulted in a failure: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  v14 = v0[31];
  v15 = v0[28];
  v16 = v0[21];
  v17 = v0[18];
  OUTLINED_FUNCTION_30_21(v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1], v26[2], v27);
  sub_1DCB79974(v26);
}

uint64_t sub_1DCD77648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD77670, 0, 0);
}

uint64_t sub_1DCD77670()
{
  OUTLINED_FUNCTION_41();
  v14 = *(v0 + 64);
  v1 = (v14 + *(*v14 + 136));
  v3 = v1[3];
  v2 = v1[4];
  v13 = *(v0 + 80);
  v4 = OUTLINED_FUNCTION_51_12(v1);
  *(v0 + 96) = v4;
  *(v4 + 16) = v14;
  *(v4 + 32) = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 104) = v5;
  *v5 = v6;
  v5[1] = sub_1DCD77764;
  OUTLINED_FUNCTION_12_10();

  return sub_1DCB63BBC(v7, v8, v9, v10, v11);
}

uint64_t sub_1DCD77764()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[14] = v0;

  if (!v0)
  {
    v9 = v3[12];
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCD77870()
{
  v14 = v1;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "HandleIntentFlow finished with PreHandle processing.", v0, 2u);
    OUTLINED_FUNCTION_62();
  }

  v6 = v1[9];
  v7 = v1[10];
  v9 = v1[7];
  v8 = v1[8];

  v10 = v6;
  v11 = v7;
  v12 = 0;
  v13 = 2;
  sub_1DD0DCF8C();
}

void sub_1DCD77994()
{
  OUTLINED_FUNCTION_41();
  v8 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[7];
  v3 = v0[8];

  v6[1] = 0;
  v6[2] = 0;
  v6[0] = v1;
  v7 = 4;
  v5 = v1;
  sub_1DCB79974(v6);
}

uint64_t sub_1DCD77A2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *(*a2 + 96);
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v9 = *(v7 + 88);
  v10 = *(v9 + 48);
  v11 = *(v7 + 80);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_1DCB63F5C;

  return (v15)(a1, v5 + 2, v11, v9);
}

uint64_t sub_1DCD77BB0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v11 + 160) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCD77D04()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[16];
  v2 = v0[13];

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCD77D70()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[20];
  v2 = v0[18];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_151();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_72_6(&dword_1DCAFC000, v4, v5, "Error when submitting engagement for suggestions: %@");
    sub_1DCB185D0(v9, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v12 = v0[16];
  v13 = v0[13];

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_1DCD77F1C(void *a1, char a2)
{
  v3 = *v2;
  v4 = v2 + *(*v2 + 144);
  if (*(v4 + 24) != 5 || *(v4 + 8) | *(v4 + 16) | *v4)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = a1;
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1DD0DF18C();
      v15 = sub_1DCB10E9C(v13, v14, &v25);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "Handoff flow did not exit successfully: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A8390](v12, -1, -1);
      MEMORY[0x1E12A8390](v11, -1, -1);
    }

    v26 = 0uLL;
    v25 = a1;
    v27 = 4;
    v16 = a1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Handoff flow completed successfully. Moving to handled error state.", v20, 2u);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    v21 = *(v3 + 80);
    v22 = *(v3 + 88);
    type metadata accessor for SiriKitHandleIntentFlow.HandleIntentFlowError();
    swift_getWitnessTable();
    v23 = swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = 0;
    *(v24 + 24) = -64;
    v25 = v23;
    v26 = vdupq_n_s64(1uLL);
    v27 = 3;
  }

  sub_1DCB79974(&v25);
}

void sub_1DCD7844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v26 - v12;
  v14 = v11[1];
  v30 = *v11;
  v31 = v14;
  v32 = v11[2];
  v15 = *(v7 + 16);
  v27 = v3;
  v28 = v15;
  v15(&v26 - v12, v3, a2);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = v16 + v8;
  v18 = swift_allocObject();
  v33 = v18;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = *(v7 + 32);
  v19(v18 + v16, v13, a2);
  v20 = v29;
  v28(v29, v4, a2);
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = a2;
  *(v21 + 24) = v22;
  v19(v21 + v16, v20, a2);
  v23 = (v21 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  v23[2] = v32;
  DynamicType = swift_getDynamicType();
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  swift_allocObject();
  sub_1DD01C898(sub_1DCD7A938, v33, sub_1DCD799A4, 0, &unk_1DD0F2020, v21, DynamicType);
  sub_1DD0DCF8C();
}

void sub_1DCD7871C(void *a1, char a2)
{
  v3 = v2 + *(*v2 + 144);
  if (*(v3 + 24) == 1)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (a2)
    {
      v10 = 0;
      v11 = 0;
      v9 = a1;
      v12 = 4;
      sub_1DCB61AE4(v4, v5, v6, 1);
      sub_1DCB8D4CC(a1, 1);
      sub_1DCB79974(&v9);
    }

    v9 = *v3;
    v10 = v5;
    v11 = 0;
    v12 = 2;
    sub_1DCB61AE4(v4, v5, v6, 1);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD78A4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 272) = v5;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCD78B38()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[34];
  v2 = v0[28];
  v3 = v0[18];
  static ExecuteResponse.complete(next:)();
}

uint64_t sub_1DCD78BD4()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = *(v2 + 288);
  *v4 = *v1;
  *(v3 + 296) = v0;

  v6 = *(v2 + 280);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD78D0C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  *(v0 + 346) = 7;
  v3 = v1;
  v4 = [v2 _code];
  *(v0 + 347) = 76;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 304) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_59_11(v5);

  return sub_1DCB64FD8(v0 + 56, (v0 + 346), v7, v8, v4, (v0 + 347));
}

uint64_t sub_1DCD78DD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 304);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCD78F3C()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = *(v2 + 320);
  *v4 = *v1;
  *(v3 + 328) = v0;

  v6 = *(v2 + 312);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD79074()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  *(v0 + 344) = 6;
  v3 = v1;
  v4 = [v2 _code];
  *(v0 + 345) = 15;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 336) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_59_11(v5);

  return sub_1DCB64FD8(v0 + 16, (v0 + 344), v7, v8, v4, (v0 + 345));
}

uint64_t sub_1DCD79138()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 336);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCD792A4()
{
  OUTLINED_FUNCTION_33();
  v13 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_30_21(v3, v4, v5, v6, v7, v8, v9, v10, v11[0], v11[1], v11[2], v12);
  sub_1DCB79974(v11);
}

void sub_1DCD79340()
{
  OUTLINED_FUNCTION_33();
  v13 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_30_21(v3, v4, v5, v6, v7, v8, v9, v10, v11[0], v11[1], v11[2], v12);
  sub_1DCB79974(v11);
}

void sub_1DCD793DC()
{
  OUTLINED_FUNCTION_33();
  v13 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_30_21(v3, v4, v5, v6, v7, v8, v9, v10, v11[0], v11[1], v11[2], v12);
  sub_1DCB79974(v11);
}

uint64_t sub_1DCD79478(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *(*a2 + 96);
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v9 = *(v7 + 88);
  v10 = *(v9 + 72);
  v11 = *(v7 + 80);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_1DCB63F5C;

  return (v15)(a1, v5 + 2, v11, v9);
}

uint64_t sub_1DCD795FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *(*a2 + 96);
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v9 = *(v7 + 88);
  v10 = *(v9 + 80);
  v11 = *(v7 + 80);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_1DCB63F5C;

  return (v15)(a1, v5 + 2, v11, v9);
}

unint64_t sub_1DCD79780(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  switch(*(v1 + 24) >> 6)
  {
    case 1:
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000023, 0x80000001DD11BF60);
      sub_1DD0DEDBC();
      goto LABEL_6;
    case 2:
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD11BF30);
      type metadata accessor for INIntentResponseCode(0);
      sub_1DD0DEDBC();
      result = 0;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000012, 0x80000001DD11BF90);
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      type metadata accessor for SiriKitHandleIntentFlow.State();
      swift_getWitnessTable();
      sub_1DD0DF08C();
LABEL_6:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1DCD799B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v11 = *(a7 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[5] = v13;
  *v13 = v7;
  v13[1] = sub_1DCCA96C8;

  return (v15)(a1, v7 + 2, a6, a7);
}

void sub_1DCD79AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 80);
  v9 = *(a6 + 88);
  v10 = type metadata accessor for RCHDelegateToHandleIntentFlowStrategy();
  HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(v10, v11, v12, a4, a5, v13, v14);
}

uint64_t sub_1DCD79B2C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_13_17(v7);

  return sub_1DCD740DC();
}

uint64_t sub_1DCD79BE0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCD79C70()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCD74194();
}

uint64_t sub_1DCD79CF8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCB79C24(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_1DCB74F28(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCD79D50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_1DCB74F28(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParseCodingErrors(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 32);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 48);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 56);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 64);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 72);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t dispatch thunk of HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_56_0(v10, v11, v12, v13) + 80);
  OUTLINED_FUNCTION_8();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_1(v19);
  OUTLINED_FUNCTION_47();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1DCD7A558(uint64_t a1)
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

uint64_t sub_1DCD7A6B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 25))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCD7A6F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCD7A73C(uint64_t a1)
{
  if (*(a1 + 24) <= 4u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DCD7A754(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DCD7A770(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCD7A7AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCD7A800()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD77648(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCD7A890()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD77A2C(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCD7A938()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 24))();
}

uint64_t sub_1DCD7A9A0()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = (v0 + ((*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCD799B0(v2, v0 + v5, v7, v8, v9, v3, v4);
}

uint64_t sub_1DCD7AAC4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD795FC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCD7AB54()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCD79478(v3, v4, v5, v6, v7);
}

void sub_1DCD7ABF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F8, &qword_1DD0F2098);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_79_1();

  sub_1DCD76648();
}

uint64_t sub_1DCD7ACA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();

  return sub_1DCD753FC(v3);
}

uint64_t objectdestroy_132Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_112(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCD7ADA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();
  return sub_1DCD75750(v3);
}

uint64_t sub_1DCD7AE00()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_121();

  return sub_1DCC1044C();
}

id sub_1DCD7AE90(id result, void *a2, char a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
    sub_1DD0DCF8C();
  }

  if (!(a4 >> 6))
  {

    return sub_1DCB61AE4(result, a2, a3, a4);
  }

  return result;
}

void sub_1DCD7AF34(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
  }

  else if (!(a4 >> 6))
  {

    sub_1DCB799DC(a1, a2, a3, a4);
  }
}

uint64_t sub_1DCD7AFCC(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  a4(*a2, v6, v7, v8);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return a1;
}

uint64_t *sub_1DCD7B060(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  a4(*a2, v8, v9, v10);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  v14 = *(a1 + 24);
  *(a1 + 24) = v10;
  a5(v11, v12, v13, v14);
  return a1;
}

uint64_t *sub_1DCD7B0F8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *a1;
  v10 = a1[1];
  v9 = a1[2];
  *a1 = *a2;
  a1[2] = v6;
  v11 = *(a1 + 24);
  *(a1 + 24) = v7;
  a4(v8, v10, v9, v11);
  return a1;
}

uint64_t sub_1DCD7B150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1D && *(a1 + 25))
    {
      v2 = *a1 + 28;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 1) & 0x1C | (*(a1 + 24) >> 6)) ^ 0x1F;
      if (v2 >= 0x1C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCD7B19C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 29;
    if (a3 >= 0x1D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCD7B1F8(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DCD7B224(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 24) & 7 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    v2 = -64;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t HandleIntentFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *sub_1DCD7B2E8()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_1DCD7B310(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return MEMORY[0x1EEE66BB8]();
}

void *sub_1DCD7B31C()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_1DCD7B348(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void HandleIntentFlowFrame.__allocating_init(delegate:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_5();
  swift_allocObject();
  HandleIntentFlowFrame.init(delegate:app:intent:)(a1, a2, a3);
}

void HandleIntentFlowFrame.init(delegate:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0xD000000000000012;
  v3[3] = 0x80000001DD11BFB0;
  v3[7] = 0;
  v3[8] = 0;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  swift_unknownObjectRetain();
  sub_1DD0DCF8C();
}

uint64_t HandleIntentFlowFrame.__allocating_init(delegate:app:intent:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  OUTLINED_FUNCTION_5_5();
  v8 = swift_allocObject();
  HandleIntentFlowFrame.init(delegate:app:intent:deviceState:)(a1, a2, a3, a4);
  return v8;
}

void *HandleIntentFlowFrame.init(delegate:app:intent:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = 0xD000000000000012;
  v4[3] = 0x80000001DD11BFB0;
  v4[7] = 0;
  v4[8] = 0;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  sub_1DCB18FF0(a4, (v4 + 9));
  return v4;
}

uint64_t sub_1DCD7B560(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  v11 = *MEMORY[0x1E699F738];
  v12 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v12);
  (*(v13 + 104))(v10, v11);
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_1DCB0E9D8(v10, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

void sub_1DCD7B6B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v42 = a3;
  v40 = a1;
  v5 = *v3;
  v6 = sub_1DD0DD85C();
  v7 = OUTLINED_FUNCTION_9(v6);
  v43 = v8;
  v44 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  v14 = qword_1EDE57E18;
  sub_1DD0DD82C();
  sub_1DD0DE7FC();
  sub_1DD0DD81C();
  v15 = v3[5];
  v32 = v3[4];
  v16 = sub_1DCD7B2E0();
  v39 = v13;
  v17 = *(v5 + 88);
  v29 = *(v5 + 80);
  (*(v17 + 104))(&v45, v15, v16);

  v18 = v45;
  v19 = v47;
  v36 = v47;
  v37 = v45;
  v30 = v48;
  v31 = v46;
  v21 = v49;
  v20 = v50;
  v34 = v50;
  v35 = v49;
  sub_1DD0DE7EC();
  sub_1DD0DD81C();
  v22 = v40[4];
  v38 = v40[3];
  v40 = __swift_project_boxed_opaque_existential_1(v40, v38);
  v33 = sub_1DCD7B2E0();
  v23 = sub_1DCD7B2E0();
  LODWORD(v32) = (*(v17 + 296))(v23, v29, v17);

  v45 = v18;
  v46 = v31;
  v47 = v19;
  v48 = v30;
  v49 = v21;
  v50 = v20;
  OUTLINED_FUNCTION_92_2();
  v24 = swift_allocObject();
  v25 = v41;
  v26 = v42;
  v24[2] = v4;
  v24[3] = v25;
  v24[4] = v26;
  v27 = *(v22 + 64);
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void sub_1DCD7B9D0(uint64_t a1, uint64_t *a2, void (*a3)(void **))
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *a2;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDE57E18;
  v10 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v9, v10))
  {
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DD0E07C0;
    v34 = 0;
    v35 = 0xE000000000000000;
    v30 = v5;
    v31 = v4;
    v32 = v6;
    v33 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5690, &qword_1DD0F22F8);
    sub_1DD0DEDBC();
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1DCB34060();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_1DD0DD7EC();

    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_1DD0DE6EC();
    sub_1DD0DD7EC();
    type metadata accessor for CommandFailure();
    sub_1DCC7AE30();
    swift_allocError();
    *v26 = v5;
    sub_1DD0DCF8C();
  }

  sub_1DD0DE6CC();
  sub_1DD0DD7EC();
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v13 = *(v8 + 80);
  v12 = *(v8 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = v6;
  v16 = v5;
  v17 = sub_1DCB3BACC(AssociatedTypeWitness, AssociatedTypeWitness);
  if (!v17)
  {
LABEL_11:

    type metadata accessor for CommandFailure();
    swift_allocObject();
    v27 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000002ALL, 0x80000001DD11C480);
    sub_1DCC7AE30();
    v28 = swift_allocError();
    *v29 = v27;
    v30 = v28;
    v31 = 0;
    LOBYTE(v32) = 1;
    a3(&v30);
    goto LABEL_12;
  }

  v18 = v17;
  v19 = swift_getAssociatedTypeWitness();
  v20 = sub_1DCB3BB68(v19, v19);
  if (!v20)
  {

    v16 = v15;
    v15 = v18;
    goto LABEL_11;
  }

  v21 = v20;
  v22 = v20;
  v23 = v18;
  sub_1DCD7B310(v21);
  v30 = v18;
  v31 = v21;
  LOBYTE(v32) = 0;
  v24 = v23;
  v25 = v22;
  a3(&v30);

LABEL_12:
  sub_1DCB74F28(v30, v31, v32);
}

uint64_t sub_1DCD7BDD0(uint64_t a1, uint64_t *a2, void (*a3)(char *), void (*a4)(char *))
{
  v5 = v4;
  v52 = a4;
  v50 = a3;
  v48 = a1;
  v7 = *v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v8 = OUTLINED_FUNCTION_2(v44);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v43 - v12;
  v51 = sub_1DD0DD85C();
  v14 = OUTLINED_FUNCTION_9(v51);
  v49 = v15;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v45 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v43 - v21;
  v23 = *a2;
  v46 = a2[1];
  v47 = v23;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  v24 = qword_1EDE57E18;
  sub_1DD0DD82C();
  v25 = v5[4];
  v26 = sub_1DCD7B2E0();
  v27 = sub_1DCD7B2E8();
  v53 = v22;
  v30 = v7 + 80;
  v28 = *(v7 + 80);
  v29 = *(v30 + 8);
  v31 = *(v29 + 288);
  v43[1] = v25;
  v32 = v31(v26, v27, v5 + 9, v28, v29);

  if ((v32 & 1) == 0)
  {
    sub_1DD0DE7FC();
    v33 = v53;
    sub_1DD0DD81C();
    v44 = v5[5];
    v34 = v49;
    v35 = v45;
    v36 = v51;
    (*(v49 + 16))(v45, v33, v51);
    v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v38 = (v17 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v28;
    *(v39 + 24) = v29;
    (*(v34 + 32))(v39 + v37, v35, v36);
    *(v39 + v38) = v5;
    v40 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
    v41 = v52;
    *v40 = v50;
    v40[1] = v41;
    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitFlowFrameInput();
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  v50(v13);
  sub_1DCB0E9D8(v13, &qword_1ECCA9BF0, &qword_1DD0EA250);
  return (*(v49 + 8))(v53, v51);
}

uint64_t sub_1DCD7C150(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v18 - v9;
  sub_1DD0DE7EC();
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DD81C();
  if (a1)
  {
    swift_getErrorValue();
    v18[3] = v6;
    v11 = a1;
    v12 = sub_1DD0DF18C();
    v14 = v13;
    type metadata accessor for CommandFailure();
    swift_allocObject();
    v15 = CommandFailure.init(errorCode:reason:)(-1, v12, v14);
    sub_1DCC7AE30();
    swift_allocError();
    *v16 = v15;
    sub_1DD0DCF8C();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  type metadata accessor for SiriKitFlowFrameInput();
  sub_1DD0DB32C();
  swift_storeEnumTagMultiPayload();
  a4(v10);
  return sub_1DCB0E9D8(v10, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCD7C48C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DCD7B31C();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v5 = sub_1DCD7B2E8();
    if (v5)
    {
      v3 = v5;
      result = sub_1DCD7B2E0();
      v4 = 0;
      goto LABEL_6;
    }

    type metadata accessor for CommandFailure();
    swift_allocObject();
    v6 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000034, 0x80000001DD11C020);
    sub_1DCC7AE30();
    result = swift_allocError();
    v3 = 0;
    *v7 = v6;
  }

  v4 = 1;
LABEL_6:
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

void sub_1DCD7C544(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v75 = a6;
  v76 = a7;
  v73 = a2;
  v74 = a5;
  v72 = a1;
  v77 = v8;
  v11 = *v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v69 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v68 = &v67 - v18;
  v19 = [a4 _intentResponseCode];
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_9_37(v20, xmmword_1DD0E4010);
  type metadata accessor for INIntentResponseCode(0);
  v67 = v21;
  sub_1DD0DEDBC();
  v22 = v78;
  v23 = v79;
  v20[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v71 = sub_1DCB34060();
  v20[4].n128_u64[0] = v71;
  v20[2].n128_u64[0] = v22;
  v20[2].n128_u64[1] = v23;
  v26 = v11 + 80;
  v25 = *(v11 + 80);
  v24 = *(v26 + 8);
  v20[6].n128_u64[0] = OUTLINED_FUNCTION_12_35();
  v20[6].n128_u64[1] = swift_getWitnessTable();
  v20[4].n128_u64[1] = a3;
  v20[8].n128_u64[1] = OUTLINED_FUNCTION_12_35();
  v20[9].n128_u64[0] = swift_getWitnessTable();
  v20[7].n128_u64[0] = a4;
  v27 = a3;
  v28 = a4;
  OUTLINED_FUNCTION_6_1();
  sub_1DD0DD7EC();

  if ([v28 _requiresAuthentication])
  {
    sub_1DCCFA914();
    v29 = sub_1DD0DE93C();
    sub_1DD0DE70C();
    sub_1DD0DD7EC();

    sub_1DCD7CC64(v72, v73, v27, v30, v74, v75, v76);
  }

  switch(v19)
  {
    case 0uLL:
    case 1uLL:
    case 5uLL:
    case 7uLL:
    case 8uLL:
      v31 = OUTLINED_FUNCTION_1_60();
      sub_1DCD7D078(v31, v32, v33, v34, v35, v36, v37);
    case 2uLL:
    case 6uLL:
      sub_1DD0DE6DC();
      v38 = OUTLINED_FUNCTION_11_38();
      *(v38 + 16) = xmmword_1DD0E07C0;
      v39 = 0x80000001DD11BCF0;
      v40 = 0xD000000000000019;
      if (v19 == 2)
      {
        v40 = 0x65756E69746E6F63;
      }

      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = v71;
      if (v19 == 2)
      {
        v39 = 0xED00007070416E49;
      }

      *(v38 + 32) = v40;
      *(v38 + 40) = v39;
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC();

      v41 = OUTLINED_FUNCTION_1_60();
      sub_1DCD7CE68(v41, v42, v43, v44, v45, v46, v47);
    case 3uLL:
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC();
      v48 = OUTLINED_FUNCTION_1_60();
      sub_1DCD7CF90(v48);
    case 4uLL:
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC();
      v49 = OUTLINED_FUNCTION_1_60();
      sub_1DCD7CD80(v49);
    default:
      sub_1DD0DE6EC();
      v50 = OUTLINED_FUNCTION_11_38();
      OUTLINED_FUNCTION_9_37(v50, xmmword_1DD0E07C0);
      sub_1DD0DEDBC();
      v51 = v78;
      v52 = v79;
      v53 = v71;
      v50[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v50[4].n128_u64[0] = v53;
      v50[2].n128_u64[0] = v51;
      v50[2].n128_u64[1] = v52;
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC();

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v54 = sub_1DD0DD8FC();
      v55 = __swift_project_value_buffer(v54, qword_1EDE57E00);
      v56 = *(v54 - 8);
      v57 = v68;
      (*(v56 + 16))(v68, v55, v54);
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v54);
      v58 = v57;
      v59 = v69;
      sub_1DCBCF6C8(v58, v69);
      if (__swift_getEnumTagSinglePayload(v59, 1, v54) == 1)
      {
        sub_1DCB0E9D8(v69, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v60 = sub_1DD0DD8EC();
        v61 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v78 = v63;
          *v62 = 136315650;
          v64 = sub_1DD0DEC3C();
          v66 = sub_1DCB10E9C(v64, v65, &v78);

          *(v62 + 4) = v66;
          *(v62 + 12) = 2048;
          *(v62 + 14) = 177;
          *(v62 + 22) = 2080;
          *(v62 + 24) = sub_1DCB10E9C(0xD000000000000020, 0x80000001DD11C1F0, &v78);
          _os_log_impl(&dword_1DCAFC000, v60, v61, "FatalError at %s:%lu - %s", v62, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v63, -1, -1);
          MEMORY[0x1E12A8390](v62, -1, -1);
        }

        (*(v56 + 8))(v69, v54);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000020, 0x80000001DD11C1F0);
  }
}

void sub_1DCD7CC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = a6;
  v12[4] = a7;
  v13 = *(*(v11 + 8) + 16);
  v14 = *(v10 + 80);
  v15 = *(v10 + 88);
  sub_1DD0DCF8C();
}

void sub_1DCD7CD80(void *a1)
{
  v3 = *v1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_10_38(v5);
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_7_38();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_7_38();
  v10 = *(v9 + 88);
  sub_1DD0DCF8C();
}

void sub_1DCD7CE68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = *v7;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = a6;
  v13[4] = a7;
  v14 = *(*(v12 + 8) + 8);
  v15 = *(v11 + 80);
  v16 = *(v11 + 88);
  sub_1DD0DCF8C();
}

void sub_1DCD7CF90(void *a1)
{
  v3 = *v1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_10_38(v5);
  v6 = *(v2 + 32);
  OUTLINED_FUNCTION_7_38();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_7_38();
  v10 = *(v9 + 88);
  sub_1DD0DCF8C();
}

void sub_1DCD7D078(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v22 = *v7;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E07C0;
  [a4 _code];
  v14 = sub_1DD0DF03C();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DCB34060();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1DD0DD7EC();

  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_92_2();
  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = a6;
  v18[4] = a7;
  v19 = *(*(v17 + 8) + 24);
  v20 = *(v22 + 80);
  v21 = *(v22 + 88);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD7D278(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DD0E07C0;
    swift_getErrorValue();
    v6 = sub_1DD0DF18C();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1DCB34060();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_1DD0DD7EC();

    v9 = a1;
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    v9 = 0;
  }

  return a3(v9);
}

uint64_t HandleIntentFlowFrame.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  return v0;
}

uint64_t HandleIntentFlowFrame.__deallocating_deinit()
{
  HandleIntentFlowFrame.deinit();
  OUTLINED_FUNCTION_5_5();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD7D530(void *a1)
{
  v3 = *(sub_1DD0DD85C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1DCD7C150(a1, v1 + v4, v6, v8);
}

uint64_t sub_1DCD7D5DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCD7D618(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t sub_1DCD7D654(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t sub_1DCD7D6AC(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

void sub_1DCD7D8DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v26 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15, v19);
  (*(a8 + 176))(a7, a8);
  OUTLINED_FUNCTION_126();
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v21 = v24;
  v22 = v25;
  v20[4] = a4;
  v20[5] = v21;
  v20[6] = a6;
  v20[7] = a1;
  v20[8] = a2;
  v20[9] = v22;
  v20[10] = v27;
  v24 = *(swift_getAssociatedConformanceWitness() + 168);
  v23 = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD7DACC(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  memcpy(__dst, a1, 0x49uLL);
  v18 = __dst[0];
  if ((__dst[9] & 1) == 0)
  {
    v26 = a3;
    v20 = __dst[1];
    if (__dst[1])
    {
      if (a2)
      {
        v24 = *(a10 + 152);
        sub_1DCD7E9E4(__dst, v31);
        v25 = a2;
        v24(a9, a10);
        v21 = swift_allocObject();
        *(v21 + 16) = a9;
        *(v21 + 24) = a10;
        *(v21 + 32) = v18;
        *(v21 + 40) = v20;
        v22 = *(a1 + 32);
        *(v21 + 48) = *(a1 + 16);
        *(v21 + 64) = v22;
        *(v21 + 80) = *(a1 + 48);
        *(v21 + 96) = *(a1 + 64);
        *(v21 + 104) = a8;
        *(v21 + 112) = a5;
        *(v21 + 120) = a7;
        *(v21 + 128) = a2;
        *(v21 + 136) = a6;
        *(v21 + 144) = v26;
        *(v21 + 152) = a4;
        v27 = *(swift_getAssociatedConformanceWitness() + 120);
        v23 = v25;
        sub_1DD0DCF8C();
      }

      if (qword_1EDE4F908 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_1EDE4F908 == -1)
    {
      goto LABEL_11;
    }

    swift_once();
LABEL_11:
    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    return v26(0, 0);
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  sub_1DD0DD7EC();
  return a3(v18, 1);
}

uint64_t sub_1DCD7DF0C(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, void), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a8;
  v43 = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = v34 - v21;
  v23 = type metadata accessor for AceOutput();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    sub_1DD0DD7EC();
    v26 = a1;
    v27 = 1;
  }

  else
  {
    if (sub_1DCB08B14(a1) || *(a3[4] + 16) || *(a3[5] + 16))
    {
      v40 = a9;
      v41 = a10;
      memcpy(__dst, a3, sizeof(__dst));
      sub_1DCB17CA0(a4 + 64, v45);
      v36 = *(*(a4 + 16) + 16);
      v34[1] = a3[7] - 3;
      v35 = (*(a12 + 320))(a6, a11, a12);
      v29 = type metadata accessor for NLContextUpdate();
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v29);
      LOBYTE(v44[0]) = 33;
      v30 = *(a12 + 304);
      v38 = a6;
      v39 = a7;
      v37 = a11;
      v31 = v30(v44, a6, a7, a11, a12);
      v32 = v31;
      if (v31)
      {
        v33 = type metadata accessor for DefaultFlowActivity();
        v31 = sub_1DCCAE20C();
      }

      else
      {
        v33 = 0;
        v44[1] = 0;
        v44[2] = 0;
      }

      v44[0] = v32;
      v44[3] = v33;
      v44[4] = v31;
      static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    }

    v26 = 0;
    v27 = 0;
  }

  return a9(v26, v27);
}

uint64_t sub_1DCD7E360(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a2 & 1) == 0)
  {
    sub_1DCB17CA0(a3 + 104, v22);
    v21 = 33;
    v20 = 29;
    v18 = 3;
    v19 = 0;
    sub_1DCFA6D00(v22, &v21, a4, a5, a6, &v20, 0, 1, a7, &v18, *a8, a8[1], a11, a12);
  }

  return a9(a1, 1);
}

void sub_1DCD7E47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v23 = a5;
  v24 = a6;
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v25 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16, v20);
  (*(a8 + 176))(a7, a8);
  OUTLINED_FUNCTION_126();
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v22 = v24;
  v21[4] = v23;
  v21[5] = v22;
  v21[6] = v9;
  v21[7] = a2;
  v21[8] = a1;
  v21[9] = a3;
  v21[10] = v26;
  v23 = *(swift_getAssociatedConformanceWitness() + 136);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD7E668(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  v20 = *a1;
  if ((a1[9] & 1) == 0)
  {
    v22 = a8;
    v23 = a1[1];
    v30 = 7;
    v29 = 76;
    v27 = 0;
    LOWORD(v28) = 0;
    sub_1DCFA6D00((a4 + 104), &v30, a5, a6, a7, &v29, 0, 1, v22, &v27, v20, v23, a9, a10);
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCD7E9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5698, qword_1DD0F2358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DCD7EB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1DCD7EDD4(&v12);
  result = v12;
  v5 = v14;
  v6 = v14 >> 6;
  if (v6 == 2)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = v13;
  if (v6 != 1)
  {
    sub_1DCD7FBDC(v12, v13, v14);
    v8 = *(v3 + 80);
    v9 = *(v3 + 88);
    type metadata accessor for HandleIntentThenRespondFlow.HandleIntentThenRespondFlowError();
    OUTLINED_FUNCTION_1_61();
    swift_getWitnessTable();
    result = OUTLINED_FUNCTION_10_5();
    v11 = v10;
    v7 = 0;
    *v11 = 0;
LABEL_5:
    v5 = 1;
  }

  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5 & 1;
  return result;
}

void sub_1DCD7EC04()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

id sub_1DCD7EDD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_1DCD7FB48(v2, v3, v4);
}

void sub_1DCD7EDE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  *(v1 + 40) = *a1;
  v5 = *(v1 + 56);
  *(v1 + 56) = v2;
  sub_1DCD7FBDC(v4, v3, v5);

  sub_1DCD7EC04();
}

uint64_t sub_1DCD7EE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = a3;
  *(result + 56) = -64;
  return result;
}

void sub_1DCD7EE80()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for HandleIntentThenRespondFlow();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCD7EF24(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD7EF6C, 0, 0);
}

uint64_t sub_1DCD7EF6C()
{
  v28 = v0;
  v1 = *(v0 + 80);
  sub_1DCD7EDD4(v0 + 40);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 96) = v3;
  *(v0 + 104) = v2;
  v4 = *(v0 + 56);
  if ((v4 >> 6) - 1 >= 2)
  {
    if (v4 >> 6)
    {
      if (!(v2 | v3) && v4 == 192)
      {
        v16 = *(v0 + 72);
        v17 = *(v0 + 80);
        v26 = xmmword_1DD0E5100;
        v27 = -64;
        sub_1DCD7EDE8(&v26);
      }

      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = *(v0 + 72);
      v21 = *(v18 + 80);
      v22 = *(v18 + 88);
      type metadata accessor for HandleIntentThenRespondFlow.HandleIntentThenRespondFlowError();
      OUTLINED_FUNCTION_1_61();
      swift_getWitnessTable();
      v23 = swift_allocError();
      *v24 = 1;
      v26 = v23;
      v27 = 0x80;
      sub_1DCD7EDE8(&v26);
    }

    v12 = *(v0 + 80);
    v13 = *(v12 + 32);
    v25 = (*(v12 + 24) + **(v12 + 24));
    v14 = *(*(v12 + 24) + 4);
    v15 = swift_task_alloc();
    *(v0 + 112) = v15;
    *v15 = v0;
    v15[1] = sub_1DCD7F224;

    return v25(v3, v2);
  }

  else
  {
    sub_1DCD7FBDC(v3, v2, v4);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v7))
    {
      v8 = OUTLINED_FUNCTION_50_0();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "Nothing left to do. Flow is complete and will exit.", v8, 2u);
      OUTLINED_FUNCTION_80();
    }

    v9 = *(v0 + 72);

    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCD7F224(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_1DCD7F3FC;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_1DCD7F34C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCD7F34C()
{
  v9 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v7[0] = *(v0 + 96);
  v7[1] = v2;
  v8 = 64;
  v5 = v7[0];
  v6 = v2;
  sub_1DCD7EDE8(v7);
}

void sub_1DCD7F3FC()
{
  v22 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[15];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unexpected error while attempting to create response flow: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v16 = v0[12];
  v15 = v0[13];
  v18 = v0[9];
  v17 = v0[10];
  v20[0] = v0[15];
  v20[1] = 0;
  v21 = 0x80;
  v19 = v20[0];
  sub_1DCD7EDE8(v20);
}

void sub_1DCD7F600(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_1DCD7F640(&v2);
}

void sub_1DCD7F640(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *v1;
  sub_1DCD7EDD4(&v29);
  v7 = v31 >= 0xC0u && v29 == 1 && v30 == 0;
  if (v7 && v31 == 192)
  {
    if ((v4 & 1) == 0)
    {
      v20 = qword_1EDE4F900;
      v21 = v3;
      v22 = v2;
      if (v20 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v23 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v23, qword_1EDE57E00);
      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v25))
      {
        v26 = OUTLINED_FUNCTION_50_0();
        *v26 = 0;
        _os_log_impl(&dword_1DCAFC000, v24, v25, "Received a successful result from HandleIntentFlow.", v26, 2u);
        OUTLINED_FUNCTION_80();
      }

      v29 = v3;
      v30 = v2;
      v31 = 0;
      v27 = v21;
      v28 = v22;
      sub_1DCD7EDE8(&v29);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v18))
    {
      v19 = OUTLINED_FUNCTION_50_0();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Received a non-successful result from HandleIntentFlow. Skipping response and returning result.", v19, 2u);
      OUTLINED_FUNCTION_80();
    }

    v29 = v3;
    v30 = v2;
    v31 = 65;
    sub_1DCD7B274(v3, v2, 1);
  }

  else
  {
    sub_1DCD7FBDC(v29, v30, v31);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v10))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      *v11 = 0;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "Called in an unexpected state. Moving to error state.", v11, 2u);
      OUTLINED_FUNCTION_80();
    }

    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    type metadata accessor for HandleIntentThenRespondFlow.HandleIntentThenRespondFlowError();
    OUTLINED_FUNCTION_1_61();
    swift_getWitnessTable();
    v14 = OUTLINED_FUNCTION_10_5();
    *v15 = 1;
    v29 = v14;
    v30 = 0;
    v31 = 0x80;
  }

  sub_1DCD7EDE8(&v29);
}

uint64_t sub_1DCD7F920()
{
  v1 = *(v0 + 16);
  result = 0x6F5479646165722ELL;
  switch(v1 >> 6)
  {
    case 1u:
      result = 0x74656C706D6F632ELL;
      break;
    case 2u:
      swift_getErrorValue();
      v3 = sub_1DD0DF18C();
      MEMORY[0x1E12A6780](v3);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      result = 0x28726F7272652ELL;
      break;
    case 3u:
      if (*v0 == 0 && v1 == 192)
      {
        result = 0x646574726174732ELL;
      }

      else
      {
        result = 0x676E69746961772ELL;
      }

      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1DCD7FA4C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1DCBB11B4(*a1, *a2);
}

uint64_t sub_1DCD7FA60(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DCC183C8(*v1);
}

uint64_t sub_1DCD7FA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1DCBB11C4(a1, *v2);
}

uint64_t sub_1DCD7FA80(uint64_t a1, uint64_t a2)
{
  sub_1DD0DF1DC();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1DCBB11C4(v7, *v2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD7FAC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1DCD7FBDC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t sub_1DCD7FAFC()
{
  sub_1DCD7FAC8();

  return swift_deallocClassInstance();
}

id sub_1DCD7FB48(id result, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 6)
  {
    case 1:
      v5 = a3 & 1;

      result = sub_1DCD7B274(result, a2, v5);
      break;
    case 2:

      goto LABEL_4;
    case 3:
      return result;
    default:
      v4 = result;
      result = a2;

LABEL_4:
      result = result;
      break;
  }

  return result;
}

void sub_1DCD7FBDC(void *a1, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 6)
  {
    case 1:
      v4 = a3 & 1;

      sub_1DCD7B270(a1, a2, v4);
      break;
    case 2:

      goto LABEL_4;
    case 3:
      return;
    default:

      a1 = a2;

LABEL_4:

      break;
  }
}

uint64_t sub_1DCD7FC60(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCD7FB48(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t sub_1DCD7FCAC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCD7FB48(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCD7FBDC(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCD7FD04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCD7FBDC(v4, v5, v6);
  return a1;
}

uint64_t sub_1DCD7FD4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 17))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCD7FD98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCD7FDEC(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DCD7FE08(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = -64;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1DCD7FE6C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB3FF64;

  return sub_1DCD7EF24(a1);
}

uint64_t sub_1DCD7FF2C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1DCD7FF88(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static SimpleHandoffSessionToCompanionFlowHelper.makeHandoffFlowAsync(deviceState:outputPublisher:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SimpleHandoffSessionToCompanionFlowHelper.SimpleHandoffSessionToCompanionFlowStrategyAsync();
  v4 = swift_allocObject();
  sub_1DCB17D04(a1, v7);
  sub_1DCB17D04(a2, v6);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  OUTLINED_FUNCTION_30_4();
  swift_allocObject();
  return sub_1DCC4AF24(v4, v7, v6);
}

uint64_t sub_1DCD80158()
{
  OUTLINED_FUNCTION_42();
  v0[184] = v1;
  v0[183] = v2;
  v0[182] = v3;
  v0[181] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v0[185] = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for AceOutput();
  v0[186] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  v0[187] = OUTLINED_FUNCTION_38();
  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCD8020C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1456);
  swift_asyncLet_begin();
  sub_1DCB17D04(v1, v0 + 920);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 1504) = v2;
  *v2 = v3;
  v2[1] = sub_1DCD802E0;

  return static ResponseTemplates.continueOnCompanion(deviceState:)(v0 + 696, v0 + 920);
}

uint64_t sub_1DCD802E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 1504);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 1512) = v0;

  sub_1DCB185D0(v3 + 920, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0)
  {
    v9 = sub_1DCD8092C;
  }

  else
  {
    v9 = sub_1DCD803F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1DCD803F8()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1456);
  memcpy((v0 + 808), (v0 + 696), 0x48uLL);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 96))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_5(v2, v7, v8, v6);
  *(v0 + 1032) = 0;
  *(v0 + 1000) = 0u;
  *(v0 + 1016) = 0u;
  memcpy(__dst, (v0 + 808), sizeof(__dst));
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();
}

uint64_t sub_1DCD80658()
{
  *(v1 + 1528) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80BFC);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80758);
  }
}

uint64_t sub_1DCD80684()
{
  *(v1 + 1536) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80B20);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD806B0);
  }
}

uint64_t sub_1DCD806B0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 1448);
  sub_1DCB6FFD8(*(v0 + 1496));
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1392);
  v1[8] = 0;
  v1[9] = 0;
  sub_1DCAFF9E8((v0 + 1240), v1);
  v1[5] = v2;
  v1[6] = v3;
  v1[7] = 0;

  v4 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v4, v5);
}

uint64_t sub_1DCD80758()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1448);
  sub_1DCB6FFD8(*(v0 + 1496));
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1392);
  v2[8] = 0;
  v2[9] = 0;
  sub_1DCAFF9E8((v0 + 1160), v2);
  v2[5] = v3;
  v2[6] = v4;
  v2[7] = v1;

  v5 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v5, v6);
}

uint64_t sub_1DCD80804()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1480);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCD8086C()
{
  *(v1 + 1544) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80CE4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCD80898);
  }
}

uint64_t sub_1DCD80898()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 1448);
  sub_1DCB6FFD8(*(v0 + 1496));
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1392);
  v1[8] = 0;
  v1[9] = 0;
  sub_1DCAFF9E8((v0 + 1080), v1);
  v1[5] = v2;
  v1[6] = v3;
  v1[7] = 0;

  v4 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v4, v5);
}

uint64_t sub_1DCD8092C()
{
  OUTLINED_FUNCTION_41();
  v20 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[189];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[189];
    v7 = OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_83();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[165];
    v10 = v0[166];
    v11 = v0[167];
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unexpected error calling continueOnCompanion: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v15 = v0[189];
  swift_willThrow();
  v16 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v16, v17);
}

uint64_t sub_1DCD80AC0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1512);
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCD80B20()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB6FFD8(*(v0 + 1496));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1240));
  v1 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v1, v2);
}

uint64_t sub_1DCD80B9C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1536);
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCD80BFC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1496);

  sub_1DCB6FFD8(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1160));
  v2 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v2, v3);
}

uint64_t sub_1DCD80C84()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1528);
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCD80CE4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB6FFD8(*(v0 + 1496));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1080));
  v1 = OUTLINED_FUNCTION_5_50();

  return MEMORY[0x1EEE6DEB0](v1, v2);
}

uint64_t sub_1DCD80D60()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1544);
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_29();

  return v2();
}

void HandoffSessionToCompanionFlowStrategy.makeHandoffResponse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - v9;
  v11 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v10, v12, v13, v11);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_17_22(v14);
  v15[4] = v16;
  v15[5] = 0;
  v15[6] = a1;
  v15[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t HandoffResponse.init(output:companionNotificationText:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[8] = 0;
  a4[9] = 0;
  result = sub_1DCAFF9E8(a1, a4);
  a4[5] = a2;
  a4[6] = a3;
  a4[7] = 0;
  return result;
}

uint64_t HandoffSessionToCompanionFlowAsync.__allocating_init<A>(strategy:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_30_4();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();
  HandoffSessionToCompanionFlowAsync.init<A>(strategy:deviceState:outputPublisher:)();
  return v0;
}

uint64_t sub_1DCD80F4C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(v1);
}

void sub_1DCD80FF0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD810D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCCC9358, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v9();
  }
}

void sub_1DCD81208()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD812E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCD8698C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t HandoffResponse.companionNotificationText.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void *HandoffResponse.runSiriKitExecutorCommand.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t HandoffResponse.targetDeviceAssistantIdOverride.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t HandoffResponse.targetDeviceAssistantIdOverride.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t HandoffResponse.init(output:companionNotificationText:runSiriKitExecutorCommand:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[8] = 0;
  a5[9] = 0;
  result = sub_1DCAFF9E8(a1, a5);
  a5[5] = a2;
  a5[6] = a3;
  a5[7] = a4;
  return result;
}

uint64_t sub_1DCD81564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCD81614;

  return HandoffSessionToCompanionFlowStrategy.makeHandoffResponse()(a1, a2, a3);
}

uint64_t sub_1DCD81614()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_86();
  }

  return v7(v6);
}

uint64_t sub_1DCD8170C(uint64_t a1)
{
  *(v2 + 72) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD8172C, 0, 0);
}

uint64_t sub_1DCD8172C()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = v0 + 72;
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCD8180C;
  v5 = OUTLINED_FUNCTION_22_20();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD8180C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    v9 = sub_1DCCAA828;
  }

  else
  {
    v10 = *(v3 + 88);

    v9 = sub_1DCD81910;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCD81910()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  sub_1DCAFF9E8((v0 + 16), *(v0 + 80));
  v3 = OUTLINED_FUNCTION_36_3();

  return v4(v3);
}

uint64_t HandoffSessionToCompanionFlowStrategy.makeHandoffResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return OUTLINED_FUNCTION_0_12(sub_1DCD8198C);
}

uint64_t sub_1DCD8198C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 80);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  v4[1] = sub_1DCD81A74;
  v6 = OUTLINED_FUNCTION_22_20();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCD81A74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    v9 = sub_1DCD81BD8;
  }

  else
  {
    v10 = *(v3 + 104);

    v9 = sub_1DCD81B78;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCD81B78()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  sub_1DCAFF9E8((v0 + 16), *(v0 + 72));
  v3 = OUTLINED_FUNCTION_36_3();

  return v4(v3);
}

uint64_t sub_1DCD81BD8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 120);

  return v2();
}

void sub_1DCD81C4C()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v0[15] = type metadata accessor for RefreshableDeviceState();
  v0[16] = &protocol witness table for RefreshableDeviceState;
  v0[12] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD81D40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  if (v0)
  {
    v9 = sub_1DCD81EC8;
  }

  else
  {
    v9 = sub_1DCD81E44;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCD81E44()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[22];
  sub_1DCB17D04((v0 + 2), v1);
  v3 = v0[7];
  v2 = v0[8];

  sub_1DCCCF318((v0 + 2));
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD81EC8()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 192);
  return v2();
}

uint64_t sub_1DCD81EEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(a1);
}

uint64_t sub_1DCD81F84()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_62_8();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_33_1();
  sub_1DCB8D4CC(v4, v5);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t HandoffSessionToCompanionFlow.__allocating_init(strategy:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_7_39();
  OUTLINED_FUNCTION_135();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  HandoffSessionToCompanionFlow.init(strategy:deviceState:outputPublisher:)();
  return v0;
}

uint64_t sub_1DCD82000(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_1DD0F2A38;
  *(v7 + 24) = a1;
  sub_1DCB17D04(a2, v13);
  sub_1DCB17D04(a3, v12);
  type metadata accessor for OutputPublisherAsyncAdapter();
  v8 = swift_allocObject();
  sub_1DCAFF9E8(v12, v8 + 16);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  v9 = swift_allocObject();
  v10 = sub_1DCD8567C(v7, v13, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v3 + 16) = v10;
  return v3;
}

void HandoffSessionToCompanionFlow.init(strategy:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  OUTLINED_FUNCTION_60_6();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v17 = OUTLINED_FUNCTION_59_12();
  v18(v17, v7, v10);
  OUTLINED_FUNCTION_60_6();
  v20 = *(v19 + 88);
  v21 = sub_1DCD82264();
  sub_1DCB17D04(v5, v26);
  sub_1DCB17D04(v3, v25);
  type metadata accessor for OutputPublisherAsyncAdapter();
  v22 = swift_allocObject();
  sub_1DCAFF9E8(v25, v22 + 16);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  OUTLINED_FUNCTION_30_4();
  v23 = swift_allocObject();
  sub_1DCD8567C(v21, v26, v22, v23);
  v24 = OUTLINED_FUNCTION_39_1();
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  (*(v12 + 8))(v7, v10);
  v1[2] = v21;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD82264()
{
  OUTLINED_FUNCTION_7_39();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_13_36();
  sub_1DCD84B1C(v1, v2, v3);
  return v0;
}

uint64_t HandoffSessionToCompanionFlow.__allocating_init(strategy:deviceState:outputPublisherAsync:)()
{
  OUTLINED_FUNCTION_7_39();
  OUTLINED_FUNCTION_135();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  HandoffSessionToCompanionFlow.init(strategy:deviceState:outputPublisherAsync:)();
  return v0;
}

uint64_t sub_1DCD822E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_1DD0F2A38;
  *(v7 + 24) = a1;
  sub_1DCB17D04(a2, v21);
  sub_1DCB17D04(a3, v18);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  v8 = swift_allocObject();
  v9 = v19;
  v10 = v20;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_1DCD8574C(v7, v21, v14, v8, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  *(v3 + 16) = v16;
  return v3;
}

void HandoffSessionToCompanionFlow.init(strategy:deviceState:outputPublisherAsync:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v34 = v6;
  v8 = *v0;
  OUTLINED_FUNCTION_60_6();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - v17;
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  (*(v12 + 16))(v18, v7, v10);
  OUTLINED_FUNCTION_60_6();
  v20 = *(v19 + 88);
  v21 = sub_1DCD82264();
  sub_1DCB17D04(v5, v38);
  sub_1DCB17D04(v3, v35);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  OUTLINED_FUNCTION_30_4();
  v22 = swift_allocObject();
  v23 = v36;
  v24 = v37;
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  OUTLINED_FUNCTION_0_1();
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_1DCD8574C(v21, v38, v30, v22, v23, v24);
  v32 = OUTLINED_FUNCTION_39_1();
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  (*(v12 + 8))(v34, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v1[2] = v21;
  OUTLINED_FUNCTION_49();
}

void sub_1DCD82664()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for HandoffSessionToCompanionFlow();
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCD826E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCD826FC);
}

uint64_t sub_1DCD826FC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0[3] + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[4] = v2;
  *v2 = v3;
  v2[1] = sub_1DCB3F98C;
  v4 = v0[2];

  return sub_1DCD82C3C();
}

uint64_t HandoffSessionToCompanionFlow.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t HandoffSessionToCompanionFlow.__deallocating_deinit()
{
  HandoffSessionToCompanionFlow.deinit();
  OUTLINED_FUNCTION_135();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD82804(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCD826E4(a1);
}

uint64_t sub_1DCD828A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCD81F84();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

void sub_1DCD828D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  sub_1DCB8D4CC(*a1, v3);
  sub_1DCD82958(v2, v3);
}

uint64_t sub_1DCD8291C()
{
  OUTLINED_FUNCTION_62_8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_33_1();
  sub_1DCB8D4CC(v3, v4);
  return OUTLINED_FUNCTION_33_1();
}

void sub_1DCD82958(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  sub_1DCB79378(v5, v6);
}

uint64_t sub_1DCD829B8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_0(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCC1044C();
}

void HandoffSessionToCompanionFlowAsync.init<A>(strategy:deviceState:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v16 = OUTLINED_FUNCTION_59_12();
  v17(v16, v9, v3);
  *(v0 + 32) = sub_1DCD82BF8();
  sub_1DCB17D04(v7, v0 + 40);
  sub_1DCB17D04(v5, v0 + 80);
  sub_1DCC4B974();
  v18 = swift_allocError();
  *v19 = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  (*(v11 + 8))(v9, v3);
  *(v1 + 16) = v18;
  *(v1 + 24) = 1;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD82BF8()
{
  OUTLINED_FUNCTION_7_39();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  sub_1DCD84860();
  return v0;
}

uint64_t sub_1DCD82C3C()
{
  OUTLINED_FUNCTION_42();
  v1[45] = v2;
  v1[46] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[47] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for AceOutput();
  v1[48] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v1[49] = OUTLINED_FUNCTION_38();
  v9 = sub_1DD0DE01C();
  v1[50] = v9;
  v10 = *(v9 - 8);
  v1[51] = v10;
  v11 = *(v10 + 64);
  v1[52] = OUTLINED_FUNCTION_38();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCD82D38()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 368) + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 424) = v2;
  *v2 = v3;
  v2[1] = sub_1DCD82DCC;

  return sub_1DCD854B8(v0 + 16);
}

uint64_t sub_1DCD82DCC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 424);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 432) = v0;

  if (v0)
  {
    v7 = sub_1DCD83D20;
  }

  else
  {
    v7 = sub_1DCD82ED0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCD82ED0()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for SiriKitEvent(0);
  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
}

uint64_t sub_1DCD83004()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 448);
  v3 = *(v1 + 440);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCD83104()
{
  v108 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = qword_1EDE4F900;
    v3 = v1;
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v6))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v7, v8, "HandoffSessionToCompanionFlow embedding RSKE command into handoff continuity data");
      OUTLINED_FUNCTION_80();
    }

    v9 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    [v9 encodeObject:v3 forKey:*MEMORY[0x1E696A508]];
    v10 = [v9 encodedData];
    v11 = sub_1DD0DAF2C();
    v13 = v12;

    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v14 = sub_1DD0DE8BC();

    goto LABEL_9;
  }

  v15 = *(v0 + 368);
  v16 = v15[8];
  v17 = v15[9];
  __swift_project_boxed_opaque_existential_1(v15 + 5, v16);
  (*(v17 + 160))(v16, v17);
  if (v18)
  {
    v19 = *(v0 + 408);
    v20 = *(v0 + 416);
    v21 = *(v0 + 400);
    sub_1DD0DE00C();
    v11 = sub_1DD0DDFCC();
    v23 = v22;

    (*(v19 + 8))(v20, v21);
    v13 = v23;
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v14 = sub_1DD0DE8BC();
LABEL_9:
    *(v0 + 456) = v14;
    *(v0 + 464) = v13;
    *(v0 + 472) = v11;
    v24 = *(v0 + 88);
    if (!v24)
    {
      v37 = *(v0 + 368);
      v38 = v37[9];
      __swift_project_boxed_opaque_existential_1(v37 + 5, v37[8]);
      v39 = v14;
      sub_1DCCDEA6C();
    }

    v25 = *(v0 + 80);
    v26 = qword_1EDE4F900;
    v27 = v14;

    if (v26 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v28 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v28, qword_1EDE57E00);
    OUTLINED_FUNCTION_39_1();

    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_151();
      v105 = OUTLINED_FUNCTION_83();
      v107 = v105;
      *v31 = 136315138;
      *(v0 + 328) = v25;
      *(v0 + 336) = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
      v32 = sub_1DD0DE02C();
      v34 = v14;
      v35 = v13;
      v36 = sub_1DCB10E9C(v32, v33, &v107);

      *(v31 + 4) = v36;
      v13 = v35;
      v14 = v34;
      _os_log_impl(&dword_1DCAFC000, v29, v30, "HandoffSessionToCompanionFlow using target ID override: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v41 = *(v0 + 376);
    v40 = *(v0 + 384);
    sub_1DCB10E5C(0, &qword_1ECCA9330, 0x1E69C7828);
    v42 = sub_1DCF74350(*(v0 + 56), *(v0 + 64), v11, v13, v25, v24);
    *(v0 + 480) = v42;

    [v42 setIsSiriXRequest_];

    *(v0 + 352) = MEMORY[0x1E69E7CC0];
    sub_1DCB17D04(v0 + 16, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
    if (swift_dynamicCast())
    {
      v46 = *(v0 + 392);
      v47 = *(v0 + 376);
      __swift_storeEnumTagSinglePayload(v47, 0, 1, *(v0 + 384));
      sub_1DCB6DF70(v47, v46);
      v48 = *v46;

      sub_1DCBB920C(v49);
      sub_1DCB6FFD8(v46);
    }

    else
    {
      v50 = *(v0 + 376);
      OUTLINED_FUNCTION_7_5(v50, v44, v45, *(v0 + 384));
      sub_1DCB185D0(v50, &qword_1ECCA1BD0, &qword_1DD0EB860);
      OUTLINED_FUNCTION_56_12();
      if (!v51)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v52 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v52, qword_1EDE57E00);
      v53 = sub_1DD0DD8EC();
      v54 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_50_0();
        *v55 = 0;
        _os_log_impl(&dword_1DCAFC000, v53, v54, "Response Output is not of type AceOutput so we cannot append the prompt to the handoff command.", v55, 2u);
        OUTLINED_FUNCTION_80();
      }
    }

    v56 = v42;
    MEMORY[0x1E12A6920]();
    if (*((*(v0 + 352) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 352) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    OUTLINED_FUNCTION_86();
    sub_1DD0DE3AC();
    v57 = *(v0 + 352);
    OUTLINED_FUNCTION_56_12();
    if (!v51)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v58 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v58, qword_1EDE57E00);
    v59 = sub_1DD0DD8EC();
    v60 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v60))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v61, v62, "HandoffSession publishing output");
      OUTLINED_FUNCTION_80();
    }

    v63 = *(v0 + 384);
    v64 = *(v0 + 368);

    v65 = v64[13];
    v66 = v64[14];
    __swift_project_boxed_opaque_existential_1(v64 + 10, v65);
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 160) = v63;
    *(v0 + 168) = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 136));
    v68 = v63[7];
    v69 = type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v68, v70, v71, v69);
    v72 = v63[9];
    v73 = sub_1DD0DD10C();
    OUTLINED_FUNCTION_7_5(boxed_opaque_existential_1Tm + v72, v74, v75, v73);
    v76 = v63[8];
    v77 = *MEMORY[0x1E69D0678];
    v78 = sub_1DD0DD15C();
    OUTLINED_FUNCTION_112(v78);
    (*(v79 + 104))(boxed_opaque_existential_1Tm + v76, v77);
    boxed_opaque_existential_1Tm[15] = 0;
    *(boxed_opaque_existential_1Tm + 13) = 0u;
    *(boxed_opaque_existential_1Tm + 11) = 0u;
    sub_1DCB6C5E8(v0 + 176, (boxed_opaque_existential_1Tm + 11));
    *(boxed_opaque_existential_1Tm + v63[10]) = 0;
    *boxed_opaque_existential_1Tm = v57;
    *(boxed_opaque_existential_1Tm + 1) = 0u;
    *(boxed_opaque_existential_1Tm + 3) = 0u;
    *(boxed_opaque_existential_1Tm + 5) = 0u;
    *(boxed_opaque_existential_1Tm + 7) = 0u;
    boxed_opaque_existential_1Tm[9] = 0;
    *(boxed_opaque_existential_1Tm + 80) = 3;
    v80 = *(v66 + 8);
    OUTLINED_FUNCTION_25_1();
    v106 = (v81 + *v81);
    v83 = *(v82 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 488) = v84;
    *v84 = v85;
    v84[1] = sub_1DCD83B60;

    return v106(v0 + 136, v65, v66);
  }

  OUTLINED_FUNCTION_56_12();
  if (!v51)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v87 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v87, qword_1EDE57E00);
  v88 = sub_1DD0DD8EC();
  v89 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v89))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v90, v91, "HandoffSessionToCompanionFlow cannot perform handoff because there is no ContinuityID present on DeviceState. Will redirect this request to the server, which may cause issues in multi-turn requests.");
    OUTLINED_FUNCTION_80();
  }

  v92 = *(v0 + 360);
  v93 = *(v0 + 368);

  sub_1DCC4B974();
  v94 = swift_allocError();
  *v95 = 0;
  swift_beginAccess();
  v96 = *(v93 + 16);
  v97 = *(v93 + 24);
  *(v93 + 16) = v94;
  *(v93 + 24) = 1;
  sub_1DCB79378(v96, v97);
  v98 = type metadata accessor for ExecuteResponse(0);
  v99 = *(v98 + 36);
  v100 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7_5(v92 + v99, v101, v102, v100);
  *v92 = 3;
  *(v92 + 8) = 0;
  *(v92 + 16) = 0;
  *(v92 + 32) = 0;
  *(v92 + 40) = 0;
  *(v92 + 24) = 0;
  *(v92 + 48) = 0x80;
  v103 = (v92 + *(v98 + 40));
  *v103 = 0u;
  v103[1] = 0u;
  sub_1DCCCF318(v0 + 16);
  OUTLINED_FUNCTION_31_16();

  OUTLINED_FUNCTION_29();

  return v104();
}

uint64_t sub_1DCD83B60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 488);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 496) = v0;

  if (v0)
  {
    v9 = sub_1DCD83E74;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 136));
    v9 = sub_1DCD83C64;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCD83C64()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[45];
  v4 = v0[46];
  sub_1DCB2C520(v0[59], v0[58]);

  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1DCB79378(v5, v6);
  static ExecuteResponse.complete()();
  sub_1DCCCF318((v0 + 2));
  OUTLINED_FUNCTION_31_16();

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCD83D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = v18[54];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  v23 = v21;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_151();
    v27 = OUTLINED_FUNCTION_83();
    a9 = v27;
    OUTLINED_FUNCTION_64_7(4.8149e-34);
    v29 = v18[30];
    v28 = v18[31];
    v30 = v18[32];
    v31 = sub_1DD0DF18C();
    v33 = sub_1DCB10E9C(v31, v32, &a9);

    *(v26 + 4) = v33;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v34, v35, "Unexpected error executing handoff: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_67_8();
  OUTLINED_FUNCTION_31_16();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_1DCD83E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = *(v18 + 472);
  v22 = *(v18 + 480);
  v23 = *(v18 + 464);

  sub_1DCB2C520(v21, v23);
  sub_1DCCCF318(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v18 + 136));
  v24 = *(v18 + 496);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v25 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
  v26 = v24;
  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_151();
    v30 = OUTLINED_FUNCTION_83();
    a9 = v30;
    OUTLINED_FUNCTION_64_7(4.8149e-34);
    v32 = *(v18 + 240);
    v31 = *(v18 + 248);
    v33 = *(v18 + 256);
    v34 = sub_1DD0DF18C();
    v36 = sub_1DCB10E9C(v34, v35, &a9);

    *(v29 + 4) = v36;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v37, v38, "Unexpected error executing handoff: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_67_8();
  OUTLINED_FUNCTION_31_16();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t HandoffSessionToCompanionFlowAsync.deinit()
{
  sub_1DCB79378(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  return v0;
}

uint64_t HandoffSessionToCompanionFlowAsync.__deallocating_deinit()
{
  HandoffSessionToCompanionFlowAsync.deinit();
  OUTLINED_FUNCTION_30_4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD84084()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);

  return sub_1DCD82C3C();
}

uint64_t sub_1DCD8410C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCD8291C();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1DCD84170(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *, _BYTE *))
{
  type metadata accessor for SimpleHandoffSessionToCompanionFlowHelper.SimpleHandoffSessionToCompanionFlowStrategy();
  v6 = swift_allocObject();
  sub_1DCB17D04(a1, v9);
  sub_1DCB17D04(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5720, &qword_1DD0F25F0);
  OUTLINED_FUNCTION_135();
  swift_allocObject();
  return a3(v6, v9, v8);
}

void static SimpleHandoffSessionToCompanionFlowHelper.makeServerOrLocalHandoffFlowAsync(runSiriKitExecutorProvider:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCB17D04(a3, v10);
  type metadata accessor for SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1DCAFF9E8(v10, v8 + 32);
  sub_1DCB17D04(a3, v10);
  sub_1DCB17D04(a4, &v9);
  type metadata accessor for HandoffSessionToCompanionFlowAsync();
  OUTLINED_FUNCTION_30_4();
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.__allocating_init(runSiriKitExecutorProvider:deviceState:)()
{
  OUTLINED_FUNCTION_7_39();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1DCAFF9E8(v0, v3 + 32);
  return v3;
}

uint64_t sub_1DCD84314(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCD86990;

  return sub_1DCD8170C(a1);
}

uint64_t sub_1DCD843E0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCD80FD8(v1);
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.init(runSiriKitExecutorProvider:deviceState:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1DCAFF9E8(a3, v3 + 32);
  return v3;
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.makeHandoffResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCD844C0);
}

uint64_t sub_1DCD844C0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[4] = v4;
  *v4 = v5;
  v4[1] = sub_1DCB8C57C;
  v6 = v0[2];

  return sub_1DCD80158();
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD845D0()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_17(v3);

  return SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.makeHandoffResponse()(v5);
}

uint64_t sub_1DCD84658(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCD846EC;

  return static NotificationTemplates.genericHandoffNotification()();
}

uint64_t sub_1DCD846EC()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1DCD84830, 0, 0);
  }
}

uint64_t sub_1DCD84830()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  OUTLINED_FUNCTION_29();
  return v3();
}

uint64_t sub_1DCD84860()
{
  OUTLINED_FUNCTION_60();
  v5 = sub_1DCD848CC(v2, v3, v4);
  v7 = v6;
  OUTLINED_FUNCTION_112(v0);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_86();
  v11(v10);
  *(v1 + 16) = v5;
  *(v1 + 24) = v7;
  return v1;
}

void *sub_1DCD848CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_1DD0F2A58;
}

uint64_t sub_1DCD849EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCB4AE1C;

  return v12(a1, a3, a4);
}

uint64_t sub_1DCD84B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, a1, a2);
  *(v3 + 16) = &unk_1DD0F2A68;
  *(v3 + 24) = v12;
  return v3;
}

uint64_t sub_1DCD84BF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  *(v2 + 120) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD84C14, 0, 0);
}

uint64_t sub_1DCD84C14()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = v0 + 112;
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  v3[1] = sub_1DCD84CE0;
  v5 = OUTLINED_FUNCTION_16_27();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCD84CE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (v0)
  {
    v9 = sub_1DCD84E6C;
  }

  else
  {
    v10 = *(v3 + 128);

    v9 = sub_1DCD84DE4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCD84DE4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DCAFF9E8((v0 + 16), v0 + 72);
  sub_1DCAFF9E8((v0 + 72), v1);
  v1[8] = 0;
  v1[9] = 0;
  v1[5] = v2;
  v1[6] = v3;
  v1[7] = 0;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD84E6C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 144);

  return v2();
}

uint64_t sub_1DCD84EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCD84EEC, 0, 0);
}

uint64_t sub_1DCD84EEC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *(v2 + 16) = *(v0 + 128);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  v4[1] = sub_1DCD84FC0;
  v6 = OUTLINED_FUNCTION_16_27();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCD84FC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    v9 = sub_1DCD8514C;
  }

  else
  {
    v10 = *(v3 + 144);

    v9 = sub_1DCD850C4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}