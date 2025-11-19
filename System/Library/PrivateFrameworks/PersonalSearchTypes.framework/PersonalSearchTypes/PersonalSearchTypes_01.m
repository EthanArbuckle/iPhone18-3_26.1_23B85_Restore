uint64_t storeEnumTagSinglePayload for MachClientSessionFactory(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of ServiceProtocol.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 88);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_1(v10);
  *v11 = v12;
  v11[1] = dispatch thunk of ServiceProtocol.handle(_:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServiceProtocol.handle(_:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 96);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_9_1(v12);
  *v13 = v14;
  v13[1] = ServiceProtocol.handle(_:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t type metadata instantiation function for ServiceEndpoint()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ServiceEndpoint(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for ServiceEndpoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for ServiceEndpoint.ServicePrototype()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ServiceEndpoint.ServicePrototype(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ServiceEndpoint.ServicePrototype(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ServiceEndpoint.ServicePrototype(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ServiceError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25E487B40);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void *partial apply for closure #1 in closure #1 in ServiceEndpoint.startListener()@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  return closure #1 in closure #1 in ServiceEndpoint.startListener()(*(v1 + 64), a1);
}

unint64_t lazy protocol witness table accessor for type ServicePeerHandler and conformance ServicePeerHandler()
{
  result = lazy protocol witness table cache variable for type ServicePeerHandler and conformance ServicePeerHandler;
  if (!lazy protocol witness table cache variable for type ServicePeerHandler and conformance ServicePeerHandler)
  {
    type metadata accessor for ServicePeerHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServicePeerHandler and conformance ServicePeerHandler);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E487E68()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  OUTLINED_FUNCTION_2_2();
  v45 = *(v3 + 80);
  OUTLINED_FUNCTION_5_1();
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v43 = v7;
  v44 = *(v8 + 80);
  v38 = (((v45 + 48) & ~v45) + v5 + v44) & ~v44;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_15_1();
  v13 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_2(v13);
  v15 = *(v14 + 80);
  v16 = (v38 + v11 + v15) & ~v15;
  v42 = *(v17 + 64);
  v18 = type metadata accessor for XPCReceivedMessage();
  OUTLINED_FUNCTION_1(v18);
  v20 = v19;
  v21 = *(v19 + 80);
  v40 = *(v22 + 64);
  v23 = *(v0 + 2);
  v24 = swift_unknownObjectRelease();
  v32 = OUTLINED_FUNCTION_24_1(v24, v25, v26, v27, v28, v29, v30, v31, v37, v38, v40, (v45 + 48) & ~v45);
  v33(v32);
  (*(v9 + 8))(&v0[v39], v43);
  if (!__swift_getEnumTagSinglePayload(&v0[v16], 1, v12))
  {
    OUTLINED_FUNCTION_21_0(v12);
    (*(v34 + 8))(&v0[v16], v12);
  }

  v35 = (v16 + v42 + v21) & ~v21;
  (*(v20 + 8))(&v0[v35], v18);

  return MEMORY[0x2821FE8E8](v0, v35 + v41, v45 | v44 | v15 | v21 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  OUTLINED_FUNCTION_2_2();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_5_1();
  v9 = *(v8 + 64);
  v12 = v11 & ~v10;
  OUTLINED_FUNCTION_22_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2(AssociatedTypeWitness);
  v15 = (v12 + v9 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_22_1();
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_2(v18);
  v20 = (v15 + v17 + *(v19 + 80)) & ~*(v19 + 80);
  v22 = *(v21 + 64);
  v23 = type metadata accessor for XPCReceivedMessage();
  OUTLINED_FUNCTION_19_1(v23);
  v25 = (v20 + v22 + *(v24 + 80)) & ~*(v24 + 80);
  v26 = v1[2];
  v27 = v1[3];
  v28 = swift_task_alloc();
  *(v3 + 16) = v28;
  *v28 = v3;
  v28[1] = dispatch thunk of ServiceProtocol.handle(_:);

  return closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:)(a1, v26, v27, v1 + v12, v1 + v15, v1 + v20, v1 + v25, v4);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E48838C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_17_2();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_2(v4);

  return v7(v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_55()
{
  OUTLINED_FUNCTION_17_2();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_2(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  v3 = *(v0 + 8);
  *(v2 - 280) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v2 - 224) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAE0]();
}