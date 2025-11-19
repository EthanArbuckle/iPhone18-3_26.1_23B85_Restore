uint64_t getEnumTagSinglePayload for PropertyListFactory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PropertyListFactory(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t Apple_Workout_Core_MirroredHostStartSource.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostStartSource.rawValue.getter()
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

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_MirroredHostStartSource@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_MirroredHostStartSource()
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_MirroredHostStartSource@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_MirroredHostStartSource(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostStartSource(uint64_t a1, uint64_t a2)
{
  started = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource();

  return MEMORY[0x28217E238](a1, a2, started);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_MirroredHostStartSource(uint64_t *a1, uint64_t *a2)
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

uint64_t Apple_Workout_Core_MirroredHostProtocolVersion.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostProtocolVersion.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_MirroredHostProtocolVersion@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_MirroredHostProtocolVersion()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_MirroredHostProtocolVersion@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_MirroredHostProtocolVersion(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostProtocolVersion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_MirroredHostProtocolVersion(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

unint64_t Apple_Workout_Core_MirroredBlobContentType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredBlobContentType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_MirroredHostCommand.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result != 100)
  {
    v2 = result;
  }

  if (result < 2)
  {
    v2 = result;
  }

  *a2 = v2;
  v3 = result < 2 || result == 100;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostCommand.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_20B4316A0[result];
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostCommand(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MirroredHostStartSource()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredClientCommand(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MirroredHostStartSource()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v6 + 24) = v8;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v9;
      v13 = *(v9 + 8);
      goto LABEL_12;
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  v12 = 0;
  v13 = 1;
LABEL_12:
  *v6 = v12;
  *(v6 + 8) = v13;
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.modify;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v14 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v11 = a1 + *(started + 28);
  UnknownStorage.init()();
  v12 = *(started + 32);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v3 = a1 + *(started + 28);
  UnknownStorage.init()();
  v4 = *(started + 32);
  v5 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v11 = *(*(started - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(started - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    v16 = v13 + *(started + 28);
    UnknownStorage.init()();
    v17 = *(started + 32);
    v18 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v9, v13, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.modify;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest : Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0) + 20);
  return UnknownStorage.init()();
}

uint64_t outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostMachTimestampRequest.modify;
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  *a1 = 0;
  a1[1] = 0;
  v11 = a1 + *(v10 + 24);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart : Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  *a2 = 0;
  a2[1] = 0;
  v11 = a2 + *(v10 + 24);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = 0;
    v12[1] = 0;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostCountdownStart.modify;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostAlertStackRequest.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostAlertStackRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = 0;
    v13[5] = 0xE000000000000000;
    v13[6] = MEMORY[0x277D84F90];
    v16 = v13 + *(v10 + 32);
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostAlertStackRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v9, v13, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostAlertStackRequest.modify;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v10 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate : Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v10 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

uint64_t key path setter for Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration : Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, &v15 - v11, a6);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v12, a2, a6);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.setter(uint64_t a1, uint64_t (*a2)(void))
{
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v2, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v2, a2);
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v3 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

void (*Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_15:
    UnknownStorage.init()();
    v15 = *(v9 + 20);
    v16 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
    (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
    return Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  return Apple_Workout_Core_MirroredHostMessage.mirroredHostSummaryUpdate.modify;
}

void Apple_Workout_Core_MirroredHostMessage.mirroredHostStartConfiguration.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[3], v9, a3);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v12, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v10, a5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(**a1, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v10, &v20 - v14, a1, a2);
  v16 = a3(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    result = _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, a1, a2);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v18 = *v15;
      v19 = v15[8];
      goto LABEL_6;
    }

    result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v15, a4);
  }

  v18 = 0;
  v19 = 1;
LABEL_6:
  *a5 = v18;
  *(a5 + 8) = v19;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand : Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v20 - v14, a2, a3);
  v16 = a4(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    result = _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v15, a2, a3);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v18 = *v15;
      v19 = v15[8];
      goto LABEL_6;
    }

    result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v15, a5);
  }

  v18 = 0;
  v19 = 1;
LABEL_6:
  *a6 = v18;
  *(a6 + 8) = v19;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand : Apple_Workout_Core_MirroredHostMessage(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, a5, a6);
  *a2 = v9;
  *(a2 + 8) = v10;
  v11 = a7(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, 0, 1, v11);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.setter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v4, a2, a3);
  *v4 = v6;
  *(v4 + 8) = v7;
  v8 = a4(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(*(v8 - 8) + 56);

  return v9(v4, 0, 1, v8);
}

void (*Apple_Workout_Core_MirroredClientMessage.mirroredClientCommand.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v6 + 24) = v8;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v9;
      v13 = *(v9 + 8);
      goto LABEL_12;
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  v12 = 0;
  v13 = 1;
LABEL_12:
  *v6 = v12;
  *(v6 + 8) = v13;
  return Apple_Workout_Core_MirroredClientMessage.mirroredClientCommand.modify;
}

void Apple_Workout_Core_MirroredHostMessage.mirroredHostCommand.modify(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v10 = *(*a1 + 8);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, a3, a4);
  *v8 = v9;
  *(v8 + 8) = v10;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 56))(v8, 0, 1, v5);
  free(v7);

  free(v4);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  *a1 = 0;
  a1[1] = 0;
  v11 = a1 + *(v10 + 24);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse : Apple_Workout_Core_MirroredClientMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  *a2 = 0;
  a2[1] = 0;
  v11 = a2 + *(v10 + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse : Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.setter(uint64_t a1)
{
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  v3 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t Apple_Workout_Core_MirroredHostCountdownStart.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + *(v3 + 24);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = 0;
    v12[1] = 0;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  return Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.modify;
}

void Apple_Workout_Core_MirroredClientMessage.mirroredClientMachTimestampResponse.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[3], v5, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v5, v8, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v6, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(**a1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, v8, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart : Apple_Workout_Core_MirroredClientMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart : Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.setter(uint64_t a1)
{
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  v3 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t Apple_Workout_Core_MirroredHostMachTimestampRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  return Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.modify;
}

void Apple_Workout_Core_MirroredClientMessage.mirroredClientPrecisionStart.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[3], v5, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v5, v8, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v6, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(**a1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, v8, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0) + 28);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse : Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.setter(uint64_t a1)
{
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  v3 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t Apple_Workout_Core_MirroredClientAlertStackResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0) + 28);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 20) = 0;
    v15 = v12 + *(v9 + 28);
    UnknownStorage.init()();
    return Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  return Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.modify;
}

void Apple_Workout_Core_MirroredClientMessage.mirroredClientAlertStackResponse.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[3], v5, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v5, v8, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v6, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(**a1, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, v8, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static Apple_Workout_Core_MirroredHostCountdownStart.== infix(_:_:)(double *a1, double *a2, uint64_t (*a3)(void))
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static Apple_Workout_Core_MirroredHostMachTimestampRequest.== infix(_:_:)(double *a1, double *a2, uint64_t (*a3)(void, double))
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3(0, *a1) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_MirroredHostMessage.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_MirroredClientMachTimestampResponse.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_MirroredClientMachTimestampResponse.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void Apple_Workout_Core_MirroredBlob.contentType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_MirroredBlob.contentType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredBlob.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t Apple_Workout_Core_MirroredBlob.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredBlob.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_20B42FB30;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_MirroredBlob(0) + 24);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1 + *(started + 32), v6, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, a1, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_20B42FB30;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob : Apple_Workout_Core_MirroredHostStartConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1 + *(started + 32), v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_20B42FB30;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob : Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v9 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2 + v9, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1 + v3, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = xmmword_20B42FB30;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v14, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  return Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.modify;
}

BOOL Apple_Workout_Core_MirroredHostStartConfiguration.hasWorkoutConfigurationBlob.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v0 + *(started + 32), v4, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v4, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_MirroredHostStartConfiguration.clearWorkoutConfigurationBlob()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v0 + v1, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Apple_Workout_Core_MirroredHostStartConfiguration.protocolVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.protocolVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.alertTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.alertTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.alertMessage.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.alertMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.continueOptionTitles.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1 + *(v7 + 20), v6, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v6, a1, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_20B42FB30;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob : Apple_Workout_Core_MirroredHostSummaryUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1 + *(v8 + 20), v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_20B42FB30;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob : Apple_Workout_Core_MirroredHostSummaryUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v9 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2 + v9, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v1 + v3, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = xmmword_20B42FB30;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v14, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  return Apple_Workout_Core_MirroredHostSummaryUpdate.hkWorkoutBlob.modify;
}

void Apple_Workout_Core_MirroredHostStartConfiguration.workoutConfigurationBlob.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_MirroredHostSummaryUpdate.hasHkWorkoutBlob.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v0 + *(v5 + 20), v4, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v4, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_MirroredHostSummaryUpdate.clearHkWorkoutBlob()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v0 + v1, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          closure #4 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 5:
          closure #5 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 6:
          closure #6 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          closure #1 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(a1, v5);
          break;
        case 2:
          closure #2 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 3:
          closure #3 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 256;
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand();
  result = dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (!v2 && (v16 & 0x100) == 0)
  {
    v17 = 0;
    v14 = v15;
    HIDWORD(v13) = v16;
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a2, v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    if (v11 != 1)
    {
      v12 = v17;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v12)
      {
        return result;
      }

      v17 = 0;
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    *a2 = v14;
    *(a2 + 8) = BYTE4(v13) & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v6 = *(started - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](started);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = started;
  v30 = started;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v14, v22, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v22, v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, v36, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v36, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMd, &_s11WorkoutCore06Apple_a1_B31_MirroredHostStartConfigurationVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v42, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v14, v22, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v22, v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, v36, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v36, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredHostMachTimestampRequestVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v42, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #4 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v14, v22, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v22, v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, v36, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v36, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMd, &_s11WorkoutCore06Apple_a1_B27_MirroredHostCountdownStartVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v42, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #5 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v14, v22, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v22, v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, v36, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v36, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore06Apple_a1_B30_MirroredHostAlertStackRequestVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v42, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #6 in Apple_Workout_Core_MirroredHostMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v14, v22, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v22, v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, v36, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v36, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B26_MirroredHostSummaryUpdateVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v42, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v3, &v16 - v10, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        closure #4 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 4)
      {
        closure #5 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #6 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

LABEL_14:
      result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v11, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      if (v4)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        closure #2 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #3 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      goto LABEL_14;
    }

    result = closure #1 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(v3);
    if (v4)
    {
      return result;
    }
  }

LABEL_15:
  v15 = v3 + *(type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v9 - v4, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v5, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = v5[8];
    v9 = *v5;
    v10 = v7;
    lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v10 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #5 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #6 in Apple_Workout_Core_MirroredHostMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostMessage;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredHostMessage(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostMessage()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        closure #3 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        closure #4 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      closure #1 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(a1, v5);
    }

    else if (result == 3)
    {
      closure #2 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 256;
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand();
  result = dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (!v2 && (v16 & 0x100) == 0)
  {
    v17 = 0;
    v14 = v15;
    HIDWORD(v13) = v16;
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a2, v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    if (v11 != 1)
    {
      v12 = v17;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v12)
      {
        return result;
      }

      v17 = 0;
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(a2, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    *a2 = v14;
    *(a2 + 8) = BYTE4(v13) & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v14, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v14, v22, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v22, v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, v36, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v36, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMd, &_s11WorkoutCore06Apple_a1_B36_MirroredClientMachTimestampResponseVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v42, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v14, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v14, v22, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v22, v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, v36, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v36, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMd, &_s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v42, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #4 in Apple_Workout_Core_MirroredClientMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v14, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v14, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v14, v22, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v22, v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
      v35 = v44;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v20, v44, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, v36, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v36, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v36, v43, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v28, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMd, &_s11WorkoutCore06Apple_a1_B33_MirroredClientAlertStackResponseVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v42, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v40, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v3, &v16 - v10, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        closure #3 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #4 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        result = closure #1 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(v3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      closure #2 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v11, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  v15 = v3 + *(type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v9 - v4, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v5, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = v5[8];
    v9 = *v5;
    v10 = v7;
    lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_MirroredClientMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  }

  result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredClientMessage;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMessage and conformance Apple_Workout_Core_MirroredClientMessage, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredClientMessage(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMessage and conformance Apple_Workout_Core_MirroredClientMessage, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredClientMessage()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMessage and conformance Apple_Workout_Core_MirroredClientMessage, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);

  return Message.hash(into:)();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostMachTimestampRequest(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostMachTimestampRequest;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredHostMachTimestampRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredHostMachTimestampRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostMachTimestampRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);

  return Message.hash(into:)();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredClientMachTimestampResponse(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredClientMachTimestampResponse;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredClientMachTimestampResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredClientMachTimestampResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredClientMachTimestampResponse()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_MirroredHostMachTimestampRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

{
  return Apple_Workout_Core_MirroredClientPrecisionStart.decodeMessage<A>(decoder:)();
}

uint64_t Apple_Workout_Core_MirroredHostMachTimestampRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*v4)
  {
    v6 = a4;
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    a4 = v6;
  }

  v8 = v4 + *(a4(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MirroredHostMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredClientPrecisionStart(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredClientPrecisionStart;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredClientPrecisionStart(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredClientPrecisionStart(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredClientPrecisionStart()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_MirroredHostMachTimestampRequest(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_MirroredClientMachTimestampResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

{
  return Apple_Workout_Core_MirroredHostCountdownStart.decodeMessage<A>(decoder:)();
}

uint64_t Apple_Workout_Core_MirroredClientMachTimestampResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*v4 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v5))
  {
    if (!v4[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v5))
    {
      v8 = v4 + *(a4(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostCountdownStart(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostCountdownStart;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredHostCountdownStart(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredHostCountdownStart(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostCountdownStart()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_MirroredClientMachTimestampResponse(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_MirroredBlob.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_MirroredBlob.traverse<A>(visitor:)()
{
  if (!*v0 || (v9 = *v0, v10 = *(v0 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[2];
    v4 = v0[3];
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        goto LABEL_12;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 != v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    v8 = v0 + *(type metadata accessor for Apple_Workout_Core_MirroredBlob(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MirroredBlob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_20B42FB30;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MirroredClientMachTimestampResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MirroredClientMachTimestampResponse(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredBlob(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredBlob;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredBlob(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredBlob(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredBlob()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          closure #3 in Apple_Workout_Core_MirroredHostStartConfiguration.decodeMessage<A>(decoder:)();
          goto LABEL_5;
        }

        if (result == 5)
        {
          v3 = v0;
          lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion();
LABEL_15:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource();
          goto LABEL_15;
        }

        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_MirroredHostStartConfiguration.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 32);
  type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_MirroredHostStartConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v12 = *(v3 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      result = closure #1 in Apple_Workout_Core_MirroredHostStartConfiguration.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        if ((*(v3 + 24) & 1) == 0)
        {
          if (*(v3 + 16))
          {
            v11 = *(v3 + 16);
            lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion();
            dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          }
        }

        v9 = v3 + *(type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MirroredHostStartConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1 + *(started + 32), v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v13, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v13, type metadata accessor for Apple_Workout_Core_MirroredBlob);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MirroredHostStartConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostStartConfiguration;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostStartConfiguration()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t Apple_Workout_Core_MirroredHostAlertStackRequest.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        if (!*(v0[6] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v1))
        {
          v10 = v0 + *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MirroredHostAlertStackRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MirroredHostAlertStackRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MirroredHostAlertStackRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostAlertStackRequest(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredHostAlertStackRequest;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredHostAlertStackRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredHostAlertStackRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostAlertStackRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_MirroredClientAlertStackResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_MirroredClientAlertStackResponse.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 5) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
      {
        v6 = v0 + *(type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MirroredClientAlertStackResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MirroredHostStartConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MirroredHostStartConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredClientAlertStackResponse(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_MirroredClientAlertStackResponse;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredClientAlertStackResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredClientAlertStackResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredClientAlertStackResponse()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20B423A90;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t static Apple_Workout_Core_MirroredHostStartSource._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_Core_MirroredHostSummaryUpdate.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MirroredHostSummaryUpdate.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_MirroredHostSummaryUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_MirroredHostSummaryUpdate.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MirroredHostSummaryUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1 + *(v14 + 20), v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v8, v13, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v13, type metadata accessor for Apple_Workout_Core_MirroredBlob);
}

Swift::Int Apple_Workout_Core_MirroredHostMessage.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MirroredHostSummaryUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MirroredHostSummaryUpdate@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MirroredHostSummaryUpdate(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MirroredHostSummaryUpdate(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_MirroredHostStartSource@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MirroredHostSummaryUpdate(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MirroredHostMessage()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MirroredHostSummaryUpdate()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MirroredHostMessage()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_MirroredClientAlertStackResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0) + 28);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_MirroredHostAlertStackRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_MirroredHostSummaryUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v24 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1 + v17, v16, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a2 + v17, &v16[v18], &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v16, v11, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v11, type metadata accessor for Apple_Workout_Core_MirroredBlob);
LABEL_6:
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v24[0];
  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(&v16[v18], v24[0], type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v22 = specialized static Apple_Workout_Core_MirroredBlob.== infix(_:_:)(v11, v21);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v11, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_MirroredClientMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v24 - v16, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v17, v12, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
LABEL_6:
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  v21 = specialized static Apple_Workout_Core_MirroredClientMessage.OneOf_Message.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_MirroredClientMessage.OneOf_Message.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v49 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v48 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v45 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v45 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0O_AEtMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0O_AEtMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v45 - v26;
  v28 = &v45 + *(v25 + 56) - v26;
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a1, &v45 - v26, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(a2, v28, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v27, v17, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = v49;
        outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v28, v49, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
        if (*v17 == *v32)
        {
          v33 = *(v47 + 20);
          type metadata accessor for UnknownStorage();
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v32, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
          if (v34)
          {
            outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v17, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
            goto LABEL_47;
          }
        }

        else
        {
          outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v32, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
        }

        v43 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart;
        v42 = v17;
        goto LABEL_41;
      }

      v40 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart;
      v41 = v17;
    }

    else
    {
      outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v27, v14, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v38 = v50;
        outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v28, v50, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
        if (*v14 == *v38 && *(v14 + 1) == *(v38 + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14[16] == *(v38 + 16) && *(v14 + 5) == *(v38 + 20))
        {
          v39 = *(v45 + 28);
          type metadata accessor for UnknownStorage();
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v38, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
            outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v14, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
            goto LABEL_47;
          }
        }

        outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v38, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
        v42 = v14;
        v43 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse;
LABEL_41:
        outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v42, v43);
        goto LABEL_42;
      }

      v40 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse;
      v41 = v14;
    }

LABEL_32:
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v41, v40);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v27, v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v48;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v28, v48, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
      if (*v20 == *v35 && v20[1] == v35[1])
      {
        v36 = *(v46 + 24);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v35, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
        if (v37)
        {
          outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v20, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
          goto LABEL_47;
        }
      }

      else
      {
        outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v35, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
      }

      v43 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse;
      v42 = v20;
      goto LABEL_41;
    }

    v40 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse;
    v41 = v20;
    goto LABEL_32;
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v27, v22, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  v30 = *v22;
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_33:
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v27, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0O_AEtMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0O_AEtMR);
    return 0;
  }

  if (v22[8] == 1)
  {
    v30 = qword_20B4316A0[v30];
  }

  v31 = *v28;
  if (!v28[8])
  {
    if (v30 == v31)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (!v31)
  {
    if (!v30)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v31 == 1)
  {
    if (v30 == 1)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v30 != 100)
  {
LABEL_42:
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v27, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    return 0;
  }

LABEL_47:
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v27, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  return 1;
}

uint64_t specialized static Apple_Workout_Core_MirroredHostMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1, &v24 - v16, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v17, v12, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
LABEL_6:
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  v21 = specialized static Apple_Workout_Core_MirroredHostMessage.OneOf_Message.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_MirroredHostStartConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &started - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&started - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &started - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a1 + 8))
  {
    v18 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v19)
    {
      if (v18 != 1)
      {
        goto LABEL_17;
      }
    }

    else if (v18)
    {
      goto LABEL_17;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_17;
  }

  if (*(a1 + 9) != *(a2 + 9))
  {
    goto LABEL_17;
  }

  v20 = v15;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v21 = *(started + 32);
  v22 = *(v20 + 48);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a1 + v21, v17, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v32 = v22;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(a2 + v21, &v17[v22], &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v32], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      goto LABEL_20;
    }

LABEL_16:
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSg_ADtMR);
    goto LABEL_17;
  }

  outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v17, v12, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v24 = v32;
  if (v23(&v17[v32], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    goto LABEL_16;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(&v17[v24], v8, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v27 = specialized static Apple_Workout_Core_MirroredBlob.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v17, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_20:
  v28 = *(a2 + 24);
  if (a1[3])
  {
    if (a2[3])
    {
LABEL_27:
      v30 = *(started + 28);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    v29 = 0;
  }

  else
  {
    v29 = a1[2];
    if (a2[3])
    {
      if (!v29)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }
  }

  if (v29 == a2[2])
  {
    goto LABEL_27;
  }

LABEL_17:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static Apple_Workout_Core_MirroredHostMessage.OneOf_Message.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v2 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v63 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v13 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v58 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v65 = (&v58 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v58 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v58 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = &v58 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0O_AEtMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0O_AEtMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v58 - v37;
  v39 = &v58 + *(v36 + 56) - v37;
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v66, &v58 - v37, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v67, v39, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  v67 = v38;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v41 = v67;
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v67, v23, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v45 = v62;
          outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v62, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
          v42 = specialized static Apple_Workout_Core_MirroredHostAlertStackRequest.== infix(_:_:)(v23, v45);
          v43 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest;
          outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v45, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
          v44 = v23;
          goto LABEL_29;
        }

        v55 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest;
        v56 = v23;
      }

      else
      {
        outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v67, v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v53 = v64;
          outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v64, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
          v42 = specialized static Apple_Workout_Core_MirroredHostSummaryUpdate.== infix(_:_:)(v20, v53);
          v43 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate;
          outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v53, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
          v44 = v20;
          goto LABEL_29;
        }

        v55 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate;
        v56 = v20;
      }

      goto LABEL_36;
    }

    v41 = v67;
    v31 = v65;
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v67, v65, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v54 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart;
LABEL_32:
      v55 = v54;
      v56 = v31;
LABEL_36:
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v56, v55);
      goto LABEL_37;
    }

    v48 = v63;
    outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v63, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    if (*v31 == *v48 && v31[1] == v48[1])
    {
      v49 = *(v59 + 24);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      LOBYTE(v49) = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v48, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
      if (v49)
      {
        outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v31, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
        goto LABEL_50;
      }
    }

    else
    {
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v48, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v31, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    goto LABEL_42;
  }

  if (!EnumCaseMultiPayload)
  {
    v41 = v67;
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v67, v33, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    v46 = *v33;
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_37;
    }

    if (v33[8] == 1)
    {
      v46 = qword_20B4316A0[v46];
    }

    v47 = *v39;
    if (!v39[8])
    {
      if (v46 == v47)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    if (!v47)
    {
      if (!v46)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    if (v47 == 1)
    {
      if (v46 == 1)
      {
        goto LABEL_50;
      }

LABEL_42:
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v41, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      goto LABEL_38;
    }

    if (v46 != 100)
    {
      goto LABEL_42;
    }

LABEL_50:
    v52 = v41;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v67, v28, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v50 = v61;
      outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v61, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
      if (*v28 == *v50)
      {
        v51 = *(v60 + 20);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v50, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
        if (v51)
        {
          outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v28, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
          v52 = v67;
LABEL_51:
          outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v52, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
          v42 = 1;
          return v42 & 1;
        }
      }

      else
      {
        outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v50, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
      }

      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v28, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v67, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
      goto LABEL_38;
    }

    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v28, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    v41 = v67;
LABEL_37:
    _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(v41, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0O_AEtMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0O_AEtMR);
LABEL_38:
    v42 = 0;
    return v42 & 1;
  }

  v41 = v67;
  outlined init with copy of Apple_Workout_Core_MirroredHostStartConfiguration(v67, v31, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v54 = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration;
    goto LABEL_32;
  }

  outlined init with take of Apple_Workout_Core_MirroredHostStartConfiguration(v39, v15, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  v42 = specialized static Apple_Workout_Core_MirroredHostStartConfiguration.== infix(_:_:)(v31, v15);
  v43 = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration;
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v15, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  v44 = v31;
LABEL_29:
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v44, v43);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message(v41, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
  return v42 & 1;
}

uint64_t outlined assign with take of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static Apple_Workout_Core_MirroredBlob.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (specialized static Data.== infix(_:_:)(a1[2], a1[3], *(a2 + 16), *(a2 + 24)))
  {
    v4 = *(type metadata accessor for Apple_Workout_Core_MirroredBlob(0) + 24);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartSource and conformance Apple_Workout_Core_MirroredHostStartSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostProtocolVersion and conformance Apple_Workout_Core_MirroredHostProtocolVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCommand and conformance Apple_Workout_Core_MirroredHostCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientCommand and conformance Apple_Workout_Core_MirroredClientCommand);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_MirroredHostStartSource] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata completion function for Apple_Workout_Core_MirroredHostMessage.OneOf_Message()
{
  result = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void type metadata completion function for Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(319, a4, a5);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_MirroredClientMessage.OneOf_Message()
{
  result = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_91Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_92Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata completion function for Apple_Workout_Core_MirroredHostMachTimestampRequest()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_100Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata completion function for Apple_Workout_Core_MirroredClientMachTimestampResponse()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_MirroredHostStartConfiguration()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_MirroredBlob?, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_MirroredHostAlertStackRequest()
{
  type metadata accessor for [String]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_MirroredClientAlertStackResponse()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_MirroredHostSummaryUpdate()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_MirroredBlob?, type metadata accessor for Apple_Workout_Core_MirroredBlob);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void InvalidationTimerProtocol.restartInvalidationTimer(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v14 = (*(a4 + 8))(a3, a4);
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_14;
    v15 = _Block_copy(aBlock);
    v16 = objc_opt_self();

    v17 = [v16 timerWithTimeInterval:0 repeats:v15 block:v14];
    _Block_release(v15);

    (*(a4 + 48))(a3, a4);
    v18 = *(a4 + 24);
    v19 = v17;
    v18(v17, a3, a4);
    v20 = [objc_opt_self() mainRunLoop];
    [v20 addTimer:v19 forMode:*MEMORY[0x277CBE640]];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall InvalidationTimerProtocol.stopInvalidationTimer()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 16))();
  [v4 invalidate];

  v5 = *(v2 + 24);

  v5(0, v3, v2);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

double static InvalidationTimerProtocol.staleTimeLimit.getter()
{
  return 15.0;
}

{
  return 15.0;
}

uint64_t HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones.getter()
{
  v1 = [v0 metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v2, 0xD00000000000002CLL, 0x800000020B456CA0);

  return v3;
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000035, 0x800000020B456CD0, a1);
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000035, 0x800000020B456D10, a1);
}

uint64_t HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones.getter()
{
  v1 = [v0 metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v2, 0xD00000000000002FLL, 0x800000020B456D50);

  return v3;
}

void HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v3 = MEMORY[0x20F2E6C00](0xD000000000000030, 0x800000020B459E10);
    v18 = closure #2 in HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter;
    v19 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v17 = &block_descriptor_15;
    v4 = _Block_copy(&aBlock);
    [v1 _removeMetadata_completion_];
    _Block_release(v4);
  }

  else
  {
    v5 = v2 & 1;
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD000000000000030;
    *(inited + 40) = 0x800000020B459E10;
    *(inited + 72) = type metadata accessor for NSNumber();
    *(inited + 48) = v6;
    v3 = v6;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = closure #1 in HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter;
    v19 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v17 = &block_descriptor_3_1;
    v9 = _Block_copy(&aBlock);
    [v1 addMetadata:isa completion:v9];
    _Block_release(v9);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.core);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v5;
      _os_log_impl(&dword_20AEA4000, v11, v12, "[HeartRateZones] Saved in workout metadata heartRateZonesConfigurationType: %ld", v13, 0xCu);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }
  }
}

void HKLiveWorkoutBuilder.heartRateZones.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = type metadata accessor for PropertyListEncoder();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13HeartRateZoneCGMd, &_sSay11WorkoutCore13HeartRateZoneCGMR);
    lazy protocol witness table accessor for type [HeartRateZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [HeartRateZone] and conformance <A> [A], &lazy protocol witness table cache variable for type HeartRateZone and conformance Zone);
    v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD00000000000001FLL;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = 0x800000020B456BF0;
    *(inited + 48) = v9;
    *(inited + 56) = v11;
    outlined copy of Data._Representation(v9, v11);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = closure #1 in HKLiveWorkoutBuilder.heartRateZones.setter;
    v30 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v28 = &block_descriptor_9_0;
    v14 = _Block_copy(&aBlock);
    [v2 addMetadata:isa completion:v14];
    _Block_release(v14);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock = v19;
      *v18 = 136315138;
      v20 = type metadata accessor for HeartRateZone();
      v21 = MEMORY[0x20F2E6F70](a1, v20);
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &aBlock);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_20AEA4000, v16, v17, "[HeartRateZones] Saved in workout metadata heartRateZones: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
      outlined consume of Data._Representation(v9, v11);
    }

    else
    {
      outlined consume of Data._Representation(v9, v11);
    }
  }

  else
  {
    v7 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B456BF0);
    v29 = closure #2 in HKLiveWorkoutBuilder.heartRateZones.setter;
    v30 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v28 = &block_descriptor_6_0;
    v8 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v8);
  }
}

void HKLiveWorkoutBuilder.defaultRestingHeartRate.setter(void *a1)
{
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = a1;
    v5 = [v3 _countPerMinuteUnit];
    [v4 doubleValueForUnit_];
    v7 = v6;

    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD000000000000028;
    *(inited + 40) = 0x800000020B456C30;
    *(inited + 72) = type metadata accessor for NSNumber();
    *(inited + 48) = v8;
    v10 = v8;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v25 = closure #1 in HKLiveWorkoutBuilder.defaultRestingHeartRate.setter;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v24 = &block_descriptor_15;
    v12 = _Block_copy(&aBlock);
    [v1 addMetadata:isa completion:v12];
    _Block_release(v12);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);
    v14 = v4;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = a1;
      v19 = v14;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[HeartRateZones] Saved in workout metadata defaultRestingHeartRate: %@", v17, 0xCu);
      outlined destroy of (String, Any)(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {

      v10 = v14;
    }
  }

  else
  {
    v10 = MEMORY[0x20F2E6C00](0xD000000000000028, 0x800000020B456C30);
    v25 = closure #2 in HKLiveWorkoutBuilder.defaultRestingHeartRate.setter;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v24 = &block_descriptor_12;
    v20 = _Block_copy(&aBlock);
    [v1 _removeMetadata_completion_];
    _Block_release(v20);
  }
}

void HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v188 = a5;
  v189 = a4;
  v195 = a3;
  v9 = type metadata accessor for UUID();
  v191 = *(v9 - 8);
  v192 = v9;
  v10 = *(v191 + 64);
  MEMORY[0x28223BE20](v9);
  v190 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v194 = (&v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = &v178 - v16;
  v18 = type metadata accessor for Date();
  v199 = *(v18 - 8);
  isa = v199[8].isa;
  v20 = MEMORY[0x28223BE20](v18);
  v186 = (&v178 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v20);
  v198 = (&v178 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v178 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v187 = &v178 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v178 - v28;
  v193 = v6;
  v30 = [v6 currentWorkoutActivity];
  if (v30)
  {
    v31 = v30;
    outlined init with copy of Date?(a2, v17);
    v185 = v199[6].isa;
    v32 = (v185)(v17, 1, v18);
    v196 = v31;
    v197 = v18;
    v184 = a1;
    if (v32 == 1)
    {
      outlined destroy of (String, Any)(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static WOLog.core);
      v34 = v31;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = 136315138;
        v39 = [v34 debugDescription];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &aBlock);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_20AEA4000, v35, v36, "[HeartRateZones] No lastProcessedEntryDate to write to activity metadata, current activity: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x20F2E9420](v38, -1, -1);
        MEMORY[0x20F2E9420](v37, -1, -1);
      }

      v44 = v197;
    }

    else
    {
      v49 = v18;
      v182 = v199[4].isa;
      (v182)(v29, v17, v18);
      v183 = v29;
      v50 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v29);
      if (v51 >> 60 == 15)
      {
        v52 = v199;
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static WOLog.core);
        v54 = v29;
        v55 = v29;
        v56 = v18;
        (v52[2].isa)(v25, v55, v18);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          aBlock = v198;
          *v59 = 136315138;
          lazy protocol witness table accessor for type HeartRateZone and conformance Zone(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          v63 = v52[1].isa;
          v63(v25, v56);
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &aBlock);

          *(v59 + 4) = v64;
          _os_log_impl(&dword_20AEA4000, v57, v58, "[HeartRateZones] Failed to serialize for current activity lastProcessedEntryDate: %s", v59, 0xCu);
          v65 = v198;
          __swift_destroy_boxed_opaque_existential_0(v198);
          MEMORY[0x20F2E9420](v65, -1, -1);
          MEMORY[0x20F2E9420](v59, -1, -1);

          v63(v183, v56);
        }

        else
        {

          v176 = v52[1].isa;
          v176(v25, v49);
          v176(v54, v49);
        }

        return;
      }

      v66 = v50;
      v67 = v51;
      v68 = [v31 UUID];
      v69 = v190;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v181 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v191 + 8))(v69, v192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000035;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B456CD0;
      *(inited + 48) = v66;
      *(inited + 56) = v67;
      outlined copy of Data?(v66, v67);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, Any)(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v179 = Dictionary._bridgeToObjectiveC()().super.isa;

      v180 = v66;
      v71 = v199;
      v72 = v187;
      (v199[2].isa)(v187, v183, v197);
      v73 = (LOBYTE(v71[10].isa) + 16) & ~LOBYTE(v71[10].isa);
      v74 = swift_allocObject();
      (v182)(v74 + v73, v72, v197);
      v75 = v196;
      *(v74 + ((isa + v73 + 7) & 0xFFFFFFFFFFFFFFF8)) = v196;
      v204 = partial apply for closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v205 = v74;
      aBlock = MEMORY[0x277D85DD0];
      v201 = 1107296256;
      v202 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v203 = &block_descriptor_36;
      v76 = _Block_copy(&aBlock);
      v77 = v75;

      v78 = v181;
      v79 = v179;
      [v193 updateActivityWithUUID:v181 addMedatata:v179 completion:v76];
      v80 = v76;
      v44 = v197;
      _Block_release(v80);

      outlined consume of Data?(v180, v67);
      (v71[1].isa)(v183, v44);
    }

    v81 = v198;
    v82 = v194;
    outlined init with copy of Date?(v195, v194);
    if ((v185)(v82, 1, v44) == 1)
    {
      outlined destroy of (String, Any)(v82, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v83 = v196;
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, static WOLog.core);
      v85 = v83;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock = v89;
        *v88 = 136315138;
        v90 = [v85 debugDescription];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &aBlock);

        *(v88 + 4) = v94;
        _os_log_impl(&dword_20AEA4000, v86, v87, "[HeartRateZones] No lastProcessedEventDate to write to activity metadata, current activity: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x20F2E9420](v89, -1, -1);
        MEMORY[0x20F2E9420](v88, -1, -1);
      }
    }

    else
    {
      v95 = v199;
      v96 = v199[4].isa;
      (v96)(v81, v82, v44);
      v97 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v81);
      if (v98 >> 60 == 15)
      {
        v99 = v44;
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        __swift_project_value_buffer(v100, static WOLog.core);
        v101 = v186;
        (v95[2].isa)(v186, v81, v44);
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          aBlock = v105;
          *v104 = 136315138;
          lazy protocol witness table accessor for type HeartRateZone and conformance Zone(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v106 = dispatch thunk of CustomStringConvertible.description.getter();
          v108 = v107;
          v109 = v95[1].isa;
          v109(v101, v99);
          v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, &aBlock);

          *(v104 + 4) = v110;
          _os_log_impl(&dword_20AEA4000, v102, v103, "[HeartRateZones] Failed to serialize for current activity lastProcessedEventDate: %s", v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v105);
          MEMORY[0x20F2E9420](v105, -1, -1);
          MEMORY[0x20F2E9420](v104, -1, -1);

          v109(v198, v99);
        }

        else
        {

          v177 = v95[1].isa;
          v177(v101, v44);
          v177(v81, v44);
        }

        return;
      }

      v195 = v97;
      v111 = v98;
      v112 = v81;
      v113 = [v196 UUID];
      v114 = v190;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v194 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v191 + 8))(v114, v192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v115 = swift_initStackObject();
      *(v115 + 16) = xmmword_20B423A90;
      *(v115 + 32) = 0xD000000000000035;
      *(v115 + 72) = MEMORY[0x277CC9318];
      *(v115 + 40) = 0x800000020B456D10;
      v116 = v195;
      *(v115 + 48) = v195;
      *(v115 + 56) = v111;
      v185 = v111;
      outlined copy of Data?(v116, v111);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v115);
      swift_setDeallocating();
      outlined destroy of (String, Any)(v115 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v186 = Dictionary._bridgeToObjectiveC()().super.isa;

      v117 = v187;
      v118 = v112;
      v119 = v197;
      (v95[2].isa)(v187, v118, v197);
      v120 = (LOBYTE(v95[10].isa) + 16) & ~LOBYTE(v95[10].isa);
      v121 = swift_allocObject();
      (v96)(v121 + v120, v117, v119);
      v83 = v196;
      *(v121 + ((isa + v120 + 7) & 0xFFFFFFFFFFFFFFF8)) = v196;
      v204 = partial apply for closure #2 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v205 = v121;
      aBlock = MEMORY[0x277D85DD0];
      v201 = 1107296256;
      v202 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v203 = &block_descriptor_30;
      v122 = _Block_copy(&aBlock);
      v123 = v83;

      v124 = v194;
      v125 = v186;
      [v193 updateActivityWithUUID:v194 addMedatata:v186 completion:v122];
      _Block_release(v122);

      outlined consume of Data?(v195, v185);
      (v95[1].isa)(v198, v119);
    }

    v126 = v189;
    if (v188)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v127 = type metadata accessor for Logger();
      __swift_project_value_buffer(v127, static WOLog.core);
      v128 = v83;
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        aBlock = v132;
        *v131 = 136315138;
        v133 = [v128 debugDescription];
        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v135;

        v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v136, &aBlock);

        *(v131 + 4) = v137;
        _os_log_impl(&dword_20AEA4000, v129, v130, "[HeartRateZones] No currentZoneIndex to write to activity metadata, current activity: %s", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v132);
        MEMORY[0x20F2E9420](v132, -1, -1);
        MEMORY[0x20F2E9420](v131, -1, -1);
      }

      goto LABEL_45;
    }

    v138 = specialized static ZonesMetadata.packedCurrentZoneIndex(_:)(v189);
    if (v139 >> 60 != 15)
    {
      v151 = v138;
      v152 = v139;
      v153 = [v83 UUID];
      v154 = v190;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v155 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v191 + 8))(v154, v192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v156 = swift_initStackObject();
      *(v156 + 16) = xmmword_20B423A90;
      *(v156 + 32) = 0xD00000000000002FLL;
      *(v156 + 72) = MEMORY[0x277CC9318];
      *(v156 + 40) = 0x800000020B456D50;
      *(v156 + 48) = v151;
      *(v156 + 56) = v152;
      outlined copy of Data?(v151, v152);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v156);
      swift_setDeallocating();
      outlined destroy of (String, Any)(v156 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v157 = Dictionary._bridgeToObjectiveC()().super.isa;

      v158 = swift_allocObject();
      *(v158 + 16) = v126;
      *(v158 + 24) = v83;
      v204 = partial apply for closure #3 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v205 = v158;
      aBlock = MEMORY[0x277D85DD0];
      v201 = 1107296256;
      v202 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v203 = &block_descriptor_24_0;
      v159 = _Block_copy(&aBlock);
      v160 = v83;

      [v193 updateActivityWithUUID:v155 addMedatata:v157 completion:v159];
      _Block_release(v159);

      outlined consume of Data?(v151, v152);
LABEL_45:
      v161 = type metadata accessor for PropertyListEncoder();
      v162 = *(v161 + 48);
      v163 = *(v161 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      v164 = v184;
      aBlock = v184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
      lazy protocol witness table accessor for type [Int : Double] and conformance <> [A : B]();
      v165 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v167 = v166;

      v168 = [v83 UUID];
      v169 = v190;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v170 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v191 + 8))(v169, v192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v171 = swift_initStackObject();
      *(v171 + 16) = xmmword_20B423A90;
      *(v171 + 32) = 0xD00000000000002CLL;
      *(v171 + 72) = MEMORY[0x277CC9318];
      *(v171 + 40) = 0x800000020B456CA0;
      *(v171 + 48) = v165;
      *(v171 + 56) = v167;
      outlined copy of Data._Representation(v165, v167);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v171);
      swift_setDeallocating();
      outlined destroy of (String, Any)(v171 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v172 = Dictionary._bridgeToObjectiveC()().super.isa;

      v173 = swift_allocObject();
      *(v173 + 16) = v164;
      *(v173 + 24) = v83;
      v204 = partial apply for closure #4 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v205 = v173;
      aBlock = MEMORY[0x277D85DD0];
      v201 = 1107296256;
      v202 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v203 = &block_descriptor_18;
      v174 = _Block_copy(&aBlock);
      v175 = v83;

      [v193 updateActivityWithUUID:v170 addMedatata:v172 completion:v174];
      _Block_release(v174);

      outlined consume of Data._Representation(v165, v167);
      return;
    }

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    __swift_project_value_buffer(v140, static WOLog.core);
    v141 = v83;
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      aBlock = v145;
      *v144 = 134218242;
      *(v144 + 4) = v126;
      *(v144 + 12) = 2080;
      v146 = [v141 debugDescription];
      v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v148;

      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, &aBlock);

      *(v144 + 14) = v150;
      _os_log_impl(&dword_20AEA4000, v142, v143, "[HeartRateZones] Failed to serialize currentZoneIndex: %ld, current activity: %s", v144, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v145);
      MEMORY[0x20F2E9420](v145, -1, -1);
      MEMORY[0x20F2E9420](v144, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static WOLog.core);
    v199 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v199, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20AEA4000, v199, v46, "Builder failed to provide a workout activity", v47, 2u);
      MEMORY[0x20F2E9420](v47, -1, -1);
    }

    v48 = v199;
  }
}

void HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = type metadata accessor for PropertyListEncoder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    lazy protocol witness table accessor for type [Int : Double] and conformance <> [A : B]();
    v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD00000000000002CLL;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = 0x800000020B456CA0;
    *(inited + 48) = v8;
    *(inited + 56) = v10;
    outlined copy of Data._Representation(v8, v10);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = closure #1 in HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones.setter;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v26 = &block_descriptor_42;
    v13 = _Block_copy(&aBlock);
    [v2 addMetadata:isa completion:v13];
    _Block_release(v13);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136315138;
      v19 = Dictionary.description.getter();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &aBlock);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[HeartRateZones] Saved in workout metadata elapsed time in zones: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
      outlined consume of Data._Representation(v8, v10);
    }

    else
    {
      outlined consume of Data._Representation(v8, v10);
    }
  }

  else
  {
    v6 = MEMORY[0x20F2E6C00](0xD00000000000002CLL, 0x800000020B456CA0);
    v27 = closure #2 in HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones.setter;
    v28 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v26 = &block_descriptor_39;
    v7 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v7);
  }
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  outlined init with copy of Date?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of (String, Any)(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v18 = MEMORY[0x20F2E6C00](0xD000000000000035, 0x800000020B456CD0);
    v66 = closure #2 in HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.setter;
    v67 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v65 = &block_descriptor_45_0;
    v19 = _Block_copy(&aBlock);
    [v1 _removeMetadata_completion_];
    _Block_release(v19);

    return outlined destroy of (String, Any)(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v8 + 32))(v17, v6, v7);
    v21 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v17);
    if (v22 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static WOLog.core);
      (*(v8 + 16))(v12, v17, v7);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v60 = v17;
        v61 = a1;
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        aBlock = v59;
        *v26 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v27 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v29 = [v27 stringFromDate_];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = *(v8 + 8);
        v33(v12, v7);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &aBlock);

        *(v26 + 4) = v34;
        _os_log_impl(&dword_20AEA4000, v24, v25, "[HeartRateZones] Failed to serialize last processed entry date: %s", v26, 0xCu);
        v35 = v59;
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x20F2E9420](v35, -1, -1);
        MEMORY[0x20F2E9420](v26, -1, -1);

        outlined destroy of (String, Any)(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v33)(v60, v7);
      }

      else
      {

        outlined destroy of (String, Any)(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v55 = *(v8 + 8);
        v55(v12, v7);
        return (v55)(v17, v7);
      }
    }

    else
    {
      v36 = v21;
      v37 = v22;
      v61 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000035;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B456CD0;
      *(inited + 48) = v36;
      *(inited + 56) = v37;
      outlined copy of Data?(v36, v37);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, Any)(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v39 = Dictionary._bridgeToObjectiveC()().super.isa;

      v66 = closure #1 in HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.setter;
      v67 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v65 = &block_descriptor_48;
      v40 = _Block_copy(&aBlock);
      [v1 addMetadata:v39 completion:v40];
      _Block_release(v40);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static WOLog.core);
      (*(v8 + 16))(v15, v17, v7);
      v42 = Logger.logObject.getter();
      v43 = v17;
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v44))
      {
        v59 = v36;
        v60 = v43;
        v45 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock = v58;
        *v45 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v46 = static WOLog.logDateFormatter;
        v47 = Date._bridgeToObjectiveC()().super.isa;
        v48 = [v46 stringFromDate_];

        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = *(v8 + 8);
        v52(v15, v7);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &aBlock);

        *(v45 + 4) = v53;
        _os_log_impl(&dword_20AEA4000, v42, v44, "[HeartRateZones] Saved in workout metadata last processed entry date: %s", v45, 0xCu);
        v54 = v58;
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x20F2E9420](v54, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);

        outlined consume of Data?(v59, v37);
        outlined destroy of (String, Any)(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v52)(v60, v7);
      }

      else
      {

        outlined consume of Data?(v36, v37);
        outlined destroy of (String, Any)(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v56 = *(v8 + 8);
        v56(v15, v7);
        return (v56)(v43, v7);
      }
    }
  }
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  outlined init with copy of Date?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of (String, Any)(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v18 = MEMORY[0x20F2E6C00](0xD000000000000035, 0x800000020B456D10);
    v66 = closure #2 in HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones.setter;
    v67 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v65 = &block_descriptor_51;
    v19 = _Block_copy(&aBlock);
    [v1 _removeMetadata_completion_];
    _Block_release(v19);

    return outlined destroy of (String, Any)(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v8 + 32))(v17, v6, v7);
    v21 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v17);
    if (v22 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static WOLog.core);
      (*(v8 + 16))(v12, v17, v7);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v60 = v17;
        v61 = a1;
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        aBlock = v59;
        *v26 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v27 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v29 = [v27 stringFromDate_];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = *(v8 + 8);
        v33(v12, v7);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &aBlock);

        *(v26 + 4) = v34;
        _os_log_impl(&dword_20AEA4000, v24, v25, "[HeartRateZones] Failed to serialize last processed event date: %s", v26, 0xCu);
        v35 = v59;
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x20F2E9420](v35, -1, -1);
        MEMORY[0x20F2E9420](v26, -1, -1);

        outlined destroy of (String, Any)(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v33)(v60, v7);
      }

      else
      {

        outlined destroy of (String, Any)(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v55 = *(v8 + 8);
        v55(v12, v7);
        return (v55)(v17, v7);
      }
    }

    else
    {
      v36 = v21;
      v37 = v22;
      v61 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000035;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B456D10;
      *(inited + 48) = v36;
      *(inited + 56) = v37;
      outlined copy of Data?(v36, v37);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, Any)(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v39 = Dictionary._bridgeToObjectiveC()().super.isa;

      v66 = closure #1 in HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones.setter;
      v67 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v63 = 1107296256;
      v64 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v65 = &block_descriptor_54;
      v40 = _Block_copy(&aBlock);
      [v1 addMetadata:v39 completion:v40];
      _Block_release(v40);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static WOLog.core);
      (*(v8 + 16))(v15, v17, v7);
      v42 = Logger.logObject.getter();
      v43 = v17;
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v44))
      {
        v59 = v36;
        v60 = v43;
        v45 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock = v58;
        *v45 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v46 = static WOLog.logDateFormatter;
        v47 = Date._bridgeToObjectiveC()().super.isa;
        v48 = [v46 stringFromDate_];

        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = *(v8 + 8);
        v52(v15, v7);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &aBlock);

        *(v45 + 4) = v53;
        _os_log_impl(&dword_20AEA4000, v42, v44, "[HeartRateZones] Saved in workout metadata last processed event date: %s", v45, 0xCu);
        v54 = v58;
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x20F2E9420](v54, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);

        outlined consume of Data?(v59, v37);
        outlined destroy of (String, Any)(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v52)(v60, v7);
      }

      else
      {

        outlined consume of Data?(v36, v37);
        outlined destroy of (String, Any)(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v56 = *(v8 + 8);
        v56(v15, v7);
        return (v56)(v43, v7);
      }
    }
  }
}

void HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B456D50);
    v25 = closure #2 in HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones.setter;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v24 = &block_descriptor_57_0;
    v4 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v4);
  }

  else
  {
    v6 = specialized static ZonesMetadata.packedCurrentZoneIndex(_:)(a1);
    if (v7 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static WOLog.core);
      oslog = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = a1;
        _os_log_impl(&dword_20AEA4000, oslog, v9, "[HeartRateZones] Failed to serialize current zone index: %ld", v10, 0xCu);
        MEMORY[0x20F2E9420](v10, -1, -1);
      }
    }

    else
    {
      v11 = v6;
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD00000000000002FLL;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B456D50;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      outlined copy of Data?(v11, v12);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, Any)(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = closure #1 in HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones.setter;
      v26 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v24 = &block_descriptor_60;
      v15 = _Block_copy(&aBlock);
      [v2 addMetadata:isa completion:v15];
      _Block_release(v15);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static WOLog.core);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = a1;
        _os_log_impl(&dword_20AEA4000, v17, v18, "[HeartRateZones] Saved in workout metadata current zone index: %ld", v19, 0xCu);
        MEMORY[0x20F2E9420](v19, -1, -1);
      }

      outlined consume of Data?(v11, v12);
    }
  }
}

uint64_t unpackedHeartRateZones(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x800000020B456BF0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PropertyListDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13HeartRateZoneCGMd, &_sSay11WorkoutCore13HeartRateZoneCGMR);
  lazy protocol witness table accessor for type [HeartRateZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [HeartRateZone] and conformance <A> [A], &lazy protocol witness table cache variable for type HeartRateZone and conformance Zone);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v8, v9);

  return v10[0];
}

id unpackedRestingHeartRate(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000020B456C30);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v9);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() _countPerMinuteUnit];
  [v8 doubleValue];
  v6 = [objc_opt_self() quantityWithUnit:v4 doubleValue:v5];

  return v6;
}

void unpackedConfigurationType(from:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 && *(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000030, 0x800000020B459E10), (v5 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v4, v9), type metadata accessor for NSNumber(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = [v8 integerValue];

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 2;
  }

  *a2 = v7;
}

uint64_t HKWorkout.heartRateZones.getter()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = unpackedHeartRateZones(from:)(v3);

  return v4;
}

id HKWorkout.defaultRestingHeartRate.getter()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3)
    {
      if (*(v3 + 16))
      {
        v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000020B456C30);
        if (v5)
        {
          outlined init with copy of Any(*(v3 + 56) + 32 * v4, v11);
          type metadata accessor for NSNumber();
          if (swift_dynamicCast())
          {
            v6 = [objc_opt_self() _countPerMinuteUnit];
            [v10 doubleValue];
            v8 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v7];

            return v8;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t HKWorkout.heartRateZonesConfigurationType.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  unpackedConfigurationType(from:)(v5, a1);
}

uint64_t HKWorkout.elapsedTimeInHeartRateZones.getter()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v3, 0xD00000000000002CLL, 0x800000020B456CA0);

  return v4;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t (*HKLiveWorkoutBuilder.heartRateZones.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = unpackedHeartRateZones(from:)(v4);

  *a1 = v5;
  return HKLiveWorkoutBuilder.heartRateZones.modify;
}

uint64_t HKLiveWorkoutBuilder.heartRateZones.getter(uint64_t (*a1)(uint64_t))
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a1(v4);

  return v5;
}

uint64_t key path getter for HKLiveWorkoutBuilder.heartRateZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = [*a1 metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a2(v6);

  *a3 = v7;
  return result;
}

void (*HKLiveWorkoutBuilder.defaultRestingHeartRate.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = unpackedRestingHeartRate(from:)(v4);

  *a1 = v5;
  return HKLiveWorkoutBuilder.defaultRestingHeartRate.modify;
}

void HKLiveWorkoutBuilder.defaultRestingHeartRate.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    HKLiveWorkoutBuilder.defaultRestingHeartRate.setter(v2);
  }

  else
  {
    HKLiveWorkoutBuilder.defaultRestingHeartRate.setter(*a1);
  }
}

uint64_t HKLiveWorkoutBuilder.heartRateZonesConfigurationType.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  unpackedConfigurationType(from:)(v4, a1);
}

uint64_t key path getter for HKLiveWorkoutBuilder.heartRateZonesConfigurationType : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  unpackedConfigurationType(from:)(v4, &v6);

  *a2 = v6;
  return result;
}

void (*HKLiveWorkoutBuilder.heartRateZonesConfigurationType.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = (a1 + 1);
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  unpackedConfigurationType(from:)(v4, v2);

  return HKLiveWorkoutBuilder.heartRateZonesConfigurationType.modify;
}

void HKLiveWorkoutBuilder.heartRateZonesConfigurationType.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter(v4);
}

uint64_t key path getter for HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v4, 0xD00000000000002CLL, 0x800000020B456CA0);

  *a2 = v5;
  return result;
}

uint64_t (*HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v4, 0xD00000000000002CLL, 0x800000020B456CA0);

  *a1 = v5;
  return HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones.modify;
}

uint64_t HKLiveWorkoutBuilder.heartRateZones.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

uint64_t key path getter for HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000035, 0x800000020B456CD0, a2);
}

void (*HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v8, 0xD000000000000035, 0x800000020B456CD0, v6);

  return HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.modify;
}

uint64_t key path getter for HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000035, 0x800000020B456D10, a2);
}

uint64_t key path setter for HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones : HKLiveWorkoutBuilder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  outlined init with copy of Date?(a1, &v14 - v10);
  v12 = *a2;
  return a5(v11);
}

void (*HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v8, 0xD000000000000035, 0x800000020B456D10, v6);

  return HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones.modify;
}

void HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.modify(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    outlined init with copy of Date?(v5, v4);
    a3(v4);
    outlined destroy of (String, Any)(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    a3(v5);
  }

  free(v5);

  free(v4);
}

uint64_t key path getter for HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones : HKLiveWorkoutBuilder@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v4, 0xD00000000000002FLL, 0x800000020B456D50);
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

void (*HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v4, 0xD00000000000002FLL, 0x800000020B456D50);
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7 & 1;
  return HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones.modify;
}

void closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4, const char *a5, const char *a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.core);
    (*(v13 + 16))(v19, a3, v12);
    v21 = a4;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v57 = a5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v59 = v26;
      *v25 = 136315394;
      lazy protocol witness table accessor for type HeartRateZone and conformance Zone(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v13 + 8))(v19, v12);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v59);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = [v21 debugDescription];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v59);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_20AEA4000, v22, v23, v57, v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v19, v12);
    }
  }

  else
  {
    v36 = a2;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static WOLog.core);
    (*(v13 + 16))(v17, a3, v12);
    v38 = a4;
    v39 = v36;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v42 = 136315650;
      lazy protocol witness table accessor for type HeartRateZone and conformance Zone(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = a6;
      v45 = v44;
      (*(v13 + 8))(v17, v12);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v59);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v47 = [v38 debugDescription];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v59);

      *(v42 + 14) = v51;
      *(v42 + 22) = 2080;
      v58 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v52 = Optional.description.getter();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v59);

      *(v42 + 24) = v54;
      _os_log_impl(&dword_20AEA4000, v40, v41, v56, v42, 0x20u);
      v55 = v57;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v55, -1, -1);
      MEMORY[0x20F2E9420](v42, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }
  }
}

void closure #3 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.core);
    v7 = a4;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 134218242;
      *(v9 + 4) = a3;
      *(v9 + 12) = 2080;
      v11 = [v7 debugDescription];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v33);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_20AEA4000, oslog, v8, "[HeartRateZones] Saved in activity metadata currentZoneIndex: %ld, current activity: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      v16 = v9;
LABEL_10:
      MEMORY[0x20F2E9420](v16, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.core);
    v19 = a4;
    v20 = a2;
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 134218498;
      *(v22 + 4) = a3;
      *(v22 + 12) = 2080;
      v24 = [v19 debugDescription];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v29 = Optional.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v33);

      *(v22 + 24) = v31;
      _os_log_impl(&dword_20AEA4000, oslog, v21, "[HeartRateZones] Failed to save in activity metadata currentZoneIndex: %ld, current activity: %s, error: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v23, -1, -1);
      v16 = v22;
      goto LABEL_10;
    }
  }
}

void closure #4 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);

    v6 = a4;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315394;
      v10 = Dictionary.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v38);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = [v6 debugDescription];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v38);

      *(v8 + 14) = v17;
      _os_log_impl(&dword_20AEA4000, oslog, v7, "[HeartRateZones] Saved in activity metadata elapsed time in zones: %s, current activity: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v9, -1, -1);
      v18 = v8;
LABEL_10:
      MEMORY[0x20F2E9420](v18, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.core);

    v21 = a4;
    v22 = a2;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315650;
      v26 = Dictionary.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v38);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = [v21 debugDescription];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v38);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v34 = Optional.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v38);

      *(v24 + 24) = v36;
      _os_log_impl(&dword_20AEA4000, oslog, v23, "[HeartRateZones] Failed to save in activity metadata time in zones: %s, current activity: %s, error: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v25, -1, -1);
      v18 = v24;
      goto LABEL_10;
    }
  }
}

uint64_t outlined destroy of (String, Any)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void partial apply for closure #2 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, const char *a3, const char *a4)
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(a1, a2, v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t lazy protocol witness table accessor for type [HeartRateZone] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore13HeartRateZoneCGMd, &_sSay11WorkoutCore13HeartRateZoneCGMR);
    lazy protocol witness table accessor for type HeartRateZone and conformance Zone(a2, type metadata accessor for HeartRateZone);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HeartRateZone and conformance Zone(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path getter for GPSLockProvider.gpsLock : GPSLockProvider@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  return key path getter for GPSLockProvider.gpsLock : GPSLockProvider(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for GPSLockProvider.gpsLock : GPSLockProvider(char *a1, void **a2)
{
  return key path setter for GPSLockProvider.gpsLock : GPSLockProvider(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t GPSLockProvider.gpsLock.getter()
{
  return GPSLockProvider.gpsLock.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for GPSLockProvider.$gpsLock : GPSLockProvider(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GPSLockProvider.$gpsLock : GPSLockProvider(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t GPSLockProvider.$gpsLock.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

id GPSLockProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GPSLockProvider.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider__gpsLock;
  v15 = 0;
  Published.init(initialValue:)();
  v7 = *(v2 + 32);
  v7(&v0[v6], v5, v1);
  v8 = OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider__checkingGPSLock;
  v15 = 0;
  Published.init(initialValue:)();
  v7(&v0[v8], v5, v1);
  *&v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_recentLocations] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_timer] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_locationsStaleTimeout] = 0x4000000000000000;
  *&v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_maxLocations] = 5;
  v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_activated] = 0;
  v9 = OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_activationDate;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(&v0[v9], 1, 1, v10);
  v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_fakeAutoGPSLock] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_autoGPSLockTimer] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_autoGPSLockTime] = 0x4000000000000000;
  v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_fake] = specialized static PreviewChecker.isPreview.getter() & 1;
  v11 = type metadata accessor for GPSLockProvider();
  v14.receiver = v0;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_init);
}

Swift::Void __swiftcall GPSLockProvider.activate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_activated;
  if ((v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_activated] & 1) == 0)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.app);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "[GPSLockProvider] activated", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v1[v6] = 1;
    Date.init()();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    v12 = OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_activationDate;
    swift_beginAccess();
    outlined assign with take of Date?(v5, &v1[v12]);
    swift_endAccess();
    if (v1[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_fake])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v15[8] = 1;
      v13 = v1;
      static Published.subscript.setter();
      if (v13[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_fakeAutoGPSLock] == 1)
      {
        GPSLockProvider.makeAutoGPSLockTimer()();
      }
    }

    else
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      specialized LocationManager.add(observer:)(v1, static LocationManager.shared, &unk_2822499B8, closure #1 in LocationManager.add(observer:)partial apply, &block_descriptor_99);
      v14 = LocationManager.currentState.getter();
      GPSLockProvider.updateCheckingGPSLock(for:)(v14);
    }
  }
}

uint64_t GPSLockProvider.updateCheckingGPSLock(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_activated] != 1)
  {
    return result;
  }

  if (a1 >= 2 && a1 != 3)
  {
    if (a1 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v13[14] = 1;
      v12 = v2;
      return static Published.subscript.setter();
    }

LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v13[15] = 0;
  v11 = v2;
  return static Published.subscript.setter();
}

Swift::Void __swiftcall GPSLockProvider.deactivate()()
{
  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_activated) == 1)
  {
    v1 = v0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.app);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[GPSLockProvider] deactivated", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;
    v6 = v1;
    static Published.subscript.setter();
    if ((v6[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_fake] & 1) == 0)
    {
      v7 = OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_timer;
      [*&v6[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_timer] invalidate];
      v8 = *&v6[v7];
      *&v6[v7] = 0;

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v9 = static LocationManager.shared;
      v10 = *(static LocationManager.shared + OBJC_IVAR___WOCoreLocationManager_queue);
      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      *(v11 + 24) = v9;
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for closure #1 in LocationManager.remove(observer:);
      *(v12 + 24) = v11;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_16;
      v13 = _Block_copy(aBlock);
      v14 = v6;
      v15 = v9;

      v16 = v10;
      v17 = v13;
      v18 = v16;
      label = dispatch_queue_get_label(v18);
      v20 = dispatch_queue_get_label(0);

      if (label == v20)
      {
        v24 = objc_autoreleasePoolPush();
        v17[2](v17);
        objc_autoreleasePoolPop(v24);
      }

      else
      {
        dispatch_sync(v18, v17);
      }

      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.app);
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v22, "[GPSLockProvider] deactivated without being activated", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }
  }
}

void closure #1 in GPSLockProvider.makeTimer()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    GPSLockProvider.updateGPSLockStatus()();
  }
}

void GPSLockProvider.makeTimer()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  [*(v3 + *a1) invalidate];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = a2;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v12[3] = a3;
  v9 = _Block_copy(v12);

  v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:2.0];
  _Block_release(v9);
  v11 = *(v3 + v6);
  *(v3 + v6) = v10;
}

void closure #1 in GPSLockProvider.makeAutoGPSLockTimer()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_fake) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v2 = static Published.subscript.modify();
      *v3 = !*v3;
      v2(&v9, 0);
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_autoGPSLockTimer);

    [v6 invalidate];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_autoGPSLockTimer];
    *&v7[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_autoGPSLockTimer] = 0;
  }
}

id GPSLockProvider.__deallocating_deinit()
{
  GPSLockProvider.deactivate()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GPSLockProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void GPSLockProvider.updateGPSLockStatus()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = *&v0[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_recentLocations];

  Date.init()();
  v14 = specialized static GPSLockProvider.gpsLock(for:relativeTo:)(v13, v12);

  v39 = *(v6 + 8);
  v39(v12, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14 != v42)
  {
    v38 = v10;
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v14;
    v15 = v0;
    static Published.subscript.setter();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.app);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v37 = v19;
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43 = v36;
      *v20 = 67109378;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v20 + 4) = v42;

      *(v20 + 8) = 2080;
      v21 = OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_activationDate;
      swift_beginAccess();
      outlined init with copy of Date?(&v17[v21], v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        outlined destroy of Date?(v4);
        *&countAndFlagsBits = 0.0;
        object = 0;
      }

      else
      {
        v24 = v38;
        (*(v6 + 32))(v38, v4, v5);
        Date.init()();
        Date.timeIntervalSinceReferenceDate.getter();
        v26 = v25;
        v27 = v39;
        v39(v12, v5);
        Date.timeIntervalSinceReferenceDate.getter();
        v29 = v28;
        v27(v24, v5);
        v40 = v26 - v29;
        lazy protocol witness table accessor for type Double and conformance Double();
        v30 = BinaryFloatingPoint.formatted()();
        countAndFlagsBits = v30._countAndFlagsBits;
        object = v30._object;
      }

      v40 = *&countAndFlagsBits;
      v41 = object;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v31 = Optional.description.getter();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v43);

      *(v20 + 10) = v34;
      _os_log_impl(&dword_20AEA4000, v18, v37, "[GPSLockProvider] changed gpsLock=%{BOOL}d time_since_activation=%s", v20, 0x12u);
      v35 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x20F2E9420](v35, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall GPSLockProvider.fakeToggleGPSLock()()
{
  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_fake) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = static Published.subscript.modify();
    *v2 = !*v2;
    v1(&v3, 0);
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GPSLockProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GPSLockProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void closure #1 in GPSLockProvider.locationDidUpdate(locations:locationManager:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.app);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[GPSLockProvider] LocationManager locationDidUpdate", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_recentLocations;
    v21 = *&v1[OBJC_IVAR____TtC11WorkoutCore15GPSLockProvider_recentLocations];

    specialized Array.append<A>(contentsOf:)(v7);

    v21 = specialized Array._copyToContiguousArray()(v8);
    specialized MutableCollection<>.sort(by:)(&v21);

    v9 = specialized BidirectionalCollection.suffix(_:)(5, v21);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    if (v15)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        swift_unknownObjectRelease();
        v18 = MEMORY[0x277D84F90];
      }

      v19 = *(v18 + 16);

      if (__OFSUB__(v15 >> 1, v13))
      {
        __break(1u);
      }

      else if (v19 == (v15 >> 1) - v13)
      {
        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v17)
        {
LABEL_15:
          v20 = *&v1[v6];
          *&v1[v6] = v17;

          GPSLockProvider.updateGPSLockStatus()();
          GPSLockProvider.makeTimer()();

          return;
        }

        v17 = MEMORY[0x277D84F90];
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v9, v11, v13, v15);
    v17 = v16;
    goto LABEL_14;
  }
}

void closure #1 in GPSLockProvider.locationDidFail(error:locationManager:)(void *a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "[GPSLockProvider] LocationManager locationDidFail error=%s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

void closure #1 in GPSLockProvider.authorizationStatusDidUpdate(authorizationStatus:locationManager:)(int a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_20AEA4000, oslog, v3, "[GPSLockProvider] LocationManager authorizationStatusDidUpdate status=%d", v4, 8u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }
}

void closure #1 in GPSLockProvider.locationManagerStateDidChange(state:locationManager:)(unint64_t a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[GPSLockProvider] locationManagerStateDidChange state=%ld", v5, 0xCu);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    GPSLockProvider.updateCheckingGPSLock(for:)(a1);
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

{
  v2 = *(type metadata accessor for Chronicle.Entry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Date();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Date() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Chronicle.Entry();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Chronicle.Entry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v31 - v13;
  result = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      v26 = static Date.< infix(_:_:)();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v34 = type metadata accessor for Chronicle.Entry();
  v8 = *(*(v34 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v34);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      outlined init with copy of Chronicle.Entry(v24, v18);
      outlined init with copy of Chronicle.Entry(v21, v14);
      v25 = static Date.< infix(_:_:)();
      outlined destroy of Chronicle.Entry(v14);
      result = outlined destroy of Chronicle.Entry(v18);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      outlined init with take of Chronicle.Entry(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of Chronicle.Entry(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v133 = &v118 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v139 = &v118 - v17;
  result = MEMORY[0x28223BE20](v16);
  v138 = &v118 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v113 = v6;
    v141 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *(result + 16 * a4);
        v116 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v10 + a3[9] * v115, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v113)
        {
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = specialized _ArrayBuffer._consumeAndCreateNew()(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        specialized Array.remove(at:)(a4 - 1);
        result = v141;
        a4 = *(v141 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v21 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v23 = v21;
    v126 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v131 = v20;
      v120 = v6;
      v128 = *a3;
      v24 = v128;
      v25 = v10[9];
      v5 = v128 + v25 * (v21 + 1);
      v26 = v10[2];
      v27 = v138;
      v26(v138, v5, v9);
      v28 = v24 + v25 * v23;
      v29 = v139;
      v130 = v26;
      v26(v139, v28, v9);
      LODWORD(v132) = static Date.< infix(_:_:)();
      v30 = v9;
      v31 = v10[1];
      v31(v29, v30);
      v129 = v31;
      result = (v31)(v27, v30);
      v119 = v23;
      v32 = v23 + 2;
      v134 = v25;
      v33 = v128 + v25 * (v23 + 2);
      while (1)
      {
        v34 = v131;
        if (v131 == v32)
        {
          break;
        }

        v35 = v10;
        v36 = v138;
        v37 = v140;
        v38 = v130;
        (v130)(v138, v33, v140);
        v39 = v139;
        v38(v139, v5, v37);
        v40 = static Date.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v36;
        v10 = v35;
        result = v41(v42, v37);
        ++v32;
        v33 += v134;
        v5 += v134;
        if ((v132 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      a3 = v123;
      v22 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v23 = v119;
      if (v132)
      {
        if (v34 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v34)
        {
          v118 = v10;
          v43 = v134 * (v34 - 1);
          v44 = v34 * v134;
          v45 = v34;
          v46 = v119;
          v47 = v119 * v134;
          do
          {
            if (v46 != --v45)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v50 = v34;
              v5 = v49 + v47;
              v132 = *v135;
              (v132)(v125, v49 + v47, v140, v22);
              if (v47 < v43 || v5 >= v49 + v44)
              {
                v48 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v140;
                if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v49 + v43, v125, v48);
              a3 = v123;
              v22 = v126;
              v34 = v50;
            }

            ++v46;
            v43 -= v134;
            v44 -= v134;
            v47 += v134;
          }

          while (v46 < v45);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v23 = v119;
        }
      }
    }

    v51 = a3[1];
    if (v34 < v51)
    {
      if (__OFSUB__(v34, v23))
      {
        goto LABEL_126;
      }

      if (v34 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v23 + a4;
        }

        if (v52 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v34 != v52)
        {
          break;
        }
      }
    }

    v53 = v34;
    if (v34 < v23)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v126;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v126 + 2) + 1, 1, v126);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v54 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v54 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v53;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v53;
    if (a4)
    {
      while (1)
      {
        v57 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v58 = *(v22 + 4);
          v59 = *(v22 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_114;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_117;
          }

          v80 = &v22[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_121;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v22[16 * v5];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_116;
        }

        v87 = &v22[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_119;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v57 - 1;
        if (v57 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v95 = v22;
        v96 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v57 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v10[9] * v96, *a3 + v10[9] * *&v22[16 * v57 + 32], *a3 + v10[9] * v5, v56);
        if (v6)
        {
        }

        if (v5 < v96)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = specialized _ArrayBuffer._consumeAndCreateNew()(v95);
        }

        if (a4 >= *(v95 + 2))
        {
          goto LABEL_111;
        }

        v97 = &v95[16 * a4];
        *(v97 + 4) = v96;
        *(v97 + 5) = v5;
        v141 = v95;
        result = specialized Array.remove(at:)(v57);
        v22 = v141;
        v5 = *(v141 + 16);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v22[16 * v5 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_112;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_113;
      }

      v69 = &v22[16 * v5];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_115;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_118;
      }

      if (v73 >= v65)
      {
        v91 = &v22[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v94)
        {
          v57 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v127;
    a4 = v121;
    if (v127 >= v20)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v98 = *a3;
  v99 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v100 = v98 + v99 * (v34 - 1);
  v101 = -v99;
  v119 = v23;
  v102 = (v23 - v34);
  v132 = v98;
  v124 = v99;
  v5 = v98 + v34 * v99;
  v127 = v52;
LABEL_85:
  v130 = v100;
  v131 = v34;
  v128 = v5;
  v129 = v102;
  v103 = v100;
  while (1)
  {
    v104 = v138;
    v105 = v134;
    (v134)(v138, v5, v9, v22);
    v106 = v139;
    v105(v139, v103, v140);
    v107 = static Date.< infix(_:_:)();
    a4 = v136;
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v34 = v131 + 1;
      v100 = &v130[v124];
      v102 = v129 - 1;
      v5 = v128 + v124;
      v53 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v23 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v110 = *v135;
    v111 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    v5 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}