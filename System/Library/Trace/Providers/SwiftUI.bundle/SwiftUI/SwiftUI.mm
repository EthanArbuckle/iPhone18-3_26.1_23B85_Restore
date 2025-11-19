id SwiftUIProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIProvider()
{
  result = type metadata singleton initialization cache for SwiftUIProvider;
  if (!type metadata singleton initialization cache for SwiftUIProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SwiftUIProvider()
{
  result = type metadata accessor for TraceConfig();
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

void specialized SwiftUIProvider.shouldStartTracing(configuration:)()
{
  v1 = v0;
  v2 = type metadata accessor for TraceConfig();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TraceModality();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TraceConfig.Version();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___SwiftUIProvider_config;
  swift_beginAccess();
  TraceConfig.version.getter();
  swift_endAccess();
  if ((*(v11 + 88))(v14, v10) != enum case for TraceConfig.Version.v1(_:))
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_5;
  }

  v16 = *(v0 + OBJC_IVAR___SwiftUIProvider_logger);
  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR___SwiftUIProvider_logger);
    swift_unknownObjectRetain();
    v18 = String._bridgeToObjectiveC()();
    [v16 warnWithMessage:v18];
    swift_unknownObjectRelease();

LABEL_5:
    type metadata accessor for SwiftUITrace();
    v19 = v24;
    (*(v6 + 104))(v9, enum case for TraceModality.ktrace(_:), v24);
    v21 = v25;
    v20 = v26;
    (*(v25 + 16))(v5, v1 + v15, v26);
    v22 = static SwiftUITrace.beginSwiftUITrace(modality:config:)();
    (*(v21 + 8))(v5, v20);
    (*(v6 + 8))(v9, v19);
    v23 = *(v1 + OBJC_IVAR___SwiftUIProvider_tracer);
    *(v1 + OBJC_IVAR___SwiftUIProvider_tracer) = v22;

    return;
  }

  __break(1u);
}

void specialized SwiftUIProvider.willFinish(catalog:file:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v19 - v4;
  if (a1)
  {
    v6 = *&v1[OBJC_IVAR___SwiftUIProvider_tracer];
    if (v6)
    {
      v7 = v6;
      Tracer.endTracing()();
      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      v9 = type metadata accessor for KtraceFile();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      v12 = v1;
      KtraceFile.init(file:owner:path:)();
      Tracer.appendChunks(to:)();

      v13 = *&v12[OBJC_IVAR___SwiftUIProvider_logger];
      if (v13)
      {
        v14 = *&v12[OBJC_IVAR___SwiftUIProvider_logger];
        swift_unknownObjectRetain();
        v15 = String._bridgeToObjectiveC()();

        [v13 warnWithMessage:v15];
        swift_unknownObjectRelease();

        type metadata accessor for SwiftUITrace();
        static SwiftUITrace.deinitialize()();

        return;
      }

      __break(1u);
      goto LABEL_12;
    }

    v16 = *&v1[OBJC_IVAR___SwiftUIProvider_logger];
    if (!v16)
    {
LABEL_13:
      __break(1u);
      return;
    }
  }

  else
  {
    v16 = *&v1[OBJC_IVAR___SwiftUIProvider_logger];
    if (!v16)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  v17 = *&v1[OBJC_IVAR___SwiftUIProvider_logger];
  swift_unknownObjectRetain();
  v20 = String._bridgeToObjectiveC()();
  [v16 warnWithMessage:v20];
  swift_unknownObjectRelease();
  v18 = v20;
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