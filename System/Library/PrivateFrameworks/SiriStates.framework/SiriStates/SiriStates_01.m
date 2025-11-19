void closure #1 in InstrumentationManager.doLogStateTransition(previousState:currentState:event:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v132 = a4;
  v133 = a6;
  v138 = a3;
  v6 = type metadata accessor for Logger();
  v136 = *(v6 - 8);
  v137 = v6;
  v7 = *(v136 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v120[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v9, v12);
  v129 = &v120[-v14];
  MEMORY[0x28223BE20](v13, v15);
  v128 = &v120[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v120[-v20];
  v22 = type metadata accessor for UUID();
  v134 = *(v22 - 8);
  v135 = v22;
  v23 = v134[8];
  v25 = MEMORY[0x28223BE20](v22, v24);
  v127 = &v120[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v25, v27);
  v131 = &v120[-v29];
  v31 = MEMORY[0x28223BE20](v28, v30);
  v130 = &v120[-v32];
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v120[-v34];
  v36 = swift_projectBox();
  type metadata accessor for State();
  v37 = State.disabled.unsafeMutableAddressor();
  v38 = *v37;
  v39 = static NSObject.== infix(_:_:)();

  if (v39)
  {
    goto LABEL_3;
  }

  v40 = *v37;
  v41 = static NSObject.== infix(_:_:)();

  if (v41)
  {
    goto LABEL_3;
  }

  v47 = *State.available.unsafeMutableAddressor();
  v48 = static NSObject.== infix(_:_:)();

  if (v48)
  {
    v49 = *State.analyzing.unsafeMutableAddressor();
    v50 = static NSObject.== infix(_:_:)();

    if (v50 & 1) != 0 || (v51 = *State.responding.unsafeMutableAddressor(), v52 = static NSObject.== infix(_:_:)(), v51, (v52))
    {
LABEL_3:
      UUID.init()();
      (*(*v138 + 120))(v35);
    }
  }

  v42 = [objc_allocWithZone(MEMORY[0x277D5AD80]) init];
  if (v42)
  {
    v43 = v42;
    v44 = [objc_allocWithZone(MEMORY[0x277D5AD70]) init];
    if (v44)
    {
      v45 = v44;
      v126 = [objc_allocWithZone(MEMORY[0x277D5AD78]) init];
      if (v126)
      {
        [v43 setPreviousState_];
        [v43 setCurrentState_];
        v125 = v45;
        if (v132 > 0x10)
        {
          v46 = 0;
        }

        else
        {
          v46 = dword_2691ABBD4[v132];
        }

        v59 = [v43 setReason_];
        (*(*v138 + 112))(v59);
        v60 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v62 = [v60 initWithNSUUID_];

        v63 = v134;
        v64 = v134[1];
        v65 = v35;
        v66 = v135;
        v64(v65, v135);
        [v126 setSessionId_];

        swift_beginAccess();
        outlined init with copy of UUID?(v36, v21);
        if ((v63[6])(v21, 1, v66) == 1)
        {
          outlined destroy of UUID?(v21);
        }

        else
        {
          v132 = v64;
          v67 = v130;
          (v63[4])(v130, v21, v66);
          v68 = objc_opt_self();
          v69 = UUID._bridgeToObjectiveC()().super.isa;
          v70 = [v68 derivedIdentifierForComponentName:20 fromSourceIdentifier:v69];

          if (v70)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v71 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v72 = UUID._bridgeToObjectiveC()().super.isa;
            v73 = [v71 initWithNSUUID_];

            v74 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v75 = UUID._bridgeToObjectiveC()().super.isa;
            v76 = [v74 initWithNSUUID_];

            v77 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
            if (v77)
            {
              v78 = v77;
              v79 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
              if (v79)
              {
                v80 = v79;
                v81 = v73;
                v82 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
                if (v82)
                {
                  v83 = v82;
                  v123 = v81;
                  [v80 setUuid_];
                  [v80 setComponent_];
                  [v78 setSource_];
                  v129 = v76;
                  [v83 setUuid_];
                  [v83 setComponent_];
                  v124 = v83;
                  [v78 setTarget_];
                  v84 = Logger.framework.unsafeMutableAddressor();
                  v85 = v136;
                  v86 = v128;
                  (*(v136 + 16))(v128, v84, v137);
                  v87 = v127;
                  (v134[2])(v127, v131, v135);
                  v88 = Logger.logObject.getter();
                  v89 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v88, v89))
                  {
                    v90 = swift_slowAlloc();
                    v122 = v90;
                    v134 = swift_slowAlloc();
                    v139 = v134;
                    *v90 = 136315138;
                    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                    v121 = v89;
                    v91 = v135;
                    v92 = dispatch thunk of CustomStringConvertible.description.getter();
                    v94 = v93;
                    v95 = v87;
                    v96 = v132;
                    (v132)(v95, v91);
                    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v139);

                    v98 = v122;
                    *(v122 + 1) = v97;
                    v99 = v98;
                    _os_log_impl(&dword_269189000, v88, v121, "#SRST RequestLinking setting srstId=%s", v98, 0xCu);
                    v100 = v134;
                    __swift_destroy_boxed_opaque_existential_1Tm(v134);
                    MEMORY[0x26D632230](v100, -1, -1);
                    MEMORY[0x26D632230](v99, -1, -1);

                    (*(v85 + 8))(v128, v137);
                  }

                  else
                  {

                    v116 = v87;
                    v96 = v132;
                    (v132)(v116, v135);
                    (*(v85 + 8))(v86, v137);
                  }

                  v113 = v133;
                  v117 = v130;
                  v118 = v123;
                  [v126 setSrstId_];

                  [*(v138 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_stream) emitMessage:v78 timestamp:v113];
                  v119 = v135;
                  v96(v131, v135);
                  v96(v117, v119);
                  goto LABEL_37;
                }
              }

              else
              {
                v80 = v78;
              }
            }

            v101 = Logger.framework.unsafeMutableAddressor();
            v102 = v136;
            v103 = v129;
            (*(v136 + 16))(v129, v101, v137);
            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = v73;
              v107 = v67;
              v108 = swift_slowAlloc();
              *v108 = 0;
              _os_log_impl(&dword_269189000, v104, v105, "#SRST RequestLinking Failed to create RequestLink event for SiriStates", v108, 2u);
              MEMORY[0x26D632230](v108, -1, -1);

              (*(v102 + 8))(v103, v137);
              v109 = v132;
              v110 = v135;
              (v132)(v131, v135);
              v109(v107, v110);
            }

            else
            {

              (*(v102 + 8))(v103, v137);
              v111 = v132;
              v112 = v135;
              (v132)(v131, v135);
              v111(v67, v112);
            }
          }

          else
          {
            (v132)(v67, v66);
          }
        }

        v113 = v133;
LABEL_37:
        v114 = v125;
        v115 = v126;
        [v125 setEventMetadata_];
        [v114 setStateTransitionEvent_];
        [*(v138 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_stream) emitMessage:v114 timestamp:v113];

        return;
      }
    }

    else
    {
      v45 = v43;
    }
  }

  v53 = Logger.framework.unsafeMutableAddressor();
  v55 = v136;
  v54 = v137;
  (*(v136 + 16))(v11, v53, v137);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_269189000, v56, v57, "#SRST RequestLinking unable to init SSSchemaProvisionalSiriStateTransitionEvent", v58, 2u);
    MEMORY[0x26D632230](v58, -1, -1);
  }

  (*(v55 + 8))(v11, v54);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t InstrumentationManager.deinit()
{
  v1 = OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_stream);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t InstrumentationManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_stream);
  swift_unknownObjectRelease();
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t specialized InstrumentationManager.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v27 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  *(v2 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_stream) = a1;
  v19 = type metadata accessor for OS_dispatch_queue();
  v25[1] = "sruifUserDefaults";
  v25[2] = v19;
  swift_unknownObjectRetain();
  static DispatchQoS.utility.getter();
  v30 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v12, *MEMORY[0x277D85260], v26);
  *(v2 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = v27;
  UUID.init()();
  (*(v28 + 32))(v2 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier, v20, v29);
  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = MEMORY[0x26D631880](0xD000000000000019, 0x80000002691AC910);
  v23 = [v21 initWithSuiteName_];

  *(v2 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_sruifUserDefaults) = v23;
  return v2;
}

uint64_t type metadata accessor for InstrumentationManager()
{
  result = type metadata singleton initialization cache for InstrumentationManager;
  if (!type metadata singleton initialization cache for InstrumentationManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for InstrumentationManager()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_2691A7818()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized InstrumentationManager.mapStateToStateEnum(state:)()
{
  swift_getObjectType();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = static NSObject.== infix(_:_:)();

  if (v1)
  {
    return 0;
  }

  v3 = *State.analyzing.unsafeMutableAddressor();
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return 3;
  }

  v5 = *State.available.unsafeMutableAddressor();
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    return 2;
  }

  v7 = *State.disabled.unsafeMutableAddressor();
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 1;
  }

  v9 = *State.postResponse.unsafeMutableAddressor();
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    return 8;
  }

  v11 = *State.processing.unsafeMutableAddressor();
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    return 5;
  }

  v13 = *State.responding.unsafeMutableAddressor();
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    return 6;
  }

  v15 = *State.resting.unsafeMutableAddressor();
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {
    return 7;
  }

  v17 = *State.understanding.unsafeMutableAddressor();
  v18 = static NSObject.== infix(_:_:)();

  if (v18)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id one-time initialization function for processing()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x69737365636F7250, 0xEA0000000000676ELL, v0, implicit closure #1 in variable initialization expression of static State.processing, 0);
  static State.processing = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.processing(uint64_t a1)
{
  v1 = 0;
  if (a1 > 8)
  {
    if (a1 == 9)
    {
      v2 = State.responding.unsafeMutableAddressor();
      goto LABEL_10;
    }

    if (a1 == 13)
    {
      v2 = State.available.unsafeMutableAddressor();
      goto LABEL_10;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = State.analyzing.unsafeMutableAddressor();
      goto LABEL_10;
    }

    if (a1 == 7)
    {
      v2 = State.postResponse.unsafeMutableAddressor();
LABEL_10:
      v1 = *v2;
      v3 = *v2;
    }
  }

  return v1;
}

uint64_t *State.processing.unsafeMutableAddressor()
{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  return &static State.processing;
}

id static State.processing.getter()
{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v1 = static State.processing;

  return v1;
}

uint64_t *CallState.allStates.unsafeMutableAddressor()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  return &static CallState.allStates;
}

uint64_t static CallState.allStates.getter()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates9CallStateC_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    if (MEMORY[0x26D631B00](a1))
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SiriStates9CallStateCGMd, &_ss11_SetStorageCy10SiriStates9CallStateCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      if (v1 < 0)
      {
        v6 = v1;
      }

      else
      {
        v6 = v4;
      }

      v5 = MEMORY[0x26D631B00](v6);
      if (!v5)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_14:
  v7 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v37 = v1;
    while (1)
    {
      v9 = MEMORY[0x26D631AD0](v8, v1);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for CallState();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v7 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_23;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v8 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_23:
        *(v7 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v11;
        v21 = *(v3 + 16);
        v10 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v10)
        {
          goto LABEL_37;
        }

        *(v3 + 16) = v22;
        if (v8 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = NSObject._rawHashValue(seed:)(v24);
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v7 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for CallState();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = static NSObject.== infix(_:_:)();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v7 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        *(v7 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v10 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v10)
        {
          goto LABEL_39;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Event@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized Event.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized Event.init(rawValue:)(unint64_t result)
{
  if (result > 0x10)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Event] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Event] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Event] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SiriStates5EventOGMd, &_sSay10SiriStates5EventOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Event] and conformance [A]);
  }

  return result;
}

uint64_t one-time initialization function for lock()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  static Clientele.lock = result;
  return result;
}

uint64_t static Clientele.add<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lock != -1)
  {
    v6 = a1;
    v7 = a2;
    swift_once();
    a2 = v7;
    a1 = v6;
  }

  v2 = static Clientele.lock;
  v3 = MEMORY[0x28223BE20](a1, a2);
  MEMORY[0x28223BE20](v3, v4);
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v8);
  os_unfair_lock_unlock(v2 + 4);
  return v8;
}

uint64_t partial apply for closure #1 in static Clientele.add<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (one-time initialization token for pointers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v5, v3);
  result = swift_endAccess();
  *a1 = v3;
  return result;
}

uint64_t static Clientele.contains<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lock != -1)
  {
    v9 = a1;
    v10 = a2;
    swift_once();
    a1 = v9;
    a2 = v10;
  }

  v2 = static Clientele.lock;
  v3 = MEMORY[0x28223BE20](a1, a2);
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v3;
  v11[10] = type metadata accessor for Optional();
  v11[11] = partial apply for closure #1 in static Clientele.contains<A>(_:);
  v11[12] = v11;
  v6 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v7));
  partial apply for closure #1 in OSAllocatedUnfairLock<A>.withLockUnchecked<A>(_:)();
  os_unfair_lock_unlock((v2 + v7));
  return v11[7];
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x26D631B70](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void static Clientele.remove<A>(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for lock != -1)
  {
    v5 = a1;
    v6 = a2;
    swift_once();
    a2 = v6;
    a1 = v5;
  }

  v2 = static Clientele.lock;
  v3 = MEMORY[0x28223BE20](a1, a2);
  MEMORY[0x28223BE20](v3, v4);
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x26D631B70](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySvGMd, &_ss11_SetStorageCySvGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = MEMORY[0x26D631B70](*(v6 + 40), v18);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x26D631B70](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySvGMd, &_ss11_SetStorageCySvGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySvGMd, &_ss11_SetStorageCySvGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = MEMORY[0x26D631B70](*(v6 + 40), v17);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x26D631B70](*(*v1 + 40), a1);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v13 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v12;
  *v1 = v13;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x26D631B70](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void partial apply for closure #1 in static Clientele.contains<A>(_:)(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    if (one-time initialization token for pointers != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (specialized Set.contains(_:)(v3, static Clientele.pointers))
    {
      v4 = v3;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;
}

uint64_t partial apply for closure #1 in static Clientele.remove<A>(_:)()
{
  v1 = *(v0 + 32);
  if (one-time initialization token for pointers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v1);
  return swift_endAccess();
}

uint64_t partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in OSAllocatedUnfairLock<A>.withLockUnchecked<A>(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}