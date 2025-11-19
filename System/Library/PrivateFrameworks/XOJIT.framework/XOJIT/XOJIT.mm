uint64_t sub_274E5D3D8()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_274E5D408()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t _s5XOJIT5XOJITC11DylibHandleVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_30(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5XOJIT5XOJITC11DylibHandleVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_274E5D524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C0, &qword_2750C04F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_274E5D5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C0, &qword_2750C04F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_274E61664@<X0>(char *a1@<X8>)
{
  result = XOJIT_Error_IsFailedToMaterialize(*(v1 + 16));
  if (result)
  {
    v4 = 0;
  }

  else
  {
    result = XOJIT_Error_IsUnsatisfiedSymbolDependencies(*(v1 + 16));
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t XOJITError.__deallocating_deinit()
{
  XOJITError.deinit();
  v0 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t XOJITError.description.getter()
{
  v1 = XOJIT_Error_ToMessage(*(v0 + 16));
  if (!v1)
  {
    return 0x737365636375733CLL;
  }

  v2 = v1;
  v3 = sub_2750BF2A8();
  free(v2);
  return v3;
}

uint64_t sub_274E6179C(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t MemoryBuffer.__allocating_init(identifier:fromFile:)()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  MemoryBuffer.init(identifier:fromFile:)();
  return v0;
}

uint64_t MemoryBuffer.init(identifier:fromFile:)()
{
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = 0;
  v1 = sub_2750BF288();

  OUTLINED_FUNCTION_32();
  v2 = sub_2750BF288();

  swift_beginAccess();
  v3 = XOJIT_MemoryBuffer_CreateWithIdentifierFromPath((v1 + 32), (v2 + 32), (v0 + 16));
  swift_endAccess();

  if (v3)
  {
    type metadata accessor for XOJITError();
    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = v3;
    sub_274E61948();
    v4 = OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_28(v4, v5);
  }

  return v0;
}

unint64_t sub_274E61948()
{
  result = qword_2809A24A8;
  if (!qword_2809A24A8)
  {
    type metadata accessor for XOJITError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24A8);
  }

  return result;
}

uint64_t MemoryBuffer.__allocating_init(fromFile:)()
{
  OUTLINED_FUNCTION_4();
  v0 = swift_allocObject();

  OUTLINED_FUNCTION_32();
  MemoryBuffer.init(identifier:fromFile:)();
  return v0;
}

uint64_t MemoryBuffer.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    XOJIT_MemoryBuffer_Destroy(v1);
  }

  return v0;
}

uint64_t MemoryBuffer.__deallocating_deinit()
{
  MemoryBuffer.deinit();
  v0 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274E61A64()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E61AA4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;

  if (a2)
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = *(v3 + 40);
      type metadata accessor for XOJITError();
      v6 = swift_allocObject();
      *(v6 + 16) = a2;

      v4(v6);

      return sub_274E66B68(v4);
    }

LABEL_11:
    __break(1u);
    return result;
  }
}

void XOJIT.__allocating_init(fromXPCConnection:oopJITLinkageType:opaqueOwner:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_33();
  XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:)(v4, v5, a3);
}

void XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = 0;
  v15 = *MEMORY[0x277D85DE8];
  v3[4] = 0;
  v3[2] = 0;
  v3[5] = 0;
  if (qword_2809A24A0 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_2809A24A0);
    v7 = v3[4];
    v14 = v3[5];
  }

  v3[4] = 0;
  v3[5] = 0;
  sub_274E66B68(v7);
  v3[3] = a3;
  OUTLINED_FUNCTION_1();
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    v12 = XOJIT_XOJIT_NoopMutatingCallback;
    v13 = unk_2809A2FC0;
    swift_unknownObjectRetain();
    XOJIT_XOJIT_CreateFromXPCWithOOPJITType(v10, v11, v12, v13, a1, a2);
  }

  __break(1u);
}

void XOJIT.__allocating_init(fromXPCConnection:oopJITLinkageType:opaqueOwner:reportError:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:reportError:)(a1, a2, a3, a4, a5);
}

void XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:reportError:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23();
  if (qword_2809A24A0 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_2809A24A0);
    v11 = v5[4];
    v18 = v5[5];
  }

  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a5;
  swift_unknownObjectRetain();
  v13 = OUTLINED_FUNCTION_19();
  sub_274E66B78(v13);
  sub_274E66B68(v11);
  OUTLINED_FUNCTION_1();
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    XOJIT_XOJIT_CreateFromXPCWithOOPJITType(v16, v17, XOJIT_XOJIT_NoopMutatingCallback, unk_2809A2FC0, a1, a2);
  }

  __break(1u);
}

void XOJIT.__allocating_init(fromXPCConnection:opaqueOwner:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  XOJIT.init(fromXPCConnection:oopJITLinkageType:opaqueOwner:reportError:)(a1, 1uLL, a2, 0, 0);
}

void XOJIT.__allocating_init()()
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  XOJIT.init()();
}

void XOJIT.init()()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23();
  if (qword_2809A24A0 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_2809A24A0);
    v2 = v0[4];
    v3 = v0[5];
  }

  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_274E66B68(v2);
  OUTLINED_FUNCTION_1();
  XOJIT_XOJIT_CreateInProcess();
}

void XOJIT.__allocating_init(reportError:)()
{
  OUTLINED_FUNCTION_6();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_32();
  XOJIT.init(reportError:)(v0, v1);
}

void XOJIT.init(reportError:)(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_23();
  if (qword_2809A24A0 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_2809A24A0);
    v8 = v2[4];
    v7 = v2[5];
  }

  v2[3] = 0;
  v2[4] = a1;
  v2[5] = a2;
  sub_274E66B78(a1);
  v6 = OUTLINED_FUNCTION_19();
  sub_274E66B68(v6);
  OUTLINED_FUNCTION_1();
  XOJIT_XOJIT_CreateInProcess();
}

void *XOJIT.deinit()
{
  v1 = sub_2750BF218();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_25();
  v8 = v0[2];
  if (v8)
  {
    OUTLINED_FUNCTION_13();
    v9 = sub_2750BF1F8();
    v10 = sub_2750BF318();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_274E5C000, v9, v10, "Destroying XOJIT C++ instance...", v11, 2u);
      MEMORY[0x277C6A700](v11, -1, -1);
    }

    XOJIT_XOJIT_Destroy(v8);
    v12 = sub_2750BF1F8();
    v13 = sub_2750BF318();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_274E5C000, v12, v13, "Destroyed XOJIT C++ instance.", v14, 2u);
      MEMORY[0x277C6A700](v14, -1, -1);
    }

    (*(v4 + 8))(v0, v1);
  }

  v15 = v0[3];
  swift_unknownObjectRelease();
  v16 = v0[5];
  sub_274E66B68(v0[4]);
  return v0;
}

uint64_t XOJIT.__deallocating_deinit()
{
  XOJIT.deinit();
  v0 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE8D8](v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XOJIT.endSession()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (XOJIT_XOJIT_EndSession(v1))
    {
      type metadata accessor for XOJITError();
      OUTLINED_FUNCTION_5();
      v2 = swift_allocObject();
      OUTLINED_FUNCTION_40(v2);
      v3 = OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_15(v3, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::String __swiftcall XOJIT.getTargetTriple()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    XOJIT_XOJIT_GetTargetTriple(v1);

    v1 = sub_2750BF2A8();
  }

  else
  {
    __break(1u);
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_274E6252C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = *(v2 + 16);
  if (result)
  {
    v6 = a1();
    type metadata accessor for XOJIT.JITDylib.JITDylibRef();
    OUTLINED_FUNCTION_5();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *a2 = v2;
    a2[1] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XOJIT.objectLinkingLayer.getter@<X0>(void *a1@<X8>)
{
  result = *(v1 + 16);
  if (result)
  {
    ObjectLinkingLayer = XOJIT_XOJIT_GetObjectLinkingLayer(result);
    *a1 = v1;
    a1[1] = ObjectLinkingLayer;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XOJIT.runProgramOnMainThread(symbol:jitDylibName:arguments:)(Swift::String symbol, Swift::String jitDylibName, Swift::OpaquePointer arguments)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_274E626A0(symbol._countAndFlagsBits, symbol._object, jitDylibName._countAndFlagsBits, jitDylibName._object, arguments._rawValue, XOJIT_XOJIT_RunAsMain);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XOJIT.runProgramOnAnyThread(symbol:jitDylibName:arguments:)(Swift::String symbol, Swift::String jitDylibName, Swift::OpaquePointer arguments)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_274E626A0(symbol._countAndFlagsBits, symbol._object, jitDylibName._countAndFlagsBits, jitDylibName._object, arguments._rawValue, XOJIT_XOJIT_RunOnAnyThread);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_274E626A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, unsigned int *))
{
  v7 = v6;
  v30 = *MEMORY[0x277D85DE8];
  v29 = -1;
  v8 = *(a5 + 16);
  if (v8)
  {
    v28 = MEMORY[0x277D84F90];
    sub_274E66D0C(0, v8, 0);
    v10 = v28;
    v11 = (a5 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = sub_2750BF288();
      v15 = strdup((v14 + 32));

      v17 = *(v28 + 16);
      v16 = *(v28 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_274E66D0C((v16 > 1), v17 + 1, 1);
      }

      *(v28 + 16) = v18;
      *(v28 + 8 * v17 + 32) = v15;
      v11 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
  }

  v19 = *(v7 + 16);
  if (!v19)
  {
LABEL_15:
    __break(1u);
  }

  if (v18 >> 31)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = sub_2750BF288();
  v21 = sub_2750BF288();
  v22 = a6(v19, v20 + 32, v21 + 32, v18, v10 + 32, &v29);

  if (v22)
  {
    type metadata accessor for XOJITError();
    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = v22;
    sub_274E61948();
    v23 = OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_28(v23, v24);
  }

  else
  {
    v22 = v29;
  }

  sub_274E628AC(v10);

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_274E628AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      free(v3);
      --v1;
    }

    while (v1);
  }
}

uint64_t XOJIT.runNewInitializers(for:)(uint64_t a1)
{
  result = *(v1 + 16);
  if (result)
  {
    v4 = *(*(a1 + 8) + 16);
    XOJIT_XOJIT_RunNewInitializers(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_274E62950()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XOJIT.callOnAnyThread<A>(_:_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = sub_2750BF1B8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2750BF1A8();
  v7 = sub_2750BF198();
  v9 = v8;

  if (!v2)
  {

    sub_274E62B2C(v7, v9, v1);
  }

  return result;
}

void sub_274E62A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 16);
  if (v3)
  {
    XOJIT_XOJIT_CallOnAnyThread(v3);
  }

  __break(1u);
}

void sub_274E62B2C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;

  switch(v6)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
      }

      else
      {
        v11 = sub_2750BF1C8();
        if (!v11)
        {
LABEL_14:
          v14 = (a1 >> 32) - a1;
LABEL_15:
          v16 = sub_2750BF1D8();
          if (v16 >= v14)
          {
            v17 = v14;
          }

          else
          {
            v17 = v16;
          }

          v18 = (v17 + v11);
          if (v11)
          {
            v7 = v18;
          }

          else
          {
            v7 = 0;
          }

          v8 = v11;
LABEL_22:
          sub_274E62A50(v8, v7, a3);
        }

        v15 = sub_2750BF1E8();
        if (!__OFSUB__(a1, v15))
        {
          v11 += a1 - v15;
          goto LABEL_14;
        }
      }

      __break(1u);
      return;
    case 2uLL:
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      v11 = sub_2750BF1C8();
      if (!v11)
      {
        goto LABEL_6;
      }

      v12 = sub_2750BF1E8();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_24;
      }

      v11 += v9 - v12;
LABEL_6:
      v13 = __OFSUB__(v10, v9);
      v14 = v10 - v9;
      if (v13)
      {
        __break(1u);
LABEL_9:

        sub_274E68484(0, 0, a3);
      }

      goto LABEL_15;
    case 3uLL:
      goto LABEL_9;
    default:
      v19 = a1;
      v20 = a2;
      v21 = BYTE2(a2);
      v22 = BYTE3(a2);
      v23 = BYTE4(a2);
      v24 = BYTE5(a2);
      v7 = &v19 + BYTE6(a2);
      v8 = &v19;
      goto LABEL_22;
  }
}

void XOJIT.callOnAnyThread<A>(symbol:in:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24B0, &qword_2750C04C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2750C04A0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;
  *(inited + 48) = 1;
  v10 = 1;
  v9 = 0;
  v8 = 5;

  XOJIT.lookup(searchOrder:name:lookupFlags:lookupKind:requiredState:)(inited, a1, a2, &v9, &v10, &v8);
}

void XOJIT.lookup(searchOrder:name:lookupFlags:lookupKind:requiredState:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *a4;
  v27 = *a5;
  v26 = *a6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v25 = *a4;
    v28 = MEMORY[0x277D84F90];
    sub_274E66DCC(0, v8, 0);
    v9 = v28;
    v11 = *(v28 + 16);
    v12 = 16 * v11;
    v13 = (a1 + 48);
    do
    {
      v14 = *v13;
      v15 = *(*(v13 - 1) + 16);
      v16 = *(v28 + 24);
      v17 = v11 + 1;
      if (v11 >= v16 >> 1)
      {
        sub_274E66DCC((v16 > 1), v11 + 1, 1);
      }

      *(v28 + 16) = v17;
      v18 = v28 + v12;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v12 += 16;
      v13 += 24;
      v11 = v17;
      --v8;
    }

    while (v8);
    v6 = v24;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_274E66BAC(0, *(v9 + 2) + 1, 1, v9);
  }

  v20 = *(v9 + 2);
  v19 = *(v9 + 3);
  if (v20 >= v19 >> 1)
  {
    v9 = sub_274E66BAC((v19 > 1), v20 + 1, 1, v9);
  }

  *(v9 + 2) = v20 + 1;
  v21 = &v9[16 * v20 + 32];
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = *(v6 + 16);
  if (v22)
  {
    v23 = sub_2750BF288();
    XOJIT_XOJIT_SymbolLookup(v22, v27, v9 + 4, (v23 + 32), v7);
  }

  __break(1u);
}

uint64_t XOJIT.loadDylib(_:)@<X0>(void *a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(v1 + 16))
  {
    __break(1u);
  }

  sub_2750BF288();
  v3 = OUTLINED_FUNCTION_39();
  Dylib = XOJIT_XOJIT_LoadDylib(v3, v4, v5);

  if (Dylib)
  {
    type metadata accessor for XOJITError();
    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = Dylib;
    sub_274E61948();
    v8 = OUTLINED_FUNCTION_3();
    result = OUTLINED_FUNCTION_20(v8, v9);
  }

  else
  {
    *a1 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XOJIT.addNullableSymbolsFromPath(_:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_2750BF288();
    v4 = XOJIT_AddNullableSymbolsFromPath(v2, (v3 + 32));

    if (v4)
    {
      type metadata accessor for XOJITError();
      OUTLINED_FUNCTION_5();
      v5 = swift_allocObject();
      OUTLINED_FUNCTION_40(v5);
      v6 = OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_15(v6, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t XOJIT.JITDylib.name.getter()
{
  XOJIT_JITDylib_GetName(*(*(v0 + 8) + 16));

  return sub_2750BF2A8();
}

uint64_t XOJIT.JITDylib.executionSession.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  result = *(*v1 + 16);
  if (result)
  {
    ExecutionSession = XOJIT_XOJIT_GetExecutionSession();
    *a1 = v2;
    a1[1] = ExecutionSession;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E632C0()
{
  XOJIT_JITDylib_Release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v1);
}

uint64_t XOJIT.loadLinkableFile(path:archives:identifier:)(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v22[0] = 0;
  v21 = 0;
  if (!a6)
  {
  }

  v9 = *(v6 + 16);
  if (!v9)
  {
    __break(1u);
  }

  v10 = sub_2750BF288();
  v11 = sub_2750BF288();

  v12 = XOJIT_XOJIT_LoadLinkableFile(v9, (v10 + 32), (v11 + 32), v8, v22, &v21);

  if (v12)
  {

    type metadata accessor for XOJITError();
    OUTLINED_FUNCTION_5();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    sub_274E61948();
    v15 = OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_20(v15, v16);
LABEL_11:
    v20 = *MEMORY[0x277D85DE8];
    return v14;
  }

  v17 = v22[0];
  if (v22[0])
  {
    v18 = v21;

    if (v18)
    {
      v19 = 2 * (v18 == 1);
    }

    else
    {
      v19 = 1;
    }

    type metadata accessor for MemoryBuffer();
    OUTLINED_FUNCTION_5();
    v14 = swift_allocObject();
    sub_274E6179C(v17);
    *a1 = v19;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t XOJIT.ObjectLinkingLayer.add(object:name:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = *(v5 + 8);
  type metadata accessor for LLVMMemoryBuffer();
  swift_initStackObject();

  v8 = OUTLINED_FUNCTION_33();
  sub_274E68B58(v8, v9);
  v10 = *(v6 + 16);
  v11 = sub_274E68B44();
  v12 = LLVMOrcObjectLayerAddObjectFile(v7, v10, v11);
  if (v12)
  {
    LLVMGetErrorMessage(v12);
  }
}

uint64_t XOJIT.ObjectLinkingLayer.add(object:to:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = *v2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E635E4()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_10(v3);
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_274E63698;

  return sub_274E637B8(sub_274E66E64, v0);
}

uint64_t sub_274E63698()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_274E68804, 0, 0);
  }

  else
  {
    v9 = *(v3 + 56);

    OUTLINED_FUNCTION_26();

    return v10();
  }
}

uint64_t sub_274E637B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E637CC()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_274E638B4;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_274E638B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    v9 = sub_274E639DC;
  }

  else
  {
    v10 = *(v3 + 32);

    v9 = sub_274E639B8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_274E639DC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_26();
  v3 = *(v0 + 48);

  return v2();
}

void sub_274E63A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v6 = *(*(a2 + 8) + 16);
    v7 = sub_274E61A64();
    v8 = a3(v4, v6, v7);
    if (v8)
    {
      LLVMGetErrorMessage(v8);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

uint64_t XOJIT.ObjectLinkingLayer.linkArchive(archive:into:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = *v2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E63B28()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_10(v3);
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_274E63698;

  return sub_274E637B8(sub_274E66E7C, v0);
}

void sub_274E63BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  if (*(a3 + 16))
  {
    OUTLINED_FUNCTION_38();
    v9 = *(v8 + 16);
    sub_274E61A64();
    v10 = OUTLINED_FUNCTION_22();

    a8(v10);
  }

  else
  {
    __break(1u);
  }
}

void XOJIT.ObjectLinkingLayer.linkArchive(archive:into:forceLoad:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v5 = *a3;
    v6 = *(*(a2 + 8) + 16);
    v7 = sub_274E61A64();
    v8 = XOJIT_XOJIT_LinkStaticArchiveWithForceLoad(v4, v6, v7, v5);
    if (v8)
    {
      LLVMGetErrorMessage(v8);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

uint64_t XOJIT.ObjectLinkingLayer.linkArchive(archive:into:forceLoad:)(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = *a2;
  *(v4 + 80) = *a3;
  *(v4 + 40) = *v3;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E63D20()
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_10(v4);
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v1 + 64) = v6;
  *v6 = v1;
  v6[1] = sub_274E63DE8;

  return sub_274E637B8(sub_274E66EBC, v0);
}

uint64_t sub_274E63DE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_274E63F08, 0, 0);
  }

  else
  {
    v9 = *(v3 + 56);

    OUTLINED_FUNCTION_26();

    return v10();
  }
}

uint64_t sub_274E63F08()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_26();
  v3 = *(v0 + 72);

  return v2();
}

void sub_274E63F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 16))
  {
    v6 = *(a6 + 16);
    sub_274E61A64();

    XOJIT_XOJIT_LinkStaticArchiveWithForceLoadAsync();
  }

  __break(1u);
}

uint64_t _s5XOJIT10XOJITErrorC4KindO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_37();
  sub_2750BF398();
  OUTLINED_FUNCTION_31();
  return sub_2750BF3C8();
}

uint64_t sub_274E64110()
{
  OUTLINED_FUNCTION_37();
  sub_2750BF398();
  OUTLINED_FUNCTION_31();
  return sub_2750BF3C8();
}

void XOJIT.ExecutionSession.lookup(searchOrder:name:lookupFlags:lookupKind:requiredState:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v7 = *a5;
  v8 = *a6;
  v9 = *v6;
  v12 = *a4;
  v11 = v7;
  v10 = v8;
  XOJIT.lookup(searchOrder:name:lookupFlags:lookupKind:requiredState:)(a1, a2, a3, &v12, &v11, &v10);
}

void XOJIT.ExecutionSession.createJITDylib(name:)()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v1 = v0[1];
  v4[0] = 0;
  v3 = sub_2750BF288();
  LLVMOrcExecutionSessionCreateJITDylib(v1, v4, (v3 + 32));
}

void XOJIT.ExecutionSession.createBareJITDylib(name:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_2750BF288();
  LLVMOrcExecutionSessionCreateBareJITDylib(v1, (v3 + 32));
}

uint64_t XOJIT.MachOHeaderOptions.Dylib.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XOJIT.MachOHeaderOptions.Dylib.name.setter()
{
  OUTLINED_FUNCTION_38();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.Dylib.init(name:timestamp:currentVersion:compatibilityVersion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 28) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 24) = a5;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.Dylib.init(name:timestamp:currentVersion:compatibilityVersion:loadKind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = a4;
  *(a7 + 24) = a5;
  *(a7 + 28) = v7;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.idDylib.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 28) = v3;
  *(a1 + 24) = v2;
}

__n128 XOJIT.MachOHeaderOptions.idDylib.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  v4 = a1[1].n128_u8[12];
  v5 = v1->n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[12] = v4;
  v1[1].n128_u32[2] = v3;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.loadDylibs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t XOJIT.MachOHeaderOptions.rpaths.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

__n128 XOJIT.MachOHeaderOptions.init(idDylib:loadDylibs:rpaths:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v11 = *a1;
  v7 = a1[1].n128_u64[0];
  v8 = a1[1].n128_u32[2];
  v9 = a1[1].n128_u8[12];

  result = v11;
  *a4 = v11;
  a4[1].n128_u64[0] = v7;
  a4[1].n128_u8[12] = v9;
  a4[1].n128_u32[2] = v8;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

void sub_274E6463C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 28);
  v5 = *(a1 + 6);
  v6 = a1[5];
  v7 = a1[4];
  XOJIT_MachOHeaderOptions_Create();
}

uint64_t sub_274E6496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = *(a3 + 16);
      v9 = v13;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = *(a3 + 16);
      v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v11[0] = v9;
      v11[1] = a6;
      v12 = a7;
      XOJIT_MachOHeaderOptions_SetIDDylib(v8, v11);
LABEL_7:
    }
  }

  sub_2750BF328();
  if (!v7)
  {
    goto LABEL_7;
  }
}

void sub_274E64A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 16);
  v7[0] = a1;
  v7[1] = a5;
  v8 = a6;
  v9 = BYTE4(a6) & 1;
  XOJIT_MachOHeaderOptions_AddLoadDylib(v6, v7);
}

uint64_t sub_274E64ABC()
{
  XOJIT_MachOHeaderOptions_Destroy(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v1);
}

void XOJIT.createJITDylib(name:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v17 = 0;
  if (v7)
  {
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = BYTE4(v6);
    v15 = v7;
    v16 = v8;
    type metadata accessor for XOJIT.MachOHeaderOptions.COptions();
    OUTLINED_FUNCTION_5();
    swift_allocObject();

    sub_274E6463C(&v11);
  }

  v9 = *(v3 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_19();
    v10 = sub_2750BF288();
    XOJIT_XOJIT_CreateJITDylib(v9, (v10 + 32), 0);
  }

  __break(1u);
  __break(1u);
}

void XOJIT.createBareJITDylib(name:)()
{
  v1 = *(v0 + 16);
  v2 = sub_2750BF288();
  LLVMOrcExecutionSessionCreateBareJITDylib(v1, (v2 + 32));
}

uint64_t XOJIT.setLoadableAtPathViaRegex(jd:regex:replacement:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(result + 8) + 16);
    v4 = sub_2750BF288();
    OUTLINED_FUNCTION_32();
    v5 = sub_2750BF288();
    XOJIT_XOJIT_SetLoadableAtPathViaRegex(v2, v3, (v4 + 32), (v5 + 32));
  }

  __break(1u);
  return result;
}

uint64_t XOJIT.ReplacementManager.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_18();
  v2 = swift_allocObject();
  XOJIT.ReplacementManager.init(_:)(a1);
  return v2;
}

uint64_t XOJIT.ReplacementManager.init(_:)(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    XOJIT_CreateReplacementManager(result);
  }

  __break(1u);
  return result;
}

uint64_t XOJIT.ReplacementManager.deinit()
{
  XOJIT_DisposeReplacementManager(*(v0 + 24));
  v1 = *(v0 + 16);

  return v0;
}

uint64_t XOJIT.ReplacementManager.__deallocating_deinit()
{
  XOJIT.ReplacementManager.deinit();
  v0 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t XOJIT.ReplacementManager.addWithReplacement(object:name:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  type metadata accessor for LLVMMemoryBuffer();
  swift_initStackObject();

  v7 = OUTLINED_FUNCTION_33();
  sub_274E68B58(v7, v8);
  v9 = *(v5 + 24);
  v10 = *(v6 + 16);
  sub_274E68B44();
  v11 = OUTLINED_FUNCTION_22();
  v14 = XOJIT_ReplacementManager_AddObjectFile(v11, v12, v13);
  if (v14)
  {
    LLVMGetErrorMessage(v14);
  }
}

uint64_t XOJIT.ReplacementManager.addWithReplacement(object:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(*(a2 + 8) + 16);
  sub_274E61A64();
  v5 = OUTLINED_FUNCTION_22();
  result = XOJIT_ReplacementManager_AddObjectFile(v5, v6, v7);
  if (result)
  {
    LLVMGetErrorMessage(result);
  }

  return result;
}

uint64_t XOJIT.ReplacementManager.addWithReplacement(object:to:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_274E65088()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_274E65158;

  return sub_274E637B8(sub_274E66EF4, v3);
}

uint64_t sub_274E65158()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_274E65278, 0, 0);
  }

  else
  {
    v9 = *(v3 + 48);

    OUTLINED_FUNCTION_26();

    return v10();
  }
}

uint64_t sub_274E65278()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_26();
  v3 = *(v0 + 64);

  return v2();
}

void sub_274E652D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 24);
  v6 = *(a5 + 16);
  sub_274E61A64();

  XOJIT_ReplacementManager_AddObjectFileAsync(v5, v6);
}

uint64_t XOJIT.ORCRuntimeBridge.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void XOJIT.ORCRuntimeBridge.jit_dlopen(name:)()
{
  v2 = *MEMORY[0x277D85DE8];
  if (*(*(v0 + 16) + 16))
  {
    sub_2750BF288();
    v1 = OUTLINED_FUNCTION_39();
    XOJIT_OrcRTJITDlopen(v1);
  }

  __break(1u);
}

uint64_t XOJIT.ORCRuntimeBridge.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t XOJIT.ORCRuntimeBridge.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2821FE8D8](v2);
}

uint64_t XOJIT.UVSymbolString.description.getter()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_21();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v10 = v1;
  OUTLINED_FUNCTION_21();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_274E66F00;
  *(v3 + 24) = v2;
  aBlock[4] = sub_274E66F08;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_11();
  aBlock[2] = v4;
  aBlock[3] = &block_descriptor;
  v5 = _Block_copy(aBlock);
  swift_retain_n();

  XOJIT_SymbolString_WithStringRepresentationsDo(&v10, 1, v5);

  _Block_release(v5);
  swift_beginAccess();
  if (!*(v2 + 24))
  {
    __break(1u);
  }

  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_274E65668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 16);
  if (!a1)
  {
    a2 = 0;
  }

  return sub_274E656A8(a1, a2, v3);
}

uint64_t sub_274E656A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_2750BF278();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  sub_2750BF268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2608, &qword_2750C0FD8);
  sub_274E68174(&qword_2809A2610, &qword_2809A2608, &qword_2750C0FD8);
  result = sub_2750BF258();
  if (v8)
  {
    v9 = result;
    v10 = v8;
    swift_beginAccess();
    v11 = a3[1];
    *a3 = v9;
    a3[1] = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void XOJIT.UVSymbolString.withStringRepresentationDo(_:)()
{
  OUTLINED_FUNCTION_38();
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = *v1;
  OUTLINED_FUNCTION_21();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v7[4] = sub_274E687C4;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  OUTLINED_FUNCTION_11();
  v7[2] = v4;
  v7[3] = &block_descriptor_20;
  v5 = _Block_copy(v7);

  XOJIT_SymbolString_WithStringRepresentationsDo(v8, 1, v5);
  _Block_release(v5);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_274E658D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t XOJIT.UVSymbolString.hashValue.getter()
{
  v1 = *v0;
  sub_2750BF398();
  OUTLINED_FUNCTION_31();
  return sub_2750BF3C8();
}

uint64_t sub_274E659D0()
{
  v1 = *v0;
  sub_2750BF398();
  MEMORY[0x277C69990](v1);
  return sub_2750BF3C8();
}

void XOJIT.intern(_:)(unint64_t **a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = sub_2750BF288();
    v5 = XOJIT_XOJIT_Intern(v2, (v4 + 32));

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t XOJIT.SymbolTableStream.Record.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XOJIT.SymbolTableStream.Record.name.setter()
{
  OUTLINED_FUNCTION_38();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

BOOL static XOJIT.SymbolTableStream.Record.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_2750BF338();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t XOJIT.SymbolTableStream.Record.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2750BF298();
  return MEMORY[0x277C699A0](v3);
}

uint64_t XOJIT.SymbolTableStream.Record.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2750BF398();
  sub_2750BF298();
  MEMORY[0x277C699A0](v3);
  return sub_2750BF3C8();
}

uint64_t sub_274E65C1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2750BF398();
  sub_2750BF298();
  MEMORY[0x277C699A0](v3);
  return sub_2750BF3C8();
}

uint64_t XOJIT.SymbolTableStream.makeAsyncIterator()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C0, &qword_2750C04F0);

  return MEMORY[0x2822003E0](v0);
}

uint64_t sub_274E65CC8()
{
  XOJIT.SymbolTableStream.makeAsyncIterator()();

  return sub_274E68110(v0);
}

uint64_t XOJIT.listenToSymbolTableStream()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24D0, &qword_2750C0500);
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  (*(v15 + 104))(&v30 - v19, *MEMORY[0x277D85778], v12);
  v20 = *(type metadata accessor for XOJIT.SymbolTableStream(0) + 20);
  sub_2750BF2D8();
  v21 = *(v15 + 8);
  v22 = OUTLINED_FUNCTION_33();
  v23(v22);
  (*(v6 + 16))(v11, a1 + v20, v3);
  v24 = type metadata accessor for XOJIT.Context(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  result = (*(v6 + 32))(v27 + OBJC_IVAR____TtCFC5XOJIT5XOJIT25listenToSymbolTableStreamFT_VS0_17SymbolTableStreamL_7Context_continuation, v11, v3);
  v29 = *(v1 + 16);
  if (v29)
  {

    XOJIT_XOJIT_GetObjectLinkingLayer(v29);
    XOJIT_SymbolTableCallbackPlugin_Create();
  }

  __break(1u);
  return result;
}

void sub_274E65F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v11[0] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_274E6816C;
  *(v7 + 24) = v6;
  v10[4] = sub_274E687C4;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_274E658D8;
  v10[3] = &block_descriptor_202;
  v8 = _Block_copy(v10);

  XOJIT_SymbolString_WithStringRepresentationsDo(v11, 1, v8);

  _Block_release(v8);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_274E66080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    a2 = 0;
  }

  return sub_274E660B4(a1, a2, a3, a4);
}

uint64_t sub_274E660B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2600, &qword_2750C0FD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v24 - v12;
  v14 = sub_2750BF278();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v28 = a1;
  v29 = a2;
  sub_2750BF268();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2608, &qword_2750C0FD8);
  sub_274E68174(&qword_2809A2610, &qword_2809A2608, &qword_2750C0FD8);
  result = sub_2750BF258();
  if (v18)
  {
    v26 = v8;
    v27 = v4;
    if (a3)
    {
      v19 = result;
      v20 = v18;
      v24[1] = OBJC_IVAR____TtCFC5XOJIT5XOJIT25listenToSymbolTableStreamFT_VS0_17SymbolTableStreamL_7Context_continuation;

      v28 = v19;
      v29 = v20;
      v21 = v31;
      v30 = v31;

      v25 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
      sub_2750BF2E8();
      v22 = *(v9 + 8);
      v23 = v26;
      v22(v13, v26);
      v28 = v25;
      v29 = v20;
      v30 = v21;
      sub_2750BF2E8();

      return (v22)(v13, v23);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_274E6630C(uint64_t result)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
    sub_2750BF2F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XOJIT.addSymbolTableCallback(_:)(uint64_t a1, uint64_t a2)
{
  _s5XOJIT5XOJITC7ContextCMa_0();
  OUTLINED_FUNCTION_21();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  v6 = *(v2 + 16);
  if (v6)
  {

    XOJIT_XOJIT_GetObjectLinkingLayer(v6);
    XOJIT_SymbolTableCallbackPlugin_Create();
  }

  __break(1u);
  return result;
}

uint64_t sub_274E66424(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v6 = *(result + 16);
    v5 = *(result + 24);

    v7 = a2;
    v6(&v7, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E664A0(uint64_t result)
{
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_274E664B4()
{
  v1 = sub_2750BF218();
  v2 = OUTLINED_FUNCTION_7(v1);
  v19 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  OUTLINED_FUNCTION_25();
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24E0, &qword_2750C0508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2750C04A0;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000002750DEF70;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = 0;
  sub_2750BF238();
  v10 = sub_2750BF228();

  [v8 registerDefaults_];

  v11 = [v7 standardUserDefaults];
  v12 = sub_2750BF248();
  v13 = [v11 integerForKey_];

  if (v13 <= 0)
  {
    v14 = sysconf(58);
    if (v14 < 0)
    {
      OUTLINED_FUNCTION_13();
      v15 = sub_2750BF1F8();
      v16 = sub_2750BF318();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = 8;
        _os_log_impl(&dword_274E5C000, v15, v16, "failed to determine cpu count; limiting to %ld threads", v17, 0xCu);
        MEMORY[0x277C6A700](v17, -1, -1);
      }

      (*(v19 + 8))(v0, v1);
      return 8;
    }

    else
    {
      return v14;
    }
  }

  return v13;
}

uint64_t sub_274E667B0()
{
  sub_274E66740();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274E66808(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)()))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2618, &qword_2750C0FE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  (*(v5 + 16))(&v16 - v8, a1, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2620, &qword_2750C0FE8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + *(*v13 + 88), v9, v4);

  a2(v14, sub_274E66A84);
}

uint64_t sub_274E66960(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = *(*result + 88);
      type metadata accessor for XOJITError();
      v4 = swift_allocObject();
      *(v4 + 16) = a2;
      sub_274E61948();
      swift_allocError();
      *v5 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2618, &qword_2750C0FE0);
      sub_2750BF2B8();
    }

    else
    {
      v6 = *(*result + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2618, &qword_2750C0FE0);
      sub_2750BF2C8();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E66A88()
{
  v1 = OBJC_IVAR____TtCFC5XOJIT5XOJIT25listenToSymbolTableStreamFT_VS0_17SymbolTableStreamL_7Context_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A24C8, &qword_2750C04F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274E66B30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274E66B68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274E66B78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_274E66BAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2628, &qword_2750C0FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_274E66CAC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2630, &qword_2750C0FF8);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0);
}

char *sub_274E66D0C(char *a1, int64_t a2, char a3)
{
  result = sub_274E68284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_274E66D2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

char *sub_274E66DCC(char *a1, int64_t a2, char a3)
{
  result = sub_274E68384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_274E66E10()
{
  result = qword_2809A24B8;
  if (!qword_2809A24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24B8);
  }

  return result;
}

void sub_274E66EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  sub_274E63F64(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t sub_274E66F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274E66F90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274E66FF0()
{
  result = qword_2809A24E8;
  if (!qword_2809A24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24E8);
  }

  return result;
}

unint64_t sub_274E67048()
{
  result = qword_2809A24F0;
  if (!qword_2809A24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24F0);
  }

  return result;
}

unint64_t sub_274E670A0()
{
  result = qword_2809A24F8;
  if (!qword_2809A24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A24F8);
  }

  return result;
}

unint64_t sub_274E670F8()
{
  result = qword_2809A2500;
  if (!qword_2809A2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2500);
  }

  return result;
}

unint64_t sub_274E67150()
{
  result = qword_2809A2508;
  if (!qword_2809A2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2508);
  }

  return result;
}

unint64_t sub_274E671A8()
{
  result = qword_2809A2510;
  if (!qword_2809A2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2510);
  }

  return result;
}

unint64_t sub_274E67200()
{
  result = qword_2809A2518;
  if (!qword_2809A2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2518);
  }

  return result;
}

unint64_t sub_274E67258()
{
  result = qword_2809A2520;
  if (!qword_2809A2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2520);
  }

  return result;
}

unint64_t sub_274E672B0()
{
  result = qword_2809A2528;
  if (!qword_2809A2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2528);
  }

  return result;
}

unint64_t sub_274E67308()
{
  result = qword_2809A2530;
  if (!qword_2809A2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2530);
  }

  return result;
}

unint64_t sub_274E67360()
{
  result = qword_2809A2538;
  if (!qword_2809A2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2538);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_274E67620(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_30(-1);
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
      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_30(v8);
}

_BYTE *sub_274E676A4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_29(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XOJIT.SymbolState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XOJIT.SymbolState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_274E67950(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274E67990(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_274E679F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_274E67A30(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_274E67AA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 29))
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

uint64_t sub_274E67AE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274E67B38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_30(-1);
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
      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_30((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_30(v8);
}

_BYTE *sub_274E67BBC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_29(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XOJIT.UVSymbolString(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XOJIT.UVSymbolString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_274E67E34()
{
  sub_274E686F4(319, &qword_2809A2560, &type metadata for XOJIT.SymbolTableStream.Record, MEMORY[0x277D857B8]);
  if (v0 <= 0x3F)
  {
    sub_274E686F4(319, qword_2809A2568, &type metadata for XOJIT.SymbolTableStream.Record, MEMORY[0x277D85788]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_274E67F14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_274E67F54(uint64_t result, int a2, int a3)
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

uint64_t sub_274E67FA8(uint64_t a1)
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

void sub_274E6805C()
{
  sub_274E686F4(319, qword_2809A2568, &type metadata for XOJIT.SymbolTableStream.Record, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_274E68110(uint64_t a1)
{
  v2 = type metadata accessor for XOJIT.SymbolTableStream(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274E68174(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_274E681BC(uint64_t a1)
{
  v2 = 0x100000000;
  if (!*(v1 + 52))
  {
    v2 = 0;
  }

  sub_274E64A68(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v2 | *(v1 + 48));
}

double sub_274E68224(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(*(v1 + 16) + 16);
  v5[0] = a1;
  v5[1] = *(v1 + 40);
  v6 = v2;
  return XOJIT_MachOHeaderOptions_SetIDDylib(v3, v5);
}

char *sub_274E68284(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2640, &qword_2750C1000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_274E68384(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A2628, &qword_2750C0FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_274E68484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  sub_274E62A50(&v3, &v3 + BYTE6(a2), a3);
}

uint64_t orc_rt_CWrapperFunctionResultGetOutOfBandError(void *a1)
{
  if (a1[1])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

void orc_rt_DisposeCWrapperFunctionResult(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 9)
  {
    v2 = *a1;
LABEL_3:
    free(v2);
    return;
  }

  if (!v1)
  {
    v2 = *a1;
    if (v2)
    {
      goto LABEL_3;
    }
  }
}

unint64_t sub_274E6854C()
{
  result = qword_2809A2638;
  if (!qword_2809A2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A2638);
  }

  return result;
}

uint64_t sub_274E685D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_274E68610(uint64_t result, int a2, int a3)
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

uint64_t sub_274E6865C(uint64_t a1, int a2)
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

uint64_t sub_274E6867C(uint64_t result, int a2, int a3)
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

void sub_274E686F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return MEMORY[0x2821FEB58](a1, XOJIT_XOJIT_GetExecutionSession);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_10(uint64_t a1)
{
  *(v1 + 56) = a1;
  result = *(v1 + 40);
  v3 = *(v1 + 24);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_13()
{

  return MEMORY[0x282200DE8](0x6C7070612E6D6F63, 0xEF54494A4F582E65, 0x54494A4F58, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return LLVMDisposeErrorMessage(v0);
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_23()
{
  v0[2] = 0;
  v0[4] = 0;
  v0[5] = 0;
}

uint64_t OUTLINED_FUNCTION_26()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x277C69990);
}

void OUTLINED_FUNCTION_34()
{
  *(v4 - 128) = v1;
  *(v4 - 124) = v2;
  *(v4 - 120) = v3;
  *(v4 - 112) = v0;
}

unint64_t OUTLINED_FUNCTION_40(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_274E61948();
}

uint64_t sub_274E68B44()
{
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274E68B58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_2750BF288();

  v6 = LLVMCreateMemoryBufferWithMemoryRange(a1, v4, (v5 + 32));

  *(v2 + 16) = v6;
  return v2;
}

uint64_t sub_274E68BF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    LLVMDisposeMemoryBuffer(v1);
  }

  return v0;
}

uint64_t sub_274E68C14()
{
  sub_274E68BF0();

  return MEMORY[0x2821FE8D8](v0);
}

_DWORD *libcd_create(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x100uLL, 0x10F204024BF9B0EuLL);
  *v2 = a1;
  v2[18] = 0;
  v2[4] = 0;
  v2[34] = 0;
  *(v2 + 13) = 0;
  *(v2 + 14) = 0;
  v3 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  *(v2 + 20) = v3;
  *v3 = 2;
  v2[42] = 1;
  *(v2 + 22) = malloc_type_calloc(1uLL, 0x1CuLL, 0x1000040F1E6FBC0uLL);
  *(v2 + 224) = 0;
  return v2;
}

void libcd_free(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 96));
    for (i = *(a1 + 192); ; *(a1 + 104) = *i)
    {
      free(i);
      i = *(a1 + 104);
      if (!i)
      {
        break;
      }
    }

    while (1)
    {
      v3 = *(a1 + 112);
      if (!v3)
      {
        break;
      }

      *(a1 + 112) = *v3;
      free(v3);
    }

    free(*(a1 + 160));
    free(*(a1 + 176));
    libcd_reset_write_method(a1);
    libcd_reset_read_method(a1);

    free(a1);
  }
}

uint64_t libcd_reset_write_method(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (v1 == 1)
    {
      *(result + 24) = -1;
      goto LABEL_11;
    }

    if (v1 != 2)
    {
      goto LABEL_11;
    }
  }

  *(result + 32) = 0;
LABEL_9:
  *(result + 24) = 0;
LABEL_11:
  *(result + 16) = 0;
  *(result + 56) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t libcd_reset_read_method(uint64_t result)
{
  v1 = *(result + 72);
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      *(result + 80) = -1;
      goto LABEL_9;
    }

    if (v1 != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v1 == 3 || v1 == 4)
  {
LABEL_7:
    *(result + 80) = 0;
  }

LABEL_9:
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t libcd_set_hash_types(uint64_t a1, int *a2, unsigned int a3)
{
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  if (a3)
  {
    v6 = a3;
    v7 = a3;
    v8 = a2;
    while (1)
    {
      v9 = *v8++;
      if (!_libcd_get_hash_info(v9))
      {
        return 1;
      }

      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v6 = 0;
LABEL_7:
    v10 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
    *(a1 + 160) = v10;
    memcpy(v10, a2, 4 * v6);
    *(a1 + 168) = a3;
    v11 = malloc_type_realloc(*(a1 + 176), 28 * v6, 0x1000040F1E6FBC0uLL);
    *(a1 + 176) = v11;
    bzero(v11, 28 * v6);
    return 0;
  }
}

uint64_t *_libcd_get_hash_info(int a1)
{
  if (a1 < 3)
  {
    result = (&_known_hash_types + 16 * a1);
    if (*result < 0x21)
    {
      return result;
    }

    v2 = *result;
    _libcd_err_log("%s: internal error, hash len (%d) is larger than max known hash len (%d)\n");
  }

  else
  {
    _libcd_err_log("%s: unknown hash type %d (>= %d)\n");
  }

  return 0;
}

uint64_t libcd_set_input_mem(uint64_t a1, uint64_t a2)
{
  result = libcd_reset_read_method(a1);
  *(a1 + 72) = 2;
  *(a1 + 64) = _libcd_read_page_mem;
  *(a1 + 80) = a2;
  *(a1 + 88) = 1;
  return result;
}

size_t _libcd_read_page_mem(void *a1, int a2, uint64_t a3, size_t a4, void *a5)
{
  v6 = a4;
  v9 = a1[10];
  bzero(a5, a4);
  if (v6 + a3 > *a1)
  {
    v6 = *a1 - a3;
  }

  memcpy(a5, (v9 + a3), v6);
  return v6;
}

uint64_t libcd_set_output_mem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = libcd_reset_write_method(a1);
  *(a1 + 16) = 2;
  *(a1 + 8) = _libcd_write_mem;
  *(a1 + 24) = a2;
  *(a1 + 32) = a2 + a3;
  *(a1 + 56) = 1;
  return result;
}

size_t _libcd_write_mem(void *a1, uint64_t a2, void *__src, size_t __n)
{
  v4 = a1[3];
  v5 = a1[6] + a2;
  v6 = a1[4] - v4;
  if (v5 + __n <= v6)
  {
    v7 = __n;
    memcpy((v4 + v5), __src, __n);
    a1[5] += v7;
  }

  else
  {
    _libcd_err_log("%s: write beyond end: %zu > %zu\n", "_libcd_write_mem", v5 + __n, v6);
    return 0;
  }

  return v7;
}

uint64_t libcd_set_linkage(uint64_t a1, int a2, __int128 *a3)
{
  v4 = a2;
  if (_libcd_get_hash_info(a2))
  {
    result = 0;
    *(a1 + 224) = 1;
    *(a1 + 225) = v4;
    v7 = *a3;
    *(a1 + 242) = *(a3 + 4);
    *(a1 + 226) = v7;
  }

  else
  {
    _libcd_err_log("%s: unknown linkage hash type\n", "libcd_set_linkage");
    return 1;
  }

  return result;
}

void _libcd_err_log(char *a1, ...)
{
  va_start(va, a1);
  v1 = 0;
  vasprintf(&v1, a1, va);
  if (v1)
  {
    _configured_log_writer(v1);
    free(v1);
  }
}

size_t libcd_cd_size(uint64_t a1, int a2)
{
  hash_info = _libcd_get_hash_info(a2);
  v4 = *(a1 + 224);
  v5 = *(a1 + 96);
  if (v5)
  {
    v6 = strlen(v5) + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 192);
  if (v7)
  {
    v8 = strlen(v7) + 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = 88;
  if (*(a1 + 224))
  {
    v9 = 108;
  }

  v10 = v6 + v8 + v9;
  if (*(a1 + 224))
  {
    v10 += 20;
  }

  return v10 + (*(a1 + 120) + ((*a1 + 4095) >> 12)) * *hash_info;
}

uint64_t libcd_superblob_size(uint64_t a1)
{
  if (*(a1 + 168))
  {
    v2 = 0;
    v3 = 12;
    do
    {
      v3 += libcd_cd_size(a1, *(*(a1 + 160) + 4 * v2++));
    }

    while (v2 < *(a1 + 168));
  }

  else
  {
    LODWORD(v2) = 0;
    v3 = 12;
  }

  for (i = *(a1 + 104); i; i = *i)
  {
    v3 += i[3];
    LODWORD(v2) = v2 + 1;
  }

  v5 = *(a1 + 128);
  v6 = v5 == 0;
  v7 = v5 + v3;
  if (v6)
  {
    v8 = v2;
  }

  else
  {
    v8 = v2 + 1;
  }

  return v7 + 8 * v8;
}

uint64_t libcd_serialize_as_type(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 64) || !*(a1 + 72))
  {
    _libcd_err_log("%s: No read page method set\n", "libcd_serialize_as_type");
    return 2;
  }

  if (!*(a1 + 8) || !*(a1 + 16))
  {
    _libcd_err_log("%s: No write method set\n");
    return 1;
  }

  *(a1 + 40) = 0;
  v3 = a1 + 104;
  v4 = *(a1 + 168) - 1;
  v5 = (a1 + 104);
  do
  {
    v5 = *v5;
    ++v4;
  }

  while (v5);
  v6 = *(a1 + 128);
  if (v6)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v4;
  }

  if (!v7)
  {
    _libcd_err_log("%s: nothing to serialize\n", "libcd_serialize_as_type");
    return 5;
  }

  v32[0] = bswap32(a2);
  v32[1] = bswap32(libcd_superblob_size(a1));
  v32[2] = bswap32(v7);
  if (!(*(a1 + 8))(a1, *(a1 + 40), v32, 12))
  {
    _libcd_err_log("%s: serialize superblob header failed\n");
    return 1;
  }

  if (v6)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

  v9 = 8 * v8;
  v10 = 8 * v8 + 12;
  v11 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v12 = v11;
  if (*(a1 + 168))
  {
    v13 = 0;
    v14 = v11 + 1;
    do
    {
      v15 = v13 + 4095;
      if (!v13)
      {
        v15 = 0;
      }

      *(v14 - 1) = bswap32(v15);
      *v14 = bswap32(v10);
      v16 = *(*(a1 + 160) + 4 * v13++);
      v10 += libcd_cd_size(a1, v16);
      v14 += 2;
    }

    while (v13 < *(a1 + 168));
  }

  else
  {
    LODWORD(v13) = 0;
  }

  v19 = *v3;
  if (*v3)
  {
    v20 = &v12[8 * v13 + 4];
    do
    {
      *(v20 - 1) = bswap32(*(v19 + 8));
      *v20 = bswap32(v10);
      v10 += *(v19 + 24);
      v19 = *v19;
      LODWORD(v13) = v13 + 1;
      v20 += 8;
    }

    while (v19);
  }

  if (*(a1 + 128))
  {
    v21 = &v12[8 * v13];
    *v21 = 256;
    *(v21 + 1) = bswap32(v10);
  }

  if (!(*(a1 + 8))(a1, *(a1 + 40), v12, v9))
  {
    _libcd_err_log("%s: serialize superblob indices failed\n");
    goto LABEL_50;
  }

  free(v12);
  if (!*(a1 + 168))
  {
    goto LABEL_40;
  }

  v22 = 0;
  do
  {
    v23 = _libcd_serialize_cd(a1, *(*(a1 + 160) + 4 * v22));
    if (v23)
    {
      v17 = v23;
      _libcd_err_log("%s: serialize code directory type %d failed, error %d\n", "libcd_serialize_as_type", *(*(a1 + 160) + 4 * v22), v23);
      return v17;
    }

    ++v22;
  }

  while (v22 < *(a1 + 168));
  do
  {
LABEL_40:
    v3 = *v3;
    if (!v3)
    {
      v24 = *(a1 + 128);
      if (!v24)
      {
        return 0;
      }

      v25 = malloc_type_calloc(1uLL, v24, 0xEFBE620uLL);
      if (!v25)
      {
        v28 = *(a1 + 128);
        v29 = __error();
        _libcd_err_log("%s: serialize signature space(%zu) failed allocating space (%d)\n", "libcd_serialize_as_type", v28, *v29);
        return 6;
      }

      v12 = v25;
      v26 = *(a1 + 136);
      if (v26 == 4)
      {
        v30 = *(a1 + 128);
        if ((*(*(a1 + 144) + 16))())
        {
LABEL_46:
          if ((*(a1 + 8))(a1, *(a1 + 40), v12, *(a1 + 128)))
          {
            free(v12);
            return 0;
          }

          v31 = *(a1 + 128);
          _libcd_err_log("%s: serialize signature space (%zu) failed\n");
LABEL_50:
          free(v12);
          return 1;
        }
      }

      else if (v26 != 3 || ((*(a1 + 144))(a1, *(a1 + 152), *(a1 + 128), v25) & 1) != 0)
      {
        goto LABEL_46;
      }

      _libcd_err_log("%s: Failed to generate signature\n", "libcd_serialize_as_type");
      free(v12);
      return 4;
    }
  }

  while ((*(a1 + 8))(a1, *(a1 + 40), *(v3 + 16), *(v3 + 24)));
  v27 = *(v3 + 8);
  _libcd_err_log("%s: serialize raw blob data, slot %#x, failed\n");
  return 1;
}

uint64_t _libcd_serialize_cd(uint64_t a1, int a2)
{
  v55 = *MEMORY[0x277D85DE8];
  hash_info = _libcd_get_hash_info(a2);
  v5 = libcd_cd_size(a1, a2);
  v6 = malloc_type_calloc(1uLL, v5, 0x5D0887uLL);
  if (v6)
  {
    v7 = v6;
    v6->i32[0] = 34397946;
    v8 = libcd_cd_size(a1, a2);
    v9 = *(a1 + 224);
    if (*(a1 + 224))
    {
      v10 = 393728;
    }

    else
    {
      v10 = 262656;
    }

    v7->i32[1] = bswap32(v8);
    v7->i32[2] = v10;
    v7->i32[3] = bswap32(*(a1 + 92));
    if (v9)
    {
      v11 = 108;
    }

    else
    {
      v11 = 88;
    }

    v12 = *(a1 + 96);
    if (v12)
    {
      v7[1].i32[1] = v11 << 24;
      v11 += strlen(v12) + 1;
    }

    v13 = *(a1 + 120);
    v14 = *a1;
    v15 = bswap32((*a1 + 4095) >> 12);
    v7[1].i32[2] = bswap32(v13);
    v7[1].i32[3] = v15;
    v53 = v5;
    if (HIDWORD(v14))
    {
      v7[3].i64[1] = bswap64(v14);
    }

    else
    {
      v7[2].i32[0] = bswap32(v14);
    }

    v17 = *hash_info;
    v7[2].i8[4] = *hash_info;
    v7[2].i8[5] = a2;
    v7[2].i8[6] = *(a1 + 184);
    v7[2].i8[7] = 12;
    v18 = *(a1 + 192);
    if (v18)
    {
      v7[3].i32[0] = bswap32(v11);
      v11 += strlen(v18) + 1;
    }

    v7[4] = vrev64q_s8(*(a1 + 200));
    v7[5].i64[0] = bswap64(*(a1 + 216));
    if (v9)
    {
      v7[6].i8[0] = *(a1 + 225);
      if (*(a1 + 246) == 1)
      {
        v19 = *(a1 + 247);
        v20 = bswap32(*(a1 + 248)) >> 16;
      }

      else
      {
        LOWORD(v20) = 0;
        v19 = 1;
      }

      v7[6].i8[1] = v19;
      v7[6].i16[1] = v20;
      v7[6].i32[1] = bswap32(v11);
      v7[6].i32[2] = 335544320;
      v11 += 20;
      v21 = 27;
    }

    else
    {
      v21 = 22;
    }

    v7[1].i32[0] = bswap32(v11 + v13 * v17);
    v22 = &v7->i32[v21];
    if (v12)
    {
      v23 = strlen(v12) + 1;
      memcpy(v22, v12, v23);
      v22 = (v22 + v23);
      v18 = *(a1 + 192);
    }

    if (v18)
    {
      v24 = strlen(v18) + 1;
      memcpy(v22, v18, v24);
      v22 = (v22 + v24);
    }

    if (*(a1 + 224) == 1)
    {
      v25 = *(a1 + 226);
      v22[4] = *(a1 + 242);
      *v22 = v25;
      v22 += 5;
    }

    if (*(a1 + 120))
    {
      v26 = (hash_info[1])();
      v27 = (((*(v26 + 8) + *(v26 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v26, v28);
      v30 = &v52 - v29;
      v31 = malloc_type_calloc(*(a1 + 120), *hash_info, 0x7426B6D8uLL);
      for (i = *(a1 + 112); i; i = *i)
      {
        ccdigest_init();
        v34 = i[2];
        v33 = i[3];
        ccdigest_update();
        (*(v26 + 56))(v26, v30, &v31[*hash_info * (*(a1 + 120) - *(i + 2))]);
      }

      memcpy(v22, v31, *hash_info * *(a1 + 120));
      v35 = v22 + *hash_info * *(a1 + 120);
      free(v31);
    }

    v36 = *a1 + 4095;
    v54 = 0;
    v37 = (v36 >> 12);
    if ((v36 >> 12))
    {
      v38 = 0;
      do
      {
        v39 = *hash_info;
        v54 = _libcd_hash_page(a1, v38);
        if (v54)
        {
          v40 = 1;
        }

        else
        {
          v40 = v37 - 1 == v38;
        }

        ++v38;
      }

      while (!v40);
    }

    if (v54)
    {
      _libcd_err_log("%s: serialize page hashes failed\n", "_libcd_serialize_cd");
      free(v7);
      result = v54;
    }

    else if ((*(a1 + 8))(a1, *(a1 + 40), v7, v53))
    {
      v42 = (hash_info[1])();
      v43 = (((*(v42 + 8) + *(v42 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v42, v44);
      v46 = &v52 - v45;
      v47 = malloc_type_calloc(1uLL, *hash_info, 0xC6665FD8uLL);
      if (v47)
      {
        v48 = v47;
        ccdigest_init();
        ccdigest_update();
        (*(v42 + 56))(v42, v46, v48);
        v49 = *(a1 + 168);
        if (v49)
        {
          v50 = *(a1 + 176);
          while (*(v50 + 24) == 1)
          {
            if (*v50 == a2)
            {
              goto LABEL_53;
            }

            v50 += 28;
            if (!--v49)
            {
              goto LABEL_54;
            }
          }

          *v50 = a2;
          *(v50 + 24) = 1;
LABEL_53:
          v51 = *v48;
          *(v50 + 20) = v48[4];
          *(v50 + 4) = v51;
        }

LABEL_54:
        free(v48);
        free(v7);
        result = 0;
      }

      else
      {
        _libcd_err_log("%s: Failed to allocated memory for cdhash\n", "_libcd_serialize_cd");
        free(v7);
        result = 6;
      }
    }

    else
    {
      _libcd_err_log("%s: failed to write directory\n", "_libcd_serialize_cd");
      free(v7);
      result = 1;
    }
  }

  else
  {
    _libcd_err_log("%s: Failed to allocate temporary memory for code directory\n", "_libcd_serialize_cd");
    result = 6;
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _libcd_hash_page(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v21 = *MEMORY[0x277D85DE8];
  memset(__src, 0, sizeof(__src));
  v12 = (*(v5 + 8))();
  v13 = (((*(v12 + 8) + *(v12 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v19[-v15];
  bzero(v19, 0x1000uLL);
  if ((*(v11 + 64))(v11, v10, v10 << 12, 4096, v19))
  {
    ccdigest_init();
    ccdigest_update();
    (*(v12 + 56))(v12, v16, __src);
    memcpy(v4, __src, *v6);
    result = 0;
  }

  else
  {
    _libcd_err_log("%s: read page %d at pos %zu failed (pages: %d)\n", "_libcd_hash_page", v10, v10 << 12, v8);
    result = 2;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void xojit::ReplacementManager::ReplacementManager(xojit::ReplacementManager *this, llvm::orc::ObjectLinkingLayer *a2, llvm::orc::ExecutorProcessControl *a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 850045863;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  operator new();
}

uint64_t llvm::orc::ObjectLinkingLayer::addPlugin(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 24));
  v5 = *(a1 + 176);
  v4 = *(a1 + 184);
  if (v5 >= v4)
  {
    v8 = *(a1 + 168);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v22[4] = a1 + 168;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1 + 168, v14);
    }

    v15 = v10;
    v16 = (8 * v10);
    v17 = *a2;
    *a2 = 0;
    v18 = &v16[-v15];
    *v16 = v17;
    v7 = v16 + 1;
    memcpy(v18, v8, v9);
    v19 = *(a1 + 168);
    *(a1 + 168) = v18;
    *(a1 + 176) = v7;
    v20 = *(a1 + 184);
    *(a1 + 184) = 0;
    v22[2] = v19;
    v22[3] = v20;
    v22[0] = v19;
    v22[1] = v19;
    std::__split_buffer<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  *(a1 + 176) = v7;
  std::mutex::unlock((a1 + 24));
  return a1;
}

void xojit::ReplacementManager::~ReplacementManager(xojit::ReplacementManager *this)
{
  dsema = dispatch_semaphore_create(0);
  v2 = *(*this + 8);
  operator new();
}

uint64_t llvm::orc::ExecutionSession::dispatchTask(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 72) + 24);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  (*(*v2 + 16))(v2, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t xojit::ReplacementManager::addWithReplacement@<X0>(uint64_t *a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 8);
  v9 = *(*a3 + 8);
  v10 = *(*a3 + 16) - v9;
  v11 = (*(**a3 + 16))();
  *v81 = v9;
  *&v81[8] = v10;
  *&v81[16] = v11;
  *&v81[24] = v12;
  llvm::orc::getObjectFileInterface(v8, v81, &v84);
  if ((v88 & 1) == 0)
  {
    v14 = *(*a1 + 8);
    v15 = v87;
    v80 = v87;
    if (v87 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v87 + 8), 1uLL);
      v15 = v80;
    }

    if (v15)
    {
      v16 = *v15;
      *v81 = &v81[24];
      *&v81[8] = xmmword_2750C1200;
      llvm::SmallVectorImpl<char>::append<char const*,void>(v81, (v15 + 16), (v15 + 16 + v16));
      v17 = a1[10];
      a1[10] = v17 + 1;
      std::to_string(&v78, v17);
      v18 = std::string::insert(&v78, 0, "$", 1uLL);
      v19 = v18->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v81, p_p, p_p + size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      llvm::orc::ExecutionSession::intern(v14, *v81, *&v81[8], &__p);
      v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v84, &v80)[4];
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v84, &__p)[4] = v22;
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::erase(&v84, &v80);
      if (v87 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v87 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v87 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((__p.__r_.__value_.__r.__words[0] + 8), 1uLL);
        if (__p.__r_.__value_.__r.__words[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((__p.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      if (*v81 != &v81[24])
      {
        free(*v81);
      }

      v23 = v80;
    }

    else
    {
      v23 = 0;
    }

    v67 = v14;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v23 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    std::mutex::lock((a1 + 2));
    v24 = (*(**a3 + 16))();
    v26 = v25;
    __p.__r_.__value_.__r.__words[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct((a1 + 11), &__p);
    v28 = v27;
    *&v29 = 0;
    v82 = 0u;
    memset(v83, 0, sizeof(v83));
    v68 = 0u;
    *v81 = v29;
    *&v81[16] = 0u;
    v69 = 0;
    v70 = 0uLL;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v30 = llvm::StringMapImpl::LookupBucketFor((v27 + 2), v24, v26);
    v31 = *(v28 + 1);
    v32 = v30;
    v33 = *(v31 + 8 * v30);
    if (v33 == -8)
    {
      --v28[6];
    }

    else if (v33)
    {
      goto LABEL_39;
    }

    v34 = operator new(v26 + 105, 8uLL);
    v36 = v34;
    v37 = v34 + 104;
    if (v26)
    {
      memcpy(v34 + 104, v24, v26);
    }

    *&v35 = 0;
    v37[v26] = 0;
    v38 = v68;
    *v36 = v26;
    *(v36 + 1) = v38;
    v39 = *(&v68 + 1);
    v68 = v35;
    *(v36 + 2) = v39;
    *(v36 + 6) = v69;
    v69 = 0;
    *(v36 + 4) = v70;
    v40 = *(&v70 + 1);
    v70 = v35;
    *(v36 + 5) = v40;
    *(v36 + 12) = v71;
    v71 = 0;
    *(v36 + 7) = v72;
    v72 = 0;
    *(v36 + 8) = v73;
    v73 = 0;
    *(v36 + 18) = v74;
    v74 = 0;
    *(v36 + 10) = v75;
    v75 = 0;
    *(v36 + 11) = v76;
    v76 = 0;
    *(v36 + 24) = v77;
    v77 = 0;
    *(v31 + 8 * v32) = v36;
    ++v28[5];
    for (i = (*(v28 + 1) + 8 * llvm::StringMapImpl::RehashTable((v28 + 2), v32)); ; ++i)
    {
      v33 = *i;
      if (*i && v33 + 1 != 0)
      {
        break;
      }
    }

LABEL_39:
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(&v75);
    MEMORY[0x277C69E30](v75, 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(&v72);
    MEMORY[0x277C69E30](v72, 8);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v70);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(&v68);
    MEMORY[0x277C69E30](v68, 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(&v83[1] + 8);
    MEMORY[0x277C69E30](*(&v83[1] + 1), 8);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(v83);
    MEMORY[0x277C69E30](*&v83[0], 8);
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v81[24]);
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(v81);
    MEMORY[0x277C69E30](*v81, 8);
    if (v85)
    {
      if (v86)
      {
        v43 = 16 * v86;
        v44 = v84;
        while ((*v44 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v44 += 16;
          v43 -= 16;
          if (!v43)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v44 = v84;
      }

      v61 = v84 + 16 * v86;
LABEL_68:
      if (v44 != v61)
      {
        *v81 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v33 + 1, v44, v81) & 1) != 0 || (*v81 = 0, (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v33 + 4, v44, v81)) || (*v81 = 0, llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v33 + 7, v44, v81)))
        {
          *(v44 + 9) |= 2u;
        }

        while (1)
        {
          v44 += 16;
          if (v44 == v61)
          {
            break;
          }

          if ((*v44 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_68;
          }
        }
      }
    }

LABEL_44:
    v45 = a1[10];
    a1[10] = v45 + 1;
    std::to_string(&__p, v45);
    v46 = std::string::insert(&__p, 0, "__replacement_tag$", 0x12uLL);
    v47 = v46->__r_.__value_.__r.__words[2];
    *v81 = *&v46->__r_.__value_.__l.__data_;
    *&v81[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    if (v81[23] >= 0)
    {
      v48 = v81;
    }

    else
    {
      v48 = *v81;
    }

    if (v81[23] >= 0)
    {
      v49 = v81[23];
    }

    else
    {
      v49 = *&v81[8];
    }

    llvm::orc::ExecutionSession::intern(v67, v48, v49, &v78);
    if ((v81[23] & 0x80000000) != 0)
    {
      operator delete(*v81);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct((a1 + 11), &__p);
    v51 = v50;
    v52 = v50[5];
    v53 = v50[6];
    if (v52 >= v53)
    {
      v56 = v50[4];
      v57 = (v52 - v56) >> 3;
      v58 = v57 + 1;
      if ((v57 + 1) >> 61)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v59 = v53 - v56;
      if (v59 >> 2 > v58)
      {
        v58 = v59 >> 2;
      }

      if (v59 >= 0x7FFFFFFFFFFFFFF8)
      {
        v60 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v60 = v58;
      }

      *&v82 = v50 + 4;
      if (v60)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>((v50 + 4), v60);
      }

      v62 = (8 * v57);
      *v81 = 0;
      *&v81[8] = v62;
      *&v81[16] = 8 * v57;
      *&v81[24] = 0;
      v63 = v78.__r_.__value_.__r.__words[0];
      *v62 = v78.__r_.__value_.__r.__words[0];
      if (v63 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v63 + 8), 1uLL);
        v62 = *&v81[16];
      }

      *&v81[16] = v62 + 1;
      std::vector<llvm::orc::SymbolStringPtr>::__swap_out_circular_buffer(v50 + 4, v81);
      v55 = v51[5];
      std::__split_buffer<llvm::orc::SymbolStringPtr>::~__split_buffer(v81);
    }

    else
    {
      v54 = v78.__r_.__value_.__r.__words[0];
      *v52 = v78.__r_.__value_.__r.__words[0];
      if (v54 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v54 + 8), 1uLL);
      }

      v55 = v52 + 1;
    }

    v51[5] = v55;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v84, &v78)[4] = 0x4000;
    v64 = *a1;
    operator new();
  }

  v13 = v84;
  v84 = 0;
  *a4 = v13;
  result = llvm::Expected<llvm::orc::MaterializationUnit::Interface>::~Expected(&v84);
  v66 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::orc::ExecutionSession::intern(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  v7 = *(*(a1 + 72) + 8);
  std::mutex::lock(v7);
  v10 = 0;
  v8 = llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v7[1], a2, a3, &v10);
  v9 = *v8;
  *a4 = *v8;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v9 + 1, 1uLL);
  }

  std::mutex::unlock(v7);
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::erase(uint64_t a1, void *a2)
{
  v5 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v5))
  {
    v4 = v5;
    if ((*v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v4 = -16;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

void llvm::orc::JITDylib::define<llvm::orc::BasicObjectLayerMaterializationUnit>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(*a2 + 16))
  {
    v5 = *(a1 + 32);
    v6[0] = a1;
    v6[1] = a2;
    v6[2] = a3;
    std::recursive_mutex::lock(v5);
    llvm::orc::JITDylib::define<llvm::orc::BasicObjectLayerMaterializationUnit>(std::unique_ptr<llvm::orc::BasicObjectLayerMaterializationUnit> &&,llvm::IntrusiveRefCntPtr<llvm::orc::ResourceTracker>)::{lambda(void)#1}::operator()(v6, a4);
    std::recursive_mutex::unlock(v5);
  }

  else
  {
    *a4 = 0;
  }
}

void xojit::ReplacementManager::applyPendingUpdatesFor(xojit::ReplacementManager *this, llvm::orc::JITDylib *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(*this + 8);
  operator new();
}

uint64_t *llvm::orc::SymbolLookupSet::add(uint64_t *a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  *a2 = 0;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v8 = (v6 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(a1, v11);
    }

    v12 = 16 * v8;
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    *v12 = v4;
    *(v12 + 8) = a3;
    v14[2] = 16 * v8 + 16;
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__swap_out_circular_buffer(a1, v14);
    v7 = a1[1];
    std::__split_buffer<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::~__split_buffer(v14);
  }

  else
  {
    *v6 = v4;
    *(v6 + 8) = a3;
    v7 = v6 + 16;
  }

  a1[1] = v7;
  return a1;
}

void *llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 8 * v4;
    while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      ++result;
      v6 -= 8;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

unint64_t **llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3, int *a4)
{
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v8);
  v10 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v10)
  {
    while (!v10 || v10 == -8)
    {
      v11 = i[1];
      ++i;
      v10 = v11;
    }

    return i;
  }

  v12 = operator new(a3 + 17, 8uLL);
  v13 = v12;
  v14 = (v12 + 2);
  if (a3)
  {
    memcpy(v12 + 2, a2, a3);
  }

  v14[a3] = 0;
  v15 = *a4;
  *v13 = a3;
  v13[1] = v15;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = 16 * v1;
    do
    {
      v4 = *v2;
      if ((*v2 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v5 = v2[1];
        if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
          v4 = *v2;
        }
      }

      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v2 += 2;
      v3 -= 16;
    }

    while (v3);
  }

  return result;
}

uint64_t *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(uint64_t *a1)
{
  v2 = *(a1 + 4);
  v3 = *a1;
  if (v2)
  {
    v4 = 8 * v2;
    do
    {
      if ((*v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
    v3 = *a1;
  }

  MEMORY[0x277C69E30](v3, 8);
  return a1;
}

void *std::vector<llvm::orc::SymbolStringPtr>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = 0;
      *v6++ = *v5;
      *v5++ = 0;
    }

    while (v5 != v3);
    do
    {
      if ((*v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<llvm::orc::SymbolStringPtr>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = 0;
      *v6 = *v5;
      *v5 = 0;
      *(v6 + 8) = *(v5 + 8);
      v5 += 16;
      v6 += 16;
    }

    while (v5 != v3);
    do
    {
      if ((*v2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v2 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v2 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 16);
    v3 -= 16;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__init_with_size[abi:nn200100]<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>*,std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>>(a1, a2);
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 16;
        v5 = v6;
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

void std::future<llvm::MSVCPError>::get(std::__assoc_sub_state **a1@<X0>, std::__assoc_sub_state_vtbl **a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<llvm::MSVCPError>::move(v2, a2);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    on_zero_shared = v2->__on_zero_shared;

    (on_zero_shared)(v2);
  }
}

void std::__assoc_state<llvm::MSVCPError>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t std::__assoc_state<llvm::MSVCPError>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

void std::__assoc_sub_state::__attach_future[abi:nn200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    v3 = std::__throw_future_error[abi:nn200100]();
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::orc::ExecutorProcessControl::MemoryAccess::writeUInt64s(llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>)::{lambda(llvm::Error)#1}>(v3);
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
    *(a1 + 136) = v2 | 2;

    std::mutex::unlock((a1 + 24));
  }
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::orc::ExecutorProcessControl::MemoryAccess::writeUInt64s(llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned long long>>)::{lambda(llvm::Error)#1}>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *a1;
  v5 = v2;
  std::promise<llvm::MSVCPError>::set_value(v3, &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void std::promise<llvm::MSVCPError>::set_value(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
  }

  else
  {
    v3 = std::__throw_future_error[abi:nn200100]();
  }

  std::__assoc_state<llvm::MSVCPError>::set_value<llvm::MSVCPError>(v3, a2);
}

void std::__assoc_state<llvm::MSVCPError>::set_value<llvm::MSVCPError>(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    v5 = std::__throw_future_error[abi:nn200100]();
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v5);
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 144) = *a2;
    *a2 = 0;
    *(a1 + 136) |= 5u;
    std::condition_variable::notify_all((a1 + 88));
    std::mutex::unlock((a1 + 24));
  }
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x277C69E30](*v1, v1[2]);
    }
  }

  return v1;
}

void std::__assoc_state<llvm::MSVCPError>::move(std::__assoc_sub_state *a1@<X0>, std::__assoc_sub_state_vtbl **a2@<X8>)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v8.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v8);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v7, &a1->__exception_);
    v5.__ptr_ = &v7;
    std::rethrow_exception(v5);
    std::promise<llvm::MSVCPError>::~promise(v6);
  }

  else
  {
    *a2 = a1[1].__vftable;
    a1[1].__vftable = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

uint64_t *std::promise<llvm::MSVCPError>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v7.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v7);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v5 = std::future_category();
        MEMORY[0x277C69B50](v6, 4, v5);
        abort();
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::orc::ExecutorProcessControl::MemoryAccess::writeUInt32s(llvm::ArrayRef<llvm::orc::tpctypes::UIntWrite<unsigned int>>)::{lambda(llvm::Error)#1}>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *a1;
  v5 = v2;
  std::promise<llvm::MSVCPError>::set_value(v3, &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void std::vector<xojit::ReplacementManager::DylibState::PendingDefinition>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 5;
        std::allocator_traits<std::allocator<xojit::ReplacementManager::DylibState::PendingDefinition>>::destroy[abi:nn200100]<xojit::ReplacementManager::DylibState::PendingDefinition,void,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<xojit::ReplacementManager::DylibState::PendingDefinition>>::destroy[abi:nn200100]<xojit::ReplacementManager::DylibState::PendingDefinition,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a2[2];
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = a2[1];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  if ((*a2 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*a2 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

atomic_uint *llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (result && add == 1)
  {
    llvm::orc::ResourceTracker::~ResourceTracker(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -16;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(a1, v7, a2);
  }

  return v5;
}

_WORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(uint64_t a1, void *a2, uint64_t *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *a3;
  *result = *a3;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 1uLL);
  }

  result[4] = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -8;
      }

      if (v17.i8[4])
      {
        *v16 = -8;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -8;
      }

      if (v13.i8[4])
      {
        *v12 = -8;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v16 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v16);
        v15 = v16;
        if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        *v15 = 0;
        *v15 = *v4;
        *v4 = 0;
        *(v15 + 8) = *(v4 + 4);
        ++*(v5 + 8);
        v14 = *v4;
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

void *llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v5 = result;
  v6 = a3 - __src;
  v7 = result[1];
  v8 = v7 + a3 - __src;
  if (result[2] < v8)
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 1);
    v7 = v5[1];
  }

  if (__src != a3)
  {
    result = memcpy((*v5 + v7), __src, v6);
    v7 = v5[1];
  }

  v5[1] = v7 + v6;
  return result;
}

double llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::LookupBucketFor<llvm::orc::JITDylib *>(*a1, *(a1 + 16), *a2, &v9);
  v6 = v9;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 12) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::grow(a1, v8);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::LookupBucketFor<llvm::orc::JITDylib *>(*a1, *(a1 + 16), *a2, &v9);
    v6 = v9;
  }

  ++*(a1 + 8);
  if (*v6 != -4096)
  {
    --*(a1 + 12);
  }

  *v6 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 28) = 104;
  result = 0.0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::LookupBucketFor<llvm::orc::JITDylib *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 104 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 104 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(104 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 104 * v10 - 104;
      v13 = vdupq_n_s64(v12 / 0x68);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[13] = -4096;
        }

        v11 += 2;
        result += 26;
      }

      while (((v12 / 0x68 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 0;
      do
      {
        v16 = *(v4 + v15);
        if ((v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::LookupBucketFor<llvm::orc::JITDylib *>(*a1, *(a1 + 16), v16, &v25);
          v17 = v25;
          v18 = v4 + v15;
          *v25 = *(v4 + v15);
          v17[1] = *(v4 + v15 + 8);
          *(v17 + 1) = *(v4 + v15 + 16);
          *(v18 + 16) = 0;
          *(v4 + v15 + 8) = 0;
          *(v18 + 24) = 0;
          v17[4] = 0;
          v17[5] = 0;
          v17[6] = 0;
          *(v17 + 2) = *(v4 + v15 + 32);
          v17[6] = *(v4 + v15 + 48);
          *(v4 + v15 + 32) = 0;
          *(v18 + 40) = 0;
          *(v18 + 48) = 0;
          v17[7] = 0;
          v17[8] = 0;
          v17[9] = 0;
          *(v17 + 7) = *(v4 + v15 + 56);
          v17[9] = *(v4 + v15 + 72);
          *(v4 + v15 + 56) = 0;
          *(v18 + 64) = 0;
          *(v18 + 72) = 0;
          v17[10] = 0;
          v17[11] = 0;
          v17[12] = 0;
          v19 = v4 + v15 + 80;
          *(v17 + 5) = *v19;
          v17[12] = *(v4 + v15 + 96);
          *v19 = 0;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          ++*(a1 + 8);
          v25 = v19;
          std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v25);
          v25 = (v4 + v15 + 56);
          std::vector<xojit::ReplacementManager::DylibState::PendingDefinition>::__destroy_vector::operator()[abi:nn200100](&v25);
          v25 = (v4 + v15 + 32);
          std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v25);
          llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::~StringMap(v4 + v15 + 8);
        }

        v15 += 104;
      }

      while (104 * v3 != v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 104 * v20 - 104;
    v23 = vdupq_n_s64(v22 / 0x68);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_2750C1210)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[13] = -4096;
      }

      v21 += 2;
      result += 26;
    }

    while (((v22 / 0x68 + 2) & 0x7FFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll((v5 + 10));
          MEMORY[0x277C69E30](v5[10], 8);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll((v5 + 7));
          MEMORY[0x277C69E30](v5[7], 8);
          llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v5 + 4);
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::destroyAll((v5 + 1));
          MEMORY[0x277C69E30](v5[1], 8);
          MEMORY[0x277C69E30](v5, 8);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 104 * v1;
    v3 = (*result + 56);
    do
    {
      if ((*(v3 - 7) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = v3 + 3;
        std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v4);
        v4 = v3;
        std::vector<xojit::ReplacementManager::DylibState::PendingDefinition>::__destroy_vector::operator()[abi:nn200100](&v4);
        v4 = v3 - 3;
        std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v4);
        result = llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::~StringMap((v3 - 6));
      }

      v3 += 13;
      v2 -= 104;
    }

    while (v2);
  }

  return result;
}

uint64_t xojit::ReplacementManager::Plugin::Plugin(uint64_t this, xojit::ReplacementManager *a2)
{
  *this = &unk_2883E99F8;
  *(this + 8) = a2;
  *(this + 16) = 0u;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 0;
  if (*(*(a2 + 1) + 64) == 38)
  {
    xojit::ReplacementManager::Plugin::initializeMCDisassembler(this);
  }

  return this;
}

uint64_t *llvm::handleAllErrors<xojit::ReplacementManager::Plugin::Plugin(xojit::ReplacementManager&)::{lambda(llvm::ErrorInfoBase &)#1}>(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  llvm::handleErrors<xojit::ReplacementManager::Plugin::Plugin(xojit::ReplacementManager&)::{lambda(llvm::ErrorInfoBase &)#1}>(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

void xojit::ReplacementManager::Plugin::initializeMCDisassembler(xojit::ReplacementManager::Plugin *this)
{
  v2 = *(*(this + 1) + 8);
  if (*(v2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    v48 = *(v2 + 40);
  }

  v49 = *(v2 + 64);
  v50 = *(v2 + 80);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v3 = llvm::TargetRegistry::lookupTarget(&v48, &v45);
  if (v3)
  {
    v4 = v3;
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v48;
    }

    else
    {
      v5 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v48.__r_.__value_.__l.__size_;
    }

    MCSubtargetInfo = llvm::Target::createMCSubtargetInfo(v3, v5, size, "", 0, "", 0);
    v8 = *(this + 2);
    *(this + 2) = MCSubtargetInfo;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      MCSubtargetInfo = *(this + 2);
    }

    if (MCSubtargetInfo)
    {
      v9 = (v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v48 : v48.__r_.__value_.__r.__words[0];
      v10 = (v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(v48.__r_.__value_.__r.__words[2]) : v48.__r_.__value_.__l.__size_;
      MCRegInfo = llvm::Target::createMCRegInfo(v4, v9, v10);
      v12 = std::unique_ptr<llvm::MCRegisterInfo>::reset[abi:nn200100](this + 3, MCRegInfo);
      if (*(this + 3))
      {
        v13 = *(v4 + 64);
        if (v13)
        {
          v14 = v13(v12);
        }

        else
        {
          v14 = 0;
        }

        v21 = *(this + 4);
        *(this + 4) = v14;
        if (v21)
        {
          MEMORY[0x277C69E40](v21, 0x10F0C40CB53E019);
          v14 = *(this + 4);
        }

        if (v14)
        {
          v22 = *(v4 + 72);
          if (v22)
          {
            v23 = v22();
          }

          else
          {
            v23 = 0;
          }

          v24 = *(this + 5);
          *(this + 5) = v23;
          if (v24)
          {
            (*(*v24 + 8))(v24);
            v23 = *(this + 5);
          }

          if (v23)
          {
            LOWORD(__p[0]) = 2048;
            *(__p + 4) = 2;
            HIDWORD(__p[1]) = 2;
            v32 = 0u;
            *v33 = 0u;
            v34 = 0u;
            *v35 = 0u;
            *v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v48;
            }

            else
            {
              v25 = v48.__r_.__value_.__r.__words[0];
            }

            if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = v48.__r_.__value_.__l.__size_;
            }

            MCAsmInfo = llvm::Target::createMCAsmInfo(v4, *(this + 3), v25, v26, __p);
            v28 = *(this + 6);
            *(this + 6) = MCAsmInfo;
            if (v28)
            {
              (*(*v28 + 8))(v28);
              MCAsmInfo = *(this + 6);
            }

            if (MCAsmInfo)
            {
              v30 = *(this + 2);
              v29 = *(this + 3);
              operator new();
            }

            std::operator+<char>();
            getErrorErrorCat();
            v43.__r_.__value_.__r.__words[0] = 3;
            v43.__r_.__value_.__l.__size_ = &getErrorErrorCat(void)::ErrorErrorCat;
            llvm::make_error<llvm::StringError,std::string,std::error_code>();
          }
        }
      }
    }

    std::operator+<char>();
    getErrorErrorCat();
    v44.__r_.__value_.__r.__words[0] = 3;
    v44.__r_.__value_.__l.__size_ = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  std::operator+<char>();
  v15 = std::string::append(&v43, "': ", 3uLL);
  v16 = v15->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v47 >= 0)
  {
    v17 = &v45;
  }

  else
  {
    v17 = v45;
  }

  if (v47 >= 0)
  {
    v18 = HIBYTE(v47);
  }

  else
  {
    v18 = v46;
  }

  v19 = std::string::append(&v44, v17, v18);
  v20 = v19->__r_.__value_.__r.__words[2];
  *__p = *&v19->__r_.__value_.__l.__data_;
  *&v32 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  getErrorErrorCat();
  v41 = 3;
  v42 = &getErrorErrorCat(void)::ErrorErrorCat;
  llvm::make_error<llvm::StringError,std::string,std::error_code>();
}

void xojit::ReplacementManager::Plugin::~Plugin(xojit::ReplacementManager::Plugin *this)
{
  xojit::ReplacementManager::Plugin::~Plugin(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883E99F8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<llvm::MCContext>::reset[abi:nn200100](this + 7, 0);
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    MEMORY[0x277C69E40](v5, 0x10F0C40CB53E019);
  }

  std::unique_ptr<llvm::MCRegisterInfo>::reset[abi:nn200100](this + 3, 0);
  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

void xojit::ReplacementManager::Plugin::modifyPassConfig(void *a1, void *a2, uint64_t a3, __int128 **a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  std::mutex::lock((v8 + 16));
  v9 = a1[1];
  *&v23 = *a2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct(v9 + 88, &v23);
  v11 = v10;
  v14 = *(a3 + 96);
  v13 = a3 + 96;
  v12 = v14;
  v15 = *(v13 + 23);
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  v17 = *(v13 + 8);
  if (v15 >= 0)
  {
    v18 = *(v13 + 23);
  }

  else
  {
    v18 = *(v13 + 8);
  }

  Key = llvm::StringMapImpl::FindKey((v10 + 8), v16, v18);
  if (Key != -1 && Key != *(v11 + 16))
  {
    v20 = *a4;
    *&v23 = a1;
    *(&v23 + 1) = a2;
    v24 = off_2815A4200 + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(a4, v20, &v23);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v23);
    *&v23 = a1;
    *(&v23 + 1) = a2;
    v24 = &off_2815A4208 + 2;
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100]((a4 + 12), &v23);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v23);
    if (a1[8])
    {
      if (a1[5])
      {
        v21 = *a4;
        *&v23 = a1;
        v24 = &off_2815A4210 + 2;
        std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(a4, v21, &v23);
        llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v23);
      }
    }
  }

  std::mutex::unlock((v8 + 16));
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t **llvm::handleErrors<xojit::ReplacementManager::Plugin::Plugin(xojit::ReplacementManager&)::{lambda(llvm::ErrorInfoBase &)#1}>@<X0>(uint64_t **result@<X0>, uint64_t **a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
    {
      *a2 = 0;
      v4 = v3[1];
      v5 = v3[2];
      if (v4 != v5)
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          llvm::ErrorList::join(&v10, &v9, &v11);
          v6 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
        *a2 = v6;
      }

      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &llvm::ErrorInfoBase::ID);
      if (result)
      {
        *a2 = 0;
        v8 = *(*v3 + 8);

        return v8(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t *llvm::ErrorList::join@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X8>)
{
  result = *a1;
  v7 = *a2;
  if (!result)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*result + 48))(result, &llvm::ErrorList::ID))
    {
      v8 = *a1;
      if (*a2)
      {
        v9 = (*(**a2 + 48))(*a2, &llvm::ErrorList::ID);
        v10 = *a2;
        if (v9)
        {
          *a2 = 0;
          v11 = v10[1];
          v12 = v10[2];
          if (v11 == v12)
          {
            goto LABEL_9;
          }

          do
          {
            result = std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v8 + 1, v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            result = (*(*v10 + 8))(v10);
          }

LABEL_21:
          *a3 = *a1;
          goto LABEL_22;
        }
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      *a2 = 0;
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v8 + 1, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_21;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      operator new();
    }

    v13 = (*a2 + 1);
    v14 = *v13;
    v15 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return result;
  }

  *a3 = result;
LABEL_22:
  *a1 = 0;
  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    v17 = v16 >> 2;
    if (v16 >> 2 <= v14)
    {
      v17 = ((v6 - *a1) >> 3) + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v15 >> 3;
    v32 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v18);
    }

    v29 = 0;
    v30 = 8 * v19;
    v31 = (8 * v19);
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v29, a3);
    v21 = v30;
    memcpy(v31, v4, a1[1] - v4);
    v22 = *a1;
    v23 = v30;
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v24 = v4 - v22;
    v25 = (v23 - (v4 - v22));
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(&v29);
    return v21;
  }

  else if (a2 == v6)
  {
    v20 = *a3;
    *a3 = 0;
    *v6 = v20;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = v6 - 1;
    v9 = a1[1];
    if (v6 >= 8)
    {
      v10 = *v8;
      *v8 = 0;
      *v6 = v10;
      v9 = v6 + 1;
    }

    a1[1] = v9;
    std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v4, v8, v6);
    v11 = *a3;
    *a3 = 0;
    v12 = *v4;
    *v4 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return v4;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 2;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
    result = std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v5, v4, &v5[-v7]);
    v3[1] -= 8 * v7;
  }

  v12 = *a2;
  *a2 = 0;
  *v4 = v12;
  v3[2] = (v4 + 1);
  return result;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t llvm::Target::createMCSubtargetInfo(uint64_t a1, llvm::formatv_object_base *a2, llvm::formatv_object_base *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 88);
  if (!v7)
  {
    return 0;
  }

  v15 = 261;
  v14[0] = a2;
  v14[1] = a3;
  llvm::Triple::Triple(__p, v14);
  v12 = v7(__p, a4, a5, a6, a7);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return v12;
}

uint64_t *std::unique_ptr<llvm::MCRegisterInfo>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    MEMORY[0x277C69E30](*(v2 + 184), 4);
    MEMORY[0x277C69E30](*(v2 + 160), 4);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t (*llvm::Target::createMCRegInfo(uint64_t a1, llvm::formatv_object_base *a2, llvm::formatv_object_base *a3))(void **)
{
  v3 = *(a1 + 80);
  if (v3)
  {
    v6 = 261;
    v5[0] = a2;
    v5[1] = a3;
    llvm::Triple::Triple(__p, v5);
    v3 = v3(__p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

uint64_t llvm::Target::createMCAsmInfo(uint64_t a1, uint64_t a2, llvm::formatv_object_base *a3, llvm::formatv_object_base *a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    return 0;
  }

  v11 = 261;
  v10[0] = a3;
  v10[1] = a4;
  llvm::Triple::Triple(__p, v10);
  v8 = v5(a2, __p, a5);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

llvm::MCContext *std::unique_ptr<llvm::MCContext>::reset[abi:nn200100](llvm::MCContext **a1, llvm::MCContext *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::MCContext::~MCContext(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

__int128 *std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::insert(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = *a1;
    v10 = ((v7 - *a1) >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = a2 - v9;
    v12 = v6 - v9;
    v13 = v12 >> 4;
    if (v12 >> 4 <= v10)
    {
      v13 = ((v7 - *a1) >> 5) + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v15 = v11 >> 5;
    v17[4] = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(a1, v14);
    }

    v17[0] = 0;
    v17[1] = (32 * v15);
    v17[2] = (32 * v15);
    v17[3] = 0;
    std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::emplace_back<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>(v17, a3);
    v4 = std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__swap_out_circular_buffer(a1, v17, v4);
    std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(v17);
  }

  else if (a2 == v7)
  {
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(*(a1 + 8), a3);
    *(a1 + 8) = v7 + 2;
  }

  else
  {
    std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__move_range(a1, a2, *(a1 + 8), (a2 + 2));
    if (v4 != a3)
    {
      v8 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v4);
      llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v8, a3);
    }
  }

  return v4;
}

uint64_t std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(a1, v11);
    }

    v12 = 32 * v8;
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v12, a2);
    v7 = v12 + 32;
    v13 = *(a1 + 8);
    v14 = v12 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 32;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(v17);
  }

  else
  {
    result = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v4, a2);
    v7 = result + 32;
  }

  *(a1 + 8) = v7;
  return result;
}

__int128 *std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__move_range(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (v6 + a2 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (v6 + a2 - a4);
    v8 = v6;
    do
    {
      v11 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v8, v10);
      v10 += 2;
      v8 = v11 + 32;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *>(&v13, a2, v7, v6);
}

uint64_t std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::emplace_back<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>(__int128 **a1, __int128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(v9, v8);
    }

    v6 = (((v5 - *a1) >> 5) + 1 + ((((v5 - *a1) >> 5) + 1) >> 63)) >> 1;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *>(v11, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  result = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v4, a2);
  a1[2] += 2;
  return result;
}

uint64_t std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__swap_out_circular_buffer(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(uint64_t a1, __int128 *a2)
{
  *(a1 + 24) = 0;
  v3 = *(a2 + 3);
  *(a1 + 24) = v3;
  if (v3 >= 8)
  {
    if ((v3 & 2) != 0 && (v3 & 4) != 0)
    {
      (*((v3 & 0xFFFFFFFFFFFFFFF8) + 8))(a1, a2);
    }

    else
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    *(a2 + 3) = 0;
  }

  return a1;
}

__int128 *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = v7;
      v9 = a4;
      v7 -= 2;
      a4 -= 2;
      if (v8 != v9)
      {
        v10 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(a4);
        llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v10, v7);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)> *>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        v7 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(a4);
        llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v7, v5);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>,llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(a4, v7);
      v7 += 2;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    do
    {
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v6);
      v6 += 2;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::CallImpl<xojit::ReplacementManager::Plugin::modifyPassConfig(llvm::orc::MaterializationResponsibility &,llvm::jitlink::LinkGraph &,llvm::jitlink::PassConfiguration &)::{lambda(llvm::jitlink::LinkGraph &)#1}>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v231 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v163 = *(*a1 + 8);
  std::mutex::lock((v163 + 16));
  v6 = *(v5 + 8);
  v169 = *(*(v6 + 8) + 32);
  v164 = v4;
  *&v217 = *v4;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>,llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,xojit::ReplacementManager::DylibState>>::FindAndConstruct(v6 + 88, &v217);
  v8 = *(a2 + 119);
  if (v8 >= 0)
  {
    v9 = (a2 + 96);
  }

  else
  {
    v9 = *(a2 + 96);
  }

  v10 = *(a2 + 104);
  if (v8 >= 0)
  {
    v11 = *(a2 + 119);
  }

  else
  {
    v11 = *(a2 + 104);
  }

  __n = *llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::try_emplace<>((v7 + 8), v9, v11);
  v12 = *(v5 + 8);
  v13 = *(v12 + 80);
  *(v12 + 80) = v13 + 1;
  std::to_string(&v190, v13);
  v187 = 0;
  v188 = 0;
  v189 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v168 = a2;
  if (!*(a2 + 208))
  {
    goto LABEL_55;
  }

  v15 = *(a2 + 216);
  if (v15)
  {
    v16 = 24 * v15;
    v17 = *(a2 + 200);
    while (*v17 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v17 += 3;
      v16 -= 24;
      if (!v16)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    v17 = *(a2 + 200);
  }

  v18 = *(a2 + 200) + 24 * v15;
  if (v17 == v18)
  {
LABEL_55:
    v179 = 0uLL;
    v180 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    goto LABEL_56;
  }

  do
  {
    v19 = v17[2];
    v20 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v19 + 56);
    v22 = *(v19 + 56) + 8 * *(v19 + 72);
    if (v22 != v20)
    {
      v23 = v20;
      v24 = v21;
      while (1)
      {
        v25 = *v23;
        *&v217 = v25;
        v26 = *v25;
        if (!*v25)
        {
          goto LABEL_43;
        }

        v27 = v25[2];
        v28 = *v19;
        v29 = *(v19 + 8);
        if ((~v27 & 0xC00000000000000) == 0 && *v26 && *(v26 + 16) == 108)
        {
          goto LABEL_43;
        }

        if ((v27 & 0x2000000000000000) != 0)
        {
          break;
        }

        v32 = *v26;
        v30 = v26 + 16;
        v31 = v32;
        if (v32 >= 3)
        {
          v33 = *v30 == 9311 && *(v30 + 2) == 115;
          if (v33 && *(v30 + v31 - 2) == 30036)
          {
            v37 = &v184;
            goto LABEL_42;
          }
        }

        if (v29 == 23)
        {
          if (bswap64(*v28) == 0x5F5F444154412C5FLL && bswap64(v28[1]) == 0x5F6F626A635F696DLL && bswap64(*(v28 + 15)) == 0x6D616765696E666FLL)
          {
            goto LABEL_43;
          }

LABEL_41:
          v37 = &v181;
LABEL_42:
          std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](v37, &v217);
          goto LABEL_43;
        }

        if (v29 != 16)
        {
          goto LABEL_41;
        }

        v35 = *v28;
        v34 = v28[1];
        if (v35 != 0x5F2C545845545F5FLL || v34 != 0x676E69727473635FLL)
        {
          goto LABEL_41;
        }

        do
        {
LABEL_43:
          ++v23;
        }

        while (v23 != v24 && (*v23 | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v23 == v22)
        {
          goto LABEL_48;
        }
      }

      v37 = &v187;
      goto LABEL_42;
    }

LABEL_48:
    v17 += 3;
    a2 = v168;
    if (v17 == v18)
    {
      break;
    }

    while (*v17 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v17 += 3;
      if (v17 == v18)
      {
        goto LABEL_53;
      }
    }
  }

  while (v17 != v18);
LABEL_53:
  v179 = 0uLL;
  v180 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  if (v187 != v188)
  {
    llvm::jitlink::LinkGraph::createSection();
  }

LABEL_56:
  SectionByName = llvm::jitlink::LinkGraph::findSectionByName(a2, "__LD,__compact_unwind", 21, v14);
  if (SectionByName)
  {
    v40 = SectionByName;
    v41 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(SectionByName + 32);
    v43 = *(v40 + 32) + 8 * *(v40 + 48);
    if (v43 != v41)
    {
      v44 = v41;
      v45 = v42;
      do
      {
        v46 = *(*v44 + 40);
        v47 = *(*v44 + 48);
        while (v46 != v47)
        {
          *&v204 = *v46;
          *&v217 = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v176, &v204, &v217))
          {
            if (v217 != v176 + 16 * v178)
            {
              *v46 = *(v217 + 8);
            }
          }

          v46 += 4;
        }

        do
        {
          ++v44;
        }

        while (v44 != v45 && (*v44 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v44 != v43);
    }
  }

  v48 = v184;
  v49 = v185;
  v50 = __n;
  if (v184 != v185)
  {
    while (2)
    {
      v51 = *v48;
      v52 = **v48;
      v195[0] = v52;
      if ((v52 - 1) >= 0xFFFFFFFFFFFFFFE0)
      {
        *&v217 = v52;
      }

      else
      {
        atomic_fetch_add((v52 + 8), 1uLL);
        v52 = v195[0];
        *&v217 = v195[0];
        if ((v195[0] - 1) < 0xFFFFFFFFFFFFFFE0)
        {
          atomic_fetch_add((v195[0] + 8), 1uLL);
          *(&v217 + 1) = v195[0];
          if ((v195[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v195[0] + 8), 1uLL);
          }

LABEL_75:
          *&v204 = 0;
          v53 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v50 + 56), &v217, &v204);
          v54 = v53;
          v55 = v204;
          if (v53)
          {
            v56 = *(&v217 + 1);
          }

          else
          {
            v57 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(v50 + 56, &v217, &v217, v204);
            v55 = v57;
            if ((*v57 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((*v57 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v56 = 0;
            *(&v39 + 1) = 0;
            *v57 = 0u;
            *v57 = v217;
            v217 = 0u;
          }

          if ((v56 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v56 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if ((v217 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v217 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if (v51[3] <= 7)
          {
            v66 = *v195[0];
            v203 = 1283;
            v199 = "expected async function pointer ";
            v201 = (v195[0] + 16);
            v202 = v66;
            *&v204 = &v199;
            v205 = " to have size 8; got ";
            v206 = 770;
            std::to_string(&__p, v51[3]);
            v67 = v206;
            if (v206)
            {
              if (v206 == 1)
              {
                *&v217 = &__p;
                v68 = 1;
                v67 = 4;
              }

              else
              {
                if (HIBYTE(v206) != 1)
                {
                  v67 = 2;
                }

                v75 = &v204;
                if (HIBYTE(v206) == 1)
                {
                  v75 = v204;
                }

                *&v217 = v75;
                *(&v217 + 1) = *(&v204 + 1);
                p_p = &__p;
                v68 = 4;
              }
            }

            else
            {
              v68 = 1;
            }

            BYTE8(v219) = v67;
            BYTE9(v219) = v68;
            getErrorErrorCat();
            operator new();
          }

          v58 = v51[2] & 0xC00000000000000;
          if (v54)
          {
            if (v58 == 0xC00000000000000)
            {
              v59 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct((v50 + 80), v195)[1];
              if ((v59 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((v59 + 8), 1uLL);
              }

              if ((*v51 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((*v51 + 8), 0xFFFFFFFFFFFFFFFFLL);
              }

              *v51 = v59;
              if ((v59 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
              {
                atomic_fetch_add((v59 + 8), 1uLL);
                atomic_fetch_add((v59 + 8), 0xFFFFFFFFFFFFFFFFLL);
              }
            }

            v60 = *v195[0];
            v203 = 773;
            v199 = (v195[0] + 16);
            v200 = v60;
            v201 = "$";
            *&v204 = &v199;
            v205 = &v190;
            v206 = 1026;
            *&v217 = &v204;
            p_p = "$impl";
            WORD4(v219) = 770;
            llvm::Twine::str(&v217, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &__p;
            }

            else
            {
              v61 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            llvm::orc::ExecutionSession::intern(v169, v61, size, v193);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v63 = v55[1];
            if ((v63 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v63 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v64 = v193[0];
            v55[1] = v193[0];
            if (v64 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v64 + 1, 1uLL);
              v64 = v193[0];
            }

            v65 = *(llvm::jitlink::LinkGraph::addDefinedSymbol(v168, v51[1], v51[2] & 0x1FFFFFFFFFFFFFFLL, v64 + 2, *v64, v51[3], (v51[2] & 0x200000000000000) != 0, 1, 0, 1) + 23) & 2;
            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v179, v193)[4] = v65 << 8;
            llvm::jitlink::LinkGraph::makeExternal(v168, v51);
            if (v193[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v193[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
            }

            v50 = __n;
          }

          else if (v58 == 0xC00000000000000)
          {
            v69 = *v195[0];
            v203 = 773;
            v199 = (v195[0] + 16);
            v200 = v69;
            v201 = "$";
            *&v204 = &v199;
            v205 = &v190;
            v206 = 1026;
            *&v217 = &v204;
            p_p = "$promoted";
            WORD4(v219) = 770;
            llvm::Twine::str(&v217, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v70 = &__p;
            }

            else
            {
              v70 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v71 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v71 = __p.__r_.__value_.__l.__size_;
            }

            llvm::orc::ExecutionSession::intern(v169, v70, v71, v193);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v72 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct((v50 + 80), v195);
            v73 = v72[1];
            if ((v73 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add((v73 + 8), 0xFFFFFFFFFFFFFFFFLL);
            }

            v74 = v193[0];
            v72[1] = v193[0];
            if (v74 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v74 + 1, 1uLL);
            }

            llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v179, v193);
            llvm::jitlink::LinkGraph::addDefinedSymbol(v168, v51[1], v51[2] & 0x1FFFFFFFFFFFFFFLL, v193[0] + 2, *v193[0], v51[3], 0, 1, 0, 1);
            if (v193[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
            {
              atomic_fetch_add(v193[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          if ((v195[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v195[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if (++v48 == v49)
          {
            goto LABEL_136;
          }

          continue;
        }
      }

      break;
    }

    *(&v217 + 1) = v52;
    goto LABEL_75;
  }

LABEL_136:
  v76 = v181;
  v77 = v182;
  if (v181 != v182)
  {
    do
    {
      v78 = *v76;
      v79 = **v76;
      v195[0] = v79;
      if ((v79 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v79 + 8), 1uLL);
      }

      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v50 + 32, v195, &v217);
      v80 = v78[2] & 0xC00000000000000;
      if (p_p == 1)
      {
        if (v80 == 0xC00000000000000)
        {
          v81 = *v195[0];
          v203 = 773;
          v199 = (v195[0] + 16);
          v200 = v81;
          v201 = "$";
          *&v204 = &v199;
          v205 = &v190;
          v206 = 1026;
          *&v217 = &v204;
          p_p = "$promoted";
          WORD4(v219) = 770;
          llvm::Twine::str(&v217, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v82 = &__p;
          }

          else
          {
            v82 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v83 = __p.__r_.__value_.__l.__size_;
          }

          llvm::orc::ExecutionSession::intern(v169, v82, v83, v193);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v84 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct((v50 + 80), v195);
          v85 = v84[1];
          if ((v85 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v85 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          v86 = v193[0];
          v84[1] = v193[0];
          if (v86 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v86 + 1, 1uLL);
          }

          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v179, v193)[4] = 0;
          llvm::jitlink::LinkGraph::addDefinedSymbol(v168, v78[1], v78[2] & 0x1FFFFFFFFFFFFFFLL, v193[0] + 2, *v193[0], v78[3], 0, 1, 0, 0);
          if (v193[0] - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add(v193[0] + 1, 0xFFFFFFFFFFFFFFFFLL);
          }
        }
      }

      else
      {
        if (v80 == 0xC00000000000000)
        {
          v87 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolStringPtr>>::FindAndConstruct((v50 + 80), v195)[1];
          if ((v87 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v87 + 8), 1uLL);
          }

          if ((*v78 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v78 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          *v78 = v87;
          if ((v87 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v87 + 8), 1uLL);
            atomic_fetch_add((v87 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        llvm::jitlink::LinkGraph::makeExternal(v168, v78);
      }

      if ((v195[0] - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v195[0] + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      ++v76;
    }

    while (v76 != v77);
  }

  *&v39 = 0;
  v88 = v179;
  v179 = v39;
  v89 = v180;
  v180 = 0;
  v90 = *(*v164 + 32);
  v217 = v88;
  v174[0] = 0;
  v174[1] = 0;
  LODWORD(p_p) = v89;
  v175 = 0;
  llvm::orc::ExecutionSession::OL_defineMaterializing(v164, &v217, a3);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v217);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v174);
  if (*a3)
  {
    goto LABEL_264;
  }

  v159 = 0;
  v162 = 0;
  v160 = 0;
  v92 = 0;
  v93 = 0;
  v94 = v168;
  v95 = *(v168 + 184);
  v217 = llvm::orc::MachOObjCCatListSectionName;
  v219 = llvm::orc::MachOObjCCatList2SectionName;
  p_p = v95;
  v220 = v95;
  v221 = llvm::orc::MachOObjCClassListSectionName;
  v223 = llvm::orc::MachOObjCNLCatListSectionName;
  v222 = v95;
  v224 = v95;
  v225 = llvm::orc::MachOSwift5ProtoSectionName;
  v227 = llvm::orc::MachOSwift5ProtosSectionName;
  v226 = 4;
  v228 = 4;
  v229 = llvm::orc::MachOSwift5TypesSectionName;
  v230 = 4;
  v212 = 0;
  v211 = 0;
  v213 = 0;
  v215 = 0;
  v214 = 0;
  v216 = 0;
  v209 = 0;
  v208 = 0;
  v210 = 0;
  while (2)
  {
    v96 = v94;
    v98 = *(&v217 + v93);
    v97 = *(&v217 + v93 + 8);
    __na = *(&v217 + v93 + 16);
    v99 = llvm::jitlink::LinkGraph::findSectionByName(v96, v98, v97, v91);
    if (!v99)
    {
      v94 = v168;
      goto LABEL_234;
    }

    v100 = v99;
    v170 = v97;
    v101 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v99 + 32);
    v103 = *(v100 + 32) + 8 * *(v100 + 48);
    if (v103 == v101)
    {
      goto LABEL_193;
    }

    v104 = v101;
    v105 = v102;
    v106 = v92;
    while (2)
    {
      v207 = *v104;
      v107 = v207[4];
      v109 = v207[5];
      v108 = v207[6];
      if (v107 != ((v108 - v109) >> 5) * __na)
      {
        v194 = 1283;
        v193[0] = "unexpected block size for section ";
        v193[2] = v98;
        v193[3] = v170;
        v195[0] = v193;
        v195[2] = ": ";
        v196 = 770;
        std::to_string(&v192, v107);
        __p.__r_.__value_.__r.__words[0] = v195;
        __p.__r_.__value_.__r.__words[2] = &v192;
        v198 = 1026;
        v199 = &__p;
        v201 = "; expected ";
        v203 = 770;
        std::to_string(&v191, ((v207[6] - v207[5]) >> 5) * __na);
        *&v204 = &v199;
        v205 = &v191;
        v206 = 1026;
        getErrorErrorCat();
        operator new();
      }

      if (v109 != v108)
      {
        v110 = 0;
        do
        {
          v111 = *v109;
          v109 += 32;
          if ((*(*(v111 + 8) + 8) & 3) == 0)
          {
            ++v110;
          }
        }

        while (v109 != v108);
        if (v110)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v214, &v207, &v204);
          v112 = v207;
          if (v110 != (v207[6] - v207[5]) >> 5)
          {
            *&v204 = 0;
            v113 = v213;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v106, v213, v207, &v204) & 1) == 0)
            {
              if (4 * v212 + 4 >= 3 * v113)
              {
                v115 = 2 * v113;
              }

              else
              {
                if (v113 + ~v212 - HIDWORD(v212) > v113 >> 3)
                {
                  goto LABEL_182;
                }

                v115 = v113;
              }

              llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::grow(&v211, v115);
              *&v204 = 0;
              v106 = v211;
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(v211, v213, v112, &v204);
LABEL_182:
              v114 = v204;
              LODWORD(v212) = v212 + 1;
              if (*v204 != -4096)
              {
                --HIDWORD(v212);
              }

              *v204 = v112;
              *(v114 + 8) = v110;
            }
          }
        }
      }

      do
      {
        ++v104;
      }

      while (v104 != v105 && (*v104 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v104 != v103)
      {
        continue;
      }

      break;
    }

    v162 = v211;
    v160 = v212;
    v159 = v213;
LABEL_193:
    v161 = v93;
    v94 = v168;
    if (v160)
    {
      v116 = v162;
      v117 = v162;
      v118 = v159;
      if (v159)
      {
        v117 = v162;
        v119 = 16 * v159;
        while ((*v117 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v117 += 2;
          v119 -= 16;
          if (!v119)
          {
            goto LABEL_226;
          }
        }

        v116 = v162;
        v118 = v159;
      }

      v165 = (v116 + 16 * v118);
      v166 = v100;
      while (v117 != v165)
      {
        v120 = *v117;
        v121 = (((*(*v117 + 48) - *(*v117 + 40)) >> 5) - v117[1]) * __na;
        v122 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v94, v121, 0);
        v123 = *v120;
        v124 = v120[1];
        *&v204 = v122;
        *(&v204 + 1) = v121;
        v199 = v123;
        __p.__r_.__value_.__r.__words[0] = 1 << (v124 >> 3);
        v195[0] = v124 >> 8;
        v125 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::MutableArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(v94, v100, &v204, &v199, &__p, v195);
        v127 = v120[5];
        v126 = v120[6];
        if (v127 != v126)
        {
          v128 = v125;
          v129 = 0;
          v171 = v122;
          do
          {
            v130 = *v127;
            if ((*(*(*v127 + 8) + 8) & 3) != 0)
            {
              v204 = *(v127 + 12);
              LODWORD(v205) = *(v127 + 28);
              v131 = v128[6];
              v132 = v128[7];
              if (v131 >= v132)
              {
                v134 = v128[5];
                v135 = (v131 - v134) >> 5;
                v136 = v135 + 1;
                if ((v135 + 1) >> 59)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v137 = v132 - v134;
                if (v137 >> 4 > v136)
                {
                  v136 = v137 >> 4;
                }

                if (v137 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v138 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v138 = v136;
                }

                if (v138)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((v128 + 5), v138);
                }

                v139 = 32 * v135;
                *v139 = v130;
                *(v139 + 8) = v129;
                *(v139 + 12) = v204;
                *(v139 + 28) = v205;
                v133 = 32 * v135 + 32;
                v140 = v128[5];
                v141 = v128[6] - v140;
                v142 = v139 - v141;
                memcpy((v139 - v141), v140, v141);
                v143 = v128[5];
                v128[5] = v142;
                v128[6] = v133;
                v128[7] = 0;
                if (v143)
                {
                  operator delete(v143);
                }

                v122 = v171;
              }

              else
              {
                *v131 = v130;
                *(v131 + 8) = v129;
                *(v131 + 12) = v204;
                *(v131 + 28) = v205;
                v133 = v131 + 32;
              }

              v128[6] = v133;
              memcpy((v122 + v129), (v120[3] + *(v127 + 8)), __na);
              v129 += __na;
            }

            v127 += 32;
          }

          while (v127 != v126);
        }

        v117 += 2;
        if (v117 == v165)
        {
          v94 = v168;
          v100 = v166;
        }

        else
        {
          v94 = v168;
          v100 = v166;
          do
          {
            if ((*v117 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              break;
            }

            v117 += 2;
          }

          while (v117 != v165);
        }
      }
    }

LABEL_226:
    v144 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v100 + 56);
    v146 = *(v100 + 56) + 8 * *(v100 + 72);
    if (v146 != v144)
    {
      v147 = v144;
      v148 = v145;
      do
      {
        __p.__r_.__value_.__r.__words[0] = *v147;
        *&v204 = *(__p.__r_.__value_.__r.__words[0] + 8);
        v199 = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v214, &v204, &v199))
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v208, &__p, &v204);
        }

        do
        {
          ++v147;
        }

        while (v147 != v148 && (*v147 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v147 != v146);
    }

    v93 = v161;
    v92 = v162;
LABEL_234:
    v93 += 24;
    if (v93 != 168)
    {
      continue;
    }

    break;
  }

  if (v209)
  {
    if (v210)
    {
      v149 = 8 * v210;
      v150 = v208;
      while ((*v150 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v150;
        v149 -= 8;
        if (!v149)
        {
          goto LABEL_250;
        }
      }
    }

    else
    {
      v150 = v208;
    }

    v151 = &v208[v210];
    if (v150 != v151)
    {
      v152 = *v150;
LABEL_245:
      v153 = *(v152[1] + 16);
      *&v204 = v152;
      llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v153 + 56, &v204);
      if ((*v152 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v152 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      while (++v150 != v151)
      {
        v152 = *v150;
        if ((*v150 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v150 != v151)
          {
            goto LABEL_245;
          }

          break;
        }
      }
    }
  }

LABEL_250:
  if (v215)
  {
    if (v216)
    {
      v154 = 8 * v216;
      v155 = v214;
      while ((*v155 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v155;
        v154 -= 8;
        if (!v154)
        {
          goto LABEL_263;
        }
      }
    }

    else
    {
      v155 = v214;
    }

    v156 = &v214[v216];
    if (v155 != v156)
    {
      v157 = *v155;
LABEL_259:
      llvm::jitlink::LinkGraph::removeBlock(v94, v157);
      while (++v155 != v156)
      {
        v157 = *v155;
        if ((*v155 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v155 != v156)
          {
            goto LABEL_259;
          }

          break;
        }
      }
    }
  }

LABEL_263:
  *a3 = 0;
  MEMORY[0x277C69E30](v208, 8);
  MEMORY[0x277C69E30](v214, 8);
  MEMORY[0x277C69E30](v211, 8);
LABEL_264:
  MEMORY[0x277C69E30](v176, 8);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v179);
  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock((v163 + 16));
  v158 = *MEMORY[0x277D85DE8];
}

void std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *llvm::jitlink::LinkGraph::addDefinedSymbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, char a7, char a8, unsigned __int8 a9, char a10)
{
  v17 = *(a1 + 120);
  std::mutex::lock(v17);
  v22 = 0;
  v18 = *llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::try_emplace<int>(&v17[1], a4, a5, &v22);
  v21 = v18;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v18 + 1, 1uLL);
  }

  std::mutex::unlock(v17);
  result = llvm::jitlink::LinkGraph::addDefinedSymbol(a1, a2, a3, &v21, a6, a7, a8, a9, a10);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add(v21 + 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void llvm::jitlink::Block::addEdge(void *a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[6];
  v8 = a1[7];
  if (v7 >= v8)
  {
    v10 = a1[5];
    v11 = (v7 - v10) >> 5;
    v12 = v11 + 1;
    if ((v11 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v13 = v8 - v10;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>((a1 + 5), v14);
    }

    v15 = 32 * v11;
    *v15 = a4;
    *(v15 + 8) = a3;
    *(v15 + 16) = a5;
    *(v15 + 24) = a2;
    v9 = 32 * v11 + 32;
    v16 = a1[5];
    v17 = a1[6] - v16;
    v18 = (32 * v11 - v17);
    memcpy(v18, v16, v17);
    v19 = a1[5];
    a1[5] = v18;
    a1[6] = v9;
    a1[7] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = a4;
    *(v7 + 8) = a3;
    *(v7 + 16) = a5;
    v9 = v7 + 32;
    *(v7 + 24) = a2;
  }

  a1[6] = v9;
}

uint64_t llvm::jitlink::LinkGraph::transferDefinedSymbol(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *(a2[1] + 16);
  v9 = a2[2] & 0xFE00000000000000 | a4 & 0x1FFFFFFFFFFFFFFLL;
  a2[1] = a3;
  a2[2] = v9;
  if (a6)
  {
    a2[3] = a5;
  }

  else
  {
    v10 = *(a3 + 32) - a4;
    if (a2[3] > v10)
    {
      a2[3] = v10;
    }
  }

  if (*(a3 + 16) != v8)
  {
    v14[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v8 + 56, v14);
    v11 = *(a3 + 16);
    v13 = a2;
    return llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v11 + 56, &v13, v14);
  }

  return result;
}

uint64_t llvm::jitlink::LinkGraph::makeExternal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if ((*(v4 + 8) & 2) != 0)
  {
    v13[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(a1 + 248, v13);
    v9 = *(a2 + 8);
    v10 = v9[1] & 0xFFFFFFFFFFFFFFFDLL;
    *v9 = 0;
    v9[1] = v10;
  }

  else
  {
    v5 = *(v4 + 16);
    v13[0] = a2;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v5 + 56, v13);
    v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16, 3);
    v7 = v6[1] & 0xFFFFFFFFFFFFFFFCLL;
    *v6 = 0;
    v6[1] = v7;
    v8 = *(a2 + 16) & 0xE200000000000000;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
  }

  v12 = a2;
  return llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 224, &v12, v13);
}

uint64_t llvm::jitlink::LinkGraph::findSectionByName(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v8 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>((a1 + 200), v7, &v8, a4);
  result = 0;
  if (v5)
  {
    if (v8 != *(a1 + 200) + 24 * *(a1 + 216))
    {
      return *(v8 + 16);
    }
  }

  return result;
}

uint64_t *llvm::StringMap<xojit::ReplacementManager::DylibState::ObjectState,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v6);
  v8 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v8)
  {
    while (!v8 || v8 == -8)
    {
      v9 = i[1];
      ++i;
      v8 = v9;
    }

    return i;
  }

  v11 = operator new(a3 + 105, 8uLL);
  v12 = v11;
  v13 = v11 + 104;
  if (a3)
  {
    memcpy(v11 + 104, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

BOOL llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(char *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__s2 == -2)
  {
    return a1 + 2 == 0;
  }

  if (__s2 == -1)
  {
    return a1 + 1 == 0;
  }

  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

llvm::jitlink::Section **std::unique_ptr<llvm::jitlink::Section>::~unique_ptr[abi:nn200100](llvm::jitlink::Section **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::jitlink::Section::~Section(v2);
    MEMORY[0x277C69E40]();
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::try_emplace<std::unique_ptr<llvm::jitlink::Section>>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v14, a4);
  v10 = v14;
  if (result)
  {
    v11 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, a2, v14);
    v10 = result;
    *result = *a2;
    v12 = *a3;
    *a3 = 0;
    *(result + 16) = v12;
    v11 = 1;
  }

  v13 = *a1 + 24 * *(a1 + 16);
  *a5 = v10;
  *(a5 + 8) = v13;
  *(a5 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a2, *a2 + *(a2 + 8), a3, a4);
    v10 = v7 + 24 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8)))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = v7 + 24 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8));
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::LookupBucketFor<llvm::StringRef>(a1, a3, &v10, v9);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>,llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>>::moveFromOldBuckets(a1, v4, v4 + 3 * v3, v10);

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11;
    do
    {
      *result = xmmword_2750C1220;
      result = (result + 24);
      v12 -= 24;
    }

    while (v12);
  }

  return result;
}