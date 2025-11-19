Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransformationCapability()
{
  v1 = *v0;
  v5 = *(v0 + 24);
  v6 = *(v0 + 8);
  v4 = *(v0 + 40);
  v2 = *(v0 + 7);
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v1);
  TransformationDescriptor.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized TransformationPluginPackage.exposedCapabilities()()
{
  v0 = specialized TransformationPluginPackage.loadTransformationPlugin()();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 24))(ObjectType, v2);
  if (one-time initialization token for kToTyped != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    v35 = v0;
    if (v5)
    {
      v33 = ObjectType;
      v34 = v2;
      v6 = kToTyped;
      v47 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v7 = 0;
      v8 = v47;
      ObjectType = v5 - 1;
      v0 = v4 + 80;
      while (v7 < *(v4 + 16))
      {
        v9 = *(v0 - 40);
        v11 = *(v0 - 16);
        v10 = *(v0 - 8);
        v12 = *v0;
        v37 = *(v0 - 48);
        v38 = v9;
        v39 = *(v0 - 32);
        v40 = v11;
        v41 = v10;
        v42 = v12;

        v6(&v43, &v37);

        v47 = v8;
        v2 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v2 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v2 + 1, 1);
          v8 = v47;
        }

        *(v8 + 16) = v2 + 1;
        v14 = (v8 + (v2 << 6));
        v15 = v43;
        v16 = v44;
        v17 = v46;
        v14[4] = v45;
        v14[5] = v17;
        v14[2] = v15;
        v14[3] = v16;
        if (ObjectType == v7)
        {

          v2 = v34;
          v0 = v35;
          ObjectType = v33;
          goto LABEL_11;
        }

        v0 += 56;
        ++v7;
      }

      __break(1u);
      goto LABEL_24;
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v47 = v8;
    ObjectType = (*(v2 + 32))(ObjectType, v2);
    if (one-time initialization token for kToNamed != -1)
    {
      swift_once();
    }

    v18 = *(ObjectType + 16);
    if (!v18)
    {
      break;
    }

    v19 = kToNamed;
    v2 = *algn_1EDB28E38;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = 0;
    v4 = v36;
    v21 = v18 - 1;
    v22 = (ObjectType + 80);
    while (v20 < *(ObjectType + 16))
    {
      v23 = *(v22 - 5);
      v25 = *(v22 - 2);
      v24 = *(v22 - 1);
      v26 = *v22;
      v37 = *(v22 - 6);
      v38 = v23;
      v39 = *(v22 - 2);
      v40 = v25;
      v41 = v24;
      v42 = v26;

      v19(&v43, &v37);

      v0 = *(v36 + 16);
      v27 = *(v36 + 24);
      if (v0 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v0 + 1, 1);
      }

      *(v36 + 16) = v0 + 1;
      v28 = (v36 + (v0 << 6));
      v29 = v43;
      v30 = v44;
      v31 = v46;
      v28[4] = v45;
      v28[5] = v31;
      v28[2] = v29;
      v28[3] = v30;
      if (v21 == v20)
      {

        goto LABEL_22;
      }

      v22 += 7;
      ++v20;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_22:
  specialized Array.append<A>(contentsOf:)(v4);
  swift_unknownObjectRelease();
  return v47;
}

uint64_t TransformationPluginPackage.exposedCapabilities()(uint64_t a1, uint64_t a2)
{
  v2 = TransformationPluginPackage.loadTransformationPlugin()(a1, a2);
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 24))(ObjectType, v4);
  if (one-time initialization token for kToTyped != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v7 = *(v6 + 16);
    v31 = v2;
    if (v7)
    {
      v29 = ObjectType;
      v30 = v4;
      v8 = kToTyped;
      v44 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v9 = 0;
      v10 = v44;
      ObjectType = v7 - 1;
      v2 = (v6 + 80);
      while (v9 < *(v6 + 16))
      {
        v12 = *(v2 - 6);
        v11 = *(v2 - 5);
        v14 = *(v2 - 2);
        v13 = *(v2 - 1);
        v15 = *v2;
        OUTLINED_FUNCTION_10_4();
        v39 = v15;

        v8(&v40, &v33);

        v44 = v10;
        v4 = *(v10 + 16);
        v16 = *(v10 + 24);
        if (v4 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v4 + 1, 1);
          v10 = v44;
        }

        *(v10 + 16) = v4 + 1;
        OUTLINED_FUNCTION_5_5((v10 + (v4 << 6)), v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
        if (ObjectType == v9)
        {

          v4 = v30;
          ObjectType = v29;
          goto LABEL_11;
        }

        v2 += 7;
        ++v9;
      }

      __break(1u);
      goto LABEL_24;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v44 = v10;
    ObjectType = (*(v4 + 32))(ObjectType, v4);
    if (one-time initialization token for kToNamed != -1)
    {
      OUTLINED_FUNCTION_2_8();
    }

    v17 = *(ObjectType + 16);
    if (!v17)
    {
      break;
    }

    v18 = kToNamed;
    v4 = *algn_1EDB28E38;
    v32 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_8_5();
    v19 = 0;
    v6 = v32;
    v20 = v17 - 1;
    v2 = (ObjectType + 80);
    while (v19 < *(ObjectType + 16))
    {
      v22 = *(v2 - 6);
      v21 = *(v2 - 5);
      v24 = *(v2 - 2);
      v23 = *(v2 - 1);
      v25 = *v2;
      OUTLINED_FUNCTION_10_4();
      v39 = v25;

      v18(&v40, &v33);

      v27 = *(v6 + 16);
      v26 = *(v6 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
      }

      *(v6 + 16) = v27 + 1;
      OUTLINED_FUNCTION_5_5((v6 + (v27 << 6)), v29, v30, v31, v6, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
      if (v20 == v19)
      {

        goto LABEL_22;
      }

      v2 += 7;
      ++v19;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_3_5();
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_22:
  specialized Array.append<A>(contentsOf:)(v6);
  swift_unknownObjectRelease();
  return v44;
}

uint64_t specialized TransformationPluginPackage.loadTransformationPlugin()()
{
  result = NSBundle.loadPlugin()();
  if (!v0)
  {
    v2 = result;
    swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v2);
    if (!result)
    {
      lazy protocol witness table accessor for type PluginBundleError and conformance PluginBundleError();
      swift_allocError();
      *v3 = 2;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t TransformationPluginPackage.loadTransformationPlugin()(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 16) + 40))();
  if (!v2)
  {
    v4 = result;
    swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v4);
    if (!result)
    {
      lazy protocol witness table accessor for type PluginBundleError and conformance PluginBundleError();
      swift_allocError();
      *v5 = 2;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t specialized TransformationPluginPackage.get(capability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized TransformationPluginPackage.loadTransformationPlugin()();
  v5 = v4;
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v13 = *(a1 + 8);
  v14 = *(a1 + 24);
  v7 = *(v5 + 40);
  outlined init with copy of TransformationIdentifier(&v17, v12);
  v7(v15, &v13, ObjectType, v5);

  v8 = v16;
  if (v16)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v15, v16);
    *(a2 + 24) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    swift_unknownObjectRelease();
    result = outlined destroy of CheckedContinuation<(), Error>?(v15, &_s13SiriUtilities12Transforming_pSgMd, &_s13SiriUtilities12Transforming_pSgMR);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t TransformationPluginPackage.get(capability:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  TransformationPluginPackage.loadTransformationPlugin()(a2, a3);
  v9 = v8;
  ObjectType = swift_getObjectType();
  v16[0] = v6;
  v16[1] = v5;
  v16[2] = v7;
  v11 = *(v9 + 40);

  v11(v17, v16, ObjectType, v9);

  v12 = v18;
  if (v18)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v17, v18);
    *(a4 + 24) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v13, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    swift_unknownObjectRelease();
    result = outlined destroy of CheckedContinuation<(), Error>?(v17, &_s13SiriUtilities12Transforming_pSgMd, &_s13SiriUtilities12Transforming_pSgMR);
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void NSBundle.getTransformations(key:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E12A8BC0]();
  v6 = [v2 objectForInfoDictionaryKey_];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0;
    v46 = 0u;
  }

  v43.value.id.name = v45;
  *&v43.value.id.version = v46;
  if (*(&v46 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    if (swift_dynamicCast())
    {
      v7 = 0;
      v8 = v44;
      v9 = *(v44 + 16);
      v38 = MEMORY[0x1E69E7CC0];
      v39 = v9;
      while (1)
      {
        if (v9 == v7)
        {

          return;
        }

        if (v7 >= *(v8 + 16))
        {
          break;
        }

        v10 = *(v8 + 8 * v7 + 32);

        TransformationDescriptor.init(from:)(&v43, v11);
        object = v43.value.id.name._object;
        if (v43.value.id.name._object)
        {
          v42 = v3;
          countAndFlagsBits = v43.value.id.name._countAndFlagsBits;
          v37 = *&v43.value.id.version;
          v31 = v43.value.outputType.encoding._countAndFlagsBits;
          v30 = v43.value.outputType.encoding._object;
          v32 = v43.value.inputType.encoding._object;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v33 = v38;
          }

          else
          {
            v36 = *(v38 + 16);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v34 = *(v33 + 16);
          if (v34 >= *(v33 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v7;
          *(v33 + 16) = v34 + 1;
          v38 = v33;
          v35 = v33 + 56 * v34;
          *(v35 + 32) = countAndFlagsBits;
          *(v35 + 40) = object;
          *(v35 + 48) = v37;
          *(v35 + 64) = v32;
          *(v35 + 72) = v31;
          *(v35 + 80) = v30;
          v3 = v42;
          v9 = v39;
        }

        else
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          __swift_project_value_buffer(v13, static Logger.logger);

          v14 = v3;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v43.value.id.name._countAndFlagsBits = v41;
            *v17 = 136315650;
            *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v43.value.id.name._countAndFlagsBits);
            *(v17 + 12) = 2048;
            *(v17 + 14) = v7;
            *(v17 + 22) = 2080;
            v18 = [v14 bundlePath];
            v19 = v7;
            v20 = a2;
            v21 = v8;
            v22 = v3;
            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v24;

            v26 = v23;
            v3 = v22;
            v8 = v21;
            a2 = v20;
            v7 = v19;
            v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v43.value.id.name._countAndFlagsBits);

            *(v17 + 24) = v27;
            _os_log_impl(&dword_1DD1FF000, v15, v16, "Could not load %s[%ld] from %s", v17, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12AA0F0](v41, -1, -1);
            v28 = v17;
            v9 = v39;
            MEMORY[0x1E12AA0F0](v28, -1, -1);
          }

          ++v7;
        }
      }

      __break(1u);
    }
  }

  else
  {
    outlined destroy of CheckedContinuation<(), Error>?(&v43, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t NSBundle.advertisedCapabilities()()
{
  v1 = 0xD000000000000021;
  OUTLINED_FUNCTION_13_2("SiriUtilitiesTypedTransformations");
  v3 = v2;
  if (one-time initialization token for kToTyped != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = kToTyped;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v67 = v0;
      v86[0] = MEMORY[0x1E69E7CC0];
      v0 = v86;
      OUTLINED_FUNCTION_8_5();
      v7 = 0;
      v8 = v86[0];
      v9 = v5 - 1;
      v10 = (v3 + 80);
      while (v7 < *(v3 + 16))
      {
        v11 = *(v10 - 5);
        v13 = *(v10 - 2);
        v12 = *(v10 - 1);
        v14 = *v10;
        v76 = *(v10 - 6);
        v77 = v11;
        v78 = *(v10 - 2);
        v79 = v13;
        v80 = v12;
        v81 = v14;

        v23 = OUTLINED_FUNCTION_6_5(v15, v16, v17, v18, v19, v20, v21, v22, v67, v71, v75, v76);
        v4(v23);
        v0 = v77;

        v86[0] = v8;
        v1 = *(v8 + 16);
        v24 = *(v8 + 24);
        if (v1 >= v24 >> 1)
        {
          v0 = v86;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v1 + 1, 1);
          v8 = v86[0];
        }

        *(v8 + 16) = v1 + 1;
        OUTLINED_FUNCTION_1_7((v8 + (v1 << 6)), v68, v72, v75, v76, v77, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84, v85);
        if (v9 == v7)
        {

          v0 = v67;
          v6 = MEMORY[0x1E69E7CC0];
          v1 = 0xD000000000000021;
          goto LABEL_11;
        }

        v10 += 7;
        ++v7;
      }

      __break(1u);
      goto LABEL_35;
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v86[0] = v8;
    if (!*(v8 + 16))
    {
      NSBundle.getTransformations(key:)(v1 + 4, 0x80000001DD26A770);
      v3 = v25;
      v26 = *(v25 + 16);
      if (v26)
      {
        v67 = v0;
        v75 = v6;
        v0 = &v75;
        OUTLINED_FUNCTION_8_5();
        v27 = 0;
        v28 = v75;
        v71 = v26 - 1;
        v1 = v3 + 80;
        while (v27 < *(v3 + 16))
        {
          v29 = v3;
          v30 = *(v1 - 40);
          v32 = *(v1 - 16);
          v31 = *(v1 - 8);
          v33 = *v1;
          v76 = *(v1 - 48);
          v77 = v30;
          v78 = *(v1 - 32);
          v79 = v32;
          v80 = v31;
          v81 = v33;

          v42 = OUTLINED_FUNCTION_6_5(v34, v35, v36, v37, v38, v39, v40, v41, v67, v71, v75, v76);
          v4(v42);
          v0 = v77;

          v75 = v28;
          v44 = *(v28 + 16);
          v43 = *(v28 + 24);
          if (v44 >= v43 >> 1)
          {
            v0 = &v75;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
            v28 = v75;
          }

          *(v28 + 16) = v44 + 1;
          OUTLINED_FUNCTION_1_7((v28 + (v44 << 6)), v69, v73, v75, v76, v77, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84, v85);
          if (v71 == v27)
          {

            v6 = MEMORY[0x1E69E7CC0];
            goto LABEL_21;
          }

          v1 += 56;
          ++v27;
          v3 = v29;
        }

        goto LABEL_36;
      }

      v28 = MEMORY[0x1E69E7CC0];
LABEL_21:
      v86[0] = v28;
    }

    OUTLINED_FUNCTION_13_2("SiriUtilitiesNamedTransformations");
    v1 = v45;
    if (one-time initialization token for kToNamed != -1)
    {
      OUTLINED_FUNCTION_2_8();
    }

    v3 = *(v1 + 16);
    if (!v3)
    {
      break;
    }

    v46 = kToNamed;
    v75 = v6;
    v0 = &v75;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v47 = 0;
    v48 = v75;
    v49 = v3 - 1;
    v50 = (v1 + 80);
    while (v47 < *(v1 + 16))
    {
      v51 = *(v50 - 5);
      v53 = *(v50 - 2);
      v52 = *(v50 - 1);
      v54 = *v50;
      v76 = *(v50 - 6);
      v77 = v51;
      v78 = *(v50 - 2);
      v79 = v53;
      v80 = v52;
      v81 = v54;

      v63 = OUTLINED_FUNCTION_6_5(v55, v56, v57, v58, v59, v60, v61, v62, v67, v71, v75, v76);
      v46(v63);
      v0 = v77;

      v75 = v48;
      v65 = *(v48 + 16);
      v64 = *(v48 + 24);
      v3 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v0 = &v75;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1);
        v48 = v75;
      }

      *(v48 + 16) = v3;
      OUTLINED_FUNCTION_1_7((v48 + (v65 << 6)), v70, v74, v75, v76, v77, v78, *(&v78 + 1), v79, v80, v81, v82, v83, v84, v85);
      if (v49 == v47)
      {

        goto LABEL_33;
      }

      v50 += 7;
      ++v47;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_3_5();
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_33:
  specialized Array.append<A>(contentsOf:)(v48);
  return v86[0];
}

uint64_t protocol witness for PluginCapabilityExposing.get(capability:) in conformance NSBundle@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v5 = *v2;
  return specialized TransformationPluginPackage.get(capability:)(v7, a2);
}

uint64_t closure #1 in toCapability(type:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  *a3 = a2 & 1;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = *(a1 + 1);
  *(a3 + 40) = v6;
  *(a3 + 48) = v5;
  *(a3 + 56) = v7;
}

uint64_t one-time initialization function for kToTyped()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  kToTyped = closure #1 in toCapability(type:)partial apply;
  unk_1EDB28E20 = result;
  return result;
}

uint64_t one-time initialization function for kToNamed()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  kToNamed = partial apply for closure #1 in toCapability(type:);
  *algn_1EDB28E38 = result;
  return result;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, "dl");
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities24TransformationCapabilityVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities24TransformationCapabilityVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC13SiriUtilities24TransformationCapabilityV0lM4TypeO10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType()
{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationDescriptor and conformance TransformationDescriptor()
{
  result = lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor;
  if (!lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor;
  if (!lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor;
  if (!lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationDescriptor and conformance TransformationDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationCapability and conformance TransformationCapability()
{
  result = lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability;
  if (!lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability;
  if (!lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability;
  if (!lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability;
  if (!lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability and conformance TransformationCapability);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for NSBundle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NSBundle and conformance NSBundle();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSBundle and conformance NSBundle()
{
  result = lazy protocol witness table cache variable for type NSBundle and conformance NSBundle;
  if (!lazy protocol witness table cache variable for type NSBundle and conformance NSBundle)
  {
    type metadata accessor for NSBundle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSBundle and conformance NSBundle);
  }

  return result;
}

uint64_t destroy for TransformationCapability(void *a1)
{
  v2 = a1[2];

  v3 = a1[5];

  v4 = a1[7];
}

uint64_t initializeWithCopy for TransformationCapability(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for TransformationCapability(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 56);
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;

  return a1;
}

uint64_t assignWithTake for TransformationCapability(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v7 = *(a2 + 56);
  v8 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for TransformationCapability(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for TransformationCapability(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransformationCapability.TransformationCapabilityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Void __swiftcall TransformationRegistry.registerCommonTransformers()()
{
  if (one-time initialization token for _commonTransformers != -1)
  {
    swift_once();
  }

  v1 = *(static TransformationRegistry._commonTransformers + 2);
  if (v1)
  {
    v2 = *(*v0 + 184);
    v3 = static TransformationRegistry._commonTransformers + 32;
    do
    {
      outlined init with copy of Transforming(v3, v4);
      v2(v4);
      __swift_destroy_boxed_opaque_existential_0(v4);
      v3 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t one-time initialization function for _commonTransformers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD266D00;
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v1 = static Transformer<>.transformer;
  v2 = *static Transformer<>.transformer;
  v3 = *(static Transformer<>.transformer + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySis5Int32VGMd, &_s13SiriUtilities11TransformerVySis5Int32VGMR);
  v5 = swift_allocObject();
  v6 = *(v1 + 8);
  *(v0 + 56) = v4;
  *(v0 + 64) = &protocol witness table for Transformer<A, B>;
  *(v0 + 32) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v3;
  v7 = one-time initialization token for transformer;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static Transformer<>.transformer;
  v9 = *static Transformer<>.transformer;
  v10 = *(static Transformer<>.transformer + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySis5Int64VGMd, &_s13SiriUtilities11TransformerVySis5Int64VGMR);
  v12 = swift_allocObject();
  v13 = *(v8 + 8);
  *(v0 + 96) = v11;
  *(v0 + 104) = &protocol witness table for Transformer<A, B>;
  *(v0 + 72) = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v13;
  *(v12 + 40) = v10;
  v14 = one-time initialization token for transformer;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static Transformer<>.transformer;
  v16 = *static Transformer<>.transformer;
  v17 = *(static Transformer<>.transformer + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySis6UInt32VGMd, &_s13SiriUtilities11TransformerVySis6UInt32VGMR);
  v19 = swift_allocObject();
  v20 = *(v15 + 8);
  *(v0 + 136) = v18;
  *(v0 + 144) = &protocol witness table for Transformer<A, B>;
  *(v0 + 112) = v19;
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  *(v19 + 40) = v17;
  v21 = one-time initialization token for transformer;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static Transformer<>.transformer;
  v23 = *static Transformer<>.transformer;
  v24 = *(static Transformer<>.transformer + 24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySis6UInt64VGMd, &_s13SiriUtilities11TransformerVySis6UInt64VGMR);
  v26 = swift_allocObject();
  v27 = *(v22 + 8);
  *(v0 + 176) = v25;
  *(v0 + 184) = &protocol witness table for Transformer<A, B>;
  *(v0 + 152) = v26;
  *(v26 + 16) = v23;
  *(v26 + 24) = v27;
  *(v26 + 40) = v24;
  v28 = one-time initialization token for transformer;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = static Transformer<>.transformer;
  v30 = *static Transformer<>.transformer;
  v31 = *(static Transformer<>.transformer + 24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySiSdGMd, &_s13SiriUtilities11TransformerVySiSdGMR);
  v33 = swift_allocObject();
  v34 = *(v29 + 8);
  *(v0 + 216) = v32;
  *(v0 + 224) = &protocol witness table for Transformer<A, B>;
  *(v0 + 192) = v33;
  *(v33 + 16) = v30;
  *(v33 + 24) = v34;
  *(v33 + 40) = v31;
  v35 = one-time initialization token for transformer;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = static Transformer<>.transformer;
  v37 = *static Transformer<>.transformer;
  v38 = *(static Transformer<>.transformer + 24);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySiSfGMd, &_s13SiriUtilities11TransformerVySiSfGMR);
  v40 = swift_allocObject();
  v41 = *(v36 + 8);
  *(v0 + 256) = v39;
  *(v0 + 264) = &protocol witness table for Transformer<A, B>;
  *(v0 + 232) = v40;
  *(v40 + 16) = v37;
  *(v40 + 24) = v41;
  *(v40 + 40) = v38;
  v42 = one-time initialization token for transformer;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = static Transformer<>.transformer;
  v44 = *static Transformer<>.transformer;
  v45 = *(static Transformer<>.transformer + 24);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySiSSGMd, &_s13SiriUtilities11TransformerVySiSSGMR);
  v47 = swift_allocObject();
  v48 = *(v43 + 8);
  *(v0 + 296) = v46;
  *(v0 + 304) = &protocol witness table for Transformer<A, B>;
  *(v0 + 272) = v47;
  *(v47 + 16) = v44;
  *(v47 + 24) = v48;
  *(v47 + 40) = v45;
  v49 = one-time initialization token for transformer;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = static Transformer<>.transformer;
  v51 = *static Transformer<>.transformer;
  v52 = *(static Transformer<>.transformer + 24);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySiSbGMd, &_s13SiriUtilities11TransformerVySiSbGMR);
  v54 = swift_allocObject();
  v55 = *(v50 + 8);
  *(v0 + 336) = v53;
  *(v0 + 344) = &protocol witness table for Transformer<A, B>;
  *(v0 + 312) = v54;
  *(v54 + 16) = v51;
  *(v54 + 24) = v55;
  *(v54 + 40) = v52;
  v56 = one-time initialization token for transformer;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = static Transformer<>.transformer;
  v58 = *static Transformer<>.transformer;
  v59 = *(static Transformer<>.transformer + 24);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int32VSiGMd, &_s13SiriUtilities11TransformerVys5Int32VSiGMR);
  v61 = swift_allocObject();
  v62 = *(v57 + 8);
  *(v0 + 376) = v60;
  *(v0 + 384) = &protocol witness table for Transformer<A, B>;
  *(v0 + 352) = v61;
  *(v61 + 16) = v58;
  *(v61 + 24) = v62;
  *(v61 + 40) = v59;
  v63 = one-time initialization token for transformer;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = static Transformer<>.transformer;
  v65 = *static Transformer<>.transformer;
  v66 = *(static Transformer<>.transformer + 24);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int32Vs5Int64VGMd, &_s13SiriUtilities11TransformerVys5Int32Vs5Int64VGMR);
  v68 = swift_allocObject();
  v69 = *(v64 + 8);
  *(v0 + 416) = v67;
  *(v0 + 424) = &protocol witness table for Transformer<A, B>;
  *(v0 + 392) = v68;
  *(v68 + 16) = v65;
  *(v68 + 24) = v69;
  *(v68 + 40) = v66;
  v70 = one-time initialization token for transformer;

  if (v70 != -1)
  {
    swift_once();
  }

  v71 = static Transformer<>.transformer;
  v72 = *static Transformer<>.transformer;
  v73 = *(static Transformer<>.transformer + 24);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int32Vs6UInt32VGMd, &_s13SiriUtilities11TransformerVys5Int32Vs6UInt32VGMR);
  v75 = swift_allocObject();
  v76 = *(v71 + 8);
  *(v0 + 456) = v74;
  *(v0 + 464) = &protocol witness table for Transformer<A, B>;
  *(v0 + 432) = v75;
  *(v75 + 16) = v72;
  *(v75 + 24) = v76;
  *(v75 + 40) = v73;
  v77 = one-time initialization token for transformer;

  if (v77 != -1)
  {
    swift_once();
  }

  v78 = static Transformer<>.transformer;
  v79 = *static Transformer<>.transformer;
  v80 = *(static Transformer<>.transformer + 24);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int32Vs6UInt64VGMd, &_s13SiriUtilities11TransformerVys5Int32Vs6UInt64VGMR);
  v82 = swift_allocObject();
  v83 = *(v78 + 8);
  *(v0 + 496) = v81;
  *(v0 + 504) = &protocol witness table for Transformer<A, B>;
  *(v0 + 472) = v82;
  *(v82 + 16) = v79;
  *(v82 + 24) = v83;
  *(v82 + 40) = v80;
  v84 = one-time initialization token for transformer;

  if (v84 != -1)
  {
    swift_once();
  }

  v85 = static Transformer<>.transformer;
  v86 = *static Transformer<>.transformer;
  v87 = *(static Transformer<>.transformer + 24);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int32VSdGMd, &_s13SiriUtilities11TransformerVys5Int32VSdGMR);
  v89 = swift_allocObject();
  v90 = *(v85 + 8);
  *(v0 + 536) = v88;
  *(v0 + 544) = &protocol witness table for Transformer<A, B>;
  *(v0 + 512) = v89;
  *(v89 + 16) = v86;
  *(v89 + 24) = v90;
  *(v89 + 40) = v87;
  v91 = one-time initialization token for transformer;

  if (v91 != -1)
  {
    swift_once();
  }

  v92 = static Transformer<>.transformer;
  v93 = *static Transformer<>.transformer;
  v94 = *(static Transformer<>.transformer + 24);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int32VSfGMd, &_s13SiriUtilities11TransformerVys5Int32VSfGMR);
  v96 = swift_allocObject();
  v97 = *(v92 + 8);
  *(v0 + 576) = v95;
  *(v0 + 584) = &protocol witness table for Transformer<A, B>;
  *(v0 + 552) = v96;
  *(v96 + 16) = v93;
  *(v96 + 24) = v97;
  *(v96 + 40) = v94;
  v98 = one-time initialization token for transformer;

  if (v98 != -1)
  {
    swift_once();
  }

  v99 = static Transformer<>.transformer;
  v100 = *static Transformer<>.transformer;
  v101 = *(static Transformer<>.transformer + 24);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int32VSSGMd, &_s13SiriUtilities11TransformerVys5Int32VSSGMR);
  v103 = swift_allocObject();
  v104 = *(v99 + 8);
  *(v0 + 616) = v102;
  *(v0 + 624) = &protocol witness table for Transformer<A, B>;
  *(v0 + 592) = v103;
  *(v103 + 16) = v100;
  *(v103 + 24) = v104;
  *(v103 + 40) = v101;
  v105 = one-time initialization token for transformer;

  if (v105 != -1)
  {
    swift_once();
  }

  v106 = static Transformer<>.transformer;
  v107 = *static Transformer<>.transformer;
  v108 = *(static Transformer<>.transformer + 24);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int64Vs5Int32VGMd, &_s13SiriUtilities11TransformerVys5Int64Vs5Int32VGMR);
  v110 = swift_allocObject();
  v111 = *(v106 + 8);
  *(v0 + 656) = v109;
  *(v0 + 664) = &protocol witness table for Transformer<A, B>;
  *(v0 + 632) = v110;
  *(v110 + 16) = v107;
  *(v110 + 24) = v111;
  *(v110 + 40) = v108;
  v112 = one-time initialization token for transformer;

  if (v112 != -1)
  {
    swift_once();
  }

  v113 = static Transformer<>.transformer;
  v114 = *static Transformer<>.transformer;
  v115 = *(static Transformer<>.transformer + 24);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int64VSiGMd, &_s13SiriUtilities11TransformerVys5Int64VSiGMR);
  v117 = swift_allocObject();
  v118 = *(v113 + 8);
  *(v0 + 696) = v116;
  *(v0 + 704) = &protocol witness table for Transformer<A, B>;
  *(v0 + 672) = v117;
  *(v117 + 16) = v114;
  *(v117 + 24) = v118;
  *(v117 + 40) = v115;
  v119 = one-time initialization token for transformer;

  if (v119 != -1)
  {
    swift_once();
  }

  v120 = static Transformer<>.transformer;
  v121 = *static Transformer<>.transformer;
  v122 = *(static Transformer<>.transformer + 24);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int64Vs6UInt32VGMd, &_s13SiriUtilities11TransformerVys5Int64Vs6UInt32VGMR);
  v124 = swift_allocObject();
  v125 = *(v120 + 8);
  *(v0 + 736) = v123;
  *(v0 + 744) = &protocol witness table for Transformer<A, B>;
  *(v0 + 712) = v124;
  *(v124 + 16) = v121;
  *(v124 + 24) = v125;
  *(v124 + 40) = v122;
  v126 = one-time initialization token for transformer;

  if (v126 != -1)
  {
    swift_once();
  }

  v127 = static Transformer<>.transformer;
  v128 = *static Transformer<>.transformer;
  v129 = *(static Transformer<>.transformer + 24);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int64Vs6UInt64VGMd, &_s13SiriUtilities11TransformerVys5Int64Vs6UInt64VGMR);
  v131 = swift_allocObject();
  v132 = *(v127 + 8);
  *(v0 + 776) = v130;
  *(v0 + 784) = &protocol witness table for Transformer<A, B>;
  *(v0 + 752) = v131;
  *(v131 + 16) = v128;
  *(v131 + 24) = v132;
  *(v131 + 40) = v129;
  v133 = one-time initialization token for transformer;

  if (v133 != -1)
  {
    swift_once();
  }

  v134 = static Transformer<>.transformer;
  v135 = *static Transformer<>.transformer;
  v136 = *(static Transformer<>.transformer + 24);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int64VSdGMd, &_s13SiriUtilities11TransformerVys5Int64VSdGMR);
  v138 = swift_allocObject();
  v139 = *(v134 + 8);
  *(v0 + 816) = v137;
  *(v0 + 824) = &protocol witness table for Transformer<A, B>;
  *(v0 + 792) = v138;
  *(v138 + 16) = v135;
  *(v138 + 24) = v139;
  *(v138 + 40) = v136;
  v140 = one-time initialization token for transformer;

  if (v140 != -1)
  {
    swift_once();
  }

  v141 = static Transformer<>.transformer;
  v142 = *static Transformer<>.transformer;
  v143 = *(static Transformer<>.transformer + 24);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int64VSfGMd, &_s13SiriUtilities11TransformerVys5Int64VSfGMR);
  v145 = swift_allocObject();
  v146 = *(v141 + 8);
  *(v0 + 856) = v144;
  *(v0 + 864) = &protocol witness table for Transformer<A, B>;
  *(v0 + 832) = v145;
  *(v145 + 16) = v142;
  *(v145 + 24) = v146;
  *(v145 + 40) = v143;
  v147 = one-time initialization token for transformer;

  if (v147 != -1)
  {
    swift_once();
  }

  v148 = static Transformer<>.transformer;
  v149 = *static Transformer<>.transformer;
  v150 = *(static Transformer<>.transformer + 24);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys5Int64VSSGMd, &_s13SiriUtilities11TransformerVys5Int64VSSGMR);
  v152 = swift_allocObject();
  v153 = *(v148 + 8);
  *(v0 + 896) = v151;
  *(v0 + 904) = &protocol witness table for Transformer<A, B>;
  *(v0 + 872) = v152;
  *(v152 + 16) = v149;
  *(v152 + 24) = v153;
  *(v152 + 40) = v150;
  v154 = one-time initialization token for transformer;

  if (v154 != -1)
  {
    swift_once();
  }

  v155 = static Transformer<>.transformer;
  v156 = *static Transformer<>.transformer;
  v157 = *(static Transformer<>.transformer + 24);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt32Vs5Int32VGMd, &_s13SiriUtilities11TransformerVys6UInt32Vs5Int32VGMR);
  v159 = swift_allocObject();
  v160 = *(v155 + 8);
  *(v0 + 936) = v158;
  *(v0 + 944) = &protocol witness table for Transformer<A, B>;
  *(v0 + 912) = v159;
  *(v159 + 16) = v156;
  *(v159 + 24) = v160;
  *(v159 + 40) = v157;
  v161 = one-time initialization token for transformer;

  if (v161 != -1)
  {
    swift_once();
  }

  v162 = static Transformer<>.transformer;
  v163 = *static Transformer<>.transformer;
  v164 = *(static Transformer<>.transformer + 24);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt32Vs5Int64VGMd, &_s13SiriUtilities11TransformerVys6UInt32Vs5Int64VGMR);
  v166 = swift_allocObject();
  v167 = *(v162 + 8);
  *(v0 + 976) = v165;
  *(v0 + 984) = &protocol witness table for Transformer<A, B>;
  *(v0 + 952) = v166;
  *(v166 + 16) = v163;
  *(v166 + 24) = v167;
  *(v166 + 40) = v164;
  v168 = one-time initialization token for transformer;

  if (v168 != -1)
  {
    swift_once();
  }

  v169 = static Transformer<>.transformer;
  v170 = *static Transformer<>.transformer;
  v171 = *(static Transformer<>.transformer + 24);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt32VSiGMd, &_s13SiriUtilities11TransformerVys6UInt32VSiGMR);
  v173 = swift_allocObject();
  v174 = *(v169 + 8);
  *(v0 + 1016) = v172;
  *(v0 + 1024) = &protocol witness table for Transformer<A, B>;
  *(v0 + 992) = v173;
  *(v173 + 16) = v170;
  *(v173 + 24) = v174;
  *(v173 + 40) = v171;
  v175 = one-time initialization token for transformer;

  if (v175 != -1)
  {
    swift_once();
  }

  v176 = static Transformer<>.transformer;
  v177 = *static Transformer<>.transformer;
  v178 = *(static Transformer<>.transformer + 24);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt32Vs6UInt64VGMd, &_s13SiriUtilities11TransformerVys6UInt32Vs6UInt64VGMR);
  v180 = swift_allocObject();
  v181 = *(v176 + 8);
  *(v0 + 1056) = v179;
  *(v0 + 1064) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1032) = v180;
  *(v180 + 16) = v177;
  *(v180 + 24) = v181;
  *(v180 + 40) = v178;
  v182 = one-time initialization token for transformer;

  if (v182 != -1)
  {
    swift_once();
  }

  v183 = static Transformer<>.transformer;
  v184 = *static Transformer<>.transformer;
  v185 = *(static Transformer<>.transformer + 24);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt32VSdGMd, &_s13SiriUtilities11TransformerVys6UInt32VSdGMR);
  v187 = swift_allocObject();
  v188 = *(v183 + 8);
  *(v0 + 1096) = v186;
  *(v0 + 1104) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1072) = v187;
  *(v187 + 16) = v184;
  *(v187 + 24) = v188;
  *(v187 + 40) = v185;
  v189 = one-time initialization token for transformer;

  if (v189 != -1)
  {
    swift_once();
  }

  v190 = static Transformer<>.transformer;
  v191 = *static Transformer<>.transformer;
  v192 = *(static Transformer<>.transformer + 24);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt32VSfGMd, &_s13SiriUtilities11TransformerVys6UInt32VSfGMR);
  v194 = swift_allocObject();
  v195 = *(v190 + 8);
  *(v0 + 1136) = v193;
  *(v0 + 1144) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1112) = v194;
  *(v194 + 16) = v191;
  *(v194 + 24) = v195;
  *(v194 + 40) = v192;
  v196 = one-time initialization token for transformer;

  if (v196 != -1)
  {
    swift_once();
  }

  v197 = static Transformer<>.transformer;
  v198 = *static Transformer<>.transformer;
  v199 = *(static Transformer<>.transformer + 24);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt32VSSGMd, &_s13SiriUtilities11TransformerVys6UInt32VSSGMR);
  v201 = swift_allocObject();
  v202 = *(v197 + 8);
  *(v0 + 1176) = v200;
  *(v0 + 1184) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1152) = v201;
  *(v201 + 16) = v198;
  *(v201 + 24) = v202;
  *(v201 + 40) = v199;
  v203 = one-time initialization token for transformer;

  if (v203 != -1)
  {
    swift_once();
  }

  v204 = static Transformer<>.transformer;
  v205 = *static Transformer<>.transformer;
  v206 = *(static Transformer<>.transformer + 24);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt64Vs5Int32VGMd, &_s13SiriUtilities11TransformerVys6UInt64Vs5Int32VGMR);
  v208 = swift_allocObject();
  v209 = *(v204 + 8);
  *(v0 + 1216) = v207;
  *(v0 + 1224) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1192) = v208;
  *(v208 + 16) = v205;
  *(v208 + 24) = v209;
  *(v208 + 40) = v206;
  v210 = one-time initialization token for transformer;

  if (v210 != -1)
  {
    swift_once();
  }

  v211 = static Transformer<>.transformer;
  v212 = *static Transformer<>.transformer;
  v213 = *(static Transformer<>.transformer + 24);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt64Vs5Int64VGMd, &_s13SiriUtilities11TransformerVys6UInt64Vs5Int64VGMR);
  v215 = swift_allocObject();
  v216 = *(v211 + 8);
  *(v0 + 1256) = v214;
  *(v0 + 1264) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1232) = v215;
  *(v215 + 16) = v212;
  *(v215 + 24) = v216;
  *(v215 + 40) = v213;
  v217 = one-time initialization token for transformer;

  if (v217 != -1)
  {
    swift_once();
  }

  v218 = static Transformer<>.transformer;
  v219 = *static Transformer<>.transformer;
  v220 = *(static Transformer<>.transformer + 24);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt64Vs6UInt32VGMd, &_s13SiriUtilities11TransformerVys6UInt64Vs6UInt32VGMR);
  v222 = swift_allocObject();
  v223 = *(v218 + 8);
  *(v0 + 1296) = v221;
  *(v0 + 1304) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1272) = v222;
  *(v222 + 16) = v219;
  *(v222 + 24) = v223;
  *(v222 + 40) = v220;
  v224 = one-time initialization token for transformer;

  if (v224 != -1)
  {
    swift_once();
  }

  v225 = static Transformer<>.transformer;
  v226 = *static Transformer<>.transformer;
  v227 = *(static Transformer<>.transformer + 24);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt64VSiGMd, &_s13SiriUtilities11TransformerVys6UInt64VSiGMR);
  v229 = swift_allocObject();
  v230 = *(v225 + 8);
  *(v0 + 1336) = v228;
  *(v0 + 1344) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1312) = v229;
  *(v229 + 16) = v226;
  *(v229 + 24) = v230;
  *(v229 + 40) = v227;
  v231 = one-time initialization token for transformer;

  if (v231 != -1)
  {
    swift_once();
  }

  v232 = static Transformer<>.transformer;
  v233 = *static Transformer<>.transformer;
  v234 = *(static Transformer<>.transformer + 24);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt64VSdGMd, &_s13SiriUtilities11TransformerVys6UInt64VSdGMR);
  v236 = swift_allocObject();
  v237 = *(v232 + 8);
  *(v0 + 1376) = v235;
  *(v0 + 1384) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1352) = v236;
  *(v236 + 16) = v233;
  *(v236 + 24) = v237;
  *(v236 + 40) = v234;
  v238 = one-time initialization token for transformer;

  if (v238 != -1)
  {
    swift_once();
  }

  v239 = static Transformer<>.transformer;
  v240 = *static Transformer<>.transformer;
  v241 = *(static Transformer<>.transformer + 24);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt64VSfGMd, &_s13SiriUtilities11TransformerVys6UInt64VSfGMR);
  v243 = swift_allocObject();
  v244 = *(v239 + 8);
  *(v0 + 1416) = v242;
  *(v0 + 1424) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1392) = v243;
  *(v243 + 16) = v240;
  *(v243 + 24) = v244;
  *(v243 + 40) = v241;
  v245 = one-time initialization token for transformer;

  if (v245 != -1)
  {
    swift_once();
  }

  v246 = static Transformer<>.transformer;
  v247 = *static Transformer<>.transformer;
  v248 = *(static Transformer<>.transformer + 24);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVys6UInt64VSSGMd, &_s13SiriUtilities11TransformerVys6UInt64VSSGMR);
  v250 = swift_allocObject();
  v251 = *(v246 + 8);
  *(v0 + 1456) = v249;
  *(v0 + 1464) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1432) = v250;
  *(v250 + 16) = v247;
  *(v250 + 24) = v251;
  *(v250 + 40) = v248;
  v252 = one-time initialization token for transformer;

  if (v252 != -1)
  {
    swift_once();
  }

  v253 = static Transformer<>.transformer;
  v254 = *static Transformer<>.transformer;
  v255 = *(static Transformer<>.transformer + 24);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySds5Int32VGMd, &_s13SiriUtilities11TransformerVySds5Int32VGMR);
  v257 = swift_allocObject();
  v258 = *(v253 + 8);
  *(v0 + 1496) = v256;
  *(v0 + 1504) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1472) = v257;
  *(v257 + 16) = v254;
  *(v257 + 24) = v258;
  *(v257 + 40) = v255;
  v259 = one-time initialization token for transformer;

  if (v259 != -1)
  {
    swift_once();
  }

  v260 = static Transformer<>.transformer;
  v261 = *static Transformer<>.transformer;
  v262 = *(static Transformer<>.transformer + 24);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySds5Int64VGMd, &_s13SiriUtilities11TransformerVySds5Int64VGMR);
  v264 = swift_allocObject();
  v265 = *(v260 + 8);
  *(v0 + 1536) = v263;
  *(v0 + 1544) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1512) = v264;
  *(v264 + 16) = v261;
  *(v264 + 24) = v265;
  *(v264 + 40) = v262;
  v266 = one-time initialization token for transformer;

  if (v266 != -1)
  {
    swift_once();
  }

  v267 = static Transformer<>.transformer;
  v268 = *static Transformer<>.transformer;
  v269 = *(static Transformer<>.transformer + 24);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySds6UInt32VGMd, &_s13SiriUtilities11TransformerVySds6UInt32VGMR);
  v271 = swift_allocObject();
  v272 = *(v267 + 8);
  *(v0 + 1576) = v270;
  *(v0 + 1584) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1552) = v271;
  *(v271 + 16) = v268;
  *(v271 + 24) = v272;
  *(v271 + 40) = v269;
  v273 = one-time initialization token for transformer;

  if (v273 != -1)
  {
    swift_once();
  }

  v274 = static Transformer<>.transformer;
  v275 = *static Transformer<>.transformer;
  v276 = *(static Transformer<>.transformer + 24);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySds6UInt64VGMd, &_s13SiriUtilities11TransformerVySds6UInt64VGMR);
  v278 = swift_allocObject();
  v279 = *(v274 + 8);
  *(v0 + 1616) = v277;
  *(v0 + 1624) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1592) = v278;
  *(v278 + 16) = v275;
  *(v278 + 24) = v279;
  *(v278 + 40) = v276;
  v280 = one-time initialization token for transformer;

  if (v280 != -1)
  {
    swift_once();
  }

  v281 = static Transformer<>.transformer;
  v282 = *static Transformer<>.transformer;
  v283 = *(static Transformer<>.transformer + 24);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySdSiGMd, &_s13SiriUtilities11TransformerVySdSiGMR);
  v285 = swift_allocObject();
  v286 = *(v281 + 8);
  *(v0 + 1656) = v284;
  *(v0 + 1664) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1632) = v285;
  *(v285 + 16) = v282;
  *(v285 + 24) = v286;
  *(v285 + 40) = v283;
  v287 = one-time initialization token for transformer;

  if (v287 != -1)
  {
    swift_once();
  }

  v288 = static Transformer<>.transformer;
  v289 = *static Transformer<>.transformer;
  v290 = *(static Transformer<>.transformer + 24);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySdSfGMd, &_s13SiriUtilities11TransformerVySdSfGMR);
  v292 = swift_allocObject();
  v293 = *(v288 + 8);
  *(v0 + 1696) = v291;
  *(v0 + 1704) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1672) = v292;
  *(v292 + 16) = v289;
  *(v292 + 24) = v293;
  *(v292 + 40) = v290;
  v294 = one-time initialization token for transformer;

  if (v294 != -1)
  {
    swift_once();
  }

  v295 = static Transformer<>.transformer;
  v296 = *static Transformer<>.transformer;
  v297 = *(static Transformer<>.transformer + 24);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySdSSGMd, &_s13SiriUtilities11TransformerVySdSSGMR);
  v299 = swift_allocObject();
  v300 = *(v295 + 8);
  *(v0 + 1736) = v298;
  *(v0 + 1744) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1712) = v299;
  *(v299 + 16) = v296;
  *(v299 + 24) = v300;
  *(v299 + 40) = v297;
  v301 = one-time initialization token for transformer;

  if (v301 != -1)
  {
    swift_once();
  }

  v302 = static Transformer<>.transformer;
  v303 = *static Transformer<>.transformer;
  v304 = *(static Transformer<>.transformer + 24);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySdSbGMd, &_s13SiriUtilities11TransformerVySdSbGMR);
  v306 = swift_allocObject();
  v307 = *(v302 + 8);
  *(v0 + 1776) = v305;
  *(v0 + 1784) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1752) = v306;
  *(v306 + 16) = v303;
  *(v306 + 24) = v307;
  *(v306 + 40) = v304;
  v308 = one-time initialization token for transformer;

  if (v308 != -1)
  {
    swift_once();
  }

  v309 = static Transformer<>.transformer;
  v310 = *static Transformer<>.transformer;
  v311 = *(static Transformer<>.transformer + 24);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySfs5Int32VGMd, &_s13SiriUtilities11TransformerVySfs5Int32VGMR);
  v313 = swift_allocObject();
  v314 = *(v309 + 8);
  *(v0 + 1816) = v312;
  *(v0 + 1824) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1792) = v313;
  *(v313 + 16) = v310;
  *(v313 + 24) = v314;
  *(v313 + 40) = v311;
  v315 = one-time initialization token for transformer;

  if (v315 != -1)
  {
    swift_once();
  }

  v316 = static Transformer<>.transformer;
  v317 = *static Transformer<>.transformer;
  v318 = *(static Transformer<>.transformer + 24);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySfs5Int64VGMd, &_s13SiriUtilities11TransformerVySfs5Int64VGMR);
  v320 = swift_allocObject();
  v321 = *(v316 + 8);
  *(v0 + 1856) = v319;
  *(v0 + 1864) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1832) = v320;
  *(v320 + 16) = v317;
  *(v320 + 24) = v321;
  *(v320 + 40) = v318;
  v322 = one-time initialization token for transformer;

  if (v322 != -1)
  {
    swift_once();
  }

  v323 = static Transformer<>.transformer;
  v324 = *static Transformer<>.transformer;
  v325 = *(static Transformer<>.transformer + 24);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySfs6UInt32VGMd, &_s13SiriUtilities11TransformerVySfs6UInt32VGMR);
  v327 = swift_allocObject();
  v328 = *(v323 + 8);
  *(v0 + 1896) = v326;
  *(v0 + 1904) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1872) = v327;
  *(v327 + 16) = v324;
  *(v327 + 24) = v328;
  *(v327 + 40) = v325;
  v329 = one-time initialization token for transformer;

  if (v329 != -1)
  {
    swift_once();
  }

  v330 = static Transformer<>.transformer;
  v331 = *static Transformer<>.transformer;
  v332 = *(static Transformer<>.transformer + 24);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySfs6UInt64VGMd, &_s13SiriUtilities11TransformerVySfs6UInt64VGMR);
  v334 = swift_allocObject();
  v335 = *(v330 + 8);
  *(v0 + 1936) = v333;
  *(v0 + 1944) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1912) = v334;
  *(v334 + 16) = v331;
  *(v334 + 24) = v335;
  *(v334 + 40) = v332;
  v336 = one-time initialization token for transformer;

  if (v336 != -1)
  {
    swift_once();
  }

  v337 = static Transformer<>.transformer;
  v338 = *static Transformer<>.transformer;
  v339 = *(static Transformer<>.transformer + 24);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySfSdGMd, &_s13SiriUtilities11TransformerVySfSdGMR);
  v341 = swift_allocObject();
  v342 = *(v337 + 8);
  *(v0 + 1976) = v340;
  *(v0 + 1984) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1952) = v341;
  *(v341 + 16) = v338;
  *(v341 + 24) = v342;
  *(v341 + 40) = v339;
  v343 = one-time initialization token for transformer;

  if (v343 != -1)
  {
    swift_once();
  }

  v344 = static Transformer<>.transformer;
  v345 = *static Transformer<>.transformer;
  v346 = *(static Transformer<>.transformer + 24);
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySfSiGMd, &_s13SiriUtilities11TransformerVySfSiGMR);
  v348 = swift_allocObject();
  v349 = *(v344 + 8);
  *(v0 + 2016) = v347;
  *(v0 + 2024) = &protocol witness table for Transformer<A, B>;
  *(v0 + 1992) = v348;
  *(v348 + 16) = v345;
  *(v348 + 24) = v349;
  *(v348 + 40) = v346;
  v350 = one-time initialization token for transformer;

  if (v350 != -1)
  {
    swift_once();
  }

  v351 = static Transformer<>.transformer;
  v352 = *static Transformer<>.transformer;
  v353 = *(static Transformer<>.transformer + 24);
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySfSSGMd, &_s13SiriUtilities11TransformerVySfSSGMR);
  v355 = swift_allocObject();
  v356 = *(v351 + 8);
  *(v0 + 2056) = v354;
  *(v0 + 2064) = &protocol witness table for Transformer<A, B>;
  *(v0 + 2032) = v355;
  *(v355 + 16) = v352;
  *(v355 + 24) = v356;
  *(v355 + 40) = v353;
  v357 = one-time initialization token for transformer;

  if (v357 != -1)
  {
    swift_once();
  }

  v358 = static Transformer<>.transformer;
  v359 = *static Transformer<>.transformer;
  v360 = *(static Transformer<>.transformer + 24);
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySfSbGMd, &_s13SiriUtilities11TransformerVySfSbGMR);
  v362 = swift_allocObject();
  v363 = *(v358 + 8);
  *(v0 + 2096) = v361;
  *(v0 + 2104) = &protocol witness table for Transformer<A, B>;
  *(v0 + 2072) = v362;
  *(v362 + 16) = v359;
  *(v362 + 24) = v363;
  *(v362 + 40) = v360;
  v364 = one-time initialization token for transformer;

  if (v364 != -1)
  {
    swift_once();
  }

  v365 = static Transformer<>.transformer;
  v366 = *static Transformer<>.transformer;
  v367 = *(static Transformer<>.transformer + 24);
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySbSiGMd, &_s13SiriUtilities11TransformerVySbSiGMR);
  v369 = swift_allocObject();
  v370 = *(v365 + 8);
  *(v0 + 2136) = v368;
  *(v0 + 2144) = &protocol witness table for Transformer<A, B>;
  *(v0 + 2112) = v369;
  *(v369 + 16) = v366;
  *(v369 + 24) = v370;
  *(v369 + 40) = v367;
  v371 = one-time initialization token for transformer;

  if (v371 != -1)
  {
    swift_once();
  }

  v372 = static Transformer<>.transformer;
  v373 = *static Transformer<>.transformer;
  v374 = *(static Transformer<>.transformer + 24);
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySbSSGMd, &_s13SiriUtilities11TransformerVySbSSGMR);
  v376 = swift_allocObject();
  v377 = *(v372 + 8);
  *(v0 + 2176) = v375;
  *(v0 + 2184) = &protocol witness table for Transformer<A, B>;
  *(v0 + 2152) = v376;
  *(v376 + 16) = v373;
  *(v376 + 24) = v377;
  *(v376 + 40) = v374;
  v378 = one-time initialization token for transformer;

  if (v378 != -1)
  {
    swift_once();
  }

  v379 = static Transformer<>.transformer;
  v380 = *static Transformer<>.transformer;
  v381 = *(static Transformer<>.transformer + 24);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySSSiGMd, &_s13SiriUtilities11TransformerVySSSiGMR);
  v383 = swift_allocObject();
  v384 = *(v379 + 8);
  *(v0 + 2216) = v382;
  *(v0 + 2224) = &protocol witness table for Transformer<A, B>;
  *(v0 + 2192) = v383;
  *(v383 + 16) = v380;
  *(v383 + 24) = v384;
  *(v383 + 40) = v381;
  v385 = one-time initialization token for transformer;

  if (v385 != -1)
  {
    swift_once();
  }

  v386 = static Transformer<>.transformer;
  v387 = *static Transformer<>.transformer;
  v388 = *(static Transformer<>.transformer + 24);
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySSSdGMd, &_s13SiriUtilities11TransformerVySSSdGMR);
  v390 = swift_allocObject();
  v391 = *(v386 + 8);
  *(v0 + 2256) = v389;
  *(v0 + 2264) = &protocol witness table for Transformer<A, B>;
  *(v0 + 2232) = v390;
  *(v390 + 16) = v387;
  *(v390 + 24) = v391;
  *(v390 + 40) = v388;
  v392 = one-time initialization token for transformer;

  if (v392 != -1)
  {
    swift_once();
  }

  v393 = static Transformer<>.transformer;
  v394 = *static Transformer<>.transformer;
  v395 = *(static Transformer<>.transformer + 24);
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySSSfGMd, &_s13SiriUtilities11TransformerVySSSfGMR);
  v397 = swift_allocObject();
  v398 = *(v393 + 8);
  *(v0 + 2296) = v396;
  *(v0 + 2304) = &protocol witness table for Transformer<A, B>;
  *(v0 + 2272) = v397;
  *(v397 + 16) = v394;
  *(v397 + 24) = v398;
  *(v397 + 40) = v395;
  v399 = one-time initialization token for transformer;

  if (v399 != -1)
  {
    swift_once();
  }

  v400 = static Transformer<>.transformer;
  v401 = *static Transformer<>.transformer;
  v402 = *(static Transformer<>.transformer + 24);
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySSSbGMd, &_s13SiriUtilities11TransformerVySSSbGMR);
  v404 = swift_allocObject();
  v405 = *(v400 + 8);
  *(v0 + 2336) = v403;
  *(v0 + 2344) = &protocol witness table for Transformer<A, B>;
  *(v0 + 2312) = v404;
  *(v404 + 16) = v401;
  *(v404 + 24) = v405;
  *(v404 + 40) = v402;
  static TransformationRegistry._commonTransformers = v0;
}

uint64_t LoadableTransformation.inputType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1 + *(*v1 + 104);
  v3 = *(v2 + 32);
  return OUTLINED_FUNCTION_0_12(*(v2 + 40), a1);
}

uint64_t LoadableTransformation.outputType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1 + *(*v1 + 104);
  v3 = *(v2 + 48);
  return OUTLINED_FUNCTION_0_12(*(v2 + 56), a1);
}

uint64_t LoadableTransformation.typeErasedTransform(_:)(uint64_t a1)
{
  (*(*v1 + 144))(v6);
  if (v6[3])
  {
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        outlined init with take of Transforming(&v7, v10);
        v3 = v11;
        v4 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        (*(v4 + 24))(a1, v3, v4);
        return __swift_destroy_boxed_opaque_existential_0(v10);
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    outlined destroy of CheckedContinuation<(), Error>?(v6, &_sypSgMd, &_sypSgMR);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  outlined destroy of CheckedContinuation<(), Error>?(&v7, &_s13SiriUtilities12Transforming_pSgMd, &_s13SiriUtilities12Transforming_pSgMR);
  lazy protocol witness table accessor for type LoadableTransformationError and conformance LoadableTransformationError();
  swift_allocError();
  return swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type LoadableTransformationError and conformance LoadableTransformationError()
{
  result = lazy protocol witness table cache variable for type LoadableTransformationError and conformance LoadableTransformationError;
  if (!lazy protocol witness table cache variable for type LoadableTransformationError and conformance LoadableTransformationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LoadableTransformationError and conformance LoadableTransformationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LoadableTransformationError and conformance LoadableTransformationError;
  if (!lazy protocol witness table cache variable for type LoadableTransformationError and conformance LoadableTransformationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LoadableTransformationError and conformance LoadableTransformationError);
  }

  return result;
}

uint64_t *LoadableTransformation.__allocating_init(container:capability:)(uint64_t a1, _OWORD *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return LoadableTransformation.init(container:capability:)(a1, a2);
}

uint64_t *LoadableTransformation.init(container:capability:)(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v5[0] = *a2;
  v5[1] = v2;
  v3 = a2[3];
  v5[2] = a2[2];
  v5[3] = v3;
  return LoadableCapability.init(container:capability:)(a1, v5);
}

uint64_t LoadableTransformation.__deallocating_deinit()
{
  v0 = LoadableCapability.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

Swift::Int LoadableTransformationError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LoadableTransformationError()
{
  Hasher.init(_seed:)();
  LoadableTransformationError.hash(into:)();
  return Hasher._finalize()();
}

_BYTE *storeEnumTagSinglePayload for LoadableTransformationError(_BYTE *result, int a2, int a3)
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

uint64_t NullCacheDataSource.readCacheData()()
{
  lazy protocol witness table accessor for type CacheDataError and conformance CacheDataError();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type CacheDataError and conformance CacheDataError()
{
  result = lazy protocol witness table cache variable for type CacheDataError and conformance CacheDataError;
  if (!lazy protocol witness table cache variable for type CacheDataError and conformance CacheDataError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheDataError and conformance CacheDataError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheDataError and conformance CacheDataError;
  if (!lazy protocol witness table cache variable for type CacheDataError and conformance CacheDataError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheDataError and conformance CacheDataError);
  }

  return result;
}

uint64_t outlined init with copy of CacheDataSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15CacheDataSource_pSgMd, &_s13SiriUtilities15CacheDataSource_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Cacheable.cache.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  outlined assign with copy of CacheDataSource?(a1, v1 + 16);
  swift_endAccess();
  OUTLINED_FUNCTION_7();
  (*(v3 + 208))();
  return outlined destroy of CheckedContinuation<(), Error>?(a1, &_s13SiriUtilities15CacheDataSource_pSgMd, &_s13SiriUtilities15CacheDataSource_pSgMR);
}

uint64_t outlined assign with copy of CacheDataSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15CacheDataSource_pSgMd, &_s13SiriUtilities15CacheDataSource_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*Cacheable.cache.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_12();
  return Cacheable.cache.modify;
}

uint64_t Cacheable.cache.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    OUTLINED_FUNCTION_7();
    return (*(v6 + 208))();
  }

  return result;
}

uint64_t Cacheable._value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_10_5();
  v5 = *(v4 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5(v7, v8, *(v6 + 80));
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t Cacheable._value.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_10_5();
  v5 = *(v4 + 112);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_7_5(v7, v8, *(v6 + 80));
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t key path setter for Cacheable.wrappedValue : <A>Cacheable<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(*(a3 + a4 - 24) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6);
  return (*(**a2 + 184))(v7);
}

uint64_t Cacheable.wrappedValue.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - v10;
  (*(v5 + 16))(&v13 - v10, a1, v3);
  Cacheable._value.setter(v11);
  Cacheable.tryWrite()();
  return (*(v5 + 8))(a1, v3);
}

void (*Cacheable.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_7();
  *(v5 + 8) = *(v4 + 80);
  OUTLINED_FUNCTION_0_1();
  *(v6 + 16) = v7;
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  Cacheable._value.getter(v10);
  return Cacheable.wrappedValue.modify;
}

void Cacheable.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    Cacheable.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    Cacheable.wrappedValue.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Cacheable.__allocating_init(cache:wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  Cacheable.init(cache:wrappedValue:)(a1, a2);
  return v7;
}

uint64_t *Cacheable.init(cache:wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v2 + 2) = 0u;
  v2[6] = 0;
  *(v2 + 1) = 0u;
  OUTLINED_FUNCTION_12();
  outlined assign with copy of CacheDataSource?(a1, (v2 + 2));
  swift_endAccess();
  OUTLINED_FUNCTION_7();
  v7 = *(v5 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + *(v6 + 112), a2, v7);
  OUTLINED_FUNCTION_7();
  (*(v9 + 208))();
  (*(v8 + 8))(a2, v7);
  outlined destroy of CheckedContinuation<(), Error>?(a1, &_s13SiriUtilities15CacheDataSource_pSgMd, &_s13SiriUtilities15CacheDataSource_pSgMR);
  return v2;
}

uint64_t Cacheable.read()(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*(*(*v2 + 80) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v18 - v7;
  (*(v4 + 128))(&v19, v6);
  if (!v20)
  {
    return outlined destroy of CheckedContinuation<(), Error>?(&v19, &_s13SiriUtilities15CacheDataSource_pSgMd, &_s13SiriUtilities15CacheDataSource_pSgMR);
  }

  outlined init with take of Transforming(&v19, v21);
  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v12 = v22;
  v13 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v13 + 8))(v12, v13);
  if (!v3)
  {
    v14 = *(v4 + 88);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    Cacheable._value.setter(v8);
    v16 = OUTLINED_FUNCTION_5_6();
    outlined consume of Data._Representation(v16, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t Cacheable.tryWrite()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  v6 = *(v5 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v37[-1] - v10;
  (*(v1 + 128))(v42, v9);
  if (!v43)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v42, &_s13SiriUtilities15CacheDataSource_pSgMd, &_s13SiriUtilities15CacheDataSource_pSgMR);
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    return outlined destroy of CheckedContinuation<(), Error>?(&v39, &_s13SiriUtilities13CacheDataSink_pSgMd, "|f");
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15CacheDataSource_pMd, "|f");
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13CacheDataSink_pMd, "~f");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    return outlined destroy of CheckedContinuation<(), Error>?(&v39, &_s13SiriUtilities13CacheDataSink_pSgMd, "|f");
  }

  if (!*(&v40 + 1))
  {
    return outlined destroy of CheckedContinuation<(), Error>?(&v39, &_s13SiriUtilities13CacheDataSink_pSgMd, "|f");
  }

  outlined init with take of Transforming(&v39, v42);
  v12 = type metadata accessor for JSONEncoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  Cacheable._value.getter(v11);
  v15 = *(v1 + 96);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  (*(v4 + 8))(v11, v2);
  v17 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v18 = *(v17 + 8);
  v19 = OUTLINED_FUNCTION_5_6();
  v20(v19);
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.logger);
  v22 = OUTLINED_FUNCTION_6_6();
  outlined init with copy of CacheDataSource(v22, v23);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = 136315138;
    outlined init with copy of CacheDataSource(&v39, v37);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0(&v39);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v38);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_1DD1FF000, v24, v25, "Wrote cached object to %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1E12AA0F0]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1E12AA0F0]();
    v32 = OUTLINED_FUNCTION_5_6();
    outlined consume of Data._Representation(v32, v33);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_5_6();
    outlined consume of Data._Representation(v34, v35);

    __swift_destroy_boxed_opaque_existential_0(&v39);
  }

  return __swift_destroy_boxed_opaque_existential_0(v42);
}

char *Cacheable.deinit()
{
  v1 = *v0;
  outlined destroy of CheckedContinuation<(), Error>?((v0 + 16), &_s13SiriUtilities15CacheDataSource_pSgMd, &_s13SiriUtilities15CacheDataSource_pSgMR);
  OUTLINED_FUNCTION_7();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 112)]);
  return v0;
}

uint64_t Cacheable.__deallocating_deinit()
{
  Cacheable.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t URL.readCacheData()()
{
  v2 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = URL.path.getter();
  v13 = MEMORY[0x1E12A8BC0](v12);

  v14 = [v11 fileExistsAtPath_];

  if (v14)
  {
    result = Data.init(contentsOf:options:)();
    if (!v1)
    {
      return result;
    }

    if (one-time initialization token for loader != -1)
    {
      OUTLINED_FUNCTION_4_5();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.loader);
    (*(v4 + 16))(v10, v0, v2);
    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v20 = 136315394;
      lazy protocol witness table accessor for type URL and conformance URL();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v4 + 8))(v10, v2);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v29);

      OUTLINED_FUNCTION_8_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v29);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_1DD1FF000, v18, v19, "Failed to read cache data from %s: error=%s.", v20, 0x16u);
      OUTLINED_FUNCTION_11_5();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
    }

    else
    {

      (*(v4 + 8))(v10, v2);
    }
  }

  else
  {
    lazy protocol witness table accessor for type CacheDataError and conformance CacheDataError();
    swift_allocError();
    *v27 = 1;
  }

  return swift_willThrow();
}

uint64_t URL.writeCacheData(_:)()
{
  v2 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Data.write(to:options:)();
  if (v1)
  {
    if (one-time initialization token for loader != -1)
    {
      OUTLINED_FUNCTION_4_5();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.loader);
    (*(v4 + 16))(v10, v0, v2);
    v13 = v1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v16 = 136315394;
      lazy protocol witness table accessor for type URL and conformance URL();
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = *(v4 + 8);
      v21 = OUTLINED_FUNCTION_5_6();
      v22(v21);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v30);

      OUTLINED_FUNCTION_8_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v30);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1DD1FF000, v14, v15, "Failed to write cache data to %s: error=%s.", v16, 0x16u);
      OUTLINED_FUNCTION_11_5();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
    }

    else
    {

      v26 = *(v4 + 8);
      v27 = OUTLINED_FUNCTION_5_6();
      v28(v27);
    }

    return swift_willThrow();
  }

  return result;
}

Swift::Int CacheDataError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CacheDataError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CacheDataError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NullCacheDataSource(_BYTE *result, int a2, int a3)
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

uint64_t type metadata completion function for Cacheable(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for CacheDataError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of CacheDataSource(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_7_5(a1, a1, v3);
  (*v4)(a2);
  return a2;
}

void MergedPluginFinder.findAllPackages()()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    for (i = *v0 + 32; ; i += 40)
    {
      outlined init with copy of Transforming(i, v16);
      v4 = v17;
      v5 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v6 = (*(v5 + 8))(v4, v5);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v7 = *(v6 + 16);
      v8 = v2[2];
      v9 = v8 + v7;
      if (__OFADD__(v8, v7))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v9 > v2[3] >> 1)
      {
        if (v8 <= v9)
        {
          v11 = v8 + v7;
        }

        else
        {
          v11 = v8;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v2, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMR, &_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
        v2 = v12;
      }

      if (*(v6 + 16))
      {
        if ((v2[3] >> 1) - v2[2] < v7)
        {
          goto LABEL_21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
        swift_arrayInitWithCopy();

        if (v7)
        {
          v13 = v2[2];
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_22;
          }

          v2[2] = v15;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_20;
        }
      }

      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void FallbackPluginFinder.findAllPackages()()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = *v0 + 32;
  while (1)
  {
    if (v1 == v3)
    {
      v15 = 0;
      v1 = v3;
      v13 = 0u;
      v14 = 0u;
      goto LABEL_7;
    }

    if ((v1 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v1 >= *(v2 + 16))
    {
      goto LABEL_12;
    }

    outlined init with copy of Transforming(v4 + 40 * v1++, &v13);
LABEL_7:
    v11[0] = v13;
    v11[1] = v14;
    v12 = v15;
    if (!*(&v14 + 1))
    {
      return;
    }

    outlined init with take of Transforming(v11, v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
    if (*(v7 + 16))
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void *URL.findAllPackages()()
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v48 - v9;
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  *&v54[0] = 0;
  v15 = [v11 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:0 error:v54];

  v16 = *&v54[0];
  if (!v15)
  {
    v34 = *&v54[0];
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for loader != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.loader);
    (*(v2 + 16))(v7, v0, v1);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v2;
      v41 = swift_slowAlloc();
      *&v54[0] = v41;
      *v39 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v40 + 8))(v7, v1);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v54);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_1DD1FF000, v37, v38, "Cannot read directory %s; not loading plugins from there.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1E12AA0F0](v41, -1, -1);
      MEMORY[0x1E12AA0F0](v39, -1, -1);
    }

    else
    {

      (*(v2 + 8))(v7, v1);
    }

    goto LABEL_20;
  }

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v16;

  v19 = *(v17 + 16);
  if (!v19)
  {

LABEL_20:
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v20 = type metadata accessor for NSBundle();
  v22 = *(v2 + 16);
  v21 = v2 + 16;
  v50 = v22;
  v23 = *(v21 + 64);
  v48[1] = v17;
  v24 = v17 + ((v23 + 32) & ~v23);
  v25 = (v21 - 8);
  v26 = MEMORY[0x1E69E7CC0];
  v27 = *(v21 + 56);
  v49 = v1;
  do
  {
    v50(v10, v24, v1);
    v28._countAndFlagsBits = URL.path.getter();
    v29 = NSBundle.__allocating_init(path:)(v28);
    if (v29)
    {
      v52 = v20;
      v53 = &protocol witness table for NSBundle;
      *&v51 = v29;
      (*v25)(v10, v1);
      outlined init with take of Transforming(&v51, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMR, &_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
        v26 = v32;
      }

      v31 = v26[2];
      v30 = v26[3];
      if (v31 >= v30 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1, v26, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMR, &_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
        v26 = v33;
      }

      v26[2] = v31 + 1;
      outlined init with take of Transforming(v54, &v26[5 * v31 + 4]);
      v1 = v49;
    }

    else
    {
      (*v25)(v10, v1);
    }

    v24 += v27;
    --v19;
  }

  while (v19);

LABEL_21:
  v46 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t Array<A>.findAllPackages()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);

  return MEMORY[0x1EEE6A720](a1, a2, v4);
}

uint64_t <+> infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12PluginFinder_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12PluginFinder_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD2671B0;
  outlined init with copy of Transforming(a1, v10 + 32);
  result = outlined init with copy of Transforming(a2, v10 + 72);
  a5[3] = a3;
  a5[4] = a4;
  *a5 = v10;
  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_9();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_4_6();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MergedPluginFinder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MergedPluginFinder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSayypG_ypsAE_pTg5(void (*a1)(_OWORD *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v15;
    for (i = a3 + 32; ; i += 32)
    {
      a1(v14, i, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v15 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1);
        v6 = v15;
      }

      *(v6 + 16) = v11 + 1;
      outlined init with take of Any(v14, (v6 + 32 * v11 + 32));
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t TransformationRegistry.__allocating_init(fallback:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_8();
  TransformationRegistry.init(fallback:)(v1);
  return v0;
}

void *TransformationRegistry.init(fallback:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriUtilities12Transforming_pGMd, &_sSay13SiriUtilities12Transforming_pGMR);
  lazy protocol witness table accessor for type TypeIdentifier and conformance TypeIdentifier();
  v1[2] = Dictionary.init(dictionaryLiteral:)();
  lazy protocol witness table accessor for type TransformationIdentifier and conformance TransformationIdentifier();
  v1[3] = Dictionary.init(dictionaryLiteral:)();
  v1[4] = a1;
  return v1;
}

unint64_t lazy protocol witness table accessor for type TypeIdentifier and conformance TypeIdentifier()
{
  result = lazy protocol witness table cache variable for type TypeIdentifier and conformance TypeIdentifier;
  if (!lazy protocol witness table cache variable for type TypeIdentifier and conformance TypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypeIdentifier and conformance TypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypeIdentifier and conformance TypeIdentifier;
  if (!lazy protocol witness table cache variable for type TypeIdentifier and conformance TypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypeIdentifier and conformance TypeIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationIdentifier and conformance TransformationIdentifier()
{
  result = lazy protocol witness table cache variable for type TransformationIdentifier and conformance TransformationIdentifier;
  if (!lazy protocol witness table cache variable for type TransformationIdentifier and conformance TransformationIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationIdentifier and conformance TransformationIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationIdentifier and conformance TransformationIdentifier;
  if (!lazy protocol witness table cache variable for type TransformationIdentifier and conformance TransformationIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationIdentifier and conformance TransformationIdentifier);
  }

  return result;
}

void TransformationRegistry.register(_:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v61, v4, v5);
  v7 = v61[0];
  v6 = v61[1];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_21_0();
  v11(v10);
  if (v7 == v59 && v6 == v60)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v14 = a1[3];
      v15 = a1[4];
      v16 = OUTLINED_FUNCTION_3_2();
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v15 + 8))(&v64, v14, v15);
      v19 = v64;
      v18 = v65;
      outlined init with copy of Transforming(a1, v61);
      swift_beginAccess();
      v20 = *(v1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(v1 + 16);
      v22 = v58;
      *(v2 + 16) = 0x8000000000000000;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
      v25 = *(v22 + 16);
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        __break(1u);
      }

      else
      {
        v28 = v23;
        v29 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities14TypeIdentifierVSayAC12Transforming_pGGMd, &_ss17_NativeDictionaryVy13SiriUtilities14TypeIdentifierVSayAC12Transforming_pGGMR);
        v30 = v58;
        if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27))
        {
LABEL_10:
          *(v2 + 16) = v58;
          if (v29)
          {
          }

          else
          {
            specialized _NativeDictionary._insert(at:key:value:)(v28, v19, v18, MEMORY[0x1E69E7CC0], v30);
          }

          v46 = (v30[7] + 8 * v28);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
          v47 = *(*v46 + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v47, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
          v48 = v62;
          v49 = v63;
          __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
          OUTLINED_FUNCTION_0_1();
          v51 = *(v50 + 64);
          MEMORY[0x1EEE9AC00](v52, v53);
          v55 = &v57 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v56 + 16))(v55);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v47, v55, v46, v48, v49);
          __swift_destroy_boxed_opaque_existential_0(v61);
          swift_endAccess();
          return;
        }

        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
        if ((v29 & 1) == (v32 & 1))
        {
          v28 = v31;
          goto LABEL_10;
        }
      }

      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.logger);
  outlined init with copy of Transforming(a1, v61);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58 = v37;
    *v36 = 136315138;
    v38 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v39 = *(v38 + 8);
    v40 = OUTLINED_FUNCTION_21_0();
    v41(v40);
    v64 = v59;
    v65 = v60;
    v42 = TypeIdentifier.description.getter();
    v44 = v43;

    __swift_destroy_boxed_opaque_existential_0(v61);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v58);

    *(v36 + 4) = v45;
    _os_log_impl(&dword_1DD1FF000, v34, v35, "Ignored registration of null transformation for %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v61);
  }
}

BOOL TransformationRegistry.register(id:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  outlined init with copy of Transforming(a2, v7);
  swift_beginAccess();
  specialized Dictionary._Variant.updateValue(_:forKey:)(v7, v2, v3, v4, v8);
  swift_endAccess();
  v5 = v9 == 0;
  outlined destroy of Transforming?(v8, &_s13SiriUtilities12Transforming_pSgMd, &_s13SiriUtilities12Transforming_pSgMR);
  return v5;
}

Swift::Bool __swiftcall TransformationRegistry.canTransform(from:to:lengthLimit:)(SiriUtilities::TypeIdentifier from, SiriUtilities::TypeIdentifier to, Swift::Int lengthLimit)
{
  v3 = *from.encoding._countAndFlagsBits;
  v4 = *(from.encoding._countAndFlagsBits + 8);
  v5 = *from.encoding._object;
  v6 = *(from.encoding._object + 1);
  if (*from.encoding._object == *from.encoding._countAndFlagsBits && v6 == v4)
  {
    return 1;
  }

  countAndFlagsBits = to.encoding._countAndFlagsBits;
  from.encoding._countAndFlagsBits = *from.encoding._object;
  v9 = *(from.encoding._object + 1);
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  if (one-time initialization token for any != -1)
  {
    OUTLINED_FUNCTION_0_14();
    swift_once();
  }

  v10 = v5 == static TypeIdentifier.any && v6 == *algn_1ECCD3418;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  v15[0] = v3;
  v15[1] = v4;
  v14[0] = v5;
  v14[1] = v6;
  OUTLINED_FUNCTION_7();
  v13 = *((*(v12 + 224))(v15, v14, countAndFlagsBits, 0) + 16);

  return v13 != 0;
}

uint64_t TransformationRegistry.transform<A>(_:to:lengthLimit:tryAllPaths:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v55 = a4;
  v51 = a3;
  v50 = a6;
  v53 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_1();
  *&v56 = v11;
  v13 = *(v12 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v50 - v19;
  v21 = *a2;
  v22 = a2[1];
  v23 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  swift_getDynamicType();
  TypeInformation.init(for:)(v62);
  v25 = v63;
  v24 = v64;

  outlined destroy of TypeInformation(v62);
  v54 = a5;
  TypeInformation.init(for:)(v65);
  v27 = v66;
  v26 = v67;

  outlined destroy of TypeInformation(v65);
  if (v21 != v27 || v22 != v26)
  {
    OUTLINED_FUNCTION_20_0();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (one-time initialization token for any != -1)
      {
        goto LABEL_50;
      }

      goto LABEL_7;
    }
  }

LABEL_13:

  do
  {
    v27 = v25;
    v33 = v25 == v21 && v24 == v22;
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_26;
    }

    if (one-time initialization token for any != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    v34 = v21 == static TypeIdentifier.any && v22 == *algn_1ECCD3418;
    if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_26:
      outlined init with copy of Any(v68, v61);
      if (OUTLINED_FUNCTION_25_0())
      {

        OUTLINED_FUNCTION_28_0(v20, 0);
        return (*(*(v26 - 8) + 32))(v50, v20, v26);
      }

      OUTLINED_FUNCTION_28_0(v20, 1);
      (*(v56 + 8))(v20, v53);
    }

    v26 = 0xD000000000000021;
    *&v61[0] = v25;
    *(&v61[0] + 1) = v24;
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_7();
    v20 = (*(v36 + 224))(v61, &v58, v51, v55 & 1);
    v25 = *(v20 + 2);
    if (!v25)
    {

      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      *&v61[0] = 0xD000000000000021;
      *(&v61[0] + 1) = 0x80000001DD26A850;
      *&v58 = v27;
      *(&v58 + 1) = v24;
      v45 = TypeIdentifier.description.getter();
      v47 = v46;

      MEMORY[0x1E12A8C40](v45, v47);

      MEMORY[0x1E12A8C40](544175136, 0xE400000000000000);
      OUTLINED_FUNCTION_19_1();
      v48 = TypeIdentifier.description.getter();
      MEMORY[0x1E12A8C40](v48);

      v49 = v61[0];
      lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
      OUTLINED_FUNCTION_27_0();
      *v32 = v49;
      goto LABEL_47;
    }

    v37 = 0;
    v24 = v20 + 32;
    v22 = (v56 + 8);
    v51 = 0x80000001DD26A820;
    while (1)
    {
      v38 = 0uLL;
      v21 = v25;
      v39 = 0uLL;
      v40 = 0uLL;
      if (v37 == v25)
      {
        goto LABEL_34;
      }

      if (v37 >= *(v20 + 2))
      {
        break;
      }

      v21 = v37 + 1;
      *&v58 = v37;
      outlined init with copy of Transforming(&v24[40 * v37], &v58 + 8);
      v38 = v58;
      v39 = v59;
      v40 = v60;
LABEL_34:
      v61[0] = v38;
      v61[1] = v39;
      v61[2] = v40;
      if (!v40)
      {

        v31 = 0x80000001DD26A7F0;
        lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
        OUTLINED_FUNCTION_27_0();
        *v32 = 0xD000000000000021;
        goto LABEL_46;
      }

      v56 = v38;
      outlined init with take of Transforming((v61 + 8), &v58);
      v41 = *(&v59 + 1);
      v27 = v60;
      __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
      (*(v27 + 24))(v57, v68, v41, v27);
      v42 = v7;
      if (v7)
      {
        v7 = 0;
        v26 = 0xD000000000000021;
      }

      else
      {
        v27 = v52;
        if (OUTLINED_FUNCTION_25_0())
        {
          OUTLINED_FUNCTION_28_0(v27, 0);

          (*(*(v41 - 8) + 32))(v50, v27, v41);
          return __swift_destroy_boxed_opaque_existential_0(&v58);
        }

        OUTLINED_FUNCTION_28_0(v27, 1);
        (*v22)(v27, v53);
        lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
        v42 = OUTLINED_FUNCTION_27_0();
        v26 = 0xD000000000000021;
        v43 = v51;
        *v44 = 0xD000000000000026;
        *(v44 + 8) = v43;
        *(v44 + 16) = 0;
        swift_willThrow();
        v7 = 0;
      }

      if ((v55 & 1) == 0 || v56 == *(v20 + 2) - 1)
      {

        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_0(&v58);
      }

      __swift_destroy_boxed_opaque_existential_0(&v58);
      v37 = v21;
    }

    __break(1u);
LABEL_50:
    OUTLINED_FUNCTION_0_14();
    swift_once();
LABEL_7:
    if (v27 == static TypeIdentifier.any && v26 == *algn_1ECCD3418)
    {
      goto LABEL_13;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v30 & 1) != 0);

  v31 = 0x80000001DD26A7A0;
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  OUTLINED_FUNCTION_27_0();
  *v32 = 0xD000000000000040;
LABEL_46:
  *(v32 + 8) = v31;
LABEL_47:
  *(v32 + 16) = 0;
  return swift_willThrow();
}

double TransformationRegistry.namedTransformation(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  swift_beginAccess();
  v7 = *(v2 + 24);
  if (*(v7 + 16))
  {

    v8 = OUTLINED_FUNCTION_3_2();
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9, v6);
    if (v11)
    {
      outlined init with copy of Transforming(*(v7 + 56) + 40 * v10, a2);

      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

__n128 *TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:)(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = *a2;
  v7 = a2[1];
  if (*a1 != *a2 || v5 != v7)
  {
    v12 = *a1;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (one-time initialization token for any != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      v13 = v8 == static TypeIdentifier.any && v7 == *algn_1ECCD3418;
      if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v143 = v6;
        v144 = v5;
        v141 = v8;
        *&v142 = v7;
        v14 = TransformationRegistry.findBasicTransformation(from:to:lengthLimit:findAllPaths:)(&v143, &v141, a3, a4 & 1);
        if (v14[1].n128_u64[0])
        {
          return v14;
        }

        _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v6, v5, &v141);

        _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v8, v7, &v143);
        if (v143 == 1)
        {
          if (v141 == 1)
          {
            v136 = v142;
            v138 = v144;
            v139 = v145;
            OUTLINED_FUNCTION_7();
            v19 = *(v18 + 224);

            v28 = OUTLINED_FUNCTION_1_9(v20, v21, v22, v23, v24, v25, v26, v27, v130, v136);
            v19(v28);
            OUTLINED_FUNCTION_29_0();
            outlined destroy of TypeInformation(&v141);

            v29 = OUTLINED_FUNCTION_17_1(&v136);
            if (v137)
            {
              OUTLINED_FUNCTION_18_1(v29);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
              v14 = OUTLINED_FUNCTION_15_3();
              OUTLINED_FUNCTION_11_6(v14, xmmword_1DD265D10, v30);
              OUTLINED_FUNCTION_13_3();
              v31 = swift_allocObject();
              OUTLINED_FUNCTION_10_6(v31, v32, v33, v34, v35, v36, v37, v38, v131, v136);
              v14[3].n128_u64[1] = &unk_1F58946A0;
              v14[4].n128_u64[0] = &protocol witness table for TransformationRegistry.GenericTransformer;
              OUTLINED_FUNCTION_12_4();
              v39 = swift_allocObject();
              v40 = OUTLINED_FUNCTION_2_10(v39);
              v41 = partial apply for closure #2 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:);
LABEL_31:
              v40[6] = v41;
              v40[7] = v4;

              __swift_destroy_boxed_opaque_existential_0(v140);
              return v14;
            }
          }

          else
          {
            outlined destroy of TypeInformation(&v141);
            *&v136 = v6;
            *(&v136 + 1) = v5;
            v138 = v144;
            v139 = v145;
            OUTLINED_FUNCTION_7();
            v65 = *(v64 + 224);

            v74 = OUTLINED_FUNCTION_1_9(v66, v67, v68, v69, v70, v71, v72, v73, v130, v6);
            v65(v74);
            OUTLINED_FUNCTION_29_0();

            v75 = OUTLINED_FUNCTION_17_1(&v136);
            if (v137)
            {
              OUTLINED_FUNCTION_18_1(v75);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
              v14 = OUTLINED_FUNCTION_15_3();
              OUTLINED_FUNCTION_11_6(v14, xmmword_1DD265D10, v76);
              OUTLINED_FUNCTION_13_3();
              v77 = swift_allocObject();
              OUTLINED_FUNCTION_10_6(v77, v78, v79, v80, v81, v82, v83, v84, v133, v136);
              v14[3].n128_u64[1] = &unk_1F58946A0;
              v14[4].n128_u64[0] = &protocol witness table for TransformationRegistry.GenericTransformer;
              OUTLINED_FUNCTION_12_4();
              v85 = swift_allocObject();
              v40 = OUTLINED_FUNCTION_2_10(v85);
              v41 = partial apply for closure #3 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:);
              goto LABEL_31;
            }
          }
        }

        else if (BYTE1(v143) == 1)
        {
          if (BYTE1(v141) == 1)
          {
            v136 = v142;
            v138 = v144;
            v139 = v145;
            OUTLINED_FUNCTION_7();
            v43 = *(v42 + 224);

            v52 = OUTLINED_FUNCTION_1_9(v44, v45, v46, v47, v48, v49, v50, v51, v130, v136);
            v43(v52);
            OUTLINED_FUNCTION_29_0();
            outlined destroy of TypeInformation(&v141);

            v53 = OUTLINED_FUNCTION_17_1(&v136);
            if (v137)
            {
              OUTLINED_FUNCTION_18_1(v53);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
              v14 = OUTLINED_FUNCTION_15_3();
              OUTLINED_FUNCTION_11_6(v14, xmmword_1DD265D10, v54);
              OUTLINED_FUNCTION_13_3();
              v55 = swift_allocObject();
              OUTLINED_FUNCTION_10_6(v55, v56, v57, v58, v59, v60, v61, v62, v132, v136);
              v14[3].n128_u64[1] = &unk_1F58946A0;
              v14[4].n128_u64[0] = &protocol witness table for TransformationRegistry.GenericTransformer;
              OUTLINED_FUNCTION_12_4();
              v63 = swift_allocObject();
              v40 = OUTLINED_FUNCTION_2_10(v63);
              v41 = partial apply for closure #4 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:);
              goto LABEL_31;
            }
          }

          else
          {
            outlined destroy of TypeInformation(&v141);
            *&v136 = v6;
            *(&v136 + 1) = v5;
            v138 = v144;
            v139 = v145;
            OUTLINED_FUNCTION_7();
            v109 = *(v108 + 224);

            v118 = OUTLINED_FUNCTION_1_9(v110, v111, v112, v113, v114, v115, v116, v117, v130, v6);
            v109(v118);
            OUTLINED_FUNCTION_29_0();

            v119 = OUTLINED_FUNCTION_17_1(&v136);
            if (v137)
            {
              OUTLINED_FUNCTION_18_1(v119);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
              v14 = OUTLINED_FUNCTION_15_3();
              OUTLINED_FUNCTION_11_6(v14, xmmword_1DD265D10, v120);
              OUTLINED_FUNCTION_13_3();
              v121 = swift_allocObject();
              OUTLINED_FUNCTION_10_6(v121, v122, v123, v124, v125, v126, v127, v128, v135, v136);
              v14[3].n128_u64[1] = &unk_1F58946A0;
              v14[4].n128_u64[0] = &protocol witness table for TransformationRegistry.GenericTransformer;
              OUTLINED_FUNCTION_12_4();
              v129 = swift_allocObject();
              v40 = OUTLINED_FUNCTION_2_10(v129);
              v41 = partial apply for closure #5 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:);
              goto LABEL_31;
            }
          }
        }

        else
        {
          outlined destroy of TypeInformation(&v143);
          if (v141 != 1)
          {
            outlined destroy of TypeInformation(&v141);
            return MEMORY[0x1E69E7CC0];
          }

          v136 = v142;
          v138 = v8;
          v139 = v7;
          OUTLINED_FUNCTION_7();
          v87 = *(v86 + 224);

          v96 = OUTLINED_FUNCTION_1_9(v88, v89, v90, v91, v92, v93, v94, v95, v130, v136);
          v4 = v87(v96);
          outlined destroy of TypeInformation(&v141);

          v97 = OUTLINED_FUNCTION_17_1(&v136);
          if (v137)
          {
            OUTLINED_FUNCTION_18_1(v97);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
            v14 = OUTLINED_FUNCTION_15_3();
            OUTLINED_FUNCTION_11_6(v14, xmmword_1DD265D10, v98);
            OUTLINED_FUNCTION_13_3();
            v99 = swift_allocObject();
            OUTLINED_FUNCTION_10_6(v99, v100, v101, v102, v103, v104, v105, v106, v134, v136);
            v14[3].n128_u64[1] = &unk_1F58946A0;
            v14[4].n128_u64[0] = &protocol witness table for TransformationRegistry.GenericTransformer;
            OUTLINED_FUNCTION_12_4();
            v107 = swift_allocObject();
            v40 = OUTLINED_FUNCTION_2_10(v107);
            v41 = partial apply for closure #6 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:);
            goto LABEL_31;
          }
        }

        outlined destroy of Transforming?(&v136, &_s13SiriUtilities12Transforming_pSgMd, &_s13SiriUtilities12Transforming_pSgMR);
        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
  v14 = OUTLINED_FUNCTION_15_3();
  v14[1] = xmmword_1DD265D10;
  v14[3].n128_u64[1] = &unk_1F58946A0;
  v14[4].n128_u64[0] = &protocol witness table for TransformationRegistry.GenericTransformer;
  OUTLINED_FUNCTION_12_4();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_2_10(v15);
  v16[6] = closure #1 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:);
  v16[7] = 0;

  return v14;
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of Transforming(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t *closure #2 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of Any(a1, &v12);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  swift_dynamicCast();
  a3[3] = v6;
  v7 = swift_allocObject();
  *a3 = v7;
  outlined init with copy of Any?(v14, &v12);
  if (v13)
  {
    outlined init with take of Any(&v12, v11);
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    (*(v9 + 24))(v11, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v11);
    if (v3)
    {
      outlined destroy of Transforming?(v14, &_sypSgMd, &_sypSgMR);
      return __swift_deallocate_boxed_opaque_existential_0(a3);
    }
  }

  else
  {
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
  }

  return outlined destroy of Transforming?(v14, &_sypSgMd, &_sypSgMR);
}

uint64_t *closure #3 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  *a3 = swift_allocObject();
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  result = (*(v8 + 24))(a1, v7, v8);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a3);
  }

  return result;
}

uint64_t closure #4 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of Any(a1, v13);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v7 = swift_dynamicCast();
  if (v7)
  {
    v9 = v12[5];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v7, v8);
  v12[2] = a2;
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSayypG_ypsAE_pTg5(partial apply for closure #1 in closure #4 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:), v12, v9);

  if (!v3)
  {
    a3[3] = v6;
    *a3 = v10;
  }

  return result;
}

uint64_t closure #1 in closure #4 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:)(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 24))(a1, v6, v7);
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t closure #5 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DD265D10;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 24))(a1, v8, v9);
  if (v3)
  {
    *(v7 + 16) = 0;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    a3[3] = result;
    *a3 = v7;
  }

  return result;
}

_OWORD *closure #6 in TransformationRegistry.findTransformation(from:to:lengthLimit:findAllPaths:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  outlined init with copy of Any(a1, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  swift_dynamicCast();
  outlined init with copy of Any?(v14, &v12);
  if (!v13)
  {
    v15 = 0u;
    v16 = 0u;
    outlined destroy of Transforming?(v14, &_sypSgMd, &_sypSgMR);
LABEL_5:
    outlined destroy of Transforming?(&v15, &_sypSgMd, &_sypSgMR);
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v9 = 0xD000000000000033;
    *(v9 + 8) = 0x80000001DD26A900;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }

  outlined init with take of Any(&v12, v11);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 24))(&v15, v11, v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v3)
  {
    return outlined destroy of Transforming?(v14, &_sypSgMd, &_sypSgMR);
  }

  v10 = *(&v16 + 1);
  outlined destroy of Transforming?(v14, &_sypSgMd, &_sypSgMR);
  if (!v10)
  {
    goto LABEL_5;
  }

  return outlined init with take of Any(&v15, a3);
}

uint64_t TransformationRegistry.findBasicTransformation(from:to:lengthLimit:findAllPaths:)(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4)
{
  HIDWORD(v158) = a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  if (*a1 == *a2 && v6 == a2[1])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = *a1;
  v159 = a2[1];
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    return v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities14TypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities14TypeIdentifierVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD265D10;
  *(inited + 32) = v7;
  *(inited + 40) = v6;

  v169 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities14TypeIdentifierV_Tt0g5(inited);
  v168 = v13;
  v144 = v6;
  v145 = v7;
  *&v160 = v7;
  *(&v160 + 1) = v6;

  v146 = v4;
  v15 = TransformationRegistry.findNextSteps(from:ignoringTypes:)(&v160, v169);

  v149 = v8;
  v154 = v15[2];
  if (v154)
  {
    v16 = 0;
    v156 = (v15 + 4);
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v16 >= v15[2])
      {
LABEL_95:
        __break(1u);
LABEL_96:
        TransformationChain.outputType.getter(v16);
        v131 = v167;
        __swift_project_boxed_opaque_existential_1(&v165, v166);
        v132 = *(v131 + 8);
        v133 = OUTLINED_FUNCTION_3_2();
        v134(v133);

        if (one-time initialization token for logger != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v135 = type metadata accessor for Logger();
        __swift_project_value_buffer(v135, static Logger.logger);
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          *&v160 = swift_slowAlloc();
          *v138 = 136315650;
          v139 = StaticString.description.getter();
          v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &v160);

          *(v138 + 4) = v141;
          *(v138 + 12) = 2048;
          *(v138 + 14) = 275;
          *(v138 + 22) = 2080;
          *(v138 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x80000001DD26A940, &v160);
          _os_log_impl(&dword_1DD1FF000, v136, v137, "FatalError at %s:%lu - %s", v138, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      outlined init with copy of Transforming(v156 + 40 * v16, &v165);
      OUTLINED_FUNCTION_6_8();
      v19 = *(v18 + 16);
      v20 = OUTLINED_FUNCTION_8();
      v21(v20, v5);
      if (v160 == v8 && *(&v160 + 1) == v159)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {

LABEL_33:

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
        v13 = OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_24_0(v13, v51, v52, v53, v54, v55, v56, v57, v142, v143, v144, v145, v146, v147, v149, v150, v152, v154, v156, v158, v58);
        outlined init with copy of Transforming(&v165, &v13[2]);
LABEL_85:
        __swift_destroy_boxed_opaque_existential_0(&v165);
        return v13;
      }

      v24 = v169;
      OUTLINED_FUNCTION_6_8();
      v25 = OUTLINED_FUNCTION_3_7();
      v26(v25, v5);
      v5 = v164;
      if (*(v24 + 16))
      {
        v27 = v163;
        v28 = *(v24 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v29 = Hasher._finalize()();
        v30 = ~(-1 << *(v24 + 32));
        while (1)
        {
          v31 = v29 & v30;
          if (((*(v24 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
          {
            break;
          }

          v32 = (*(v24 + 48) + 16 * v31);
          if (*v32 != v27 || v32[1] != v5)
          {
            OUTLINED_FUNCTION_20_0();
            v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v29 = v31 + 1;
            if ((v34 & 1) == 0)
            {
              continue;
            }
          }

          v8 = v149;
          goto LABEL_28;
        }
      }

      OUTLINED_FUNCTION_6_8();
      v35 = OUTLINED_FUNCTION_3_7();
      v36(v35, v5);
      specialized Set._Variant.insert(_:)();

      outlined init with copy of Transforming(&v165, &v160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
      v37 = OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_24_0(v37, v38, v39, v40, v41, v42, v43, v44, v142, v143, v144, v145, v146, v147, v149, v150, v152, v154, v156, v158, v45);
      outlined init with take of Transforming(&v160, &v37[2]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = v17[1].n128_i64[0];
        OUTLINED_FUNCTION_7_7();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v49;
      }

      v47 = v17[1].n128_u64[0];
      v46 = v17[1].n128_u64[1];
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v46);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v50;
      }

      v8 = v149;
      v17[1].n128_u64[0] = v47 + 1;
      v17[2].n128_u64[v47] = v37;
      v168 = v17;
LABEL_28:
      ++v16;
      __swift_destroy_boxed_opaque_existential_0(&v165);
      if (v16 == v154)
      {

        goto LABEL_34;
      }
    }

    goto LABEL_33;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_34:
  if (!v17[1].n128_u64[0])
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_87;
  }

  v13 = MEMORY[0x1E69E7CC0];
  v148 = a3;
  while (2)
  {
    v16 = v17[2].n128_u64[0];

    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    TransformationChain.outputType.getter(v16);
    v165 = v160;
    TransformationRegistry.findNextSteps(from:ignoringTypes:)(&v165, v169);
    OUTLINED_FUNCTION_8();

    v59 = 0;
    v155 = *(v146 + 16);
    v157 = v146;
    v151 = v16 - 8;
    v153 = v146 + 32;
LABEL_37:
    while (v59 != v155)
    {
      if (v59 >= *(v157 + 16))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      outlined init with copy of Transforming(v153 + 40 * v59, &v165);
      OUTLINED_FUNCTION_6_8();
      v61 = *(v60 + 8);
      v62 = OUTLINED_FUNCTION_8();
      v63(v62, v5);
      v64 = *(v16 + 16);
      if (!v64)
      {
        goto LABEL_93;
      }

      v65 = v160;
      v66 = (v151 + 40 * v64);
      v68 = v66[3];
      v67 = v66[4];
      __swift_project_boxed_opaque_existential_1(v66, v68);
      (*(v67 + 16))(&v163, v68, v67);
      if (v65 == v163 && *(&v65 + 1) == v164)
      {
      }

      else
      {
        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v70 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
      v71 = swift_initStackObject();
      OUTLINED_FUNCTION_24_0(v71, v72, v73, v74, v75, v76, v77, v78, v142, v143, v144, v145, v146, v148, v149, v151, v153, v155, v157, v158, v79);
      outlined init with copy of Transforming(&v165, &v71[2]);
      v80 = *(v16 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v82 = *(v16 + 24) >> 1, v83 = v16, v82 <= v80))
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v80 + 1, 1, v16);
        v83 = v84;
        v82 = *(v84 + 24) >> 1;
      }

      if (v82 <= *(v83 + 16))
      {
        goto LABEL_94;
      }

      swift_arrayInitWithCopy();

      ++*(v83 + 16);
      v85 = v167;
      __swift_project_boxed_opaque_existential_1(&v165, v166);
      v86 = *(v85 + 16);
      v87 = OUTLINED_FUNCTION_8();
      v88(v87, v85);
      if (v160 == v8 && *(&v160 + 1) == v159)
      {
      }

      else
      {
        v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v90 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      if ((v158 & 0x100000000) == 0)
      {

        v13 = OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_24_0(v13, v121, v122, v123, v124, v125, v126, v127, v142, v143, v144, v145, v146, v148, v149, v151, v153, v155, v157, v158, v128);
        v129[7] = &type metadata for TransformationChain;
        v129[8] = &protocol witness table for TransformationChain;
        v129[4] = v83;
        goto LABEL_85;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = v13[1].n128_u64[0];
        v112 = OUTLINED_FUNCTION_7_7();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v112, v113, v114, v13);
        v13 = v115;
      }

      v92 = v13[1].n128_u64[0];
      v91 = v13[1].n128_u64[1];
      if (v92 >= v91 >> 1)
      {
        v116 = OUTLINED_FUNCTION_23_1(v91);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v116, v92 + 1, 1, v13);
        v13 = v117;
      }

      v162 = &protocol witness table for TransformationChain;
      v161 = &type metadata for TransformationChain;
      *&v160 = v83;
      v13[1].n128_u64[0] = v92 + 1;
      outlined init with take of Transforming(&v160, &v13[2] + 40 * v92);
LABEL_64:
      ++v59;
      if (*(v83 + 16) >= a3)
      {

        __swift_destroy_boxed_opaque_existential_0(&v165);
      }

      else
      {
        v93 = v169;
        v94 = v167;
        __swift_project_boxed_opaque_existential_1(&v165, v166);
        v95 = OUTLINED_FUNCTION_3_7();
        v96(v95, v94);
        v5 = v164;
        if (*(v93 + 16))
        {
          v97 = v163;
          v98 = *(v93 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v99 = Hasher._finalize()();
          v100 = ~(-1 << *(v93 + 32));
          while (1)
          {
            v101 = v99 & v100;
            if (((*(v93 + 56 + (((v99 & v100) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v99 & v100)) & 1) == 0)
            {
              break;
            }

            v102 = (*(v93 + 48) + 16 * v101);
            if (*v102 != v97 || v102[1] != v5)
            {
              OUTLINED_FUNCTION_20_0();
              v104 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v99 = v101 + 1;
              if ((v104 & 1) == 0)
              {
                continue;
              }
            }

            __swift_destroy_boxed_opaque_existential_0(&v165);
            a3 = v148;
            v8 = v149;
            goto LABEL_37;
          }
        }

        if ((v158 & 0x100000000) == 0)
        {
          v105 = v167;
          __swift_project_boxed_opaque_existential_1(&v165, v166);
          v106 = OUTLINED_FUNCTION_3_7();
          v107(v106, v105);
          specialized Set._Variant.insert(_:)();
        }

        v108 = v168;
        v8 = v149;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = v108[1].n128_i64[0];
          OUTLINED_FUNCTION_7_7();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v108 = v119;
        }

        v110 = v108[1].n128_u64[0];
        v109 = v108[1].n128_u64[1];
        a3 = v148;
        if (v110 >= v109 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v109);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v108 = v120;
        }

        v108[1].n128_u64[0] = v110 + 1;
        v108[2].n128_u64[v110] = v83;
        v168 = v108;
        __swift_destroy_boxed_opaque_existential_0(&v165);
      }
    }

    v17 = v168;
    if (v168[1].n128_u64[0])
    {
      continue;
    }

    break;
  }

LABEL_87:

  if (!v13[1].n128_u64[0])
  {

    if (*(v146 + 32))
    {
      *&v160 = v145;
      *(&v160 + 1) = v144;
      *&v165 = v8;
      *(&v165 + 1) = v159;

      v13 = TransformationRegistry.findBasicTransformation(from:to:lengthLimit:findAllPaths:)(&v160, &v165, a3, BYTE4(v158) & 1);

      return v13;
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

void *TransformationRegistry.findNextSteps(from:ignoringTypes:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = OUTLINED_FUNCTION_3_2();
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  if ((v10 & 1) == 0 || (v11 = *(*(v6 + 56) + 8 * v9), , , (v12 = *(v11 + 16)) == 0))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = 0;
  v46[1] = v11;
  v47 = v11 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    outlined init with copy of Transforming(v47 + 40 * v13, v51);
    v15 = v52;
    v16 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v16 + 16))(v48, v15, v16);
    v17 = v48[1];
    if (*(a2 + 16))
    {
      v18 = v48[0];
      v19 = *(a2 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(a2 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(a2 + 48) + 16 * v22);
        if (*v23 != v18 || v23[1] != v17)
        {
          OUTLINED_FUNCTION_20_0();
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    outlined init with copy of Transforming(v51, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = v14[2];
      v39 = OUTLINED_FUNCTION_7_7();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v40, v41, v14);
      v14 = v42;
      v54 = v42;
    }

    v28 = v14[2];
    v27 = v14[3];
    if (v28 >= v27 >> 1)
    {
      v43 = OUTLINED_FUNCTION_23_1(v27);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43, v28 + 1, 1, v14);
      v14 = v44;
      v54 = v44;
    }

    v29 = v49;
    v30 = v50;
    __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    OUTLINED_FUNCTION_0_1();
    v32 = *(v31 + 64);
    MEMORY[0x1EEE9AC00](v33, v34);
    v36 = v46 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v28, v36, &v54, v29, v30);
    __swift_destroy_boxed_opaque_existential_0(v48);
LABEL_19:
    ++v13;
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  while (v13 != v12);

  return v14;
}

uint64_t TransformationRegistry.GenericTransformer.typeErasedTransform(_:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t protocol witness for Transforming.inputType.getter in conformance TransformationRegistry.GenericTransformer@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for Transforming.outputType.getter in conformance TransformationRegistry.GenericTransformer@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void *TransformationRegistry.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  v0[4] = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + 32);
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t TransformationRegistry.__deallocating_deinit()
{
  TransformationRegistry.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v1 = String.subscript.getter();

    return v1;
  }

  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = String.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = Substring.distance(from:to:)();
  if (__OFSUB__(result, v5))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    v7 = a3;
  }

  else
  {
    v7 = result;
  }

  if (v7 >> 14 >= a2 >> 14)
  {
    v8 = Substring.subscript.getter();

    return v8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 24 * a1);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  result = outlined init with take of Transforming(a5, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_7(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = type metadata accessor for CodingUserInfoKey();
  OUTLINED_FUNCTION_16(v10);
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  result = outlined init with take of Any(a3, (*(a4 + 56) + 32 * a1));
  v13 = *(a4 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_7(a1, a5 + 8 * (a1 >> 6));
  v11 = *(v10 + 48);
  v12 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_16(v12);
  result = (*(v13 + 32))(v11 + *(v13 + 72) * a1, a2);
  v15 = (*(a5 + 56) + 16 * a1);
  *v15 = a3;
  v15[1] = a4;
  v16 = *(a5 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_4_7(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v5;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v14 = v23[2];
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities24TransformationIdentifierVAC12Transforming_pGMd, &_ss17_NativeDictionaryVy13SiriUtilities24TransformationIdentifierVAC12Transforming_pGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v18)
  {
    outlined init with take of Transforming((v23[7] + 40 * v17), a5);
    result = outlined init with take of Transforming(a1, v23[7] + 40 * v17);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, a2, a3, a4, a1, v23);
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  *v5 = v23;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 8 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v9 + 8 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of Transforming(&v12, v10 + 40 * a1 + 32);
}

unint64_t lazy protocol witness table accessor for type TransformationError and conformance TransformationError()
{
  result = lazy protocol witness table cache variable for type TransformationError and conformance TransformationError;
  if (!lazy protocol witness table cache variable for type TransformationError and conformance TransformationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationError and conformance TransformationError);
  }

  return result;
}

uint64_t destroy for TransformationRegistry.GenericTransformer(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];
}

uint64_t initializeWithCopy for TransformationRegistry.GenericTransformer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for TransformationRegistry.GenericTransformer(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  v7 = a2[4];
  v6 = a2[5];
  v8 = a1[5];
  a1[4] = v7;
  a1[5] = v6;

  return a1;
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

void *assignWithTake for TransformationRegistry.GenericTransformer(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = *(a2 + 16);
  v6 = a1[3];

  v7 = *(a2 + 40);
  *(a1 + 3) = *(a2 + 24);
  v8 = a1[5];
  a1[5] = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for TransformationRegistry.GenericTransformer(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TransformationRegistry.GenericTransformer(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Transforming?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1E12AA0F0);
  }

  return result;
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

uint64_t OUTLINED_FUNCTION_25_0()
{
  v2 = *(v0 - 368);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return outlined destroy of TypeInformation(v0 - 144);
}

uint64_t key path setter for SiriEnvironment.currentDevice : SiriEnvironment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriEnvironment.currentDevice.setter(v4);
}

uint64_t SiriEnvironment.currentDevice.setter(uint64_t a1)
{
  v2 = type metadata accessor for CurrentDevice();
  OUTLINED_FUNCTION_7();
  v6 = *(v3 + 216);
  v4 = OUTLINED_FUNCTION_4_8(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice);

  return v6(a1, v2, v2, v4);
}

uint64_t SiriEnvironment.currentDevice.modify(void *a1)
{
  a1[1] = v1;
  v3 = type metadata accessor for CurrentDevice();
  a1[2] = v3;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 208);
  v6 = OUTLINED_FUNCTION_4_8(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice);
  a1[3] = v6;
  *a1 = v5(v3, v3, v6);
  return OUTLINED_FUNCTION_18();
}

uint64_t key path setter for CurrentDevice.mock : CurrentDevice(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

uint64_t key path getter for CurrentDevice.identifiedUserMeCard : CurrentDevice@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CurrentDevice.identifiedUserMeCard : CurrentDevice(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);
  v4 = *a1;
  return v3(v2);
}

uint64_t CurrentDevice.identifiedUserMeCard.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();

  return _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSo8SAPersonCSg_AA13CurrentDeviceCTt3g5(a1, v1, KeyPath, v4);
}

void CurrentDevice.identifiedUserMeCard.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_11_7(v2) + 48) = v0;
  KeyPath = swift_getKeyPath();
  v1[7] = KeyPath;
  v1[8] = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 184);

  v8 = v6(v7);
  if (v8 && (OUTLINED_FUNCTION_3(v8), (*(v9 + 144))(KeyPath), , v10 = v1[5], v10 != 1))
  {
  }

  else
  {
    OUTLINED_FUNCTION_20();
    (*(v11 + 104))();

    v10 = v1[4];
  }

  v1[3] = v10;
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_50();
}

void CurrentDevice.identifiedUserMeCard.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v6 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(*a1 + 24);

    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v8 = *(*a1 + 48);

    OUTLINED_FUNCTION_32_0();
  }

  free(v2);
}

void *key path getter for CurrentDevice.$identifiedUserMeCard : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 232))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$identifiedUserMeCard : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 240);

  return v3(&v5);
}

uint64_t CurrentDevice.$identifiedUserMeCard.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$identifiedUserMeCard.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$status.getter();
  return OUTLINED_FUNCTION_18();
}

void *key path getter for CurrentDevice.deviceIdiom : CurrentDevice@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.deviceIdiom : CurrentDevice(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 264))(&v4);
}

void CurrentDevice.deviceIdiom.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_26();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_12_1(v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 184);

  v9 = v7(v8);
  if (v9 && (OUTLINED_FUNCTION_3(v9), v11 = *(v10 + 144), v12 = OUTLINED_FUNCTION_26_1(), v13(v12), , *(v1 + 49) != 10))
  {

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v15 = *(v14 + 104);
    OUTLINED_FUNCTION_24_1();
    v16();
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for CurrentDevice.$deviceIdiom : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 280))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$deviceIdiom : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 288);

  return v3(&v5);
}

uint64_t CurrentDevice.$deviceIdiom.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$deviceIdiom.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$isAvailable.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for CurrentDevice.isTextToSpeechEnabled : CurrentDevice@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result & 1;
  return result;
}

void CurrentDevice.isTextToSpeechEnabled.modify()
{
  OUTLINED_FUNCTION_49();
  v3 = OUTLINED_FUNCTION_26();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_12_1(v4);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 184);

  v10 = v8(v9);
  if (v10 && (OUTLINED_FUNCTION_3(v10), (*(v11 + 144))(v2), , v12 = *(v1 + 50), v12 != 2))
  {
  }

  else
  {
    OUTLINED_FUNCTION_20();
    (*(v13 + 104))();

    LOBYTE(v12) = *(v1 + 49);
  }

  *(v1 + 48) = v12 & 1;
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for CurrentDevice.$isTextToSpeechEnabled : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 328))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$isTextToSpeechEnabled : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 336);

  return v3(&v5);
}

uint64_t CurrentDevice.$isTextToSpeechEnabled.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$isTextToSpeechEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$isExpensive.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for CurrentDevice.isLockedWithPasscode : CurrentDevice@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

void CurrentDevice.isLockedWithPasscode.modify()
{
  OUTLINED_FUNCTION_49();
  v3 = OUTLINED_FUNCTION_26();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_12_1(v4);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v6 = *(v0 + 48);
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 184);

  v10 = v8(v9);
  if (v10 && (OUTLINED_FUNCTION_3(v10), (*(v11 + 144))(v2), , v12 = *(v1 + 50), v12 != 2))
  {
  }

  else
  {
    OUTLINED_FUNCTION_20();
    (*(v13 + 104))();

    LOBYTE(v12) = *(v1 + 49);
  }

  *(v1 + 48) = v12 & 1;
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for CurrentDevice.$isLockedWithPasscode : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 376))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$isLockedWithPasscode : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 384);

  return v3(&v5);
}

uint64_t CurrentDevice.$isLockedWithPasscode.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$isLockedWithPasscode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$isConstrained.getter();
  return OUTLINED_FUNCTION_18();
}

void *key path getter for CurrentDevice.siriVoiceGender : CurrentDevice@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.siriVoiceGender : CurrentDevice(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 408))(&v4);
}

void CurrentDevice.siriVoiceGender.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_26();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_12_1(v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v0 + 56);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 184);

  v9 = v7(v8);
  if (v9 && (OUTLINED_FUNCTION_3(v9), v11 = *(v10 + 144), v12 = OUTLINED_FUNCTION_26_1(), v13(v12), , *(v1 + 49) != 3))
  {

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v15 = *(v14 + 104);
    OUTLINED_FUNCTION_24_1();
    v16();
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for CurrentDevice.$siriVoiceGender : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 424))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$siriVoiceGender : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 432);

  return v3(&v5);
}

uint64_t CurrentDevice.$siriVoiceGender.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$siriVoiceGender.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$isInAirplaneMode.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for CurrentDevice.preferencesLanguageCode : CurrentDevice@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.preferencesLanguageCode : CurrentDevice(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 456);

  return v4(v2, v3);
}

void CurrentDevice.preferencesLanguageCode.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_11_7(v2) + 72) = v0;
  KeyPath = swift_getKeyPath();
  v1[10] = KeyPath;
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v4 = *(v0 + 64);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 184);

  v8 = v6(v7);
  if (v8 && (OUTLINED_FUNCTION_3(v8), (*(v9 + 144))(KeyPath), , v10 = v1[8], v10 != 1))
  {
    v12 = v1[7];
  }

  else
  {
    OUTLINED_FUNCTION_20();
    (*(v11 + 104))();

    v12 = v1[5];
    v10 = v1[6];
  }

  v1[3] = v12;
  v1[4] = v10;
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_50();
}

void *key path getter for CurrentDevice.$preferencesLanguageCode : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 472))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$preferencesLanguageCode : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 480);

  return v3(&v5);
}

uint64_t CurrentDevice.$preferencesLanguageCode.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t CurrentDevice.$preferencesLanguageCode.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$preferencesLanguageCode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  CurrentDevice.$preferencesLanguageCode.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path setter for CurrentDevice.siriLocale : CurrentDevice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return (*(**a2 + 504))(v8);
}

void (*CurrentDevice.siriLocale.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  v3[4] = v5;
  v6 = type metadata accessor for Locale();
  v3[5] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v8 = v7;
  v3[6] = v7;
  v10 = *(v9 + 64);
  v3[7] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v3[8] = v11;
  KeyPath = swift_getKeyPath();
  v3[9] = KeyPath;
  v3[10] = swift_getKeyPath();
  OUTLINED_FUNCTION_17();
  v13 = *(v1 + 72);
  OUTLINED_FUNCTION_7();
  v15 = *(v14 + 184);

  v17 = v15(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_3(v17);
    (*(v18 + 144))(KeyPath);

    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {

      (*(v8 + 32))(v11, v5, v6);
      return CurrentDevice.siriLocale.modify;
    }

    v17 = outlined destroy of Locale?(v5);
  }

  (*(*v13 + 104))(v17);

  return CurrentDevice.siriLocale.modify;
}

void CurrentDevice.siriLocale.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[5];
    v8 = v2[6];
    v10 = v2[3];
    v9 = v2[4];
    (*(v8 + 16))(*(*a1 + 56), v6, v7);

    _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZ10Foundation6LocaleV_AA13CurrentDeviceCTt3g5(v5, v10);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v11 = v2[3];
    v9 = v2[4];

    _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZ10Foundation6LocaleV_AA13CurrentDeviceCTt3g5(v6, v11);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v2);
}

void *key path getter for CurrentDevice.$siriLocale : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 520))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$siriLocale : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 528);

  return v3(&v5);
}

uint64_t CurrentDevice.$siriLocale.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t CurrentDevice.$siriLocale.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$siriLocale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  CurrentDevice.$siriLocale.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for CurrentDevice.isVoiceTriggerEnabled : CurrentDevice@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 544))();
  *a2 = result & 1;
  return result;
}

void CurrentDevice.isVoiceTriggerEnabled.modify()
{
  OUTLINED_FUNCTION_49();
  v3 = OUTLINED_FUNCTION_26();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_12_1(v4);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v6 = *(v0 + 80);
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 184);

  v10 = v8(v9);
  if (v10 && (OUTLINED_FUNCTION_3(v10), (*(v11 + 144))(v2), , v12 = *(v1 + 50), v12 != 2))
  {
  }

  else
  {
    OUTLINED_FUNCTION_20();
    (*(v13 + 104))();

    LOBYTE(v12) = *(v1 + 49);
  }

  *(v1 + 48) = v12 & 1;
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void CurrentDevice.isTextToSpeechEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 48);

  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSb_AA13CurrentDeviceCTt3g5(v5);

  free(v1);
}

void *key path getter for CurrentDevice.$isVoiceTriggerEnabled : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 568))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$isVoiceTriggerEnabled : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 576);

  return v3(&v5);
}

uint64_t CurrentDevice.$isVoiceTriggerEnabled.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t CurrentDevice.$isVoiceTriggerEnabled.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$isVoiceTriggerEnabled.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  CurrentDevice.$isVoiceTriggerEnabled.getter();
  return OUTLINED_FUNCTION_18();
}

void *key path getter for CurrentDevice.personalDomainsAuthenticationMode : CurrentDevice@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 592))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.personalDomainsAuthenticationMode : CurrentDevice(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 600))(&v4);
}

void CurrentDevice.personalDomainsAuthenticationMode.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_26();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_12_1(v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v0 + 88);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 184);

  v9 = v7(v8);
  if (v9 && (OUTLINED_FUNCTION_3(v9), v11 = *(v10 + 144), v12 = OUTLINED_FUNCTION_26_1(), v13(v12), , *(v1 + 49) != 4))
  {

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v15 = *(v14 + 104);
    OUTLINED_FUNCTION_24_1();
    v16();
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for CurrentDevice.$personalDomainsAuthenticationMode : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 616))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$personalDomainsAuthenticationMode : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 624);

  return v3(&v5);
}

uint64_t CurrentDevice.$personalDomainsAuthenticationMode.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t CurrentDevice.$personalDomainsAuthenticationMode.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 88);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$personalDomainsAuthenticationMode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  CurrentDevice.$personalDomainsAuthenticationMode.getter();
  return OUTLINED_FUNCTION_18();
}

void *key path getter for CurrentDevice.restrictedCommands : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 640))(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.restrictedCommands : CurrentDevice(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 648);

  return v4(v6);
}

void CurrentDevice.restrictedCommands.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_11_7(v2) + 56) = v0;
  KeyPath = swift_getKeyPath();
  v1[8] = KeyPath;
  v1[9] = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v4 = *(v0 + 96);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 184);

  v8 = v6(v7);
  if (!v8)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3(v8);
  (*(v9 + 144))(KeyPath);

  if (!v1[5])
  {

LABEL_5:
    OUTLINED_FUNCTION_20();
    (*(v11 + 104))();

    goto LABEL_6;
  }

  v10 = v1[6];
  v1[3] = v1[5];
  v1[4] = v10;
LABEL_6:
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_50();
}

{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = *v2;
  v4 = (*v2 + 24);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 32);

  v8 = *(v3 + 64);
  v7 = *(v3 + 72);
  if (v1)
  {

    OUTLINED_FUNCTION_31_0();
    v9 = *v4;
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_50();

  free(v10);
}

void *key path getter for CurrentDevice.$restrictedCommands : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 664))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$restrictedCommands : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 672);

  return v3(&v5);
}

uint64_t CurrentDevice.$restrictedCommands.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t CurrentDevice.$restrictedCommands.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$restrictedCommands.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  CurrentDevice.$restrictedCommands.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for CurrentDevice.deviceRegionCode : CurrentDevice@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 688))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.deviceRegionCode : CurrentDevice(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 696);

  return v4(v2, v3);
}

void CurrentDevice.deviceRegionCode.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_11_7(v2) + 72) = v0;
  KeyPath = swift_getKeyPath();
  v1[10] = KeyPath;
  v1[11] = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v4 = *(v0 + 104);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 184);

  v8 = v6(v7);
  if (v8 && (OUTLINED_FUNCTION_3(v8), (*(v9 + 144))(KeyPath), , v10 = v1[8], v10 != 1))
  {
    v12 = v1[7];
  }

  else
  {
    OUTLINED_FUNCTION_20();
    (*(v11 + 104))();

    v12 = v1[5];
    v10 = v1[6];
  }

  v1[3] = v12;
  v1[4] = v10;
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_50();
}

void CurrentDevice.preferencesLanguageCode.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v6 = *(*a1 + 72);
  if (a2)
  {
    v7 = *(*a1 + 32);

    OUTLINED_FUNCTION_20_1();
    v8 = v2[4];
  }

  else
  {
    v9 = *(*a1 + 72);

    OUTLINED_FUNCTION_20_1();
  }

  free(v2);
}

void *key path getter for CurrentDevice.$deviceRegionCode : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 712))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$deviceRegionCode : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 720);

  return v3(&v5);
}

uint64_t CurrentDevice.$deviceRegionCode.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t CurrentDevice.$deviceRegionCode.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 104);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$deviceRegionCode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  CurrentDevice.$deviceRegionCode.getter();
  return OUTLINED_FUNCTION_18();
}

void *key path getter for CurrentDevice.deviceClass : CurrentDevice@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 736))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.deviceClass : CurrentDevice(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 744))(&v4);
}

void CurrentDevice.deviceClass.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_26();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_12_1(v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v0 + 112);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 184);

  v9 = v7(v8);
  if (v9 && (OUTLINED_FUNCTION_3(v9), v11 = *(v10 + 144), v12 = OUTLINED_FUNCTION_26_1(), v13(v12), , *(v1 + 49) != 8))
  {

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v15 = *(v14 + 104);
    OUTLINED_FUNCTION_24_1();
    v16();
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void CurrentDevice.deviceIdiom.modify(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 48);

  a3(v8, v7, v6, v5);

  free(v4);
}

void *key path getter for CurrentDevice.$deviceClass : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 760))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CurrentDevice.$deviceClass : CurrentDevice(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 768);

  return v3(&v5);
}

uint64_t CurrentDevice.$deviceClass.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t CurrentDevice.$deviceClass.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 112);
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 160);

  v5(&v7);
}

uint64_t CurrentDevice.$deviceClass.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  CurrentDevice.$deviceClass.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t CurrentDevice.$identifiedUserMeCard.modify(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v7 = *a1;

    a3(&v7);
  }

  else
  {
    v7 = *a1;
    return (a3)(&v7);
  }
}

BOOL CurrentDevice.isPod.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 4;
}

uint64_t CurrentDevice.supportsVehicleData.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 896))(&v2);
  return (v2 >> 8) & 1;
}

uint64_t CurrentDevice.carOwnsMainAudio.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 896))(&v2);
  return (v2 >> 11) & 1;
}

uint64_t CurrentDevice.isEyesFree.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 896))(&v2);
  return (v2 >> 10) & 1;
}

uint64_t CurrentDevice.isHeadGestureRecognitionAvailable.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 896))(&v2);
  return (v2 >> 9) & 1;
}

uint64_t CurrentDevice.__allocating_init(storage:)()
{
  OUTLINED_FUNCTION_30_0();
  v0 = swift_allocObject();
  CurrentDevice.init(storage:)();
  return v0;
}

void *CurrentDevice.init(storage:)()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = OUTLINED_FUNCTION_5_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v3, v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v39 - v13;
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySo8SAPersonCSgGMd, &_s13SiriUtilities17MockablePublishedCySo8SAPersonCSgGMR);
  OUTLINED_FUNCTION_18_2();
  v0[3] = specialized MockablePublished.init(wrappedValue:)(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11DeviceIdiomOGMd, &_s13SiriUtilities17MockablePublishedCyAA11DeviceIdiomOGMR);
  OUTLINED_FUNCTION_18_2();
  v0[4] = specialized MockablePublished.init(wrappedValue:)(9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  OUTLINED_FUNCTION_18_2();
  v0[5] = specialized MockablePublished.init(wrappedValue:)(0);
  OUTLINED_FUNCTION_18_2();
  v0[6] = specialized MockablePublished.init(wrappedValue:)(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA0A11VoiceGenderOGMd, &_s13SiriUtilities17MockablePublishedCyAA0A11VoiceGenderOGMR);
  OUTLINED_FUNCTION_18_2();
  v0[7] = specialized MockablePublished.init(wrappedValue:)(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySSSgGMd, &_s13SiriUtilities17MockablePublishedCySSSgGMR);
  swift_allocObject();
  v0[8] = specialized MockablePublished.init(wrappedValue:)(0, 0);
  if (one-time initialization token for defaultLocale != -1)
  {
LABEL_12:
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, static CurrentDevice.defaultLocale);
  v16 = *(v5 + 16);
  v16(v14, v15, v2);
  v16(v11, v14, v2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCy10Foundation6LocaleVGMd, &_s13SiriUtilities17MockablePublishedCy10Foundation6LocaleVGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  specialized MockablePublished.init(wrappedValue:)(v11, v20, v21, v22, v23, v24, v25, v26, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v28 = v27;
  (*(v5 + 8))(v14, v2);
  v1[9] = v28;
  OUTLINED_FUNCTION_18_2();
  v1[10] = specialized MockablePublished.init(wrappedValue:)(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA33PersonalDomainsAuthenticationModeOSgGMd, &_s13SiriUtilities17MockablePublishedCyAA33PersonalDomainsAuthenticationModeOSgGMR);
  OUTLINED_FUNCTION_18_2();
  v1[11] = specialized MockablePublished.init(wrappedValue:)(3);
  v2 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(MEMORY[0x1E69E7CD0]);
  v29 = 0;
  v30 = 0;
  v5 = *(v2 + 16);
  v31 = (v2 + 40);
  while (v5 != v29)
  {
    if (v29 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    ++v29;
    v14 = *(v31 - 1);
    v11 = *v31;

    v32._countAndFlagsBits = v14;
    v32._object = v11;
    DeviceRestrictions.init(aceValue:)(v32);
    v30 |= v40;
    v31 += 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA12RestrictionsVGMd, &_s13SiriUtilities17MockablePublishedCyAA12RestrictionsVGMR);
  swift_allocObject();
  v1[12] = specialized MockablePublished.init(wrappedValue:)(MEMORY[0x1E69E7CD0], v30);
  swift_allocObject();
  v1[13] = specialized MockablePublished.init(wrappedValue:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11DeviceClassOSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11DeviceClassOSgGMR);
  OUTLINED_FUNCTION_18_2();
  v1[14] = specialized MockablePublished.init(wrappedValue:)(7);
  if (one-time initialization token for deviceRegionCodeKey != -1)
  {
    swift_once();
  }

  v33 = MGGetStringAnswer();
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSSSg_AA13CurrentDeviceCTt3g5();
  MobileGestaltDeviceClassProvider.currentDeviceClass.getter(&v39 + 7);
  v35 = HIBYTE(v39);
  KeyPath = swift_getKeyPath();
  v37 = swift_getKeyPath();

  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZAA11DeviceIdiomO_AA07CurrentO0CTt3B5(v35, v1, KeyPath, v37);

  return v1;
}

uint64_t one-time initialization function for defaultLocale()
{
  v0 = type metadata accessor for Locale();
  __swift_allocate_value_buffer(v0, static CurrentDevice.defaultLocale);
  __swift_project_value_buffer(v0, static CurrentDevice.defaultLocale);
  return Locale.init(identifier:)();
}

uint64_t one-time initialization function for deviceRegionCodeKey()
{
  result = MEMORY[0x1E12A8BC0](0x6F436E6F69676552, 0xEA00000000006564);
  static CurrentDevice.deviceRegionCodeKey = result;
  return result;
}

uint64_t static CurrentDevice.adjustMock(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v2 = (*(*a1 + 136))();

  if ((v2 & 1) == 0)
  {
    swift_getKeyPath();
    (*(*a1 + 144))(&v9);

    if (v10 != 1)
    {
      v3 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys14PartialKeyPathCy13SiriUtilities13CurrentDeviceCG_yptGMd, &_ss23_ContiguousArrayStorageCys14PartialKeyPathCy13SiriUtilities13CurrentDeviceCG_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD265D10;
      *(inited + 32) = swift_getKeyPath();
      *(inited + 64) = &type metadata for Restrictions;
      v9 = v3;
      *(inited + 40) = DeviceRestrictions.aceSet.getter();
      *(inited + 48) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy13SiriUtilities13CurrentDeviceCGMd, &_ss14PartialKeyPathCy13SiriUtilities13CurrentDeviceCGMR);
      v5 = Dictionary.init(dictionaryLiteral:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities29EnvironmentProviderMockHelperCyAA13CurrentDeviceCGMd, &_s13SiriUtilities29EnvironmentProviderMockHelperCyAA13CurrentDeviceCGMR);
      *(swift_allocObject() + 16) = v5;
      v6 = *(*a1 + 152);

      v6(v7);
    }
  }
}

void *key path getter for CurrentDevice.restrictions : CurrentDevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 896))(&v4);
  *a2 = v4;
  return result;
}

void *CurrentDevice.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  return v0;
}

uint64_t CurrentDevice.__deallocating_deinit()
{
  CurrentDevice.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*protocol witness for MockableEnvironmentProvider.mock.modify in conformance CurrentDevice(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 200))();
  return protocol witness for MockableEnvironmentProvider.mock.modify in conformance NetworkAvailability;
}

uint64_t instantiation function for generic protocol witness table for CurrentDevice(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice);
  *(a1 + 8) = result;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t DispatchSemaphoreLock.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = dispatch_semaphore_create(1);
  return v0;
}

uint64_t DispatchSemaphoreLock.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t DeadlockDetectingLock.__allocating_init(name:wrapping:deadlockAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  DeadlockDetectingLock.init(name:wrapping:deadlockAction:)(a1, a2, a3, a4, a5);
  return v10;
}

void *DeadlockDetectingLock.init(name:wrapping:deadlockAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a3;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v12 + 8))(v16, v11);
  if (!a2)
  {

    a1 = v17;
    a2 = v19;
  }

  v6[2] = a1;
  v6[3] = a2;
  v20 = MEMORY[0x1E12A8BC0](v17, v19);

  v6[4] = v20;
  v6[5] = a4;
  v6[6] = a5;
  v21 = v26;
  outlined init with copy of SimpleLock?(v26, &v27);
  if (v28)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v21, &_s13SiriUtilities10SimpleLock_pSgMd, &_s13SiriUtilities10SimpleLock_pSgMR);
    outlined init with take of Transforming(&v27, &v29);
  }

  else
  {

    outlined destroy of CheckedContinuation<(), Error>?(&v27, &_s13SiriUtilities10SimpleLock_pSgMd, &_s13SiriUtilities10SimpleLock_pSgMR);
    v22 = type metadata accessor for DispatchSemaphoreLock();
    v23 = swift_allocObject();
    *(v23 + 16) = dispatch_semaphore_create(1);
    v30 = v22;
    v31 = &protocol witness table for DispatchSemaphoreLock;

    *&v29 = v23;
    outlined destroy of CheckedContinuation<(), Error>?(v21, &_s13SiriUtilities10SimpleLock_pSgMd, &_s13SiriUtilities10SimpleLock_pSgMR);
  }

  outlined init with take of Transforming(&v29, (v6 + 7));
  return v6;
}

uint64_t outlined init with copy of SimpleLock?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities10SimpleLock_pSgMd, &_s13SiriUtilities10SimpleLock_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall DeadlockDetectingLock.releaseLock()()
{
  v1 = [objc_opt_self() currentThread];
  v2 = [v1 threadDictionary];

  [v2 removeObjectForKey_];
  outlined init with copy of Transforming(v0 + 56, v5);
  v3 = v6;
  v4 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t DeadlockDetectingLock.withLocked<A>(_:)(uint64_t (*a1)(void))
{
  v3 = v1;
  DeadlockDetectingLock.tryLock()();
  if (v2)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.logger);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), &v11);
      _os_log_impl(&dword_1DD1FF000, v6, v7, "Deadlock detected for %s but deadlockAction returned; executing action re-entrantly (possibly unsafe)", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1E12AA0F0](v9, -1, -1);
      MEMORY[0x1E12AA0F0](v8, -1, -1);
    }
  }

  result = a1();
  if (!v2)
  {
    return (*(*v3 + 152))(result);
  }

  return result;
}

void DeadlockDetectingLock.tryLock()()
{
  v1 = objc_opt_self();
  v2 = [v1 currentThread];
  v3 = [v2 threadDictionary];

  v4 = *(v0 + 32);
  v5 = [v3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of CheckedContinuation<(), Error>?(&v11, &_sypSgMd, &_sypSgMR);
    v6 = *(v0 + 48);
    (*(v0 + 40))(v0);
    lazy protocol witness table accessor for type DeadlockDetectingLock.DeadlockError and conformance DeadlockDetectingLock.DeadlockError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    outlined destroy of CheckedContinuation<(), Error>?(&v11, &_sypSgMd, &_sypSgMR);
    outlined init with copy of Transforming(v0 + 56, &v11);
    v7 = *(&v12 + 1);
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v8 + 8))(v7, v8);
    __swift_destroy_boxed_opaque_existential_0(&v11);
    v9 = [v1 currentThread];
    v10 = [v9 threadDictionary];

    [v10 setObject:v4 forKey:v4];
  }
}

uint64_t DeadlockDetectingLock.logDeadlockAndCrash()()
{
  _StringGuts.grow(_:)(47);

  v11[0] = 0xD00000000000001BLL;
  v11[1] = 0x80000001DD26ACB0;
  MEMORY[0x1E12A8C40](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12A8C40](0xD000000000000012, 0x80000001DD26ACD0);
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.logger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v4 = 136315650;
    v5 = StaticString.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, v11);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2048;
    *(v4 + 14) = 149;
    *(v4 + 22) = 2080;
    *(v4 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001DD26ACB0, v11);
    OUTLINED_FUNCTION_2_12(&dword_1DD1FF000, v8, v9, "FatalError at %s:%lu - %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  result = OUTLINED_FUNCTION_1_10();
  __break(1u);
  return result;
}

uint64_t DeadlockDetectingLock.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t DeadlockDetectingLock.__deallocating_deinit()
{
  DeadlockDetectingLock.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

unint64_t lazy protocol witness table accessor for type DeadlockDetectingLock.DeadlockError and conformance DeadlockDetectingLock.DeadlockError()
{
  result = lazy protocol witness table cache variable for type DeadlockDetectingLock.DeadlockError and conformance DeadlockDetectingLock.DeadlockError;
  if (!lazy protocol witness table cache variable for type DeadlockDetectingLock.DeadlockError and conformance DeadlockDetectingLock.DeadlockError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeadlockDetectingLock.DeadlockError and conformance DeadlockDetectingLock.DeadlockError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeadlockDetectingLock.DeadlockError and conformance DeadlockDetectingLock.DeadlockError;
  if (!lazy protocol witness table cache variable for type DeadlockDetectingLock.DeadlockError and conformance DeadlockDetectingLock.DeadlockError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeadlockDetectingLock.DeadlockError and conformance DeadlockDetectingLock.DeadlockError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeadlockDetectingLock.DeadlockError(_BYTE *result, int a2, int a3)
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

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void protocol witness for SetAlgebra.symmetricDifference(_:) in conformance BargeInMode(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  _ss9OptionSetPsE19symmetricDifferenceyxxF13SiriUtilities18DeviceRestrictionsV_TB5_0(a1);
}

void protocol witness for SetAlgebra.subtracting(_:) in conformance BargeInMode(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  _ss10SetAlgebraPsE11subtractingyxxF13SiriUtilities18DeviceRestrictionsV_TB5_0(a1);
}

SiriUtilities::BargeInMode protocol witness for RawRepresentable.init(rawValue:) in conformance BargeInMode@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = BargeInMode.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance BargeInMode@<X0>(uint64_t *a1@<X8>)
{
  result = BargeInMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t BargeInContext.approximatePreviousTTSInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BargeInContext() + 20);

  return outlined init with copy of DateInterval?(v3, a1);
}

uint64_t outlined init with copy of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BargeInContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *(type metadata accessor for BargeInContext() + 20);
  v3 = type metadata accessor for DateInterval();

  return __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
}

unint64_t lazy protocol witness table accessor for type BargeInMode and conformance BargeInMode()
{
  result = lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode;
  if (!lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode;
  if (!lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode;
  if (!lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode;
  if (!lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for BargeInContext(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = type metadata accessor for DateInterval();
    if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(&v4[v6], &a2[v6], *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(&v4[v6], &a2[v6], v7);
      __swift_storeEnumTagSinglePayload(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t destroy for BargeInContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for DateInterval();
  result = __swift_getEnumTagSinglePayload(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(*(v4 - 8) + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

char *initializeWithCopy for BargeInContext(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DateInterval();
  if (__swift_getEnumTagSinglePayload(&a2[v5], 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(&a1[v5], &a2[v5], *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
    __swift_storeEnumTagSinglePayload(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for BargeInContext(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DateInterval();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v5], 1, v6);
  v8 = __swift_getEnumTagSinglePayload(&a2[v5], 1, v6);
  if (!EnumTagSinglePayload)
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v9 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(&a1[v5], &a2[v5], *(*(v10 - 8) + 64));
    return a1;
  }

  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  __swift_storeEnumTagSinglePayload(&a1[v5], 0, 1, v6);
  return a1;
}

char *initializeWithTake for BargeInContext(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DateInterval();
  if (__swift_getEnumTagSinglePayload(&a2[v5], 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(&a1[v5], &a2[v5], *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
    __swift_storeEnumTagSinglePayload(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for BargeInContext(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DateInterval();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v5], 1, v6);
  v8 = __swift_getEnumTagSinglePayload(&a2[v5], 1, v6);
  if (!EnumTagSinglePayload)
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 40))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v9 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(&a1[v5], &a2[v5], *(*(v10 - 8) + 64));
    return a1;
  }

  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  __swift_storeEnumTagSinglePayload(&a1[v5], 0, 1, v6);
  return a1;
}

void type metadata completion function for BargeInContext()
{
  type metadata accessor for DateInterval?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void type metadata accessor for DateInterval?()
{
  if (!lazy cache variable for type metadata for DateInterval?)
  {
    type metadata accessor for DateInterval();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DateInterval?);
    }
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v12);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v11;
    v6 = type metadata accessor for CodingUserInfoKey();
    OUTLINED_FUNCTION_0_15(v6);
    return (*(v7 + 8))(a2);
  }

  else
  {
    outlined destroy of Any?(a1, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(v12);
    v9 = type metadata accessor for CodingUserInfoKey();
    OUTLINED_FUNCTION_0_15(v9);
    (*(v10 + 8))(a2);
    return outlined destroy of Any?(v12, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }
}

void *one-time initialization function for root()
{
  type metadata accessor for SiriEnvironment();
  v0 = swift_allocObject();
  result = SiriEnvironment.init(parent:)(0);
  static SiriEnvironment.root = v0;
  return result;
}

uint64_t SiriEnvironment.__allocating_init(parent:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_8();
  v2 = swift_allocObject();
  SiriEnvironment.init(parent:)(a1);
  return v2;
}

uint64_t static SiriEnvironment.root.getter()
{
  if (one-time initialization token for root != -1)
  {
    OUTLINED_FUNCTION_1_12();
  }
}

Swift::Int SiriEnvironment.InitializingProvider.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriEnvironment.InitializingProvider()
{
  v1 = v0[1];
  v2 = v0[2];
  return SiriEnvironment.InitializingProvider.hashValue.getter(*v0);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SiriEnvironment.InitializingProvider(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  return SiriEnvironment.InitializingProvider.hash(into:)(a1, *v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriEnvironment.InitializingProvider()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SiriEnvironment.InitializingProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  return static SiriEnvironment.InitializingProvider.== infix(_:_:)(*a1, a1[1], a1[2], *a2);
}

void static SiriEnvironment.Scope.conversation.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "conversation");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t SiriEnvironment.Scope.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static SiriEnvironment.Scope.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t SiriEnvironment.Scope.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriEnvironment.Scope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriEnvironment.Scope.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriEnvironment.Scope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriEnvironment.Scope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriEnvironment.Scope.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities0D11EnvironmentC5ScopeV10CodingKeys33_20CF7F1B525A92BC26D56D0E773ECAB3LLOGMd, &_ss22KeyedEncodingContainerVy13SiriUtilities0D11EnvironmentC5ScopeV10CodingKeys33_20CF7F1B525A92BC26D56D0E773ECAB3LLOGMR);
  v5 = OUTLINED_FUNCTION_4_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v12, v2);
}

uint64_t SiriEnvironment.Scope.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int SiriEnvironment.Scope.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SiriEnvironment.Scope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities0D11EnvironmentC5ScopeV10CodingKeys33_20CF7F1B525A92BC26D56D0E773ECAB3LLOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities0D11EnvironmentC5ScopeV10CodingKeys33_20CF7F1B525A92BC26D56D0E773ECAB3LLOGMR);
  v7 = OUTLINED_FUNCTION_4_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    (*(v9 + 8))(v14, v3);
    *a2 = v16;
    a2[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriEnvironment.Scope()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t key path setter for SiriEnvironment.providers : SiriEnvironment(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t SiriEnvironment.providers.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

unint64_t lazy protocol witness table accessor for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironment.Scope.CodingKeys and conformance SiriEnvironment.Scope.CodingKeys);
  }

  return result;
}

uint64_t SiriEnvironment.__allocating_init(scope:parent:)(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_8();
  v4 = swift_allocObject();
  SiriEnvironment.init(scope:parent:)(a1, a2);
  return v4;
}

void *SiriEnvironment.init(scope:parent:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v2[6] = MEMORY[0x1E69E7CC0];
  v2[7] = MEMORY[0x1E69E7CC8];
  v2[2] = v6;
  v2[3] = a2;
  v2[4] = v4;
  v2[5] = v5;
  OUTLINED_FUNCTION_12();

  specialized Array.reserveCapacity(_:)(8);
  swift_endAccess();

  return v2;
}

void (*SiriEnvironment.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = SiriEnvironment.subscript.getter(a2, a3, a4);
  return SiriEnvironment.subscript.modify;
}

void SiriEnvironment.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {
    v7 = swift_unknownObjectRetain();
    SiriEnvironment.subscript.setter(v7, v5, v4);
    v8 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    SiriEnvironment.subscript.setter(v6, v5, v4);
  }

  free(v2);
}

void specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v6 += 32;
    v9 = *(v6 + 8);
    v8 = *(v6 + 16);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v6 + 24), v4 - 1 - a1, v6);
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  return static SiriEnvironment.InitializingProvider.== infix(_:_:)(*a1, a1[1], a1[2], *a2);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriEnvironment.Scope and conformance SiriEnvironment.Scope()
{
  result = lazy protocol witness table cache variable for type SiriEnvironment.Scope and conformance SiriEnvironment.Scope;
  if (!lazy protocol witness table cache variable for type SiriEnvironment.Scope and conformance SiriEnvironment.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironment.Scope and conformance SiriEnvironment.Scope);
  }

  return result;
}

void *assignWithCopy for SiriEnvironment.InitializingProvider(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a1[2];
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for SiriEnvironment.InitializingProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for SiriEnvironment.InitializingProvider(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SiriEnvironment.InitializingProvider(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SiriEnvironment.Scope.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type SiriEnvironment.InitializingProvider and conformance SiriEnvironment.InitializingProvider()
{
  result = lazy protocol witness table cache variable for type SiriEnvironment.InitializingProvider and conformance SiriEnvironment.InitializingProvider;
  if (!lazy protocol witness table cache variable for type SiriEnvironment.InitializingProvider and conformance SiriEnvironment.InitializingProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironment.InitializingProvider and conformance SiriEnvironment.InitializingProvider);
  }

  return result;
}

SiriUtilities::DeviceIdiom __swiftcall DeviceIdiom.init(aceValue:)(Swift::String aceValue)
{
  object = aceValue._object;
  v4 = v1;
  v5 = *MEMORY[0x1E69C8400];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  v7 = v7 && v6 == object;
  if (v7)
  {

LABEL_8:

    v9 = 5;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_8;
  }

  v10 = *MEMORY[0x1E69C83F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v11 == object)
  {

LABEL_17:

    v9 = 3;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_17;
  }

  v13 = *MEMORY[0x1E69C83E8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v14 == object)
  {

LABEL_25:

    v9 = 0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_25;
  }

  v16 = *MEMORY[0x1E69C8410];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v17 == object)
  {

LABEL_33:

    v9 = 7;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_33;
  }

  v19 = *MEMORY[0x1E69C8408];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v20 == object)
  {

LABEL_41:

    v9 = 6;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_41;
  }

  v22 = *MEMORY[0x1E69C83F0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v23 == object)
  {

LABEL_49:

    v9 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  if (v2)
  {
    goto LABEL_49;
  }

  v25 = *MEMORY[0x1E69C83E0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1();
  if (v7 && v26 == object)
  {

    v9 = 2;
  }

  else
  {
    v28 = OUTLINED_FUNCTION_0_0();

    if (v28)
    {
      v9 = 2;
    }

    else
    {
      v9 = 9;
    }
  }

LABEL_9:
  *v4 = v9;
  return result;
}

Swift::Int DeviceIdiom.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom()
{
  result = lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom;
  if (!lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceIdiom(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    outlined init with copy of Any(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t static TransformationDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8)
    {
      return 0;
    }

LABEL_9:
    v15 = v3 == v7 && v4 == v10;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v16 = v5 == v9 && v6 == v11;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v13 & 1) != 0 && v2 == v8)
  {
    goto LABEL_9;
  }

  return result;
}

void __swiftcall TransformationDescriptor.init(from:)(SiriUtilities::TransformationDescriptor_optional *__return_ptr retstr, Swift::OpaquePointer from)
{
  if (!*(from._rawValue + 2))
  {
    goto LABEL_82;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(1701667150, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_82;
  }

  v6 = (*(from._rawValue + 7) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  v9 = specialized Dictionary.subscript.getter(0x6E6F6973726556, 0xE700000000000000, from._rawValue);
  if (!v10)
  {
LABEL_81:

LABEL_82:

    retstr->value.outputType.encoding._object = 0;
    *&retstr->value.id.version = 0u;
    *&retstr->value.inputType.encoding._object = 0u;
    retstr->value.id.name = 0u;
    return;
  }

  v11 = v9;
  v12 = v10;
  specialized Dictionary.subscript.getter(0x7079547475706E49, 0xE900000000000065, from._rawValue);
  if (!v13 || (specialized Dictionary.subscript.getter(0x795474757074754FLL, 0xEA00000000006570, from._rawValue), v15 = v14, , !v15))
  {
LABEL_80:

    goto LABEL_81;
  }

  v16 = HIBYTE(v12) & 0xF;
  v17 = v11 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v18 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_80;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v21 = specialized _parseInteger<A, B>(ascii:radix:)(v11, v12, 10);
    v37 = v43;
    goto LABEL_79;
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
    if (v11 == 43)
    {
      if (v16)
      {
        if (v16 != 1)
        {
          OUTLINED_FUNCTION_17_2();
          while (1)
          {
            OUTLINED_FUNCTION_5_8();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_0_16();
            if (!v23)
            {
              break;
            }

            v21 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            OUTLINED_FUNCTION_10_7();
            if (v23)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_90:
      __break(1u);
      return;
    }

    if (v11 != 45)
    {
      if (v16)
      {
        while (1)
        {
          OUTLINED_FUNCTION_5_8();
          if (!v23 & v22)
          {
            break;
          }

          OUTLINED_FUNCTION_0_16();
          if (!v23)
          {
            break;
          }

          v21 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          OUTLINED_FUNCTION_10_7();
          if (v23)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        OUTLINED_FUNCTION_17_2();
        while (1)
        {
          OUTLINED_FUNCTION_5_8();
          if (!v23 & v22)
          {
            break;
          }

          OUTLINED_FUNCTION_0_16();
          if (!v23)
          {
            break;
          }

          v21 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          OUTLINED_FUNCTION_10_7();
          if (v23)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_88;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v19 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v19 = _StringObject.sharedUTF8.getter();
  }

  v20 = *v19;
  if (v20 == 43)
  {
    if (v17 < 1)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v17 != 1)
    {
      v21 = 0;
      if (v19)
      {
        while (1)
        {
          OUTLINED_FUNCTION_5_8();
          if (!v23 & v22)
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_0_16();
          if (!v23)
          {
            goto LABEL_77;
          }

          v21 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_10_7();
          if (v23)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_68;
    }

LABEL_77:
    v21 = 0;
    v26 = 1;
    goto LABEL_78;
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
          v33 = *v19 - 48;
          if (v33 > 9)
          {
            goto LABEL_77;
          }

          v34 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            goto LABEL_77;
          }

          v21 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_77;
          }

          ++v19;
          if (!--v17)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_77;
  }

  if (v17 < 1)
  {
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v17 == 1)
  {
    goto LABEL_77;
  }

  v21 = 0;
  if (v19)
  {
    while (1)
    {
      OUTLINED_FUNCTION_5_8();
      if (!v23 & v22)
      {
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_0_16();
      if (!v23)
      {
        goto LABEL_77;
      }

      v21 = v25 - v24;
      if (__OFSUB__(v25, v24))
      {
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_10_7();
      if (v23)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_68:
  v26 = 0;
LABEL_78:
  v37 = v26;
LABEL_79:

  if (v37)
  {
    goto LABEL_80;
  }

  v38 = OUTLINED_FUNCTION_20_2();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_20_2();
  retstr->value.id.name._countAndFlagsBits = v8;
  retstr->value.id.name._object = v7;
  retstr->value.id.version = v21;
  retstr->value.inputType.encoding._countAndFlagsBits = v38;
  retstr->value.inputType.encoding._object = v40;
  retstr->value.outputType.encoding._countAndFlagsBits = v41;
  retstr->value.outputType.encoding._object = v42;
}

uint64_t TransformationPlugin.supportedTransformations()()
{
  return MEMORY[0x1E69E7CC0];
}

{
  return MEMORY[0x1E69E7CC0];
}

uint64_t TransformationIdentifier.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriUtilities::TransformationIdentifier __swiftcall TransformationIdentifier.init(name:version:)(Swift::String name, Swift::Int version)
{
  *v2 = name;
  v2[1]._countAndFlagsBits = version;
  result.name = name;
  result.version = version;
  return result;
}

BOOL static TransformationIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t TransformationIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t TransformationIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransformationIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TransformationIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}