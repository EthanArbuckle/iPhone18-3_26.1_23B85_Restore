uint64_t HeartRateTargetZone.customRange.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t HeartRateTargetZone.defaultZoneIndex.getter()
{
  v1 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t HeartRateTargetZone.defaultZoneIndex.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t key path setter for HeartRateTargetZone.defaultZones : HeartRateTargetZone(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t HeartRateTargetZone.defaultZones.getter()
{
  v1 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t HeartRateTargetZone.defaultZones.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for HeartRateTargetZone.defaultZonesDidLoad : HeartRateTargetZone@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AEC6CF0(v4);
}

uint64_t key path setter for HeartRateTargetZone.defaultZonesDidLoad : HeartRateTargetZone(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20AEC6CF0(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t HeartRateTargetZone.defaultZonesDidLoad.getter()
{
  v1 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_20AEC6CF0(v3);
  return v3;
}

uint64_t HeartRateTargetZone.defaultZonesDidLoad.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

uint64_t HeartRateTargetZone.restingHeartRateUsesDefault.getter()
{
  v1 = OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HeartRateTargetZone.restingHeartRateUsesDefault.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HeartRateTargetZone.applicableRange.getter()
{
  if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v1 = v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
      swift_beginAccess();
      if (*(v1 + 16) != 1)
      {
        result = *v1;
        v3 = *(v1 + 8);
        return result;
      }

      goto LABEL_44;
    }

    return 0;
  }

  v4 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (!v5)
  {
    if (one-time initialization token for alerts == -1)
    {
LABEL_13:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static WOLog.alerts);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_20AEA4000, v13, v14, "HeartRateZoneType is .default and defaultZones is nil. Setting applicableRange to empty.", v15, 2u);
        MEMORY[0x20F2E9420](v15, -1, -1);
      }

      return 0;
    }

LABEL_43:
    swift_once();
    goto LABEL_13;
  }

  v6 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    v8 = v5 + 8 * v7;
    if ((v5 & 0xC000000000000001) != 0)
    {

      v9 = MEMORY[0x20F2E7A20](v7, v5);
      v10 = *(v9 + 32);
      if (v10)
      {
LABEL_11:
        v11 = *(v9 + 16);
        goto LABEL_19;
      }
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v9 = *(v8 + 32);

      v10 = *(v9 + 32);
      if (v10)
      {
        goto LABEL_11;
      }
    }

    v11 = 0.0;
LABEL_19:
    v16 = *(v9 + 40);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (!v17)
    {
      if (v10 == v18)
      {
        v19 = INFINITY;
      }

      else
      {
        v19 = *(v9 + 24);
      }

      if (v11 <= v19)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x20F2E7A20](v7, v5);
        }

        else
        {
          v20 = *(v8 + 32);
        }

        v21 = *(v20 + 32);
        if (v21)
        {
          v22 = *(v20 + 16);
        }

        else
        {
          v22 = 0.0;
        }

        v23 = *(v20 + 40);
        v17 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (!v17)
        {
          if (v21 == v24)
          {
            v25 = INFINITY;
          }

          else
          {
            v25 = *(v20 + 24);
          }

          if (v22 <= v25 && v11 <= v25)
          {
            return *&v11;
          }

          goto LABEL_42;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_44:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL HeartRateTargetZone.isEffectivelyCustomSingleThreshold.getter()
{
  if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1 && (v1 = v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange, swift_beginAccess(), (*(v1 + 16) & 1) == 0))
  {
    return *(v1 + 8) - *v1 <= 1.0;
  }

  else
  {
    return 0;
  }
}

uint64_t HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v47 = a3;
  v48 = a5;
  v46 = a2;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = &v7[OBJC_IVAR___WOCoreHeartRateTargetZone_customRange];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = &v7[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex];
  *v23 = 0;
  v23[8] = 1;
  *&v7[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones] = 0;
  v24 = &v7[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad];
  *v24 = 0;
  v24[1] = 0;
  v7[OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault] = 0;
  v44 = v13;
  v45 = v12;
  v43 = v18;
  v41 = v25;
  v40 = v20;
  if (v21 == 1)
  {

    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26 & 1) != 0 && (a4)
  {
    goto LABEL_14;
  }

  if (!v21)
  {

    if ((a6 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_7:
  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27 & 1) != 0 && (a6)
  {
    goto LABEL_14;
  }

LABEL_9:
  v7[OBJC_IVAR___WOCoreHeartRateTargetZone_type] = v21;
  swift_beginAccess();
  v28 = v47;
  *v22 = v46;
  *(v22 + 1) = v28;
  v22[16] = a4 & 1;
  swift_beginAccess();
  *v23 = v48;
  v23[8] = a6 & 1;
  v29 = type metadata accessor for HeartRateTargetZone();
  v50.receiver = v7;
  v50.super_class = v29;
  v30 = objc_msgSendSuper2(&v50, sel_init);
  if (a7)
  {
    v31 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
    swift_beginAccess();
    v32 = *&v30[v31];
    *&v30[v31] = a7;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v33 = static OS_dispatch_queue.main.getter();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:);
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_1;
    v35 = _Block_copy(aBlock);

    v36 = v40;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v37 = v42;
    v38 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v36, v37, v35);
    _Block_release(v35);

    (*(v44 + 8))(v37, v38);
    (*(v41 + 8))(v36, v43);
  }

  return v30;
}

uint64_t closure #1 in HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for HeartRateConfigurationRequest();
    v2 = swift_allocObject();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for HeartRateConfiguration();
    v4 = swift_allocObject();
    v4[2] = v2;
    v4[3] = closure #1 in HeartRateTargetZone.loadHeartRateZones()partial apply;
    v4[4] = v3;
    swift_retain_n();

    static HeartRateConfiguration.fetchConfigurationType(completion:)(closure #1 in HeartRateConfigurationRequest.fetchActiveHeartRateConfiguration(completion:)partial apply, v4);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

{
  v1 = *(a1 + 40);
  return (*(a1 + 32))();
}

uint64_t closure #1 in HeartRateTargetZone.loadHeartRateZones()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in HeartRateTargetZone.loadHeartRateZones();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_31;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v16);
  _Block_release(v16);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void closure #1 in closure #1 in HeartRateTargetZone.loadHeartRateZones()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    HeartRateTargetZone._mainThread_handleConfigurationLoad(_:)(a2);
  }
}

uint64_t HeartRateTargetZone._mainThread_handleConfigurationLoad(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (a1)
    {
      v11 = *(a1 + 40);
      v12 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
      swift_beginAccess();
      v13 = *(v2 + v12);
      *(v2 + v12) = v11;

      if (*(a1 + 16))
      {
      }

      else
      {
        v14 = *(a1 + 49);

        v15 = OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault;
        swift_beginAccess();
        *(v2 + v15) = v14;
      }
    }

    v16 = v2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad;
    result = swift_beginAccess();
    v17 = *v16;
    if (*v16)
    {
      v18 = *(v16 + 8);

      v17(v19);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HeartRateTargetZone.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore19HeartRateTargetZoneC10CodingKeys33_1113D039332984EA8E51073321743006LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore19HeartRateTargetZoneC10CodingKeys33_1113D039332984EA8E51073321743006LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = &v3[OBJC_IVAR___WOCoreHeartRateTargetZone_customRange];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex];
  *v11 = 0;
  v11[8] = 1;
  *&v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones] = 0;
  v12 = &v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad];
  *v12 = 0;
  v12[1] = 0;
  v3[OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault] = 0;
  v13 = a1[3];
  v14 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    v22 = *&v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones];

    v23 = *&v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad + 8];
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad]);
    type metadata accessor for HeartRateTargetZone();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v15 = v6;
  v38 = 0;
  lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v39;
  v3[OBJC_IVAR___WOCoreHeartRateTargetZone_type] = v39;
  v37 = v5;
  if (v16 == 1)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v24 = &unk_27C726000;
      goto LABEL_11;
    }
  }

  v39 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  v39 = 2;
  result = KeyedDecodingContainer.decode(_:forKey:)();
  if (v19 <= v21)
  {
    v25 = v21;
    swift_beginAccess();
    *v10 = v19;
    *(v10 + 1) = v25;
    v10[16] = 0;
    v24 = &unk_27C726000;
LABEL_11:
    v26 = type metadata accessor for HeartRateTargetZone();
    v40.receiver = v3;
    v40.super_class = v26;
    v3 = objc_msgSendSuper2(&v40, sel_init);
    if (v3[OBJC_IVAR___WOCoreHeartRateTargetZone_type])
    {
      v27 = v37;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        (*(v15 + 8))(v9, v27);
        goto LABEL_17;
      }
    }

    else
    {

      v27 = v37;
    }

    v39 = 3;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = &v3[v24[380]];
    swift_beginAccess();
    *v30 = v29;
    v30[8] = 0;
    type metadata accessor for HeartRateConfigurationRequest();
    v31 = swift_allocObject();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for HeartRateConfiguration();
    v33 = v9;
    v34 = v15;
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = partial apply for closure #1 in HeartRateTargetZone.loadHeartRateZones();
    v35[4] = v32;
    swift_retain_n();

    static HeartRateConfiguration.fetchConfigurationType(completion:)(partial apply for closure #1 in HeartRateConfigurationRequest.fetchActiveHeartRateConfiguration(completion:), v35);

    (*(v34 + 8))(v33, v27);

LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v41);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t HeartRateTargetZone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore19HeartRateTargetZoneC10CodingKeys33_1113D039332984EA8E51073321743006LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore19HeartRateTargetZoneC10CodingKeys33_1113D039332984EA8E51073321743006LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[24] = *(v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_type);
  v17[0] = 0;
  lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = (v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange);
    swift_beginAccess();
    if ((v12[2] & 1) == 0)
    {
      v15 = *v12;
      v16 = v12[1];
      v17[0] = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      v17[0] = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    v13 = (v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
    swift_beginAccess();
    if (*(v13 + 8) != 1)
    {
      v14 = *v13;
      v17[63] = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

WorkoutCore::TargetZone::State __swiftcall HeartRateTargetZone.state(currentValue:)(Swift::Double currentValue)
{
  v3 = v1;
  v4 = COERCE_DOUBLE(HeartRateTargetZone.applicableRange.getter());
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    if (v4 > currentValue)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (v5 > currentValue)
    {
      v7 = v8;
    }

    else
    {
      v7 = 3;
    }

    if (currentValue <= 2.22044605e-16)
    {
      v7 = 0;
    }
  }

  *v3 = v7;
  return LOBYTE(v4);
}

id HeartRateTargetZone.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeartRateTargetZone.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRateTargetZone();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance HeartRateTargetZone@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  result = HeartRateTargetZone.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t HeartRateTargetZone.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v5);
  if (!v6)
  {
    outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for HeartRateTargetZone();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = specialized static HeartRateTargetZone.== infix(_:_:)(v1, v4);

  return v2 & 1;
}

uint64_t HeartRateTargetZone.description.getter()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange);
  swift_beginAccess();
  v3 = *v2;
  *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v4 = Optional.description.getter();
  v6 = v5;
  v7 = v2[1];
  *(v2 + 16);
  v8 = Optional.description.getter();
  v10 = v9;
  v11 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  v18 = *v11;
  v19 = *(v11 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v12 = Optional.description.getter();
  v14 = v13;
  _StringGuts.grow(_:)(34);

  if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v15 = 0xE600000000000000;
      v16 = 0x6D6F74737563;
    }

    else
    {
      v15 = 0xE300000000000000;
      v16 = 6710895;
    }
  }

  else
  {
    v15 = 0xE900000000000063;
    v16 = 0x6974616D6F747561;
  }

  MEMORY[0x20F2E6D80](v16, v15);

  MEMORY[0x20F2E6D80](5972026, 0xE300000000000000);
  MEMORY[0x20F2E6D80](v4, v6);

  MEMORY[0x20F2E6D80](58, 0xE100000000000000);
  MEMORY[0x20F2E6D80](v8, v10);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B4563A0);
  MEMORY[0x20F2E6D80](v12, v14);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 60;
}

uint64_t static HeartRateTargetZone.canonical()()
{
  v2 = 1;
  v0 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v2, 0x4061800000000000, 0x4063600000000000, 0, 0, 1, 0);

  return swift_dynamicCastClassUnconditional();
}

uint64_t protocol witness for static Canonical.canonical() in conformance HeartRateTargetZone@<X0>(uint64_t *a1@<X8>)
{
  v4 = 1;
  v2 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v4, 0x4061800000000000, 0x4063600000000000, 0, 0, 1, 0);
  result = swift_dynamicCastClassUnconditional();
  *a1 = result;
  return result;
}

uint64_t specialized Range<>.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x20F2E8020](*&v3);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType()
{
  result = lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType);
  }

  return result;
}

unint64_t specialized HeartRateTargetZone.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateTargetZone.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static HeartRateTargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = 0xE900000000000063;
  v5 = 0x6974616D6F747561;
  if (*(a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v6 = 0xE600000000000000;
      v7 = 0x6D6F74737563;
      if (!*(a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0xE300000000000000;
      v7 = 6710895;
      if (!*(a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = 0x6974616D6F747561;
    v6 = 0xE900000000000063;
    if (!*(a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
    {
LABEL_10:
      if (v7 != v5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  if (*(a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
  {
    v4 = 0xE600000000000000;
    v5 = 0x6D6F74737563;
    goto LABEL_10;
  }

  v4 = 0xE300000000000000;
  if (v7 != 6710895)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v6 == v4)
  {

    goto LABEL_16;
  }

LABEL_15:
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v9 = a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  swift_beginAccess();
  if ((v12 & 1) == 0)
  {
    if ((*(v13 + 16) & 1) == 0 && v10 == *v13 && v11 == *(v13 + 8))
    {
      goto LABEL_26;
    }

    return 0;
  }

  if ((*(v13 + 16) & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v16 = a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  swift_beginAccess();
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  v18 = a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  swift_beginAccess();
  result = *(v18 + 8);
  if ((v16 & 1) == 0)
  {
    return (v17 == *v18) & ~result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateTargetZone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeartRateTargetZone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t Int.localizedString.getter(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v10._object = 0x800000020B456470;
  v3._countAndFlagsBits = 1684827173;
  v3._object = 0xE400000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D83B88];
  *(v5 + 16) = xmmword_20B423A90;
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  v8 = static String.localizedStringWithFormat(_:_:)();

  return v8;
}

void Apple_Workout_Core_MultisportTransitionState.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 0;
  }

  *a1 = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZonesAlertTargetZone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZonesAlertTargetZone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PowerZonesAlertTargetZone.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance PowerZonesAlertTargetZone.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertTargetZone.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertTargetZone.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t key path getter for PowerZonesAlertTargetZone.type : PowerZonesAlertTargetZone@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return outlined copy of PowerZonesAlertZoneType(v4, v5, v6);
}

uint64_t key path setter for PowerZonesAlertTargetZone.type : PowerZonesAlertTargetZone(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v8 = *(v4 + 16);
  *(v4 + 16) = v5;
  outlined copy of PowerZonesAlertZoneType(v2, v3, v5);
  outlined copy of PowerZonesAlertZoneType(v6, v7, v8);
  outlined consume of PowerZonesAlertZoneType(v6, v7, v8);
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = v8;
  PowerZonesAlertTargetZone.type.didset(&v10);
  return outlined consume of PowerZonesAlertZoneType(v6, v7, v8);
}

uint64_t PowerZonesAlertTargetZone.type.didset(__int128 *a1)
{
  v2 = *(a1 + 16);
  v13 = *a1;
  v14 = v2;
  v3 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = v3[16];
  v10 = *v3;
  v11 = v4;
  v12 = v5;
  outlined copy of PowerZonesAlertZoneType(v10, v4, v5);
  v6 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v13, &v10);
  result = outlined consume of PowerZonesAlertZoneType(v10, v11, v12);
  if (!v6 && (v3[16] & 0xC0) == 0x40)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = v1;
    CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v8);
  }

  return result;
}

uint64_t PowerZonesAlertTargetZone.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return outlined copy of PowerZonesAlertZoneType(v4, v5, v6);
}

uint64_t PowerZonesAlertTargetZone.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = v5[16];
  *v5 = v2;
  *(v5 + 1) = v3;
  v5[16] = v4;
  outlined copy of PowerZonesAlertZoneType(v6, v7, v8);
  outlined consume of PowerZonesAlertZoneType(v6, v7, v8);
  v17[0] = v6;
  v17[1] = v7;
  v18 = v8;
  v9 = *(v5 + 1);
  v10 = v5[16];
  v14 = *v5;
  v15 = v9;
  v16 = v10;
  outlined copy of PowerZonesAlertZoneType(v14, v9, v10);
  LOBYTE(v2) = specialized static PowerZonesAlertZoneType.== infix(_:_:)(v17, &v14);
  outlined consume of PowerZonesAlertZoneType(v14, v15, v16);
  if ((v2 & 1) == 0 && (v5[16] & 0xC0) == 0x40)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = v1;
    CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(partial apply for closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously(), v11);
  }

  return outlined consume of PowerZonesAlertZoneType(v6, v7, v8);
}

void (*PowerZonesAlertTargetZone.type.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  outlined copy of PowerZonesAlertZoneType(v7, v8, v9);
  return PowerZonesAlertTargetZone.type.modify;
}

void PowerZonesAlertTargetZone.type.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 48) + *(v3 + 56);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v9 = *v5;
  v8 = *(v5 + 8);
  v10 = *(v5 + 16);
  *v5 = v4;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  v11 = *(v3 + 48) + *(v3 + 56);
  if (a2)
  {
    outlined copy of PowerZonesAlertZoneType(v4, v6, v7);
    outlined copy of PowerZonesAlertZoneType(v9, v8, v10);
    outlined consume of PowerZonesAlertZoneType(v9, v8, v10);
    v27 = v9;
    v28 = v8;
    v29 = v10;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v30 = *v11;
    v31 = v12;
    v32 = v13;
    outlined copy of PowerZonesAlertZoneType(v30, v12, v13);
    v14 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v27, &v30);
    outlined consume of PowerZonesAlertZoneType(v30, v31, v32);
    if (!v14 && (*(*(v3 + 48) + *(v3 + 56) + 16) & 0xC0) == 0x40)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (one-time initialization token for healthStore != -1)
      {
        swift_once();
      }

      v15 = *(v3 + 48);
      specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      v17 = v15;
      CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v16);
    }

    outlined consume of PowerZonesAlertZoneType(v9, v8, v10);
    v18 = *(v3 + 24);
    v19 = *(v3 + 32);
    v20 = *(v3 + 40);
  }

  else
  {
    outlined copy of PowerZonesAlertZoneType(v9, v8, v10);
    outlined consume of PowerZonesAlertZoneType(v9, v8, v10);
    v27 = v9;
    v28 = v8;
    v29 = v10;
    v21 = *(v11 + 8);
    v22 = *(v11 + 16);
    v30 = *v11;
    v31 = v21;
    v32 = v22;
    outlined copy of PowerZonesAlertZoneType(v30, v21, v22);
    v23 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v27, &v30);
    outlined consume of PowerZonesAlertZoneType(v30, v31, v32);
    if (!v23 && (*(*(v3 + 48) + *(v3 + 56) + 16) & 0xC0) == 0x40)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (one-time initialization token for healthStore != -1)
      {
        swift_once();
      }

      v24 = *(v3 + 48);
      specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v26 = v24;
      CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v25);
    }

    v18 = v9;
    v19 = v8;
    v20 = v10;
  }

  outlined consume of PowerZonesAlertZoneType(v18, v19, v20);

  free(v3);
}

uint64_t key path getter for PowerZonesAlertTargetZone.defaultZonesDidLoad : PowerZonesAlertTargetZone@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AEC7080(v4);
}

uint64_t key path setter for PowerZonesAlertTargetZone.defaultZonesDidLoad : PowerZonesAlertTargetZone(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20AEC7080(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t PowerZonesAlertTargetZone.defaultZonesDidLoad.getter()
{
  v1 = (v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_20AEC7080(v3);
  return v3;
}

uint64_t PowerZonesAlertTargetZone.defaultZonesDidLoad.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

uint64_t PowerZonesAlertTargetZone.applicableRange.getter()
{
  v1 = v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (!v5)
    {
      v6 = *v1;
      return result;
    }

    if (!v3)
    {
      return 0;
    }

    v7 = *v1;
    if (v3 >> 62)
    {
      type metadata accessor for Zone();

      v8 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for Zone();
      v8 = v3;
    }

    v9 = specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(v8);

    if (v9)
    {
      outlined consume of PowerZonesAlertZoneType(v7, v3, v4);
      return 0;
    }

    result = v7;
    v10 = v3 + 8 * v7;
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x20F2E7A20](v7, v3);
      v12 = *(result + 32);
      if (v12)
      {
LABEL_17:
        v13 = *(result + 16);
        goto LABEL_21;
      }
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v11 = *(v10 + 32);

      v12 = *(result + 32);
      if (v12)
      {
        goto LABEL_17;
      }
    }

    v13 = 0.0;
LABEL_21:
    v14 = *(result + 40);
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (!v15)
    {
      if (v12 == v16)
      {
        v17 = INFINITY;
      }

      else
      {
        v17 = *(result + 24);
      }

      if (v13 <= v17)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x20F2E7A20](v7, v3);
        }

        else
        {
          v18 = *(v10 + 32);
        }

        result = outlined consume of PowerZonesAlertZoneType(v7, v3, v4);
        v19 = *(v18 + 32);
        if (v19)
        {
          v20 = *(v18 + 16);
        }

        else
        {
          v20 = 0.0;
        }

        v21 = *(v18 + 40);
        v15 = __OFSUB__(v21, 1);
        v22 = v21 - 1;
        if (!v15)
        {
          if (v19 == v22)
          {
            v23 = INFINITY;
          }

          else
          {
            v23 = *(v18 + 24);
          }

          if (v20 <= v23 && v13 <= v23)
          {
            return *&v13;
          }

          goto LABEL_44;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v5 != 2)
  {
    return 0;
  }

  return result;
}

id PowerZonesAlertTargetZone.init(type:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v16 = v12;
  *(v16 + 1) = v13;
  v16[16] = v14;
  outlined copy of PowerZonesAlertZoneType(v12, v13, v14);
  v17 = type metadata accessor for PowerZonesAlertTargetZone();
  v26.receiver = v1;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, sel_init);
  if ((v14 & 0xC0) == 0x40 && !v13)
  {
    type metadata accessor for OS_dispatch_queue();
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in PowerZonesAlertTargetZone.init(type:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_2;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v6, v22);
    _Block_release(v22);

    (*(v24 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    outlined consume of PowerZonesAlertZoneType(v12, v13, v14);
  }

  return v18;
}

uint64_t closure #1 in PowerZonesAlertTargetZone.init(type:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = v1;
    CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v2);
  }

  return result;
}

Swift::Void __swiftcall PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v1);
}

uint64_t closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_49;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void closure #1 in closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    PowerZonesAlertTargetZone._mainThread_handleConfigurationLoad(_:)(a2);
  }
}

uint64_t PowerZonesAlertTargetZone._mainThread_handleConfigurationLoad(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v11 = v6 + 8;
  v12(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  result = swift_beginAccess();
  if ((*(v5 + 16) & 0xC0) != 0x40)
  {
    return result;
  }

  v2 = *v5;
  v14 = CyclingPowerZonesConfiguration.zones.getter();
  if (v14 >> 62)
  {
LABEL_28:
    v33 = __CocoaSet.count.getter();

    if (!v33)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_5:
  v16 = CyclingPowerZonesConfiguration.zones.getter();
  if (v16 >> 62)
  {
    v23 = v16;
    v17 = __CocoaSet.count.getter();

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 0)
  {
    goto LABEL_17;
  }

  if (v2 >= v17)
  {
    CyclingPowerZonesConfiguration.zones.getter();

    v18 = CyclingPowerZonesConfiguration.zones.getter();
    v19 = v18 >> 62 ? __CocoaSet.count.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2 >= v19)
    {
      v20 = CyclingPowerZonesConfiguration.zones.getter();
      v21 = v20 >> 62 ? __CocoaSet.count.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v2 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        __break(1u);
LABEL_17:
        CyclingPowerZonesConfiguration.zones.getter();

        CyclingPowerZonesConfiguration.zones.getter();

        v2 = 0;
      }
    }
  }

LABEL_18:
  v22 = CyclingPowerZonesConfiguration.zones.getter();
  a1 = *v5;
  v23 = *(v5 + 8);
  v11 = *(v5 + 16);
  *v5 = v2;
  *(v5 + 8) = v22;
  *(v5 + 16) = 64;
  outlined copy of PowerZonesAlertZoneType(a1, v23, v11);
  outlined consume of PowerZonesAlertZoneType(a1, v23, v11);
  v35[0] = a1;
  v35[1] = v23;
  v36 = v11;
  v24 = *(v5 + 8);
  v25 = *(v5 + 16);
  v37 = *v5;
  v38 = v24;
  v39 = v25;
  outlined copy of PowerZonesAlertZoneType(v37, v24, v25);
  v26 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(v35, &v37);
  outlined consume of PowerZonesAlertZoneType(v37, v38, v39);
  if (!v26 && (*(v5 + 16) & 0xC0) == 0x40)
  {
    if (one-time initialization token for shared == -1)
    {
LABEL_21:
      if (one-time initialization token for healthStore != -1)
      {
        swift_once();
      }

      specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
      v27 = swift_allocObject();
      *(v27 + 16) = v3;
      v28 = v3;
      CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v27);

      goto LABEL_24;
    }

LABEL_32:
    swift_once();
    goto LABEL_21;
  }

LABEL_24:
  outlined consume of PowerZonesAlertZoneType(a1, v23, v11);
  v29 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  result = swift_beginAccess();
  v30 = *v29;
  if (*v29)
  {
    v31 = *(v29 + 1);

    v30(v32);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v30);
  }

  return result;
}

char *PowerZonesAlertTargetZone.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore25PowerZonesAlertTargetZoneC10CodingKeys33_AEC41C644FB5AF931BECF82E7830C478LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore25PowerZonesAlertTargetZoneC10CodingKeys33_AEC41C644FB5AF931BECF82E7830C478LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[3];
  v12 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    v13 = v10[1];
    outlined consume of (@escaping @callee_guaranteed () -> ())?(*v10);
    type metadata accessor for PowerZonesAlertTargetZone();
    swift_deallocPartialClassInstance();
  }

  else
  {
    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v24;
    v16 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    *v16 = v23;
    v16[16] = v15;
    v17 = type metadata accessor for PowerZonesAlertTargetZone();
    v25.receiver = v3;
    v25.super_class = v17;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    v18 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    swift_beginAccess();
    if ((v18[16] & 0xC0) == 0x40)
    {
      v19 = one-time initialization token for shared;
      v20 = v3;
      if (v19 != -1)
      {
        swift_once();
      }

      if (one-time initialization token for healthStore != -1)
      {
        swift_once();
      }

      specialized static CyclingPowerZonesConfigurationStore.create(with:)(static WorkoutCoreInjector.healthStore);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v22 = v20;
      CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(closure #1 in PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()partial apply, v21);
    }

    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return v3;
}

uint64_t PowerZonesAlertTargetZone.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore25PowerZonesAlertTargetZoneC10CodingKeys33_AEC41C644FB5AF931BECF82E7830C478LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore25PowerZonesAlertTargetZoneC10CodingKeys33_AEC41C644FB5AF931BECF82E7830C478LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v14 = *v10;
  v15 = v11;
  v16 = v12;
  outlined copy of PowerZonesAlertZoneType(v14, v11, v12);
  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of PowerZonesAlertZoneType(v14, v15, v16);
  return (*(v5 + 8))(v8, v4);
}

WorkoutCore::TargetZone::State __swiftcall PowerZonesAlertTargetZone.state(currentValue:)(Swift::Double currentValue)
{
  v3 = v1;
  v4 = COERCE_DOUBLE(PowerZonesAlertTargetZone.applicableRange.getter());
  if (v4 > currentValue)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v5 > currentValue)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3;
  }

  if (v6)
  {
    v8 = 0;
  }

  *v3 = v8;
  return LOBYTE(v4);
}

id PowerZonesAlertTargetZone.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PowerZonesAlertTargetZone.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PowerZonesAlertTargetZone();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance PowerZonesAlertTargetZone@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  result = PowerZonesAlertTargetZone.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static PowerZonesAlertTargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 16);
  v13 = v4;
  v14 = v5;
  v15 = v3;
  v6 = a2 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  LOBYTE(v6) = *(v6 + 16);
  v10 = v7;
  v11 = v8;
  v12 = v6;
  outlined copy of PowerZonesAlertZoneType(v4, v5, v3);
  outlined copy of PowerZonesAlertZoneType(v7, v8, v6);
  LOBYTE(v6) = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v13, &v10);
  outlined consume of PowerZonesAlertZoneType(v10, v11, v12);
  outlined consume of PowerZonesAlertZoneType(v13, v14, v15);
  return v6 & 1;
}

BOOL PowerZonesAlertTargetZone.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v18);
  if (!v19)
  {
    outlined destroy of Any?(v18);
    return 0;
  }

  type metadata accessor for PowerZonesAlertTargetZone();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v14;
  v3 = v1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 16);
  v15 = v4;
  v16 = v5;
  v17 = v3;
  v6 = &v14[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v6) = v6[16];
  v11 = v7;
  v12 = v8;
  v13 = v6;
  outlined copy of PowerZonesAlertZoneType(v4, v5, v3);
  outlined copy of PowerZonesAlertZoneType(v7, v8, v6);
  v9 = specialized static PowerZonesAlertZoneType.== infix(_:_:)(&v15, &v11);

  outlined consume of PowerZonesAlertZoneType(v11, v12, v13);
  outlined consume of PowerZonesAlertZoneType(v15, v16, v17);
  return v9;
}

unint64_t PowerZonesAlertTargetZone.description.getter()
{
  v1 = v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  outlined copy of PowerZonesAlertZoneType(*v1, v5, v6);
  v2 = PowerZonesAlertZoneType.description.getter();
  outlined consume of PowerZonesAlertZoneType(v4, v5, v6);
  return v2;
}

uint64_t static PowerZonesAlertTargetZone.canonical()()
{
  v0 = type metadata accessor for PowerZonesAlertTargetZone();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v3 = xmmword_20B427B60;
  v3[16] = -123;
  v5.receiver = v1;
  v5.super_class = v0;
  objc_msgSendSuper2(&v5, sel_init);
  return swift_dynamicCastClassUnconditional();
}

uint64_t protocol witness for static Canonical.canonical() in conformance PowerZonesAlertTargetZone@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PowerZonesAlertTargetZone();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v5 = xmmword_20B427B60;
  v5[16] = -123;
  v7.receiver = v3;
  v7.super_class = v2;
  objc_msgSendSuper2(&v7, sel_init);
  result = swift_dynamicCastClassUnconditional();
  *a1 = result;
  return result;
}

uint64_t PowerZonesAlertTargetZone.targetZoneRepresentation.getter()
{
  v1 = v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  result = 0;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v6 != 2)
    {
      return result;
    }

    v9 = v5 & 0x3F;
    type metadata accessor for TargetZone();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v3;
    *(v10 + 32) = v4;
    v11 = v10;
    if (v9 <= 3 || v9 <= 5 || v9 == 6)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        result = v11;
        v13 = v3 > 0.0 || v4 > 0.0;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v13 = 0;
    result = v11;
  }

  else
  {
    if (v6)
    {
      return result;
    }

    type metadata accessor for TargetZone();
    v7 = swift_allocObject();
    *(v7 + 16) = LOBYTE(v4);
    *(v7 + 24) = v3;
    *(v7 + 32) = v3;
    if (LOBYTE(v4) > 3u)
    {
      if (LOBYTE(v4) > 5u)
      {
        if (LOBYTE(v4) != 6)
        {
          v15 = v7;

          result = v15;
          v13 = 0;
          goto LABEL_23;
        }

        v8 = v7;
      }

      else
      {
        v8 = v7;
      }
    }

    else
    {
      v8 = v7;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = (v3 > 0.0) & ~v12;
    result = v8;
  }

LABEL_23:
  *(result + 40) = v13;
  return result;
}

uint64_t outlined copy of PowerZonesAlertZoneType(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

uint64_t outlined consume of PowerZonesAlertZoneType(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone.CodingKeys and conformance PowerZonesAlertTargetZone.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PowerZonesAlertTargetZone.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PowerZonesAlertTargetZone.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t WorkoutConfiguration.isWorkoutExtendedModeEnabled(domainAccessor:)(void *a1)
{
  if (([a1 isWorkoutExtendedModeEnabled] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.core);
    v2 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v5))
    {
      goto LABEL_14;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[UltraMode] Not enabled, returning false";
    goto LABEL_13;
  }

  type metadata accessor for GoalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
LABEL_5:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v2 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v5))
    {
      goto LABEL_14;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[UltraMode] WorkoutConfiguration not goal type, returning false";
LABEL_13:
    _os_log_impl(&dword_20AEA4000, v2, v5, v7, v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
LABEL_14:

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  v3 = [v65 goalTypeIdentifier];

  if (v3)
  {

    goto LABEL_5;
  }

  v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if ([*(&v2->isa + v10) isIndoor])
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.core);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v13, "[UltraMode] Workout is indoor, returning false", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    goto LABEL_14;
  }

  v15 = [*(&v2->isa + v10) workoutActivityType];
  v16 = [v15 identifier];

  if (v16 > 0x34 || ((1 << v16) & 0x10002001000000) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static WOLog.core);
    v41 = v2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = v45;
      *v44 = 136315138;
      v46 = [*(&v2->isa + v10) workoutActivityType];
      [v46 identifier];

      v47 = _HKWorkoutActivityNameForActivityType();
      if (v47)
      {
        v48 = v47;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52._object = 0x800000020B456540;
        v52._countAndFlagsBits = 0xD000000000000015;
        if (String.hasPrefix(_:)(v52))
        {
          v53 = String.count.getter();
          v54 = specialized Collection.dropFirst(_:)(v53, v49, v51);
          v56 = v55;
          v58 = v57;
          v60 = v59;

          v49 = MEMORY[0x20F2E6D00](v54, v56, v58, v60);
          v51 = v61;
        }
      }

      else
      {
        v51 = 0x800000020B456520;
        v49 = 0xD000000000000010;
      }

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v64);

      *(v44 + 4) = v63;
      _os_log_impl(&dword_20AEA4000, v42, v43, "[UltraMode] Workout Activity Type (%s) is not supported, returning false", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      MEMORY[0x20F2E9420](v44, -1, -1);
    }

    return 0;
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.core);
  v19 = v2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v64 = v23;
    *v22 = 136315138;
    v24 = [*(&v2->isa + v10) workoutActivityType];
    [v24 identifier];

    v25 = _HKWorkoutActivityNameForActivityType();
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30._object = 0x800000020B456540;
      v30._countAndFlagsBits = 0xD000000000000015;
      if (String.hasPrefix(_:)(v30))
      {
        v31 = String.count.getter();
        v32 = specialized Collection.dropFirst(_:)(v31, v27, v29);
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v27 = MEMORY[0x20F2E6D00](v32, v34, v36, v38);
        v29 = v39;
      }
    }

    else
    {
      v29 = 0x800000020B456520;
      v27 = 0xD000000000000010;
    }

    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v64);

    *(v22 + 4) = v62;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[UltraMode] Workout Activity Type (%s) supported, returning true", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  return 1;
}

uint64_t WorkoutConfiguration.isUltraModeEnabledOnWatch(domainAccessor:)(void *a1)
{
  if ([a1 isPowerSavingModeEnabled])
  {

    return WorkoutConfiguration.isWorkoutExtendedModeEnabled(domainAccessor:)(a1);
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.core);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[UltraMode] Low power mode not configured for workout, returning false", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    return 0;
  }
}

uint64_t specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)()
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.core);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, v1, v2, "[UltraMode] Not supported for hardware, returning false", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  return 0;
}

uint64_t specialized WorkoutConfiguration.trackRunningIsSuspended(domainAccessor:)()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v2 = [*(v0 + v1) supportsTrackRunning];
  if (!v2)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.core);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      v2 = 0;
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[UltraMode] Track running not supported with activity type";
LABEL_11:
    _os_log_impl(&dword_20AEA4000, v4, v5, v7, v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
LABEL_15:

    return v2;
  }

  if (specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)())
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.core);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      v2 = 1;
      goto LABEL_15;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[UltraMode] ultra mode enabled, track running is suspended";
    goto LABEL_11;
  }

  return 0;
}

uint64_t key path getter for ZonesAccumulator.elapsedTimes : ZonesAccumulator@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v5;
  return result;
}

uint64_t ZonesAccumulator.elapsedTimes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t ZonesAccumulator.elapsedTimes.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
  static DispatchWorkItemFlags.barrier.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in ZonesAccumulator.elapsedTimes.setter;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v7, v12, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in ZonesAccumulator.elapsedTimes.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes);
  *(a1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes) = a2;
}

uint64_t partial apply for closure #1 in ZonesAccumulator.elapsedTimes.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes) = *(v0 + 24);
}

uint64_t (*ZonesAccumulator.elapsedTimes.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  *a1 = a1[1];
  return ZonesAccumulator.elapsedTimes.modify;
}

uint64_t ZonesAccumulator.elapsedTimes.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[2];
  if ((a2 & 1) == 0)
  {
    return ZonesAccumulator.elapsedTimes.setter(*a1);
  }

  v4 = *a1;

  ZonesAccumulator.elapsedTimes.setter(v5);
}

uint64_t key path getter for ZonesAccumulator.lastProcessedEntryDate : ZonesAccumulator(void *a1)
{
  v1 = *(*a1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t key path setter for ZonesAccumulator.lastProcessedEntryDate : ZonesAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Date?(a1, &v10 - v6);
  v8 = *a2;
  return ZonesAccumulator.lastProcessedEntryDate.setter(v7);
}

uint64_t ZonesAccumulator.lastProcessedEntryDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate;
  swift_beginAccess();
  return outlined init with copy of Date?(a1 + v4, a2);
}

uint64_t partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v3 + v4, a1);
}

uint64_t ZonesAccumulator.lastProcessedEntryDate.setter(uint64_t a1)
{
  v23 = type metadata accessor for DispatchQoS();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
  static DispatchWorkItemFlags.barrier.getter();
  outlined init with copy of Date?(a1, v11);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  outlined init with take of Date?(v11, v18 + v17);
  aBlock[4] = partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.setter;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_7;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v6, v16, v19);
  _Block_release(v19);
  outlined destroy of Date?(a1);
  (*(v3 + 8))(v6, v23);
  (*(v13 + 8))(v16, v12);
}

uint64_t closure #1 in ZonesAccumulator.lastProcessedEntryDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Date?(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.setter()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in ZonesAccumulator.lastProcessedEntryDate.setter(v2, v3);
}

void (*ZonesAccumulator.lastProcessedEntryDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  MEMORY[0x28223BE20](v4);
  OS_dispatch_queue.sync<A>(execute:)();
  return ZonesAccumulator.lastProcessedEntryDate.modify;
}

void ZonesAccumulator.lastProcessedEntryDate.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    outlined init with copy of Date?(v3, v2);
    ZonesAccumulator.lastProcessedEntryDate.setter(v2);
    outlined destroy of Date?(v3);
  }

  else
  {
    ZonesAccumulator.lastProcessedEntryDate.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t key path getter for ZonesAccumulator.currentZoneIndex : ZonesAccumulator@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t ZonesAccumulator.currentZoneIndex.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t closure #1 in ZonesAccumulator.currentZoneIndex.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex + 8);
  *a2 = *(result + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex);
  *(a2 + 8) = v2;
  return result;
}

void partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t ZonesAccumulator.currentZoneIndex.setter(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
  static DispatchWorkItemFlags.barrier.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2 & 1;
  aBlock[4] = partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.setter;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v17 = _Block_copy(aBlock);
  v18 = v2;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v9, v14, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.setter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void (*ZonesAccumulator.currentZoneIndex.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v6 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v6;
  return ZonesAccumulator.currentZoneIndex.modify;
}

void ZonesAccumulator.currentZoneIndex.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  ZonesAccumulator.currentZoneIndex.setter(**a1, *(*a1 + 8));

  free(v1);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for ZonesAccumulator.activeStartDate : ZonesAccumulator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of Date?(a1, &v15 - v10);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  outlined assign with take of Date?(v11, v12 + v13);
  return swift_endAccess();
}

uint64_t ZonesAccumulator.activeStartDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

uint64_t ZonesAccumulator.activeStartDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t ZonesAccumulator.disabledForSession.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ZonesAccumulator.disabledForSession.setter(char a1)
{
  v3 = a1 & 1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  result = swift_beginAccess();
  v11 = *(v1 + v9);
  *(v1 + v9) = a1;
  if (v11 != v3)
  {
    if (a1)
    {
      return ZonesAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      ZonesAccumulator.startQuery(startDate:)();
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

uint64_t key path setter for ZonesAccumulator.disabledForSession : ZonesAccumulator(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v11 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  result = swift_beginAccess();
  v13 = *(v10 + v11);
  *(v10 + v11) = v9;
  if (v9 != v13)
  {
    if (v9)
    {
      return ZonesAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      ZonesAccumulator.startQuery(startDate:)();
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

void (*ZonesAccumulator.disabledForSession.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Date();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  swift_beginAccess();
  *(v5 + 64) = *(v1 + v9);
  return ZonesAccumulator.disabledForSession.modify;
}

void ZonesAccumulator.disabledForSession.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 64);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v5)
    {
LABEL_4:
      v8 = v2[5];
      v7 = v2[6];
      v9 = v2[3];
      v10 = v2[4];
      Date.init()();
      ZonesAccumulator.startQuery(startDate:)();
      (*(v8 + 8))(v7, v10);
      goto LABEL_8;
    }
  }

  v11 = v2[3];
  ZonesAccumulator.stopQuery()();
LABEL_8:
  free(v2[6]);

  free(v2);
}

uint64_t ZonesAccumulator.elapsedTimeInZone.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v14)
  {
    return 0;
  }

  v9 = v13;
  static Date.now.getter();
  v10 = ZonesAccumulator.elapsedTime(at:ending:)(v9, v6);
  (*(v3 + 8))(v6, v2);
  return v10;
}

uint64_t ZonesAccumulator.zonesSnapshotString.getter()
{
  v2 = v0;
  v3 = type metadata accessor for Date();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = *&v0[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
  v54 = v0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v15 = 0;
  v16 = 1 << *(v57 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v57 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = 0.0;
  if (v18)
  {
    while (1)
    {
      v21 = v15;
LABEL_9:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v20 = v20 + *(*(v57 + 56) + ((v21 << 9) | (8 * v22)));
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v57 + 64 + 8 * v21);
    ++v15;
    if (v18)
    {
      v15 = v21;
      goto LABEL_9;
    }
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(104);
  v59 = v57;
  v60 = v58;
  v23 = MEMORY[0x20F2E6D80](0x5464657370616C65, 0xEE00203A73656D69);
  MEMORY[0x28223BE20](v23);
  *(&v52 - 2) = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  v24 = Dictionary.description.getter();
  v26 = v25;

  MEMORY[0x20F2E6D80](v24, v26);

  MEMORY[0x20F2E6D80](0x203A6C61746F7420, 0xE800000000000000);
  Double.write<A>(to:)();
  v27 = MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B4568B0);
  MEMORY[0x28223BE20](v27);
  *(&v52 - 2) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v28 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v28);

  v29 = MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4568D0);
  MEMORY[0x28223BE20](v29);
  *(&v52 - 2) = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = v53;
  v14 = *(v53 + 48);
  if (v14(v12, 1, v3))
  {
    outlined destroy of Date?(v12);
    v30 = 0;
    v31 = 0;
    goto LABEL_15;
  }

  v6 = v52;
  (*(v1 + 16))(v52, v12, v3);
  outlined destroy of Date?(v12);
  if (one-time initialization token for logDateFormatter != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v32 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v34 = [v32 stringFromDate_];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v35;

  (*(v1 + 8))(v6, v3);
LABEL_15:
  v57 = v30;
  v58 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v36 = Optional.description.getter();
  v38 = v37;

  MEMORY[0x20F2E6D80](v36, v38);

  MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4568F0);
  v39 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v2[v39], v10);
  if (v14(v10, 1, v3))
  {
    outlined destroy of Date?(v10);
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v43 = v52;
    v42 = v53;
    (*(v53 + 16))(v52, v10, v3);
    outlined destroy of Date?(v10);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v44 = static WOLog.logDateFormatter;
    v45 = Date._bridgeToObjectiveC()().super.isa;
    v46 = [v44 stringFromDate_];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v47;

    (*(v42 + 8))(v43, v3);
  }

  v55 = v40;
  v56 = v41;
  v48 = Optional.description.getter();
  v50 = v49;

  MEMORY[0x20F2E6D80](v48, v50);

  return v59;
}

uint64_t ZonesAccumulator.stateSnapshotString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  v66 = v64;
  v67 = v65;
  MEMORY[0x20F2E6D80](0x6465737561507369, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v16, v17);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B456990);
  v18 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate;
  swift_beginAccess();
  outlined init with copy of Date?(v1 + v18, v15);
  v59 = *(v3 + 48);
  v19 = v59(v15, 1, v2);
  v57 = v6;
  v58 = v3;
  if (v19)
  {
    outlined destroy of Date?(v15);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    (*(v3 + 16))(v6, v15, v2);
    outlined destroy of Date?(v15);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v22 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v24 = [v22 stringFromDate_];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v25;

    (*(v3 + 8))(v6, v2);
  }

  v62 = v20;
  v63 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v26 = Optional.description.getter();
  v28 = v27;

  MEMORY[0x20F2E6D80](v26, v28);

  v29 = MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4568D0);
  v30 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  MEMORY[0x28223BE20](v29);
  *(&v55 - 2) = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v59(v13, 1, v2))
  {
    outlined destroy of Date?(v13);
    v31 = 0;
    v32 = 0;
    v34 = v57;
    v33 = v58;
  }

  else
  {
    v34 = v57;
    v33 = v58;
    (*(v58 + 16))(v57, v13, v2);
    outlined destroy of Date?(v13);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v35 = static WOLog.logDateFormatter;
    v36 = Date._bridgeToObjectiveC()().super.isa;
    v37 = [v35 stringFromDate_];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v38;

    (*(v33 + 8))(v34, v2);
  }

  v62 = v31;
  v63 = v32;
  v39 = Optional.description.getter();
  v41 = v40;

  MEMORY[0x20F2E6D80](v39, v41);

  MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4568F0);
  v42 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
  swift_beginAccess();
  v43 = v1 + v42;
  v44 = v56;
  outlined init with copy of Date?(v43, v56);
  if (v59(v44, 1, v2))
  {
    outlined destroy of Date?(v44);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    (*(v33 + 16))(v34, v44, v2);
    outlined destroy of Date?(v44);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v47 = static WOLog.logDateFormatter;
    v48 = Date._bridgeToObjectiveC()().super.isa;
    v49 = [v47 stringFromDate_];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v50;

    (*(v33 + 8))(v34, v2);
  }

  v60 = v45;
  v61 = v46;
  v51 = Optional.description.getter();
  v53 = v52;

  MEMORY[0x20F2E6D80](v51, v53);

  return v66;
}

void ZonesAccumulator.startQuery(startDate:)()
{
  swift_getObjectType();
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.zones);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &aBlock);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v34 = (*((*v6 & *v2) + 0x200))(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore12ZoneProtocol_pGSgMd, &_sSay11WorkoutCore12ZoneProtocol_pGSgMR);
    v13 = Optional.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &aBlock);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_20AEA4000, v3, v4, "%s running with zones: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  (*((*v6 & *v2) + 0x208))();
  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier);
  v19 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  if (v19)
  {
    v20 = v19;
    v21 = [v2 builder];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = objc_allocWithZone(MEMORY[0x277CCDC10]);
    v32 = partial apply for closure #1 in ZonesAccumulator.startQuery(startDate:);
    v33 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutBuilderSampleQuery, @guaranteed [HKWorkoutBuilderQuantity]?, @guaranteed Error?) -> ();
    v31 = &block_descriptor_112;
    v24 = _Block_copy(&aBlock);

    v25 = [v23 initWithQuantityType:v20 workoutBuilder:v21 quantitiesAddedHandler:v24];

    _Block_release(v24);

    [*(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore) executeQuery_];

    v26 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query);
    *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query) = v25;
  }

  else
  {
    aBlock = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    v27 = _typeName(_:qualified:)();
    MEMORY[0x20F2E6D80](v27);

    MEMORY[0x20F2E6D80](0xD00000000000002DLL, 0x800000020B4569B0);
    v34 = v18;
    type metadata accessor for HKQuantityTypeIdentifier(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t closure #1 in ZonesAccumulator.startQuery(startDate:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v12;
  aBlock[4] = partial apply for closure #1 in closure #1 in ZonesAccumulator.startQuery(startDate:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_119;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v10, v6, v15);
  _Block_release(v15);

  (*(v19 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v18);
}

void closure #1 in closure #1 in ZonesAccumulator.startQuery(startDate:)(unint64_t a1)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      swift_beginAccess();

      specialized Array.append<A>(contentsOf:)(v3);
      swift_endAccess();
    }

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      ZonesAccumulator.processIfReady()();
    }
  }
}

uint64_t ZonesAccumulator.stopQuery()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query;
  v13 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query);
  if (v13)
  {
    v14 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore);
    v15 = v13;
    [v14 stopQuery_];
    v16 = *(v1 + v12);
    *(v1 + v12) = 0;

    v17 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
    MEMORY[0x28223BE20](v18);
    *(&v26 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    if ((v29 & 1) == 0)
    {
      v27 = v15;
      v19 = v28;
      static Date.now.getter();
      v26 = ZonesAccumulator.elapsedTime(at:ending:)(v19, v11);
      v21 = v20;
      v22 = (*(v7 + 8))(v11, v6);
      MEMORY[0x28223BE20](v22);
      *(&v26 - 2) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
      OS_dispatch_queue.sync<A>(execute:)();
      v23 = v19;
      v15 = v27;
      specialized Dictionary.subscript.setter(v26, v21 & 1, v23);
      ZonesAccumulator.elapsedTimes.setter(v28);
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    v24 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate;
    swift_beginAccess();
    outlined assign with take of Date?(v5, v1 + v24);
    v25 = swift_endAccess();
    MEMORY[0x28223BE20](v25);
    *(&v26 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    (*((*MEMORY[0x277D85000] & *v1) + 0x218))(v28);
  }

  return result;
}

Swift::Void __swiftcall ZonesAccumulator.workoutBuilderDidCollectEvent()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v0 - 8);
  v1 = *(v12 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ZonesAccumulator.workoutBuilderDidCollectEvent();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v7, v3, v10);
  _Block_release(v10);

  (*(v12 + 8))(v3, v0);
  (*(v4 + 8))(v7, v11);
}

void closure #1 in ZonesAccumulator.workoutBuilderDidCollectEvent()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ZonesAccumulator.processIfReady()();
  }
}

uint64_t ZonesAccumulator.processIfReady()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v51 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v51 - v20;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x200))(v19);
  if (result)
  {

    v23 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate;
    swift_beginAccess();
    outlined init with copy of Date?(&v1[v23], v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      return outlined destroy of Date?(v13);
    }

    v55 = *(v15 + 32);
    v56 = v21;
    v55();
    v24 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples;
    swift_beginAccess();
    v25 = *&v1[v24];
    if (v25 >> 62)
    {
      if (v25 < 0)
      {
        v50 = *&v1[v24];
      }

      if (__CocoaSet.count.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v54 = v24;
      if (v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] != 1)
      {
        v52 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue];
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        ObjectType = v15;
        (*(v15 + 16))(v18, v56, v14);
        v37 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v53;
        *(v38 + 24) = v25;
        (v55)(v38 + v37, v18, v14);
        v67 = partial apply for closure #2 in ZonesAccumulator.processIfReady();
        v68 = v38;
        aBlock = MEMORY[0x277D85DD0];
        v64 = 1107296256;
        v65 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v66 = &block_descriptor_87;
        v39 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v62 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v40 = v61;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x20F2E7580](0, v9, v5, v39);
        _Block_release(v39);
        (*(v60 + 8))(v5, v40);
        (*(v58 + 8))(v9, v59);

        v34 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }

      v52 = v5;

      v26 = [v1 builder];
      v27 = [v26 currentWorkoutActivity];

      v53 = v27;
      if (v27)
      {
        v51[1] = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue];
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v15 + 16))(v18, v56, v14);
        v29 = *(v15 + 80);
        ObjectType = v15;
        v30 = (v29 + 40) & ~v29;
        v31 = swift_allocObject();
        v51[0] = v28;
        v31[2] = v28;
        v31[3] = v25;
        v32 = v53;
        v31[4] = v53;
        (v55)(v31 + v30, v18, v14);
        v67 = partial apply for closure #1 in ZonesAccumulator.processIfReady();
        v68 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v64 = 1107296256;
        v65 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v66 = &block_descriptor_94;
        v33 = _Block_copy(&aBlock);

        v55 = v32;
        static DispatchQoS.unspecified.getter();
        v34 = MEMORY[0x277D84F90];
        v62 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v35 = v52;
        v36 = v61;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x20F2E7580](0, v9, v35, v33);
        _Block_release(v33);

        (*(v60 + 8))(v35, v36);
        (*(v58 + 8))(v9, v59);

LABEL_10:
        (*(ObjectType + 8))(v56, v14);
        v41 = *&v1[v54];
        *&v1[v54] = v34;
      }

      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static WOLog.zones);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        aBlock = v46;
        *v45 = 136315138;
        v47 = _typeName(_:qualified:)();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &aBlock);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_20AEA4000, v43, v44, "%s currentWorkoutActivity is nil, skipping update", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x20F2E9420](v46, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);
      }
    }

    return (*(v15 + 8))(v56, v14);
  }

  return result;
}

uint64_t closure #1 in ZonesAccumulator.processIfReady()(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v41 = a3;
  v40 = type metadata accessor for DateInterval();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Date();
  v9 = *(v39 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v39);
  v37 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v42 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v32 = v16;
      v33 = a4;
      v16 = 0;
      v35 = a2 & 0xFFFFFFFFFFFFFF8;
      v36 = a2 & 0xC000000000000001;
      v34 = (v6 + 8);
      v18 = v9 + 1;
      while (1)
      {
        if (v36)
        {
          v19 = MEMORY[0x20F2E7A20](v16, a2);
        }

        else
        {
          if (v16 >= *(v35 + 16))
          {
            goto LABEL_16;
          }

          v19 = *(a2 + 8 * v16 + 32);
        }

        v9 = v19;
        v20 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        a4 = a2;
        v21 = [v19 dateInterval];
        v22 = v38;
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.start.getter();
        (*v34)(v22, v40);
        v23 = [v41 startDate];
        v24 = v37;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = static Date.> infix(_:_:)();
        v25 = *v18;
        v26 = v24;
        v27 = v39;
        (*v18)(v26, v39);
        v25(v14, v27);
        if (v6)
        {
          v6 = &v42;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v28 = *(v42 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        a2 = a4;
        ++v16;
        if (v20 == i)
        {
          v29 = v42;
          v16 = v32;
          a4 = v33;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_19:
    v30 = [v41 workoutEvents];
    _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(v29, v31, a4);
  }

  return result;
}

void *closure #2 in ZonesAccumulator.processIfReady()(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [result builder];
    v8 = [v7 workoutEvents];

    _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(a2, v9, a3);
  }

  return result;
}

uint64_t ZonesAccumulator.Entry.logString.getter(void *a1, char a2)
{
  v66 = type metadata accessor for Date();
  v4 = *(v66 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v66);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateInterval();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v13 + 8);
  v64 = v10;
  v65 = v13 + 8;
  if (a2)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v69 = 0x282020746E657665;
    v70 = 0xEF203A7472617473;
    v15 = [a1 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.start.getter();
    v62 = *v14;
    v63 = a1;
    v62(v12, v8);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v16 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [v16 stringFromDate_];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v4[1];
    v23 = v66;
    v22(v7, v66);
    MEMORY[0x20F2E6D80](v19, v21);

    MEMORY[0x20F2E6D80](0x203A646E65202CLL, 0xE700000000000000);
    v24 = v63;
    v25 = [v63 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.end.getter();
    v62(v12, v64);
    v26 = Date._bridgeToObjectiveC()().super.isa;
    v27 = [v16 stringFromDate_];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v22(v7, v23);
    MEMORY[0x20F2E6D80](v28, v30);

    MEMORY[0x20F2E6D80](0x203A65707974202CLL, 0xE800000000000000);
    [v24 type];
    v31 = _HKWorkoutEventTypeName();
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v67 = v33;
    v68 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v57 = Optional.description.getter();
    v59 = v58;

    MEMORY[0x20F2E6D80](v57, v59);
  }

  else
  {
    v63 = v4;
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v69 = 0x2820656C706D6173;
    v70 = 0xEF203A7472617473;
    v36 = [a1 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.start.getter();
    v62 = *v14;
    v62(v12, v8);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v37 = static WOLog.logDateFormatter;
    v38 = Date._bridgeToObjectiveC()().super.isa;
    v39 = [v37 stringFromDate_];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = v63[1];
    v44 = v66;
    v43(v7, v66);
    MEMORY[0x20F2E6D80](v40, v42);

    MEMORY[0x20F2E6D80](0x203A646E65202CLL, 0xE700000000000000);
    v45 = a1;
    v46 = [a1 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.end.getter();
    v62(v12, v64);
    v47 = Date._bridgeToObjectiveC()().super.isa;
    v48 = [v37 stringFromDate_];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v43(v7, v44);
    MEMORY[0x20F2E6D80](v49, v51);

    MEMORY[0x20F2E6D80](0x69746E617571202CLL, 0xEC000000203A7974);
    v52 = [v45 quantity];
    v53 = [v52 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    MEMORY[0x20F2E6D80](v54, v56);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  }

  return v69;
}

void ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v287 = a3;
  ObjectType = swift_getObjectType();
  v283 = type metadata accessor for DispatchWorkItemFlags();
  v282 = *(v283 - 8);
  v8 = *(v282 + 64);
  MEMORY[0x28223BE20](v283);
  v280 = &v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for DispatchQoS();
  v279 = *(v281 - 8);
  v10 = *(v279 + 64);
  MEMORY[0x28223BE20](v281);
  v278 = &v275 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v301 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v301);
  v277 = &v275 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v286 = &v275 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v304 = &v275 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v289 = &v275 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v298 = &v275 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v275 - v23;
  v25 = type metadata accessor for DateInterval();
  v320 = *(v25 - 8);
  v321 = v25;
  v26 = v320[8];
  MEMORY[0x28223BE20](v25);
  v322 = &v275 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = type metadata accessor for Date();
  v319 = *(v315 - 8);
  v28 = *(v319 + 8);
  v29 = MEMORY[0x28223BE20](v315);
  v276 = &v275 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v285 = &v275 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v275 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v288 = &v275 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v297 = &v275 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v310 = &v275 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v296 = &v275 - v43;
  MEMORY[0x28223BE20](v42);
  v309 = &v275 - v44;
  v45 = type metadata accessor for DispatchPredicate();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v49 = (&v275 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v325 = v4;
  v50 = *&v4[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue];
  *v49 = v50;
  (*(v46 + 104))(v49, *MEMORY[0x277D85200], v45);
  v51 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  (*(v46 + 8))(v49, v45);
  if ((v50 & 1) == 0)
  {
    goto LABEL_129;
  }

  v318 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v53 = MEMORY[0x277D84F90];
    v284 = v35;
    v324 = a1;
    if (i)
    {
      aBlock = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      v54 = ObjectType;
      v53 = aBlock;
      v55 = v324;
      if ((v324 & 0xC000000000000001) != 0)
      {
        v56 = 0;
        do
        {
          v57 = MEMORY[0x20F2E7A20](v56, v55);
          aBlock = v53;
          v59 = *(v53 + 2);
          v58 = *(v53 + 3);
          if (v59 >= v58 >> 1)
          {
            v61 = v57;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
            v55 = v324;
            v57 = v61;
            v53 = aBlock;
          }

          ++v56;
          *(v53 + 2) = v59 + 1;
          v60 = &v53[16 * v59];
          *(v60 + 4) = v57;
          v60[40] = 0;
        }

        while (i != v56);
      }

      else
      {
        v62 = (v324 + 32);
        do
        {
          v63 = *v62;
          aBlock = v53;
          v65 = *(v53 + 2);
          v64 = *(v53 + 3);
          v66 = v63;
          if (v65 >= v64 >> 1)
          {
            v68 = v66;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
            v66 = v68;
            v53 = aBlock;
          }

          *(v53 + 2) = v65 + 1;
          v67 = &v53[16 * v65];
          *(v67 + 4) = v66;
          v67[40] = 0;
          ++v62;
          --i;
        }

        while (i);
      }

      ObjectType = v54;
    }

    if (a2 >> 62)
    {
      v69 = __CocoaSet.count.getter();
    }

    else
    {
      v69 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = MEMORY[0x277D84F90];
    v307 = ObjectType;
    v317 = a2 >> 62;
    if (v69)
    {
      aBlock = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69 & ~(v69 >> 63), 0);
      if (v69 < 0)
      {
        goto LABEL_133;
      }

      v70 = aBlock;
      if ((a2 & 0xC000000000000001) != 0)
      {
        ObjectType = 0;
        do
        {
          v71 = MEMORY[0x20F2E7A20](ObjectType, a2);
          aBlock = v70;
          v73 = *(v70 + 2);
          v72 = *(v70 + 3);
          if (v73 >= v72 >> 1)
          {
            v75 = v71;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1);
            v71 = v75;
            v70 = aBlock;
          }

          ++ObjectType;
          *(v70 + 2) = v73 + 1;
          v74 = &v70[16 * v73];
          *(v74 + 4) = v71;
          v74[40] = 1;
        }

        while (v69 != ObjectType);
      }

      else
      {
        v76 = (a2 + 32);
        do
        {
          v77 = *v76;
          aBlock = v70;
          v79 = *(v70 + 2);
          v78 = *(v70 + 3);
          ObjectType = (v79 + 1);
          v80 = v77;
          if (v79 >= v78 >> 1)
          {
            v82 = v80;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
            v80 = v82;
            v70 = aBlock;
          }

          *(v70 + 2) = ObjectType;
          v81 = &v70[16 * v79];
          *(v81 + 4) = v80;
          v81[40] = 1;
          ++v76;
          --v69;
        }

        while (v69);
      }
    }

    aBlock = v53;
    specialized Array.append<A>(contentsOf:)(v70);

    specialized MutableCollection<>.sort(by:)(&aBlock);
    v323 = 0;
    v302 = v24;

    a1 = aBlock;
    v326 = *&v325[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator];
    if (!v326)
    {
      goto LABEL_43;
    }

    v24 = *(aBlock + 2);
    if (!v24)
    {
      break;
    }

    aBlock = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v83 = 0;
    v84 = aBlock;
    v35 = (a1 + 40);
    while (v83 < *(a1 + 16))
    {
      v85 = a2;
      v86 = v84;
      ObjectType = *(v35 - 1);
      v87 = *v35;
      v88 = ObjectType;
      v89 = v88;
      if (v87)
      {
        v90 = v88;
      }

      else
      {
        ObjectType = static ZonesAccumulator.threeSecondAverageSample(for:with:)(v88, v326);
      }

      v84 = v86;
      aBlock = v86;
      v91 = *(v86 + 2);
      v92 = *(v84 + 3);
      if (v91 >= v92 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v91 + 1, 1);
        v84 = aBlock;
      }

      ++v83;
      *(v84 + 2) = v91 + 1;
      v93 = &v84[16 * v91];
      *(v93 + 4) = ObjectType;
      v93[40] = v87;
      v35 += 16;
      a2 = v85;
      if (v24 == v83)
      {
        v94 = v84;

        a1 = v94;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    ;
  }

  a1 = MEMORY[0x277D84F90];
LABEL_43:
  v290 = a1;
  v95 = v322;
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for Logger();
  v97 = __swift_project_value_buffer(v96, static WOLog.zones);
  v98 = v290;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v99 = v325;
  v312 = v97;
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();

  v102 = os_log_type_enabled(v100, v101);
  v325 = v99;
  if (v102)
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock = v104;
    *v103 = 136316418;
    v105 = _typeName(_:qualified:)();
    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, &aBlock);

    *(v103 + 4) = v107;
    *(v103 + 12) = 2048;
    v108 = *(v98 + 16);

    *(v103 + 14) = v108;

    *(v103 + 22) = 2080;
    v109 = ZonesAccumulator.zonesSnapshotString.getter();
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, &aBlock);

    *(v103 + 24) = v111;
    *(v103 + 32) = 2048;
    if (v318)
    {
      v112 = __CocoaSet.count.getter();
    }

    else
    {
      v112 = *((v324 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v103 + 34) = v112;

    *(v103 + 42) = 2048;
    v95 = v322;
    if (v317)
    {
      v113 = __CocoaSet.count.getter();
    }

    else
    {
      v113 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v103 + 44) = v113;

    *(v103 + 52) = 2080;
    v114 = ZonesAccumulator.stateSnapshotString.getter();
    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, &aBlock);

    *(v103 + 54) = v116;
    _os_log_impl(&dword_20AEA4000, v100, v101, "%s begin processing %ld sorted entries by date, %s (%ld samples, %ld events), state (%s)", v103, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v104, -1, -1);
    MEMORY[0x20F2E9420](v103, -1, -1);

    v98 = v290;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v117 = *(v98 + 16);
  v118 = v302;
  ObjectType = v315;
  if (v117)
  {
    v119 = v95;
    v308 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
    v291 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate;
    v293 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused;
    v305 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    v300 = 0;
    v299 = 0;
    v294 = 0;
    v292 = 0;
    ++v320;
    v120 = v319 + 48;
    v303 = (v319 + 32);
    v314 = v319 + 8;
    v275 = v319 + 16;
    v306 = (v319 + 56);
    v326 = (v98 + 40);
    *&v121 = 136315650;
    v295 = v121;
    v311 = v319 + 48;
    while (1)
    {
      v324 = v117;
      v24 = *v326;
      v319 = *(v326 - 1);
      v35 = v319;
      v123 = [v35 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24)
      {
        LODWORD(v317) = v24;
        DateInterval.end.getter();
        v24 = *v320;
        (*v320)(v119, v321);
        v124 = v298;
        outlined init with copy of Date?(&v325[v305], v298);
        v125 = *v120;
        if ((*v120)(v124, 1, ObjectType) == 1)
        {
          v126 = v118;
          v127 = v297;
          static Date.distantPast.getter();
          a1 = v125;
          if ((v125)(v124, 1, ObjectType) != 1)
          {
            outlined destroy of Date?(v124);
          }
        }

        else
        {
          a1 = v125;
          v126 = v118;
          v127 = v297;
          (*v303)(v297, v124, ObjectType);
        }

        v134 = v310;
        v135 = static Date.> infix(_:_:)();
        a2 = v314;
        v136 = v127;
        v137 = *v314;
        (*v314)(v136, ObjectType);
        v313 = v137;
        v137(v134, ObjectType);
        if (v135)
        {
          v318 = v24;
          LODWORD(v138) = v317;
          goto LABEL_71;
        }

        if (__OFADD__(v300, 1))
        {
          goto LABEL_128;
        }

        ++v300;
        v122 = v324;
        v120 = v311;
        v118 = v126;
      }

      else
      {
        DateInterval.end.getter();
        v318 = *v320;
        v128 = v318(v119, v321);
        v129 = *&v325[v308];
        MEMORY[0x28223BE20](v128);
        *(&v275 - 2) = v130;
        v131 = v323;
        OS_dispatch_queue.sync<A>(execute:)();
        a1 = *v120;
        v132 = (*v120)(v118, 1, ObjectType);
        v323 = v131;
        if (v132 == 1)
        {
          v133 = v296;
          static Date.distantPast.getter();
          if ((a1)(v118, 1, ObjectType) != 1)
          {
            outlined destroy of Date?(v118);
          }
        }

        else
        {
          v133 = v296;
          (*v303)(v296, v118, ObjectType);
        }

        v139 = v309;
        v140 = static Date.> infix(_:_:)();
        a2 = v314;
        v141 = *v314;
        (*v314)(v133, ObjectType);
        v313 = v141;
        v141(v139, ObjectType);
        v119 = v322;
        if (v140)
        {
          LODWORD(v138) = v24;
LABEL_71:
          v142 = v325;
          v143 = v325;
          v144 = v35;
          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.default.getter();

          v316 = v144;
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            aBlock = v148;
            *v147 = v295;
            v149 = _typeName(_:qualified:)();
            v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &aBlock);

            *(v147 + 4) = v151;
            *(v147 + 12) = 2080;
            v152 = ZonesAccumulator.Entry.logString.getter(v319, v138);
            v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, &aBlock);

            *(v147 + 14) = v154;
            *(v147 + 22) = 2080;
            v155 = v143;
            v156 = ZonesAccumulator.stateSnapshotString.getter();
            v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, &aBlock);

            *(v147 + 24) = v158;
            _os_log_impl(&dword_20AEA4000, v145, v146, "%s begin process %s, state (%s)", v147, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v148, -1, -1);
            v159 = v147;
            v142 = v325;
            MEMORY[0x20F2E9420](v159, -1, -1);

            if ((v138 & 1) == 0)
            {
              goto LABEL_73;
            }

LABEL_83:
            v182 = [v316 type];
            v183 = v315;
            if (v182 == 1)
            {
              LODWORD(v317) = v138;
              v189 = *&v142[v308];
              MEMORY[0x28223BE20](1);
              v162 = v155;
              *(&v275 - 2) = v155;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
              v190 = v323;
              OS_dispatch_queue.sync<A>(execute:)();
              v323 = v190;
              if (v328)
              {
                v167 = v316;
              }

              else
              {
                v202 = aBlock;
                v167 = v316;
                v203 = [v316 dateInterval];
                v204 = v322;
                static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

                v205 = v288;
                DateInterval.end.getter();
                v318(v204, v321);
                v206 = ZonesAccumulator.elapsedTime(at:ending:)(v202, v205);
                v208 = v207;
                v209 = v313(v205, v183);
                MEMORY[0x28223BE20](v209);
                *(&v275 - 2) = v155;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
                v210 = v323;
                OS_dispatch_queue.sync<A>(execute:)();
                v323 = v210;
                v162 = v155;
                v211 = v208 & 1;
                v142 = v325;
                specialized Dictionary.subscript.setter(v206, v211, v202);
                ZonesAccumulator.elapsedTimes.setter(aBlock);
              }

              v212 = 1;
              v213 = v304;
              (*v306)(v304, 1, 1, v183);
              v138 = v291;
              swift_beginAccess();
              outlined assign with take of Date?(v213, &v142[v138]);
              swift_endAccess();
              LOBYTE(v138) = v317;
              goto LABEL_117;
            }

            if (v182 == 2)
            {
              v184 = v138;
              v185 = *&v142[v308];
              MEMORY[0x28223BE20](2);
              *(&v275 - 2) = v155;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
              v186 = v323;
              OS_dispatch_queue.sync<A>(execute:)();
              if (v328)
              {
                v323 = v186;
                v187 = 1;
                v188 = v286;
                v162 = v155;
              }

              else
              {
                v197 = [v316 dateInterval];
                v198 = v322;
                static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

                DateInterval.end.getter();
                v199 = v318(v198, v321);
                MEMORY[0x28223BE20](v199);
                v162 = v155;
                *(&v275 - 2) = v155;
                v200 = v277;
                OS_dispatch_queue.sync<A>(execute:)();
                v323 = v186;
                if ((a1)(v200, 1, v183) == 1)
                {
                  v201 = v276;
                  (*v275)(v276, v287, v183);
                  if ((a1)(v200, 1, v183) != 1)
                  {
                    outlined destroy of Date?(v200);
                  }
                }

                else
                {
                  v201 = v276;
                  (*v303)(v276, v200, v183);
                }

                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
                v223 = v285;
                v224 = dispatch thunk of static Comparable.>= infix(_:_:)();
                v225 = (v224 & 1) == 0;
                if (v224)
                {
                  v226 = v223;
                }

                else
                {
                  v226 = v201;
                }

                if (!v225)
                {
                  v223 = v201;
                }

                v313(v226, v183);
                v188 = v286;
                (*v303)(v286, v223, v183);
                v187 = 0;
              }

              v167 = v316;
              (*v306)(v188, v187, 1, v183);
              v227 = v291;
              swift_beginAccess();
              outlined assign with take of Date?(v188, &v142[v227]);
              swift_endAccess();
              v212 = 0;
              LOBYTE(v138) = v184;
LABEL_117:
              v142[v293] = v212;
              v294 = 1;
              v292 = 1;
            }

            else
            {
              v162 = v155;
              v167 = v316;
            }

            v228 = [v167 dateInterval];
            v229 = v322;
            static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

            v230 = v304;
            DateInterval.end.getter();
            v318(v229, v321);
            (*v306)(v230, 0, 1, v183);
            v231 = v305;
            swift_beginAccess();
            outlined assign with take of Date?(v230, &v142[v231]);
            swift_endAccess();
LABEL_119:
            v232 = v162;
            v233 = v167;
            v234 = Logger.logObject.getter();
            v235 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v234, v235))
            {
              v236 = swift_slowAlloc();
              v237 = swift_slowAlloc();
              aBlock = v237;
              *v236 = v295;
              v238 = _typeName(_:qualified:)();
              v240 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v238, v239, &aBlock);

              *(v236 + 4) = v240;
              *(v236 + 12) = 2080;
              v241 = ZonesAccumulator.Entry.logString.getter(v319, v138);
              v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v242, &aBlock);

              *(v236 + 14) = v243;
              *(v236 + 22) = 2080;
              v244 = ZonesAccumulator.stateSnapshotString.getter();
              v246 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v245, &aBlock);

              *(v236 + 24) = v246;
              _os_log_impl(&dword_20AEA4000, v234, v235, "%s end   process %s, state (%s)", v236, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v237, -1, -1);
              MEMORY[0x20F2E9420](v236, -1, -1);
            }

            v118 = v302;
            ObjectType = v315;
            v122 = v324;
            v120 = v311;
            v119 = v322;
            goto LABEL_57;
          }

          v155 = v143;

          if (v138)
          {
            goto LABEL_83;
          }

LABEL_73:
          LODWORD(v317) = v138;
          v161 = *&v142[v308];
          MEMORY[0x28223BE20](v160);
          v162 = v155;
          *(&v275 - 2) = v155;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
          v163 = v323;
          OS_dispatch_queue.sync<A>(execute:)();
          v164 = aBlock;
          v165 = v142;
          v166 = v328;
          v167 = v316;
          v168 = ZonesAccumulator.zoneIndex(for:)(v316);
          v170 = ZonesAccumulator.currentZoneIndex.setter(v168, v169 & 1);
          if ((v165[v293] & 1) == 0)
          {
            if ((v166 & 1) == 0)
            {
              v171 = [v167 dateInterval];
              v172 = v322;
              static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

              v173 = v164;
              v174 = v162;
              v175 = v288;
              DateInterval.end.getter();
              v318(v172, v321);
              v323 = ZonesAccumulator.elapsedTime(at:ending:)(v173, v175);
              v177 = v176;
              v178 = v313(v175, v315);
              MEMORY[0x28223BE20](v178);
              *(&v275 - 2) = v174;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
              OS_dispatch_queue.sync<A>(execute:)();
              v162 = v174;
              v164 = v173;
              specialized Dictionary.subscript.setter(v323, v177 & 1, v173);
              v170 = ZonesAccumulator.elapsedTimes.setter(aBlock);
            }

            MEMORY[0x28223BE20](v170);
            *(&v275 - 2) = v162;
            OS_dispatch_queue.sync<A>(execute:)();
            if (v328)
            {
              v179 = 1;
              v180 = v289;
              v181 = v315;
            }

            else
            {
              v191 = v167;
              v192 = v162;
              v193 = [v191 dateInterval];
              v194 = v322;
              static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

              v195 = v284;
              DateInterval.end.getter();
              v318(v194, v321);
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
              v196 = v287;
              v181 = v315;
              if (dispatch thunk of static Comparable.>= infix(_:_:)())
              {
                v313(v195, v181);
                v180 = v289;
                (*v275)(v289, v196, v181);
              }

              else
              {
                v180 = v289;
                (*v303)(v289, v195, v181);
              }

              v179 = 0;
              v162 = v192;
              v167 = v316;
            }

            (*v306)(v180, v179, 1, v181);
            v214 = v325;
            v215 = v291;
            swift_beginAccess();
            outlined assign with take of Date?(v180, &v214[v215]);
            swift_endAccess();
            v170 = (*((*MEMORY[0x277D85000] & *v162) + 0x210))(v167);
          }

          MEMORY[0x28223BE20](v170);
          *(&v275 - 2) = v162;
          OS_dispatch_queue.sync<A>(execute:)();
          v323 = v163;
          if (v328)
          {
            v216 = v315;
            LOBYTE(v138) = v317;
            v217 = v318;
            if (v166)
            {
              goto LABEL_108;
            }
          }

          else
          {
            if (aBlock == v164)
            {
              v218 = v166;
            }

            else
            {
              v218 = 1;
            }

            v216 = v315;
            LOBYTE(v138) = v317;
            v217 = v318;
            if ((v218 & 1) == 0)
            {
              goto LABEL_108;
            }
          }

          v292 = 1;
LABEL_108:
          v219 = [v167 dateInterval];
          v220 = v322;
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          v221 = v304;
          DateInterval.end.getter();
          v217(v220, v321);
          v222 = *v306;
          v294 = 1;
          v222(v221, 0, 1, v216);
          ZonesAccumulator.lastProcessedEntryDate.setter(v221);
          goto LABEL_119;
        }

        if (__OFADD__(v299, 1))
        {
          goto LABEL_127;
        }

        ++v299;
        v122 = v324;
        v120 = v311;
      }

LABEL_57:
      v326 += 16;
      v117 = v122 - 1;
      if (!v117)
      {
        goto LABEL_122;
      }
    }
  }

  v300 = 0;
  v299 = 0;
  v294 = 0;
  v292 = 0;
LABEL_122:
  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v247 = static OS_dispatch_queue.main.getter();
  v248 = swift_allocObject();
  v249 = v325;
  swift_unknownObjectWeakInit();
  v250 = swift_allocObject();
  *(v250 + 16) = v292 & 1;
  *(v250 + 24) = v248;
  *(v250 + 32) = v294 & 1;
  *(v250 + 40) = v307;
  v331 = partial apply for specialized closure #5 in ZonesAccumulator.process(samples:workoutEvents:activityStartDate:);
  v332 = v250;
  aBlock = MEMORY[0x277D85DD0];
  v328 = 1107296256;
  v329 = thunk for @escaping @callee_guaranteed () -> ();
  v330 = &block_descriptor_71;
  v251 = _Block_copy(&aBlock);

  v252 = v278;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v253 = v280;
  v254 = v283;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v252, v253, v251);
  _Block_release(v251);

  (*(v282 + 8))(v253, v254);
  (*(v279 + 8))(v252, v281);
  v255 = v290;

  v256 = v249;
  v257 = Logger.logObject.getter();
  v258 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v257, v258))
  {

    swift_bridgeObjectRelease_n();
    return;
  }

  v259 = swift_slowAlloc();
  v260 = swift_slowAlloc();
  aBlock = v260;
  *v259 = 136316674;
  v261 = _typeName(_:qualified:)();
  v263 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v261, v262, &aBlock);

  *(v259 + 4) = v263;
  *(v259 + 12) = 2048;
  v264 = *(v255 + 16);

  *(v259 + 14) = v264;

  *(v259 + 22) = 2080;
  v265 = ZonesAccumulator.zonesSnapshotString.getter();
  v267 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v265, v266, &aBlock);

  *(v259 + 24) = v267;
  *(v259 + 32) = 2048;
  v268 = v299;
  *(v259 + 34) = v299;
  *(v259 + 42) = 2048;
  v269 = v300;
  *(v259 + 44) = v300;
  *(v259 + 52) = 2048;
  v270 = __OFADD__(v268, v269);
  v271 = v268 + v269;
  if (!v270)
  {
    *(v259 + 54) = v271;
    *(v259 + 62) = 2080;
    v272 = ZonesAccumulator.stateSnapshotString.getter();
    v274 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v272, v273, &aBlock);

    *(v259 + 64) = v274;
    _os_log_impl(&dword_20AEA4000, v257, v258, "%s end   processing %ld sorted entries by date, %s, dropped (samples: %ld, events: %ld, total: %ld), state (%s)", v259, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v260, -1, -1);
    MEMORY[0x20F2E9420](v259, -1, -1);

    return;
  }

LABEL_134:
  __break(1u);

  __break(1u);
}

uint64_t closure #3 in ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(id *a1, void **a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = *a2;
  v18 = [*a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.end.getter();
  v19 = *(v5 + 8);
  v19(v8, v4);
  v20 = [v17 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.end.getter();
  v19(v8, v4);
  LOBYTE(v8) = static Date.< infix(_:_:)();
  v21 = *(v10 + 8);
  v21(v14, v9);
  v21(v16, v9);
  return v8 & 1;
}

id static ZonesAccumulator.threeSecondAverageSample(for:with:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = objc_opt_self();
  v14 = [v54 wattUnit];
  v15 = [a1 quantity];
  [v15 doubleValueForUnit_];
  v17 = v16;

  v18 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.end.getter();
  v19 = *(v5 + 8);
  v19(v8, v4);
  Date.timeIntervalSinceReferenceDate.getter();
  WindowedAccumulator.add(_:position:)(v17, v20);
  (*(v10 + 8))(v13, v9);
  if (*(a2 + 24))
  {
    v22 = *(*(a2 + 48) + 16);
    if (v22)
    {
      v23 = *(a2 + 56) / v22;
    }

    else
    {
      v23 = 0.0;
    }
  }

  else
  {
    WindowedAccumulator.positionWindowMean()(v21);
    if (v25)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v24;
    }
  }

  v26 = [v54 wattUnit];
  v27 = [objc_opt_self() quantityWithUnit:v26 doubleValue:v23];

  v28 = v27;
  v29 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = objc_allocWithZone(MEMORY[0x277CCDC08]);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v32 = [v30 initWithQuantity:v28 dateInterval:isa];

  v19(v8, v4);
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static WOLog.zones);
  v34 = a1;
  v35 = v32;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v39;
    *v38 = 136315650;
    v40 = _typeName(_:qualified:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v55);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2048;
    v43 = [v34 quantity];
    v44 = v54;
    v45 = [v54 wattUnit];
    [v43 doubleValueForUnit_];
    v47 = v46;

    *(v38 + 14) = v47;
    *(v38 + 22) = 2048;
    v48 = [v35 quantity];
    v49 = [v44 wattUnit];
    [v48 doubleValueForUnit_];
    v51 = v50;

    *(v38 + 24) = v51;
    _os_log_impl(&dword_20AEA4000, v36, v37, "%s converted sample (%f W) to 3s average sample (%f W)", v38, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x20F2E9420](v39, -1, -1);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  return v35;
}

void specialized closure #5 in ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong update];
    }
  }

  if (a3)
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      (*((*MEMORY[0x277D85000] & v6->isa) + 0x220))();
    }

    else
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static WOLog.zones);
      v7 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15 = v11;
        *v10 = 136315138;
        v12 = _typeName(_:qualified:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_20AEA4000, v7, v9, "%s deallocated before needsMetadataUpdate processed", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x20F2E9420](v11, -1, -1);
        MEMORY[0x20F2E9420](v10, -1, -1);
      }
    }
  }
}

uint64_t ZonesAccumulator.zoneIndex(for:)(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x200))();
  if (!result)
  {
    return 0;
  }

  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
LABEL_10:

    return 0;
  }

  v6 = 0;
  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit);
  v8 = result + 32;
  while (v6 < *(v4 + 16))
  {
    outlined init with copy of ZoneProtocol(v8, v17);
    v9 = v18;
    v10 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    v14 = [a1 quantity];
    [v14 doubleValueForUnit_];
    v16 = v15;

    if (v11 > v16)
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
      if (v16 < v13)
      {

        return v6;
      }
    }

    ++v6;
    v8 += 40;
    if (v5 == v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t ZonesAccumulator.elapsedTime(at:ending:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v59[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59[-v16];
  v18 = *&v2[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
  v65 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = v69;
  v20 = *(v69 + 16);
  v21 = 0.0;
  v64 = a1;
  if (v20 && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v23 & 1) != 0))
  {
    v24 = 0;
    v21 = *(*(v19 + 56) + 8 * v22);
  }

  else
  {
    v24 = 1;
  }

  v25 = a2;

  v26 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v3[v26], v17);
  v27 = (*(v7 + 48))(v17, 1, v6);
  if (v27)
  {
    outlined destroy of Date?(v17);
    v28 = 0.0;
    v29 = v21;
    if (v24)
    {
      return 0;
    }
  }

  else
  {
    (*(v7 + 16))(v13, v17, v6);
    outlined destroy of Date?(v17);
    Date.distance(to:)();
    v28 = v31;
    (*(v7 + 8))(v13, v6);
    v32 = 0.0;
    if (v24)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v21;
    }

    if (v28 >= 0.0)
    {
      v32 = v28;
    }

    if (*&v3[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] < v32)
    {
      v32 = *&v3[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout];
    }

    v29 = v33 + v32;
  }

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.zones);
  (*(v7 + 16))(v11, v25, v6);
  v35 = v3;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v62 = v37;
    v60 = v27 != 0;
    v38 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68 = v61;
    *v38 = 136316674;
    v39 = _typeName(_:qualified:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v68);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2048;
    *(v38 + 14) = v64;
    *(v38 + 22) = 2048;
    *(v38 + 24) = v29;
    *(v38 + 32) = 2080;
    v66 = v21;
    v67 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v42 = Optional.description.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v68);

    *(v38 + 34) = v44;
    *(v38 + 42) = 2080;
    v66 = v28;
    v67 = v60;
    v45 = Optional.description.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v68);

    *(v38 + 44) = v47;
    *(v38 + 52) = 2080;
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v48 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v50 = [v48 stringFromDate_];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    (*(v7 + 8))(v11, v6);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v68);

    *(v38 + 54) = v54;
    *(v38 + 62) = 2080;
    v55 = ZonesAccumulator.stateSnapshotString.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v68);

    *(v38 + 64) = v57;
    _os_log_impl(&dword_20AEA4000, v36, v62, "%s zone %ld elapsedTime: %f (previous elapsedTime: %s, distance %s to: %s) state (%s)", v38, 0x48u);
    v58 = v61;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v58, -1, -1);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  return *&v29;
}

uint64_t ZonesAccumulator.update<A>(liveZones:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a3;
  v54 = a2;
  v50 = a1;
  v52 = type metadata accessor for Date();
  v51 = *(v52 - 8);
  v5 = *(v51 + 64);
  v6 = MEMORY[0x28223BE20](v52);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = *(v3 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  v58 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v17 = v59;
  v57 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = v59;
  v19 = v60;
  v56 = v4;
  v49 = v15;
  OS_dispatch_queue.sync<A>(execute:)();
  v55 = v4;
  OS_dispatch_queue.sync<A>(execute:)();
  v47 = v4;
  v45 = v9;
  v20 = v50;
  if (v60)
  {
    v21 = 0;
    v22 = 1;
  }

  else
  {
    v23 = v59;
    static Date.now.getter();
    v21 = ZonesAccumulator.elapsedTime(at:ending:)(v23, v9);
    v22 = v24;
    (*(v51 + 8))(v9, v52);
  }

  v25 = 1 << *(v17 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v17 + 64);
  v28 = (v25 + 63) >> 6;

  v30 = 0;
  if (v27)
  {
    while (1)
    {
      v31 = v30;
LABEL_12:
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      result = closure #1 in ZonesAccumulator.update<A>(liveZones:)(*(*(v17 + 48) + ((v31 << 9) | (8 * v32))), *(*(v17 + 56) + ((v31 << 9) | (8 * v32))), v20, v18, v19, v21, v22 & 1, v54, v53);
      if (!v27)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return result;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v17 + 64 + 8 * v31);
    ++v30;
    if (v27)
    {
      v30 = v31;
      goto LABEL_12;
    }
  }

  v33 = v53;
  v34 = v54;
  (*(v53 + 56))(v18, v19, v54, v53);
  v35 = v49;
  v36 = v48;
  outlined init with copy of Date?(v49, v48);
  v37 = v51;
  v38 = v52;
  if ((*(v51 + 48))(v36, 1, v52) == 1)
  {
    outlined destroy of Date?(v36);
    (*(v33 + 80))(1, v34, v33);
  }

  else
  {
    v39 = v46;
    (*(v37 + 32))(v46, v36, v38);
    v40 = v45;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v42 = v41;
    v43 = *(v37 + 8);
    v43(v40, v38);
    Date.timeIntervalSinceReferenceDate.getter();
    (*(v33 + 80))(*(v47 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout) < v42 - v44, v34, v33);
    v43(v39, v38);
  }

  return outlined destroy of Date?(v35);
}

uint64_t closure #1 in ZonesAccumulator.update<A>(liveZones:)(Swift::Int a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v31 = (*(a9 + 24))(a8, a9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();

  v30 = v28[0];
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  result = Range.contains(_:)();
  if (result)
  {
    if ((a5 & 1) == 0 && a1 == a4 && (a7 & 1) == 0)
    {
      a2 = *&a6;
    }

    v17 = (*(a9 + 40))(v28, a8, a9);
    v19 = v18;
    Array._makeMutableAndUnique()();
    v20 = *v19;
    Array._checkSubscript_mutating(_:)(a1);
    v21 = *v19;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v23 = v21 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v23 = v21;
    }

    v24 = v23 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)) + *(*(AssociatedTypeWitness - 8) + 72) * a1;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness, a2);
    return v17(v28, 0);
  }

  return result;
}

id ZonesAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id ZonesAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZonesAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1)
{
  v3 = MEMORY[0x20F2E7FC0](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, KnownPublishers.rawValue.getter, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v7 = Hasher._finalize()();

  return a3(a1, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x20F2E7FD0](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(v3 + 40);
  a3();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, char a2)
{
  v4 = *(v2 + 40);
  v5 = a2 & 1;
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();
  dispatch thunk of Hashable.hash(into:)();
  v6 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC00000065707954;
      v8 = 0x7974697669746361;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x800000020B454CC0;
          break;
        case 2:
          v8 = 0x6E6F697461636F6CLL;
          v7 = 0xEC00000065707954;
          break;
        case 3:
          v8 = 0x7954746E656D6F4DLL;
          v7 = 0xEA00000000006570;
          break;
        case 4:
          v8 = 0xD00000000000001ELL;
          v7 = 0x800000020B454CE0;
          break;
        case 5:
          v8 = 0x7275446C61746F74;
          v7 = 0xED00006E6F697461;
          break;
        case 6:
          v8 = 0xD000000000000018;
          v7 = 0x800000020B454D00;
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B454D20;
          break;
        case 8:
          v8 = 0xD000000000000017;
          v7 = 0x800000020B454D40;
          break;
        case 9:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000020B454D60;
          break;
        case 0xA:
          v8 = 0xD000000000000011;
          v7 = 0x800000020B454CA0;
          break;
        case 0xB:
          v8 = 0x65636E756F6E6E61;
          v7 = 0xEF79636E6574614CLL;
          break;
        case 0xC:
          v8 = 0x65636E756F6E6E61;
          v7 = 0xEE00656372756F53;
          break;
        case 0xD:
          v8 = 0xD000000000000015;
          v7 = 0x800000020B454DA0;
          break;
        case 0xE:
          v8 = 0xD000000000000016;
          v7 = 0x800000020B454DC0;
          break;
        case 0xF:
          v8 = 0xD000000000000013;
          v7 = 0x800000020B454DE0;
          break;
        case 0x10:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B454E00;
          break;
        case 0x11:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000020B454E20;
          break;
        case 0x12:
          v8 = 0xD000000000000013;
          v7 = 0x800000020B454E40;
          break;
        case 0x13:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B454E60;
          break;
        default:
          break;
      }

      v9 = 0x7974697669746361;
      v10 = 0xEC00000065707954;
      switch(a1)
      {
        case 1:
          v10 = 0x800000020B454CC0;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          v10 = 0xEC00000065707954;
          if (v8 != 0x6E6F697461636F6CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 3:
          v10 = 0xEA00000000006570;
          if (v8 != 0x7954746E656D6F4DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v10 = 0x800000020B454CE0;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v10 = 0xED00006E6F697461;
          if (v8 != 0x7275446C61746F74)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v10 = 0x800000020B454D00;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v10 = 0x800000020B454D20;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v9 = 0xD000000000000017;
          v10 = 0x800000020B454D40;
          goto LABEL_59;
        case 9:
          v10 = 0x800000020B454D60;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v10 = 0x800000020B454CA0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v10 = 0xEF79636E6574614CLL;
          if (v8 != 0x65636E756F6E6E61)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v10 = 0xEE00656372756F53;
          if (v8 != 0x65636E756F6E6E61)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v10 = 0x800000020B454DA0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v10 = 0x800000020B454DC0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v10 = 0x800000020B454DE0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v10 = 0x800000020B454E00;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v10 = 0x800000020B454E20;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 18:
          v10 = 0x800000020B454E40;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v10 = 0x800000020B454E60;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
LABEL_59:
          if (v8 != v9)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_61:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00007265687369;
      v8 = 0x6C6275506C616F67;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000020B4541D0;
          break;
        case 2:
          v8 = 0xD000000000000016;
          v7 = 0x800000020B4541F0;
          break;
        case 3:
          break;
        case 4:
          v8 = 0xD000000000000019;
          v7 = 0x800000020B454220;
          break;
        case 5:
          v8 = 0xD000000000000019;
          v7 = 0x800000020B454240;
          break;
        case 6:
          v8 = 0xD000000000000014;
          v7 = 0x800000020B454260;
          break;
        case 7:
          v8 = 0xD000000000000019;
          v7 = 0x800000020B454280;
          break;
        case 8:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B4542A0;
          break;
        case 9:
          v8 = 0xD000000000000010;
          v7 = 0x800000020B4542C0;
          break;
        case 0xA:
          v8 = 0xD000000000000015;
          v7 = 0x800000020B4542E0;
          break;
        case 0xB:
          v8 = 0xD000000000000020;
          v7 = 0x800000020B454300;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x800000020B454330;
          break;
        case 0xD:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B454350;
          break;
        case 0xE:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000020B454370;
          break;
        case 0xF:
          v7 = 0xE800000000000000;
          v8 = 0x6C6576654C706F54;
          break;
        case 0x10:
          v8 = 0xD000000000000015;
          v7 = 0x800000020B4543A0;
          break;
        case 0x11:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000020B4543C0;
          break;
        default:
          v8 = 0xD00000000000001FLL;
          v7 = 0x800000020B4541B0;
          break;
      }

      v9 = 0x6C6275506C616F67;
      v10 = 0xED00007265687369;
      switch(a1)
      {
        case 1:
          v10 = 0x800000020B4541D0;
          if (v8 == 0xD00000000000001BLL)
          {
            goto LABEL_54;
          }

          goto LABEL_55;
        case 2:
          v10 = 0x800000020B4541F0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 3:
          goto LABEL_53;
        case 4:
          v10 = 0x800000020B454220;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 5:
          v10 = 0x800000020B454240;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 6:
          v10 = 0x800000020B454260;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 7:
          v10 = 0x800000020B454280;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 8:
          v10 = 0x800000020B4542A0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 9:
          v10 = 0x800000020B4542C0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 10:
          v9 = 0xD000000000000015;
          v10 = 0x800000020B4542E0;
LABEL_53:
          if (v8 == v9)
          {
            goto LABEL_54;
          }

          goto LABEL_55;
        case 11:
          v10 = 0x800000020B454300;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 12:
          v10 = 0x800000020B454330;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 13:
          v10 = 0x800000020B454350;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 14:
          v10 = 0x800000020B454370;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 15:
          v10 = 0xE800000000000000;
          if (v8 != 0x6C6576654C706F54)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 16:
          v10 = 0x800000020B4543A0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        case 17:
          v10 = 0x800000020B4543C0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        default:
          v10 = 0x800000020B4541B0;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_55;
          }

LABEL_54:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_55:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    _sSo17OS_dispatch_queueCMaTm_1(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(v3 + 48) + 16 * result);
      if (a2)
      {
        switch(a1)
        {
          case 0:
            if (!v8)
            {
              return result;
            }

            goto LABEL_4;
          case 1:
            if (v8 == 1)
            {
              return result;
            }

            goto LABEL_4;
          case 2:
            if (v8 == 2)
            {
              return result;
            }

            goto LABEL_4;
          case 3:
            if (v8 == 3)
            {
              return result;
            }

            goto LABEL_4;
          case 4:
            if (v8 == 4)
            {
              return result;
            }

            goto LABEL_4;
          case 5:
            if (v8 == 5)
            {
              return result;
            }

            goto LABEL_4;
          case 6:
            if (v8 == 6)
            {
              return result;
            }

            goto LABEL_4;
          case 7:
            if (v8 == 7)
            {
              return result;
            }

            goto LABEL_4;
          case 8:
            if (v8 == 8)
            {
              return result;
            }

            goto LABEL_4;
          case 9:
            if (v8 == 9)
            {
              return result;
            }

            goto LABEL_4;
          case 10:
            if (v8 == 10)
            {
              return result;
            }

            goto LABEL_4;
          case 11:
            if (v8 == 11)
            {
              return result;
            }

            goto LABEL_4;
          case 12:
            if (v8 == 12)
            {
              return result;
            }

            goto LABEL_4;
          case 13:
            if (v8 == 13)
            {
              return result;
            }

            goto LABEL_4;
          case 14:
            if (v8 == 14)
            {
              return result;
            }

            goto LABEL_4;
          case 15:
            if (v8 == 15)
            {
              return result;
            }

            goto LABEL_4;
          case 16:
            if (v8 == 16)
            {
              return result;
            }

            goto LABEL_4;
          case 17:
            if (v8 == 17)
            {
              return result;
            }

            goto LABEL_4;
          case 18:
            if (v8 == 18)
            {
              return result;
            }

            goto LABEL_4;
          default:
            JUMPOUT(0);
        }
      }

      if (v8 == a1)
      {
        break;
      }

LABEL_4:
      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v144 = type metadata accessor for DateInterval();
  v7 = *(v144 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for Date();
  v10 = *(*(v143 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v143);
  v139 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v124 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v132 = &v124 - v16;
  MEMORY[0x28223BE20](v15);
  v131 = &v124 - v18;
  v134 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_93:
    v22 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_95;
  }

  v125 = a4;
  v20 = 0;
  v140 = (v17 + 8);
  v141 = (v7 + 8);
  v21 = MEMORY[0x277D84F90];
  v126 = a1;
  while (1)
  {
    v22 = v20;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v23 = *v134;
      v24 = *v134 + 16 * (v20 + 1);
      v25 = *v24;
      LOBYTE(v24) = *(v24 + 8);
      v149 = v25;
      v150 = v24;
      v26 = v23 + 16 * v20;
      v27 = *v26;
      LOBYTE(v26) = *(v26 + 8);
      v147 = v27;
      v148 = v26;
      v28 = v27;
      v29 = v25;
      v30 = v136;
      LODWORD(v133) = closure #3 in ZonesAccumulator.process(samples:workoutEvents:activityStartDate:)(&v149, &v147);
      v136 = v30;
      if (v30)
      {

        return;
      }

      v128 = v21;

      v31 = v20 + 2;
      v127 = v20;
      v137 = 16 * v20;
      v32 = (v23 + 16 * v20 + 32);
      v135 = v19;
      while (v19 != v31)
      {
        v33 = *v32;
        v34 = *(v32 - 2);
        v145 = v34;
        v146 = v33;
        v35 = [v146 dateInterval];
        v36 = v142;
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v131;
        DateInterval.end.getter();
        v38 = *v141;
        v39 = v144;
        (*v141)(v36, v144);
        v40 = [v34 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = v132;
        DateInterval.end.getter();
        v42 = v36;
        v19 = v135;
        v38(v42, v39);
        LODWORD(v40) = static Date.< infix(_:_:)() & 1;
        v43 = *v140;
        v44 = v143;
        (*v140)(v41, v143);
        v43(v37, v44);

        ++v31;
        v32 += 2;
        if ((v133 & 1) != v40)
        {
          v19 = v31 - 1;
          break;
        }
      }

      v21 = v128;
      a1 = v126;
      v22 = v127;
      if (v133)
      {
        if (v19 < v127)
        {
          goto LABEL_125;
        }

        if (v127 < v19)
        {
          v45 = 16 * v19 - 16;
          v46 = v19;
          v47 = v127;
          do
          {
            if (v47 != --v46)
            {
              v49 = *v134;
              if (!*v134)
              {
                goto LABEL_129;
              }

              v50 = (v49 + v137);
              v51 = (v49 + v45);
              v52 = *(v49 + v137);
              v53 = *(v49 + v137 + 8);
              if (v137 != v45 || v50 >= v51 + 1)
              {
                *v50 = *v51;
              }

              v48 = v49 + v45;
              *v48 = v52;
              *(v48 + 8) = v53;
            }

            ++v47;
            v45 -= 16;
            v137 += 16;
          }

          while (v47 < v46);
        }
      }
    }

    v54 = v134[1];
    if (v19 < v54)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_122;
      }

      if (v19 - v22 < v125)
      {
        if (__OFADD__(v22, v125))
        {
          goto LABEL_123;
        }

        if (v22 + v125 >= v54)
        {
          v55 = v134[1];
        }

        else
        {
          v55 = v22 + v125;
        }

        if (v55 < v22)
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
LABEL_95:
          v151 = v21;
          v119 = *(v21 + 2);
          if (v119 >= 2)
          {
            while (*v134)
            {
              v120 = *&v21[16 * v119];
              v121 = *&v21[16 * v119 + 24];
              v122 = v136;
              specialized _merge<A>(low:mid:high:buffer:by:)((*v134 + 16 * v120), (*v134 + 16 * *&v21[16 * v119 + 16]), (*v134 + 16 * v121), v22);
              v136 = v122;
              if (v122)
              {
                goto LABEL_103;
              }

              if (v121 < v120)
              {
                goto LABEL_119;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
              }

              if (v119 - 2 >= *(v21 + 2))
              {
                goto LABEL_120;
              }

              v123 = &v21[16 * v119];
              *v123 = v120;
              *(v123 + 1) = v121;
              v151 = v21;
              specialized Array.remove(at:)(v119 - 1);
              v21 = v151;
              v119 = *(v151 + 2);
              if (v119 <= 1)
              {
                goto LABEL_103;
              }
            }

            goto LABEL_130;
          }

LABEL_103:

          return;
        }

        if (v19 != v55)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v57 = *(v21 + 2);
    v56 = *(v21 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v21);
    }

    *(v21 + 2) = v58;
    v59 = &v21[16 * v57];
    *(v59 + 4) = v22;
    *(v59 + 5) = v20;
    v60 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v57)
    {
      while (1)
      {
        v22 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v21 + 4);
          v62 = *(v21 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_52:
          if (v64)
          {
            goto LABEL_110;
          }

          v77 = &v21[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_113;
          }

          v83 = &v21[16 * v22 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_117;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v22 = v58 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v87 = &v21[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_66:
        if (v82)
        {
          goto LABEL_112;
        }

        v90 = &v21[16 * v22];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_115;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_73:
        v98 = v22 - 1;
        if (v22 - 1 >= v58)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_124;
        }

        if (!*v134)
        {
          goto LABEL_128;
        }

        v99 = *&v21[16 * v98 + 32];
        v100 = *&v21[16 * v22 + 40];
        v101 = v136;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v134 + 16 * v99), (*v134 + 16 * *&v21[16 * v22 + 32]), (*v134 + 16 * v100), v60);
        v136 = v101;
        if (v101)
        {
          goto LABEL_103;
        }

        if (v100 < v99)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        if (v98 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v102 = &v21[16 * v98];
        *(v102 + 4) = v99;
        *(v102 + 5) = v100;
        v151 = v21;
        specialized Array.remove(at:)(v22);
        v21 = v151;
        v58 = *(v151 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v21[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_108;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_109;
      }

      v72 = &v21[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_111;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_114;
      }

      if (v76 >= v68)
      {
        v94 = &v21[16 * v22 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_118;
        }

        if (v63 < v97)
        {
          v22 = v58 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v134[1];
    if (v20 >= v19)
    {
      goto LABEL_93;
    }
  }

  v128 = v21;
  v137 = *v134;
  v103 = v137 + 16 * v19;
  v127 = v22;
  v104 = v22 - v19;
  v129 = v55;
LABEL_84:
  v135 = v19;
  v130 = v104;
  v133 = v103;
  while (1)
  {
    v105 = *v103;
    v106 = *(v103 - 16);
    v145 = v106;
    v146 = v105;
    v107 = [v146 dateInterval];
    v108 = v142;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = v138;
    DateInterval.end.getter();
    v110 = *v141;
    v111 = v144;
    (*v141)(v108, v144);
    v112 = [v106 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v113 = v139;
    DateInterval.end.getter();
    v110(v108, v111);
    LOBYTE(v108) = static Date.< infix(_:_:)();
    v114 = *v140;
    v115 = v143;
    (*v140)(v113, v143);
    v114(v109, v115);

    if ((v108 & 1) == 0)
    {
LABEL_83:
      v19 = v135 + 1;
      v103 = v133 + 16;
      v104 = v130 - 1;
      v20 = v129;
      if (v135 + 1 != v129)
      {
        goto LABEL_84;
      }

      v21 = v128;
      a1 = v126;
      v22 = v127;
      if (v129 < v127)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v116 = *v103;
    v117 = *(v103 + 8);
    *v103 = *(v103 - 16);
    *(v103 - 8) = v117;
    *(v103 - 16) = v116;
    v103 -= 16;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, void **a2, char *a3, id *a4)
{
  v71 = type metadata accessor for DateInterval();
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Date();
  v12 = *(v70 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v70);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v60 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v64 = (&v60 - v19);
  MEMORY[0x28223BE20](v18);
  v63 = &v60 - v20;
  v21 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v21 = a2 - a1;
  }

  v22 = v21 >> 4;
  v23 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v23 = a3 - a2;
  }

  v24 = v23 >> 4;
  if (v22 >= v24)
  {
    v40 = v12;
    v41 = 2 * v24;
    if (a4 != a2 || &a2[v41] <= a4)
    {
      memmove(a4, a2, 16 * v24);
    }

    v73 = &a4[v41];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v62 = a4;
      v63 = (v8 + 8);
      v61 = (v40 + 8);
      v69 = a1;
LABEL_26:
      v60 = a2;
      v42 = a2 - 2;
      v43 = (a3 - 16);
      v44 = v73;
      v64 = a2 - 2;
      do
      {
        v45 = *(v44 - 2);
        v44 -= 2;
        v72 = v43;
        v46 = v43 + 2;
        v47 = *v42;
        v67 = v47;
        v68 = v45;
        v48 = [v68 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v65;
        DateInterval.end.getter();
        v50 = *v63;
        v51 = v71;
        (*v63)(v11, v71);
        v52 = [v47 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = v66;
        DateInterval.end.getter();
        v50(v11, v51);
        LOBYTE(v52) = static Date.< infix(_:_:)();
        v54 = *v61;
        v55 = v70;
        (*v61)(v53, v70);
        v54(v49, v55);

        if (v52)
        {
          a3 = v72;
          v57 = v64;
          if (v46 != v60)
          {
            *v72 = *v64;
          }

          a4 = v62;
          if (v73 <= v62 || (a2 = v57, v57 <= v69))
          {
            a2 = v57;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v56 = v72;
        if (v46 != v73)
        {
          *v72 = *v44;
        }

        v43 = v56 - 2;
        v73 = v44;
        a4 = v62;
        v42 = v64;
      }

      while (v44 > v62);
      v73 = v44;
      a2 = v60;
    }
  }

  else
  {
    v25 = 2 * v22;
    if (a4 != a1 || &a1[v25] <= a4)
    {
      memmove(a4, a1, v25 * 8);
    }

    v73 = &a4[v25];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v72 = a3;
      v65 = (v12 + 8);
      v66 = (v8 + 8);
      while (1)
      {
        v69 = a1;
        v26 = a2;
        v27 = *a2;
        v28 = *a4;
        v67 = v28;
        v68 = v27;
        v29 = [v68 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v30 = v63;
        DateInterval.end.getter();
        v31 = *v66;
        v32 = v71;
        (*v66)(v11, v71);
        v33 = [v28 dateInterval];
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = v64;
        DateInterval.end.getter();
        v31(v11, v32);
        LOBYTE(v33) = static Date.< infix(_:_:)();
        v35 = *v65;
        v36 = v70;
        (*v65)(v34, v70);
        v35(v30, v36);

        if ((v33 & 1) == 0)
        {
          break;
        }

        v37 = v26;
        a2 = v26 + 2;
        v38 = v69;
        if (v69 != v26)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 = v38 + 2;
        if (a4 >= v73 || a2 >= v72)
        {
          goto LABEL_19;
        }
      }

      v37 = a4;
      v38 = v69;
      v39 = v69 == a4;
      a4 += 2;
      a2 = v26;
      if (v39)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v38 = *v37;
      goto LABEL_17;
    }

LABEL_19:
    a2 = a1;
  }

LABEL_37:
  v58 = (v73 - a4 + (v73 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (a2 != a4 || a2 >= (a4 + v58))
  {
    memmove(a2, a4, v58);
  }

  return 1;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

id specialized ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(uint64_t a1, void *a2, int a3, void *a4, void *a5, double a6)
{
  v66 = a5;
  v67 = a2;
  v68 = a4;
  v69 = a3;
  v70 = a1;
  v8 = v6;
  v57[1] = swift_getObjectType();
  v71 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v71 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v71);
  v60 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v65 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v15 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate;
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v58 = v8;
  v17(&v8[v15], 1, 1, v16);
  v18 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples] = MEMORY[0x277D84F90];
  v59 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v62 = _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v61 = *MEMORY[0x277D85260];
  v19 = *(v9 + 104);
  v63 = v9 + 104;
  v64 = v19;
  v20 = v60;
  v19(v60);
  v21 = v58;
  *&v21[v59] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes;
  *&v21[v22] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(v18);
  v17(&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate], 1, 1, v16);
  v23 = &v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex];
  *v23 = 0;
  v23[8] = 1;
  v17(&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate], 1, 1, v16);
  v17(&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate], 1, 1, v16);
  v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused] = 0;
  v24 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue;
  static DispatchQoS.unspecified.getter();
  v73[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v25 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v64(v20, v61, v71);
  v26 = v67;
  *&v21[v24] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = v68;
  v28 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator] = 0;
  v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession] = 0;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query] = 0;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore] = v26;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] = a6;
  v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] = v69;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier] = v27;
  *&v21[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit] = v25;
  v29 = *MEMORY[0x277CCC9C0];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
    v34 = v26;
    v35 = v27;
    v36 = v25;
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v38 = v26;
    v39 = v27;
    v40 = v25;

    if ((v37 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  type metadata accessor for WindowedAccumulator();
  v41 = swift_allocObject();
  *(v41 + 48) = MEMORY[0x277D84F90];
  *(v41 + 56) = 0;
  *(v41 + 16) = 0x4010000000000000;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 40) = 1;
  v42 = *&v21[v28];
  *&v21[v28] = v41;

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static WOLog.zones);
  v44 = v27;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v73[0] = v48;
    *v47 = 136315394;
    v49 = _typeName(_:qualified:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v73);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v73);

    *(v47 + 14) = v54;
    _os_log_impl(&dword_20AEA4000, v45, v46, "%s using 3s average accumulator for processing %s samples", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v48, -1, -1);
    MEMORY[0x20F2E9420](v47, -1, -1);
  }

LABEL_10:
  v55 = type metadata accessor for ZonesAccumulator();
  v72.receiver = v21;
  v72.super_class = v55;
  return objc_msgSendSuper2(&v72, sel_initWithBuilder_, v70);
}

void specialized ZonesAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v81 = &v73 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v73 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v73 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v73 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  outlined init with copy of Date?(a1, v22);
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) == 1)
  {
    Date.init()();
    if (v25(v22, 1, v4) != 1)
    {
      outlined destroy of Date?(v22);
    }
  }

  else
  {
    (*(v5 + 32))(v24, v22, v4);
  }

  (*(v5 + 56))(v24, 0, 1, v4);
  v26 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate;
  swift_beginAccess();
  v80 = v26;
  outlined assign with take of Date?(v24, v2 + v26);
  swift_endAccess();
  v27 = [v2 builder];
  v28 = [v27 workoutSession];

  if (v28)
  {
    v29 = [v28 state];

    *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused) = v29 == 4;
  }

  v84 = v25;
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static WOLog.zones);
  outlined init with copy of Date?(a1, v19);
  v31 = v2;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v76 = v33;
    v77 = v32;
    v78 = v12;
    v34 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v85[0] = v75;
    *v34 = 136316674;
    v35 = _typeName(_:qualified:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v85);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = v83;
    outlined init with copy of Date?(v19, v83);
    ObjectType = v5 + 48;
    LODWORD(v38) = v84(v38, 1, v4);

    if (v38 == 1)
    {
      goto LABEL_21;
    }

    v74 = a1;
    v39 = v5;
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v40 = static WOLog.logDateFormatter;
    v41 = v83;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v73 = v40;
    v43 = [v40 stringFromDate_];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    outlined destroy of Date?(v19);
    v47 = *(v39 + 8);
    v47(v41, v4);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v85);

    *(v34 + 14) = v48;
    *(v34 + 22) = 2080;
    v49 = v81;
    outlined init with copy of Date?(v2 + v80, v81);
    if (v84(v49, 1, v4))
    {
      outlined destroy of Date?(v49);
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v52 = v79;
      (*(v39 + 16))(v79, v49, v4);
      outlined destroy of Date?(v49);
      v53 = Date._bridgeToObjectiveC()().super.isa;
      v54 = v47;
      v55 = [v73 stringFromDate_];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v56;

      v54(v52, v4);
    }

    v5 = v39;
    a1 = v74;
    v85[1] = v50;
    v85[2] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v57 = Optional.description.getter();
    v59 = v58;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v85);

    *(v34 + 24) = v60;
    *(v34 + 32) = 1024;
    LODWORD(v60) = v31[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity];

    *(v34 + 34) = v60;
    *(v34 + 38) = 2080;
    v61 = ZonesAccumulator.zonesSnapshotString.getter();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v85);

    *(v34 + 40) = v63;
    *(v34 + 48) = 2080;
    v64 = *&v31[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v85);

    *(v34 + 50) = v67;
    *(v34 + 58) = 2080;
    v68 = ZonesAccumulator.stateSnapshotString.getter();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v85);

    *(v34 + 60) = v70;
    v71 = v77;
    _os_log_impl(&dword_20AEA4000, v77, v76, "%s accumulatorDidStart with startDate %s, activityStartDate: %s, shouldSplitByActivity: %{BOOL}d, zones: (%s), quantityTypeIdentifier: %s, state (%s)", v34, 0x44u);
    v72 = v75;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v72, -1, -1);
    MEMORY[0x20F2E9420](v34, -1, -1);

    v12 = v78;
  }

  else
  {

    outlined destroy of Date?(v19);
  }

  outlined init with copy of Date?(a1, v12);
  if (v84(v12, 1, v4) != 1)
  {
    ZonesAccumulator.startQuery(startDate:)();
    (*(v5 + 8))(v12, v4);
    return;
  }

  __break(1u);
LABEL_21:

  __break(1u);
}

uint64_t type metadata accessor for ZonesAccumulator()
{
  result = type metadata singleton initialization cache for ZonesAccumulator;
  if (!type metadata singleton initialization cache for ZonesAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_34Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return outlined init with copy of Date?(v4 + v5, a3);
}

void type metadata completion function for ZonesAccumulator()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey);
  }

  return result;
}

uint64_t outlined init with copy of ZoneProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *partial apply for closure #2 in ZonesAccumulator.processIfReady()()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return closure #2 in ZonesAccumulator.processIfReady()(v2, v3, v4);
}

uint64_t partial apply for closure #1 in ZonesAccumulator.processIfReady()()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #1 in ZonesAccumulator.processIfReady()(v2, v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected()
{
  result = lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected()
{
  result = lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZonesAccumulator.Entry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ZonesAccumulator.Entry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void closure #1 in ZonesAccumulator.currentZoneIndex.getterpartial apply(uint64_t a1@<X8>)
{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

{
  partial apply for closure #1 in ZonesAccumulator.currentZoneIndex.getter(a1);
}

uint64_t closure #1 in ZonesAccumulator.elapsedTimes.getterpartial apply@<X0>(void *a1@<X8>)
{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.elapsedTimes.getter(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvgAEyXEfU_TA_1(a1);
}

uint64_t closure #1 in ZonesAccumulator.lastProcessedEntryDate.getterpartial apply@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return partial apply for closure #1 in ZonesAccumulator.lastProcessedEntryDate.getter(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC22lastProcessedEntryDate10Foundation0H0VSgvgAHyXEfU_TA_1(a1);
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, type metadata accessor for WorkoutConfiguration);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, type metadata accessor for GoalWorkoutConfiguration);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for HKQuantitySample, 0x277CCD800, &protocol witness table for HKQuantitySample);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for HKWorkoutBuilderQuantity, 0x277CCDC08, &protocol witness table for HKWorkoutBuilderQuantity);
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x20F2E7A20](v7, a1);
        v19 = v5;
        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v5 = v19;
        }

        ++v7;
        v17 = a2(0);
        v18 = &protocol witness table for WorkoutConfiguration;
        *&v16 = v8;
        *(v5 + 16) = v10 + 1;
        _s11WorkoutCore12ZoneProtocol_pWOb_0(&v16, v5 + 40 * v10 + 32);
      }

      while (v4 != v7);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *v11;
        v19 = v5;
        v13 = *(v5 + 16);
        v14 = *(v5 + 24);
        v15 = v12;
        if (v13 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
          v5 = v19;
        }

        v17 = a2(0);
        v18 = &protocol witness table for WorkoutConfiguration;
        *&v16 = v15;
        *(v5 + 16) = v13 + 1;
        _s11WorkoutCore12ZoneProtocol_pWOb_0(&v16, v5 + 40 * v13 + 32);
        ++v11;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x20F2E7A20](v11, a1);
        v23 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v9 = v23;
        }

        ++v11;
        v21 = _sSo17OS_dispatch_queueCMaTm_2(0, a2, a3);
        v22 = a4;
        *&v20 = v12;
        *(v9 + 16) = v14 + 1;
        _s11WorkoutCore12ZoneProtocol_pWOb_0(&v20, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v23 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v9 = v23;
        }

        v21 = _sSo17OS_dispatch_queueCMaTm_2(0, a2, a3);
        v22 = a4;
        *&v20 = v19;
        *(v9 + 16) = v18 + 1;
        _s11WorkoutCore12ZoneProtocol_pWOb_0(&v20, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ElevationSample();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      outlined init with copy of ElevationSample(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &protocol witness table for ElevationSample;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      outlined init with copy of ElevationSample(v6, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      _s11WorkoutCore12ZoneProtocol_pWOb_0(&v15, v8 + 40 * v12 + 32);
      outlined destroy of ElevationSample(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      outlined init with take of Any(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, unint64_t))
{
  if (a1 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v25 = MEMORY[0x277D84F90];
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v21 = a2;
    v11 = v25;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = MEMORY[0x20F2E7A20](v13, a1);
        v25 = v11;
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          v21(v15 > 1, v16 + 1, 1);
          v11 = v25;
        }

        ++v13;
        v23 = a3(0);
        v24 = a4;
        v22[0] = v14;
        *(v11 + 16) = v16 + 1;
        a5(v22, v11 + 40 * v16 + 32);
      }

      while (v10 != v13);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v25 = v11;
        v19 = *(v11 + 16);
        v20 = *(v11 + 24);

        if (v19 >= v20 >> 1)
        {
          v21(v20 > 1, v19 + 1, 1);
          v11 = v25;
        }

        v23 = a3(0);
        v24 = a4;
        v22[0] = v18;
        *(v11 + 16) = v19 + 1;
        a5(v22, v11 + 40 * v19 + 32);
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x20F2E7A20](i, a1);
        _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x20F2E7A20](i, a1);
        type metadata accessor for StandardWorkoutAddWorkoutRow();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for StandardWorkoutAddWorkoutRow();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t specialized ZonesAccumulator.update<A>(liveZones:)(uint64_t *a1)
{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for Date();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  v71 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v16 = v72;
  v70 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v66 = v72;
  v65 = v73;
  v69 = v2;
  v59 = v14;
  OS_dispatch_queue.sync<A>(execute:)();
  v68 = v2;
  OS_dispatch_queue.sync<A>(execute:)();
  v63 = v8;
  v57 = v2;
  v60 = v3;
  v55 = 0;
  if (v73)
  {
    v61 = 0;
    v64 = 1;
  }

  else
  {
    v17 = v72;
    static Date.now.getter();
    v61 = ZonesAccumulator.elapsedTime(at:ending:)(v17, v8);
    v64 = v18;
    (*(v62 + 8))(v8, v3);
  }

  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 64);
  v22 = (v19 + 63) >> 6;

  v24 = 0;
LABEL_7:
  v25 = v66;
  while (v21)
  {
LABEL_14:
    v28 = (v24 << 9) | (8 * __clz(__rbit64(v21)));
    v29 = *(*(v16 + 48) + v28);
    v30 = *(*(v16 + 56) + v28);
    v31 = *v67;
    swift_beginAccess();
    v32 = *(v31 + 16);
    if (v32 >> 62)
    {
      if (v32 < 0)
      {
        v38 = *(v31 + 16);
      }

      result = __CocoaSet.count.getter();
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 &= v21 - 1;
    if (v29 < result)
    {
      v33 = v65;
      if (v29 != v25)
      {
        v33 = 1;
      }

      if ((v33 | v64))
      {
        swift_beginAccess();
        v39 = *(v31 + 16);
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v31 + 16) = v39;
        if (!result || v39 < 0 || (v39 & 0x4000000000000000) != 0)
        {

          v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
          *(v31 + 16) = v41;

          v39 = v41;
        }

        if (v29 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 8 * v29 + 0x20);
          swift_beginAccess();
          *(v42 + 48) = v30;
          *(v31 + 16) = v39;
          result = swift_endAccess();
          goto LABEL_7;
        }

        goto LABEL_42;
      }

      swift_beginAccess();
      v34 = *(v31 + 16);
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v31 + 16) = v34;
      if (!result || v34 < 0 || (v34 & 0x4000000000000000) != 0)
      {

        v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
        *(v31 + 16) = v36;

        v34 = v36;
        v25 = v66;
      }

      if (v25 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v25 + 0x20);
      swift_beginAccess();
      *(v37 + 48) = v61;
      v25 = v66;
      *(v31 + 16) = v34;
      result = swift_endAccess();
    }
  }

  v26 = v63;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v27 >= v22)
    {
      break;
    }

    v21 = *(v16 + 64 + 8 * v27);
    ++v24;
    if (v21)
    {
      v24 = v27;
      goto LABEL_14;
    }
  }

  v43 = *v67;
  swift_beginAccess();
  *(v43 + 24) = v25;
  *(v43 + 32) = v65;
  v44 = v58;
  v45 = v59;
  outlined init with copy of Date?(v59, v58);
  v46 = v62;
  v47 = v60;
  if ((*(v62 + 48))(v44, 1, v60) == 1)
  {
    outlined destroy of Date?(v45);
    outlined destroy of Date?(v44);
    result = swift_beginAccess();
    *(v43 + 33) = 1;
  }

  else
  {
    v48 = v56;
    (*(v46 + 32))(v56, v44, v47);
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = v49;
    v51 = *(v46 + 8);
    v51(v26, v47);
    Date.timeIntervalSinceReferenceDate.getter();
    v53 = v52;
    v51(v48, v47);
    outlined destroy of Date?(v45);
    v54 = *(v57 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout) < v50 - v53;
    result = swift_beginAccess();
    *(v43 + 33) = v54;
  }

  return result;
}

{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for Date();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
  v71 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v16 = v72;
  v70 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v66 = v72;
  v65 = v73;
  v69 = v2;
  v59 = v14;
  OS_dispatch_queue.sync<A>(execute:)();
  v68 = v2;
  OS_dispatch_queue.sync<A>(execute:)();
  v63 = v8;
  v57 = v2;
  v60 = v3;
  v55 = 0;
  if (v73)
  {
    v61 = 0;
    v64 = 1;
  }

  else
  {
    v17 = v72;
    static Date.now.getter();
    v61 = ZonesAccumulator.elapsedTime(at:ending:)(v17, v8);
    v64 = v18;
    (*(v62 + 8))(v8, v3);
  }

  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 64);
  v22 = (v19 + 63) >> 6;

  v24 = 0;
LABEL_7:
  v25 = v66;
  while (v21)
  {
LABEL_14:
    v28 = (v24 << 9) | (8 * __clz(__rbit64(v21)));
    v29 = *(*(v16 + 48) + v28);
    v30 = *(*(v16 + 56) + v28);
    v31 = *v67;
    swift_beginAccess();
    v32 = *(v31 + 16);
    if (v32 >> 62)
    {
      if (v32 < 0)
      {
        v38 = *(v31 + 16);
      }

      result = __CocoaSet.count.getter();
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 &= v21 - 1;
    if (v29 < result)
    {
      v33 = v65;
      if (v29 != v25)
      {
        v33 = 1;
      }

      if ((v33 | v64))
      {
        swift_beginAccess();
        v39 = *(v31 + 16);
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v31 + 16) = v39;
        if (!result || v39 < 0 || (v39 & 0x4000000000000000) != 0)
        {

          v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
          *(v31 + 16) = v41;

          v39 = v41;
        }

        if (v29 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 8 * v29 + 0x20);
          swift_beginAccess();
          *(v42 + 48) = v30;
          *(v31 + 16) = v39;
          result = swift_endAccess();
          goto LABEL_7;
        }

        goto LABEL_42;
      }

      swift_beginAccess();
      v34 = *(v31 + 16);
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v31 + 16) = v34;
      if (!result || v34 < 0 || (v34 & 0x4000000000000000) != 0)
      {

        v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
        *(v31 + 16) = v36;

        v34 = v36;
        v25 = v66;
      }

      if (v25 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v25 + 0x20);
      swift_beginAccess();
      *(v37 + 48) = v61;
      v25 = v66;
      *(v31 + 16) = v34;
      result = swift_endAccess();
    }
  }

  v26 = v63;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v27 >= v22)
    {
      break;
    }

    v21 = *(v16 + 64 + 8 * v27);
    ++v24;
    if (v21)
    {
      v24 = v27;
      goto LABEL_14;
    }
  }

  v43 = *v67;
  swift_beginAccess();
  *(v43 + 24) = v25;
  *(v43 + 32) = v65;
  v44 = v58;
  v45 = v59;
  outlined init with copy of Date?(v59, v58);
  v46 = v62;
  v47 = v60;
  if ((*(v62 + 48))(v44, 1, v60) == 1)
  {
    outlined destroy of Date?(v45);
    outlined destroy of Date?(v44);
    result = swift_beginAccess();
    *(v43 + 33) = 1;
  }

  else
  {
    v48 = v56;
    (*(v46 + 32))(v56, v44, v47);
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = v49;
    v51 = *(v46 + 8);
    v51(v26, v47);
    Date.timeIntervalSinceReferenceDate.getter();
    v53 = v52;
    v51(v48, v47);
    outlined destroy of Date?(v45);
    v54 = *(v57 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout) < v50 - v53;
    result = swift_beginAccess();
    *(v43 + 33) = v54;
  }

  return result;
}