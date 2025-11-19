uint64_t dispatch thunk of PommesEngagementProtocol.tapEngagement(engagementContext:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t PommesSearchRequestProcessorErrorFailureReason.equivalentPommesError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PommesError();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_2784DA400 + v3);

  return v5(a1, v6, v4);
}

BOOL specialized static PommesSearchRequestProcessorError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 0x3F) == 0;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v2 == 129)
    {
      if (v3 == 129)
      {
        return 1;
      }
    }

    else if (v3 == 130)
    {
      return 1;
    }
  }

  else if (v3 <= 0x3F)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type PommesSearchRequestProcessorErrorUnableToHandleReason and conformance PommesSearchRequestProcessorErrorUnableToHandleReason()
{
  result = lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorUnableToHandleReason and conformance PommesSearchRequestProcessorErrorUnableToHandleReason;
  if (!lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorUnableToHandleReason and conformance PommesSearchRequestProcessorErrorUnableToHandleReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorUnableToHandleReason and conformance PommesSearchRequestProcessorErrorUnableToHandleReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesSearchRequestProcessorErrorFailureReason and conformance PommesSearchRequestProcessorErrorFailureReason()
{
  result = lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorFailureReason and conformance PommesSearchRequestProcessorErrorFailureReason;
  if (!lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorFailureReason and conformance PommesSearchRequestProcessorErrorFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchRequestProcessorErrorFailureReason and conformance PommesSearchRequestProcessorErrorFailureReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PommesSearchRequestProcessorErrorFailureReason] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PommesSearchRequestProcessorErrorFailureReason] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PommesSearchRequestProcessorErrorFailureReason] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SiriInformationSearch06PommesC34RequestProcessorErrorFailureReasonOGMd, &_sSay21SiriInformationSearch06PommesC34RequestProcessorErrorFailureReasonOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PommesSearchRequestProcessorErrorFailureReason] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesSearchRequestProcessorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PommesSearchRequestProcessorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for PommesSearchRequestProcessorError(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *destructiveInjectEnumTag for PommesSearchRequestProcessorError(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesSearchRequestProcessorErrorUnableToHandleReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesSearchRequestProcessorErrorUnableToHandleReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesSearchRequestProcessorErrorFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesSearchRequestProcessorErrorFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t RouteInfoProfileSliceResolver.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v15 - v4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v11 = *(*(v10 - 8) + 56);
  v11(v8 + v9, 1, 1, v10);
  v12 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_dispatchGroup;
  *(v8 + v12) = dispatch_group_create();
  *(v8 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
  v11(v5, 1, 1, v10);
  v13 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v5, v8 + v13);
  swift_endAccess();
  return v8;
}

uint64_t RouteInfoProfileSliceResolver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_dispatchGroup;
  *(v0 + v9) = dispatch_group_create();
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
  v8(v5, 1, 1, v7);
  v10 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v5, v0 + v10);
  swift_endAccess();
  return v0;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RouteInfoProfileSliceResolver.resolveRouteInfoSlice(from:requestId:pommesCandidateId:instrumentationUtil:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v70 = a6;
  v74 = a7;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v66 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v65 - v23;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v30, *MEMORY[0x277D39738], v25);
  v31 = *(*a4 + 128);
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v32 = v31(a1, a2, a3, v30);
  v33 = v25;
  v34 = a5;
  (*(v26 + 8))(v30, v33);
  if (!a5)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.pommes);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2232BB000, v46, v47, "Cannot create route info slice because there is no service helper", v48, 2u);
      MEMORY[0x223DE0F80](v48, -1, -1);
    }

    (*(*a4 + 144))(v71, v72, v73, v32, 3);
    goto LABEL_19;
  }

  v35 = v70;
  if (!v70)
  {
    v49 = one-time initialization token for pommes;
    swift_unknownObjectRetain();
    if (v49 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.pommes);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2232BB000, v51, v52, "Cannot create route info slice because there is no dispatch queue provided", v53, 2u);
      MEMORY[0x223DE0F80](v53, -1, -1);
    }

    (*(*a4 + 144))(v71, v72, v73, v32, 3);
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v36 = v68;
  v37 = v69;
  (*(v68 + 56))(v24, 1, 1, v69);
  v38 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
  v39 = v67;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v40 = v35;
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v24, v39 + v38);
  swift_endAccess();
  RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(v34, v40);
  outlined init with copy of MediaUserStateCenter?(v39 + v38, v21, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  if ((*(v36 + 48))(v21, 1, v37) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v21, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.pommes);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2232BB000, v42, v43, "There was an error while creating the routeInfoProfileSlice. Returning no profile slice for .sliceLabelRouteInfo", v44, 2u);
      MEMORY[0x223DE0F80](v44, -1, -1);
    }

    (*(*a4 + 144))(v71, v72, v73, v32, 3);
    swift_unknownObjectRelease();

LABEL_19:
    v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    return (*(*(v54 - 8) + 56))(v74, 1, 1, v54);
  }

  v56 = *(v36 + 32);
  v70 = v32;
  v57 = v66;
  v56(v66, v21, v37);
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v67 = &v65;
  MEMORY[0x28223BE20](v58, v59);
  *(&v65 - 2) = v57;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
  v60 = v40;
  v61 = a4;
  v62 = v74;
  v63 = v36;
  static Message.with(_:)();
  v64 = v70;
  (*(*v61 + 136))(v71, v72, v73, v70);
  swift_unknownObjectRelease();

  (*(*(v58 - 8) + 56))(v62, 0, 1, v58);
  return (*(v63 + 8))(v57, v37);
}

uint64_t closure #1 in RouteInfoProfileSliceResolver.resolveRouteInfoSlice(from:requestId:pommesCandidateId:instrumentationUtil:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  (*(v7 + 104))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39738]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2234CF920;
  (*(v9 + 16))(v12 + v11, a2, v8);
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

uint64_t RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(void *a1, void *a2)
{
  v3 = v2;
  v55 = a2;
  v5 = type metadata accessor for PerformanceUtil.Ticket(0);
  v52 = *(v5 - 1);
  v6 = *(v52 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v53 = v9;
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x277D474A8]) init];
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v14 + 8))(v18, v13);
  v23 = v19;
  v24 = MEMORY[0x223DDF550](v20, v22);
  [v23 setAceId_];

  v25 = v23;
  [v25 setRefId_];
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [v25 setGetRoute_];

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.pommes);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v51 = a1;
    v32 = v3;
    v33 = v31;
    aBlock[0] = v31;
    *v30 = 136315138;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, aBlock);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_2232BB000, v28, v29, "Starting ACE Command with ID: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v35 = v33;
    v3 = v32;
    a1 = v51;
    MEMORY[0x223DE0F80](v35, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  else
  {
  }

  Date.init()();
  v36 = &v12[v5[5]];
  *v36 = "SiriInformationSearch/RouteInfoProfileSliceResolver.swift";
  *(v36 + 1) = 57;
  v36[16] = 2;
  *&v12[v5[6]] = 77;
  v37 = &v12[v5[7]];
  *v37 = "populateProfileSliceValue(serviceHelper:dispatchQueue:)";
  *(v37 + 1) = 55;
  v37[16] = 2;
  v38 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL);
  v39 = &v12[v5[8]];
  *v39 = v38;
  v39[1] = v40;
  v41 = v54;
  outlined init with copy of PerformanceUtil.Ticket(v12, v54);
  v42 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v43 = (v53 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  outlined init with take of PerformanceUtil.Ticket(v41, v44 + v42);
  v45 = v55;
  *(v44 + v43) = v55;
  *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = partial apply for closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:);
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_1;
  v46 = _Block_copy(aBlock);
  v47 = v45;

  [a1 handleCommand:v25 completion:v46];
  _Block_release(v46);

  v48 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore);
  OS_dispatch_semaphore.wait()();

  return outlined destroy of PerformanceUtil.Ticket(v12);
}

uint64_t closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v26, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a3, 0);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a5;
  v20[4] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_10_0;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  v23 = a1;

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DDFBF0](0, v19, v14, v21);
  _Block_release(v21);
  (*(v10 + 8))(v14, v9);
  (*(v15 + 8))(v19, v26);
}

void closure #1 in closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = a1;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37 = v11;
      *v10 = 136315138;
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v37);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2232BB000, v8, v9, "Service helper returned an error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x223DE0F80](v11, -1, -1);
      MEMORY[0x223DE0F80](v10, -1, -1);
    }

    v16 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore);
    OS_dispatch_semaphore.signal()();
  }

  else if (a3)
  {
    v17 = one-time initialization token for pommes;
    v18 = a3;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v36 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      v24 = v36;
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v37);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_2232BB000, v20, v21, "RouteInfoResponse %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223DE0F80](v23, -1, -1);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }

    RouteInfoProfileSliceResolver.handleAceResponse(responseCommand:)(v36);
    v30 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore);
    OS_dispatch_semaphore.signal()();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2232BB000, v32, v33, "Ace Command returned from MAF is nil", v34, 2u);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    v35 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore);
    OS_dispatch_semaphore.signal()();
  }
}

void RouteInfoProfileSliceResolver.handleAceResponse(responseCommand:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v51 = a1;
  v19 = [v18 aceObjectWithGenericCommand_];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v50 = v21;
      v22 = [v21 errorCode];
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.pommes);
      v20 = v20;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v22;
        v27 = v11;
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = [v50 &_OBJC_LABEL_PROTOCOL___CCItemFieldEnumerable + 3];

        _os_log_impl(&dword_2232BB000, v24, v25, "Command failed with error code = %ld", v28, 0xCu);
        v29 = v28;
        v11 = v27;
        v22 = v26;
        MEMORY[0x223DE0F80](v29, -1, -1);
      }

      else
      {

        v24 = v20;
      }

      if ((v22 & 0xFFFFFFFFFFFFFFFELL) == 0x5DC)
      {
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
        static Message.with(_:)();

        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (!v30)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logger.pommes);
        v37 = v20;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v52 = v41;
          *v40 = 136315138;
          swift_getObjectType();
          v42 = _typeName(_:qualified:)();
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v52);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_2232BB000, v38, v39, "Service helper response was of type %s, not SALocalSearchGetNavigationStatusCompleted. Cannot complete RouteInfo profile slice", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v41);
          MEMORY[0x223DE0F80](v41, -1, -1);
          MEMORY[0x223DE0F80](v40, -1, -1);

          return;
        }

        goto LABEL_26;
      }

      v31 = [v30 route];
      if (v31)
      {
        v33 = MEMORY[0x28223BE20](v31, v32);
        *(&v50 - 2) = v33;
        *(&v50 - 1) = v4;
        v34 = v33;
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
        static Message.with(_:)();

LABEL_14:
        (*(v11 + 32))(v9, v15, v10);
        (*(v11 + 56))(v9, 0, 1, v10);
        v35 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
        swift_beginAccess();
        outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v9, v2 + v35);
        swift_endAccess();
        return;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.pommes);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_2232BB000, v46, v47, "Returned command has no provided route. Cannot construct routeInfoProfileSlice", v48, 2u);
        MEMORY[0x223DE0F80](v48, -1, -1);
      }
    }
  }

LABEL_26:
  v49 = v51;
}

uint64_t closure #1 in RouteInfoProfileSliceResolver.handleAceResponse(responseCommand:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  (*(v10 + 104))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AF0]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v1 + 104))(v5, *MEMORY[0x277D39D50], v0);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
}

uint64_t closure #2 in RouteInfoProfileSliceResolver.handleAceResponse(responseCommand:)(uint64_t a1, uint64_t a2)
{
  v46[6] = a1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Google_Protobuf_Any();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v37 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v37 - v23;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RouteInfo();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v31 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RouteInfo and conformance Apple_Parsec_Siri_V2alpha_RouteInfo, MEMORY[0x277D391B8]);
  v32 = v38;
  static Message.with(_:)();
  v46[3] = v25;
  v46[4] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  v38 = v26;
  (*(v26 + 16))(boxed_opaque_existential_1, v30, v25);
  defaultAnyTypeURLPrefix.getter();
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  if (v32)
  {

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  (*(v12 + 56))(v24, v34, 1, v11);
  outlined init with copy of MediaUserStateCenter?(v24, v21, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v35 = *(v12 + 48);
  if (v35(v21, 1, v11) == 1)
  {
    Google_Protobuf_Any.init()();
    if (v35(v21, 1, v11) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v21, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v12 + 32))(v37, v21, v11);
  }

  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  (*(v40 + 104))(v39, *MEMORY[0x277D39AF0], v41);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v43 + 104))(v42, *MEMORY[0x277D39D58], v44);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
  outlined destroy of MediaUserStateCenter?(v24, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  return v38[1](v30, v25);
}

id closure #1 in static RouteInfoProfileSliceResolver.buildRouteInfoSliceValue(aceRoute:)(int a1, id a2)
{
  v3 = [a2 originalWaypointRoute];
  if (v3)
  {
    v4 = v3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_RouteInfo.originalWaypointRoute.setter();
  }

  v5 = [a2 routeId];
  if (v5)
  {
    v6 = v5;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_RouteInfo.routeID.setter();
  }

  v7 = [a2 sessionState];
  if (v7)
  {
    v8 = v7;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_RouteInfo.sessionState.setter();
  }

  v9 = [a2 etaFilter];
  if (v9)
  {
    v10 = v9;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    Apple_Parsec_Siri_V2alpha_RouteInfo.etaFilter.setter();
  }

  result = [a2 evChargingMetadata];
  if (result)
  {
    v12 = result;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return Apple_Parsec_Siri_V2alpha_RouteInfo.evChargingMetadata.setter();
  }

  return result;
}

uint64_t RouteInfoProfileSliceResolver.deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);

  return v0;
}

uint64_t RouteInfoProfileSliceResolver.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RouteInfoProfileSliceResolver()
{
  result = type metadata singleton initialization cache for RouteInfoProfileSliceResolver;
  if (!type metadata singleton initialization cache for RouteInfoProfileSliceResolver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RouteInfoProfileSliceResolver()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of RouteInfoProfileSliceResolver.resolveRouteInfoSlice(from:requestId:pommesCandidateId:instrumentationUtil:serviceHelper:dispatchQueue:)(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(*v1 + 136);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v8[4] = *(a1 + 64);
  v9 = v2;
  v10 = v3;
  return v4(v8);
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?()
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?);
    }
  }
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t partial apply for closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PommesDialogStateManager.__allocating_init(suiteName:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  PommesDialogStateManager.init(suiteName:)(a1, a2);
  return v4;
}

uint64_t PommesDialogStateManager.init(suiteName:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0x4143C68000000000;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = MEMORY[0x223DDF550](a1, a2);
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {

    v9 = *(v3 + 16);
    *(v3 + 16) = v8;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_2232BB000, v11, v12, "Unable to create UserDefaults for POMMES dialog state management. Dialog state persistence will not work. Suite name: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x223DE0F80](v14, -1, -1);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    else
    {
    }
  }

  return v3;
}

void PommesDialogStateManager.update(_:familyState:familyStateCount:familyStateMinutes:useCaseState:useCaseStateCount:useCaseStateMinutes:expirationDate:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v236 = a8;
  v217 = a7;
  v214 = a6;
  v213 = a5;
  v219 = a4;
  v218 = a3;
  v227 = a11;
  v216 = a10;
  v215 = a9;
  v237 = v12;
  v222 = *v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v221 = &v207[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v223 = &v207[-v22];
  MEMORY[0x28223BE20](v21, v23);
  v220 = &v207[-v24];
  v25 = type metadata accessor for PommesDialogStateManager.DialogValue();
  v233 = *(v25 - 8);
  v234 = v25;
  v26 = v233[8];
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v207[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28, v31);
  v230 = &v207[-v32];
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
  v33 = *(*(v231 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v231, v34);
  v232 = &v207[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v207[-v38];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8, v42);
  v44 = &v207[-v43];
  v45 = type metadata accessor for Date();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v49 = MEMORY[0x28223BE20](v45, v48);
  v51 = &v207[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = MEMORY[0x28223BE20](v49, v52);
  v55 = &v207[-v54];
  v57 = MEMORY[0x28223BE20](v53, v56);
  v59 = &v207[-v58];
  MEMORY[0x28223BE20](v57, v60);
  v242 = &v207[-v61];
  v224 = a1;
  v228 = a2;
  v238 = specialized PommesDialogStateManager.decompose(_:)();
  v239 = v62;
  v240 = v64;
  v241 = v63;
  if (v63)
  {
    v210 = v30;
    v212 = v51;
    outlined init with copy of MediaUserStateCenter?(v227, v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v65 = *(v46 + 48);
    v66 = v65(v44, 1, v45);
    v227 = v46;
    if (v66 == 1)
    {
      Date.init()();
      Date.addingTimeInterval(_:)();
      (*(v46 + 8))(v59, v45);
      if (v65(v44, 1, v45) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v46 + 32))(v242, v44, v45);
    }

    v229 = v39;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.pommes);
    v73 = v227;
    v225 = *(v227 + 16);
    v226 = v227 + 16;
    v225(v55, v242, v45);
    v74 = v241;

    v75 = v240;

    v76 = v219;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();

    v79 = os_log_type_enabled(v77, v78);
    v235 = v45;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v244 = v209;
      *v80 = 136316162;

      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v238, v74, &v244);
      v208 = v78;
      v82 = v81;

      *(v80 + 4) = v82;
      *(v80 + 12) = 2080;
      v83 = v218;
      *(v80 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v76, &v244);
      *(v80 + 22) = 2080;

      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v239, v75, &v244);

      *(v80 + 24) = v84;
      *(v80 + 32) = 2080;
      v85 = v217;
      *(v80 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v236, &v244);
      *(v80 + 42) = 2080;
      lazy protocol witness table accessor for type Date and conformance Date();
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v45;
      v89 = v88;
      v211 = *(v73 + 8);
      v211(v55, v87);
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v89, &v244);
      v91 = v83;

      *(v80 + 44) = v90;
      _os_log_impl(&dword_2232BB000, v77, v208, "Updating dialog states:\n    Family “%s”: %s\n    Use case “%s”: %s\n    Expiration: %s", v80, 0x34u);
      v92 = v209;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v92, -1, -1);
      MEMORY[0x223DE0F80](v80, -1, -1);

      v93 = v76;
    }

    else
    {

      v211 = *(v73 + 8);
      v211(v55, v45);
      v93 = v76;
      v91 = v218;
      v85 = v217;
    }

    PommesDialogStateManager.readStateCacheEntries()();
    v94 = [objc_allocWithZone(MEMORY[0x277D052E0]) init];
    v95 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v94 setFamily:isa state:? counts:?];

    v97 = Array._bridgeToObjectiveC()().super.isa;
    [v94 setFamily:v97 state:? minutes:?];

    v98 = Array._bridgeToObjectiveC()().super.isa;
    [v94 setUse:v98 case:? state:? counts:?];

    v219 = v95;
    v99 = Array._bridgeToObjectiveC()().super.isa;
    [v94 setUse:v99 case:? state:? minutes:?];

    v100 = objc_opt_self();
    v101 = MEMORY[0x223DDF550](v224, v228);
    v102 = MEMORY[0x223DDF550](v85, v236);
    v103 = MEMORY[0x223DDF550](v91, v93);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for StateCacheEntry, 0x277D052D8);
    v104 = Dictionary._bridgeToObjectiveC()().super.isa;

    v236 = v94;
    v105 = [v100 postprocessCatId:v101 useCaseState:v102 familyState:v103 meta:v94 cacheEntries:v104];

    v106 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v231;
    if (!*(v106 + 16))
    {
      v117 = 0;
      v116 = 0;
      v114 = 0;
      v118 = 0;
      v124 = 0;
      v110 = v220;
      goto LABEL_38;
    }

    v108 = v241;
    v109 = specialized __RawDictionaryStorage.find<A>(_:)(v238, v241);
    v110 = v220;
    if ((v111 & 1) != 0 && (v112 = [*(*(v106 + 56) + 8 * v109) state]) != 0)
    {
      v113 = v112;
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      if (!*(v106 + 16))
      {
LABEL_19:
        v117 = 0;
        v118 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v114 = 0;
      v116 = 0;
      if (!*(v106 + 16))
      {
        goto LABEL_19;
      }
    }

    v119 = specialized __RawDictionaryStorage.find<A>(_:)(v238, v108);
    if ((v120 & 1) != 0 && (v121 = [*(*(v106 + 56) + 8 * v119) meta]) != 0)
    {
      v122 = v121;
      v123 = [v121 family_state_counts];

      v118 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v241;
      if (!*(v106 + 16))
      {
LABEL_24:
        v117 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v118 = 0;
      if (!*(v106 + 16))
      {
        goto LABEL_24;
      }
    }

    v126 = specialized __RawDictionaryStorage.find<A>(_:)(v238, v108);
    if ((v127 & 1) != 0 && (v128 = [*(*(v106 + 56) + 8 * v126) meta]) != 0)
    {
      v129 = v128;
      v130 = [v128 family_state_minutes];

      v117 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v241;
      if (!*(v106 + 16))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v117 = 0;
      if (!*(v106 + 16))
      {
        goto LABEL_37;
      }
    }

    v131 = specialized __RawDictionaryStorage.find<A>(_:)(v238, v108);
    if (v132)
    {
      v124 = [*(*(v106 + 56) + 8 * v131) action];
      goto LABEL_38;
    }

LABEL_37:
    v124 = 0;
LABEL_38:
    v133 = v230;
    v225(&v230[*(v234 + 36)], v242, v235);
    *v133 = 0x796C696D6166;
    v133[1] = 0xE600000000000000;
    v133[2] = v114;
    v133[3] = v116;
    v133[4] = v118;
    v133[5] = v117;
    v133[6] = v124;
    if (!*(v106 + 16))
    {
      v142 = 0;
      v141 = 0;
      v139 = 0;
      v143 = 0;
      v135 = v229;
      goto LABEL_49;
    }

    v134 = specialized __RawDictionaryStorage.find<A>(_:)(v239, v240);
    v135 = v229;
    if ((v136 & 1) != 0 && (v137 = [*(*(v106 + 56) + 8 * v134) state]) != 0)
    {
      v138 = v137;
      v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v141 = v140;

      if (!*(v106 + 16))
      {
LABEL_42:
        v142 = 0;
        v143 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v139 = 0;
      v141 = 0;
      if (!*(v106 + 16))
      {
        goto LABEL_42;
      }
    }

    v144 = specialized __RawDictionaryStorage.find<A>(_:)(v239, v240);
    if ((v145 & 1) != 0 && (v146 = [*(*(v106 + 56) + 8 * v144) meta]) != 0)
    {
      v147 = v146;
      v148 = [v146 use_case_state_counts];

      v143 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v106 + 16))
      {
LABEL_47:
        v142 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v143 = 0;
      if (!*(v106 + 16))
      {
        goto LABEL_47;
      }
    }

    v169 = specialized __RawDictionaryStorage.find<A>(_:)(v239, v240);
    if ((v170 & 1) != 0 && (v171 = [*(*(v106 + 56) + 8 * v169) meta]) != 0)
    {
      v172 = v171;
      v173 = [v171 use_case_state_minutes];

      v142 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v229;
    }

    else
    {
      v142 = 0;
    }

    if (*(v106 + 16))
    {
      v194 = specialized __RawDictionaryStorage.find<A>(_:)(v239, v240);
      if (v195)
      {
        v196 = *(*(v106 + 56) + 8 * v194);

        v149 = [v196 action];

LABEL_50:
        v150 = (v135 + *(v107 + 48));
        v151 = v234;
        v225(v150 + *(v234 + 36), v242, v235);
        *v150 = 0x65736143657375;
        v150[1] = 0xE700000000000000;
        v150[2] = v139;
        v150[3] = v141;
        v150[4] = v143;
        v150[5] = v142;
        v150[6] = v149;
        outlined init with take of PommesDialogStateManager.DialogValue(v230, v135, type metadata accessor for PommesDialogStateManager.DialogValue);
        v152 = PommesDialogStateManager.readDialogState()();
        v244 = v152;
        v153 = v232;
        outlined init with copy of MediaUserStateCenter?(v135, v232, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
        v154 = *(v107 + 48);
        v155 = *(v153 + 6);

        outlined destroy of PommesDialogStateManager.DialogValue(v153);
        outlined destroy of PommesDialogStateManager.DialogValue(&v153[v154]);
        if (v155)
        {
          outlined init with copy of MediaUserStateCenter?(v135, v153, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
          v156 = *(v107 + 48);
          outlined init with take of PommesDialogStateManager.DialogValue(v153, v110, type metadata accessor for PommesDialogStateManager.DialogValue);
          v157 = v233;
          v158 = v233[7];
          v158(v110, 0, 1, v151);
          outlined destroy of PommesDialogStateManager.DialogValue(&v153[v156]);
          v159 = (v157[6])(v110, 1, v151);
          v160 = v212;
          if (v159 == 1)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v160 = v212;
          if (!*(v152 + 16) || (v161 = v241, , v162 = specialized __RawDictionaryStorage.find<A>(_:)(v238, v161), v164 = v163, , (v164 & 1) == 0))
          {
            v151 = v234;
            v158 = v233[7];
            v158(v110, 1, 1, v234);
LABEL_62:
            outlined destroy of MediaUserStateCenter?(v110, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
            v174 = v223;
            specialized Dictionary._Variant.removeValue(forKey:)(v238, v241, v223);

            outlined destroy of MediaUserStateCenter?(v174, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
LABEL_63:
            v175 = v229;
            v176 = v232;
            outlined init with copy of MediaUserStateCenter?(v229, v232, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
            v177 = v231;
            v178 = &v176[*(v231 + 48)];
            v179 = *(v178 + 48);
            v180 = v240;

            outlined destroy of PommesDialogStateManager.DialogValue(v178);
            outlined destroy of PommesDialogStateManager.DialogValue(v176);

            if (v179)
            {

              outlined init with copy of MediaUserStateCenter?(v175, v176, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
              v181 = v221;
              outlined init with take of PommesDialogStateManager.DialogValue(&v176[*(v177 + 48)], v221, type metadata accessor for PommesDialogStateManager.DialogValue);
              v182 = v233;
              v158(v181, 0, 1, v151);
              outlined destroy of PommesDialogStateManager.DialogValue(v176);
              v183 = v180;
              v184 = v175;
              if ((v182[6])(v181, 1, v151) == 1)
              {
                goto LABEL_76;
              }

LABEL_69:
              v190 = v210;
              outlined init with take of PommesDialogStateManager.DialogValue(v181, v210, type metadata accessor for PommesDialogStateManager.DialogValue);
              v191 = v244;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v243 = v191;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v190, v239, v183, isUniquelyReferenced_nonNull_native);

              v193 = v243;
              v244 = v243;
LABEL_77:
              v198 = Date.init()();
              MEMORY[0x28223BE20](v198, v199);
              v200 = v222;
              *&v207[-16] = v160;
              *&v207[-8] = v200;
              specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in PommesDialogStateManager.writeDialogState(_:), &v207[-32], v193);
              v201 = v237[2];
              if (v201)
              {
                type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
                v202 = v201;
                v203 = Dictionary._bridgeToObjectiveC()().super.isa;

                v204 = MEMORY[0x223DDF550](0x7453676F6C616944, 0xEB00000000657461);
                [v202 setObject:v203 forKey:v204];
              }

              else
              {
              }

              outlined destroy of MediaUserStateCenter?(v184, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLV6family_AF7useCasetMR);
              v205 = v235;
              v206 = v211;
              v211(v242, v235);
              v206(v160, v205);

              return;
            }

            v185 = v244;
            if (*(v244 + 16))
            {
              v186 = specialized __RawDictionaryStorage.find<A>(_:)(v239, v180);
              v188 = v187;

              v184 = v229;
              if (v188)
              {
                v189 = *(v185 + 56) + v233[9] * v186;
                v181 = v221;
                outlined init with copy of PommesDialogStateManager.DialogValue(v189, v221);
                v158(v181, 0, 1, v151);
                v183 = v240;
                goto LABEL_69;
              }
            }

            else
            {

              v184 = v229;
            }

            v181 = v221;
            v158(v221, 1, 1, v151);
            v183 = v240;
LABEL_76:
            outlined destroy of MediaUserStateCenter?(v181, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
            v197 = v223;
            specialized Dictionary._Variant.removeValue(forKey:)(v239, v183, v223);

            outlined destroy of MediaUserStateCenter?(v197, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
            v193 = v244;
            goto LABEL_77;
          }

          v165 = v233;
          outlined init with copy of PommesDialogStateManager.DialogValue(*(v152 + 56) + v233[9] * v162, v110);
          v158 = v165[7];
          v151 = v234;
          v158(v110, 0, 1, v234);
        }

        v166 = v210;
        outlined init with take of PommesDialogStateManager.DialogValue(v110, v210, type metadata accessor for PommesDialogStateManager.DialogValue);
        v167 = v244;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v243 = v167;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v166, v238, v241, v168);

        v244 = v243;
        goto LABEL_63;
      }
    }

LABEL_49:

    v149 = 0;
    goto LABEL_50;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.pommes);
  v68 = v228;

  v242 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v242, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v244 = v71;
    *v70 = 136446210;
    *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v68, &v244);
    _os_log_impl(&dword_2232BB000, v242, v69, "Invalid CAT ID passed to dialog state manager: %{public}s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x223DE0F80](v71, -1, -1);
    MEMORY[0x223DE0F80](v70, -1, -1);
  }

  else
  {
    v125 = v242;
  }
}

uint64_t PommesDialogStateManager.allStates()()
{
  v0 = PommesDialogStateManager.readDialogState()();
  v1 = PommesDialogStateManager.preprocess(_:)(v0);

  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of PommesDialogStateManager.allStates());
  outlined destroy of MediaUserStateCenter?(&unk_283698100, &_sSS_SStMd, &_sSS_SStMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v5);

  return v5;
}

Swift::Void __swiftcall PommesDialogStateManager.reset()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x223DDF550](0x7453676F6C616944, 0xEB00000000657461);
    [v2 removeObjectForKey_];

    v4 = *(v0 + 16);
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DAE30);
      [v5 removeObjectForKey_];
    }
  }
}

unint64_t PommesDialogStateManager.readDialogState()()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[2];
  if (!v8)
  {
    v30 = 0u;
    v31 = 0u;
LABEL_13:
    outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v9 = v8;
  v10 = MEMORY[0x223DDF550](0x7453676F6C616944, 0xEB00000000657461);
  v11 = [v9 objectForKey_];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo12NSDictionaryCGMd, &_sSDySSSo12NSDictionaryCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v12 = v28;
  Date.init()();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27[0] = v1;
    v18 = v17;
    *&v30 = v17;
    *v16 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    v19 = Dictionary.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2232BB000, v14, v15, "User Defaults dialog state: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v22 = v18;
    v1 = v27[0];
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  MEMORY[0x28223BE20](v23, v24);
  v27[-2] = v7;
  v27[-1] = v1;
  v25 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in PommesDialogStateManager.readDialogState(), &v27[-4], v12);

  (*(v3 + 8))(v7, v2);
  return v25;
}

uint64_t closure #1 in PommesDialogStateManager.readDialogState()@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Date();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  *&v44 = 1701869940;
  *(&v44 + 1) = 0xE400000000000000;
  v16 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v23 = type metadata accessor for PommesDialogStateManager.DialogValue();
    return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }

  v39 = v42;
  v40 = v43;
  *&v44 = 0x65756C6176;
  *(&v44 + 1) = 0xE500000000000000;
  v17 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {
LABEL_34:

LABEL_35:
    outlined destroy of MediaUserStateCenter?(&v46, &_sypSgMd, &_sypSgMR);
    goto LABEL_39;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    goto LABEL_39;
  }

  v37 = v42;
  v38 = v43;
  *&v44 = 0x746E756F63;
  *(&v44 + 1) = 0xE500000000000000;
  v18 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {
LABEL_33:

    goto LABEL_34;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v35 = v19;
  v36 = v42;
  *&v44 = 0x736574756E696DLL;
  *(&v44 + 1) = 0xE700000000000000;
  v20 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {

    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_37:

    goto LABEL_38;
  }

  v35 = v42;
  *&v44 = 0x6E6F69746361;
  *(&v44 + 1) = 0xE600000000000000;
  v21 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {

    goto LABEL_33;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_37;
  }

  v34 = v42;
  *&v44 = 0x6974617269707865;
  *(&v44 + 1) = 0xEA00000000006E6FLL;
  v22 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v25 = v48;
  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {

    outlined destroy of MediaUserStateCenter?(&v46, &_sypSgMd, &_sypSgMR);
    (*(v25 + 56))(v9, 1, 1, v10);
    goto LABEL_45;
  }

  v26 = swift_dynamicCast();
  (*(v25 + 56))(v9, v26 ^ 1u, 1, v10);
  if ((*(v25 + 48))(v9, 1, v10) == 1)
  {

LABEL_45:
    outlined destroy of MediaUserStateCenter?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_39;
  }

  v27 = *(v25 + 32);
  v27(v14, v9, v10);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    (*(v25 + 8))(v14, v10);

    goto LABEL_39;
  }

  v28 = v34;
  v29 = MEMORY[0x223DDFAA0](v34);

  v30 = type metadata accessor for PommesDialogStateManager.DialogValue();
  v27(&a3[*(v30 + 36)], v14, v10);
  v31 = v40;
  *a3 = v39;
  *(a3 + 1) = v31;
  v32 = v38;
  *(a3 + 2) = v37;
  *(a3 + 3) = v32;
  v33 = v35;
  *(a3 + 4) = v36;
  *(a3 + 5) = v33;
  *(a3 + 6) = v29;
  return (*(*(v30 - 8) + 56))(a3, 0, 1, v30);
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v46 - v7;
  v51 = type metadata accessor for PommesDialogStateManager.DialogValue();
  v9 = *(*(v51 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v51, v10);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v48 = &v46 - v15;
  v16 = MEMORY[0x277D84F98];
  v17 = *(a3 + 64);
  v58 = MEMORY[0x277D84F98];
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v47 = v14;
  v50 = (v14 + 48);
  v54 = a3;

  v23 = 0;
  if (v20)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v24 >= v21)
    {

      return v16;
    }

    v20 = *(a3 + 64 + 8 * v24);
    ++v23;
  }

  while (!v20);
  v55 = v16;
  v23 = v24;
  while (1)
  {
    v25 = __clz(__rbit64(v20)) | (v23 << 6);
    v26 = (*(v54 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v57 = *(*(v54 + 56) + 8 * v25);
    v29 = v57;

    v30 = v29;
    v31 = v56;
    v52(&v57);
    v56 = v31;
    if (v31)
    {
      v45 = v55;

      return v45;
    }

    v20 &= v20 - 1;

    if ((*v50)(v8, 1, v51) == 1)
    {

      result = outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
      v16 = v55;
      if (!v20)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v32 = v48;
    outlined init with take of PommesDialogStateManager.DialogValue(v8, v48, type metadata accessor for PommesDialogStateManager.DialogValue);
    outlined init with take of PommesDialogStateManager.DialogValue(v32, v49, type metadata accessor for PommesDialogStateManager.DialogValue);
    v16 = v55;
    v33 = *(v55 + 16);
    if (*(v55 + 24) <= v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33 + 1, 1);
      v16 = v58;
    }

    v34 = *(v16 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v35 = v16 + 64;
    v36 = -1 << *(v16 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v16 + 64 + 8 * (v37 >> 6))) == 0)
    {
      break;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v16 + 64 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v44 = (*(v16 + 48) + 16 * v39);
    *v44 = v28;
    v44[1] = v27;
    result = outlined init with take of PommesDialogStateManager.DialogValue(v49, *(v16 + 56) + *(v47 + 72) * v39, type metadata accessor for PommesDialogStateManager.DialogValue);
    ++*(v16 + 16);
    if (!v20)
    {
      goto LABEL_8;
    }

LABEL_7:
    v55 = v16;
  }

  v40 = 0;
  v41 = (63 - v36) >> 6;
  while (++v38 != v41 || (v40 & 1) == 0)
  {
    v42 = v38 == v41;
    if (v38 == v41)
    {
      v38 = 0;
    }

    v40 |= v42;
    v43 = *(v35 + 8 * v38);
    if (v43 != -1)
    {
      v39 = __clz(__rbit64(~v43)) + (v38 << 6);
      goto LABEL_26;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a1;
  v63 = a2;
  v6 = &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);
  v7 = *(*(v64 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v64, v8);
  v58 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9, v11);
  v67 = &v57 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v61 = &v57 - v15;
  v59 = MEMORY[0x277D84F98];
  v69 = MEMORY[0x277D84F98];
  v16 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a3 + 64);
  v20 = (v17 + 63) >> 6;
  v65 = a3;

  v22 = 0;
  v60 = a3 + 64;
LABEL_5:
  v23 = v22;
  if (!v19)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v24 = v6;
    v66 = v4;
    v22 = v23;
LABEL_11:
    v25 = __clz(__rbit64(v19)) | (v22 << 6);
    v26 = *(v65 + 56);
    v27 = (*(v65 + 48) + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = v26 + *(*(type metadata accessor for PommesDialogStateManager.DialogValue() - 8) + 72) * v25;
    v31 = v64;
    v32 = v61;
    outlined init with copy of PommesDialogStateManager.DialogValue(v30, &v61[*(v64 + 48)]);
    *v32 = v29;
    v32[1] = v28;
    v33 = v32;
    v34 = v67;
    v6 = v24;
    outlined init with take of PommesSearchReason?(v33, v67, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, v24);
    v35 = *(v31 + 48);

    v36 = v34 + v35;
    v37 = v66;
    v62(v68, v36);
    v4 = v37;
    if (v37)
    {
      break;
    }

    v19 &= v19 - 1;
    v38 = v68[0];
    if (v68[0])
    {
      outlined init with take of PommesSearchReason?(v67, v58, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, v24);
      v39 = v59;
      v40 = *(v59 + 16);
      if (*(v59 + 24) <= v40)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40 + 1, 1);
        v39 = v69;
      }

      v59 = v39;
      v42 = *v58;
      v41 = v58[1];
      v43 = *(v39 + 40);
      Hasher.init(_seed:)();
      v66 = v41;
      String.hash(into:)();
      result = Hasher._finalize()();
      v44 = v59;
      v45 = v59 + 64;
      v46 = -1 << *(v59 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v59 + 64 + 8 * (v47 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v46) >> 6;
        while (++v48 != v51 || (v50 & 1) == 0)
        {
          v52 = v48 == v51;
          if (v48 == v51)
          {
            v48 = 0;
          }

          v50 |= v52;
          v53 = *(v45 + 8 * v48);
          if (v53 != -1)
          {
            v49 = __clz(__rbit64(~v53)) + (v48 << 6);
            goto LABEL_27;
          }
        }

        goto LABEL_31;
      }

      v49 = __clz(__rbit64((-1 << v47) & ~*(v59 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      v54 = *(v64 + 48);
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v55 = (v44[6] + 16 * v49);
      v56 = v66;
      *v55 = v42;
      v55[1] = v56;
      *(v44[7] + 8 * v49) = v38;
      ++v44[2];
      result = outlined destroy of PommesDialogStateManager.DialogValue(v58 + v54);
      v16 = v60;
      goto LABEL_5;
    }

    result = outlined destroy of MediaUserStateCenter?(v67, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, v24);
    v23 = v22;
    v16 = v60;
    if (!v19)
    {
LABEL_7:
      while (1)
      {
        v22 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_29;
        }

        v19 = *(v16 + 8 * v22);
        ++v23;
        if (v19)
        {
          v24 = v6;
          v66 = v4;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }
  }

  outlined destroy of MediaUserStateCenter?(v67, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);

LABEL_29:

  return v59;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void **, uint64_t), void (*a4)(unint64_t, uint64_t))
{
  v5 = v4;
  v6 = MEMORY[0x277D84F98];
  v40 = MEMORY[0x277D84F98];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v39 = *(*(a1 + 56) + 8 * v15);
    v19 = v39;

    v20 = v19;
    a3(v38, &v39, a2);
    if (v5)
    {
      break;
    }

    v10 &= v10 - 1;

    v21 = v38[0];
    if (v38[0])
    {
      v22 = *(v6 + 16);
      if (*(v6 + 24) <= v22)
      {
        a4(v22 + 1, 1);
        v6 = v40;
      }

      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = v6 + 64;
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v6 + 64 + 8 * (v26 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v25) >> 6;
        while (++v27 != v30 || (v29 & 1) == 0)
        {
          v31 = v27 == v30;
          if (v27 == v30)
          {
            v27 = 0;
          }

          v29 |= v31;
          v32 = *(v24 + 8 * v27);
          if (v32 != -1)
          {
            v28 = __clz(__rbit64(~v32)) + (v27 << 6);
            goto LABEL_25;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v6 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (*(v6 + 48) + 16 * v28);
      *v33 = v18;
      v33[1] = v17;
      *(*(v6 + 56) + 8 * v28) = v21;
      ++*(v6 + 16);
      v5 = 0;
      if (!v10)
      {
LABEL_7:
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v11)
          {

            return v6;
          }

          v10 = *(v7 + 8 * v14);
          ++v13;
          if (v10)
          {
            v13 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {

      v5 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  return v6;
}

unint64_t PommesDialogStateManager.readStateCacheEntries()()
{
  v1 = v0[2];
  if (!v1)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_13:
    outlined destroy of MediaUserStateCenter?(&v18, &_sypSgMd, &_sypSgMR);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So15StateCacheEntryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v2 = *v0;
  v3 = v1;
  v4 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DAE30);
  v5 = [v3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo12NSDictionaryCGMd, &_sSDySSSo12NSDictionaryCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So15StateCacheEntryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v18 = v10;
    *v9 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    v11 = Dictionary.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v7, v8, "User Defaults state cache entries: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  v14 = specialized Dictionary.compactMapValues<A>(_:)(v16, v2, closure #1 in PommesDialogStateManager.readStateCacheEntries(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));

  return v14;
}

void closure #1 in PommesDialogStateManager.readStateCacheEntries()(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *&v19 = 0x6574617473;
  *(&v19 + 1) = 0xE500000000000000;
  v4 = [*a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v24 = 0u;
  }

  v25 = v19;
  v26 = v24;
  if (!*(&v24 + 1))
  {
LABEL_26:
    outlined destroy of MediaUserStateCenter?(&v25, &_sypSgMd, &_sypSgMR);
    goto LABEL_30;
  }

  if (swift_dynamicCast())
  {
    v27 = v18;
    *&v20 = 0xD000000000000013;
    *(&v20 + 1) = 0x80000002234DAEC0;
    v5 = [v3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v24 = 0u;
    }

    v25 = v20;
    v26 = v24;
    if (*(&v24 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_29:

        goto LABEL_30;
      }

      *&v21 = 0xD000000000000014;
      *(&v21 + 1) = 0x80000002234DAEE0;
      v6 = [v3 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v6)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0u;
        v24 = 0u;
      }

      v25 = v21;
      v26 = v24;
      if (*(&v24 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_28:

          goto LABEL_29;
        }

        *&v22 = 0xD000000000000015;
        *(&v22 + 1) = 0x80000002234DAF00;
        v7 = [v3 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v7)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0u;
          v24 = 0u;
        }

        v25 = v22;
        v26 = v24;
        if (*(&v24 + 1))
        {
          if (swift_dynamicCast())
          {
            *&v23 = 0xD000000000000016;
            *(&v23 + 1) = 0x80000002234DAF20;
            v8 = [v3 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v8)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v23 = 0u;
              v24 = 0u;
            }

            v25 = v23;
            v26 = v24;
            if (*(&v24 + 1))
            {
              if (swift_dynamicCast())
              {
                v10 = [objc_allocWithZone(MEMORY[0x277D052E0]) init];
                type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v10 setFamily:isa state:? counts:?];

                v12 = Array._bridgeToObjectiveC()().super.isa;

                [v10 setFamily:v12 state:? minutes:?];

                v13 = Array._bridgeToObjectiveC()().super.isa;

                [v10 setUse:v13 case:? state:? counts:?];

                v14 = Array._bridgeToObjectiveC()().super.isa;

                [v10 setUse:v14 case:? state:? minutes:?];

                v15 = objc_allocWithZone(MEMORY[0x277D052D8]);
                v16 = v10;
                v17 = MEMORY[0x223DDF550](v27);

                v9 = [v15 initWithState:v17 meta:v16];

                goto LABEL_31;
              }
            }

            else
            {

              outlined destroy of MediaUserStateCenter?(&v25, &_sypSgMd, &_sypSgMR);
            }

            v9 = 0;
            goto LABEL_31;
          }

          goto LABEL_28;
        }
      }
    }

    goto LABEL_26;
  }

LABEL_30:
  v9 = 0;
LABEL_31:
  *a2 = v9;
}

uint64_t closure #1 in PommesDialogStateManager.writeDialogState(_:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for PommesDialogStateManager.DialogValue() + 36);
  if ((static Date.> infix(_:_:)() & 1) != 0 && (v5 = *(a1 + 6), v5 != 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
    v7 = swift_allocObject();
    v8 = v7;
    v9 = MEMORY[0x277D837D0];
    *(v7 + 16) = xmmword_2234D1940;
    *(v7 + 32) = 1701869940;
    *(v7 + 40) = 0xE400000000000000;
    v10 = *a1;
    v11 = *(a1 + 1);
    *(v7 + 56) = v9;
    *(v7 + 64) = v10;
    *(v7 + 72) = v11;
    *(v7 + 88) = v9;
    *(v7 + 96) = 0x65756C6176;
    *(v7 + 104) = 0xE500000000000000;
    v12 = *(a1 + 2);
    v13 = *(a1 + 3);
    if (!v13)
    {
      v12 = 0;
    }

    v14 = 0xE000000000000000;
    if (v13)
    {
      v14 = *(a1 + 3);
    }

    *(v7 + 120) = v9;
    *(v7 + 128) = v12;
    *(v7 + 136) = v14;
    *(v7 + 184) = v9;
    *(v7 + 152) = v9;
    *(v7 + 160) = 0x746E756F63;
    *(v7 + 168) = 0xE500000000000000;
    v15 = *(a1 + 4);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    v17 = MEMORY[0x277D84F90];
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v8[24] = v18;
    v8[27] = v16;
    v8[28] = 0x736574756E696DLL;
    v8[29] = 0xE700000000000000;
    if (*(a1 + 5))
    {
      v17 = *(a1 + 5);
    }

    v8[31] = v9;
    v8[32] = v17;
    v8[39] = v9;
    v8[35] = v16;
    v8[36] = 0x6E6F69746361;
    v8[37] = 0xE600000000000000;
    v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v20 = [v19 initWithInteger_];
    v21 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v8[40] = v20;
    v8[47] = MEMORY[0x277D837D0];
    v8[43] = v21;
    v8[44] = 0x6974617269707865;
    v8[45] = 0xEA00000000006E6FLL;
    v22 = type metadata accessor for Date();
    v8[51] = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8 + 48);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, &a1[v4], v22);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    result = NSDictionary.init(dictionaryLiteral:)();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t closure #1 in PommesDialogStateManager.writeStateCacheEntries(_:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2234D1950;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0x6574617473;
  *(v4 + 40) = 0xE500000000000000;
  v6 = [v3 state];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = (v4 + 64);
    *(v4 + 88) = v5;
    if (v10)
    {
      *v11 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = (v4 + 64);
    *(v4 + 88) = v5;
  }

  *v11 = 0;
  v10 = 0xE000000000000000;
LABEL_6:
  *(v4 + 72) = v10;
  *(v4 + 120) = v5;
  *(v4 + 96) = 0xD000000000000013;
  *(v4 + 104) = 0x80000002234DAEC0;
  v12 = [v3 meta];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 family_state_counts];

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    *(v4 + 152) = v16;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    *(v4 + 152) = v16;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_11:
  *(v4 + 128) = v15;
  *(v4 + 184) = v5;
  *(v4 + 160) = 0xD000000000000014;
  *(v4 + 168) = 0x80000002234DAEE0;
  v17 = [v3 meta];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 family_state_minutes];

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v4 + 216) = v16;
    if (v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v4 + 216) = v16;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_16:
  *(v4 + 192) = v20;
  *(v4 + 248) = v5;
  *(v4 + 224) = 0xD000000000000015;
  *(v4 + 232) = 0x80000002234DAF00;
  v21 = [v3 meta];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 use_case_state_counts];

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v4 + 280) = v16;
    if (v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v4 + 280) = v16;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  *(v4 + 256) = v24;
  *(v4 + 312) = v5;
  *(v4 + 288) = 0xD000000000000016;
  *(v4 + 296) = 0x80000002234DAF20;
  v25 = [v3 meta];
  if (!v25)
  {
    *(v4 + 344) = v16;
LABEL_25:
    v28 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v26 = v25;
  v27 = [v25 use_case_state_minutes];

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v4 + 344) = v16;
  if (!v28)
  {
    goto LABEL_25;
  }

LABEL_26:
  *(v4 + 320) = v28;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  result = NSDictionary.init(dictionaryLiteral:)();
  *a2 = result;
  return result;
}

uint64_t PommesDialogStateManager.preprocess(_:)(uint64_t a1)
{
  v97 = *v1;
  v98 = v1;
  v3 = type metadata accessor for Date();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v94 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PommesDialogStateManager.DialogValue();
  v101 = *(v7 - 8);
  v8 = *(v101 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v100 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetSgMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = (&v94 - v22);
  v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So15StateCacheEntryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v24 = *(a1 + 64);
  v105 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v99 = (v25 + 63) >> 6;
  v102 = a1;

  v28 = 0;
  v107 = v12;
  v103 = v20;
  v104 = v23;
  while (1)
  {
    if (!v27)
    {
      if (v99 <= v28 + 1)
      {
        v33 = v28 + 1;
      }

      else
      {
        v33 = v99;
      }

      v34 = v33 - 1;
      while (1)
      {
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v32 >= v99)
        {
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);
          (*(*(v77 - 8) + 56))(v20, 1, 1, v77);
          v27 = 0;
          v28 = v34;
          goto LABEL_17;
        }

        v27 = *(v105 + 8 * v32);
        ++v28;
        if (v27)
        {
          v31 = v20;
          v28 = v32;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v31 = v20;
    v32 = v28;
LABEL_16:
    v35 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v36 = v35 | (v32 << 6);
    v37 = (*(v102 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = v100;
    outlined init with copy of PommesDialogStateManager.DialogValue(*(v102 + 56) + *(v101 + 72) * v36, v100);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);
    v42 = *(v41 + 48);
    *v31 = v39;
    *(v31 + 1) = v38;
    v20 = v31;
    outlined init with take of PommesDialogStateManager.DialogValue(v40, &v31[v42], type metadata accessor for PommesDialogStateManager.DialogValue);
    (*(*(v41 - 8) + 56))(v31, 0, 1, v41);

LABEL_17:
    outlined init with take of PommesSearchReason?(v20, v23, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetSgMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetSgMR);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);
    if ((*(*(v43 - 8) + 48))(v23, 1, v43) == 1)
    {
      break;
    }

    v44 = v23[1];
    v108 = *v23;
    outlined init with take of PommesDialogStateManager.DialogValue(v23 + *(v43 + 48), v12, type metadata accessor for PommesDialogStateManager.DialogValue);
    v45 = [objc_allocWithZone(MEMORY[0x277D052E0]) init];
    v46 = *v12;
    v47 = v12[1];
    v48 = *v12 == 0x796C696D6166;
    v106 = v44;
    if (v48 && v47 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v49 = &selRef_setFamily_state_counts_;
      v50 = &selRef_setFamily_state_minutes_;
    }

    else
    {
      if ((v46 != 0x65736143657375 || v47 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_28;
      }

      v49 = &selRef_setUse_case_state_counts_;
      v50 = &selRef_setUse_case_state_minutes_;
    }

    v12 = v107;
    if (v107[4])
    {
      v51 = v107[4];
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 *v49];

    if (v12[5])
    {
      v53 = v12[5];
    }

    v54 = Array._bridgeToObjectiveC()().super.isa;

    [v45 *v50];

    v20 = v103;
    v44 = v106;
LABEL_28:
    v55 = v12[3];
    v56 = v20;
    if (v55)
    {
      v57 = v12[2];
      v58 = v45;
      v55 = MEMORY[0x223DDF550](v57, v55);
    }

    else
    {
      v59 = v45;
    }

    v60 = [objc_allocWithZone(MEMORY[0x277D052D8]) initWithState:v55 meta:v45];

    v61 = v60;
    v62 = v109;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v62;
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v44);
    v66 = *(v62 + 16);
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_54;
    }

    v69 = v64;
    if (*(v109 + 24) >= v68)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, isUniquelyReferenced_nonNull_native);
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v44);
      if ((v69 & 1) != (v71 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v65 = v70;
    }

    if (v69)
    {

      v109 = v110;
      v29 = v110[7];
      v30 = *(v29 + 8 * v65);
      *(v29 + 8 * v65) = v61;
    }

    else
    {
      v72 = v110;
      v110[(v65 >> 6) + 8] |= 1 << v65;
      v73 = (v72[6] + 16 * v65);
      *v73 = v108;
      v73[1] = v44;
      *(v72[7] + 8 * v65) = v61;

      v109 = v72;
      v74 = v72[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_55;
      }

      *(v109 + 16) = v76;
    }

    v12 = v107;
    outlined destroy of PommesDialogStateManager.DialogValue(v107);
    v23 = v104;
    v20 = v56;
  }

  if (one-time initialization token for pommes == -1)
  {
    goto LABEL_46;
  }

LABEL_56:
  swift_once();
LABEL_46:
  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, static Logger.pommes);

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 134349056;
    *(v81 + 4) = *(v109 + 16);

    _os_log_impl(&dword_2232BB000, v79, v80, "Preprocessing %{public}ld dialog state values before adding it to request", v81, 0xCu);
    MEMORY[0x223DE0F80](v81, -1, -1);
  }

  else
  {
  }

  v82 = objc_opt_self();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for StateCacheEntry, 0x277D052D8);
  v83 = v109;
  v84 = Dictionary._bridgeToObjectiveC()().super.isa;
  v85 = v94;
  Date.init()();
  v86 = Date._bridgeToObjectiveC()().super.isa;
  (*(v95 + 8))(v85, v96);
  v87 = [v82 preprocessEntries:v84 timestamp:v86];

  v88 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.compactMapValues<A>(_:)(v83, v97, closure #1 in PommesDialogStateManager.writeStateCacheEntries(_:), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));

  v89 = v98[2];
  if (v89)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    v90 = v89;
    v91 = Dictionary._bridgeToObjectiveC()().super.isa;

    v92 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DAE30);
    [v90 setObject:v91 forKey:v92];
  }

  else
  {
  }

  return v88;
}

uint64_t PommesDialogStateManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PommesDialogStateManager.DialogValue()
{
  result = type metadata singleton initialization cache for PommesDialogStateManager.DialogValue;
  if (!type metadata singleton initialization cache for PommesDialogStateManager.DialogValue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for PommesDialogStateManager.DialogValue();
    v22 = *(v15 - 8);
    outlined init with take of PommesDialogStateManager.DialogValue(v14 + *(v22 + 72) * v9, a3, type metadata accessor for PommesDialogStateManager.DialogValue);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PommesDialogStateManager.DialogValue();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for PommesCandidateId();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for PommesBridgeResultCandidateState(0);
    v22 = *(v15 - 8);
    outlined init with take of PommesDialogStateManager.DialogValue(v14 + *(v22 + 72) * v8, a2, type metadata accessor for PommesBridgeResultCandidateState);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PommesBridgeResultCandidateState(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PommesDialogStateManager.DialogValue();
      return outlined assign with take of PommesBridgeResultCandidateState(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PommesDialogStateManager.DialogValue);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = *v5;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v20 = *v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a1, a2, v22, a4);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v22 = *v6;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v24);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PommesCandidateId();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for PommesBridgeResultCandidateState(0);
      return outlined assign with take of PommesBridgeResultCandidateState(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for PommesBridgeResultCandidateState);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
  v26 = *v4;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v20 & 1) != (v28 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v27;
  v22 = *v4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v13, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v28);
}

{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t specialized PommesDialogStateManager.decompose(_:)()
{
  v0 = lazy protocol witness table accessor for type String and conformance String();
  v1 = MEMORY[0x223DDFE20](35, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v0);
  if (v1[2] == 2 && (v1[4] ^ v1[5]) >= 0x4000 && (v1[8] ^ v1[9]) >> 14)
  {
    v3 = v1[4];
    v4 = v1[5];
    v5 = v1[6];
    v6 = v1[7];

    v7 = MEMORY[0x223DDF600](v3, v4, v5, v6);

    String.init<A>(_:)();
    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t outlined destroy of PommesDialogStateManager.DialogValue(uint64_t a1)
{
  v2 = type metadata accessor for PommesDialogStateManager.DialogValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in PommesDialogStateManager.writeDialogState(_:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in PommesDialogStateManager.writeDialogState(_:)(a1, a2);
}

uint64_t outlined init with copy of PommesDialogStateManager.DialogValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesDialogStateManager.DialogValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v34 = v56;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v50 & 1);
      v35 = *v34;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of Set<String>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata completion function for PommesDialogStateManager.DialogValue()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [NSNumber]?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ActionType(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata accessor for [NSNumber]?()
{
  if (!lazy cache variable for type metadata for [NSNumber]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [NSNumber]?);
    }
  }
}

uint64_t outlined init with take of PommesDialogStateManager.DialogValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of PommesBridgeResultCandidateState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *PommesResponse.pommesRequestResult.getter()
{
  v0 = type metadata accessor for PommesRenderOptions.PromptType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v35 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D5A0A0]) init];
  if (v10)
  {
    v11 = v10;
    v35 = v6;
    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    [v11 setPommesConfidenceScore_];
    v12 = PommesResponse.metadataDomainName.getter();
    v13 = MEMORY[0x223DDF550](v12);

    [v11 setPegasusDomain_];

    [v11 setIsLowConfidenceKnowledgeResult_];
    [v11 setIsQueryDirectQuestion_];
    v14 = dispatch thunk of PommesResponse.experiences.getter();
    v15 = v14;
    if (v14 >> 62)
    {
LABEL_27:
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v9;
    v37 = v1;
    v38 = v0;
    if (v16)
    {
      v17 = 0;
      v0 = v15 & 0xC000000000000001;
      v1 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v0)
        {
          v18 = MEMORY[0x223DDFF80](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v9 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v20 = dispatch thunk of Experience.renderOptions.getter();
        v21 = PommesRenderOptions.promptTypes.getter();

        v22 = *(v21 + 16);

        if (v22)
        {
          break;
        }

        ++v17;
        if (v9 == v16)
        {
          goto LABEL_14;
        }
      }

      if (v19)
      {
        v28 = v19;
        v29 = dispatch thunk of Experience.renderOptions.getter();

        v30 = PommesRenderOptions.promptTypes.getter();
        if (*(v30 + 16))
        {
          v32 = v37;
          v31 = v38;
          v33 = v35;
          (*(v37 + 16))(v35, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v38);

          v34 = v36;
          (*(v32 + 32))(v36, v33, v31);
          [v11 setPegasusPromptType_];

          (*(v32 + 8))(v34, v31);
        }

        else
        {
        }
      }
    }

    else
    {
LABEL_14:
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pommes);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2232BB000, v24, v25, "Unable to initialize POMMESSchemaPOMMESRequestResult", v26, 2u);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }

    return 0;
  }

  return v11;
}

uint64_t PommesResponse.curareDescription.getter()
{
  _StringGuts.grow(_:)(32);
  MEMORY[0x223DDF6D0](0x6469666E6F63227BLL, 0xEF203A2265636E65);
  dispatch thunk of PommesResponse.primaryQueryConfidence()();
  Double.write<A>(to:)();
  MEMORY[0x223DDF6D0](0x644974616322202CLL, 0xEC000000203A2273);
  dispatch thunk of PommesResponse.primaryCatIds()();
  v0 = MEMORY[0x223DDF850]();
  v2 = v1;

  MEMORY[0x223DDF6D0](v0, v2);

  MEMORY[0x223DDF6D0](125, 0xE100000000000000);
  return 0;
}

double static PommesResponse.makeDefaultInteractionStream()@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = NSProcessInfo.isRunningUnitTests.getter();

  if ((v3 & 1) != 0 || (v4 = objc_allocWithZone(MEMORY[0x277D08440]), v5 = MEMORY[0x223DDF550](0x4D4D4F5049524953, 0xEA00000000005345), v6 = [v4 initWithStreamId_], v5, !v6))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = type metadata accessor for FSFCurareInteractionStream();
    *(a1 + 32) = &protocol witness table for FSFCurareInteractionStream;
    *a1 = v6;
  }

  return result;
}

uint64_t closure #2 in PommesResponse.pommesRequestResult.getter(uint64_t a1)
{
  v2 = type metadata accessor for PommesRenderOptions.PromptType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D566C8])
  {
    return 0;
  }

  if (v8 == *MEMORY[0x277D566B8])
  {
    return 1;
  }

  if (v8 != *MEMORY[0x277D566C0])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v11, v12, "Received @unknown promptType from experience", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  return 2;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized (uint64_t *a1)
{
  v1 = *a1;
}

{
  v1 = *a1;
  return swift_unknownObjectRelease();
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for FSFCurareInteractionStream()
{
  result = lazy cache variable for type metadata for FSFCurareInteractionStream;
  if (!lazy cache variable for type metadata for FSFCurareInteractionStream)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FSFCurareInteractionStream);
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.asPegasusPromptContext()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_PromptContext();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext, MEMORY[0x277D38DB0]);
  return static Message.with(_:)();
}

uint64_t closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.asPegasusPromptContext()()
{
  v0 = type metadata accessor for Google_Protobuf_Int32Value();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.getter();
  Apple_Parsec_Siri_Context_PegasusSemanticValue.label.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.previousNldomainName.getter();
  Apple_Parsec_Siri_Context_PegasusSemanticValue.value.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.domainHints.getter();
  Apple_Parsec_Siri_Context_PromptContext.domainHints.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.alertDomainHints.getter();
  Apple_Parsec_Siri_Context_PromptContext.alertDomainHints.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.backgroundDomainHints.getter();
  Apple_Parsec_Siri_Context_PromptContext.backgroundDomainHints.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.getter();
  Apple_Parsec_Siri_Context_PromptContext.dictationPrompt.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.getter();
  Apple_Parsec_Siri_Context_PromptContext.strictPrompt.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.objectDisambiguation.getter();
  Apple_Parsec_Siri_Context_PromptContext.objectDisambiguation.setter();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Google_Protobuf_Int32Value and conformance Google_Protobuf_Int32Value, MEMORY[0x277D21588]);
  static Message.with(_:)();
  Apple_Parsec_Siri_Context_PromptContext.ambiguityTarget.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.getter();
  Apple_Parsec_Siri_Context_PromptContext.listenAfterSpeaking.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.promptTargetHints.getter();
  return Apple_Parsec_Siri_Context_PromptContext.promptTargetHints.setter();
}

uint64_t closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.asPegasusPromptContext()()
{
  v0 = type metadata accessor for Google_Protobuf_Int32Value();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Com_Apple_Siri_Product_Proto_PromptContext.ambiguityTarget.getter();
  Google_Protobuf_Int32Value.value.getter();
  (*(v1 + 8))(v5, v0);
  return Google_Protobuf_Int32Value.value.setter();
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientDisplayHints and conformance Apple_Parsec_Siri_Context_ClientDisplayHints, MEMORY[0x277D397B8]);
  return static Message.with(_:)();
}

uint64_t closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v6 = Com_Apple_Siri_Product_Proto_PromptContext.domainHints.getter();
  if (v6[2])
  {
    v7 = v6[4];
    v8 = v6[5];
  }

  Apple_Parsec_Siri_Context_ClientDisplayHints.displayHintsDomain.setter();
  v9 = Com_Apple_Siri_Product_Proto_PromptContext.displayHints.getter();
  MEMORY[0x28223BE20](v9, v10);
  *(&v15 - 2) = a2;
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D26_Product_Proto_DisplayHintVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5(partial apply for closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints(), (&v15 - 4), v9);

  v12 = MEMORY[0x223DDAFF0](v11);
  MEMORY[0x28223BE20](v12, v13);
  *(&v15 - 2) = a2;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ResponseOptions and conformance Apple_Parsec_Siri_Context_ResponseOptions, MEMORY[0x277D39658]);
  static Message.with(_:)();
  return Apple_Parsec_Siri_Context_ClientDisplayHints.responseOptions.setter();
}

uint64_t closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PegasusDisplayHint and conformance Apple_Parsec_Siri_Context_PegasusDisplayHint, MEMORY[0x277D38C88]);
  return static Message.with(_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PegasusSemanticValue and conformance Apple_Parsec_Siri_Context_PegasusSemanticValue, MEMORY[0x277D38C98]);
  static Message.with(_:)();
  Apple_Parsec_Siri_Context_PegasusDisplayHint.idValue.setter();
  static Message.with(_:)();
  return Apple_Parsec_Siri_Context_PegasusDisplayHint.displayValue.setter();
}

unint64_t Com_Apple_Siri_Product_Proto_PromptContext.makeLabel(fromNode:)()
{
  v0 = lazy protocol witness table accessor for type String and conformance String();
  v1 = MEMORY[0x223DDFE20](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v0);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32 * v2);
    v4 = *v3;
    v5 = v3[1];
    v7 = v3[2];
    v6 = v3[3];
    swift_bridgeObjectRetain_n();

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v5;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v4 >> 14)
    {
      __break(1u);
    }

    else
    {
      Substring.subscript.getter();

      countAndFlagsBits = Substring.lowercased()()._countAndFlagsBits;

      result = Substring.index(_:offsetBy:limitedBy:)();
      if (v12)
      {
        result = v5;
      }

      if (v5 >> 14 >= result >> 14)
      {
        Substring.subscript.getter();

        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        return countAndFlagsBits;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v15[1] = a3;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v9);
  Com_Apple_Siri_Product_Proto_SemanticValue.serializedValue.getter();
  v12 = *(v6 + 8);
  v12(v11, v5);
  v13 = Apple_Parsec_Siri_Context_PegasusSemanticValue.value.setter();
  a4(v13);
  Com_Apple_Siri_Product_Proto_SemanticValue.ontologyNodePojoClassName.getter();
  v12(v11, v5);
  Com_Apple_Siri_Product_Proto_PromptContext.makeLabel(fromNode:)();

  return Apple_Parsec_Siri_Context_PegasusSemanticValue.label.setter();
}

uint64_t closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2)
{
  v3 = Com_Apple_Siri_Product_Proto_PromptContext.responseOptions.getter();
  v6[2] = a2;
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D28_Product_Proto_SemanticValueVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5(partial apply for closure #1 in closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints(), v6, v3);

  return MEMORY[0x223DDAC80](v4);
}

uint64_t closure #1 in closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PegasusSemanticValue and conformance Apple_Parsec_Siri_Context_PegasusSemanticValue, MEMORY[0x277D38C98]);
  return static Message.with(_:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()()
{
  Com_Apple_Siri_Product_Proto_SemanticValue.serializedValue.getter();
  Apple_Parsec_Siri_Context_PegasusSemanticValue.value.setter();
  Com_Apple_Siri_Product_Proto_SemanticValue.ontologyNodePojoClassName.getter();
  Com_Apple_Siri_Product_Proto_PromptContext.makeLabel(fromNode:)();

  return Apple_Parsec_Siri_Context_PegasusSemanticValue.label.setter();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in closure #1 in closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()();
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()();
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlayRadioStationPreflightClient.isSpanMatchedPlayRadioStationTask(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v9[3])
  {
    type metadata accessor for UsoTask_play_common_RadioStation();
    if (swift_dynamicCast())
    {

      v2 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5Tm(MEMORY[0x277D84F90], byte_2836956C8, a1, MEMORY[0x277D5EC88], specialized Array.append<A>(contentsOf:));

      if (v2 >> 62)
      {
        goto LABEL_18;
      }

      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        while (1)
        {
          v4 = 0;
          while ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x223DDFF80](v4, v2);
            v6 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }

LABEL_9:
            v9[0] = v5;
            v7 = closure #1 in PlayRadioStationPreflightClient.isSpanMatchedPlayRadioStationTask(task:)(v9);

            if (v7)
            {

              return 1;
            }

            ++v4;
            if (v6 == v3)
            {
              goto LABEL_19;
            }
          }

          if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v3 = __CocoaSet.count.getter();
          if (!v3)
          {
            goto LABEL_19;
          }
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

LABEL_19:
    }
  }

  else
  {
LABEL_15:
    outlined destroy of MediaUserStateCenter?(v9, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t closure #1 in PlayRadioStationPreflightClient.isSpanMatchedPlayRadioStationTask(task:)(uint64_t *a1)
{
  v2 = v1;
  v110 = type metadata accessor for UsoIdentifier.NluComponent();
  v85 = *(v110 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v110, v5);
  v89 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v92 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v82 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v87 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v103 = v82 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v102 = v82 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = v82 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v108 = v82 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v109 = v82 - v34;
  v35 = type metadata accessor for UsoIdentifier();
  v107 = *(v35 - 8);
  v36 = *(v107 + 64);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v104 = v82 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v90 = v82 - v41;
  v42 = *a1;
  dispatch thunk of UsoEntity_common_RadioStation.name.getter();
  v105 = v35;
  v106 = v7;
  if (!v43 || (, (result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)()) == 0))
  {
LABEL_16:
    v59 = 0;
    if (!dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter())
    {
      return 0;
    }

    goto LABEL_17;
  }

  v101 = *(result + 16);
  if (!v101)
  {

    goto LABEL_16;
  }

  v82[1] = v42;
  v83 = v1;
  v45 = 0;
  v99 = result + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v98 = (v107 + 16);
  LODWORD(v97) = *MEMORY[0x277D5E4B0];
  v95 = (v85 + 56);
  v96 = (v85 + 104);
  v94 = (v85 + 48);
  v84 = (v85 + 32);
  v88 = (v85 + 8);
  v93 = (v107 + 8);
  v46 = v90;
  v91 = v29;
  v100 = result;
  while (v45 < *(result + 16))
  {
    (*(v107 + 16))(v46, v99 + *(v107 + 72) * v45, v35);
    v47 = v109;
    UsoIdentifier.sourceComponent.getter();
    v48 = v108;
    v49 = v110;
    (*v96)(v108, v97, v110);
    (*v95)(v48, 0, 1, v49);
    v50 = *(v106 + 48);
    outlined init with copy of UsoIdentifier.NluComponent?(v47, v14);
    outlined init with copy of UsoIdentifier.NluComponent?(v48, &v14[v50]);
    v51 = *v94;
    if ((*v94)(v14, 1, v49) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v108, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of MediaUserStateCenter?(v109, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v93)(v46, v35);
      if (v51(&v14[v50], 1, v110) != 1)
      {
        goto LABEL_6;
      }

      outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
LABEL_36:

      v81 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      v59 = 1;
      v2 = v83;
      if (!v81)
      {
        return 1;
      }

LABEL_17:

      v60 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      v61 = v104;
      if (v60 && (v62 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), result = , v62))
      {
        LODWORD(v91) = v59;
        v83 = v2;
        v109 = *(v62 + 16);
        if (v109)
        {
          v63 = 0;
          v101 = v62 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
          v100 = v107 + 16;
          LODWORD(v99) = *MEMORY[0x277D5E4B0];
          v97 = (v85 + 56);
          v98 = (v85 + 104);
          v64 = (v85 + 48);
          v93 = (v85 + 32);
          v95 = (v85 + 8);
          v96 = (v107 + 8);
          v108 = v62;
          while (1)
          {
            if (v63 >= *(v62 + 16))
            {
              goto LABEL_41;
            }

            (*(v107 + 16))(v61, v101 + *(v107 + 72) * v63, v35);
            v67 = v102;
            UsoIdentifier.sourceComponent.getter();
            v68 = v103;
            v69 = v64;
            v70 = v110;
            (*v98)(v103, v99, v110);
            (*v97)(v68, 0, 1, v70);
            v71 = *(v106 + 48);
            v72 = v92;
            outlined init with copy of UsoIdentifier.NluComponent?(v67, v92);
            outlined init with copy of UsoIdentifier.NluComponent?(v68, v72 + v71);
            v73 = v61;
            v74 = *v69;
            v75 = v70;
            v64 = v69;
            if ((*v69)(v72, 1, v75) == 1)
            {
              break;
            }

            v76 = v87;
            outlined init with copy of UsoIdentifier.NluComponent?(v72, v87);
            if (v74(v72 + v71, 1, v110) == 1)
            {
              outlined destroy of MediaUserStateCenter?(v103, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
              outlined destroy of MediaUserStateCenter?(v102, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
              v35 = v105;
              (*v96)(v104, v105);
              (*v95)(v76, v110);
              v66 = v72;
              v62 = v108;
LABEL_22:
              result = outlined destroy of MediaUserStateCenter?(v66, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
              goto LABEL_23;
            }

            v77 = v89;
            v78 = v110;
            (*v93)(v89, v72 + v71, v110);
            lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
            LODWORD(v94) = dispatch thunk of static Equatable.== infix(_:_:)();
            v79 = *v95;
            (*v95)(v77, v78);
            outlined destroy of MediaUserStateCenter?(v103, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            outlined destroy of MediaUserStateCenter?(v102, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            v35 = v105;
            (*v96)(v104, v105);
            v80 = v78;
            v64 = v69;
            v79(v76, v80);
            result = outlined destroy of MediaUserStateCenter?(v72, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            v62 = v108;
            if (v94)
            {
              goto LABEL_39;
            }

LABEL_23:
            ++v63;
            v61 = v104;
            if (v109 == v63)
            {
              goto LABEL_33;
            }
          }

          outlined destroy of MediaUserStateCenter?(v68, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          outlined destroy of MediaUserStateCenter?(v67, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          v35 = v105;
          (*v96)(v73, v105);
          v65 = v74(v72 + v71, 1, v110) == 1;
          v66 = v72;
          v62 = v108;
          if (v65)
          {
            outlined destroy of MediaUserStateCenter?(v72, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
LABEL_39:

            return 0;
          }

          goto LABEL_22;
        }

LABEL_33:

        if (v91)
        {
          return 1;
        }
      }

      else if (v59)
      {
        return 1;
      }

      return 0;
    }

    v53 = v108;
    v52 = v109;
    v54 = v110;
    v55 = v91;
    outlined init with copy of UsoIdentifier.NluComponent?(v14, v91);
    if (v51(&v14[v50], 1, v54) != 1)
    {
      v56 = v89;
      (*v84)(v89, &v14[v50], v54);
      lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
      v86 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *v88;
      v58 = v56;
      v35 = v105;
      (*v88)(v58, v54);
      outlined destroy of MediaUserStateCenter?(v53, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of MediaUserStateCenter?(v52, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v46 = v90;
      (*v93)(v90, v35);
      v57(v91, v54);
      outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v86)
      {
        goto LABEL_36;
      }

      goto LABEL_7;
    }

    outlined destroy of MediaUserStateCenter?(v53, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of MediaUserStateCenter?(v52, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v46 = v90;
    v35 = v105;
    (*v93)(v90, v105);
    (*v88)(v55, v54);
LABEL_6:
    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
LABEL_7:
    ++v45;
    result = v100;
    if (v101 == v45)
    {

      v2 = v83;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t PlayRadioStationPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v119 = *v1;
  v3 = type metadata accessor for PommesSearchReason();
  v117 = *(v3 - 8);
  v118 = v3;
  v4 = *(v117 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v116 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v115 = (&v98 - v10);
  v11 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v107 = *(v11 - 8);
  v108 = v11;
  v12 = *(v107 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v106 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserParse();
  v111 = *(v15 - 8);
  v112 = v15;
  v16 = *(v111 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v110 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v113 = *(v19 - 8);
  v114 = v19;
  v20 = *(v113 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v109 = *(v24 - 8);
  v25 = *(v109 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v98 - v31;
  v33 = type metadata accessor for PommesSearchRequest(0);
  v34 = a1;
  v35 = *(a1 + *(v33 + 76));
  v36 = specialized Sequence.flatMap<A>(_:)(v35);
  v47 = v36;
  v102 = v35;
  v99 = v29;
  v100 = v23;
  v104 = v32;
  v105 = v33;
  v101 = v24;
  v103 = v34;
  if (!(v36 >> 62))
  {
    v48 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_6;
    }

LABEL_35:

    return 1;
  }

  v48 = __CocoaSet.count.getter();
  if (!v48)
  {
    goto LABEL_35;
  }

LABEL_6:
  v49 = 0;
  while (1)
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x223DDFF80](v49, v47);
      v39 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:

        return 1;
      }
    }

    else
    {
      if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        swift_once();
        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.pommes);
        v38 = 0;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v120 = 0;
          v121[0] = v42;
          *v41 = 136315138;
          v43 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v44 = String.init<A>(describing:)();
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v121);

          *(v41 + 4) = v46;
          _os_log_impl(&dword_2232BB000, v39, v40, "ConversionUtils.convertUserDialogActToTasks error: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x223DE0F80](v42, -1, -1);
          MEMORY[0x223DE0F80](v41, -1, -1);

          return 1;
        }

        goto LABEL_16;
      }

      v50 = *(v47 + 8 * v49 + 32);

      v39 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_15;
      }
    }

    if ((*(*v1 + 80))(v50))
    {
      break;
    }

    ++v49;
    if (v39 == v48)
    {
      goto LABEL_35;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v52 = __swift_project_value_buffer(v51, static Logger.pommes);

  v98 = v52;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();

  v55 = os_log_type_enabled(v53, v54);
  v56 = v113;
  if (v55)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v121[0] = v58;
    *v57 = 136315394;
    v59 = UsoTask.verbString.getter();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v121);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    v62 = UsoTask.baseEntityAsString.getter();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v121);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_2232BB000, v53, v54, "PlayRadioStationPreflightClient matched task: %s::%s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v58, -1, -1);
    MEMORY[0x223DE0F80](v57, -1, -1);
  }

  v65 = v104;
  v66 = v105;
  v67 = v114;
  v68 = v111;
  v69 = v112;
  v70 = v110;
  if (*(v102 + 16))
  {
    (*(v111 + 16))(v110, v102 + ((*(v111 + 80) + 32) & ~*(v111 + 80)), v112);
    v71 = v68;
    v72 = Siri_Nlu_External_Span.matcherNames.getter();
    (*(v71 + 8))(v70, v69);
    if (*(v72 + 16))
    {
      v73 = v100;
      (*(v56 + 16))(v100, v72 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v67);

      v74 = v67;
      v75 = v106;
      Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
      (*(v56 + 8))(v73, v74);
      v76 = v99;
      Siri_Nlu_External_UserStatedTask.task.getter();
      (*(v107 + 8))(v75, v108);
      v77 = v101;
      (*(v109 + 32))(v65, v76, v101);
      static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.info.getter();

      v80 = os_log_type_enabled(v78, v79);
      v66 = v105;
      if (v80)
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v121[0] = v82;
        *v81 = 136315138;
        v83 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
        v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v121);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_2232BB000, v78, v79, "Likely matched graph: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        v66 = v105;
        MEMORY[0x223DE0F80](v82, -1, -1);
        MEMORY[0x223DE0F80](v81, -1, -1);

        (*(v109 + 8))(v104, v77);
      }

      else
      {

        (*(v109 + 8))(v65, v77);
      }
    }

    else
    {

      v66 = v105;
    }
  }

  v86 = v103;
  v87 = (v103 + *(v66 + 32));
  v88 = *v87;
  v89 = v87[1];
  v90 = v115;
  PommesSearchRequest.pommesCandidateId.getter(v115);
  v91 = type metadata accessor for PommesCandidateId();
  (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
  v92 = v116;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v116);
  v93 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v86, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v88, v89, v90, v92, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001FLL, 0x80000002234D1A30);
  (*(v117 + 8))(v92, v118);
  outlined destroy of MediaUserStateCenter?(v90, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (v93)
  {

    return v93;
  }

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_2232BB000, v95, v96, "PlayRadioStationPreflightClient#ignore could not build PommesResponse with given parameters", v97, 2u);
    MEMORY[0x223DE0F80](v97, -1, -1);
  }

  return 1;
}

uint64_t Siri_Nlu_External_UserParse.playRadioStationRelevantTasks()()
{
  v1 = Siri_Nlu_External_Span.matcherNames.getter();
  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  if (!v0)
  {
    v12 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      goto LABEL_19;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      while (1)
      {
        v4 = 0;
        v5 = v2 & 0xFFFFFFFFFFFFFF8;
        while ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v4, v2);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v1 = v12;
            goto LABEL_21;
          }

LABEL_10:
          static UsoTask_CodegenConverter.convert(task:)();
          if (v11)
          {
            type metadata accessor for UsoTask_play_common_RadioStation();
            if (swift_dynamicCast())
            {

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v8 = *(v12 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v5 = v2 & 0xFFFFFFFFFFFFFF8;
            }

            else
            {
            }
          }

          else
          {

            outlined destroy of MediaUserStateCenter?(v10, &_sypSgMd, &_sypSgMR);
          }

          ++v4;
          if (v7 == v3)
          {
            goto LABEL_17;
          }
        }

        if (v4 < *(v5 + 16))
        {
          break;
        }

        __break(1u);
LABEL_19:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          goto LABEL_20;
        }
      }

      v6 = *(v2 + 8 * v4 + 32);

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_20:
    v1 = MEMORY[0x277D84F90];
LABEL_21:
  }

  return v1;
}

uint64_t UsoEntity.recursiveAttributeCheck(where:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  result = UsoEntity.attributes.getter();
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v25 = result + 64;
  v24 = v8;
  v26 = result;
  if (v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_4:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_37;
    }

    if (v9 >= v8)
    {
      v23 = 0;
LABEL_34:

      return v23;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
  }

  while (!v7);
  v3 = v9;
  while (1)
  {
LABEL_8:
    v10 = (*(result + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v10;
    v11 = v10[1];

    v13 = UsoEntity.attributes.getter();
    if (*(v13 + 16))
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v13 + 56) + 8 * v14);

        goto LABEL_13;
      }
    }

    else
    {
    }

    v17 = MEMORY[0x277D84F90];
LABEL_13:
    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        break;
      }

      goto LABEL_29;
    }

    result = __CocoaSet.count.getter();
    v18 = result;
    if (result)
    {
      break;
    }

LABEL_29:
    v7 &= v7 - 1;

    result = v26;
    v8 = v24;
    v4 = v25;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v19 = 0;
  while ((v17 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x223DDFF80](v19, v17);
    v20 = result;
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_35;
    }

LABEL_21:
    if (a1(v20))
    {

      goto LABEL_33;
    }

    if (dispatch thunk of UsoValue.getAsEntity()())
    {
      v22 = UsoEntity.recursiveAttributeCheck(where:)(a1, a2);

      if (v22)
      {

LABEL_33:
        v23 = 1;
        goto LABEL_34;
      }
    }

    else
    {
    }

    ++v19;
    if (v21 == v18)
    {
      goto LABEL_29;
    }
  }

  if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  v20 = *(v17 + 8 * v19 + 32);

  v21 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_21;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5Tm(uint64_t a1, unsigned __int8 a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  v8 = UsoTask.arguments.getter();
  v9 = 0xEC00000073656974;
  v10 = 0x69746E4572657375;
  v11 = 0xE900000000000065;
  v12 = 0x636E657265666572;
  if (a2 != 2)
  {
    v12 = 0x72656767697274;
    v11 = 0xE700000000000000;
  }

  if (a2)
  {
    v10 = 0x746567726174;
    v9 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  if (a2 <= 1u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (!*(v8 + 16))
  {

    goto LABEL_28;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_28:

    return a1;
  }

  v18 = *(*(v8 + 56) + 8 * v15);

  v30 = MEMORY[0x277D84F90];
  v26 = a5;
  if (v18 >> 62)
  {
LABEL_33:
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v27 = MEMORY[0x277D84F90];
  while (v19 != v20)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DDFF80](v20, v18);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v21 = *(v18 + 8 * v20 + 32);

      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    a4(0);
    dispatch thunk of UsoValue.getAsEntity()();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    ++v20;
    if (v29)
    {
      MEMORY[0x223DDF820](v23);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = v30;
      v20 = v22;
    }
  }

  v26(v27);
  return a1;
}

uint64_t outlined init with copy of UsoIdentifier.NluComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent()
{
  result = lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent;
  if (!lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent)
  {
    type metadata accessor for UsoIdentifier.NluComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent);
  }

  return result;
}

uint64_t AudioTypeFeaturiser.name.getter()
{
  type metadata accessor for AudioTypeFeaturiser(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19AudioTypeFeaturiserCmMd, &_s21SiriInformationSearch19AudioTypeFeaturiserCmMR);
  return String.init<A>(describing:)();
}

uint64_t AudioTypeFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = specialized AudioTypeFeaturiser.init(query:)(a1);

  return v5;
}

uint64_t AudioTypeFeaturiser.init(query:)(uint64_t a1)
{
  v1 = specialized AudioTypeFeaturiser.init(query:)(a1);

  return v1;
}

void AudioTypeFeaturiser.featurise(candidate:rankedSlotIndex:)(char **a1)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v14 = matched - 8;
  v15 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_exactScore);
  v20 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType;
  v39 = v9;
  v40 = v8;
  (*(v9 + 16))(v18, v1 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType, v8);
  v21 = *a1;
  v22 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType;
  v23 = *(v14 + 28);
  v42 = v4;
  v43 = v3;
  v24 = *(v4 + 16);
  v24(&v18[v23], &v21[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType], v3);
  LOBYTE(v14) = specialized Set.contains(_:)(v18, v19);
  v25 = outlined destroy of AudioTypeFeaturiser.ExactMatchKey(v18);
  if (v14)
  {
    v26 = 1.35;
  }

  else
  {
    v27 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_relatedScore);
    if (!*(v27 + 16))
    {
      goto LABEL_7;
    }

    v28 = v1 + v20;
    v29 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_relatedScore);
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
    if ((v30 & 1) == 0)
    {
      goto LABEL_7;
    }

    v31 = v38;
    v32 = specialized Dictionary.subscript.getter(v38, v25, *(v27 + 36), 0, v27);
    (*(v39 + 8))(v31, v40);
    v33 = &v21[v22];
    v34 = v41;
    v35 = v43;
    v24(v41, v33, v43);
    LOBYTE(v31) = specialized Set.contains(_:)(v34, v32);

    v25 = (*(v42 + 8))(v34, v35);
    if (v31)
    {
      v26 = 1.175;
    }

    else
    {
LABEL_7:
      v26 = 1.0;
    }
  }

  v36 = MEMORY[0x277D85000];
  v37 = (*((*MEMORY[0x277D85000] & *v21) + 0xB8))(v25);
  (*((*v36 & *v37) + 0x88))(v26);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioTypeFeaturiser.ExactMatchKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = *(a1 + 20);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AudioTypeFeaturiser.ExactMatchKey(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(a2 + 20);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioTypeFeaturiser.ExactMatchKey(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(a2 + 20);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AudioTypeFeaturiser.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_exactScore);

  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_relatedScore);

  return v0;
}

uint64_t AudioTypeFeaturiser.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_exactScore);

  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_relatedScore);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

BOOL specialized static AudioTypeFeaturiser.ExactMatchKey.== infix(_:_:)()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v3 != v2)
  {
    return 0;
  }

  v0 = *(type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0) + 20);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v3 == v2;
}

uint64_t specialized AudioTypeFeaturiser.init(query:)(uint64_t a1)
{
  v97 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_exactScore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMR);
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v102 = *(*(matched - 8) + 72);
  v1 = (*(*(matched - 8) + 80) + 32) & ~*(*(matched - 8) + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_2234D1AD0;
  v2 = v88 + v1;
  v3 = *MEMORY[0x277D39898];
  v93 = *MEMORY[0x277D39898];
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v70 = *(v4 - 8);
  v5 = *(v70 + 104);
  v106 = v4;
  v5(v2, v3);
  v6 = *(matched + 20);
  v7 = *MEMORY[0x277D39520];
  v74 = *MEMORY[0x277D39520];
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v89 = *(v8 - 8);
  v9 = *(v89 + 104);
  v9(v2 + v6, v7, v8);
  v100 = *MEMORY[0x277D39880];
  (v5)(v2 + v102);
  v83 = *MEMORY[0x277D39488];
  (v9)(v2 + v102 + *(matched + 20));
  (v5)(v2 + 2 * v102, v100, v106);
  v80 = *MEMORY[0x277D394B0];
  (v9)(v2 + 2 * v102 + *(matched + 20));
  v10 = v2 + 3 * v102;
  (v5)(v10, v100, v106);
  v91 = *MEMORY[0x277D394C0];
  (v9)(v10 + *(matched + 20));
  v85 = *MEMORY[0x277D39848];
  (v5)(v2 + 4 * v102);
  v82 = *MEMORY[0x277D394F8];
  (v9)(v2 + 4 * v102 + *(matched + 20));
  (v5)(v2 + 5 * v102, *MEMORY[0x277D397E0], v106);
  v81 = *MEMORY[0x277D39480];
  (v9)(v2 + 5 * v102 + *(matched + 20));
  (v5)(v2 + 6 * v102, *MEMORY[0x277D398A0], v106);
  v9(v2 + 6 * v102 + *(matched + 20), *MEMORY[0x277D39528], v8);
  (v5)(v2 + 7 * v102, *MEMORY[0x277D39838], v106);
  v104 = v5;
  v72 = *MEMORY[0x277D394E0];
  v105 = v9;
  (v9)(v2 + 7 * v102 + *(matched + 20));
  v11 = *MEMORY[0x277D39858];
  (v5)(v2 + 8 * v102, v11, v106);
  v71 = *MEMORY[0x277D39500];
  (v9)(v2 + 8 * v102 + *(matched + 20));
  (v5)(v2 + 9 * v102, v11, v106);
  v90 = *MEMORY[0x277D394A0];
  (v9)(v2 + 9 * v102 + *(matched + 20));
  (v5)(v2 + 10 * v102, *MEMORY[0x277D39868], v106);
  v60 = *MEMORY[0x277D39508];
  (v9)(v2 + 10 * v102 + *(matched + 20));
  (v5)(v2 + 11 * v102, *MEMORY[0x277D397F8], v106);
  v9(v2 + 11 * v102 + *(matched + 20), v90, v8);
  v61 = *MEMORY[0x277D39808];
  (v5)(v2 + 12 * v102);
  v79 = *MEMORY[0x277D394B8];
  (v9)(v2 + 12 * v102 + *(matched + 20));
  v62 = *MEMORY[0x277D39888];
  (v5)(v2 + 13 * v102);
  v68 = *MEMORY[0x277D39510];
  (v9)(v2 + 13 * v102 + *(matched + 20));
  v63 = *MEMORY[0x277D39800];
  (v5)(v2 + 14 * v102);
  v9(v2 + 14 * v102 + *(matched + 20), v74, v8);
  v12 = v2 + 15 * v102;
  v66 = *MEMORY[0x277D39830];
  (v5)(v12);
  v59 = *MEMORY[0x277D394D8];
  (v9)(v12 + *(matched + 20));
  v13 = *MEMORY[0x277D39840];
  (v5)(v2 + 16 * v102, v13, v106);
  v9(v2 + 16 * v102 + *(matched + 20), *MEMORY[0x277D394E8], v8);
  (v5)(v2 + 17 * v102, v13, v106);
  v9(v2 + 17 * v102 + *(matched + 20), v90, v8);
  v65 = *MEMORY[0x277D39820];
  (v5)(v2 + 18 * v102);
  v9(v2 + 18 * v102 + *(matched + 20), *MEMORY[0x277D394D0], v8);
  v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLV_SayAIGTt0g5Tf4g_n(v88);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v84 + v97) = v14;
  v67 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_relatedScore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAC0f1_g1_h1_i10_AudioItemL0OGtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAC0f1_g1_h1_i10_AudioItemL0OGtGMR);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMR);
  v101 = *(*(v98 - 8) + 72);
  v15 = (*(*(v98 - 8) + 80) + 32) & ~*(*(v98 - 8) + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_2234D0350;
  v56 = *(v98 + 48);
  (v5)(v64 + v15, v93, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
  v16 = *(v89 + 72);
  v17 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2234CF920;
  v9(v18 + v17, v91, v8);
  v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v18);
  swift_setDeallocating();
  v87 = *(v89 + 8);
  v87(v18 + v17, v8);
  swift_deallocClassInstance();
  v103 = v64 + v15;
  *(v103 + v56) = v19;
  v57 = *(v98 + 48);
  (v5)(v64 + v15 + v101, v85, v106);
  v86 = 3 * v16;
  v92 = 2 * v16;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2234CF910;
  v9(v20 + v17, v72, v8);
  v94 = v16;
  v9(v20 + v17 + v16, v71, v8);
  v9(v20 + v17 + 2 * v16, v74, v8);
  v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v64 + v15 + v101 + v57) = v21;
  v58 = *(v98 + 48);
  v22 = *MEMORY[0x277D39850];
  (v5)();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2234CF920;
  v105(v23 + v17, v81, v8);
  v24 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v23);
  swift_setDeallocating();
  v87(v23 + v17, v8);
  swift_deallocClassInstance();
  *(v103 + 2 * v101 + v58) = v24;
  v75 = *(v98 + 48);
  v25 = *MEMORY[0x277D397E8];
  (v5)();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2234D1AE0;
  v105(v26 + v17, v59, v8);
  v105(v26 + v17 + v94, v82, v8);
  v105(v26 + v17 + v92, v72, v8);
  v105(v26 + v17 + v86, v71, v8);
  v27 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v103 + 3 * v101 + v75) = v27;
  v73 = *(v98 + 48);
  v28 = *MEMORY[0x277D39828];
  (v5)();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2234CF920;
  v105(v29 + v17, v60, v8);
  v30 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v29);
  swift_setDeallocating();
  v87(v29 + v17, v8);
  swift_deallocClassInstance();
  *(v103 + 4 * v101 + v73) = v30;
  v76 = *(v98 + 48);
  v104();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2234CF910;
  v105(v31 + v17, v83, v8);
  v105(v31 + v17 + v94, v80, v8);
  v105(v31 + v17 + v92, v91, v8);
  v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v103 + 5 * v101 + v76) = v32;
  v77 = *(v98 + 48);
  v104();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2234CF910;
  v105(v33 + v17, v79, v8);
  v105(v33 + v17 + v94, v90, v8);
  v105(v33 + v17 + v92, *MEMORY[0x277D394C8], v8);
  v34 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v103 + 6 * v101 + v77) = v34;
  v78 = *(v98 + 48);
  v104();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2234CF920;
  v105(v35 + v17, v91, v8);
  v36 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v35);
  swift_setDeallocating();
  v87(v35 + v17, v8);
  swift_deallocClassInstance();
  *(v103 + 7 * v101 + v78) = v36;
  v95 = *(v98 + 48);
  v37 = *MEMORY[0x277D39870];
  v104();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2234CF940;
  v105(v38 + v17, v80, v8);
  v105(v38 + v17 + v94, *MEMORY[0x277D394A8], v8);
  v39 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v103 + 8 * v101 + v95) = v39;
  v96 = *(v98 + 48);
  v104();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2234CF940;
  v105(v40 + v17, v82, v8);
  v105(v40 + v17 + v94, v81, v8);
  v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v103 + 9 * v101 + v96) = v41;
  v42 = *(v98 + 48);
  (v104)(v103 + 10 * v101, v65, v106);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2234CF910;
  v105(v43 + v17, v83, v8);
  v105(v43 + v17 + v94, v79, v8);
  v105(v43 + v17 + v92, v68, v8);
  v44 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v103 + 10 * v101 + v42) = v44;
  v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAC0e1_f1_g1_h10_AudioItemK0OGTt0g5Tf4g_n(v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v84 + v67) = v45;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.pommes);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v107 = v50;
    *v49 = 136315138;
    v51 = Apple_Parsec_Siri_V2alpha_RequestedMediaType.toString.getter();
    if (v52)
    {
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0xE000000000000000;
    }

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v107);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_2232BB000, v47, v48, "AudioTypeFeaturiser : requestedMediaType=%s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x223DE0F80](v50, -1, -1);
    MEMORY[0x223DE0F80](v49, -1, -1);
  }

  (*(v70 + 16))(v84 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType, a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v106);
  return v84;
}

uint64_t outlined destroy of AudioTypeFeaturiser.ExactMatchKey(uint64_t a1)
{
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t type metadata completion function for AudioTypeFeaturiser()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
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

uint64_t type metadata completion function for AudioTypeFeaturiser.ExactMatchKey()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProfileSliceResolvingDataProvider.__allocating_init(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v6 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t ProfileSliceResolvingDataProvider.init(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v3 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  v7 = *(v3 + 64);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;

  return v3;
}

uint64_t ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v29 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v26 - v15;
  outlined init with copy of MediaUserStateCenter?(a1, &v26 - v15, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v17 = type metadata accessor for PommesSearchRequest(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v16, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    return 0;
  }

  v18 = *&v16[*(v17 + 92)];

  v19 = outlined destroy of PommesSearchRequest(v16);
  if (!*(v18 + 16))
  {

    return 0;
  }

  if (one-time initialization token for shared != -1)
  {
    v19 = swift_once();
  }

  v28 = &v26;
  v21 = static PerformanceUtil.shared;
  v27 = "exactScore";
  MEMORY[0x28223BE20](v19, v20);
  v25 = a3;
  Date.init()();
  v22 = *(*v21 + 200);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
  LOBYTE(v25) = 2;
  v22(&v30, 0xD000000000000034, v27 | 0x8000000000000000, 0, v11, "SiriInformationSearch/ProfileSliceResolvingDataProvider.swift", 61, 2, 57, "fetch(for:assistantData:serviceHelper:dispatchQueue:)", 53, v25, partial apply for closure #1 in ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:), &v26 - 8, v23);

  (*(v7 + 8))(v11, v6);
  return v30;
}

uint64_t closure #1 in closure #1 in ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v33 = a4;
  v34 = a5;
  v31 = a1;
  v32 = a3;
  v35 = a2;
  v30 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v30 - v20;
  outlined init with copy of MediaUserStateCenter?(a6, &v30 - v20, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v22 = type metadata accessor for PommesSearchRequest(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v21, 1, v22) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v21, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = &v21[*(v22 + 32)];
    v24 = *v26;
    v25 = *(v26 + 1);

    outlined destroy of PommesSearchRequest(v21);
  }

  outlined init with copy of MediaUserStateCenter?(a6, v18, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  if (v23(v18, 1, v22) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v18, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    v27 = 1;
  }

  else
  {
    PommesSearchRequest.pommesCandidateId.getter(v12);
    outlined destroy of PommesSearchRequest(v18);
    v27 = 0;
  }

  v28 = type metadata accessor for PommesCandidateId();
  (*(*(v28 - 8) + 56))(v12, v27, 1, v28);
  ProfileSliceResolvingDataProvider.resolve(_:serviceHelper:dispatchQueue:assistantData:requestId:pommesCandidateId:pommesSearchRequest:)(v31, v32, v33, v34, v24, v25, v12, a6, v30);

  return outlined destroy of MediaUserStateCenter?(v12, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
}

uint64_t ProfileSliceResolvingDataProvider.resolve(_:serviceHelper:dispatchQueue:assistantData:requestId:pommesCandidateId:pommesSearchRequest:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(char *, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v221 = a8;
  v235 = a7;
  v227 = a4;
  v214 = a3;
  v215 = a2;
  v232 = a9;
  v218 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v217 = *(v218 - 8);
  v12 = *(v217 + 64);
  v14 = MEMORY[0x28223BE20](v218, v13);
  v212 = &v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v210 = &v208 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v213 = &v208 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v216 = &v208 - v24;
  v224 = type metadata accessor for SiriKitContactResolver();
  v223 = *(v224 - 8);
  v25 = *(v223 + 64);
  MEMORY[0x28223BE20](v224, v26);
  v222 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v229 = (&v208 - v31);
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v233 = &v208 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v237 = &v208 - v39;
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v41 = *(v40 - 8);
  v42 = v41[8];
  v44 = MEMORY[0x28223BE20](v40, v43);
  v211 = &v208 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v228 = &v208 - v48;
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v208 - v50;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = __swift_project_value_buffer(v52, static Logger.pommes);
  v54 = v41[2];
  v234 = a1;
  v226 = v41 + 2;
  v225 = v54;
  v54(v51, a1, v40);
  v220 = v53;
  v55 = Logger.logObject.getter();
  v56 = v40;
  v57 = static os_log_type_t.debug.getter();
  v58 = os_log_type_enabled(v55, v57);
  v236 = a5;
  v230 = v41;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v219 = a6;
    v60 = v59;
    *v59 = 134217984;
    v61 = v237;
    MEMORY[0x223DDBB90]();
    v62 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
    (*(v33 + 8))(v61, v32);
    v63 = v41[1];
    v63(v51, v56);
    *(v60 + 1) = v62;
    _os_log_impl(&dword_2232BB000, v55, v57, "Attempting to resolve profile slice type: %ld", v60, 0xCu);
    v64 = v60;
    v65 = v219;
    v66 = v235;
    MEMORY[0x223DE0F80](v64, -1, -1);
    v67 = v56;
  }

  else
  {
    v63 = v41[1];
    v63(v51, v56);
    v67 = v56;
    v65 = a6;
    v66 = v235;
  }

  v68 = v233;
  v69 = v234;
  MEMORY[0x223DDBB90]();
  v70 = (*(v33 + 88))(v68, v32);
  if (v70 == *MEMORY[0x277D39720])
  {
    goto LABEL_7;
  }

  v95 = v70;
  if (v70 == *MEMORY[0x277D396E8])
  {
    return ProfileSliceResolvingDataProvider.resolveAmpSlice(requestId:pommesCandidateId:pommesSearchRequest:serviceHelper:dispatchQueue:)(v236, v65, v66, v221, v232);
  }

  if (v70 == *MEMORY[0x277D39730] || v70 == *MEMORY[0x277D39728])
  {
LABEL_7:
    v221 = v63;
    v71 = v229;
    outlined init with copy of MediaUserStateCenter?(v66, v229, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v72 = v228;
    v225(v228, v69, v67);
    v73 = v231[7];

    v74 = v65;
    v75 = v222;
    SiriKitContactResolver.init()();
    v231 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v76 = type metadata accessor for ContactProfileSliceResolver();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    v79 = swift_allocObject();
    v235 = v33;
    v80 = v79;
    v81 = v224;
    v79[5] = v224;
    v79[6] = &protocol witness table for SiriKitContactResolver;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79 + 2);
    (*(v223 + 32))(boxed_opaque_existential_1, v75, v81);
    v83 = v227;
    v84 = v227[3];
    *(v80 + 11) = v227[2];
    *(v80 + 13) = v84;
    *(v80 + 15) = v83[4];
    *(v80 + 130) = *(v83 + 74);
    v85 = v83[1];
    *(v80 + 7) = *v83;
    *(v80 + 9) = v85;
    v80[19] = v236;
    v80[20] = v74;
    v233 = v32;
    outlined init with take of PommesCandidateId?(v71, v80 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId);
    (v230[4])(v80 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest, v72, v67);
    *(v80 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore) = v231;
    *(v80 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil) = v73;
    outlined init with copy of MediaUserStateCenter?(v83, &v238, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);

    v87 = v237;
    MEMORY[0x223DDBB90](v86);
    ContactProfileSliceResolver.resolveNameSlice(label:)(v87, v232);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v80 + 2);
    v88 = *(v80 + 13);
    v240 = *(v80 + 11);
    v241 = v88;
    *v242 = *(v80 + 15);
    *&v242[10] = *(v80 + 130);
    v89 = *(v80 + 9);
    v238 = *(v80 + 7);
    v239 = v89;
    outlined destroy of MediaUserStateCenter?(&v238, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
    v90 = v80[20];

    outlined destroy of MediaUserStateCenter?(v80 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v221(v80 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest, v67);

    v91 = *(v80 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil);

    v92 = *(*v80 + 48);
    v93 = *(*v80 + 52);
    swift_deallocClassInstance();
    return (*(v235 + 8))(v87, v233);
  }

  if (v70 == *MEMORY[0x277D396E0])
  {
    outlined init with copy of MediaUserStateCenter?(v66, v229, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v96 = v65;
    v225(v228, v69, v67);
    v97 = v231[7];

    v98 = v222;
    SiriKitContactResolver.init()();
    v99 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v100 = v67;
    v209 = v67;
    v235 = v33;
    v101 = v99;
    v102 = type metadata accessor for ContactProfileSliceResolver();
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    v105 = swift_allocObject();
    v106 = v224;
    *(v105 + 40) = v224;
    *(v105 + 48) = &protocol witness table for SiriKitContactResolver;
    v107 = __swift_allocate_boxed_opaque_existential_1((v105 + 16));
    (*(v223 + 32))(v107, v98, v106);
    v108 = v227;
    v109 = v227[3];
    *(v105 + 88) = v227[2];
    *(v105 + 104) = v109;
    *(v105 + 120) = v108[4];
    *(v105 + 130) = *(v108 + 74);
    v110 = v108[1];
    *(v105 + 56) = *v108;
    *(v105 + 72) = v110;
    v111 = v236;
    *(v105 + 152) = v236;
    *(v105 + 160) = v96;
    outlined init with take of PommesCandidateId?(v229, v105 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId);
    (v230[4])(v105 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest, v228, v100);
    *(v105 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore) = v101;
    *(v105 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil) = v97;
    v112 = v237;
    (*(v235 + 104))(v237, v95, v32);
    v233 = v32;
    v234 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil;
    v113 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId;
    v114 = *(*v97 + 128);
    outlined init with copy of MediaUserStateCenter?(v108, &v238, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);

    v115 = v114(v111, v96, v105 + v113, v112);
    ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(0, v112, v232);
    (*(**(v105 + v234) + 136))(*(v105 + 152), *(v105 + 160), v105 + v113, v115);

    (*(v235 + 8))(v112, v233);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v105 + 16));
    v116 = *(v105 + 104);
    v240 = *(v105 + 88);
    v241 = v116;
    *v242 = *(v105 + 120);
    *&v242[10] = *(v105 + 130);
    v117 = *(v105 + 72);
    v238 = *(v105 + 56);
    v239 = v117;
    outlined destroy of MediaUserStateCenter?(&v238, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);

    outlined destroy of MediaUserStateCenter?(v105 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    (v230[1])(v105 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest, v209);
    v118 = *(v105 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore);

    v119 = *(*v105 + 48);
    v120 = *(*v105 + 52);
    return swift_deallocClassInstance();
  }

  if (v70 == *MEMORY[0x277D39710])
  {
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();
    v123 = os_log_type_enabled(v121, v122);
    v124 = v236;
    if (v123)
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_2232BB000, v121, v122, "Resolving me card slice", v125, 2u);
      MEMORY[0x223DE0F80](v125, -1, -1);
    }

    return ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)(v227, v124, v65, v66, v232);
  }

  v126 = v63;
  v127 = v236;
  if (v70 == *MEMORY[0x277D39738])
  {
    v128 = v33;
    v233 = v32;
    v219 = v65;
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_2232BB000, v129, v130, "Resolving RouteInfo slice", v131, 2u);
      MEMORY[0x223DE0F80](v131, -1, -1);
    }

    v132 = type metadata accessor for RouteInfoProfileSliceResolver();
    v133 = *(v132 + 48);
    v134 = *(v132 + 52);
    v135 = swift_allocObject();
    v136 = *(v217 + 56);
    v137 = v218;
    v136(v135 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue, 1, 1, v218);
    v138 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_dispatchGroup;
    *(v135 + v138) = dispatch_group_create();
    *(v135 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
    v139 = v216;
    v136(v216, 1, 1, v137);
    v140 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
    swift_beginAccess();
    v234 = v135;
    outlined assign with take of MediaUserStateCenter?(v139, v135 + v140, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
    swift_endAccess();
    v141 = v231[7];
    v142 = v237;
    v143 = v233;
    (*(v128 + 104))(v237, v95, v233);
    v144 = *(*v141 + 128);

    v231 = v141;
    v145 = v144(v236, v219, v235, v142);
    (*(v128 + 8))(v142, v143);
    v146 = v215;
    if (v215)
    {
      v147 = v214;
      if (v214)
      {
        v148 = v216;
        v149 = v218;
        v136(v216, 1, 1, v218);
        v150 = v234;
        swift_beginAccess();
        swift_unknownObjectRetain();
        v151 = v147;
        outlined assign with take of MediaUserStateCenter?(v148, v150 + v140, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
        swift_endAccess();
        RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(v146, v151);
        v152 = v150 + v140;
        v153 = v213;
        outlined init with copy of MediaUserStateCenter?(v152, v213, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
        v154 = v217;
        if ((*(v217 + 48))(v153, 1, v149) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v153, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v155, v156))
          {
            v157 = swift_slowAlloc();
            *v157 = 0;
            _os_log_impl(&dword_2232BB000, v155, v156, "There was an error while creating the routeInfoProfileSlice. Returning no profile slice for .sliceLabelRouteInfo", v157, 2u);
            MEMORY[0x223DE0F80](v157, -1, -1);
          }

          (*(*v231 + 144))(v236, v219, v235, v145, 3);
          swift_unknownObjectRelease();

          v158 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
          (*(*(v158 - 8) + 56))(v232, 1, 1, v158);
        }

        else
        {
          v203 = v210;
          (*(v154 + 32))(v210, v153, v149);
          v204 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
          MEMORY[0x28223BE20](v204, v205);
          *(&v208 - 2) = v203;
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
          v206 = v232;
          static Message.with(_:)();
          (*(*v231 + 136))(v236, v219, v235, v145);
          swift_unknownObjectRelease();

          (*(*(v204 - 8) + 56))(v206, 0, 1, v204);
          (*(v154 + 8))(v203, v218);
        }

        goto LABEL_45;
      }

      swift_unknownObjectRetain();
      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        _os_log_impl(&dword_2232BB000, v199, v200, "Cannot create route info slice because there is no dispatch queue provided", v201, 2u);
        MEMORY[0x223DE0F80](v201, -1, -1);
      }

      (*(*v231 + 144))(v236, v219, v235, v145, 3);
      swift_unknownObjectRelease();
    }

    else
    {
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&dword_2232BB000, v178, v179, "Cannot create route info slice because there is no service helper", v180, 2u);
        MEMORY[0x223DE0F80](v180, -1, -1);
      }

      (*(*v231 + 144))(v236, v219, v235, v145, 3);
    }

    v202 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    (*(*(v202 - 8) + 56))(v232, 1, 1, v202);
LABEL_45:
  }

  if (v70 == *MEMORY[0x277D396F8])
  {
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&dword_2232BB000, v159, v160, "Resolving parking location slice", v161, 2u);
      MEMORY[0x223DE0F80](v161, -1, -1);
    }

    v162 = type metadata accessor for ParkingLocationProfileSliceResolver();
    v163 = *(v162 + 48);
    v164 = *(v162 + 52);
    v165 = swift_allocObject();
    v166 = *(v217 + 56);
    v167 = v218;
    v166(v165 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue, 1, 1, v218);
    *(v165 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
    v168 = v216;
    v166(v216, 1, 1, v167);
    v169 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v168, v165 + v169, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
    swift_endAccess();
    *(v165 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) = 0;
    ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(v215, v214, v232);
  }

  if (v70 == *MEMORY[0x277D39700])
  {
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&dword_2232BB000, v170, v171, "Resolving foreground App slice", v172, 2u);
      MEMORY[0x223DE0F80](v172, -1, -1);
    }

    specialized RunningBoardForegroundAppProvider.getForegroundAppId()();

    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
    v173 = v212;
    v174 = v218;
    static Message.with(_:)();
    v175 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    MEMORY[0x28223BE20](v175, v176);
    *(&v208 - 2) = v173;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
    v177 = v232;
    static Message.with(_:)();
    (*(*(v175 - 8) + 56))(v177, 0, 1, v175);
    return (*(v217 + 8))(v173, v174);
  }

  else
  {
    v181 = v65;
    v219 = v65;
    v182 = v231[7];

    v184 = v237;
    MEMORY[0x223DDBB90](v183);
    v185 = (*(*v182 + 128))(v127, v181, v66, v184);

    v229 = *(v33 + 8);
    (v229)(v184, v32);
    v186 = *(*v231[7] + 144);
    v187 = v67;

    v188 = v236;
    v236 = v185;
    v186(v188, v219, v66, v185, 2);

    v189 = v211;
    v225(v211, v234, v67);
    v190 = Logger.logObject.getter();
    v191 = v32;
    v192 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v190, v192))
    {
      v193 = swift_slowAlloc();
      *v193 = 134217984;
      v194 = v237;
      MEMORY[0x223DDBB90]();
      v195 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
      v196 = v194;
      v197 = v229;
      (v229)(v196, v191);
      v126(v189, v187);
      *(v193 + 4) = v195;
      _os_log_impl(&dword_2232BB000, v190, v192, "Skipping profile resolution request for an unsupported type: %ld", v193, 0xCu);
      MEMORY[0x223DE0F80](v193, -1, -1);
      v198 = v197;
    }

    else
    {
      v126(v189, v67);
      v198 = v229;
    }

    v198(v233, v191);
    v207 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    return (*(*(v207 - 8) + 56))(v232, 1, 1, v207);
  }
}

uint64_t ProfileSliceResolvingDataProvider.resolveAmpSlice(requestId:pommesCandidateId:pommesSearchRequest:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v188 = a4;
  v204 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v194 = v177 - v12;
  v211 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v210 = *(v211 - 8);
  v13 = *(v210 + 64);
  MEMORY[0x28223BE20](v211, v14);
  v212 = v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v207 = *(v208 - 8);
  v16 = *(v207 + 64);
  v18 = MEMORY[0x28223BE20](v208, v17);
  v200 = v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v191 = v177 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v190 = v177 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v185 = v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v184 = v177 - v32;
  v198 = type metadata accessor for DispatchTimeInterval();
  v199 = *(v198 - 8);
  v33 = *(v199 + 64);
  MEMORY[0x28223BE20](v198, v34);
  v196 = (v177 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197 = type metadata accessor for DispatchTime();
  v206 = *(v197 - 8);
  v36 = *(v206 + 64);
  v38 = MEMORY[0x28223BE20](v197, v37);
  v195 = (v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38, v40);
  v205 = v177 - v41;
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v47 = v177 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v5 + 56);
  (*(v43 + 104))(v47, *MEMORY[0x277D396E8], v42);
  v49 = *(*v48 + 128);

  v201 = a1;
  v202 = a2;
  v50 = a2;
  v203 = a3;
  v51 = v5;
  v52 = v49(a1, v50, a3, v47);

  (*(v43 + 8))(v47, v42);
  v53 = swift_allocObject();
  v209 = v53;
  *(v53 + 16) = 0;
  v54 = v53 + 16;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v193 = (v55 + 16);
  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v5 + 16, &v221, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v56 = v222;
  outlined destroy of MediaUserStateCenter?(&v221, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  if (!v56)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.pommes);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2232BB000, v58, v59, "ProfileSliceResolvingDataProvider Initializing the shared media user state center ...", v60, 2u);
      MEMORY[0x223DE0F80](v60, -1, -1);
    }

    v61 = [objc_opt_self() shared];
    v222 = type metadata accessor for ICMediaUserStateCenter();
    v223 = &protocol witness table for ICMediaUserStateCenter;
    v221 = v61;
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(&v221, v5 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    swift_endAccess();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2232BB000, v62, v63, "ProfileSliceResolvingDataProvider Initializing the shared media user state center complete", v64, 2u);
      MEMORY[0x223DE0F80](v64, -1, -1);
    }
  }

  outlined init with copy of MediaUserStateCenter?(v51 + 16, &v218, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  if (v219)
  {
    v189 = v54;
    v192 = v52;
    outlined init with take of DomainWarmupHandling(&v218, &v221);
    v65 = dispatch_group_create();
    dispatch_group_enter(v65);
    v66 = v222;
    v67 = v223;
    __swift_project_boxed_opaque_existential_1(&v221, v222);
    v187 = v51;
    v68 = swift_allocObject();
    v68[2] = v65;
    v68[3] = v55;
    v68[4] = v209;
    v69 = v55;
    v70 = v67[4];
    v71 = v65;
    v186 = v69;

    v72 = v187;
    v70(partial apply for closure #1 in ProfileSliceResolvingDataProvider.resolveAmpSlice(requestId:pommesCandidateId:pommesSearchRequest:serviceHelper:dispatchQueue:), v68, v66, v67);

    v73 = v195;
    static DispatchTime.now()();
    v74 = v196;
    *v196 = 1000;
    v75 = v199;
    v76 = *(v199 + 104);
    v182 = *MEMORY[0x277D85178];
    v77 = v198;
    v183 = v199 + 104;
    v181 = v76;
    v76(v74);
    v78 = v205;
    MEMORY[0x223DDF450](v73, v74);
    v80 = *(v75 + 8);
    v79 = v75 + 8;
    v180 = v80;
    v80(v74, v77);
    v81 = v206 + 8;
    v82 = *(v206 + 8);
    v83 = v197;
    v82(v73, v197);
    v195 = v71;
    LODWORD(v73) = MEMORY[0x223DDFB80](v78);
    v179 = v82;
    v178 = v81;
    v82(v78, v83);
    v84 = v72;
    v177[3] = v73;
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v85 = v193;
      swift_beginAccess();
      if (!*v85)
      {
        v86 = v184;
        outlined init with copy of MediaUserStateCenter?(v188, v184, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
        v87 = type metadata accessor for PommesSearchRequest(0);
        if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v86, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
        }

        else
        {
          v100 = *(v86 + *(v87 + 60));
          outlined destroy of PommesSearchRequest(v86);
          if ((v100 & 1) == 0)
          {
            v101 = v189;
            swift_beginAccess();
            v102 = *v101;
            if (*v101)
            {
              v199 = v79;
              v103 = *(v102 + 16);

              if (v103)
              {
                v104 = 0;
                v105 = (v102 + 32);
                v84 = MEMORY[0x277D84F90];
                while (v104 < *(v102 + 16))
                {
                  outlined init with copy of AppDataProviding(v105, &v218);
                  v79 = v219;
                  v106 = v220;
                  __swift_project_boxed_opaque_existential_1(&v218, v219);
                  if ((*(v106 + 32))(v79, v106))
                  {
                    outlined init with take of DomainWarmupHandling(&v218, &v213);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v217 = v84;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 16) + 1, 1);
                      v84 = v217;
                    }

                    v109 = *(v84 + 16);
                    v108 = *(v84 + 24);
                    if (v109 >= v108 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1);
                    }

                    v110 = v214;
                    v79 = v215;
                    v111 = __swift_mutable_project_boxed_opaque_existential_1(&v213, v214);
                    v112 = *(*(v110 - 8) + 64);
                    MEMORY[0x28223BE20](v111, v111);
                    v114 = v177 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v115 + 16))(v114);
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v109, v114, &v217, v110, v79);
                    __swift_destroy_boxed_opaque_existential_1(&v213);
                    v84 = v217;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(&v218);
                  }

                  ++v104;
                  v105 += 40;
                  if (v103 == v104)
                  {
                    goto LABEL_34;
                  }
                }

                __break(1u);
                goto LABEL_85;
              }

              v84 = MEMORY[0x277D84F90];
LABEL_34:

              v116 = v189;
              v117 = *v189;
              v77 = v198;
              v83 = v197;
              v74 = v196;
            }

            else
            {
              v84 = 0;
              v116 = v189;
            }

            *v116 = v84;

            v84 = v187;
          }
        }
      }
    }

    v118 = *(v84 + 64);
    if (v118)
    {
      v119 = *(v84 + 64);

      v120 = v205;
      static DispatchTime.now()();
      *v74 = 1;
      v181(v74, v182, v77);
      v121 = v190;
      MEMORY[0x223DDF450](v120, v74);
      v180(v74, v77);
      v179(v120, v83);
      (*(v206 + 56))(v121, 0, 1, v83);
      v122 = (*(*v118 + 176))(v121);

      outlined destroy of MediaUserStateCenter?(v121, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    }

    else
    {
      v122 = 0;
    }

    v105 = v192;
    v123 = v194;
    v124 = v189;
    swift_beginAccess();
    v125 = *v124;
    if (*v124)
    {
      v126 = *(v125 + 16);
      if (v126)
      {
        v127 = *(**(v84 + 56) + 136);

        v127(v201, v202, v203, v105);

        if (v122)
        {
          v128 = v122;
        }

        else
        {
          v128 = MEMORY[0x277D84F90];
        }

        v129 = v185;
        outlined init with copy of MediaUserStateCenter?(v188, v185, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
        v130 = type metadata accessor for PommesSearchRequest(0);
        if ((*(*(v130 - 8) + 48))(v129, 1, v130) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v129, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
          LODWORD(v205) = 0;
        }

        else
        {
          LODWORD(v205) = *(v129 + *(v130 + 60));
          outlined destroy of PommesSearchRequest(v129);
        }

        v161 = v211;
        (*(v207 + 104))(v191, *MEMORY[0x277D39D58], v208);
        v206 = v125;
        v162 = v125 + 32;
        v163 = (v210 + 48);
        v164 = (v210 + 32);
        v165 = MEMORY[0x277D84F90];
        do
        {
          outlined init with copy of AppDataProviding(v162, &v218);
          createAMPUserState(mediaUserState:muxUserInfo:)(&v218, v128, v123);
          __swift_destroy_boxed_opaque_existential_1(&v218);
          if ((*v163)(v123, 1, v161) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v123, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
          }

          else
          {
            v166 = *v164;
            (*v164)(v212, v123, v161);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v165 + 2) + 1, 1, v165);
            }

            v168 = *(v165 + 2);
            v167 = *(v165 + 3);
            if (v168 >= v167 >> 1)
            {
              v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v167 > 1, v168 + 1, 1, v165);
            }

            *(v165 + 2) = v168 + 1;
            v161 = v211;
            v166(&v165[((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v168], v212, v211);
          }

          v162 += 40;
          --v126;
        }

        while (v126);

        v169 = v191;
        createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v165, v191, 1, v205, v204);

        (*(v207 + 8))(v169, v208);
        goto LABEL_70;
      }
    }

    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v131 = v193;
      swift_beginAccess();
      v132 = *v131;
      v79 = v208;
      if (v132)
      {
        v133 = v132;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v134 = type metadata accessor for Logger();
        __swift_project_value_buffer(v134, static Logger.pommes);
        v135 = v132;
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v216 = v132;
          v217 = v139;
          *v138 = 136315138;
          v140 = v132;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v141 = String.init<A>(describing:)();
          v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v217);

          *(v138 + 4) = v143;
          v79 = v208;
          _os_log_impl(&dword_2232BB000, v136, v137, "ProfileSliceResolvingDataProvider : AMP user state refresh return an error : %s", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v139);
          MEMORY[0x223DE0F80](v139, -1, -1);
          MEMORY[0x223DE0F80](v138, -1, -1);
        }

        v144 = *(**(v84 + 56) + 144);

        v144(v201, v202, v203, v105, 3);

        goto LABEL_58;
      }

      if (*v189)
      {
        if (*(*v189 + 16))
        {
          goto LABEL_58;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v171 = type metadata accessor for Logger();
        __swift_project_value_buffer(v171, static Logger.pommes);
        v172 = Logger.logObject.getter();
        v173 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v172, v173))
        {
          goto LABEL_83;
        }

        v174 = swift_slowAlloc();
        *v174 = 0;
        v175 = "ProfileSliceResolvingDataProvider : AMP user state refresh returned no user states";
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v176 = type metadata accessor for Logger();
        __swift_project_value_buffer(v176, static Logger.pommes);
        v172 = Logger.logObject.getter();
        v173 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v172, v173))
        {
          goto LABEL_83;
        }

        v174 = swift_slowAlloc();
        *v174 = 0;
        v175 = "ProfileSliceResolvingDataProvider : AMP user state refresh return nil";
      }

      _os_log_impl(&dword_2232BB000, v172, v173, v175, v174, 2u);
      MEMORY[0x223DE0F80](v174, -1, -1);
LABEL_83:

      v149 = *(**(v84 + 56) + 144);

      v150 = v201;
      v151 = v202;
      v152 = v203;
      v153 = v105;
      v154 = 3;
LABEL_57:
      v149(v150, v151, v152, v153, v154);

LABEL_58:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR);
      v155 = *(v210 + 72);
      v156 = (*(v210 + 80) + 32) & ~*(v210 + 80);
      v157 = swift_allocObject();
      *(v157 + 16) = xmmword_2234CF920;
      Apple_Parsec_Siri_V2alpha_AmpUserState.init()();
      v158 = v207;
      v159 = v200;
      (*(v207 + 104))(v200, *MEMORY[0x277D39D50], v79);
      createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v157, v159, 1, 0, v204);

      swift_setDeallocating();
      v160 = *(v157 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();

      (*(v158 + 8))(v159, v79);
LABEL_70:
      __swift_destroy_boxed_opaque_existential_1(&v221);
    }

    v79 = v208;
    if (one-time initialization token for pommes == -1)
    {
LABEL_54:
      v145 = type metadata accessor for Logger();
      __swift_project_value_buffer(v145, static Logger.pommes);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        *v148 = 0;
        _os_log_impl(&dword_2232BB000, v146, v147, "ProfileSliceResolvingDataProvider : timeout while waiting for AMP user state refresh", v148, 2u);
        MEMORY[0x223DE0F80](v148, -1, -1);
      }

      v149 = *(**(v84 + 56) + 144);

      v150 = v201;
      v151 = v202;
      v152 = v203;
      v153 = v105;
      v154 = 1;
      goto LABEL_57;
    }

LABEL_85:
    swift_once();
    goto LABEL_54;
  }

  outlined destroy of MediaUserStateCenter?(&v218, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  __swift_project_value_buffer(v88, static Logger.pommes);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_2232BB000, v89, v90, "ProfileSliceResolvingDataProvider the shared media user state center initialization failed", v91, 2u);
    MEMORY[0x223DE0F80](v91, -1, -1);
  }

  v92 = *(**(v51 + 56) + 144);

  v92(v201, v202, v203, v52, 3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR);
  v93 = *(v210 + 72);
  v94 = (*(v210 + 80) + 32) & ~*(v210 + 80);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_2234CF920;
  Apple_Parsec_Siri_V2alpha_AmpUserState.init()();
  v96 = v207;
  v97 = v200;
  v98 = v208;
  (*(v207 + 104))(v200, *MEMORY[0x277D39D50], v208);
  createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v95, v97, 1, 0, v204);

  swift_setDeallocating();
  v99 = *(v95 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v96 + 8))(v97, v98);
}

void closure #1 in ProfileSliceResolvingDataProvider.resolveAmpSlice(requestId:pommesCandidateId:pommesSearchRequest:serviceHelper:dispatchQueue:)(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  swift_beginAccess();
  if (a2)
  {
    v12 = *(a4 + 16);
    *(a4 + 16) = a2;
    v13 = a2;
  }

  else
  {
    v14 = *(a5 + 16);
    *(a5 + 16) = a1;
  }

  dispatch_group_leave(a3);
}

uint64_t ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a1;
  v56 = a5;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v46 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v55 = *(v52 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v52, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v5;
  v23 = *(v5 + 56);
  (*(v18 + 104))(v22, *MEMORY[0x277D39710], v17);
  v24 = *(*v23 + 128);

  v51 = a2;
  v53 = a3;
  v54 = a4;
  v25 = v24(a2, a3, a4, v22);

  v26 = (*(v18 + 8))(v22, v17);
  v28 = *(v49 + 24);
  if (v28 && *(v28 + 16))
  {
    MEMORY[0x28223BE20](v26, v27);
    *(&v46 - 2) = v29;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
    v30 = v52;
    static Message.with(_:)();
    v31 = *(**(v50 + 56) + 136);

    v31(v51, v53, v54, v25);

    v33 = v55;
    v32 = v56;
    (*(v55 + 32))(v56, v16, v30);
    return (*(v33 + 56))(v32, 0, 1, v30);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.pommes);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2232BB000, v36, v37, "No Me card data available; returning no profile slice for .sliceLabelMe", v38, 2u);
      MEMORY[0x223DE0F80](v38, -1, -1);
    }

    v39 = *(**(v50 + 56) + 144);

    v39(v51, v53, v54, v25, 3);

    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
    v40 = v46;
    v41 = v48;
    v42 = static Message.with(_:)();
    MEMORY[0x28223BE20](v42, v43);
    *(&v46 - 2) = v40;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
    v44 = v56;
    v45 = v52;
    static Message.with(_:)();

    (*(v55 + 56))(v44, 0, 1, v45);
    return (*(v47 + 8))(v40, v41);
  }
}

uint64_t closure #1 in ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  (*(v10 + 104))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
  (*(v1 + 104))(v5, *MEMORY[0x277D39D50], v0);
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
}

uint64_t closure #2 in ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  (*(v7 + 104))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39710]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2234CF920;
  (*(v9 + 16))(v12 + v11, a2, v8);
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

uint64_t closure #3 in ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v49 - v7;
  v63 = type metadata accessor for Google_Protobuf_Any();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v63, v11);
  v56 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v65 = v49 - v16;
  v64 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v17 = *(v64 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v64, v19);
  v55 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  (*(v25 + 104))(v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39710]);
  v49[1] = a1;
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = a2 + 32;
    v61 = (v9 + 56);
    v62 = v8;
    v60 = (v17 + 56);
    v53 = (v9 + 8);
    v54 = (v9 + 32);
    v50 = v17;
    v51 = (v17 + 32);
    v52 = (v17 + 48);
    v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
    v58 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0]);
    v57 = MEMORY[0x277D84F90];
    v28 = v64;
    while (1)
    {
      v29 = *(v27 + 80);
      v68[4] = *(v27 + 64);
      v68[5] = v29;
      v69 = *(v27 + 96);
      v30 = *(v27 + 16);
      v68[0] = *v27;
      v68[1] = v30;
      v31 = *(v27 + 48);
      v68[2] = *(v27 + 32);
      v68[3] = v31;
      v67[3] = v59;
      v67[4] = v58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
      MEMORY[0x28223BE20](boxed_opaque_existential_1, v33);
      v49[-2] = v68;
      outlined init with copy of AssistantDataSnapshot.MeCard(v68, &v66);
      v34 = v70;
      static Message.with(_:)();
      defaultAnyTypeURLPrefix.getter();
      v35 = v62;
      Google_Protobuf_Any.init(message:partial:typePrefix:)();
      if (v34)
      {

        outlined destroy of AssistantDataSnapshot.MeCard(v68);
        (*v61)(v35, 1, 1, v63);
        outlined destroy of MediaUserStateCenter?(v35, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
        (*v60)(v65, 1, 1, v28);
        v70 = 0;
      }

      else
      {
        v36 = v63;
        (*v61)(v35, 0, 1, v63);
        v37 = v65;
        v38 = v56;
        v39 = (*v54)(v56, v35, v36);
        MEMORY[0x28223BE20](v39, v40);
        v49[-2] = v38;
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
        static Message.with(_:)();
        v70 = 0;
        outlined destroy of AssistantDataSnapshot.MeCard(v68);
        (*v60)(v37, 0, 1, v64);
        v41 = v38;
        v28 = v64;
        (*v53)(v41, v36);
        if ((*v52)(v37, 1, v28) != 1)
        {
          v42 = *v51;
          (*v51)(v55, v65, v28);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
          }

          v44 = *(v57 + 2);
          v43 = *(v57 + 3);
          v45 = v50;
          if (v44 >= v43 >> 1)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v57);
            v45 = v50;
            v57 = v47;
          }

          v46 = v57;
          *(v57 + 2) = v44 + 1;
          v42(&v46[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44], v55, v28);
          goto LABEL_5;
        }
      }

      outlined destroy of MediaUserStateCenter?(v65, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
LABEL_5:
      v27 += 104;
      if (!--v26)
      {
        return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

uint64_t ProfileSliceResolvingDataProvider.deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return v0;
}

uint64_t ProfileSliceResolvingDataProvider.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance ProfileSliceResolvingDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 208))();
  *a1 = result;
  return result;
}

uint64_t specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of MediaUserStateCenter?(a1, v8, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for ProfileSliceResolvingDataProvider();
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v8, v5 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  v6 = *(v5 + 64);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v5);
}

void *partial apply for closure #1 in ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[2] = *(v1 + 24);
  v4 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = v4;
  result = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #1 in ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:), v6, v3);
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 208);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t outlined init with take of PommesCandidateId?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v2, v26);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = specialized static VocabularyResult.makeResults(from:userId:)(isUniquelyReferenced_nonNull_bridgeObject);

      v7 = v6 >> 62;
      if (v6 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v9)
        {
LABEL_21:
          __CocoaSet.count.getter();
          goto LABEL_22;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_44;
          }

          v33 = v3;
          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_46;
            }

            lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [VocabularyResult] and conformance [A], &_sSay21SiriInformationSearch16VocabularyResultCGMd, &_sSay21SiriInformationSearch16VocabularyResultCGMR);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch16VocabularyResultCGMd, &_sSay21SiriInformationSearch16VocabularyResultCGMR);
              v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v6);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for VocabularyResult();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v8 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_27;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_54;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = v1;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v3, v28);
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v3 >= *(v31 + 16))
        {
          goto LABEL_49;
        }

        v5 = *(v30 + 8 * v3);

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v27 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = __CocoaSet.count.getter();
          isUniquelyReferenced_nonNull_bridgeObject = v27;
          goto LABEL_3;
        }
      }

      v7 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter();

      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v2;
      }

      v2 = v8 >> 62;
      if (v8 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        v25 = __CocoaSet.count.getter();
        v12 = v25 + v9;
        if (__OFADD__(v25, v9))
        {
LABEL_45:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_45;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_24;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v10)
        {
LABEL_24:
          __CocoaSet.count.getter();
          goto LABEL_25;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v34 = v9;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          if (v34 > 0)
          {
            goto LABEL_50;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      if (((v16 >> 1) - v15) < v34)
      {
        goto LABEL_51;
      }

      v18 = v13 + 8 * v15 + 32;
      if (v2)
      {
        if (v17 < 1)
        {
          goto LABEL_53;
        }

        lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A], &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMd, &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMR);
        for (i = 0; i != v17; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMd, &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMR);
          v20 = specialized protocol witness for Collection.subscript.read in conformance [A](v33, i, v8);
          v22 = *v21;

          (v20)(v33, 0);
          *(v18 + 8 * i) = v22;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGMd, &_s12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGMR);
        swift_arrayInitWithCopy();
      }

      v1 = v29;
      if (v34 >= 1)
      {
        v23 = *(v13 + 16);
        v6 = __OFADD__(v23, v34);
        v24 = v23 + v34;
        if (v6)
        {
          goto LABEL_52;
        }

        *(v13 + 16) = v24;
      }

LABEL_6:
      v2 = MEMORY[0x277D84F90];
      if (v3 == v1)
      {
        return v4;
      }
    }
  }

  return v2;
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_55;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v36 = isUniquelyReferenced_nonNull_bridgeObject;
    v39 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v42 = *MEMORY[0x277CD44A0];
    v3 = MEMORY[0x277D84F90];
    v38 = v1;
    while (1)
    {
      if (v41)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v2, v36);
      }

      else
      {
        if (v2 >= *(v40 + 16))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v39 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = specialized NSDictionary.arrayValue<A>(for:)();

      if (v7)
      {
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.pommes);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v44[0] = v12;
          *v11 = 136315138;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v3;
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v44);

          *(v11 + 4) = v16;
          v3 = v15;
          _os_log_impl(&dword_2232BB000, v9, v10, "PegasusProxy#equivalentAppInfo unable find concepts from key:%s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x223DE0F80](v12, -1, -1);
          MEMORY[0x223DE0F80](v11, -1, -1);
        }

        v7 = MEMORY[0x277D84F90];
      }

      v17 = v7 >> 62;
      if (v7 >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v20 = isUniquelyReferenced_nonNull_bridgeObject + v18;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v18))
        {
          goto LABEL_50;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = isUniquelyReferenced_nonNull_bridgeObject + v18;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v18))
        {
          goto LABEL_50;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v19)
        {
          goto LABEL_28;
        }

        v21 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v19)
        {
LABEL_28:
          __CocoaSet.count.getter();
          goto LABEL_29;
        }

        v21 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = *(v21 + 16);
LABEL_29:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v21 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_30:
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v17)
      {
        v26 = v21;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v21 = v26;
        v25 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_34:
          if (((v24 >> 1) - v23) < v18)
          {
            goto LABEL_52;
          }

          v43 = v3;
          v45 = v2;
          v27 = v21 + 8 * v23 + 32;
          v37 = v21;
          if (v17)
          {
            if (v25 < 1)
            {
              goto LABEL_54;
            }

            lazy protocol witness table accessor for type [NSDictionary] and conformance [A]();
            for (i = 0; i != v25; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
              v29 = specialized protocol witness for Collection.subscript.read in conformance [A](v44, i, v7);
              v31 = *v30;
              (v29)(v44, 0);
              *(v27 + 8 * i) = v31;
            }
          }

          else
          {
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
            swift_arrayInitWithCopy();
          }

          v3 = v43;
          v4 = v38;
          v2 = v45;
          if (v18 >= 1)
          {
            v32 = *(v37 + 16);
            v6 = __OFADD__(v32, v18);
            v33 = v32 + v18;
            if (v6)
            {
              goto LABEL_53;
            }

            *(v37 + 16) = v33;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_34;
        }
      }

      v4 = v38;
      if (v18 > 0)
      {
        goto LABEL_51;
      }

LABEL_5:
      if (v2 == v4)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v34 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v34;
  }

  return MEMORY[0x277D84F90];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v4 = &_sSaySo8INPersonCGMd;
    v31 = v1;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v2, v30);
      }

      else
      {
        if (v2 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject siriMatches];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for INPerson();
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v5 = v8;
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_24;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = v3;
          goto LABEL_26;
        }
      }

      else
      {
        if (v12)
        {
LABEL_24:
          __CocoaSet.count.getter();
          goto LABEL_25;
        }

        v14 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v38 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_30:
          if (((v17 >> 1) - v16) < v11)
          {
            goto LABEL_47;
          }

          v36 = v2;
          v20 = v14 + 8 * v16 + 32;
          v32 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_49;
            }

            lazy protocol witness table accessor for type [INPerson] and conformance [A]();
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSaySo8INPersonCGMR);
              v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v37, i, v9);
              v24 = v4;
              v25 = *v23;
              (v22)(v37, 0);
              *(v20 + 8 * i) = v25;
              v4 = v24;
            }
          }

          else
          {
            type metadata accessor for INPerson();
            swift_arrayInitWithCopy();
          }

          v2 = v36;
          v1 = v31;
          v3 = v38;
          if (v11 >= 1)
          {
            v26 = *(v32 + 16);
            v6 = __OFADD__(v26, v11);
            v27 = v26 + v11;
            if (v6)
            {
              goto LABEL_48;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_30;
        }
      }

      v3 = v38;
      if (v11 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}

id SEMSpanMatcher.search(_:)(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = [v1 matchSpans:a1 error:v10];
  v3 = v10[0];
  if (v2)
  {
    v4 = v2;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SEMSpanMatchResult, 0x277D55D30);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v3;

    v3 = specialized Sequence.flatMap<A>(_:)(v5);
  }

  else
  {
    v7 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

id protocol witness for static SpanMatcher.indexMatcher() in conformance SEMSpanMatcher@<X0>(void *a1@<X8>)
{
  result = [swift_getObjCClassFromMetadata() indexMatcher];
  *a1 = result;
  return result;
}

void @nonobjc SEMSpanMatcher.indexLocale()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v1 = [v0 indexLocale_];
  v2 = v7[0];
  if (v1)
  {
    v3 = v1;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v2;
  }

  else
  {
    v5 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
}

void @nonobjc SEMSpanMatcher.indexLocale(userId:)(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x223DDF550]();
  }

  else
  {
    v3 = 0;
  }

  v9[0] = 0;
  v4 = [v2 indexLocaleWithUserId:v3 error:v9];

  v5 = v9[0];
  if (v4)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t VocabularySearchClient.__allocating_init(spanMatcher:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized VocabularySearchClient.init(spanMatcher:)(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t VocabularySearchClient.init(spanMatcher:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized VocabularySearchClient.init(spanMatcher:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void closure #1 in VocabularySearchClient.search(_:itemTypes:fieldTypes:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v117 = a6;
  v125[1] = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for Locale();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[8];
  v116 = a5;
  if (v18)
  {
    v115 = a1;
LABEL_3:
    v19 = v18;
    v20 = MEMORY[0x223DDF550](a2, a3);
    v113 = v19;
    v114 = [v19 queryFromText_];

    v21 = MEMORY[0x277D84F90];
    v125[0] = MEMORY[0x277D84F90];
    if (a4)
    {
      v123[0] = MEMORY[0x277D84F90];
      v22 = *(a4 + 16);
      if (v22)
      {
        v23 = (a4 + 32);
        do
        {
          v26 = *v23++;
          v27 = objc_allocWithZone(MEMORY[0x277D55D20]);
          v122[0] = 0;
          if ([v27 initWithItemType:v26 error:v122])
          {
            MEMORY[0x223DDF820](v122[0]);
            if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v28 = *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v21 = v123[0];
          }

          else
          {
            v24 = v122[0];
            v25 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v7 = 0;
          }

          --v22;
        }

        while (v22);
      }

      if (v21 >> 62)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        v110 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        v21 = v110;
        a5 = v116;
      }

      else
      {
        v29 = v21 & 0xFFFFFFFFFFFFFF8;

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        v30 = swift_dynamicCastMetatype();
        a5 = v116;
        if (v30 || (v93 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
        {
LABEL_14:
        }

        else
        {
          v94 = (v29 + 32);
          while (1)
          {
            v95 = *v94;
            v118 = &unk_2836AE538;
            v119 = &unk_2836B3FF8;
            if (!swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            ++v94;
            if (!--v93)
            {
              goto LABEL_14;
            }
          }

          v21 = v29 | 1;
        }
      }

      specialized Array.append<A>(contentsOf:)(v21);
      v21 = MEMORY[0x277D84F90];
    }

    if (a5)
    {
      v123[0] = v21;
      v31 = *(a5 + 16);
      if (v31)
      {
        v32 = (a5 + 32);
        do
        {
          v35 = *v32++;
          v36 = objc_allocWithZone(MEMORY[0x277D55D18]);
          v122[0] = 0;
          if ([v36 initWithFieldType:v35 error:v122])
          {
            MEMORY[0x223DDF820](v122[0]);
            if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v37 = *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v21 = v123[0];
          }

          else
          {
            v33 = v122[0];
            v34 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v7 = 0;
          }

          --v31;
        }

        while (v31);
      }

      if (v21 >> 62)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        v111 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        v21 = v111;
        a5 = v116;
      }

      else
      {
        v38 = v21 & 0xFFFFFFFFFFFFFF8;

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        v39 = swift_dynamicCastMetatype();
        a5 = v116;
        if (v39 || (v96 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
        {
LABEL_27:
        }

        else
        {
          v97 = (v38 + 32);
          while (1)
          {
            v98 = *v97;
            v120 = &unk_2836AE538;
            v121 = &unk_2836B3FF8;
            if (!swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            ++v97;
            if (!--v96)
            {
              goto LABEL_27;
            }
          }

          v21 = v38 | 1;
        }
      }

      specialized Array.append<A>(contentsOf:)(v21);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = __swift_project_value_buffer(v40, static Logger.pommes);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v112[0] = swift_slowAlloc();
      v123[0] = v112[0];
      *v44 = 136315650;
      swift_beginAccess();
      v112[1] = v41;
      v45 = a5;
      v46 = v125[0];

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
      v48 = MEMORY[0x223DDF850](v46, v47);
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v123);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      v52 = MEMORY[0x277D84F90];
      if (a4)
      {
        v53 = a4;
      }

      else
      {
        v53 = MEMORY[0x277D84F90];
      }

      v54 = MEMORY[0x223DDF850](v53, MEMORY[0x277D84C58]);
      v56 = v55;

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v123);

      *(v44 + 14) = v57;
      *(v44 + 22) = 2080;
      if (v45)
      {
        v58 = v45;
      }

      else
      {
        v58 = v52;
      }

      v59 = MEMORY[0x223DDF850](v58, MEMORY[0x277D84C58]);
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v123);

      *(v44 + 24) = v62;
      _os_log_impl(&dword_2232BB000, v42, v43, "VocabularySearchClient filters : %s itemTypes : %s fieldTypes : %s", v44, 0x20u);
      v63 = v112[0];
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v63, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);
    }

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v65 = v114;
    [v114 setEntityFilters_];

    v66 = v115[6];
    v67 = v115[7];
    __swift_project_boxed_opaque_existential_1(v115 + 3, v66);
    v68 = (*(v67 + 16))(v65, v66, v67);
    if (!v7)
    {
      v82 = v68;
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v124 = v86;
        *v85 = 136315138;
        v87 = type metadata accessor for VocabularyResult();

        v89 = MEMORY[0x223DDF850](v88, v87);
        v91 = v90;

        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v124);

        *(v85 + 4) = v92;
        _os_log_impl(&dword_2232BB000, v83, v84, "VocabularySearchClient results : %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x223DE0F80](v86, -1, -1);
        MEMORY[0x223DE0F80](v85, -1, -1);
      }

      else
      {
      }

LABEL_63:
      v103 = v117;
      goto LABEL_64;
    }

    v69 = v7;
LABEL_42:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.pommes);
    v73 = v69;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v124 = v69;
      v125[0] = v77;
      *v76 = 136315138;
      v78 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v79 = String.init<A>(describing:)();
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v125);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_2232BB000, v74, v75, "VocabularySearchClient search failed : %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x223DE0F80](v77, -1, -1);
      MEMORY[0x223DE0F80](v76, -1, -1);
    }

    else
    {
    }

    v82 = 0;
    goto LABEL_63;
  }

  v70 = a1[6];
  v71 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v70);
  (*(v71 + 24))(v70, v71);
  v69 = v6;
  if (v6)
  {
    goto LABEL_42;
  }

  v115 = a1;
  v99 = objc_allocWithZone(MEMORY[0x277D55D40]);
  v100 = @nonobjc SEMTokenizer.init(tokenizerLocale:)(v17);
  v7 = 0;
  v101 = v115;
  v102 = v115[8];
  v115[8] = v100;

  v18 = v101[8];
  if (v18)
  {
    a5 = v116;
    goto LABEL_3;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v105 = type metadata accessor for Logger();
  __swift_project_value_buffer(v105, static Logger.pommes);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.error.getter();
  v108 = os_log_type_enabled(v106, v107);
  v103 = v117;
  if (v108)
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_2232BB000, v106, v107, "VocabularySearchClient : Failed to initialize the tokenizer", v109, 2u);
    MEMORY[0x223DE0F80](v109, -1, -1);
  }

  v82 = 0;
LABEL_64:
  *v103 = v82;
  v104 = *MEMORY[0x277D85DE8];
}