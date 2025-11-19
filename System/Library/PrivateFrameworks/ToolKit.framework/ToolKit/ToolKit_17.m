void TypedValue.DeferredValue.Storage.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v66 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315AF0, &qword_1C907D878);
  OUTLINED_FUNCTION_11(v6);
  v65 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315AF8, &qword_1C907D880);
  OUTLINED_FUNCTION_7_21(v11);
  v64 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_233();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B00, &qword_1C907D888);
  OUTLINED_FUNCTION_11(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_73();
  v22 = v4[3];
  v23 = v4[4];
  v24 = OUTLINED_FUNCTION_276();
  OUTLINED_FUNCTION_217(v24, v25);
  sub_1C8DF1F48();
  sub_1C9064DEC();
  if (!v1)
  {
    v26 = sub_1C9064A9C();
    sub_1C8CB8914(v26, 0);
    if (v28 != v27 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      v63 = v16;
      OUTLINED_FUNCTION_282_1();
      if (v31 == v32)
      {
        __break(1u);
        return;
      }

      v33 = *(v30 + v29);
      sub_1C8CB891C(v29 + 1);
      v35 = v34;
      v37 = v36;
      swift_unknownObjectRelease();
      if (v35 == v37 >> 1)
      {
        if (v33)
        {
          v69 = v33;
          OUTLINED_FUNCTION_385();
          sub_1C8DF1F9C();
          OUTLINED_FUNCTION_34();
          sub_1C906498C();
          v61 = sub_1C9064A0C();
          v62 = v46;
          OUTLINED_FUNCTION_385();
          v47 = sub_1C9064A0C();
          v59 = v49;
          v60 = v47;
          swift_unknownObjectRelease();
          v50 = *(v65 + 8);
          v51 = OUTLINED_FUNCTION_181_1();
          v52(v51);
          v53 = *(v18 + 8);
          v54 = OUTLINED_FUNCTION_246();
          v55(v54);
        }

        else
        {
          LOBYTE(v67) = 0;
          sub_1C8DF1FF0();
          sub_1C906498C();
          sub_1C8D02AFC();
          OUTLINED_FUNCTION_314_1();
          sub_1C9064A6C();
          v69 = v33;
          v61 = v67;
          v62 = v68;
          OUTLINED_FUNCTION_275();
          v48 = sub_1C9064A0C();
          v59 = v56;
          v60 = v48;
          swift_unknownObjectRelease();
          (*(v64 + 8))(v2, v0);
          v57 = OUTLINED_FUNCTION_310_0();
          v58(v57, v63);
        }

        *v66 = v61;
        *(v66 + 8) = v62;
        *(v66 + 16) = v60;
        *(v66 + 24) = v59;
        *(v66 + 32) = v69;
        __swift_destroy_boxed_opaque_existential_1(v4);
        goto LABEL_12;
      }

      v16 = v63;
    }

    v38 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v40 = &type metadata for TypedValue.DeferredValue.Storage;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v42 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v38);
    (*(v43 + 104))(v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_241();
    v45(v44, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_12:
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DEDBE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1C9064D7C();
  if (v5)
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9063FBC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    sub_1C9061F4C();
  }

  sub_1C9063FBC();
  return sub_1C9064DBC();
}

__n128 TypedValue.DeferredValue.init(type:expectedTypeInstance:storage:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a3 + 32);
  *a4 = *a1;
  *(a4 + 8) = v4;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v7;
  *(a4 + 48) = v5;
  return result;
}

uint64_t static TypedValue.DeferredValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v38 = *(a1 + 40);
  v39 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v37 = *(a2 + 48);
  v42[0] = *a1;
  v40[0] = v6;

  v12 = static TypeIdentifier.== infix(_:_:)(v42, v40);

  if (v12 & 1) != 0 && (v42[0] = v2, v40[0] = v7, , , v13 = static TypeInstance.== infix(_:_:)(v42, v40), , , (v13))
  {
    v42[0] = v3;
    v42[1] = v4;
    v42[2] = v39;
    v42[3] = v38;
    v43 = v5;
    v40[0] = v8;
    v40[1] = v9;
    v40[2] = v10;
    v40[3] = v11;
    v41 = v37;
    OUTLINED_FUNCTION_119_4();
    sub_1C8D4F44C(v14, v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_284_1();
    sub_1C8D4F44C(v19, v20, v21, v22, v23);
    static TypedValue.DeferredValue.Storage.== infix(_:_:)();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_284_1();
    sub_1C8D43CA8(v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_119_4();
    sub_1C8D43CA8(v31, v32, v33, v34, v35);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1C8DEDE10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C90CADD0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DEDF28(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x656761726F7473;
}

uint64_t sub_1C8DEDF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DEDE10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DEDFAC(uint64_t a1)
{
  v2 = sub_1C8DF2044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEDFE8(uint64_t a1)
{
  v2 = sub_1C8DF2044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.DeferredValue.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B08, &qword_1C907D890);
  OUTLINED_FUNCTION_7_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  v7 = *v0;
  v15 = v0[2];
  v16 = v0[1];
  v13 = v0[4];
  v14 = v0[3];
  v12 = v0[5];
  v17[0] = *(v0 + 48);
  v8 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  v9 = sub_1C8DF2044();

  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  sub_1C8C9FB9C();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();

  if (!v9)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8CA6D90();
    OUTLINED_FUNCTION_295_0();
    OUTLINED_FUNCTION_251_1();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();

    sub_1C8D4F44C(v15, v14, v13, v12, v17[0]);
    sub_1C8DF2098();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    sub_1C8D43CA8(v15, v14, v13, v12, v17[0]);
  }

  v10 = OUTLINED_FUNCTION_111_0();
  v11(v10);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.DeferredValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_238_1();
  TypeIdentifier.hash(into:)(v8);
  OUTLINED_FUNCTION_297();
  TypeInstance.hash(into:)();
  if (v7)
  {
    MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_117();
    sub_1C9063FBC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_117();
    sub_1C9061F4C();
  }

  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t TypedValue.DeferredValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = OUTLINED_FUNCTION_298();
  v16 = OUTLINED_FUNCTION_252_1(v8, v9, v10, v11, v12, v13, v14, v15, v1, v43);
  v17 = TypeIdentifier.hash(into:)(v16);
  OUTLINED_FUNCTION_252_1(v17, v18, v19, v20, v21, v22, v23, v24, v2, v44);
  TypeInstance.hash(into:)();
  if (v7)
  {
    v25 = MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_215_0(v25, v26, v27, v28, v29, v30, v31, v32, v42, v45);
    sub_1C9063FBC();
  }

  else
  {
    v33 = MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_215_0(v33, v34, v35, v36, v37, v38, v39, v40, v42, v45);
    sub_1C9061F4C();
  }

  OUTLINED_FUNCTION_234_0();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void TypedValue.DeferredValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B20, &qword_1C907D898);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_0();
  v7 = v0[4];
  OUTLINED_FUNCTION_217(v0, v0[3]);
  sub_1C8DF2044();
  OUTLINED_FUNCTION_208();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    sub_1C8CB892C();
    OUTLINED_FUNCTION_91_2();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_275();
    sub_1C8CAC450();
    OUTLINED_FUNCTION_91_2();
    sub_1C9064A6C();
    sub_1C8DF20EC();
    OUTLINED_FUNCTION_91_2();
    sub_1C9064A6C();
    v8 = OUTLINED_FUNCTION_10_2();
    v9(v8);
    *v2 = v20;
    *(v2 + 8) = v20;
    *(v2 + 16) = v20;
    *(v2 + 24) = v21;
    *(v2 + 32) = v22;
    *(v2 + 40) = v23;
    *(v2 + 48) = v24;

    OUTLINED_FUNCTION_334_1();
    sub_1C8D4F44C(v10, v11, v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v0);

    OUTLINED_FUNCTION_334_1();
    sub_1C8D43CA8(v15, v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DEE5FC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1C9064D7C();
  TypedValue.DeferredValue.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8DEE688@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X4>, void *a5@<X8>)
{
  *a5 = *a1;
  a5[1] = a2;
  a5[2] = a3;
  v5 = a4(0);
  v6 = OUTLINED_FUNCTION_216_0(v5);

  return sub_1C8D60F48(v6, v7);
}

void sub_1C8DEE6F0()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_262_1();
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_17();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_116_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_51();
  v17 = *v2;
  v24 = *v1;
  v25 = v17;

  LOBYTE(v17) = static TypeIdentifier.== infix(_:_:)(&v25, &v24);

  if (v17)
  {
    v18 = v2[1] == v1[1] && v2[2] == v1[2];
    if (v18 || (sub_1C9064C2C() & 1) != 0)
    {
      v19 = *(v4(0) + 24);
      v20 = *(v13 + 48);
      sub_1C8DF0C88(v2 + v19, v0);
      sub_1C8DF0C88(v1 + v19, v0 + v20);
      OUTLINED_FUNCTION_92_0(v0);
      if (!v18)
      {
        v21 = OUTLINED_FUNCTION_209();
        sub_1C8DF0C88(v21, v22);
        OUTLINED_FUNCTION_92_0(v0 + v20);
        if (!v23)
        {
          OUTLINED_FUNCTION_348_1();
          OUTLINED_FUNCTION_134();
          static DisplayRepresentation.== infix(_:_:)();
          OUTLINED_FUNCTION_30_13();
          sub_1C8CC6AB4();
          OUTLINED_FUNCTION_181_0();
          sub_1C8CC6AB4();
          sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
          goto LABEL_16;
        }

        sub_1C8CC6AB4();
LABEL_15:
        sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_92_0(v0 + v20);
      if (!v18)
      {
        goto LABEL_15;
      }

      sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8DEE944(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DEEA64(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8DEEAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DEE944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DEEAEC(uint64_t a1)
{
  v2 = sub_1C8DF2140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEEB28(uint64_t a1)
{
  v2 = sub_1C8DF2140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.EntityIdentifierValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B30, &qword_1C907D8A0);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF2140();
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_294_1();
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_118_1();
  sub_1C9064B8C();
  OUTLINED_FUNCTION_157();
  if (!v0)
  {
    v6 = *(v1 + 8);
    v7 = *(v1 + 16);
    OUTLINED_FUNCTION_97_3();
    sub_1C9064B2C();
    v8 = type metadata accessor for TypedValue.EntityIdentifierValue(0);
    OUTLINED_FUNCTION_275_1(v8);
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v9);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v10 = OUTLINED_FUNCTION_86_2();
  v11(v10);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void sub_1C8DEECE4()
{
  OUTLINED_FUNCTION_422();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_258();
  v5 = type metadata accessor for DisplayRepresentation(v4);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_342_1();
  v13 = *(v0 + 8);
  v14 = *(v0 + 16);
  sub_1C9063FBC();
  v15 = v3(0);
  sub_1C8DF0C88(v0 + *(v15 + 24), v1);
  OUTLINED_FUNCTION_108_2(v1, 1, v5);
  if (v16)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_347();
    sub_1C8CCEB64();
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_346_1();
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_421();
}

void TypedValue.EntityIdentifierValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_86();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315B38, &qword_1C907D8A8);
  OUTLINED_FUNCTION_11(v22);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_5();
  v12 = type metadata accessor for TypedValue.EntityIdentifierValue(v11);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v16 = v3[3];
  v17 = v3[4];
  OUTLINED_FUNCTION_122_3(v3);
  sub_1C8DF2140();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_303_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1C8CB892C();
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    *(v1 + 8) = OUTLINED_FUNCTION_228_1();
    *(v1 + 16) = v18;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v19);
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v20 = OUTLINED_FUNCTION_0_2();
    v21(v20);
    sub_1C8D60F48(v1, v1 + *(v12 + 24));
    OUTLINED_FUNCTION_12_15();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_40_9();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_248_1();
  OUTLINED_FUNCTION_198();
}

void static TypedValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_258();
  v4 = type metadata accessor for TypedValue.CodableValue(v3);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v84 = v8;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  v85 = v10;
  v11 = OUTLINED_FUNCTION_111();
  v12 = type metadata accessor for TypedValue.EntityIdentifierValue(v11);
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_324_0();
  Value = type metadata accessor for TypedValue.QueryValue(v17);
  v18 = OUTLINED_FUNCTION_13_1(Value);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v82 = v21;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_147();
  v83 = v23;
  v24 = OUTLINED_FUNCTION_111();
  v25 = type metadata accessor for TypedValue.EntityValue(v24);
  v26 = OUTLINED_FUNCTION_9(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v29);
  v30 = type metadata accessor for TypedValue.EnumerationValue(0);
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v34);
  v35 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v36 = OUTLINED_FUNCTION_9(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v39);
  v40 = *v0;
  v41 = *v2;
  switch(v40 >> 60)
  {
    case 1uLL:
      if (v41 >> 60 == 1)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_306_1();
        sub_1C8CC5734();
        OUTLINED_FUNCTION_249();
        sub_1C8CC5734();

        OUTLINED_FUNCTION_278();
        static TypedValue.EnumerationValue.== infix(_:_:)();
        sub_1C8CC6AB4();
        sub_1C8CC6AB4();

        goto LABEL_34;
      }

      goto LABEL_35;
    case 2uLL:
      if (v41 >> 60 == 2)
      {
        swift_projectBox();
        OUTLINED_FUNCTION_306_1();
        sub_1C8CC5734();
        sub_1C8CC5734();

        static TypedValue.EntityValue.== infix(_:_:)();
        sub_1C8CC6AB4();
        OUTLINED_FUNCTION_254();
        sub_1C8CC6AB4();
        goto LABEL_13;
      }

      goto LABEL_35;
    case 3uLL:
      if (v41 >> 60 == 3)
      {
        v61 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v62 = v41 & 0xFFFFFFFFFFFFFFFLL;
        v63 = *(v62 + 24);
        v95 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v87 = *(v62 + 16);

        v64 = OUTLINED_FUNCTION_316_1();
        v66 = static TypeInstance.== infix(_:_:)(v64, v65);

        if ((v66 & 1) == 0)
        {
          goto LABEL_13;
        }

        v67 = OUTLINED_FUNCTION_249();
        sub_1C8CEC2D4(v67, v68);
      }

      goto LABEL_35;
    case 4uLL:
      if (v41 >> 60 != 4)
      {
        goto LABEL_35;
      }

      swift_projectBox();
      OUTLINED_FUNCTION_306_1();
      sub_1C8CC5734();
      sub_1C8CC5734();
      v94 = *v83;
      v86 = *v82;

      v44 = OUTLINED_FUNCTION_316_1();
      v46 = static TypeIdentifier.== infix(_:_:)(v44, v45);

      if ((v46 & 1) == 0)
      {
        goto LABEL_10;
      }

      v47 = *(Value + 20);
      v48 = v83 + v47;
      v49 = v82 + v47;
      v50 = OUTLINED_FUNCTION_206();
      if ((static AnyPredicate.== infix(_:_:)(v50, v51) & 1) == 0)
      {
        goto LABEL_10;
      }

      v52 = type metadata accessor for Query();
      v53 = *(v52 + 20);
      v54 = v48[v53];
      v55 = v49[v53];
      if ((sub_1C90623DC() & 1) == 0)
      {
        goto LABEL_10;
      }

      v56 = *(v52 + 24);
      v57 = &v48[v56];
      v58 = v48[v56 + 8];
      v59 = &v49[v56];
      v60 = v49[v56 + 8];
      if (v58)
      {
        if (!v60)
        {
LABEL_10:
          OUTLINED_FUNCTION_185_2();
          sub_1C8CC6AB4();
          OUTLINED_FUNCTION_378();
          sub_1C8CC6AB4();

          goto LABEL_34;
        }
      }

      else
      {
        if (*v57 != *v59)
        {
          LOBYTE(v60) = 1;
        }

        if (v60)
        {
          goto LABEL_10;
        }
      }

      OUTLINED_FUNCTION_185_2();
      sub_1C8CC6AB4();
      OUTLINED_FUNCTION_378();
      sub_1C8CC6AB4();

LABEL_35:
      OUTLINED_FUNCTION_163();
      return;
    case 5uLL:
      if (v41 >> 60 != 5)
      {
        goto LABEL_35;
      }

      v72 = v41 & 0xFFFFFFFFFFFFFFFLL;
      v97 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v99 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v100 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v101 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v89 = *(v72 + 16);
      v91 = *(v72 + 32);
      v92 = *(v72 + 48);
      v93 = *(v72 + 64);

      v73 = OUTLINED_FUNCTION_316_1();
      static TypedValue.DeferredValue.== infix(_:_:)(v73, v74);
      goto LABEL_13;
    case 6uLL:
      if (v41 >> 60 != 6)
      {
        goto LABEL_35;
      }

      swift_projectBox();
      OUTLINED_FUNCTION_306_1();
      sub_1C8CC5734();
      sub_1C8CC5734();

      OUTLINED_FUNCTION_107();
      static TypedValue.EntityIdentifierValue.== infix(_:_:)();
      sub_1C8CC6AB4();
      sub_1C8CC6AB4();

      goto LABEL_34;
    case 7uLL:
      if (v41 >> 60 != 7)
      {
        goto LABEL_35;
      }

      v69 = v41 & 0xFFFFFFFFFFFFFFFLL;
      v96 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v98 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v88 = *(v69 + 16);
      v90 = *(v69 + 32);

      v70 = OUTLINED_FUNCTION_316_1();
      static TypedValue.ReferenceValue.== infix(_:_:)(v70, v71);
      goto LABEL_13;
    case 8uLL:
      if (v41 >> 60 != 8)
      {
        goto LABEL_35;
      }

      swift_projectBox();
      OUTLINED_FUNCTION_306_1();
      sub_1C8CC5734();
      sub_1C8CC5734();
      v75 = *v85 == *v84 && v85[1] == v84[1];
      if (v75 || (sub_1C9064C2C() & 1) != 0)
      {
        v76 = v85[2];
        v77 = v85[3];
        v78 = v84[2];
        v79 = v84[3];

        v80 = OUTLINED_FUNCTION_209();
        MEMORY[0x1CCA7F9A0](v80);
        sub_1C8CC6AB4();
        OUTLINED_FUNCTION_347();
        sub_1C8CC6AB4();
      }

      else
      {

        sub_1C8CC6AB4();
        OUTLINED_FUNCTION_378();
        sub_1C8CC6AB4();

LABEL_34:
      }

      goto LABEL_35;
    default:
      if (v41 >> 60)
      {
        goto LABEL_35;
      }

      swift_projectBox();
      swift_projectBox();
      sub_1C8CC5734();
      sub_1C8CC5734();

      v42 = OUTLINED_FUNCTION_208_0();
      == infix(_:_:)(v42, v43);
      sub_1C8CC6AB4();
      OUTLINED_FUNCTION_181();
      sub_1C8CC6AB4();
LABEL_13:

      goto LABEL_34;
  }
}

uint64_t sub_1C8DEFA10(uint64_t a1)
{
  v2 = sub_1C8DF2194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFA4C(uint64_t a1)
{
  v2 = sub_1C8DF2194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFA88(uint64_t a1)
{
  v2 = sub_1C8CC7CBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFAC4(uint64_t a1)
{
  v2 = sub_1C8CC7CBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFB00(uint64_t a1)
{
  v2 = sub_1C8DF23E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFB3C(uint64_t a1)
{
  v2 = sub_1C8DF23E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFB78(uint64_t a1)
{
  v2 = sub_1C8DF22E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFBB4(uint64_t a1)
{
  v2 = sub_1C8DF22E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFBF0(uint64_t a1)
{
  v2 = sub_1C8DF2488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFC2C(uint64_t a1)
{
  v2 = sub_1C8DF2488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFC68(uint64_t a1)
{
  v2 = sub_1C8DF2290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFCA4(uint64_t a1)
{
  v2 = sub_1C8DF2290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFCE0(uint64_t a1)
{
  v2 = sub_1C8DF24DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFD1C(uint64_t a1)
{
  v2 = sub_1C8DF24DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFD58(uint64_t a1)
{
  v2 = sub_1C8CC7D10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFD94(uint64_t a1)
{
  v2 = sub_1C8CC7D10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFDD0(uint64_t a1)
{
  v2 = sub_1C8DF238C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFE0C(uint64_t a1)
{
  v2 = sub_1C8DF238C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DEFE48(uint64_t a1)
{
  v2 = sub_1C8DF21E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEFE84(uint64_t a1)
{
  v2 = sub_1C8DF21E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v79 = v6;
  v75 = type metadata accessor for TypedValue.CodableValue(0);
  v7 = OUTLINED_FUNCTION_13_1(v75);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v77 = v10;
  v11 = OUTLINED_FUNCTION_111();
  v74 = type metadata accessor for TypedValue.EntityIdentifierValue(v11);
  v12 = OUTLINED_FUNCTION_13_1(v74);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_0();
  v76 = v15;
  v16 = OUTLINED_FUNCTION_111();
  Value = type metadata accessor for TypedValue.QueryValue(v16);
  v18 = OUTLINED_FUNCTION_13_1(Value);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v21 = OUTLINED_FUNCTION_67_4();
  v22 = type metadata accessor for TypedValue.EntityValue(v21);
  v23 = OUTLINED_FUNCTION_9(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v26 = OUTLINED_FUNCTION_32_7();
  v78 = type metadata accessor for DisplayRepresentation(v26);
  v27 = OUTLINED_FUNCTION_13_1(v78);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_337_1();
  MEMORY[0x1EEE9AC00](v35);
  v36 = OUTLINED_FUNCTION_324_0();
  v37 = type metadata accessor for TypedValue.EnumerationValue(v36);
  v38 = OUTLINED_FUNCTION_13_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_22_17();
  v41 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v42 = OUTLINED_FUNCTION_9(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_17_12();
  v45 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_13_15();
      sub_1C8CC5734();
      MEMORY[0x1CCA82810](1);
      v81 = *v0;
      TypeIdentifier.hash(into:)(v79);
      v58 = v0[1];
      v59 = v0[2];
      sub_1C9063FBC();
      sub_1C8DF0C88(v0 + *(v37 + 24), v5);
      OUTLINED_FUNCTION_108_2(v5, 1, v78);
      if (v60)
      {
        OUTLINED_FUNCTION_308();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        sub_1C8CCEB64();
        OUTLINED_FUNCTION_419();
        DisplayRepresentation.hash(into:)();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      OUTLINED_FUNCTION_41_8();
      goto LABEL_29;
    case 2uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_15_15();
      sub_1C8CC5734();
      MEMORY[0x1CCA82810](2);
      TypedValue.EntityValue.hash(into:)();
      goto LABEL_29;
    case 3uLL:
      v51 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      MEMORY[0x1CCA82810](3);
      TypeInstance.hash(into:)(v79);
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_163();

      sub_1C8D03430(v52, v53);
      return;
    case 4uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_16_15();
      sub_1C8CC5734();
      MEMORY[0x1CCA82810](4);
      v80 = *v4;
      TypeIdentifier.hash(into:)(v79);
      v46 = v4 + *(Value + 20);
      AnyPredicate.hash(into:)();
      v47 = type metadata accessor for Query();
      v48 = v46[*(v47 + 20)];
      sub_1C90623EC();
      v49 = &v46[*(v47 + 24)];
      if (v49[8])
      {
        OUTLINED_FUNCTION_308();
      }

      else
      {
        v72 = *v49;
        OUTLINED_FUNCTION_419();
        MEMORY[0x1CCA82810](v72);
      }

      OUTLINED_FUNCTION_42_8();
      goto LABEL_29;
    case 5uLL:
      v61 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v62 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v63 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v64 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v65 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v66 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v67 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      MEMORY[0x1CCA82810](5);
      TypeIdentifier.hash(into:)(v79);
      TypeInstance.hash(into:)(v79);
      if (v67)
      {
        MEMORY[0x1CCA82810](1);
        OUTLINED_FUNCTION_129_1();
        sub_1C9063FBC();
      }

      else
      {
        MEMORY[0x1CCA82810](0);
        OUTLINED_FUNCTION_129_1();
        sub_1C9061F4C();
      }

      goto LABEL_25;
    case 6uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_12_15();
      sub_1C8CC5734();
      MEMORY[0x1CCA82810](6);
      v82 = *v76;
      TypeIdentifier.hash(into:)(v79);
      v68 = v76[1];
      v69 = v76[2];
      sub_1C9063FBC();
      sub_1C8DF0C88(v76 + *(v74 + 24), v2);
      OUTLINED_FUNCTION_108_2(v2, 1, v78);
      if (v60)
      {
        OUTLINED_FUNCTION_283();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        sub_1C8CCEB64();
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_346_1();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      OUTLINED_FUNCTION_40_9();
      goto LABEL_29;
    case 7uLL:
      v56 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v55 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v57 = *((v45 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      MEMORY[0x1CCA82810](7);
      TypeIdentifier.hash(into:)(v79);
LABEL_25:
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_163();

      sub_1C9063FBC();
      return;
    case 8uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_11_17();
      sub_1C8CC5734();
      MEMORY[0x1CCA82810](8);
      OUTLINED_FUNCTION_339_1();
      sub_1C9063FBC();
      v70 = *(v77 + 16);
      v71 = *(v77 + 24);
      sub_1C9061F4C();
      sub_1C8DF0C88(v77 + *(v75 + 24), v3);
      OUTLINED_FUNCTION_108_2(v3, 1, v78);
      if (v60)
      {
        sub_1C9064D9C();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        sub_1C8CCEB64();
        sub_1C9064D9C();
        OUTLINED_FUNCTION_241_1();
        DisplayRepresentation.hash(into:)();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      goto LABEL_29;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_47();
      sub_1C8CC5734();
      MEMORY[0x1CCA82810](0);
      TypedValue.PrimitiveValue.hash(into:)(v79);
      OUTLINED_FUNCTION_14_20();
LABEL_29:
      sub_1C8CC6AB4();
      OUTLINED_FUNCTION_163();
      return;
  }
}

uint64_t TypedValue.hashValue.getter()
{
  v2 = *v0;
  sub_1C9064D7C();
  TypedValue.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8DF05B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_1C9064D7C();
  a4(v7);
  return sub_1C9064DBC();
}

uint64_t TypedValue.ID.propertyListObject.getter()
{
  sub_1C8CB78AC(0, &qword_1EDA6B518, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C68, &qword_1C907D958);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C906A950;
  *(v1 + 32) = sub_1C8CB78AC(0, &qword_1EDA60470, 0x1E69E0958);
  v2 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_265_0(v2);
  sub_1C906448C();

  if (!v0)
  {
    if (v7)
    {
      sub_1C8D1D824(&v6, &v8);
      swift_dynamicCast();
      v4 = v9;
      v5 = [v9 propertyListObject];

      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t TypedValue.ID.init(propertyListObject:typeInstance:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(MEMORY[0x1E69E0958]) initWithPropertyListObject_];
  v17[0] = 0;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v17];

  if (v8)
  {
    v9 = v17[0];
    v10 = sub_1C9061F3C();
    v12 = v11;

    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    swift_unknownObjectRelease();
    result = type metadata accessor for TypedValue.ID(0);
    v14 = (a3 + *(result + 20));
    *v14 = v10;
    v14[1] = v12;
    *(a3 + *(result + 24)) = v5;
  }

  else
  {
    v15 = v17[0];

    sub_1C9061D7C();

    swift_willThrow();
    result = swift_unknownObjectRelease();
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t TypedValue.ID.debugDescription.getter()
{
  sub_1C906478C();

  sub_1C906204C();
  OUTLINED_FUNCTION_10_19();
  sub_1C8CC8068(v1);
  v2 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v2);

  MEMORY[0x1CCA81A90](0x3D6570797420, 0xE600000000000000);
  v3 = *(v0 + *(type metadata accessor for TypedValue.ID(0) + 24));
  OUTLINED_FUNCTION_238_1();
  v4 = TypeInstance.debugDescription.getter();
  MEMORY[0x1CCA81A90](v4);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t TypedValue.DeferredValue.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD000000000000022, 0x80000001C90CACE0);
  v7 = *(v0 + 32);
  v6 = *(v0 + 16);
  v3 = TypedValue.DeferredValue.Storage.debugDescription.getter();
  MEMORY[0x1CCA81A90](v3);

  MEMORY[0x1CCA81A90](0x6574636570786520, 0xEE003D6570795464);
  v4 = TypeInstance.debugDescription.getter();
  MEMORY[0x1CCA81A90](v4);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8DF0AB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316038, &qword_1C9083800);
  result = sub_1C906493C();
  v3 = result;
  v4 = 0;
  v27 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v26 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v27 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v28 = *(*(v27 + 56) + 8 * v15);

      result = TypedValue.debugDescription.getter(v19);
      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      v21 = (v3[7] + 16 * v15);
      *v21 = result;
      v21[1] = v22;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C8DF0C34()
{
  result = qword_1EDA639C0;
  if (!qword_1EDA639C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639C0);
  }

  return result;
}

uint64_t sub_1C8DF0C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8DF0CF8()
{
  result = qword_1EDA66AC0;
  if (!qword_1EDA66AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AC0);
  }

  return result;
}

unint64_t sub_1C8DF0D4C()
{
  result = qword_1EC315550;
  if (!qword_1EC315550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315550);
  }

  return result;
}

unint64_t sub_1C8DF0DA0()
{
  result = qword_1EC315578;
  if (!qword_1EC315578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315578);
  }

  return result;
}

unint64_t sub_1C8DF0DF4()
{
  result = qword_1EC315580;
  if (!qword_1EC315580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315580);
  }

  return result;
}

unint64_t sub_1C8DF0E48()
{
  result = qword_1EC315590;
  if (!qword_1EC315590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315590);
  }

  return result;
}

unint64_t sub_1C8DF0E9C()
{
  result = qword_1EDA66AA8;
  if (!qword_1EDA66AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AA8);
  }

  return result;
}

unint64_t sub_1C8DF0EF0()
{
  result = qword_1EC3155B8;
  if (!qword_1EC3155B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3155B8);
  }

  return result;
}

unint64_t sub_1C8DF0F44()
{
  result = qword_1EC3155C8;
  if (!qword_1EC3155C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3155C8);
  }

  return result;
}

unint64_t sub_1C8DF0F98()
{
  result = qword_1EDA63A08;
  if (!qword_1EDA63A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63A08);
  }

  return result;
}

unint64_t sub_1C8DF0FEC()
{
  result = qword_1EC3155F0;
  if (!qword_1EC3155F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3155F0);
  }

  return result;
}

unint64_t sub_1C8DF1040()
{
  result = qword_1EC315660;
  if (!qword_1EC315660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315660);
  }

  return result;
}

unint64_t sub_1C8DF1094()
{
  result = qword_1EC315668;
  if (!qword_1EC315668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315668);
  }

  return result;
}

unint64_t sub_1C8DF10E8()
{
  result = qword_1EC315670;
  if (!qword_1EC315670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315670);
  }

  return result;
}

unint64_t sub_1C8DF113C()
{
  result = qword_1EC315678;
  if (!qword_1EC315678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315678);
  }

  return result;
}

unint64_t sub_1C8DF1190()
{
  result = qword_1EC315680;
  if (!qword_1EC315680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315680);
  }

  return result;
}

unint64_t sub_1C8DF11E4()
{
  result = qword_1EC315688;
  if (!qword_1EC315688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315688);
  }

  return result;
}

unint64_t sub_1C8DF1238()
{
  result = qword_1EC315690;
  if (!qword_1EC315690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315690);
  }

  return result;
}

unint64_t sub_1C8DF128C()
{
  result = qword_1EC315698;
  if (!qword_1EC315698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315698);
  }

  return result;
}

unint64_t sub_1C8DF12E0()
{
  result = qword_1EC3156A0;
  if (!qword_1EC3156A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3156A0);
  }

  return result;
}

unint64_t sub_1C8DF1334()
{
  result = qword_1EC3156A8;
  if (!qword_1EC3156A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3156A8);
  }

  return result;
}

unint64_t sub_1C8DF1388()
{
  result = qword_1EC315708;
  if (!qword_1EC315708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315708);
  }

  return result;
}

unint64_t sub_1C8DF13DC()
{
  result = qword_1EC315710;
  if (!qword_1EC315710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315710);
  }

  return result;
}

unint64_t sub_1C8DF1430()
{
  result = qword_1EC315720;
  if (!qword_1EC315720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315720);
  }

  return result;
}

unint64_t sub_1C8DF1484()
{
  result = qword_1EDA63A20;
  if (!qword_1EDA63A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63A20);
  }

  return result;
}

unint64_t sub_1C8DF14D8()
{
  result = qword_1EC315808;
  if (!qword_1EC315808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315808);
  }

  return result;
}

unint64_t sub_1C8DF152C()
{
  result = qword_1EC315810;
  if (!qword_1EC315810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315810);
  }

  return result;
}

unint64_t sub_1C8DF1580()
{
  result = qword_1EC315820;
  if (!qword_1EC315820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315820);
  }

  return result;
}

unint64_t sub_1C8DF15D4()
{
  result = qword_1EC315828;
  if (!qword_1EC315828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315828);
  }

  return result;
}

unint64_t sub_1C8DF1628()
{
  result = qword_1EC315838;
  if (!qword_1EC315838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315838);
  }

  return result;
}

unint64_t sub_1C8DF167C()
{
  result = qword_1EC315848;
  if (!qword_1EC315848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315848);
  }

  return result;
}

unint64_t sub_1C8DF16D0()
{
  result = qword_1EC315858;
  if (!qword_1EC315858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315858);
  }

  return result;
}

unint64_t sub_1C8DF1724()
{
  result = qword_1EDA66A88;
  if (!qword_1EDA66A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A88);
  }

  return result;
}

unint64_t sub_1C8DF1778()
{
  result = qword_1EDA639E0;
  if (!qword_1EDA639E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639E0);
  }

  return result;
}

unint64_t sub_1C8DF17CC()
{
  result = qword_1EDA639D0;
  if (!qword_1EDA639D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639D0);
  }

  return result;
}

unint64_t sub_1C8DF1820()
{
  result = qword_1EDA66A70;
  if (!qword_1EDA66A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A70);
  }

  return result;
}

unint64_t sub_1C8DF1874()
{
  result = qword_1EC315870;
  if (!qword_1EC315870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315870);
  }

  return result;
}

unint64_t sub_1C8DF18C8()
{
  result = qword_1EC315880;
  if (!qword_1EC315880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315880);
  }

  return result;
}

unint64_t sub_1C8DF191C()
{
  result = qword_1EC315890;
  if (!qword_1EC315890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315890);
  }

  return result;
}

unint64_t sub_1C8DF1970()
{
  result = qword_1EC3158A0;
  if (!qword_1EC3158A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3158A0);
  }

  return result;
}

unint64_t sub_1C8DF19C4()
{
  result = qword_1EC3158A8;
  if (!qword_1EC3158A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3158A8);
  }

  return result;
}

unint64_t sub_1C8DF1A18()
{
  result = qword_1EDA66A58;
  if (!qword_1EDA66A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A58);
  }

  return result;
}

unint64_t sub_1C8DF1A6C()
{
  result = qword_1EC3158B0;
  if (!qword_1EC3158B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3158B0);
  }

  return result;
}

unint64_t sub_1C8DF1AC0()
{
  result = qword_1EDA6D640;
  if (!qword_1EDA6D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D640);
  }

  return result;
}

unint64_t sub_1C8DF1B14()
{
  result = qword_1EC3158C0;
  if (!qword_1EC3158C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3158C0);
  }

  return result;
}

unint64_t sub_1C8DF1B68()
{
  result = qword_1EDA6BA38[0];
  if (!qword_1EDA6BA38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6BA38);
  }

  return result;
}

unint64_t sub_1C8DF1BBC()
{
  result = qword_1EDA639E8;
  if (!qword_1EDA639E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639E8);
  }

  return result;
}

unint64_t sub_1C8DF1C10()
{
  result = qword_1EDA6D328;
  if (!qword_1EDA6D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D328);
  }

  return result;
}

unint64_t sub_1C8DF1C64()
{
  result = qword_1EDA6BAE8[0];
  if (!qword_1EDA6BAE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6BAE8);
  }

  return result;
}

unint64_t sub_1C8DF1CB8()
{
  result = qword_1EDA6A068[0];
  if (!qword_1EDA6A068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6A068);
  }

  return result;
}

unint64_t sub_1C8DF1D0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC315A30, &qword_1C907D7F8);
    v4();
    OUTLINED_FUNCTION_276();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8DF1D88()
{
  result = qword_1EC315A68;
  if (!qword_1EC315A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315A68);
  }

  return result;
}

unint64_t sub_1C8DF1DDC()
{
  result = qword_1EC315A80;
  if (!qword_1EC315A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315A80);
  }

  return result;
}

unint64_t sub_1C8DF1E30()
{
  result = qword_1EDA63A68[0];
  if (!qword_1EDA63A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA63A68);
  }

  return result;
}

unint64_t sub_1C8DF1E84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC316410, &qword_1C907D840);
    v4();
    OUTLINED_FUNCTION_181();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8DF1EF4()
{
  result = qword_1EC315AA8;
  if (!qword_1EC315AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315AA8);
  }

  return result;
}

unint64_t sub_1C8DF1F48()
{
  result = qword_1EC315AD8;
  if (!qword_1EC315AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315AD8);
  }

  return result;
}

unint64_t sub_1C8DF1F9C()
{
  result = qword_1EC315AE0;
  if (!qword_1EC315AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315AE0);
  }

  return result;
}

unint64_t sub_1C8DF1FF0()
{
  result = qword_1EC315AE8;
  if (!qword_1EC315AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315AE8);
  }

  return result;
}

unint64_t sub_1C8DF2044()
{
  result = qword_1EC315B10;
  if (!qword_1EC315B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315B10);
  }

  return result;
}

unint64_t sub_1C8DF2098()
{
  result = qword_1EC315B18;
  if (!qword_1EC315B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315B18);
  }

  return result;
}

unint64_t sub_1C8DF20EC()
{
  result = qword_1EC315B28;
  if (!qword_1EC315B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315B28);
  }

  return result;
}

unint64_t sub_1C8DF2140()
{
  result = qword_1EDA66AE0;
  if (!qword_1EDA66AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AE0);
  }

  return result;
}

unint64_t sub_1C8DF2194()
{
  result = qword_1EC315B90;
  if (!qword_1EC315B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315B90);
  }

  return result;
}

unint64_t sub_1C8DF21E8()
{
  result = qword_1EC315BA0;
  if (!qword_1EC315BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315BA0);
  }

  return result;
}

unint64_t sub_1C8DF223C()
{
  result = qword_1EC315BA8;
  if (!qword_1EC315BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315BA8);
  }

  return result;
}

unint64_t sub_1C8DF2290()
{
  result = qword_1EDA66A40;
  if (!qword_1EDA66A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A40);
  }

  return result;
}

unint64_t sub_1C8DF22E4()
{
  result = qword_1EC315BB0;
  if (!qword_1EC315BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315BB0);
  }

  return result;
}

unint64_t sub_1C8DF2338()
{
  result = qword_1EC315BB8;
  if (!qword_1EC315BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315BB8);
  }

  return result;
}

unint64_t sub_1C8DF238C()
{
  result = qword_1EC315BC0;
  if (!qword_1EC315BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315BC0);
  }

  return result;
}

unint64_t sub_1C8DF23E0()
{
  result = qword_1EDA639C8;
  if (!qword_1EDA639C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639C8);
  }

  return result;
}

unint64_t sub_1C8DF2434()
{
  result = qword_1EDA63A50;
  if (!qword_1EDA63A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63A50);
  }

  return result;
}

unint64_t sub_1C8DF2488()
{
  result = qword_1EDA6A050;
  if (!qword_1EDA6A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A050);
  }

  return result;
}

unint64_t sub_1C8DF24DC()
{
  result = qword_1EDA6BA00;
  if (!qword_1EDA6BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BA00);
  }

  return result;
}

unint64_t sub_1C8DF2530()
{
  result = qword_1EC315C28;
  if (!qword_1EC315C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315C28);
  }

  return result;
}

unint64_t sub_1C8DF2584()
{
  result = qword_1EC315C30;
  if (!qword_1EC315C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315C30);
  }

  return result;
}

unint64_t sub_1C8DF25D8()
{
  result = qword_1EDA60E30[0];
  if (!qword_1EDA60E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA60E30);
  }

  return result;
}

unint64_t sub_1C8DF2708()
{
  result = qword_1EC315C88;
  if (!qword_1EC315C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315C88);
  }

  return result;
}

unint64_t sub_1C8DF2838()
{
  result = qword_1EC315CA8;
  if (!qword_1EC315CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315CA8);
  }

  return result;
}

unint64_t sub_1C8DF2A40()
{
  result = qword_1EC315CE0;
  if (!qword_1EC315CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315CE0);
  }

  return result;
}

unint64_t sub_1C8DF2A98()
{
  result = qword_1EC315CE8;
  if (!qword_1EC315CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315CE8);
  }

  return result;
}

unint64_t sub_1C8DF2B38()
{
  result = qword_1EC315CF8;
  if (!qword_1EC315CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315CF8);
  }

  return result;
}

unint64_t sub_1C8DF2B90()
{
  result = qword_1EC315D00;
  if (!qword_1EC315D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D00);
  }

  return result;
}

unint64_t sub_1C8DF2C30()
{
  result = qword_1EDA6B9F8;
  if (!qword_1EDA6B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9F8);
  }

  return result;
}

void sub_1C8DF2CBC()
{
  type metadata accessor for Decimal(319);
  if (v0 <= 0x3F)
  {
    sub_1C9061FEC();
    if (v1 <= 0x3F)
    {
      sub_1C9061BAC();
      if (v2 <= 0x3F)
      {
        sub_1C9061EBC();
        if (v3 <= 0x3F)
        {
          sub_1C9061C0C();
          if (v4 <= 0x3F)
          {
            sub_1C8DF2F24(319, qword_1EDA6DEC8, &qword_1EDA6DAA8, 0x1E696AFD0, MEMORY[0x1E6968070]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for TypedValue.PrimitiveValue.PersonValue(319);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for TypedValue.PrimitiveValue.FileValue(319);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for TypedValue.PrimitiveValue.AppValue(319);
                        if (v11 <= 0x3F)
                        {
                          sub_1C8DF2F24(319, &qword_1EDA6D570, &qword_1EDA6D488, 0x1E6964E80, type metadata accessor for SecureCodable);
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for TypedValue.PrimitiveValue.Shortcut(319);
                            if (v13 <= 0x3F)
                            {
                              sub_1C90622FC();
                              if (v14 <= 0x3F)
                              {
                                sub_1C906194C();
                                if (v15 <= 0x3F)
                                {
                                  sub_1C9061D4C();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1C8DF2F24(319, &qword_1EDA6D568, &qword_1EDA6D470, 0x1E696E840, type metadata accessor for SecureCodable);
                                    if (v17 <= 0x3F)
                                    {
                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
            }
          }
        }
      }
    }
  }
}

void sub_1C8DF2F24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C8CB78AC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_37Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_38Tm()
{
  OUTLINED_FUNCTION_19_11();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v5 = OUTLINED_FUNCTION_108_1(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1C8DF30D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_244_1();
    return 0;
  }

  return result;
}

void sub_1C8DF3150()
{
  sub_1C8CD2534();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C8DF31C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8DF3214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C8DF3268(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1C8DF32FC()
{
  type metadata accessor for Decimal(319);
  if (v0 <= 0x3F)
  {
    sub_1C8CD2534();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8DF33B0()
{
  sub_1C8DF3444();
  if (v0 <= 0x3F)
  {
    sub_1C8CD2534();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8DF3444()
{
  if (!qword_1EDA6E558)
  {
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6E558);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_70Tm(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_179(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_21_0(*(a1 + *(a3 + 20)));
  }

  v8 = OUTLINED_FUNCTION_266_1();

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t __swift_store_extra_inhabitant_index_71Tm()
{
  OUTLINED_FUNCTION_44_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  result = OUTLINED_FUNCTION_179(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_313_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

void sub_1C8DF3620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_1C8CD2534();
  if (v9 <= 0x3F)
  {
    sub_1C8DF2F24(319, a4, a5, a6, type metadata accessor for SecureCodable);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_244_1();
    }
  }
}

void sub_1C8DF3708()
{
  sub_1C8DF3804();
  if (v0 <= 0x3F)
  {
    sub_1C8CD2534();
    if (v1 <= 0x3F)
    {
      sub_1C8DF3864(319, &qword_1EDA6D560, &qword_1EC315A38, &qword_1C907D800);
      if (v2 <= 0x3F)
      {
        sub_1C8DF3864(319, qword_1EDA6D160, &qword_1EC315A40, &qword_1C907D808);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C8DF3804()
{
  if (!qword_1EDA6D4A8)
  {
    v0 = sub_1C9063E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6D4A8);
    }
  }
}

void sub_1C8DF3864(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C906464C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C8DF3984(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_1C8DF39C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8DF3A28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_1C8DF3A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_110Tm()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v3 = OUTLINED_FUNCTION_78();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_111Tm()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v3 = OUTLINED_FUNCTION_85_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

_BYTE *storeEnumTagSinglePayload for TypedValue.EntityValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8DF40B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8DF4180(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8DF4250()
{
  result = qword_1EC315D08;
  if (!qword_1EC315D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D08);
  }

  return result;
}

unint64_t sub_1C8DF42A8()
{
  result = qword_1EC315D10;
  if (!qword_1EC315D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D10);
  }

  return result;
}

unint64_t sub_1C8DF4300()
{
  result = qword_1EC315D18;
  if (!qword_1EC315D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D18);
  }

  return result;
}

unint64_t sub_1C8DF4358()
{
  result = qword_1EC315D20;
  if (!qword_1EC315D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D20);
  }

  return result;
}

unint64_t sub_1C8DF43B0()
{
  result = qword_1EC315D28;
  if (!qword_1EC315D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D28);
  }

  return result;
}

unint64_t sub_1C8DF4408()
{
  result = qword_1EC315D30;
  if (!qword_1EC315D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D30);
  }

  return result;
}

unint64_t sub_1C8DF4460()
{
  result = qword_1EC315D38;
  if (!qword_1EC315D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D38);
  }

  return result;
}

unint64_t sub_1C8DF44B8()
{
  result = qword_1EC315D40;
  if (!qword_1EC315D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D40);
  }

  return result;
}

unint64_t sub_1C8DF4510()
{
  result = qword_1EC315D48;
  if (!qword_1EC315D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D48);
  }

  return result;
}

unint64_t sub_1C8DF4568()
{
  result = qword_1EC315D50;
  if (!qword_1EC315D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D50);
  }

  return result;
}

unint64_t sub_1C8DF45C0()
{
  result = qword_1EC315D58;
  if (!qword_1EC315D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D58);
  }

  return result;
}

unint64_t sub_1C8DF4618()
{
  result = qword_1EC315D60;
  if (!qword_1EC315D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D60);
  }

  return result;
}

unint64_t sub_1C8DF4670()
{
  result = qword_1EC315D68;
  if (!qword_1EC315D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D68);
  }

  return result;
}

unint64_t sub_1C8DF46C8()
{
  result = qword_1EC315D70;
  if (!qword_1EC315D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D70);
  }

  return result;
}

unint64_t sub_1C8DF4720()
{
  result = qword_1EC315D78;
  if (!qword_1EC315D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D78);
  }

  return result;
}

unint64_t sub_1C8DF4778()
{
  result = qword_1EC315D80;
  if (!qword_1EC315D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D80);
  }

  return result;
}

unint64_t sub_1C8DF47D0()
{
  result = qword_1EC315D88;
  if (!qword_1EC315D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D88);
  }

  return result;
}

unint64_t sub_1C8DF4828()
{
  result = qword_1EC315D90;
  if (!qword_1EC315D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D90);
  }

  return result;
}

unint64_t sub_1C8DF4880()
{
  result = qword_1EC315D98;
  if (!qword_1EC315D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315D98);
  }

  return result;
}

unint64_t sub_1C8DF48D8()
{
  result = qword_1EC315DA0;
  if (!qword_1EC315DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DA0);
  }

  return result;
}

unint64_t sub_1C8DF4930()
{
  result = qword_1EC315DA8;
  if (!qword_1EC315DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DA8);
  }

  return result;
}

unint64_t sub_1C8DF4988()
{
  result = qword_1EC315DB0;
  if (!qword_1EC315DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DB0);
  }

  return result;
}

unint64_t sub_1C8DF49E0()
{
  result = qword_1EC315DB8;
  if (!qword_1EC315DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DB8);
  }

  return result;
}

unint64_t sub_1C8DF4A38()
{
  result = qword_1EC315DC0;
  if (!qword_1EC315DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DC0);
  }

  return result;
}

unint64_t sub_1C8DF4A90()
{
  result = qword_1EC315DC8;
  if (!qword_1EC315DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DC8);
  }

  return result;
}

unint64_t sub_1C8DF4AE8()
{
  result = qword_1EC315DD0;
  if (!qword_1EC315DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DD0);
  }

  return result;
}

unint64_t sub_1C8DF4B40()
{
  result = qword_1EC315DD8;
  if (!qword_1EC315DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DD8);
  }

  return result;
}

unint64_t sub_1C8DF4B98()
{
  result = qword_1EC315DE0;
  if (!qword_1EC315DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DE0);
  }

  return result;
}

unint64_t sub_1C8DF4BF0()
{
  result = qword_1EC315DE8;
  if (!qword_1EC315DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DE8);
  }

  return result;
}

unint64_t sub_1C8DF4C48()
{
  result = qword_1EC315DF0;
  if (!qword_1EC315DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DF0);
  }

  return result;
}

unint64_t sub_1C8DF4CA0()
{
  result = qword_1EC315DF8;
  if (!qword_1EC315DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315DF8);
  }

  return result;
}

unint64_t sub_1C8DF4CF8()
{
  result = qword_1EC315E00;
  if (!qword_1EC315E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E00);
  }

  return result;
}

unint64_t sub_1C8DF4D50()
{
  result = qword_1EC315E08;
  if (!qword_1EC315E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E08);
  }

  return result;
}

unint64_t sub_1C8DF4DA8()
{
  result = qword_1EC315E10;
  if (!qword_1EC315E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E10);
  }

  return result;
}

unint64_t sub_1C8DF4E00()
{
  result = qword_1EC315E18;
  if (!qword_1EC315E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E18);
  }

  return result;
}

unint64_t sub_1C8DF4E58()
{
  result = qword_1EC315E20;
  if (!qword_1EC315E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E20);
  }

  return result;
}

unint64_t sub_1C8DF4EB0()
{
  result = qword_1EC315E28;
  if (!qword_1EC315E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E28);
  }

  return result;
}

unint64_t sub_1C8DF4F08()
{
  result = qword_1EC315E30;
  if (!qword_1EC315E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E30);
  }

  return result;
}

unint64_t sub_1C8DF4F60()
{
  result = qword_1EC315E38;
  if (!qword_1EC315E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E38);
  }

  return result;
}

unint64_t sub_1C8DF4FB8()
{
  result = qword_1EC315E40;
  if (!qword_1EC315E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E40);
  }

  return result;
}

unint64_t sub_1C8DF5010()
{
  result = qword_1EC315E48;
  if (!qword_1EC315E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E48);
  }

  return result;
}

unint64_t sub_1C8DF5068()
{
  result = qword_1EC315E50;
  if (!qword_1EC315E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E50);
  }

  return result;
}

unint64_t sub_1C8DF50C0()
{
  result = qword_1EC315E58;
  if (!qword_1EC315E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E58);
  }

  return result;
}

unint64_t sub_1C8DF5118()
{
  result = qword_1EC315E60;
  if (!qword_1EC315E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E60);
  }

  return result;
}

unint64_t sub_1C8DF5170()
{
  result = qword_1EC315E68;
  if (!qword_1EC315E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E68);
  }

  return result;
}

unint64_t sub_1C8DF51C8()
{
  result = qword_1EC315E70;
  if (!qword_1EC315E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E70);
  }

  return result;
}

unint64_t sub_1C8DF5220()
{
  result = qword_1EC315E78;
  if (!qword_1EC315E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E78);
  }

  return result;
}

unint64_t sub_1C8DF5278()
{
  result = qword_1EC315E80;
  if (!qword_1EC315E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E80);
  }

  return result;
}

unint64_t sub_1C8DF52D0()
{
  result = qword_1EC315E88;
  if (!qword_1EC315E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E88);
  }

  return result;
}

unint64_t sub_1C8DF5328()
{
  result = qword_1EC315E90;
  if (!qword_1EC315E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E90);
  }

  return result;
}

unint64_t sub_1C8DF5380()
{
  result = qword_1EC315E98;
  if (!qword_1EC315E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315E98);
  }

  return result;
}

unint64_t sub_1C8DF53D8()
{
  result = qword_1EC315EA0;
  if (!qword_1EC315EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EA0);
  }

  return result;
}

unint64_t sub_1C8DF5430()
{
  result = qword_1EC315EA8;
  if (!qword_1EC315EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EA8);
  }

  return result;
}

unint64_t sub_1C8DF5488()
{
  result = qword_1EC315EB0;
  if (!qword_1EC315EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EB0);
  }

  return result;
}

unint64_t sub_1C8DF54E0()
{
  result = qword_1EC315EB8;
  if (!qword_1EC315EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EB8);
  }

  return result;
}

unint64_t sub_1C8DF5538()
{
  result = qword_1EC315EC0;
  if (!qword_1EC315EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EC0);
  }

  return result;
}

unint64_t sub_1C8DF5590()
{
  result = qword_1EDA6D5A8;
  if (!qword_1EDA6D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5A8);
  }

  return result;
}

unint64_t sub_1C8DF55E8()
{
  result = qword_1EDA6D5B0;
  if (!qword_1EDA6D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5B0);
  }

  return result;
}

unint64_t sub_1C8DF5640()
{
  result = qword_1EDA6D578;
  if (!qword_1EDA6D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D578);
  }

  return result;
}

unint64_t sub_1C8DF5698()
{
  result = qword_1EDA6D580;
  if (!qword_1EDA6D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D580);
  }

  return result;
}

unint64_t sub_1C8DF56F0()
{
  result = qword_1EDA6D5C0;
  if (!qword_1EDA6D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5C0);
  }

  return result;
}

unint64_t sub_1C8DF5748()
{
  result = qword_1EDA6D5C8;
  if (!qword_1EDA6D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5C8);
  }

  return result;
}

unint64_t sub_1C8DF57A0()
{
  result = qword_1EDA6D588;
  if (!qword_1EDA6D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D588);
  }

  return result;
}

unint64_t sub_1C8DF57F8()
{
  result = qword_1EDA6D590;
  if (!qword_1EDA6D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D590);
  }

  return result;
}

unint64_t sub_1C8DF5850()
{
  result = qword_1EDA6D5D0;
  if (!qword_1EDA6D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5D0);
  }

  return result;
}

unint64_t sub_1C8DF58A8()
{
  result = qword_1EDA6D5D8;
  if (!qword_1EDA6D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5D8);
  }

  return result;
}

unint64_t sub_1C8DF5900()
{
  result = qword_1EDA6D1F8;
  if (!qword_1EDA6D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D1F8);
  }

  return result;
}

unint64_t sub_1C8DF5958()
{
  result = qword_1EDA6D200[0];
  if (!qword_1EDA6D200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6D200);
  }

  return result;
}

unint64_t sub_1C8DF59B0()
{
  result = qword_1EDA6D1E8;
  if (!qword_1EDA6D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D1E8);
  }

  return result;
}

unint64_t sub_1C8DF5A08()
{
  result = qword_1EDA6D1F0;
  if (!qword_1EDA6D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D1F0);
  }

  return result;
}

unint64_t sub_1C8DF5A60()
{
  result = qword_1EDA6D598;
  if (!qword_1EDA6D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D598);
  }

  return result;
}

unint64_t sub_1C8DF5AB8()
{
  result = qword_1EDA6D5A0;
  if (!qword_1EDA6D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5A0);
  }

  return result;
}

unint64_t sub_1C8DF5B10()
{
  result = qword_1EDA6BA08;
  if (!qword_1EDA6BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BA08);
  }

  return result;
}

unint64_t sub_1C8DF5B68()
{
  result = qword_1EDA6BA10;
  if (!qword_1EDA6BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BA10);
  }

  return result;
}

unint64_t sub_1C8DF5BC0()
{
  result = qword_1EDA6D5E0;
  if (!qword_1EDA6D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5E0);
  }

  return result;
}

unint64_t sub_1C8DF5C18()
{
  result = qword_1EDA6D5E8;
  if (!qword_1EDA6D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D5E8);
  }

  return result;
}

unint64_t sub_1C8DF5C70()
{
  result = qword_1EDA66AD0;
  if (!qword_1EDA66AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AD0);
  }

  return result;
}

unint64_t sub_1C8DF5CC8()
{
  result = qword_1EDA66AD8;
  if (!qword_1EDA66AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AD8);
  }

  return result;
}

unint64_t sub_1C8DF5D20()
{
  result = qword_1EC315EC8;
  if (!qword_1EC315EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EC8);
  }

  return result;
}

unint64_t sub_1C8DF5D78()
{
  result = qword_1EC315ED0;
  if (!qword_1EC315ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315ED0);
  }

  return result;
}

unint64_t sub_1C8DF5DD0()
{
  result = qword_1EC315ED8;
  if (!qword_1EC315ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315ED8);
  }

  return result;
}

unint64_t sub_1C8DF5E28()
{
  result = qword_1EC315EE0;
  if (!qword_1EC315EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EE0);
  }

  return result;
}

unint64_t sub_1C8DF5E80()
{
  result = qword_1EC315EE8;
  if (!qword_1EC315EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EE8);
  }

  return result;
}

unint64_t sub_1C8DF5ED8()
{
  result = qword_1EC315EF0;
  if (!qword_1EC315EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EF0);
  }

  return result;
}

unint64_t sub_1C8DF5F30()
{
  result = qword_1EC315EF8;
  if (!qword_1EC315EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315EF8);
  }

  return result;
}

unint64_t sub_1C8DF5F88()
{
  result = qword_1EC315F00;
  if (!qword_1EC315F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F00);
  }

  return result;
}

unint64_t sub_1C8DF5FE0()
{
  result = qword_1EC315F08;
  if (!qword_1EC315F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F08);
  }

  return result;
}

unint64_t sub_1C8DF6038()
{
  result = qword_1EC315F10;
  if (!qword_1EC315F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F10);
  }

  return result;
}

unint64_t sub_1C8DF6090()
{
  result = qword_1EDA63A58;
  if (!qword_1EDA63A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63A58);
  }

  return result;
}

unint64_t sub_1C8DF60E8()
{
  result = qword_1EDA63A60;
  if (!qword_1EDA63A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63A60);
  }

  return result;
}

unint64_t sub_1C8DF6140()
{
  result = qword_1EC315F18;
  if (!qword_1EC315F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F18);
  }

  return result;
}

unint64_t sub_1C8DF6198()
{
  result = qword_1EC315F20;
  if (!qword_1EC315F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F20);
  }

  return result;
}

unint64_t sub_1C8DF61F0()
{
  result = qword_1EC315F28;
  if (!qword_1EC315F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F28);
  }

  return result;
}

unint64_t sub_1C8DF6248()
{
  result = qword_1EC315F30;
  if (!qword_1EC315F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F30);
  }

  return result;
}

unint64_t sub_1C8DF62A0()
{
  result = qword_1EDA6A058;
  if (!qword_1EDA6A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A058);
  }

  return result;
}

unint64_t sub_1C8DF62F8()
{
  result = qword_1EDA6A060;
  if (!qword_1EDA6A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A060);
  }

  return result;
}

unint64_t sub_1C8DF6350()
{
  result = qword_1EDA6BAD8;
  if (!qword_1EDA6BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BAD8);
  }

  return result;
}

unint64_t sub_1C8DF63A8()
{
  result = qword_1EDA6BAE0;
  if (!qword_1EDA6BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BAE0);
  }

  return result;
}

unint64_t sub_1C8DF6400()
{
  result = qword_1EDA6D668;
  if (!qword_1EDA6D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D668);
  }

  return result;
}

unint64_t sub_1C8DF6458()
{
  result = qword_1EDA6D670;
  if (!qword_1EDA6D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D670);
  }

  return result;
}

unint64_t sub_1C8DF64B0()
{
  result = qword_1EDA6D688;
  if (!qword_1EDA6D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D688);
  }

  return result;
}

unint64_t sub_1C8DF6508()
{
  result = qword_1EDA6D690;
  if (!qword_1EDA6D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D690);
  }

  return result;
}

unint64_t sub_1C8DF6560()
{
  result = qword_1EDA6D330;
  if (!qword_1EDA6D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D330);
  }

  return result;
}

unint64_t sub_1C8DF65B8()
{
  result = qword_1EDA6D338;
  if (!qword_1EDA6D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D338);
  }

  return result;
}

unint64_t sub_1C8DF6610()
{
  result = qword_1EDA6D658;
  if (!qword_1EDA6D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D658);
  }

  return result;
}

unint64_t sub_1C8DF6668()
{
  result = qword_1EDA6D660;
  if (!qword_1EDA6D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D660);
  }

  return result;
}

unint64_t sub_1C8DF66C0()
{
  result = qword_1EDA6D2F8;
  if (!qword_1EDA6D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2F8);
  }

  return result;
}

unint64_t sub_1C8DF6718()
{
  result = qword_1EDA6D300;
  if (!qword_1EDA6D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D300);
  }

  return result;
}

unint64_t sub_1C8DF6770()
{
  result = qword_1EDA6D650;
  if (!qword_1EDA6D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D650);
  }

  return result;
}

unint64_t sub_1C8DF67C8()
{
  result = qword_1EDA6D648;
  if (!qword_1EDA6D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D648);
  }

  return result;
}

unint64_t sub_1C8DF6820()
{
  result = qword_1EDA6D678;
  if (!qword_1EDA6D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D678);
  }

  return result;
}

unint64_t sub_1C8DF6878()
{
  result = qword_1EDA6D680;
  if (!qword_1EDA6D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D680);
  }

  return result;
}

unint64_t sub_1C8DF68D0()
{
  result = qword_1EDA6D630;
  if (!qword_1EDA6D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D630);
  }

  return result;
}

unint64_t sub_1C8DF6928()
{
  result = qword_1EDA6D638;
  if (!qword_1EDA6D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D638);
  }

  return result;
}

unint64_t sub_1C8DF6980()
{
  result = qword_1EDA6D698;
  if (!qword_1EDA6D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D698);
  }

  return result;
}

unint64_t sub_1C8DF69D8()
{
  result = qword_1EDA6D6A0;
  if (!qword_1EDA6D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D6A0);
  }

  return result;
}

unint64_t sub_1C8DF6A30()
{
  result = qword_1EDA6D628;
  if (!qword_1EDA6D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D628);
  }

  return result;
}

unint64_t sub_1C8DF6A88()
{
  result = qword_1EDA6D620;
  if (!qword_1EDA6D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D620);
  }

  return result;
}

unint64_t sub_1C8DF6AE0()
{
  result = qword_1EDA6D2C8;
  if (!qword_1EDA6D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2C8);
  }

  return result;
}

unint64_t sub_1C8DF6B38()
{
  result = qword_1EDA6D2D0;
  if (!qword_1EDA6D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2D0);
  }

  return result;
}

unint64_t sub_1C8DF6B90()
{
  result = qword_1EDA6D2A8;
  if (!qword_1EDA6D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2A8);
  }

  return result;
}

unint64_t sub_1C8DF6BE8()
{
  result = qword_1EDA6D2B0;
  if (!qword_1EDA6D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2B0);
  }

  return result;
}

unint64_t sub_1C8DF6C40()
{
  result = qword_1EDA6D2B8;
  if (!qword_1EDA6D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2B8);
  }

  return result;
}

unint64_t sub_1C8DF6C98()
{
  result = qword_1EDA6D2C0;
  if (!qword_1EDA6D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2C0);
  }

  return result;
}

unint64_t sub_1C8DF6CF0()
{
  result = qword_1EDA6D2E8;
  if (!qword_1EDA6D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2E8);
  }

  return result;
}

unint64_t sub_1C8DF6D48()
{
  result = qword_1EDA6D2F0;
  if (!qword_1EDA6D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2F0);
  }

  return result;
}

unint64_t sub_1C8DF6DA0()
{
  result = qword_1EDA6D308;
  if (!qword_1EDA6D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D308);
  }

  return result;
}

unint64_t sub_1C8DF6DF8()
{
  result = qword_1EDA6D310;
  if (!qword_1EDA6D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D310);
  }

  return result;
}

unint64_t sub_1C8DF6E50()
{
  result = qword_1EDA6D318;
  if (!qword_1EDA6D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D318);
  }

  return result;
}

unint64_t sub_1C8DF6EA8()
{
  result = qword_1EDA6D320;
  if (!qword_1EDA6D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D320);
  }

  return result;
}

unint64_t sub_1C8DF6F00()
{
  result = qword_1EDA6D340;
  if (!qword_1EDA6D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D340);
  }

  return result;
}

unint64_t sub_1C8DF6F58()
{
  result = qword_1EDA6D348[0];
  if (!qword_1EDA6D348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6D348);
  }

  return result;
}

unint64_t sub_1C8DF6FB0()
{
  result = qword_1EDA6D298;
  if (!qword_1EDA6D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D298);
  }

  return result;
}

unint64_t sub_1C8DF7008()
{
  result = qword_1EDA6D2A0;
  if (!qword_1EDA6D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2A0);
  }

  return result;
}

unint64_t sub_1C8DF7060()
{
  result = qword_1EDA6BA28;
  if (!qword_1EDA6BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BA28);
  }

  return result;
}

unint64_t sub_1C8DF70B8()
{
  result = qword_1EDA6BA30;
  if (!qword_1EDA6BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BA30);
  }

  return result;
}

unint64_t sub_1C8DF7110()
{
  result = qword_1EDA6BA18;
  if (!qword_1EDA6BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BA18);
  }

  return result;
}

unint64_t sub_1C8DF7168()
{
  result = qword_1EDA6BA20;
  if (!qword_1EDA6BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6BA20);
  }

  return result;
}

unint64_t sub_1C8DF71C0()
{
  result = qword_1EDA66A60;
  if (!qword_1EDA66A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A60);
  }

  return result;
}

unint64_t sub_1C8DF7218()
{
  result = qword_1EDA66A68;
  if (!qword_1EDA66A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A68);
  }

  return result;
}

unint64_t sub_1C8DF7270()
{
  result = qword_1EDA66A78;
  if (!qword_1EDA66A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A78);
  }

  return result;
}

unint64_t sub_1C8DF72C8()
{
  result = qword_1EDA66A80;
  if (!qword_1EDA66A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A80);
  }

  return result;
}

unint64_t sub_1C8DF7320()
{
  result = qword_1EDA66A48;
  if (!qword_1EDA66A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A48);
  }

  return result;
}

unint64_t sub_1C8DF7378()
{
  result = qword_1EDA66A50;
  if (!qword_1EDA66A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A50);
  }

  return result;
}

unint64_t sub_1C8DF73D0()
{
  result = qword_1EDA6D2D8;
  if (!qword_1EDA6D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2D8);
  }

  return result;
}

unint64_t sub_1C8DF7428()
{
  result = qword_1EDA6D2E0;
  if (!qword_1EDA6D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D2E0);
  }

  return result;
}

unint64_t sub_1C8DF7480()
{
  result = qword_1EDA6D6A8;
  if (!qword_1EDA6D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D6A8);
  }

  return result;
}

unint64_t sub_1C8DF74D8()
{
  result = qword_1EDA6D6B0;
  if (!qword_1EDA6D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D6B0);
  }

  return result;
}

unint64_t sub_1C8DF7530()
{
  result = qword_1EDA63A10;
  if (!qword_1EDA63A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63A10);
  }

  return result;
}

unint64_t sub_1C8DF7588()
{
  result = qword_1EDA63A18;
  if (!qword_1EDA63A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63A18);
  }

  return result;
}

unint64_t sub_1C8DF75E0()
{
  result = qword_1EC315F38;
  if (!qword_1EC315F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F38);
  }

  return result;
}

unint64_t sub_1C8DF7638()
{
  result = qword_1EC315F40;
  if (!qword_1EC315F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F40);
  }

  return result;
}

unint64_t sub_1C8DF7690()
{
  result = qword_1EC315F48;
  if (!qword_1EC315F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F48);
  }

  return result;
}

unint64_t sub_1C8DF76E8()
{
  result = qword_1EC315F50;
  if (!qword_1EC315F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F50);
  }

  return result;
}

unint64_t sub_1C8DF7740()
{
  result = qword_1EC315F58;
  if (!qword_1EC315F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F58);
  }

  return result;
}

unint64_t sub_1C8DF7798()
{
  result = qword_1EC315F60;
  if (!qword_1EC315F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F60);
  }

  return result;
}

unint64_t sub_1C8DF77F0()
{
  result = qword_1EC315F68;
  if (!qword_1EC315F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F68);
  }

  return result;
}

unint64_t sub_1C8DF7848()
{
  result = qword_1EC315F70;
  if (!qword_1EC315F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F70);
  }

  return result;
}

unint64_t sub_1C8DF78A0()
{
  result = qword_1EC315F78;
  if (!qword_1EC315F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F78);
  }

  return result;
}

unint64_t sub_1C8DF78F8()
{
  result = qword_1EC315F80;
  if (!qword_1EC315F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F80);
  }

  return result;
}

unint64_t sub_1C8DF7950()
{
  result = qword_1EC315F88;
  if (!qword_1EC315F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F88);
  }

  return result;
}

unint64_t sub_1C8DF79A8()
{
  result = qword_1EC315F90;
  if (!qword_1EC315F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F90);
  }

  return result;
}

unint64_t sub_1C8DF7A00()
{
  result = qword_1EC315F98;
  if (!qword_1EC315F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315F98);
  }

  return result;
}

unint64_t sub_1C8DF7A58()
{
  result = qword_1EC315FA0;
  if (!qword_1EC315FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FA0);
  }

  return result;
}

unint64_t sub_1C8DF7AB0()
{
  result = qword_1EC315FA8;
  if (!qword_1EC315FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FA8);
  }

  return result;
}

unint64_t sub_1C8DF7B08()
{
  result = qword_1EC315FB0;
  if (!qword_1EC315FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FB0);
  }

  return result;
}

unint64_t sub_1C8DF7B60()
{
  result = qword_1EC315FB8;
  if (!qword_1EC315FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FB8);
  }

  return result;
}

unint64_t sub_1C8DF7BB8()
{
  result = qword_1EC315FC0;
  if (!qword_1EC315FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FC0);
  }

  return result;
}

unint64_t sub_1C8DF7C10()
{
  result = qword_1EC315FC8;
  if (!qword_1EC315FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FC8);
  }

  return result;
}

unint64_t sub_1C8DF7C68()
{
  result = qword_1EC315FD0;
  if (!qword_1EC315FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FD0);
  }

  return result;
}

unint64_t sub_1C8DF7CC0()
{
  result = qword_1EC315FD8;
  if (!qword_1EC315FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FD8);
  }

  return result;
}

unint64_t sub_1C8DF7D18()
{
  result = qword_1EC315FE0;
  if (!qword_1EC315FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FE0);
  }

  return result;
}

unint64_t sub_1C8DF7D70()
{
  result = qword_1EC315FE8;
  if (!qword_1EC315FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FE8);
  }

  return result;
}

unint64_t sub_1C8DF7DC8()
{
  result = qword_1EC315FF0;
  if (!qword_1EC315FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FF0);
  }

  return result;
}

unint64_t sub_1C8DF7E20()
{
  result = qword_1EDA639F8;
  if (!qword_1EDA639F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639F8);
  }

  return result;
}

unint64_t sub_1C8DF7E78()
{
  result = qword_1EDA63A00;
  if (!qword_1EDA63A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63A00);
  }

  return result;
}

unint64_t sub_1C8DF7ED0()
{
  result = qword_1EDA66A98;
  if (!qword_1EDA66A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A98);
  }

  return result;
}

unint64_t sub_1C8DF7F28()
{
  result = qword_1EDA66AA0;
  if (!qword_1EDA66AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AA0);
  }

  return result;
}

unint64_t sub_1C8DF7F80()
{
  result = qword_1EC315FF8;
  if (!qword_1EC315FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315FF8);
  }

  return result;
}

unint64_t sub_1C8DF7FD8()
{
  result = qword_1EC316000;
  if (!qword_1EC316000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316000);
  }

  return result;
}

unint64_t sub_1C8DF8030()
{
  result = qword_1EC316008;
  if (!qword_1EC316008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316008);
  }

  return result;
}

unint64_t sub_1C8DF8088()
{
  result = qword_1EC316010;
  if (!qword_1EC316010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316010);
  }

  return result;
}

unint64_t sub_1C8DF80E0()
{
  result = qword_1EC316018;
  if (!qword_1EC316018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316018);
  }

  return result;
}

unint64_t sub_1C8DF8138()
{
  result = qword_1EC316020;
  if (!qword_1EC316020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316020);
  }

  return result;
}

unint64_t sub_1C8DF8190()
{
  result = qword_1EC316028;
  if (!qword_1EC316028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316028);
  }

  return result;
}

unint64_t sub_1C8DF81E8()
{
  result = qword_1EC316030;
  if (!qword_1EC316030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316030);
  }

  return result;
}

unint64_t sub_1C8DF8240()
{
  result = qword_1EDA66AB0;
  if (!qword_1EDA66AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AB0);
  }

  return result;
}

unint64_t sub_1C8DF8298()
{
  result = qword_1EDA66AB8;
  if (!qword_1EDA66AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66AB8);
  }

  return result;
}

unint64_t sub_1C8DF82F0()
{
  result = qword_1EDA639B0;
  if (!qword_1EDA639B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639B0);
  }

  return result;
}

unint64_t sub_1C8DF8348()
{
  result = qword_1EDA639B8;
  if (!qword_1EDA639B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA639B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_16@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 184);
  v4 = *(v1 - 176);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_79_3()
{
  v2 = *(v0 - 112);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_82_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 160);

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_140_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 160);

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_229_1()
{
  v2 = *(v0 - 104);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_244_1()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_253_1()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_254_0()
{
  v2 = *(v0 - 136);

  return sub_1C8CCEB64();
}

uint64_t OUTLINED_FUNCTION_262_1()
{

  return type metadata accessor for DisplayRepresentation(0);
}

uint64_t OUTLINED_FUNCTION_265_0(uint64_t result)
{
  v2 = (v1 + *(result + 20));
  v3 = *v2;
  v4 = v2[1];
  return result;
}

void OUTLINED_FUNCTION_278_1()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = -1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = -1;
}

uint64_t OUTLINED_FUNCTION_285_1()
{
  result = type metadata accessor for TypedValue.QueryValue(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_288_1()
{
  v3 = *(v0 - 96);
  v2 = *(v0 - 88);
  *(v0 - 65) = 0;

  return sub_1C9064A0C();
}

unint64_t OUTLINED_FUNCTION_290_1(uint64_t a1)
{

  return sub_1C8D24EA8(a1);
}

id OUTLINED_FUNCTION_292_1(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 20));
  *(v2 - 80) = v4;
  *(v2 - 81) = 1;

  return v4;
}

uint64_t OUTLINED_FUNCTION_293_1()
{

  return sub_1C9064C2C();
}

unint64_t OUTLINED_FUNCTION_294_1()
{
  *(v1 - 72) = *v0;
  *(v1 - 73) = 0;

  return sub_1C8C9FB9C();
}

uint64_t OUTLINED_FUNCTION_295_0()
{
}

uint64_t OUTLINED_FUNCTION_303_1()
{

  return sub_1C9064DEC();
}

uint64_t OUTLINED_FUNCTION_305_0()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_306_1()
{

  return swift_projectBox();
}

void OUTLINED_FUNCTION_325_1()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_339_1()
{
  v2 = *v1;
  v3 = v1[1];
  return v0;
}

uint64_t OUTLINED_FUNCTION_340_1(uint64_t a1)
{
  v5 = *(v3 + 48);
  v6 = v2 + *(a1 + 24);

  return sub_1C8DF0C88(v6, v1);
}

uint64_t OUTLINED_FUNCTION_342_1()
{
  *(v2 - 72) = *v1;

  return TypeIdentifier.hash(into:)(v0);
}

uint64_t OUTLINED_FUNCTION_343_1(uint64_t a1)
{
  v4 = v2 + *(a1 + 28);

  return sub_1C8D60F48(v1, v4);
}

uint64_t OUTLINED_FUNCTION_345_1()
{
}

void OUTLINED_FUNCTION_346_1()
{

  DisplayRepresentation.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_348_1()
{

  return sub_1C8CCEB64();
}

uint64_t sub_1C8DF8B38(uint64_t a1)
{
  v2 = sub_1C8DF8CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DF8B74(uint64_t a1)
{
  v2 = sub_1C8DF8CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AllPredicate.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316040, &qword_1C9083808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DF8CC4();
  sub_1C9064E1C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1C8DF8CC4()
{
  result = qword_1EDA638B8[0];
  if (!qword_1EDA638B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA638B8);
  }

  return result;
}

unint64_t sub_1C8DF8DA4(void *a1)
{
  a1[1] = sub_1C8DF8DE4();
  a1[2] = sub_1C8DCDE28();
  a1[3] = sub_1C8DCDA34();
  result = sub_1C8DF8E38();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8DF8DE4()
{
  result = qword_1EC316048;
  if (!qword_1EC316048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316048);
  }

  return result;
}

unint64_t sub_1C8DF8E38()
{
  result = qword_1EC316050;
  if (!qword_1EC316050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316050);
  }

  return result;
}

unint64_t sub_1C8DF8E90()
{
  result = qword_1EC316058;
  if (!qword_1EC316058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316058);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AllPredicate(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8DF8FD4()
{
  result = qword_1EDA638A8;
  if (!qword_1EDA638A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA638A8);
  }

  return result;
}

unint64_t sub_1C8DF902C()
{
  result = qword_1EDA638B0;
  if (!qword_1EDA638B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA638B0);
  }

  return result;
}

void sub_1C8DF9080(uint64_t a1, uint64_t a2, const void *a3)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C8CAF09C();
    v31 = v36;
    v7 = sub_1C8D3F274(v5);
    v9 = v8;
    v10 = 0;
    v30 = v5 + 56;
    v24 = v5 + 64;
    v25 = v4;
    v26 = v3;
    v27 = v5;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v5 + 32))
      {
        v11 = v7 >> 6;
        if ((*(v30 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v5 + 36) != v6)
        {
          goto LABEL_28;
        }

        v29 = v6;
        v34 = *(*(v5 + 48) + 8 * v7);
        memcpy(__dst, v3, 0x61uLL);
        memcpy(v32, a3, 0x61uLL);
        TypeInstance.asSourced(from:attribution:)(&v35, __dst, v32);
        v12 = v35;
        v13 = v31;
        v36 = v31;
        v14 = *(v31 + 16);
        if (v14 >= *(v31 + 24) >> 1)
        {
          sub_1C8CAF09C();
          v13 = v36;
        }

        *(v13 + 16) = v14 + 1;
        *(v13 + 8 * v14 + 32) = v12;
        if (v9)
        {
          goto LABEL_32;
        }

        v3 = v26;
        v5 = v27;
        v15 = 1 << *(v27 + 32);
        if (v7 >= v15)
        {
          goto LABEL_29;
        }

        v16 = *(v30 + 8 * v11);
        if ((v16 & (1 << v7)) == 0)
        {
          goto LABEL_30;
        }

        v31 = v13;
        if (*(v27 + 36) != v29)
        {
          goto LABEL_31;
        }

        v17 = v16 & (-2 << (v7 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v18 = v25;
        }

        else
        {
          v19 = v11 << 6;
          v20 = v11 + 1;
          v21 = (v24 + 8 * v11);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1C8CAF698(v7, v29, 0);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_19;
            }
          }

          sub_1C8CAF698(v7, v29, 0);
LABEL_19:
          v18 = v25;
        }

        if (++v10 == v18)
        {
          sub_1C8CC15FC(v26);
          goto LABEL_25;
        }

        v9 = 0;
        v6 = *(v27 + 36);
        v7 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    sub_1C8CC15FC(a2);
LABEL_25:
    sub_1C8D16D78(a3, &qword_1EC312EF8, &unk_1C90839D0);
  }
}

uint64_t TypeIdentifier.asSourced(from:attribution:)@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, a1, 0x61uLL);
  OUTLINED_FUNCTION_16_16(v24);
  v5 = *v2;
  switch(*v2 >> 61)
  {
    case 1uLL:
      v16 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_50();
      v17 = swift_allocObject();
      v18 = v17;
      if (v16 >= 0x10)
      {
        v19 = *(v16 + 16);
        OUTLINED_FUNCTION_50();
        v20 = swift_allocObject();
        v22[0] = v19;
        v21 = OUTLINED_FUNCTION_100();
        result = TypeIdentifier.asSourced(from:attribution:)(v21);
        *(v18 + 16) = v20;
      }

      else
      {
        *(v17 + 16) = v16;
        result = sub_1C8D3F120(v16);
      }

      *a2 = v18 | 0x2000000000000000;
      break;
    case 2uLL:
      v11 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v12 = swift_allocObject();
      OUTLINED_FUNCTION_21_11(v12);
      OUTLINED_FUNCTION_16_16((v3 + 120));
      *(v3 + 224) = v11;
      *(v3 + 232) = v10;
      *a2 = v3 | 0x6000000000000000;
      sub_1C8CC1340(__dst, v22);
      sub_1C8DFBCF4(v24, v22, &qword_1EC312EF8, &unk_1C90839D0);

      break;
    case 3uLL:
      v14 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
      v13 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0xE8);
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_21_11(v15);
      OUTLINED_FUNCTION_16_16((v3 + 120));
      *(v3 + 224) = v14;
      *(v3 + 232) = v13;
      *a2 = v3 | 0x6000000000000000;

      sub_1C8CC1340(__dst, v22);
      result = sub_1C8DFBCF4(v24, v22, &qword_1EC312EF8, &unk_1C90839D0);
      break;
    case 4uLL:
      v8 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_2();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      *a2 = v9 | 0x8000000000000000;

      break;
    default:
      *a2 = v5;

      break;
  }

  return result;
}

unint64_t TypeIdentifier.BuiltInTypeIdentifier.asSourced(from:attribution:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (*v2 >= 0x10)
  {
    v7 = *(v4 + 16);
    OUTLINED_FUNCTION_50();
    v4 = swift_allocObject();
    result = TypeIdentifier.asSourced(from:attribution:)(a1, (v4 + 16));
  }

  else
  {
    result = sub_1C8D3F120(*v2);
  }

  *a2 = v4;
  return result;
}

void TypeInstance.asSourced(from:attribution:)(const void *a1@<X0>, unint64_t *a2@<X8>)
{
  memcpy(__dst, a1, 0x61uLL);
  OUTLINED_FUNCTION_16_16(__src);
  v5 = *v2;
  switch(*v2 >> 61)
  {
    case 1uLL:
      v42[0] = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = OUTLINED_FUNCTION_100();
      TypeInstance.asSourced(from:attribution:)(v27, v25, v26);
      return;
    case 2uLL:
      v16 = v5 & 0x1FFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      OUTLINED_FUNCTION_2();
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_4_23();
      TypeInstance.asSourced(from:attribution:)(v21, v19, v20);
      if ((~v18 & 0xF000000000000007) != 0)
      {
        v40 = v18;
        memcpy(v42, __dst, 0x61uLL);
        memcpy(v39, __src, 0x61uLL);

        TypedValue.asSourced(from:attribution:)(v42, v39, &v41);

        v18 = v41;
      }

      *(v3 + 24) = v18;
      v15 = v3 | 0x4000000000000000;
      goto LABEL_11;
    case 3uLL:
      v22 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_50();
      v23 = swift_allocObject();
      sub_1C8CC1340(__dst, v42);
      sub_1C8DFBCF4(__src, v42, &qword_1EC312EF8, &unk_1C90839D0);
      sub_1C8DF9080(v22, __dst, __src);
      sub_1C8CAF0D4();
      *(v23 + 16) = v24;
      v15 = v23 | 0x6000000000000000;
      goto LABEL_11;
    case 4uLL:
      v9 = v5 & 0x1FFFFFFFFFFFFFFFLL;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      OUTLINED_FUNCTION_2();
      v12 = swift_allocObject();
      v42[0] = v10;

      v13 = OUTLINED_FUNCTION_100();
      TypeIdentifier.asSourced(from:attribution:)(v13, v14);
      *(v12 + 24) = v11;
      v15 = v12 | 0x8000000000000000;
      goto LABEL_11;
    case 5uLL:
      v28 = v5 & 0x1FFFFFFFFFFFFFFFLL;
      v29 = *(v28 + 16);
      v30 = *(v28 + 24);
      OUTLINED_FUNCTION_2();
      v31 = swift_allocObject();
      v42[0] = v29;

      v32 = OUTLINED_FUNCTION_100();
      TypeInstance.asSourced(from:attribution:)(v34, v32, v33);
      *(v31 + 24) = v30;
      v15 = v31 | 0xA000000000000000;
      goto LABEL_11;
    case 6uLL:
      v35 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      v36 = OUTLINED_FUNCTION_4_23();
      TypeInstance.asSourced(from:attribution:)(v38, v36, v37);
      v15 = v3 | 0xC000000000000000;
LABEL_11:
      *a2 = v15;
      break;
    default:
      v6 = *(v5 + 16);
      OUTLINED_FUNCTION_50();
      swift_allocObject();
      v7 = OUTLINED_FUNCTION_4_23();
      TypeIdentifier.asSourced(from:attribution:)(v7, v8);
      *a2 = v3;
      break;
  }
}

uint64_t objectdestroy_5Tm()
{
  OUTLINED_FUNCTION_347_0();
  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void TypedValue.asSourced(from:attribution:)(const void *a1@<X0>, const void *a2@<X1>, unint64_t *a3@<X8>)
{
  v158 = a3;
  v153 = type metadata accessor for TypedValue.CodableValue(0);
  v6 = OUTLINED_FUNCTION_13_1(v153);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v154 = type metadata accessor for TypedValue.EntityIdentifierValue(0);
  v12 = OUTLINED_FUNCTION_13_1(v154);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_0(v16 - v15);
  v17 = type metadata accessor for Query();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_15();
  v21 = OUTLINED_FUNCTION_27_0(v20 - v19);
  Value = type metadata accessor for TypedValue.QueryValue(v21);
  v23 = OUTLINED_FUNCTION_13_1(Value);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v28 = (v27 - v26);
  v29 = type metadata accessor for TypedValue.EntityValue(0);
  v30 = OUTLINED_FUNCTION_13_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v35 = (v34 - v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = OUTLINED_FUNCTION_27_0(&v151 - v38);
  v40 = type metadata accessor for TypedValue.EnumerationValue(v39);
  v41 = OUTLINED_FUNCTION_13_1(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  v46 = (v45 - v44);
  v155 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v156 = a2;
  memcpy(v163, a2, sizeof(v163));
  v47 = *v3;
  switch(*v3 >> 60)
  {
    case 1uLL:
      v82 = swift_projectBox();
      sub_1C8CC578C(v82, v46, type metadata accessor for TypedValue.EnumerationValue);
      v83 = swift_allocBox();
      v85 = v84;
      v160 = *v46;

      OUTLINED_FUNCTION_6_19();

      v86 = v161;
      v88 = v46[1];
      v87 = v46[2];
      v89 = v157;
      sub_1C8DFBCF4(v46 + *(v40 + 24), v157, &qword_1EC312788, &unk_1C906A3A0);

      sub_1C8CC6B08(v46, type metadata accessor for TypedValue.EnumerationValue);
      *v85 = v86;
      v85[1] = v88;
      v85[2] = v87;
      sub_1C8D60F48(v89, v85 + *(v40 + 24));
      v55 = v83 | 0x1000000000000000;
      goto LABEL_26;
    case 2uLL:
      v56 = swift_projectBox();
      sub_1C8CC578C(v56, v35, type metadata accessor for TypedValue.EntityValue);
      v57 = swift_allocBox();
      v59 = v58;
      v160 = *v35;

      OUTLINED_FUNCTION_6_19();

      v60 = v161;
      v62 = v35[1];
      v61 = v35[2];
      v63 = v35[3];
      v64 = type metadata accessor for DisplayRepresentation(0);
      v65 = v157;
      __swift_storeEnumTagSinglePayload(v157, 1, 1, v64);
      v66 = *(v35 + v29[8]);
      v67 = v66;

      sub_1C8CC6B08(v35, type metadata accessor for TypedValue.EntityValue);
      *v59 = v60;
      v59[1] = v62;
      v59[2] = v61;
      v59[3] = v63;
      sub_1C8D60F48(v65, v59 + v29[7]);
      *(v59 + v29[8]) = v66;
      *(v59 + v29[9]) = 0;
      v55 = v57 | 0x2000000000000000;
      goto LABEL_26;
    case 3uLL:
      v69 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v70 = *(v68 + 16);
      if (v70)
      {
        v161 = MEMORY[0x1E69E7CC0];

        sub_1C8D097CC();
        v71 = v161;
        v72 = (v68 + 32);
        do
        {
          v73 = *v72++;
          v159 = v73;
          v74 = OUTLINED_FUNCTION_17_13();
          TypedValue.asSourced(from:attribution:)(v74);
          v75 = v160;
          v161 = v71;
          v77 = *(v71 + 16);
          v76 = *(v71 + 24);
          if (v77 >= v76 >> 1)
          {
            OUTLINED_FUNCTION_176(v76);
            sub_1C8D097CC();
            v71 = v161;
          }

          *(v71 + 16) = v77 + 1;
          *(v71 + 8 * v77 + 32) = v75;
          --v70;
        }

        while (v70);
      }

      else
      {

        v71 = MEMORY[0x1E69E7CC0];
      }

      v161 = v69;
      TypeInstance.typeIdentifiers.getter();
      v138 = v137;
      v139 = sub_1C8D3F274(v137);
      v141 = v140;
      v143 = v142;
      v144 = sub_1C8D39D78(v138);
      if (v143 & 1) != 0 || (v146)
      {
        goto LABEL_28;
      }

      if (v141 == v145)
      {
        if (v139 == v144)
        {

          v147 = swift_allocObject();
          *(v147 + 16) = 23;
        }

        else
        {
          sub_1C8D3F264(&v160, v139, v141, 0, v138);

          v147 = v160;
        }

        OUTLINED_FUNCTION_2();
        v148 = swift_allocObject();
        v160 = v147;
        OUTLINED_FUNCTION_6_19();

        v149 = v161;
        *(v148 + 24) = v71;
        OUTLINED_FUNCTION_50();
        v150 = swift_allocObject();
        *(v150 + 16) = v149;
        *(v148 + 16) = v150;
        v55 = v148 | 0x3000000000000000;
LABEL_26:
        *v158 = v55;
        OUTLINED_FUNCTION_163();
      }

      else
      {
        __break(1u);
LABEL_28:
        __break(1u);
      }

      return;
    case 4uLL:
      v49 = swift_projectBox();
      sub_1C8CC578C(v49, v28, type metadata accessor for TypedValue.QueryValue);
      v50 = swift_allocBox();
      v52 = v51;
      v160 = *v28;

      OUTLINED_FUNCTION_6_19();

      v53 = v161;
      v54 = v151;
      sub_1C8CC578C(v28 + *(Value + 20), v151, type metadata accessor for Query);
      sub_1C8CC6B08(v28, type metadata accessor for TypedValue.QueryValue);
      *v52 = v53;
      sub_1C8DFBDF4(v54, v52 + *(Value + 20), type metadata accessor for Query);
      v55 = v50 | 0x4000000000000000;
      goto LABEL_26;
    case 5uLL:
      v90 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v91 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v92 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v157 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v93 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v94 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v95 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v96 = swift_allocObject();
      v160 = v90;

      v97 = OUTLINED_FUNCTION_5_25();
      sub_1C8D4F44C(v97, v98, v99, v100, v101);

      v102 = v155;
      v103 = v156;
      TypeIdentifier.asSourced(from:attribution:)(v155, &v161);

      v154 = v161;
      v159 = v91;

      TypeInstance.asSourced(from:attribution:)(&v160, v102, v103);

      v104 = v160;
      v105 = v157;
      v106 = OUTLINED_FUNCTION_5_25();
      sub_1C8D4F44C(v106, v107, v108, v109, v110);

      v111 = OUTLINED_FUNCTION_5_25();
      sub_1C8D43CA8(v111, v112, v113, v114, v115);
      *(v96 + 16) = v154;
      *(v96 + 24) = v104;
      *(v96 + 32) = v105;
      *(v96 + 40) = v92;
      *(v96 + 48) = v93;
      *(v96 + 56) = v94;
      *(v96 + 64) = v95;
      v55 = v96 | 0x5000000000000000;
      goto LABEL_26;
    case 6uLL:
      v116 = swift_projectBox();
      v117 = v152;
      sub_1C8CC578C(v116, v152, type metadata accessor for TypedValue.EntityIdentifierValue);
      v118 = v154;
      v119 = swift_allocBox();
      v121 = v120;
      v160 = *v117;

      OUTLINED_FUNCTION_6_19();

      v122 = v161;
      v124 = v117[1];
      v123 = v117[2];
      v125 = v157;
      sub_1C8DFBCF4(v117 + *(v118 + 24), v157, &qword_1EC312788, &unk_1C906A3A0);

      sub_1C8CC6B08(v117, type metadata accessor for TypedValue.EntityIdentifierValue);
      *v121 = v122;
      v121[1] = v124;
      v121[2] = v123;
      sub_1C8D60F48(v125, v121 + *(v118 + 24));
      v55 = v119 | 0x6000000000000000;
      goto LABEL_26;
    case 7uLL:
      v78 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v79 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v80 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v81 = swift_allocObject();
      v160 = v78;
      swift_retain_n();

      TypeIdentifier.asSourced(from:attribution:)(v155, &v161);

      *(v81 + 16) = v161;
      *(v81 + 24) = v79;
      *(v81 + 32) = v80;

      v55 = v81 | 0x7000000000000000;
      goto LABEL_26;
    case 8uLL:
      v126 = swift_projectBox();
      sub_1C8CC578C(v126, v11, type metadata accessor for TypedValue.CodableValue);
      v127 = v153;
      v128 = swift_allocBox();
      v130 = v129;
      v132 = *v11;
      v131 = v11[1];
      v133 = v11[2];
      v134 = v11[3];

      sub_1C8CE9144(v133, v134);
      sub_1C8CC6B08(v11, type metadata accessor for TypedValue.CodableValue);
      v135 = *(v127 + 24);
      v136 = type metadata accessor for DisplayRepresentation(0);
      __swift_storeEnumTagSinglePayload(v130 + v135, 1, 1, v136);
      *v130 = v132;
      v130[1] = v131;
      v130[2] = v133;
      v130[3] = v134;
      v55 = v128 | 0x8000000000000000;
      goto LABEL_26;
    default:
      *v158 = v47;
      OUTLINED_FUNCTION_163();

      return;
  }
}

uint64_t ContainerDefinition.asAttributed(to:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 96);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
}

void ToolDefinition.asAttributed(to:)(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v130 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v132 = &v112 - v7;
  v8 = *a1;
  v9 = v3[25];
  v11 = v3[26];
  v10 = v3[27];
  v13 = v3[28];
  v12 = v3[29];
  v14 = v3[30];
  v15 = *(v3 + 248);
  v16 = *(v3 + 16);
  v17 = *(v3 + 288);
  v160[0] = v3[24];
  v160[1] = v9;
  v150 = v11;
  v151 = v13;
  v160[2] = v11;
  v160[3] = v10;
  v160[4] = v13;
  v160[5] = v12;
  v160[6] = v14;
  v161 = v15;
  v163 = v8;
  v162 = v16;
  v164 = v17;
  v18 = v3[38];
  v125 = v3[37];
  v126 = v18;
  v19 = v3[39];
  v123 = v3[40];
  v124 = v19;
  v21 = v3[41];
  v20 = v3[42];
  v22 = v3[43];
  v119 = *(v3 + 352);
  v23 = v3[45];
  v127 = v3[46];
  v128 = v23;
  v129 = *(v3 + 392);
  v24 = *(&v8 + 1);
  v120 = v22;
  v121 = v20;
  if (v18)
  {
    v148 = v8;
    v149 = v16;

    v117 = v148;
    v118 = v24;
  }

  else
  {
    v25 = v3[48];
    v117 = v3[47];
    v118 = v25;
    *(v159 + 3) = *(v3 + 89);
    v159[0] = *(v3 + 353);
  }

  v122 = v21;
  v26 = *v3;
  v115 = v3[1];
  v116 = v26;
  v27 = v3[2];
  v113 = v3[3];
  v114 = v27;
  HIDWORD(v112) = *(v3 + 32);
  v28 = v3[5];
  v29 = *(v28 + 16);
  v131 = v3;
  if (v29)
  {
    v158 = MEMORY[0x1E69E7CC0];

    sub_1C8D0971C(0, v29, 0);
    v30 = v158;
    v31 = (v28 + 32);
    do
    {
      v145 = v29;
      v147 = v30;
      v138 = v31;
      memcpy(v157, v31, sizeof(v157));
      v32 = v157[14];
      v150 = v157[15];
      v151 = v157[16];
      v33 = v157[10];
      v34 = v157[13];
      v133 = v157[12];
      v134 = v157[11];
      v35 = v157[9];
      v36 = v157[8];
      v142 = v157[6];
      v140 = v157[4];
      v37 = v157[5];
      v137 = v157[2];
      v38 = v157[3];
      v135 = v157[0];
      v39 = v157[1];
      v156 = v157[7];
      OUTLINED_FUNCTION_14_21(v155);
      OUTLINED_FUNCTION_11_18();

      v143 = v36;

      v136 = v39;

      v139 = v38;

      v141 = v37;

      v144 = v35;
      v40 = v35;
      v146 = v33;
      v41 = v33;
      v43 = v133;
      v42 = v134;
      sub_1C8D16DD0(v40, v41);
      *&v148 = v34;
      *&v149 = v32;
      sub_1C8DFBCB0(v34, v32);

      OUTLINED_FUNCTION_19_15();

      sub_1C8D072F0(v157);
      v30 = v147;
      v44 = v152[0];
      v158 = v147;
      v46 = *(v147 + 16);
      v45 = *(v147 + 24);
      if (v46 >= v45 >> 1)
      {
        v55 = OUTLINED_FUNCTION_176(v45);
        sub_1C8D0971C(v55, v46 + 1, 1);
        v30 = v158;
      }

      *(v30 + 16) = v46 + 1;
      v47 = (v30 + 136 * v46);
      v48 = v136;
      v47[4] = v135;
      v47[5] = v48;
      v49 = v139;
      v47[6] = v137;
      v47[7] = v49;
      v50 = v141;
      v47[8] = v140;
      v47[9] = v50;
      v51 = v143;
      v47[10] = v142;
      v47[11] = v44;
      v47[12] = v51;
      v52 = v146;
      v47[13] = v144;
      v47[14] = v52;
      v47[15] = v42;
      v47[16] = v43;
      v53 = v149;
      v47[17] = v148;
      v47[18] = v53;
      v47[19] = v150;
      v54 = v138 + 136;
      v47[20] = v151;
      v29 = v145 - 1;
      v31 = v54;
    }

    while (v145 != 1);
    v3 = v131;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v147 = v30;
  v56 = v3[6];
  v57 = *(v56 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C8D0971C(0, v57, 0);
    v58 = v158;
    v59 = (v56 + 32);
    do
    {
      v144 = v57;
      v141 = v59;
      memcpy(v157, v59, sizeof(v157));
      v150 = v157[14];
      v151 = v157[16];
      *&v149 = v157[15];
      v60 = v157[10];
      *&v148 = v157[13];
      v61 = v157[12];
      v62 = v157[9];
      v63 = v157[8];
      v139 = v157[4];
      v140 = v157[6];
      v64 = v157[5];
      v137 = v157[2];
      v65 = v157[3];
      v134 = v157[11];
      v135 = v157[0];
      v66 = v157[1];
      v156 = v157[7];
      OUTLINED_FUNCTION_14_21(v155);
      OUTLINED_FUNCTION_11_18();

      v142 = v63;
      v67 = v64;

      v136 = v66;

      v138 = v65;

      v143 = v62;
      v145 = v61;
      v146 = v60;
      v68 = v60;
      v69 = v134;
      sub_1C8D16DD0(v62, v68);
      sub_1C8DFBCB0(v148, v150);

      OUTLINED_FUNCTION_19_15();

      sub_1C8D072F0(v157);
      v70 = v152[0];
      v158 = v58;
      v72 = *(v58 + 16);
      v71 = *(v58 + 24);
      if (v72 >= v71 >> 1)
      {
        v82 = OUTLINED_FUNCTION_176(v71);
        sub_1C8D0971C(v82, v72 + 1, 1);
        v58 = v158;
      }

      *(v58 + 16) = v72 + 1;
      v73 = (v58 + 136 * v72);
      v74 = v136;
      v73[4] = v135;
      v73[5] = v74;
      v75 = v138;
      v73[6] = v137;
      v73[7] = v75;
      v76 = v140;
      v73[8] = v139;
      v73[9] = v67;
      v73[10] = v76;
      v73[11] = v70;
      v77 = v143;
      v73[12] = v142;
      v73[13] = v77;
      v78 = v145;
      v73[14] = v146;
      v73[15] = v69;
      v79 = v148;
      v73[16] = v78;
      v73[17] = v79;
      v80 = v149;
      v73[18] = v150;
      v73[19] = v80;
      v81 = v141 + 136;
      v73[20] = v151;
      v57 = v144 - 1;
      v59 = v81;
    }

    while (v144 != 1);
    v3 = v131;
  }

  v155[0] = v3[7];
  OUTLINED_FUNCTION_14_21(v157);
  v153 = 0;
  memset(v152, 0, sizeof(v152));

  TypeInstance.asSourced(from:attribution:)(v157, v154);

  v83 = v154[0];
  v84 = v3[8];
  v151 = v3[9];
  memcpy(v155, v3 + 51, 0x50uLL);
  v85 = type metadata accessor for ToolDefinition(0);
  sub_1C8DFBCF4(v3 + v85[16], v132, &qword_1EC3144B8, &qword_1C90839E0);
  v86 = v85[18];
  *&v148 = *(v3 + v85[17]);
  *&v149 = *(v3 + v86);
  v87 = v85[20];
  v88 = (v3 + v85[19]);
  v89 = *v88;
  v90 = v88[1];
  v91 = v88[3];
  v144 = v88[2];
  v145 = v89;
  v146 = *(v3 + v87);
  v92 = v85[22];
  v93 = *(v3 + v85[21]);
  v94 = v85[24];
  v95 = *(v3 + v85[23]);
  v136 = v91;
  v137 = v95;
  LODWORD(v140) = *(v3 + v92);
  v96 = *(v3 + v94 + 8);
  v142 = *(v3 + v94);
  v143 = v93;
  v141 = v96;
  v97 = *(v3 + v85[25]);
  v150 = *(v3 + v85[26]);
  v98 = *(v3 + v85[27]);
  v138 = v97;
  v139 = v98;
  v99 = v130;
  v100 = v115;
  *v130 = v116;
  v99[1] = v100;
  v101 = v113;
  v99[2] = v114;
  v99[3] = v101;
  *(v99 + 32) = BYTE4(v112);
  v99[5] = v147;
  v99[6] = v58;
  v99[7] = v83;
  v99[8] = v84;
  v99[9] = v151;
  OUTLINED_FUNCTION_14_21(v99 + 24);
  v102 = v126;
  v99[37] = v125;
  v99[38] = v102;
  v103 = v123;
  v99[39] = v124;
  v99[40] = v103;
  v104 = v121;
  v99[41] = v122;
  v99[42] = v104;
  v99[43] = v120;
  *(v99 + 352) = v119;
  *(v99 + 353) = v159[0];
  *(v99 + 89) = *(v159 + 3);
  v105 = v127;
  v99[45] = v128;
  v99[46] = v105;
  v106 = v118;
  v99[47] = v117;
  v99[48] = v106;
  *(v99 + 392) = v129;
  v99[50] = MEMORY[0x1E69E7CC0];
  memcpy(v99 + 51, v155, 0x50uLL);
  sub_1C8DFBCF4(v132, v99 + v85[16], &qword_1EC3144B8, &qword_1C90839E0);
  *(v99 + v85[17]) = v148;
  *(v99 + v85[18]) = v149;
  v107 = (v99 + v85[19]);
  v109 = v144;
  v108 = v145;
  *v107 = v145;
  v107[1] = v90;
  v107[2] = v109;
  v107[3] = v91;
  *(v99 + v85[20]) = v146;
  *(v99 + v85[21]) = v143;
  *(v99 + v85[23]) = v95;
  *(v99 + v85[22]) = v140;
  v110 = (v99 + v85[24]);
  v111 = v141;
  *v110 = v142;
  v110[1] = v111;
  *(v99 + v85[25]) = v138;
  *(v99 + v85[26]) = v150;
  *(v99 + v85[27]) = v139;
  OUTLINED_FUNCTION_14_21(v152);

  sub_1C8DFBD54(v155, v157);

  sub_1C8DFBDB0(v108, v90);

  sub_1C8CC1340(v160, v157);
  sub_1C8CC139C();
  sub_1C8D16D78(v132, &qword_1EC3144B8, &qword_1C90839E0);
  memcpy(v99 + 10, v157, 0x70uLL);
  OUTLINED_FUNCTION_163();
}

uint64_t ParameterDefinition.asSourced(from:attribution:)@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v23 = *v2;
  v4 = v2[3];
  v16 = v2[1];
  v21 = v2[4];
  v22 = v2[2];
  v5 = v2[7];
  v20 = v2[6];
  v6 = v2[9];
  v7 = v2[10];
  v17 = v2[11];
  v8 = v2[12];
  v18 = v2[8];
  v14 = v2[14];
  v15 = v2[13];
  v12 = v2[5];
  v13 = v2[15];
  v9 = v2[16];

  sub_1C8D16DD0(v6, v7);
  sub_1C8DFBCB0(v15, v14);

  TypeInstance.asSourced(from:attribution:)(a1, &v24);

  v11 = v24;
  *a2 = v23;
  a2[1] = v16;
  a2[2] = v22;
  a2[3] = v4;
  a2[4] = v21;
  a2[5] = v12;
  a2[6] = v20;
  a2[7] = v11;
  a2[14] = v14;
  a2[15] = v13;
  a2[16] = v9;
  a2[8] = v18;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v17;
  a2[12] = v8;
  a2[13] = v15;
  return result;
}

void TypeDefinition.asSourced(from:attribution:)(const void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  *__src = *v2;
  *&__src[8] = v3;
  *&__src[16] = v6;
  *&__src[24] = v5;
  *&__src[32] = v7;
  *&__src[40] = v8;
  *&__src[48] = v9;
  *&__src[56] = *(v2 + 7);
  *&__src[72] = *(v2 + 9);
  *&__src[81] = *(v2 + 81);
  switch(__src[96])
  {
    case 1:
      memcpy(__dst, __src, sizeof(__dst));
      v16 = OUTLINED_FUNCTION_100();
      EntityDefinition.asSourced(from:attribution:)(v16, v17, v18);
      memcpy(a2, v25, 0x60uLL);
      v12 = 1;
      goto LABEL_9;
    case 2:
      v22 = *&__src[64];
      v23 = *&__src[56];
      v21 = *&__src[72];
      __dst[0] = v4;

      TypeIdentifier.asSourced(from:attribution:)(a1, v25);

      *a2 = v25[0];
      a2[1] = v3;
      *(a2 + 16) = v6;
      a2[3] = v5;
      a2[4] = v7;
      a2[5] = v8;
      a2[6] = v9;
      a2[7] = v23;
      a2[8] = v22;
      a2[9] = v21;
      v12 = 2;
      goto LABEL_9;
    case 3:
      __dst[0] = v4;

      sub_1C8D3A7FC(&__src[8], v25);
      v13 = OUTLINED_FUNCTION_100();
      TypeIdentifier.asSourced(from:attribution:)(v13, v14);

      *a2 = v25[0];
      *(a2 + 1) = *&__src[8];
      *(a2 + 3) = *&__src[24];
      *(a2 + 5) = *&__src[40];
      v15 = MEMORY[0x1E69E7CC0];
      a2[7] = *&__src[56];
      a2[8] = v15;
      v12 = 3;
LABEL_9:
      *(a2 + 96) = v12;
      goto LABEL_10;
    case 4:
      OUTLINED_FUNCTION_2_34();

      OUTLINED_FUNCTION_18_13();

      return;
    case 5:
      OUTLINED_FUNCTION_2_34();

      OUTLINED_FUNCTION_18_13();

      return;
    default:
      OUTLINED_FUNCTION_2_34();
LABEL_10:
      OUTLINED_FUNCTION_18_13();
      return;
  }
}

double QueryDefinition.asSourced(from:attribution:)@<D0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 3);
  v11 = *(v2 + 1);
  v12 = v6;
  v13 = *(v2 + 5);
  v14 = v2[7];
  v10[7] = v5;

  sub_1C8D3A7FC(&v11, v10);
  TypeIdentifier.asSourced(from:attribution:)(a1, v10);

  *a2 = v10[0];
  v7 = v12;
  *(a2 + 8) = v11;
  *(a2 + 24) = v7;
  result = *&v13;
  *(a2 + 40) = v13;
  v9 = MEMORY[0x1E69E7CC0];
  *(a2 + 56) = v14;
  *(a2 + 64) = v9;
  return result;
}

uint64_t EntityDefinition.asSourced(from:attribution:)@<X0>(void *__src@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v44, a2, sizeof(v44));
  v37 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v34 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v13 = v3[8];
  v12 = v3[9];
  v32 = v3[11];
  v41 = *v3;
  v35 = v10;

  v33 = v11;

  v36 = v9;

  TypeIdentifier.asSourced(from:attribution:)(__src, &v42);

  v15 = v42;
  v16 = *(v37 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v27 = v42;
    v28 = v13;
    v29 = v8;
    v30 = v7;
    v31 = a3;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C8D09884(0, v16, 0);
    v17 = v41;
    v18 = (v37 + 64);
    do
    {
      v19 = *(v18 - 4);
      v20 = *(v18 - 3);
      v21 = *(v18 - 1);
      v38 = *(v18 - 2);
      v39 = *v18;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      TypeInstance.asSourced(from:attribution:)(__dst, &v40);

      v22 = v40;
      v41 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_176(v23);
        result = sub_1C8D09884(v26, v24 + 1, 1);
        v17 = v41;
      }

      v18 += 5;
      *(v17 + 16) = v24 + 1;
      v25 = (v17 + 40 * v24);
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v38;
      v25[7] = v21;
      v25[8] = v22;
      --v16;
    }

    while (v16);
    v7 = v30;
    a3 = v31;
    v13 = v28;
    v8 = v29;
    v15 = v27;
  }

  *a3 = v15;
  a3[1] = v17;
  a3[4] = v36;
  a3[5] = v34;
  a3[6] = v35;
  a3[7] = v33;
  a3[10] = 0;
  a3[11] = v32;
  a3[2] = v7;
  a3[3] = v8;
  a3[8] = v13;
  a3[9] = v12;
  return result;
}

uint64_t EnumerationDefinition.asSourced(from:attribution:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v14 = *(v2 + 16);
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[6];
  v13 = v2[5];
  v9 = v2[8];
  v12 = v2[7];
  v10 = v2[9];
  v15 = *v2;

  TypeIdentifier.asSourced(from:attribution:)(a1, &v16);

  *a2 = v16;
  *(a2 + 8) = v5;
  *(a2 + 16) = v14;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v13;
  *(a2 + 48) = v8;
  *(a2 + 56) = v12;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  return result;
}

uint64_t EntityPropertyDefinition.asSourced(from:attribution:)@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v11 = v2[4];

  TypeInstance.asSourced(from:attribution:)(a1, &v12);

  v10 = v12;
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v10;
  return result;
}

void QueryDefinition.PredicateTemplates.asSourced(from:attribution:)(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v59 = type metadata accessor for ComparisonPredicate.Template(0);
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  OUTLINED_FUNCTION_16_16(v74);
  memcpy(__dst, a1, sizeof(__dst));
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 9);
  v15 = *(v2 + 10);
  v16 = *(v2 + 11);
  v17 = *(v2 + 12);
  v18 = *(v2 + 13);
  v19 = v2[2];
  v20 = v2[3];
  v21 = v2[4];
  v22 = v2[5];
  v23 = *(*v2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v46 = v18;
    v47 = v17;
    v48 = v16;
    v49 = v15;
    v50 = v14;
    v51 = v13;
    v52 = v22;
    v53 = v21;
    v54 = v20;
    v55 = v19;
    v56 = a2;
    v73 = MEMORY[0x1E69E7CC0];
    sub_1C8D09C94(0, v23, 0);
    v24 = v73;
    v58 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v25 = v12 + v58;
    v57 = *(v5 + 72);
    do
    {
      v66 = v24;
      v67 = v23;
      sub_1C8CC578C(v25, v8, type metadata accessor for ComparisonPredicate.Template);
      v26 = v59;
      v27 = &v8[*(v59 + 28)];
      v28 = *v27;
      v63 = *(v27 + 1);
      v29 = *(v27 + 3);
      v62 = *(v27 + 2);
      v30 = *(v8 + 1);
      v65 = *v8;
      v61 = v30;
      v31 = *(v8 + 3);
      v64 = *(v8 + 2);
      v32 = v27[32];
      v71 = *(v8 + 4);
      sub_1C8D06F98(v28, v63, v62, v29, v32);

      v33 = OUTLINED_FUNCTION_17_13();
      TypeInstance.asSourced(from:attribution:)(v33, v34);

      v60 = v72;
      v35 = *(v8 + 5);
      v36 = *(v26 + 24);
      v37 = sub_1C906204C();
      OUTLINED_FUNCTION_13_1(v37);
      (*(v38 + 16))(&v11[v36], &v8[v36]);
      sub_1C8D076FC(v35);
      sub_1C8CC6B08(v8, type metadata accessor for ComparisonPredicate.Template);
      v39 = &v11[*(v26 + 28)];
      v40 = v63;
      *v39 = v28;
      *(v39 + 1) = v40;
      *(v39 + 2) = v62;
      *(v39 + 3) = v29;
      v39[32] = v32;
      v41 = v61;
      *v11 = v65;
      *(v11 + 1) = v41;
      *(v11 + 2) = v64;
      *(v11 + 3) = v31;
      *(v11 + 4) = v60;
      *(v11 + 5) = v35;
      v24 = v66;
      v73 = v66;
      v43 = *(v66 + 16);
      v42 = *(v66 + 24);
      if (v43 >= v42 >> 1)
      {
        v45 = OUTLINED_FUNCTION_176(v42);
        sub_1C8D09C94(v45, v43 + 1, 1);
        v24 = v73;
      }

      *(v24 + 16) = v43 + 1;
      v44 = v57;
      sub_1C8DFBDF4(v11, v24 + v58 + v43 * v57, type metadata accessor for ComparisonPredicate.Template);
      v25 += v44;
      v23 = v67 - 1;
    }

    while (v67 != 1);
    a2 = v56;
    v19 = v55;
    v20 = v54;
    v21 = v53;
    v22 = v52;
    LOBYTE(v13) = v51;
    LOBYTE(v14) = v50;
    LOBYTE(v15) = v49;
    LOBYTE(v16) = v48;
    LOBYTE(v17) = v47;
    LOBYTE(v18) = v46;
  }

  LOBYTE(v73) = v13;
  LOBYTE(v72) = v14;
  LOBYTE(v71) = v15;
  v70 = v16;
  v69 = v17;
  v68 = v18;
  *a2 = v24;
  *(a2 + 8) = v13;
  *(a2 + 9) = v14;
  *(a2 + 10) = v15;
  *(a2 + 11) = v16;
  *(a2 + 12) = v17;
  *(a2 + 13) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = 0xF000000000000007;
  sub_1C8D16DD0(v19, v20);
  OUTLINED_FUNCTION_163();
}

uint64_t ComparisonPredicate.Template.asSourced(from:attribution:)@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for ComparisonPredicate.Template(0);
  v6 = &v2[*(v5 + 28)];
  v7 = *(v6 + 1);
  v8 = *(v6 + 2);
  v9 = *(v6 + 3);
  v20 = *(v2 + 1);
  v21 = *v6;
  v22 = *(v2 + 2);
  v18 = *(v2 + 3);
  v10 = v6[32];
  v23 = *v2;
  v24 = *(v2 + 4);
  sub_1C8D06F98(*v6, v7, v8, v9, v10);

  TypeInstance.asSourced(from:attribution:)(a1, &v25);

  v11 = v25;
  v12 = *(v2 + 5);
  v13 = *(v5 + 24);
  v14 = sub_1C906204C();
  OUTLINED_FUNCTION_13_1(v14);
  (*(v15 + 16))(&a2[v13], &v3[v13]);
  v16 = &a2[*(v5 + 28)];
  *v16 = v21;
  *(v16 + 1) = v7;
  *(v16 + 2) = v8;
  *(v16 + 3) = v9;
  v16[32] = v10;
  *a2 = v23;
  *(a2 + 1) = v20;
  *(a2 + 2) = v22;
  *(a2 + 3) = v18;
  *(a2 + 4) = v11;
  *(a2 + 5) = v12;

  return sub_1C8D076FC(v12);
}

void ComparisonPredicate.Comparison.Template.asSourced(from:attribution:)(const void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *v3;
  switch((*v3 >> 57) & 8 | *v3 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      v6 = v15 | 1;
      goto LABEL_19;
    case 2uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      v9 = v15;
      goto LABEL_8;
    case 3uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      v6 = v15 | 3;
      goto LABEL_19;
    case 4uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      v6 = v15 | 4;
      goto LABEL_19;
    case 5uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      v10 = v15;
      v12 = 5;
      goto LABEL_18;
    case 6uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      v6 = v15 | 6;
      goto LABEL_19;
    case 7uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      v6 = v15 | 7;
      goto LABEL_19;
    case 8uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      v6 = v15 | 0x1000000000000000;
      goto LABEL_19;
    case 9uLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      OUTLINED_FUNCTION_8_23();
      goto LABEL_18;
    case 0xAuLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      OUTLINED_FUNCTION_8_23();
      v12 = v13 + 1;
      goto LABEL_18;
    case 0xBuLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      OUTLINED_FUNCTION_8_23();
      v9 = v7 | v8;
LABEL_8:
      v6 = v9 | 2;
      goto LABEL_19;
    case 0xCuLL:
      OUTLINED_FUNCTION_0_48(a1, a2);
      OUTLINED_FUNCTION_8_23();
      v12 = v11 + 3;
LABEL_18:
      v6 = v10 | v12;
      goto LABEL_19;
    case 0xDuLL:
      *a3 = v5;

      sub_1C8D076FC(v5);
      return;
    default:
      v14 = *v3;
      TypeInstance.asSourced(from:attribution:)(a1, &v15);
      v6 = v15;
LABEL_19:
      *a3 = v6;
      return;
  }
}

uint64_t objectdestroy_13Tm()
{
  OUTLINED_FUNCTION_347_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C8DFBCB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C8DFBCF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8DFBDB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C8DFBDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t AssistantToolSchemaDefinition.init(protobuf:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  v86 = *(v3 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v91 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v101 = *(v6 - 8);
  v7 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  v25 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  sub_1C8CC0620(a1 + v25[7], v24, &qword_1EC313F20, &unk_1C9074D20);
  sub_1C8D60A64();
  v26 = v92;
  sub_1C906351C();
  if (v26)
  {
    OUTLINED_FUNCTION_0_49();
    return sub_1C8DFCA4C(a1, v27);
  }

  else
  {
    v90 = v9;
    v83 = v99;
    v80 = v98;
    v84 = v100;
    v85 = v97;
    v81 = *a1;
    v82 = v96;
    v29 = v25[8];
    v30 = v25[9];
    v31 = a1[1];
    v32 = (a1 + v29);
    v33 = *v32;
    v34 = v32[1];
    sub_1C8CC0620(a1 + v30, v18, &qword_1EC312A58, &unk_1C9074CC0);
    sub_1C8D1FD40();

    sub_1C906350C();
    v76 = v33;
    v78 = v34;
    v92 = 0;
    v35 = v94[0];
    if ((~v94[0] & 0xF000000000000007) == 0)
    {
      v35 = swift_allocObject();
      v36 = swift_allocObject();
      *(v36 + 16) = 23;
      *(v35 + 16) = v36;
    }

    v37 = a1[2];
    v38 = *(v37 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    v79 = a1;
    v89 = v31;
    v77 = v35;
    if (v38)
    {
      v95 = MEMORY[0x1E69E7CC0];
      v88 = v38;
      result = sub_1C8D0971C(0, v38, 0);
      v40 = 0;
      v41 = v95;
      v42 = v101;
      v43 = v37 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
      while (v40 < *(v37 + 16))
      {
        sub_1C8DFC9EC(v43 + *(v42 + 72) * v40, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
        v44 = v90;
        sub_1C8DFC9EC(v12, v90, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
        v45 = v92;
        ParameterDefinition.init(protobuf:)(v44, v46, v47, v48, v49, v50, v51, v52, v76, v77);
        v92 = v45;
        if (v45)
        {
          OUTLINED_FUNCTION_1_43();

          OUTLINED_FUNCTION_0_49();
          sub_1C8DFCA4C(v79, v55);
        }

        OUTLINED_FUNCTION_1_43();
        memcpy(v93, v94, sizeof(v93));
        v95 = v41;
        v54 = *(v41 + 16);
        v53 = *(v41 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1C8D0971C((v53 > 1), v54 + 1, 1);
          v41 = v95;
        }

        ++v40;
        *(v41 + 16) = v54 + 1;
        result = memcpy((v41 + 136 * v54 + 32), v93, 0x88uLL);
        v42 = v101;
        if (v88 == v40)
        {
          a1 = v79;
          v39 = MEMORY[0x1E69E7CC0];
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
LABEL_15:
      v88 = v41;
      v56 = a1[3];
      v57 = *(v56 + 16);
      v58 = v91;
      v59 = v86;
      if (v57)
      {
        v94[0] = v39;
        sub_1C8D096FC(0, v57, 0);
        v60 = v94[0];
        v61 = v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
        v90 = *(v59 + 72);
        do
        {
          sub_1C8DFC9EC(v61, v58, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
          v62 = v58[3];
          v101 = v58[2];
          v64 = *v58;
          v63 = v58[1];

          sub_1C8DFCA4C(v58, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
          v94[0] = v60;
          v66 = *(v60 + 16);
          v65 = *(v60 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1C8D096FC((v65 > 1), v66 + 1, 1);
            v60 = v94[0];
          }

          *(v60 + 16) = v66 + 1;
          v67 = (v60 + 32 * v66);
          v68 = v101;
          v67[4] = v64;
          v67[5] = v68;
          v67[6] = v62;
          v67[7] = v63;
          v58 = v91;
          v61 += v90;
          --v57;
        }

        while (v57);
        OUTLINED_FUNCTION_0_49();
        result = sub_1C8DFCA4C(v79, v69);
      }

      else
      {
        result = sub_1C8DFCA4C(a1, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);
        v60 = MEMORY[0x1E69E7CC0];
      }

      v70 = v84;
      v71 = v85;
      v72 = v87;
      *v87 = v82;
      v72[1] = v71;
      v73 = v83;
      *(v72 + 1) = v80;
      *(v72 + 2) = v73;
      v72[6] = v70;
      v74 = v89;
      v72[7] = v81;
      v72[8] = v74;
      v75 = v78;
      v72[9] = v76;
      v72[10] = v75;
      v72[11] = v88;
      v72[12] = v60;
      v72[13] = v77;
    }
  }

  return result;
}

uint64_t AssistantToolSchemaDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = a1;
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v52 - v18);
  v20 = *v2;
  v21 = v2[1];
  v58 = *(v2 + 1);
  v23 = v2[4];
  v22 = v2[5];
  v59 = v20;
  v60 = v22;
  v25 = v2[6];
  v24 = v2[7];
  v26 = v2[8];
  v52 = v2[9];
  v53 = v24;
  v27 = v2[10];
  v61 = v2[11];
  v28 = v2[13];
  v54 = v2[12];
  v55 = v28;
  v29 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v30 = *(v29 + 28);

  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v13 = v58;
  *(v13 + 2) = v23;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v29);
  v31 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v32 = *(v31 + 24);
  __swift_storeEnumTagSinglePayload(v19 + v32, 1, 1, v29);
  v33 = v19 + *(v31 + 28);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v19 = v59;
  v19[1] = v21;
  v34 = v13;
  v35 = v62;
  sub_1C8D61094(v34, v19 + v32, &qword_1EC313F28, &qword_1C9072058);
  v19[2] = v60;
  v19[3] = v25;
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v31);
  v64 = v35;
  v36 = v63;
  sub_1C8D3FFB0();
  if (v36)
  {

    return sub_1C8D6102C(v19);
  }

  else
  {
    v38 = v37;
    v61 = v26;
    v63 = v27;
    v39 = v56;
    MEMORY[0x1EEE9AC00](v37);
    *(&v52 - 2) = v35;
    sub_1C8D4018C();
    v41 = v40;
    v65 = v55;

    TypeInstance.protobuf(useCase:)();

    v43 = type metadata accessor for ToolKitProtoTypeInstance(0);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v43);
    v44 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
    v62 = v41;
    v45 = v44[7];
    __swift_storeEnumTagSinglePayload(v39 + v45, 1, 1, v31);
    v46 = v44[9];
    v47 = (v39 + v44[8]);
    __swift_storeEnumTagSinglePayload(v39 + v46, 1, 1, v43);
    v48 = v39 + v44[10];
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    sub_1C8D61094(v19, v39 + v45, &qword_1EC313F20, &unk_1C9074D20);
    v49 = v61;
    *v39 = v53;
    v39[1] = v49;
    v50 = v62;
    v51 = v63;
    *v47 = v52;
    v47[1] = v51;
    v39[2] = v38;
    v39[3] = v50;
    return sub_1C8D61094(v57, v39 + v46, &qword_1EC312A58, &unk_1C9074CC0);
  }
}

void sub_1C8DFC8D4(void *__src, uint64_t a2, void *a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  ParameterDefinition.protobuf(useCase:)();
  if (v3)
  {
    *a3 = v3;
  }
}

uint64_t sub_1C8DFC948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(0) + 28);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  a2[2] = v4;
  a2[3] = v5;
  *a2 = v3;
  a2[1] = v6;
  return result;
}

uint64_t sub_1C8DFC9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8DFCA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8DFCAE8()
{
  result = qword_1EC316060;
  if (!qword_1EC316060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316060);
  }

  return result;
}

uint64_t sub_1C8DFCB4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8DFCC18(char a1)
{
  if (a1)
  {
    return 0x6E65644965707974;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_1C8DFCC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DFCB4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DFCC88(uint64_t a1)
{
  v2 = sub_1C8DFD6F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DFCCC4(uint64_t a1)
{
  v2 = sub_1C8DFD6F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DFCD00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8DFCD2C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1C8DFCD2C()
{
  if (qword_1EC311358 != -1)
  {
    OUTLINED_FUNCTION_1_44();
  }

  v0 = sub_1C9062E6C();
  __swift_project_value_buffer(v0, qword_1EC390AB0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v2 = v1;

  if (qword_1EC311360 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  __swift_project_value_buffer(v0, qword_1EC390AC8);
  sub_1C9062E5C();
  sub_1C8E2B294();

  return v2;
}

uint64_t sub_1C8DFCE50()
{
  sub_1C8DFD1A4();

  return sub_1C9062B4C();
}

uint64_t sub_1C8DFCF44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1C8DFCF50();
}

uint64_t sub_1C8DFCF50()
{
  if (qword_1EC311358 != -1)
  {
    OUTLINED_FUNCTION_1_44();
  }

  v0 = sub_1C9062E6C();
  __swift_project_value_buffer(v0, qword_1EC390AB0);
  sub_1C9062E5C();
  sub_1C9062BFC();
  if (qword_1EC311360 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  __swift_project_value_buffer(v0, qword_1EC390AC8);
  sub_1C9062E5C();

  return sub_1C9062BFC();
}

uint64_t sub_1C8DFD07C()
{
  v0 = qword_1EC316068;

  return v0;
}

unint64_t sub_1C8DFD0B8()
{
  result = qword_1EC316078;
  if (!qword_1EC316078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316078);
  }

  return result;
}

unint64_t sub_1C8DFD110(void *a1)
{
  a1[1] = sub_1C8DFD150();
  a1[2] = sub_1C8DFD1A4();
  a1[3] = sub_1C8DFD1F8();
  result = sub_1C8DFD24C();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8DFD150()
{
  result = qword_1EC316080;
  if (!qword_1EC316080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316080);
  }

  return result;
}

unint64_t sub_1C8DFD1A4()
{
  result = qword_1EC316088;
  if (!qword_1EC316088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316088);
  }

  return result;
}

unint64_t sub_1C8DFD1F8()
{
  result = qword_1EC316090;
  if (!qword_1EC316090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316090);
  }

  return result;
}

unint64_t sub_1C8DFD24C()
{
  result = qword_1EC316098;
  if (!qword_1EC316098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316098);
  }

  return result;
}

uint64_t sub_1C8DFD2C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1C8DFD6F0();
  return sub_1C9062E8C();
}

uint64_t sub_1C8DFD33C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3160B8, &qword_1C9083D60);
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DFD6F0();
  sub_1C9064E1C();
  v18 = 0;
  sub_1C9064B9C();
  if (!v4)
  {
    v17 = 1;
    sub_1C9064B2C();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1C8DFD4A8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3160A8, &qword_1C9083D58);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v13[-v9];
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1C8DFD6F0();
  sub_1C9064DEC();
  if (!v1)
  {
    v13[15] = 0;
    v11 = sub_1C9064A7C();
    v13[14] = 1;
    sub_1C9064A0C();
    (*(v6 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1C8DFD648@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C8DFD4A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1C8DFD69C()
{
  result = qword_1EC3160A0;
  if (!qword_1EC3160A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160A0);
  }

  return result;
}

unint64_t sub_1C8DFD6F0()
{
  result = qword_1EC3160B0;
  if (!qword_1EC3160B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolOutputTypeRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DFD824()
{
  result = qword_1EC3160C0;
  if (!qword_1EC3160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160C0);
  }

  return result;
}

unint64_t sub_1C8DFD87C()
{
  result = qword_1EC3160C8;
  if (!qword_1EC3160C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160C8);
  }

  return result;
}

unint64_t sub_1C8DFD8D4()
{
  result = qword_1EC3160D0;
  if (!qword_1EC3160D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160D0);
  }

  return result;
}

__n128 AssistantSchemaIdentifier.init(kind:version:domain:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a3[1].n128_u64[0];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = v6;
  a6[2].n128_u64[1] = a4;
  a6[3].n128_u64[0] = a5;
  return result;
}

uint64_t AssistantSchemaIdentifier.kind.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 AssistantSchemaIdentifier.version.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t AssistantSchemaIdentifier.domain.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AssistantSchemaIdentifier.init(kind:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 16);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = *a3;
  *(a4 + 32) = v4;
  strcpy((a4 + 40), "UnknownDomain");
  *(a4 + 54) = -4864;
  return result;
}

uint64_t static AssistantSchemaIdentifier.for (_:)@<X0>(uint64_t *a1@<X8>)
{
  return sub_1C8DFDA9C(MEMORY[0x1E69AC130], a1);
}

{
  return sub_1C8DFDA9C(MEMORY[0x1E69AC120], a1);
}

{
  return sub_1C8DFDA9C(MEMORY[0x1E69AC110], a1);
}

uint64_t sub_1C8DFDA9C@<X0>(void (*a1)(__n128)@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1C906308C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v41 = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C90631AC();
  v11 = OUTLINED_FUNCTION_11(v43);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  a1(v19);
  v22 = sub_1C906317C();
  v39 = v23;
  v40 = v22;
  v24 = *(v13 + 8);
  v25 = v21;
  v26 = v43;
  v27 = v24(v25, v43);
  (a1)(v27);
  sub_1C906319C();
  v24(v17, v26);
  v38 = sub_1C906305C();
  v37 = sub_1C906306C();
  v28 = sub_1C906307C();
  v29 = (*(v41 + 8))(v10, v42);
  (a1)(v29);
  v30 = sub_1C906318C();
  v32 = v31;
  result = v24(v17, v43);
  v34 = v39;
  *a2 = v40;
  a2[1] = v34;
  v35 = v37;
  a2[2] = v38;
  a2[3] = v35;
  a2[4] = v28;
  a2[5] = v30;
  a2[6] = v32;
  return result;
}

uint64_t static AssistantSchemaIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8 || v4 != v7 || v3 != v10)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v13 = sub_1C9064C2C();
  result = 0;
  if (v13)
  {
    v15 = v2 == v8 && v4 == v7;
    if (v15 && v3 == v10)
    {
LABEL_22:
      if (v5 == v9 && v6 == v11)
      {
        return 1;
      }

      else
      {

        return sub_1C9064C2C();
      }
    }
  }

  return result;
}

uint64_t sub_1C8DFDDD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DFDEDC(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x6E6F6973726576;
  }

  return 0x6E69616D6F64;
}

uint64_t sub_1C8DFDF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DFDDD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DFDF58(uint64_t a1)
{
  v2 = sub_1C8DFE1A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DFDF94(uint64_t a1)
{
  v2 = sub_1C8DFE1A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssistantSchemaIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3160D8, &qword_1C9083E80);
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v20 = v1[3];
  v21 = v13;
  v14 = v1[4];
  v18[2] = v1[5];
  v19 = v14;
  v18[1] = v1[6];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DFE1A0();
  sub_1C9064E1C();
  LOBYTE(v23) = 0;
  v16 = v22;
  sub_1C9064B2C();
  if (!v16)
  {
    v23 = v21;
    v24 = v20;
    v25 = v19;
    v26 = 1;
    sub_1C8DFE1F4();
    sub_1C9064B8C();
    LOBYTE(v23) = 2;
    sub_1C9064B2C();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1C8DFE1A0()
{
  result = qword_1EDA63070;
  if (!qword_1EDA63070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63070);
  }

  return result;
}

unint64_t sub_1C8DFE1F4()
{
  result = qword_1EDA60858;
  if (!qword_1EDA60858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60858);
  }

  return result;
}

uint64_t AssistantSchemaIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v3);
  MEMORY[0x1CCA82830](v4);
  MEMORY[0x1CCA82830](v5);

  return sub_1C9063FBC();
}

uint64_t AssistantSchemaIdentifier.hashValue.getter()
{
  OUTLINED_FUNCTION_1_45();
  sub_1C9064D7C();
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v0);
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t AssistantSchemaIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3160E0, &qword_1C9083E88);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DFE1A0();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  v14 = OUTLINED_FUNCTION_2_35();
  v16 = v15;
  v32 = 1;
  sub_1C8DFE658();
  sub_1C9064A6C();
  v27 = v30;
  v28 = v29;
  v26 = v31;
  LOBYTE(v29) = 2;
  v17 = OUTLINED_FUNCTION_2_35();
  v20 = v19;
  v21 = *(v8 + 8);
  v25 = v17;
  v21(v12, v5);
  *a2 = v14;
  a2[1] = v16;
  v22 = v27;
  a2[2] = v28;
  a2[3] = v22;
  v23 = v25;
  a2[4] = v26;
  a2[5] = v23;
  a2[6] = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8DFE5C4()
{
  OUTLINED_FUNCTION_1_45();
  sub_1C9064D7C();
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v0);
  MEMORY[0x1CCA82830](v1);
  MEMORY[0x1CCA82830](v2);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

unint64_t sub_1C8DFE658()
{
  result = qword_1EDA63218;
  if (!qword_1EDA63218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63218);
  }

  return result;
}

unint64_t sub_1C8DFE6B0()
{
  result = qword_1EDA63058;
  if (!qword_1EDA63058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63058);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C8DFE720(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C8DFE760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssistantSchemaIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DFE89C()
{
  result = qword_1EC3160E8;
  if (!qword_1EC3160E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160E8);
  }

  return result;
}

unint64_t sub_1C8DFE8F4()
{
  result = qword_1EDA63060;
  if (!qword_1EDA63060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63060);
  }

  return result;
}

unint64_t sub_1C8DFE94C()
{
  result = qword_1EDA63068;
  if (!qword_1EDA63068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63068);
  }

  return result;
}

uint64_t sub_1C8DFE9A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C8DFE9E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8DFEA50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DFEB6C(char a1)
{
  if (!a1)
  {
    return 0x72656767697274;
  }

  if (a1 == 1)
  {
    return 0x617A696C61636F6CLL;
  }

  return 0x6574656D61726170;
}

uint64_t sub_1C8DFEBD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3160F0, &qword_1C9084250);
  v5 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DFF048();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19[0]) = 0;
  sub_1C8DFF09C();
  OUTLINED_FUNCTION_1_46();
  v12 = v22;
  v13 = v20;
  v15 = v23;
  v11 = v24;
  v14 = v25;
  v16 = v26;
  v32 = v21;
  v34 = 1;
  sub_1C8DFF0F0();
  OUTLINED_FUNCTION_1_46();
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316110, &qword_1C9084258);
  v33 = 2;
  sub_1C8DFF198();
  sub_1C9064A6C();
  v7 = OUTLINED_FUNCTION_0_2();
  v8(v7);
  v9 = v29;
  v19[0] = v13;
  v18 = v32;
  LOBYTE(v19[1]) = v32;
  v19[2] = v12;
  v19[3] = v15;
  v19[4] = v11;
  v19[5] = v14;
  v19[6] = v16;
  memcpy(&v19[7], __dst, 0x48uLL);
  v19[16] = v29;
  memcpy(a2, v19, 0x88uLL);
  sub_1C8D500C8(v19, &v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v13;
  v21 = v18;
  v22 = v12;
  v23 = v15;
  v24 = v11;
  v25 = v14;
  v26 = v16;
  memcpy(v27, __dst, sizeof(v27));
  v28 = v9;
  return sub_1C8D50124(&v20);
}

uint64_t sub_1C8DFEF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DFEA50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DFEF54(uint64_t a1)
{
  v2 = sub_1C8DFF048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DFEF90(uint64_t a1)
{
  v2 = sub_1C8DFF048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DFEFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8DFF270();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C8DFF048()
{
  result = qword_1EC3160F8;
  if (!qword_1EC3160F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3160F8);
  }

  return result;
}

unint64_t sub_1C8DFF09C()
{
  result = qword_1EC316100;
  if (!qword_1EC316100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316100);
  }

  return result;
}

unint64_t sub_1C8DFF0F0()
{
  result = qword_1EC316108;
  if (!qword_1EC316108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316108);
  }

  return result;
}

unint64_t sub_1C8DFF198()
{
  result = qword_1EC316118;
  if (!qword_1EC316118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316110, &qword_1C9084258);
    sub_1C8DFF21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316118);
  }

  return result;
}

unint64_t sub_1C8DFF21C()
{
  result = qword_1EC316120;
  if (!qword_1EC316120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316120);
  }

  return result;
}

unint64_t sub_1C8DFF270()
{
  result = qword_1EC316128;
  if (!qword_1EC316128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316128);
  }

  return result;
}

uint64_t sub_1C8DFF2C4@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x88uLL);
  v3 = __dst[2];
  v4 = __dst[3];
  v5 = __dst[4];
  v6 = __dst[5];
  v7 = __dst[6];
  v9 = __dst[10];
  v8 = __dst[11];
  v34 = __dst[14];
  v10 = __dst[16];
  v11 = *(__dst[16] + 16);
  if (v11)
  {
    v27 = __dst[10];
    v29 = __dst[2];
    v30 = __dst[5];
    v31 = __dst[6];
    v32 = __dst[4];
    v33 = a2;
    v39 = MEMORY[0x1E69E7CC0];
    v28 = __dst[3];
    v12 = __dst[15];

    v26 = v8;

    v25 = v12;

    sub_1C8D0971C(0, v11, 0);
    v13 = v39;
    v14 = (v10 + 168);
    do
    {
      v15 = *(v14 - 17);
      v16 = *(v14 - 15);
      v37 = *(v14 - 16);
      v38 = *(v14 - 12);
      v17 = *(v14 - 2);
      v18 = *v14;
      v35 = *(v14 - 1);
      v36 = *(v14 - 3);
      v19 = *(v39 + 16);
      v20 = *(v39 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_1C8D0971C((v20 > 1), v19 + 1, 1);
      }

      *(v39 + 16) = v19 + 1;
      v21 = v39 + 136 * v19;
      *(v21 + 32) = v37;
      *(v21 + 40) = v16;
      *(v21 + 48) = v36;
      *(v21 + 56) = v17;
      *(v21 + 64) = v35;
      *(v21 + 72) = v18;
      *(v21 + 80) = v38;
      *(v21 + 88) = v15;
      *(v21 + 96) = MEMORY[0x1E69E7CC0];
      *(v21 + 104) = 0u;
      *(v21 + 120) = 0u;
      *(v21 + 136) = 0u;
      v14 += 18;
      *(v21 + 152) = 0u;
      --v11;
    }

    while (v11);
    v5 = v32;
    a2 = v33;
    v6 = v30;
    v7 = v31;
    v4 = v28;
    v3 = v29;
    v22 = v26;
    v9 = v27;
    v23 = v25;
  }

  else
  {
    v23 = __dst[15];

    v22 = v8;
    v13 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1C8D50124(__dst);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v9;
  a2[3] = v22;
  a2[4] = v34;
  a2[5] = v23;
  a2[6] = v13;
  a2[7] = v6;
  a2[8] = v7;
  a2[9] = v5;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedTrigger.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DFF5B8()
{
  result = qword_1EC316130;
  if (!qword_1EC316130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316130);
  }

  return result;
}

unint64_t sub_1C8DFF610()
{
  result = qword_1EC316138;
  if (!qword_1EC316138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316138);
  }

  return result;
}

unint64_t sub_1C8DFF668()
{
  result = qword_1EC316140;
  if (!qword_1EC316140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC316140);
  }

  return result;
}

uint64_t sub_1C8DFF6BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C8D09D9C(0, v1, 0);
  v2 = v26;
  result = sub_1C8D3F274(a1);
  v7 = result;
  v8 = v25;
  v9 = 0;
  v10 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_25;
      }

      v12 = *(*(a1 + 48) + v7);
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        v24 = v5;
        v23 = v6;
        result = sub_1C8D09D9C((v13 > 1), v14 + 1, 1);
        v6 = v23;
        v5 = v24;
        v10 = a1 + 56;
        v8 = v25;
      }

      *(v26 + 16) = v14 + 1;
      *(v26 + v14 + 32) = 0x20005080403uLL >> (8 * v12);
      if (v6)
      {
        goto LABEL_29;
      }

      v15 = 1 << *(a1 + 32);
      if (v7 >= v15)
      {
        goto LABEL_26;
      }

      v16 = *(v10 + 8 * v11);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 64 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1C8CAF698(v7, v5, 0);
            v10 = a1 + 56;
            v8 = v25;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        result = sub_1C8CAF698(v7, v5, 0);
        v10 = a1 + 56;
        v8 = v25;
      }

LABEL_19:
      if (++v9 == v8)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}