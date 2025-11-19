id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x223DDF550]();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t lazy protocol witness table accessor for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource()
{
  result = lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource;
  if (!lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource)
  {
    type metadata accessor for UsoEntitySpan.SpanSource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource);
  }

  return result;
}

uint64_t UsoEntity_common_MediaItem.identifiers(forNamespace:appBundleId:)(int a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v43 = a1;
  v44 = type metadata accessor for UsoIdentifier();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v44, v6);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - v10;
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v42 = *(result + 16);
  if (v42)
  {
    v13 = 0;
    v40 = v4 + 16;
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v14 = MEMORY[0x277D84F90];
    v35 = a3;
    v41 = result;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v16 = *(v4 + 72);
      (*(v4 + 16))(v11, result + v15 + v16 * v13, v44);
      v17 = UsoIdentifier.namespace.getter();
      v19 = v18;
      v20 = AudioUsoIntent.UsoNamespace.rawValue.getter(v43);
      if (!v19)
      {

        v22 = 0;
        goto LABEL_15;
      }

      if (v17 == v20 && v19 == v21)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = 0;
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v24 = UsoIdentifier.value.getter();
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      v22 = v27 != 0;
LABEL_15:
      if (a3)
      {
        if (v22)
        {
          if (UsoIdentifier.appBundleId.getter() == v36 && v28 == a3)
          {

LABEL_23:
            v30 = *v38;
            (*v38)(v39, v11, v44);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v45 = v14;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
              v14 = v45;
            }

            v33 = *(v14 + 16);
            v32 = *(v14 + 24);
            if (v33 >= v32 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
              v14 = v45;
            }

            *(v14 + 16) = v33 + 1;
            v30((v14 + v15 + v33 * v16), v39, v44);
            a3 = v35;
            goto LABEL_4;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v22)
      {
        goto LABEL_23;
      }

      (*v37)(v11, v44);
LABEL_4:
      ++v13;
      result = v41;
      if (v42 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_29:

  return v14;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasNonEmptyName()()
{
  v0 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromArtist()()
{
  v1 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57, v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v59 = &v50 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v58 = &v50 - v21;
  v22 = type metadata accessor for UsoIdentifier();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v0;
  v28 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v29 = v28;
  v61 = *(v28 + 16);
  if (v61)
  {
    v51 = v6;
    v52 = v16;
    v53 = v2;
    v54 = v10;
    v55 = v1;
    v30 = 0;
    v31 = v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v60 = 0x80000002234D9D80;
    v32 = (v23 + 8);
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        return v28;
      }

      (*(v23 + 16))(v27, v31 + *(v23 + 72) * v30, v22);
      v33 = UsoIdentifier.namespace.getter();
      if (!v34)
      {
        break;
      }

      if (v33 == 0xD000000000000015 && v34 == v60)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.value.getter() == 0x697472416D6F7266 && v36 == 0xEA00000000007473)
      {

        (*v32)(v27, v22);
LABEL_19:

        if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
        {
          v39 = v58;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

          v41 = v54;
          v40 = v55;
          v42 = v53;
        }

        else
        {
          v42 = v53;
          v39 = v58;
          v40 = v55;
          (*(v53 + 56))(v58, 1, 1, v55);
          v41 = v54;
        }

        v43 = v59;
        (*(v42 + 104))(v59, *MEMORY[0x277D5EDC0], v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = *(v57 + 48);
        outlined init with copy of MediaUserStateCenter?(v39, v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v43, v41 + v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v45 = *(v42 + 48);
        if (v45(v41, 1, v40) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v45(v41 + v44, 1, v40) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v38 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v46 = v52;
        outlined init with copy of MediaUserStateCenter?(v41, v52, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v45(v41 + v44, 1, v40) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v42 + 8))(v46, v40);
LABEL_27:
          outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_16;
        }

        v47 = v51;
        (*(v42 + 32))(v51, v41 + v44, v40);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = *(v42 + 8);
        v48(v47, v40);
        outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v48(v46, v40);
        outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        goto LABEL_17;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v28) = (*v32)(v27, v22);
      if (v37)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v61 == ++v30)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v28) = (*v32)(v27, v22);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v38 = 0;
LABEL_17:
  LOBYTE(v28) = v38 & 1;
  return v28;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromSong()()
{
  v1 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57, v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v59 = &v50 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v58 = &v50 - v21;
  v22 = type metadata accessor for UsoIdentifier();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v0;
  v28 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v29 = v28;
  v61 = *(v28 + 16);
  if (v61)
  {
    v51 = v6;
    v52 = v16;
    v53 = v2;
    v54 = v10;
    v55 = v1;
    v30 = 0;
    v31 = v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v60 = 0x80000002234D9D80;
    v32 = (v23 + 8);
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        return v28;
      }

      (*(v23 + 16))(v27, v31 + *(v23 + 72) * v30, v22);
      v33 = UsoIdentifier.namespace.getter();
      if (!v34)
      {
        break;
      }

      if (v33 == 0xD000000000000015 && v34 == v60)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.value.getter() == 0x676E6F536D6F7266 && v36 == 0xE800000000000000)
      {

        (*v32)(v27, v22);
LABEL_19:

        if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
        {
          v39 = v58;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

          v41 = v54;
          v40 = v55;
          v42 = v53;
        }

        else
        {
          v42 = v53;
          v39 = v58;
          v40 = v55;
          (*(v53 + 56))(v58, 1, 1, v55);
          v41 = v54;
        }

        v43 = v59;
        (*(v42 + 104))(v59, *MEMORY[0x277D5ED90], v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = *(v57 + 48);
        outlined init with copy of MediaUserStateCenter?(v39, v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v43, v41 + v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v45 = *(v42 + 48);
        if (v45(v41, 1, v40) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v45(v41 + v44, 1, v40) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v38 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v46 = v52;
        outlined init with copy of MediaUserStateCenter?(v41, v52, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v45(v41 + v44, 1, v40) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v42 + 8))(v46, v40);
LABEL_27:
          outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_16;
        }

        v47 = v51;
        (*(v42 + 32))(v51, v41 + v44, v40);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = *(v42 + 8);
        v48(v47, v40);
        outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v48(v46, v40);
        outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        goto LABEL_17;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v28) = (*v32)(v27, v22);
      if (v37)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v61 == ++v30)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v28) = (*v32)(v27, v22);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v38 = 0;
LABEL_17:
  LOBYTE(v28) = v38 & 1;
  return v28;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromAlbum()()
{
  v1 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57, v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v59 = &v50 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v58 = &v50 - v21;
  v22 = type metadata accessor for UsoIdentifier();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v0;
  v28 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v29 = v28;
  v61 = *(v28 + 16);
  if (v61)
  {
    v51 = v6;
    v52 = v16;
    v53 = v2;
    v54 = v10;
    v55 = v1;
    v30 = 0;
    v31 = v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v60 = 0x80000002234D9D80;
    v32 = (v23 + 8);
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        return v28;
      }

      (*(v23 + 16))(v27, v31 + *(v23 + 72) * v30, v22);
      v33 = UsoIdentifier.namespace.getter();
      if (!v34)
      {
        break;
      }

      if (v33 == 0xD000000000000015 && v34 == v60)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.value.getter() == 0x75626C416D6F7266 && v36 == 0xE90000000000006DLL)
      {

        (*v32)(v27, v22);
LABEL_19:

        if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
        {
          v39 = v58;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

          v41 = v54;
          v40 = v55;
          v42 = v53;
        }

        else
        {
          v42 = v53;
          v39 = v58;
          v40 = v55;
          (*(v53 + 56))(v58, 1, 1, v55);
          v41 = v54;
        }

        v43 = v59;
        (*(v42 + 104))(v59, *MEMORY[0x277D5ED98], v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = *(v57 + 48);
        outlined init with copy of MediaUserStateCenter?(v39, v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v43, v41 + v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v45 = *(v42 + 48);
        if (v45(v41, 1, v40) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v45(v41 + v44, 1, v40) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v38 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v46 = v52;
        outlined init with copy of MediaUserStateCenter?(v41, v52, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v45(v41 + v44, 1, v40) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v42 + 8))(v46, v40);
LABEL_27:
          outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_16;
        }

        v47 = v51;
        (*(v42 + 32))(v51, v41 + v44, v40);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = *(v42 + 8);
        v48(v47, v40);
        outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v48(v46, v40);
        outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        goto LABEL_17;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v28) = (*v32)(v27, v22);
      if (v37)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v61 == ++v30)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v28) = (*v32)(v27, v22);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v38 = 0;
LABEL_17:
  LOBYTE(v28) = v38 & 1;
  return v28;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isRecommended()()
{
  v0 = type metadata accessor for UsoEntity_common_SortDirection.DefinedValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 8);
  MEMORY[0x28223BE20](v0, v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSg_AFtMR);
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49, v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v52 = &v36 - v20;
  if (!dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter())
  {
    return 0;
  }

  v21 = dispatch thunk of UsoEntity_common_SearchQualifier.sortDirections.getter();

  if (!v21)
  {
    return 0;
  }

  v22 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
    goto LABEL_27;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
    while (1)
    {
      v40 = v14;
      v14 = 0;
      v48 = v21 & 0xC000000000000001;
      v24 = (v1 + 56);
      v46 = *MEMORY[0x277D5EE78];
      v44 = (v1 + 48);
      v45 = (v1 + 104);
      v37 = (v1 + 32);
      v39 = (v1 + 8);
      v1 = &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR;
      v47 = v21;
      v41 = v23;
      v42 = v22;
      v50 = v18;
      v43 = v24;
      while (v48)
      {
        MEMORY[0x223DDFF80](v14, v21);
        v27 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_22:
          __break(1u);
          return 0;
        }

LABEL_12:
        v51 = v27;
        dispatch thunk of CodeGenListEntry.entry.getter();
        if (v53)
        {
          dispatch thunk of UsoEntity_common_SortDirection.definedValue.getter();
        }

        else
        {
          (*v24)(v52, 1, 1, v0);
        }

        (*v45)(v18, v46, v0);
        (*v24)(v18, 0, 1, v0);
        v28 = *(v49 + 48);
        outlined init with copy of MediaUserStateCenter?(v52, v8, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v18, &v8[v28], &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        v29 = *v44;
        if ((*v44)(v8, 1, v0) == 1)
        {

          outlined destroy of MediaUserStateCenter?(v18, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v52, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
          v25 = v29(&v8[v28], 1, v0);
          v21 = v47;
          v24 = v43;
          if (v25 == 1)
          {
            outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
LABEL_25:
            v34 = 1;
            goto LABEL_29;
          }

          goto LABEL_7;
        }

        v30 = v40;
        outlined init with copy of MediaUserStateCenter?(v8, v40, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        if (v29(&v8[v28], 1, v0) == 1)
        {

          outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v52, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
          (*v39)(v30, v0);
          v21 = v47;
          v24 = v43;
LABEL_7:
          outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSg_AFtMR);
          goto LABEL_8;
        }

        v31 = v38;
        (*v37)(v38, &v8[v28], v0);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_SortDirection.DefinedValues and conformance UsoEntity_common_SortDirection.DefinedValues, MEMORY[0x277D5EEB8]);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();

        v33 = *v39;
        (*v39)(v31, v0);
        outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v52, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        v33(v30, v0);
        outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        v21 = v47;
        v24 = v43;
        if (v32)
        {
          goto LABEL_25;
        }

LABEL_8:
        ++v14;
        v22 = v42;
        v18 = v50;
        if (v51 == v41)
        {
          goto LABEL_28;
        }
      }

      if (v14 < *(v22 + 16))
      {
        break;
      }

      __break(1u);
LABEL_27:
      v23 = __CocoaSet.count.getter();
      if (!v23)
      {
        goto LABEL_28;
      }
    }

    v26 = *(v21 + 8 * v14 + 32);

    v27 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

LABEL_28:
  v34 = 0;
LABEL_29:

  return v34;
}

uint64_t UsoEntity_common_MediaItem.isAffinity()(unsigned int *a1)
{
  v2 = type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v31 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v31 - v23;
  if (dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter())
  {
    dispatch thunk of UsoEntity_common_SearchQualifier.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v24, 1, 1, v2);
  }

  (*(v3 + 104))(v21, *a1, v2);
  (*(v3 + 56))(v21, 0, 1, v2);
  v25 = *(v7 + 48);
  outlined init with copy of MediaUserStateCenter?(v24, v11, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v21, &v11[v25], &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v26 = *(v3 + 48);
  if (v26(v11, 1, v2) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v11, v17, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    if (v26(&v11[v25], 1, v2) != 1)
    {
      v28 = v32;
      (*(v3 + 32))(v32, &v11[v25], v2);
      lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_SearchQualifier.DefinedValues and conformance UsoEntity_common_SearchQualifier.DefinedValues, MEMORY[0x277D5F058]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v3 + 8);
      v29(v28, v2);
      outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v24, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      v29(v17, v2);
      outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      return v27 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v24, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    (*(v3 + 8))(v17, v2);
    goto LABEL_9;
  }

  outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v24, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  if (v26(&v11[v25], 1, v2) != 1)
  {
LABEL_9:
    outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
    v27 = 0;
    return v27 & 1;
  }

  outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v27 = 1;
  return v27 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isMoreOf()()
{
  v0 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v29 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v29 - v21;
  if (dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter())
  {
    dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();
  }

  else
  {
    (*(v1 + 56))(v22, 1, 1, v0);
  }

  (*(v1 + 104))(v19, *MEMORY[0x277D5EA40], v0);
  (*(v1 + 56))(v19, 0, 1, v0);
  v23 = *(v5 + 48);
  outlined init with copy of MediaUserStateCenter?(v22, v9, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v19, &v9[v23], &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v24 = *(v1 + 48);
  if (v24(v9, 1, v0) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v9, v15, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    if (v24(&v9[v23], 1, v0) != 1)
    {
      v26 = v30;
      (*(v1 + 32))(v30, &v9[v23], v0);
      lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, MEMORY[0x277D5EA60]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v1 + 8);
      v27(v26, v0);
      outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      v27(v15, v0);
      outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      return v25 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    (*(v1 + 8))(v15, v0);
    goto LABEL_9;
  }

  outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  if (v24(&v9[v23], 1, v0) != 1)
  {
LABEL_9:
    outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
    v25 = 0;
    return v25 & 1;
  }

  outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v25 = 1;
  return v25 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isDifferentThan()()
{
  v0 = type metadata accessor for UsoEntity_common_Similarity.DefinedValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSg_AFtMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v30 - v21;
  if (dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter() && (v23 = dispatch thunk of UsoEntity_common_SearchQualifier.similarity.getter(), , v23))
  {
    dispatch thunk of UsoEntity_common_Similarity.definedValue.getter();
  }

  else
  {
    (*(v1 + 56))(v22, 1, 1, v0);
  }

  (*(v1 + 104))(v19, *MEMORY[0x277D5EA80], v0);
  (*(v1 + 56))(v19, 0, 1, v0);
  v24 = *(v5 + 48);
  outlined init with copy of MediaUserStateCenter?(v22, v9, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v19, &v9[v24], &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  v25 = *(v1 + 48);
  if (v25(v9, 1, v0) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v9, v15, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
    if (v25(&v9[v24], 1, v0) != 1)
    {
      v27 = v31;
      (*(v1 + 32))(v31, &v9[v24], v0);
      lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Similarity.DefinedValues and conformance UsoEntity_common_Similarity.DefinedValues, MEMORY[0x277D5EA88]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v1 + 8);
      v28(v27, v0);
      outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
      v28(v15, v0);
      outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
      return v26 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
    (*(v1 + 8))(v15, v0);
    goto LABEL_10;
  }

  outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  if (v25(&v9[v24], 1, v0) != 1)
  {
LABEL_10:
    outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSg_AFtMR);
    v26 = 0;
    return v26 & 1;
  }

  outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_SimilarityC13DefinedValuesOSgMR);
  v26 = 1;
  return v26 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isResolvedReference()()
{
  v1 = type metadata accessor for UsoIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v30 - v8;
  v10 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v11 = v10;
  if (*(v10 + 16))
  {
    v12 = *(v10 + 16);
    v30[1] = v0;
    v13 = 0;
    v34 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v32 = 0x80000002234DCD00;
    v33 = 0x80000002234D9E10;
    v14 = (v2 + 8);
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      (*(v2 + 16))(v9, v34 + *(v2 + 72) * v13, v1);
      v15 = UsoIdentifier.namespace.getter();
      if (!v16)
      {
        break;
      }

      if (v15 == 0xD000000000000019 && v16 == v33)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.appBundleId.getter() == 0xD00000000000001CLL && v32 == v18)
      {

        (*v14)(v9, v1);
LABEL_18:

        LODWORD(v33) = 1;
        goto LABEL_19;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v10) = (*v14)(v9, v1);
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_4:
      if (v12 == ++v13)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v10) = (*v14)(v9, v1);
    goto LABEL_4;
  }

LABEL_15:

  LODWORD(v33) = 0;
LABEL_19:
  v10 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v20 = v10;
  v21 = *(v10 + 16);
  v22 = v31;
  if (v21)
  {
    v23 = 0;
    v24 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v34 = 0x80000002234D9DA0;
    v25 = (v2 + 8);
    while (v23 < *(v20 + 16))
    {
      (*(v2 + 16))(v22, v24 + *(v2 + 72) * v23, v1);
      v26 = UsoIdentifier.namespace.getter();
      if (v27)
      {
        if (v26 == 0xD000000000000014 && v27 == v34)
        {

          (*v25)(v31, v1);
LABEL_31:

          if ((v33 & 1) == 0)
          {
            goto LABEL_33;
          }

          LOBYTE(v10) = 1;
          return v10;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = v31;
        LOBYTE(v10) = (*v25)(v31, v1);
        if (v28)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v10) = (*v25)(v22, v1);
      }

      if (v21 == ++v23)
      {
        goto LABEL_29;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_29:

LABEL_33:
    LOBYTE(v10) = 0;
  }

  return v10;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isAddToUnspecifiedPlaylist()()
{
  v1 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v7 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56, v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v58 = &v50 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v57 = &v50 - v21;
  v22 = type metadata accessor for UsoIdentifier();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v0;
  v28 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v29 = v28;
  v61 = *(v28 + 16);
  if (v61)
  {
    v50 = v6;
    v51 = v16;
    v52 = v2;
    v53 = v10;
    v54 = v1;
    v30 = 0;
    v31 = v28 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v59 = 0x80000002234D9AC0;
    v60 = 0x80000002234D9D80;
    v32 = (v23 + 8);
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        return v28;
      }

      (*(v23 + 16))(v27, v31 + *(v23 + 72) * v30, v22);
      v33 = UsoIdentifier.namespace.getter();
      if (!v34)
      {
        break;
      }

      if (v33 == 0xD000000000000015 && v34 == v60)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          break;
        }
      }

      if (UsoIdentifier.value.getter() == 0xD000000000000018 && v59 == v36)
      {

        (*v32)(v27, v22);
LABEL_19:

        if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
        {
          v39 = v57;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

          v41 = v53;
          v40 = v54;
          v42 = v52;
        }

        else
        {
          v42 = v52;
          v39 = v57;
          v40 = v54;
          (*(v52 + 56))(v57, 1, 1, v54);
          v41 = v53;
        }

        v43 = v58;
        (*(v42 + 104))(v58, *MEMORY[0x277D5EE18], v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = *(v56 + 48);
        outlined init with copy of MediaUserStateCenter?(v39, v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v43, v41 + v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v45 = *(v42 + 48);
        if (v45(v41, 1, v40) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v45(v41 + v44, 1, v40) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v38 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v46 = v51;
        outlined init with copy of MediaUserStateCenter?(v41, v51, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v45(v41 + v44, 1, v40) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v42 + 8))(v46, v40);
LABEL_27:
          outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_16;
        }

        v47 = v50;
        (*(v42 + 32))(v50, v41 + v44, v40);
        lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = *(v42 + 8);
        v48(v47, v40);
        outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v48(v46, v40);
        outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        goto LABEL_17;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v28) = (*v32)(v27, v22);
      if (v37)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v61 == ++v30)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v28) = (*v32)(v27, v22);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v38 = 0;
LABEL_17:
  LOBYTE(v28) = v38 & 1;
  return v28;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasListPosition()()
{
  v0 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();
  if (v0)
  {
  }

  return v0 != 0;
}

SiriInformationSearch::CommonAudio::Attribute_optional __swiftcall UsoEntity_common_MediaItem.getListPosition()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v14 - v7;
  if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
  {
    dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

    v9 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      outlined init with copy of MediaUserStateCenter?(v8, v5, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
      v12 = (*(v10 + 88))(v5, v9);
      if (v12 == *MEMORY[0x277D5EC68])
      {
        v11.value = SiriInformationSearch_CommonAudio_Attribute_previous;
        goto LABEL_9;
      }

      if (v12 == *MEMORY[0x277D5EBF0])
      {
        v11.value = SiriInformationSearch_CommonAudio_Attribute_next;
        goto LABEL_9;
      }

      (*(v10 + 8))(v5, v9);
    }

    v11.value = SiriInformationSearch_CommonAudio_Attribute_unknownDefault;
LABEL_9:
    outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
    return v11;
  }

  return 15;
}

unint64_t UsoEntity_common_MediaItem.findAll(options:with:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  if (a2(v3))
  {

    MEMORY[0x223DDF820](v7);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v41;
  }

  if (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16))
  {
    v8 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
    if (v8)
    {
      v9 = v8;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v8 >> 62)
      {
        goto LABEL_61;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v12 = 0;
        v36 = v9;
        v37 = v9 & 0xC000000000000001;
        v31 = v9 + 32;
        v32 = v10;
        v35 = i;
        v29 = v5;
        v30 = a3;
        while (v37)
        {
          MEMORY[0x223DDFF80](v12, v9);
          v13 = __OFADD__(v12++, 1);
          if (v13)
          {
            goto LABEL_54;
          }

LABEL_19:
          dispatch thunk of CodeGenListEntry.entry.getter();
          if (!v40[0])
          {

            goto LABEL_12;
          }

          dispatch thunk of CodeGenListEntry.entry.getter();
          if (v40[0])
          {
            v15 = UsoEntity_common_MediaItem.findAll(options:with:)(a1, v5, a3);
          }

          else
          {
            v15 = MEMORY[0x277D84F90];
          }

          v16 = v15 >> 62;
          if (v15 >> 62)
          {
            v17 = __CocoaSet.count.getter();
          }

          else
          {
            v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v10 = v6 >> 62;
          if (v6 >> 62)
          {
            v18 = __CocoaSet.count.getter();
          }

          else
          {
            v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v39 = v17;
          v13 = __OFADD__(v18, v17);
          v9 = v18 + v17;
          if (v13)
          {
            goto LABEL_55;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v10)
            {
              goto LABEL_35;
            }

            v10 = v6 & 0xFFFFFFFFFFFFFF8;
            if (v9 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v38 = v6;
              goto LABEL_37;
            }
          }

          else
          {
            if (v10)
            {
LABEL_35:
              __CocoaSet.count.getter();
              goto LABEL_36;
            }

            v10 = v6 & 0xFFFFFFFFFFFFFF8;
          }

          v19 = *(v10 + 16);
LABEL_36:
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v38 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
          v6 = *(v10 + 16);
          v20 = *(v10 + 24);
          if (v16)
          {
            v9 = __CocoaSet.count.getter();
            if (v9)
            {
LABEL_39:
              if (((v20 >> 1) - v6) < v39)
              {
                goto LABEL_57;
              }

              v6 = v10 + 8 * v6 + 32;
              v34 = v10;
              if (v16)
              {
                if (v9 < 1)
                {
                  goto LABEL_60;
                }

                lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_MediaItem] and conformance [A], &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
                for (j = 0; j != v9; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
                  v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v40, j, v15);
                  v24 = *v23;

                  (v22)(v40, 0);
                  *(v6 + 8 * j) = v24;
                }

                v5 = v29;
                a3 = v30;
                v10 = v39;
              }

              else
              {
                type metadata accessor for UsoEntity_common_MediaItem();
                v10 = v39;
                swift_arrayInitWithCopy();
              }

              v6 = v38;
              i = v35;
              v9 = v36;
              if (v10 > 0)
              {
                v25 = *(v34 + 16);
                v13 = __OFADD__(v25, v10);
                v26 = v25 + v10;
                if (v13)
                {
                  goto LABEL_59;
                }

                *(v34 + 16) = v26;
              }

              goto LABEL_12;
            }
          }

          else
          {
            v9 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v9)
            {
              goto LABEL_39;
            }
          }

          v6 = v38;
          i = v35;
          v9 = v36;
          if (v39 > 0)
          {
            goto LABEL_56;
          }

LABEL_12:
          if (v12 == i)
          {
            goto LABEL_62;
          }
        }

        if (v12 >= *(v32 + 16))
        {
          goto LABEL_58;
        }

        v14 = *(v31 + 8 * v12);

        v13 = __OFADD__(v12++, 1);
        if (!v13)
        {
          goto LABEL_19;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        ;
      }

LABEL_62:
    }
  }

  return v6;
}

uint64_t specialized UsoEntity_common_MediaItem.findFirst(options:with:)(uint64_t a1, uint64_t a2)
{
  if (!UsoEntity_common_MediaItem.isResolvedReference()())
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v4 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v8 = 0;
          while ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v8, v5);
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v12)
            {
              a2 = (specialized UsoEntity_common_MediaItem.findFirst(options:with:))(a1);

              if (a2)
              {

                return a2;
              }
            }

            else
            {
            }

            ++v8;
            if (v9 == i)
            {
              goto LABEL_25;
            }
          }

          if (v8 >= *(v6 + 16))
          {
            goto LABEL_23;
          }

          v10 = *(v5 + 8 * v8 + 32);

          v9 = v8 + 1;
          if (!__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return a2;
}

{
  return specialized UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, closure #1 in closure #1 in AudioUsoIntent.noun.getter, specialized UsoEntity_common_MediaItem.findFirst(options:with:));
}

{
  if (dispatch thunk of UsoEntity_common_MediaItem.dateTime.getter())
  {
  }

  else
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v4 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_25;
        }

        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
LABEL_26:

          return 0;
        }

LABEL_10:
        v8 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v8, v5);
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v8 >= *(v6 + 16))
            {
              goto LABEL_24;
            }

            v10 = *(v5 + 8 * v8 + 32);

            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v7 = __CocoaSet.count.getter();
              if (!v7)
              {
                goto LABEL_26;
              }

              goto LABEL_10;
            }
          }

          dispatch thunk of CodeGenListEntry.entry.getter();
          if (v12)
          {
            a2 = (specialized UsoEntity_common_MediaItem.findFirst(options:with:))(a1);

            if (a2)
            {

              return a2;
            }
          }

          else
          {
          }

          ++v8;
          if (v9 == v7)
          {
            goto LABEL_26;
          }
        }
      }
    }

    return 0;
  }

  return a2;
}

{
  return specialized UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, closure #1 in closure #1 in AudioUsoIntent.sort.getter, specialized UsoEntity_common_MediaItem.findFirst(options:with:));
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v19 - v7;
  if (!dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter())
  {
    v10 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_5:
    outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v11 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v11)
      {
        v12 = v11;
        v13 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v11 >> 62)
        {
          goto LABEL_26;
        }

        for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v15 = 0;
          while ((v12 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v15, v12);
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_24;
            }

LABEL_21:
            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v20)
            {
              a2 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(a1, v20);

              if (a2)
              {

                return a2;
              }
            }

            else
            {
            }

            ++v15;
            if (v16 == i)
            {
              goto LABEL_27;
            }
          }

          if (v15 >= *(v13 + 16))
          {
            goto LABEL_25;
          }

          v17 = *(v12 + 8 * v15 + 32);

          v16 = v15 + 1;
          if (!__OFADD__(v15, 1))
          {
            goto LABEL_21;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          ;
        }

LABEL_27:
      }
    }

    return 0;
  }

  dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

  v9 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_5;
  }

  outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);

  return a2;
}

uint64_t specialized UsoEntity_common_MediaItem.findFirst(options:with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v5 = a2;
  if ((a3(a2) & 1) == 0)
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v7 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v7)
      {
        v8 = v7;
        v5 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v14 = v5;
          v10 = 0;
          while ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x223DDFF80](v10, v8);
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            v5 = v11;
            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v15)
            {
              v5 = a4(a1);

              if (v5)
              {

                return v5;
              }
            }

            else
            {
            }

            ++v10;
            if (v12 == i)
            {
              goto LABEL_25;
            }
          }

          if (v10 >= *(v14 + 16))
          {
            goto LABEL_23;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return v5;
}

uint64_t UsoEntity_common_MediaItem.findFirst(options:with:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  if ((a2(v3) & 1) == 0)
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v7 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
      if (v7)
      {
        v8 = v7;
        v9 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          v15 = v9;
          v11 = 0;
          while ((v8 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v11, v8);
            v12 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            dispatch thunk of CodeGenListEntry.entry.getter();
            v9 = v17;
            if (v17)
            {
              v4 = UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, a3);

              if (v4)
              {

                return v4;
              }
            }

            else
            {
            }

            ++v11;
            if (v12 == i)
            {
              goto LABEL_25;
            }
          }

          if (v11 >= *(v15 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v8 + 8 * v11 + 32);

          v12 = v11 + 1;
          if (!__OFADD__(v11, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return v4;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasMediaTypeOnly()()
{
  v0 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  if (v0)
  {

    if (dispatch thunk of UsoEntity_common_MediaItem.associatedPerson.getter() || dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter() || dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter())
    {
      goto LABEL_5;
    }

    if (dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter())
    {

      goto LABEL_6;
    }

    if (dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter() || dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
    {
LABEL_5:

LABEL_6:
      LOBYTE(v0) = 0;
      return v0;
    }

    LOBYTE(v0) = 1;
  }

  return v0;
}

uint64_t Array<A>.identifiers(forNamespace:)(unint64_t a1, unint64_t a2)
{
  v59 = type metadata accessor for UsoIdentifier();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v59, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v57 = a1;
  if (v10)
  {
    do
    {
      v11 = 0;
      a1 = a2 & 0xC000000000000001;
      v56 = MEMORY[0x277D84F90];
      while (a1)
      {
        MEMORY[0x223DDFF80](v11, a2);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_15;
        }

LABEL_7:
        v14 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
          v56 = result;
        }

        v16 = v56[2];
        v15 = v56[3];
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v53 = v16 + 1;
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v56);
          v17 = v53;
          v56 = result;
        }

        v18 = v56;
        v56[2] = v17;
        v18[v16 + 4] = v14;
        ++v11;
        if (v13 == v10)
        {
          goto LABEL_19;
        }
      }

      if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v12 = *(a2 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_7;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = __CocoaSet.count.getter();
      v10 = result;
      v57 = a1;
    }

    while (result);
  }

  v56 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
LABEL_19:
  if (v17)
  {
    v19 = 0;
    v54 = v56 + 4;
    v58 = v4 + 16;
    v51 = 0x80000002234D9670;
    v52 = 0x80000002234D9EA0;
    v49 = 0x80000002234D9630;
    v50 = 0x80000002234D9E80;
    v47 = 0x80000002234D9650;
    v48 = 0x80000002234D9E60;
    v45 = 0x80000002234D9610;
    v46 = 0x80000002234D9E30;
    v43 = 0x80000002234D9DC0;
    v44 = 0x80000002234D9E10;
    v41 = 0x80000002234D9D80;
    v42 = 0x80000002234D9DA0;
    v40 = 0x80000002234D9D60;
    v39 = 0x80000002234D9D40;
    v38 = 0x80000002234D9D10;
    v20 = (v4 + 8);
    v21 = MEMORY[0x277D84F90];
    v53 = v17;
    while (1)
    {
      v37 = v21;
      v22 = v57;
      while (1)
      {
        if (v19 >= v56[2])
        {
          goto LABEL_100;
        }

        v23 = v54[v19++];
        v24 = *(v23 + 16);
        if (v24)
        {
          break;
        }

LABEL_23:
        if (v19 == v17)
        {
          v21 = v37;
          goto LABEL_98;
        }
      }

      v55 = v19;
      v25 = v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

      v26 = 0;
LABEL_29:
      if (v26 >= *(v23 + 16))
      {
        break;
      }

      (*(v4 + 16))(v9, v25 + *(v4 + 72) * v26++, v59);
      v28 = UsoIdentifier.namespace.getter();
      v30 = 0xEF6E756F4E726579;
      v31 = 0x616C50616964656DLL;
      switch(v22)
      {
        case 1:
          v31 = 0xD000000000000012;
          v30 = v38;
          if (v29)
          {
            goto LABEL_79;
          }

          goto LABEL_85;
        case 2:
          v31 = 0x6E6547636973756DLL;
          v30 = 0xEA00000000006572;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 3:
          v30 = 0xEF646F6F4D726579;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 4:
          v31 = 0xD000000000000013;
          v30 = v39;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 5:
          v31 = 0xD000000000000014;
          v30 = v40;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 6:
          v31 = 0xD000000000000015;
          v30 = v41;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 7:
          v31 = 0xD000000000000014;
          v30 = v42;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 8:
          v31 = 0xD000000000000015;
          v30 = v43;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 9:
          v30 = 0xED0000656C746954;
          v31 = 0x7473696C79616C70;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 10:
          v31 = 0x5474736163646F70;
          goto LABEL_71;
        case 11:
          v30 = 0xEA00000000007265;
          v31 = 0x696669746E656469;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 12:
          v30 = 0xE400000000000000;
          v31 = 1701605234;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 13:
          v30 = 0xEB00000000644965;
          v31 = 0x6C646E7542707061;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 14:
          v31 = 0xD000000000000019;
          v30 = v44;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 15:
          v31 = 0xD000000000000010;
          v30 = v45;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 16:
          v31 = 0xD000000000000012;
          v30 = v46;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 17:
          v31 = 0x54776F6853707061;
LABEL_71:
          v30 = 0xEC000000656C7469;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 18:
          v30 = 0xEE006449656C7469;
          v31 = 0x54776F6853707061;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 19:
          v31 = 0xD000000000000011;
          v30 = v47;
          goto LABEL_78;
        case 20:
          v31 = 0xD000000000000013;
          v30 = v48;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 21:
          v31 = 0xD000000000000012;
          v30 = v49;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 22:
          v31 = 0xD000000000000014;
          v30 = v50;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 23:
          v31 = 0xD000000000000012;
          v30 = v51;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 24:
          v31 = 0xD000000000000014;
          v30 = v52;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        case 25:
          v30 = 0xE700000000000000;
          v31 = 0x64695F6D657469;
          if (!v29)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        default:
LABEL_78:
          if (!v29)
          {
            goto LABEL_85;
          }

LABEL_79:
          if (v28 == v31 && v29 == v30)
          {
          }

          else
          {
            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v22 = v57;

            if ((v32 & 1) == 0)
            {
              goto LABEL_86;
            }
          }

          if (!UsoIdentifier.value.getter() && v33 == 0xE000000000000000)
          {
LABEL_85:

LABEL_86:
            result = (*v20)(v9, v59);
            if (v24 == v26)
            {
LABEL_22:

              v17 = v53;
              v19 = v55;
              goto LABEL_23;
            }

            goto LABEL_29;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          result = (*v20)(v9, v59);
          if (v27)
          {
            if (v24 == v26)
            {
              goto LABEL_22;
            }

            goto LABEL_29;
          }

          v21 = v37;
          result = swift_isUniquelyReferenced_nonNull_native();
          v60 = v21;
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1);
            v21 = v60;
          }

          v17 = v53;
          v19 = v55;
          v35 = *(v21 + 16);
          v34 = *(v21 + 24);
          if (v35 >= v34 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
            v17 = v53;
            v21 = v60;
          }

          *(v21 + 16) = v35 + 1;
          *(v21 + 8 * v35 + 32) = v23;
          if (v19 == v17)
          {
            goto LABEL_98;
          }

          break;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
LABEL_98:

    return v21;
  }

  return result;
}

unint64_t Array<A>.findAll(options:with:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{

  v8 = specialized Sequence.flatMap<A>(_:)(a4, a1, a2, a3);

  return v8;
}

uint64_t Array<A>.findFirst(options:with:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, unint64_t a4)
{
  v8 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
LABEL_16:
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v9 != i; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DDFF80](i, a4);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 = *(a4 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v12 = UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, a3);

    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_UserEntity] and conformance [A], &_sSay12SiriOntology021UsoEntity_common_UserD0CGMd, &_sSay12SiriOntology021UsoEntity_common_UserD0CGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology021UsoEntity_common_UserD0CGMd, &_sSay12SiriOntology021UsoEntity_common_UserD0CGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity_common_UserEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_uso_NoEntity] and conformance [A], &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMd, &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology016UsoEntity_uso_NoD0CGMd, &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity_uso_NoEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_EventTrigger] and conformance [A], &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMd, &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMd, &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity_common_EventTrigger();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_PhoneCall] and conformance [A], &_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMd, &_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMd, &_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity_common_PhoneCall();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_App] and conformance [A], &_sSay12SiriOntology20UsoEntity_common_AppCGMd, &_sSay12SiriOntology20UsoEntity_common_AppCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology20UsoEntity_common_AppCGMd, &_sSay12SiriOntology20UsoEntity_common_AppCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity_common_App();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_MediaItem] and conformance [A], &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity_common_MediaItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [PommesResult] and conformance [A], &_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PommesResult();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_RadioStation] and conformance [A], &_sSay12SiriOntology29UsoEntity_common_RadioStationCGMd, &_sSay12SiriOntology29UsoEntity_common_RadioStationCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology29UsoEntity_common_RadioStationCGMd, &_sSay12SiriOntology29UsoEntity_common_RadioStationCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity_common_RadioStation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [NSObject & SEMEntityFilter] and conformance [A], &_sSaySo8NSObject_So15SEMEntityFilterpGMd, &_sSaySo8NSObject_So15SEMEntityFilterpGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSObject_So15SEMEntityFilterpGMd, &_sSaySo8NSObject_So15SEMEntityFilterpGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [Experience] and conformance [A], &_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Experience();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [AudioItemCandidate] and conformance [A], &_sSay21SiriInformationSearch18AudioItemCandidateCGMd, &_sSay21SiriInformationSearch18AudioItemCandidateCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch18AudioItemCandidateCGMd, &_sSay21SiriInformationSearch18AudioItemCandidateCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AudioItemCandidate(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [AudioResult] and conformance [A], &_sSay21SiriInformationSearch11AudioResultCGMd, &_sSay21SiriInformationSearch11AudioResultCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch11AudioResultCGMd, &_sSay21SiriInformationSearch11AudioResultCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AudioResult();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = v4;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v5, v28);
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v5 >= *(v31 + 16))
        {
          goto LABEL_43;
        }

        v7 = *(v30 + 8 * v5);

        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_42;
        }
      }

      v9 = UsoEntity_common_MediaItem.findAll(options:with:)(a2, a3, a4);

      v10 = v9 >> 62;
      v11 = v9 >> 62 ? __CocoaSet.count.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v11;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v12)
        {
          goto LABEL_20;
        }

        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v12)
        {
LABEL_20:
          __CocoaSet.count.getter();
          goto LABEL_21;
        }

        v14 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v37)
          {
            goto LABEL_45;
          }

          v19 = v14 + 8 * v16 + 32;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_47;
            }

            lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_MediaItem] and conformance [A], &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology26UsoEntity_common_MediaItemCGMd, &_sSay12SiriOntology26UsoEntity_common_MediaItemCGMR);
              v21 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v9);
              v23 = *v22;

              (v21)(v36, 0);
              *(v19 + 8 * i) = v23;
            }
          }

          else
          {
            type metadata accessor for UsoEntity_common_MediaItem();
            swift_arrayInitWithCopy();
          }

          v4 = v29;
          if (v37 >= 1)
          {
            v24 = *(v14 + 16);
            v8 = __OFADD__(v24, v37);
            v25 = v24 + v37;
            if (v8)
            {
              goto LABEL_46;
            }

            *(v14 + 16) = v25;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v37 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
    v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
    {
      goto LABEL_13;
    }

LABEL_41:
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
    __break(1u);
LABEL_48:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
  }

  return MEMORY[0x277D84F90];
}

uint64_t *static SearchToolEmptyDataProvider.make()()
{
  v1 = *(v0 + 80);
  type metadata accessor for AnyDataProvider();
  v2 = type metadata accessor for SearchToolEmptyDataProvider();
  v6 = swift_allocObject();
  WitnessTable = swift_getWitnessTable();
  v4 = specialized AnyDataProvider.__allocating_init<A>(provider:)(&v6, v2, WitnessTable);

  return v4;
}

uint64_t dispatch thunk of SearchToolEmptyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 120);
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

void *Emittable.eventWrapper(requestId:pommesCandidateId:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277D59F68]) init];
  if (v16)
  {
    v17 = v16;
    Emittable.makeComponentIdAndEmitRequestLink(for:with:)(0x15u, a1, a2, a4, a5, v15);
    v18 = closure #1 in Emittable.eventWrapper(requestId:pommesCandidateId:)(v15, a1, a2, a3);
    [v17 setEventMetadata_];

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "Unable to initialize POMMESSchemaPOMMESClientEvent", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }

    return 0;
  }

  return v17;
}

id Emittable.stream.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() processInfo];
  v5 = NSProcessInfo.isRunningUnitTests.getter();

  if (v5)
  {
    v6 = *(a2 + 16);

    return v6(a1, a2);
  }

  else
  {
    v8 = [objc_opt_self() sharedStream];

    return v8;
  }
}

uint64_t Emittable.makeComponentIdAndEmitRequestLink(for:with:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a1;
  v89 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v81 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v81 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v87 = &v81 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v88 = &v81 - v30;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v40 = *(v16 + 32);
    v41 = v88;
    v85 = v16 + 32;
    v83 = v16;
    v84 = v40;
    v40(v88, v14, v15);
    v42 = (*(a5 + 24))(a4, a5);
    v43 = v87;
    v44 = v86;
    (*(*v42 + 88))(v86, v41);

    if (AFDeviceSupportsSAE())
    {
      v45 = 43;
    }

    else
    {
      v45 = 1;
    }

    v46 = v44;
    v47 = v43;
    v48 = specialized Emittable.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(v46, v43, v45);
    if (v48)
    {
      v49 = v48;
      [(*(a5 + 8))(a4 a5)];
      swift_unknownObjectRelease();
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.pommes);
      v51 = v83;
      (*(v83 + 16))(v25, v47, v15);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v90 = v82;
        *v54 = 136315394;
        v55 = SISchemaComponentName.description.getter();
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v90);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2080;
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v61 = *(v51 + 8);
        v61(v25, v15);
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v90);
        v47 = v87;

        *(v54 + 14) = v62;
        _os_log_impl(&dword_2232BB000, v52, v53, "[SELF Logging] Logged request link event with component:%s, ID: %s", v54, 0x16u);
        v63 = v82;
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v63, -1, -1);
        MEMORY[0x223DE0F80](v54, -1, -1);

        v61(v88, v15);
        return v84(v89, v47, v15);
      }

      v80 = *(v51 + 8);
      v80(v25, v15);
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.pommes);
      v65 = v83;
      (*(v83 + 16))(v21, v47, v15);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = v15;
        v70 = swift_slowAlloc();
        v90 = v70;
        *v68 = 136315394;
        v71 = SISchemaComponentName.description.getter();
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v90);

        *(v68 + 4) = v73;
        *(v68 + 12) = 2080;
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = v75;
        v77 = *(v65 + 8);
        v77(v21, v69);
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v90);

        *(v68 + 14) = v78;
        _os_log_impl(&dword_2232BB000, v66, v67, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v68, 0x16u);
        swift_arrayDestroy();
        v79 = v70;
        v15 = v69;
        MEMORY[0x223DE0F80](v79, -1, -1);
        MEMORY[0x223DE0F80](v68, -1, -1);

        v77(v88, v69);
        v47 = v87;
        return v84(v89, v47, v15);
      }

      v80 = *(v65 + 8);
      v80(v21, v15);
    }

    v80(v88, v15);
    return v84(v89, v47, v15);
  }

  outlined destroy of MediaUserStateCenter?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_4:
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
    v35 = swift_slowAlloc();
    v90 = v35;
    *v34 = 136315138;
    if (a3)
    {
      v36 = a2;
    }

    else
    {
      v36 = 7104878;
    }

    if (a3)
    {
      v37 = a3;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v90);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2232BB000, v32, v33, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x223DE0F80](v35, -1, -1);
    MEMORY[0x223DE0F80](v34, -1, -1);
  }

  return UUID.init()();
}

id closure #1 in Emittable.eventWrapper(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = (&v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v82 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v80 - v21;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v81 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v84 = &v80 - v30;
  v31 = [objc_allocWithZone(MEMORY[0x277D59F70]) init];
  if (v31)
  {
    v32 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v83 = a3;
    v85 = a4;
    v33 = v32;
    v34 = v31;
    v35 = v11;
    v36 = v24;
    v37 = v23;
    v38 = v31;
    v39 = v14;
    v40 = v34;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v42 = [v33 initWithNSUUID_];

    [v40 setPommesId_];
    v14 = v39;
    v31 = v38;
    v23 = v37;
    v24 = v36;
    v11 = v35;

    a4 = v85;
    a3 = v83;
  }

  if (a3)
  {
    UUID.init(uuidString:)();
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v43 = v84;
      (*(v24 + 32))(v84, v22, v23);
      v44 = AFDeviceSupportsSAE();
      if (v31)
      {
        v45 = v44;
        v46 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v85 = a4;
        v47 = v46;
        v48 = v14;
        v49 = v31;
        v50 = UUID._bridgeToObjectiveC()().super.isa;
        v51 = [v47 initWithNSUUID_];

        v52 = &selRef_setSubRequestId_;
        if (!v45)
        {
          v52 = &selRef_setRequestId_;
        }

        [v49 *v52];

        v14 = v48;
        a4 = v85;
      }

      (*(v24 + 8))(v43, v23);
    }
  }

  outlined init with copy of PommesCandidateId?(a4, v14);
  v53 = type metadata accessor for PommesCandidateId();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v14, 1, v53) != 1)
  {
    outlined init with copy of PommesCandidateId?(v14, v11);
    v60 = (*(v54 + 88))(v11, v53);
    if (v60 != *MEMORY[0x277D56618])
    {
      if (v60 == *MEMORY[0x277D56620])
      {
        (*(v54 + 96))(v11, v53);
        v66 = *v11;
        v65 = v11[1];
        v67 = v11[3];

        v68 = v82;
        UUID.init(uuidString:)();
        if ((*(v24 + 48))(v68, 1, v23) == 1)
        {

          outlined destroy of MediaUserStateCenter?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          __swift_project_value_buffer(v69, static Logger.pommes);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v56, v57))
          {
            goto LABEL_17;
          }

          v58 = swift_slowAlloc();
          *v58 = 0;
          v59 = "Unable to create UUID from trpId";
          goto LABEL_16;
        }

        v72 = v81;
        (*(v24 + 32))(v81, v68, v23);
        if (v31)
        {
          v73 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v74 = v31;
          v75 = UUID._bridgeToObjectiveC()().super.isa;
          v76 = [v73 initWithNSUUID_];

          [v74 setTrpId_];
          v77 = v74;
          v78 = MEMORY[0x223DDF550](v66, v65);

          [v77 setResultCandidateId_];

          (*(v24 + 8))(v72, v23);
          goto LABEL_36;
        }

        (*(v24 + 8))(v72, v23);
LABEL_33:

        goto LABEL_36;
      }

      if (v60 != *MEMORY[0x277D56610])
      {
        (*(v54 + 8))(v11, v53);
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        __swift_project_value_buffer(v70, static Logger.pommes);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v56, v57))
        {
          goto LABEL_17;
        }

        v58 = swift_slowAlloc();
        *v58 = 0;
        v59 = "Unknown PommesCandidateId";
        goto LABEL_16;
      }
    }

    (*(v54 + 96))(v11, v53);
    v61 = v11[1];
    if (v31)
    {
      v62 = *v11;
      v63 = v31;
      v64 = MEMORY[0x223DDF550](v62, v61);

      [v63 setResultCandidateId_];

      goto LABEL_36;
    }

    v71 = v11[1];
    goto LABEL_33;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.pommes);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v56, v57))
  {
    goto LABEL_17;
  }

  v58 = swift_slowAlloc();
  *v58 = 0;
  v59 = "PommesCandidateId is nil";
LABEL_16:
  _os_log_impl(&dword_2232BB000, v56, v57, v59, v58, 2u);
  MEMORY[0x223DE0F80](v58, -1, -1);
LABEL_17:

LABEL_36:
  outlined destroy of MediaUserStateCenter?(v14, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  return v31;
}

NSObject *specialized Emittable.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v5)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136315394;
      v21 = SISchemaComponentName.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v44);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = SISchemaComponentName.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_2232BB000, v6, v18, "Failed to create RequestLink event for source component: %s and target component: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v20, -1, -1);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v7)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pommes);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v32 = SISchemaComponentName.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2232BB000, v28, v29, "Failed to create source link event for source component: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DE0F80](v31, -1, -1);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }

LABEL_14:
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v9)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.pommes);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      v41 = SISchemaComponentName.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v44);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2232BB000, v37, v38, "Failed to create target link event for target component: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DE0F80](v40, -1, -1);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  [v8 setComponent_];
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithNSUUID_];

  [v8 setUuid_];
  [v10 setComponent_];
  v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithNSUUID_];

  [v10 setUuid_];
  [v6 setSource:v8];
  [v6 setTarget:v10];

  return v6;
}

void *PommesSearchServiceDelegate.pommesSearchService.getter()
{
  v1 = OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService;
  if (*(v0 + OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService))
  {
    v2 = *(v0 + OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
      v4 = *(v0 + v1);
    }

    v2 = static PommesSearchService.shared;
    *(v0 + v1) = static PommesSearchService.shared;
    swift_retain_n();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t PommesSearchServiceDelegate.pommesSearchService.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService);
  *(v1 + OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*PommesSearchServiceDelegate.pommesSearchService.modify(void **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PommesSearchServiceDelegate.pommesSearchService.getter();
  return PommesSearchServiceDelegate.pommesSearchService.modify;
}

uint64_t PommesSearchServiceDelegate.pommesSearchService.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService);
  *(v1 + OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService) = v2;
  return swift_unknownObjectRelease();
}

id PommesSearchServiceDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *PommesSearchServiceDelegate.init()()
{
  *&v0[OBJC_IVAR___PommesSearchXPCServer____lazy_storage___pommesSearchService] = 0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "PommesSearchServiceDelegate init", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v6 = MEMORY[0x223DDF550](0xD000000000000028, 0x80000002234DCD20);
  v7 = [v5 initWithMachServiceName_];

  *&v0[OBJC_IVAR___PommesSearchXPCServer_listener] = v7;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PommesSearchServiceDelegate();
  v8 = objc_msgSendSuper2(&v16, sel_init);
  v9 = OBJC_IVAR___PommesSearchXPCServer_listener;
  v10 = *&v8[OBJC_IVAR___PommesSearchXPCServer_listener];
  v11 = v8;
  [v10 setDelegate_];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2232BB000, v12, v13, "PommesSearchService starts listening for new connection", v14, 2u);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  [*&v8[v9] resume];
  return v11;
}

id PommesSearchServiceDelegate.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "PommesSearchService stops listening for new connection", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  [*&v1[OBJC_IVAR___PommesSearchXPCServer_listener] invalidate];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PommesSearchServiceDelegate();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t specialized PommesSearchServiceDelegate.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = [a1 processIdentifier];
  v5 = [a1 serviceName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v27 = v4;
  v26 = v7;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 67240450;
    *(v13 + 4) = v4;
    *(v13 + 8) = 2080;
    if (v9)
    {
      v15 = v7;
    }

    else
    {
      v15 = 7104878;
    }

    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v28);

    *(v13 + 10) = v17;
    _os_log_impl(&dword_2232BB000, v11, v12, "Process [%{public}d] with service name %s is connecting to PommesSearchService", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223DE0F80](v14, -1, -1);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  v18 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  [a1 resume];

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 67240450;
    *(v21 + 4) = v27;
    *(v21 + 8) = 2080;
    if (v9)
    {
      v23 = v26;
    }

    else
    {
      v23 = 7104878;
    }

    if (!v9)
    {
      v9 = 0xE300000000000000;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v9, &v28);

    *(v21 + 10) = v24;
    _os_log_impl(&dword_2232BB000, v19, v20, "Process [%{public}d] with service name %s is connected to PommesSearchService", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);
  }

  else
  {
  }

  return 1;
}

SiriInformationSearch::UtteranceNormalizer __swiftcall UtteranceNormalizer.init(locale:)(Swift::String_optional locale)
{
  v2 = v1;
  if (locale.value._object)
  {
    countAndFlagsBits = locale.value._countAndFlagsBits;
    object = locale.value._object;
  }

  else
  {
    v5 = [objc_opt_self() sharedPreferences];
    v6 = [v5 languageCode];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      object = v8;
    }

    else
    {

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  v9 = specialized static UtteranceNormalizer.getTriggerPhrases(locale:)(countAndFlagsBits, object);

  *v2 = countAndFlagsBits;
  v2[1] = object;
  v2[2] = v9;
  result.triggers._rawValue = v12;
  result.locale._object = v11;
  result.locale._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall UtteranceNormalizer.normalize(_:preserveCase:)(Swift::String _, Swift::Bool preserveCase)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for CharacterSet();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v48 - v13;
  v15 = *v2;
  v16 = v2[1];
  v57 = v2[2];
  if (!preserveCase)
  {
    goto LABEL_8;
  }

  v58 = v15;
  v59 = v16;
  v62 = 28261;
  v63 = 0xE200000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  if ((BidirectionalCollection<>.starts<A>(with:)() & 1) == 0)
  {
    if (one-time initialization token for pommes == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  for (i = 1; ; i = 0)
  {
    v58 = countAndFlagsBits;
    v59 = object;

    Locale.init(identifier:)();
    v22 = type metadata accessor for Locale();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    lazy protocol witness table accessor for type String and conformance String();
    v23 = StringProtocol.lowercased(with:)();
    v25 = v24;
    outlined destroy of Locale?(v14);
    v53 = countAndFlagsBits;
    v54 = object;
    v26 = (i ? object : v25);
    v55 = v26;
    v56 = v23;
    v27 = i ? countAndFlagsBits : v23;
    v49 = v27;

    v14 = *(v57 + 16);
    if (!v14)
    {
      break;
    }

    object = 0;
    v28 = (v57 + 40);
    while (object < *(v57 + 16))
    {
      v30 = *(v28 - 1);
      v29 = *v28;
      v58 = v56;
      v59 = v25;
      v62 = v30;
      v63 = v29;
      lazy protocol witness table accessor for type String and conformance String();
      countAndFlagsBits = lazy protocol witness table accessor for type String and conformance String();

      if (BidirectionalCollection<>.starts<A>(with:)())
      {

        v33 = String.count.getter();

        v34 = specialized Collection.dropFirst(_:)(v33, v49, v55);
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v58 = v34;
        v59 = v36;
        v60 = v38;
        v61 = v40;
        v41 = v50;
        static CharacterSet.whitespacesAndNewlines.getter();
        lazy protocol witness table accessor for type Substring and conformance Substring();
        v42 = StringProtocol.trimmingCharacters(in:)();
        v44 = v43;
        (*(v51 + 8))(v41, v52);

        v58 = v42;
        v59 = v44;
        v32 = String.init<A>(_:)();
        v31 = v45;
        goto LABEL_22;
      }

      ++object;
      v28 += 2;
      if (v14 == object)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_5:
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2232BB000, v19, v20, "Utterance normalization with case preserved is not supported for non-en locales, falling back to lower case", v21, 2u);
      MEMORY[0x223DE0F80](v21, -1, -1);
    }

LABEL_8:
    ;
  }

LABEL_20:

  v31 = v54;

  v32 = v53;
LABEL_22:
  v46 = v31;
  result._object = v46;
  result._countAndFlagsBits = v32;
  return result;
}

uint64_t UtteranceNormalizer.locale.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

char *specialized static UtteranceNormalizer.getTriggerPhrases(locale:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedPreferences];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x223DDF550](a1, a2);
    v7 = [v5 localizedTriggerPhraseForLanguageCode_];

    if (v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v15 = MEMORY[0x223DDF550](a1, a2);
    v16 = [v5 localizedCompactTriggerPhraseForLanguageCode_];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = 0;
    v29[0] = v9;
    v29[1] = v17;
    v29[2] = v19;
    v14 = MEMORY[0x277D84F90];
LABEL_14:
    v21 = &v29[2 * v20];
    while (++v20 != 3)
    {
      v22 = v21 + 2;
      v23 = *v21;
      v21 += 2;
      if (v23)
      {
        v24 = *(v22 - 3);
        v25 = String.lowercased()();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        if (v27 >= v26 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v14);
        }

        *(v14 + 2) = v27 + 1;
        *&v14[16 * v27 + 32] = v25;
        goto LABEL_14;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayDestroy();
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
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v11, v12, "VTPreferences failed to initialize", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

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

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t getEnumTagSinglePayload for UtteranceNormalizer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UtteranceNormalizer(uint64_t result, int a2, int a3)
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

uint64_t specialized Sequence.forEach(_:)(unint64_t a1, char *a2)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6, v9);
  v12 = &v67 - v11;
  if (a1 >> 62)
  {
    goto LABEL_159;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    do
    {
      v71 = v8;
      v72 = v12;
      v14 = 0;
      v76 = a1 & 0xFFFFFFFFFFFFFF8;
      v77 = a1 & 0xC000000000000001;
      v68 = a1;
      v75 = a1 + 32;
      v70 = *MEMORY[0x277D5EC68];
      v69 = *MEMORY[0x277D5EBF0];
      v73 = 0x80000002234D9AC0;
      v74 = v13;
      while (1)
      {
        if (v77)
        {
          v15 = MEMORY[0x223DDFF80](v14, v68);
          v16 = __OFADD__(v14++, 1);
          if (v16)
          {
            break;
          }

          goto LABEL_7;
        }

        if (v14 >= *(v76 + 16))
        {
          goto LABEL_158;
        }

        v15 = *(v75 + 8 * v14);

        v16 = __OFADD__(v14++, 1);
        if (v16)
        {
          break;
        }

LABEL_7:
        if (UsoEntity_common_MediaItem.isFromArtist()())
        {
          v17 = *v79;
          v18 = *(*v79 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v19 = Hasher._finalize()();
          v12 = v17 + 56;
          v20 = -1 << *(v17 + 32);
          v21 = v19 & ~v20;
          if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
          {
            a1 = ~v20;
            do
            {
              v8 = 0xE800000000000000;
              switch(*(*(v17 + 48) + v21))
              {
                case 1:
                case 3:
                case 5:
                case 6:
                case 0xC:
                case 0xE:
                  break;
                case 2:
                  v8 = 0xE90000000000006DLL;
                  break;
                case 4:
                  v8 = 0xE700000000000000;
                  break;
                case 7:
                  v8 = 0xEB00000000646564;
                  break;
                case 8:
                  v8 = 0xE900000000000079;
                  break;
                case 9:
                  v8 = v73;
                  break;
                case 0xA:
                  v8 = 0xE400000000000000;
                  break;
                case 0xB:
                  v8 = 0xE500000000000000;
                  break;
                case 0xD:
                  v8 = 0xEB00000000657461;
                  break;
                default:
                  goto LABEL_156;
              }

              v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v22)
              {
                goto LABEL_139;
              }

              v21 = (v21 + 1) & a1;
            }

            while (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
          }

          a1 = v79;
          v23 = *v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78[0] = *a1;
          v8 = v78;
          v25 = 0;
LABEL_138:
          specialized _NativeSet.insertNew(_:at:isUnique:)(v25, v21, isUniquelyReferenced_nonNull_native);
          *a1 = v78[0];
LABEL_139:

          v13 = v74;
          if (v14 == v74)
          {
            return result;
          }
        }

        else
        {
          if (UsoEntity_common_MediaItem.isFromSong()())
          {
            v26 = *v79;
            v27 = *(*v79 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v28 = Hasher._finalize()();
            v12 = v26 + 56;
            v29 = -1 << *(v26 + 32);
            v21 = v28 & ~v29;
            if ((*(v26 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              a1 = ~v29;
              do
              {
                v8 = 0xEA00000000007473;
                switch(*(*(v26 + 48) + v21))
                {
                  case 1:
                    goto LABEL_156;
                  case 2:
                    v8 = 0xE90000000000006DLL;
                    break;
                  case 3:
                    v8 = 0xE800000000000000;
                    break;
                  case 4:
                    v8 = 0xE700000000000000;
                    break;
                  case 5:
                    v8 = 0xE800000000000000;
                    break;
                  case 6:
                    v8 = 0xE800000000000000;
                    break;
                  case 7:
                    v8 = 0xEB00000000646564;
                    break;
                  case 8:
                    v8 = 0xE900000000000079;
                    break;
                  case 9:
                    v8 = v73;
                    break;
                  case 0xA:
                    v8 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v8 = 0xE500000000000000;
                    break;
                  case 0xC:
                    v8 = 0xE800000000000000;
                    break;
                  case 0xD:
                    v8 = 0xEB00000000657461;
                    break;
                  case 0xE:
                    v8 = 0xE800000000000000;
                    break;
                  default:
                    break;
                }

                v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v30)
                {
                  goto LABEL_139;
                }

                v21 = (v21 + 1) & a1;
              }

              while (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
            }

            a1 = v79;
            v31 = *v79;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78[0] = *a1;
            v8 = v78;
            v25 = 1;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isFromAlbum()())
          {
            v32 = *v79;
            v33 = *(*v79 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v34 = Hasher._finalize()();
            v12 = v32 + 56;
            v35 = -1 << *(v32 + 32);
            v21 = v34 & ~v35;
            if ((*(v32 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              a1 = ~v35;
              do
              {
                v8 = 0xEA00000000007473;
                switch(*(*(v32 + 48) + v21))
                {
                  case 1:
                    v8 = 0xE800000000000000;
                    break;
                  case 2:
                    goto LABEL_156;
                  case 3:
                    v8 = 0xE800000000000000;
                    break;
                  case 4:
                    v8 = 0xE700000000000000;
                    break;
                  case 5:
                    v8 = 0xE800000000000000;
                    break;
                  case 6:
                    v8 = 0xE800000000000000;
                    break;
                  case 7:
                    v8 = 0xEB00000000646564;
                    break;
                  case 8:
                    v8 = 0xE900000000000079;
                    break;
                  case 9:
                    v8 = v73;
                    break;
                  case 0xA:
                    v8 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v8 = 0xE500000000000000;
                    break;
                  case 0xC:
                    v8 = 0xE800000000000000;
                    break;
                  case 0xD:
                    v8 = 0xEB00000000657461;
                    break;
                  case 0xE:
                    v8 = 0xE800000000000000;
                    break;
                  default:
                    break;
                }

                v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v36)
                {
                  goto LABEL_139;
                }

                v21 = (v21 + 1) & a1;
              }

              while (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
            }

            a1 = v79;
            v37 = *v79;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78[0] = *a1;
            v8 = v78;
            v25 = 2;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isRecommended()())
          {
            v38 = *v79;
            v39 = *(*v79 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v40 = Hasher._finalize()();
            v12 = v38 + 56;
            v41 = -1 << *(v38 + 32);
            v21 = v40 & ~v41;
            if ((*(v38 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              a1 = ~v41;
              do
              {
                v8 = 0xEA00000000007473;
                switch(*(*(v38 + 48) + v21))
                {
                  case 1:
                    v8 = 0xE800000000000000;
                    break;
                  case 2:
                    v8 = 0xE90000000000006DLL;
                    break;
                  case 3:
                    v8 = 0xE800000000000000;
                    break;
                  case 4:
                    v8 = 0xE700000000000000;
                    break;
                  case 5:
                    v8 = 0xE800000000000000;
                    break;
                  case 6:
                    v8 = 0xE800000000000000;
                    break;
                  case 7:
                    goto LABEL_156;
                  case 8:
                    v8 = 0xE900000000000079;
                    break;
                  case 9:
                    v8 = v73;
                    break;
                  case 0xA:
                    v8 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v8 = 0xE500000000000000;
                    break;
                  case 0xC:
                    v8 = 0xE800000000000000;
                    break;
                  case 0xD:
                    v8 = 0xEB00000000657461;
                    break;
                  case 0xE:
                    v8 = 0xE800000000000000;
                    break;
                  default:
                    break;
                }

                v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v42)
                {
                  goto LABEL_139;
                }

                v21 = (v21 + 1) & a1;
              }

              while (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
            }

            a1 = v79;
            v43 = *v79;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78[0] = *a1;
            v8 = v78;
            v25 = 7;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isAffinity()())
          {
            v44 = *v79;
            v45 = *(*v79 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v46 = Hasher._finalize()();
            v12 = v44 + 56;
            v47 = -1 << *(v44 + 32);
            v21 = v46 & ~v47;
            if ((*(v44 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              a1 = ~v47;
              do
              {
                v8 = 0xE800000000000000;
                switch(*(*(v44 + 48) + v21))
                {
                  case 1:
                  case 3:
                  case 5:
                  case 0xC:
                  case 0xE:
                    break;
                  case 2:
                    v8 = 0xE90000000000006DLL;
                    break;
                  case 4:
                    v8 = 0xE700000000000000;
                    break;
                  case 6:
                    goto LABEL_156;
                  case 7:
                    v8 = 0xEB00000000646564;
                    break;
                  case 8:
                    v8 = 0xE900000000000079;
                    break;
                  case 9:
                    v8 = v73;
                    break;
                  case 0xA:
                    v8 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v8 = 0xE500000000000000;
                    break;
                  case 0xD:
                    v8 = 0xEB00000000657461;
                    break;
                  default:
                    v8 = 0xEA00000000007473;
                    break;
                }

                v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v48)
                {
                  goto LABEL_139;
                }

                v21 = (v21 + 1) & a1;
              }

              while (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
            }

            a1 = v79;
            v49 = *v79;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78[0] = *a1;
            v8 = v78;
            v25 = 6;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isDiscover()())
          {
            v50 = *v79;
            v51 = *(*v79 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v52 = Hasher._finalize()();
            a1 = v50 + 56;
            v53 = -1 << *(v50 + 32);
            v21 = v52 & ~v53;
            if ((*(v50 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              v12 = ~v53;
              do
              {
                v8 = 0xEA00000000007473;
                switch(*(*(v50 + 48) + v21))
                {
                  case 1:
                    v8 = 0xE800000000000000;
                    break;
                  case 2:
                    v8 = 0xE90000000000006DLL;
                    break;
                  case 3:
                    v8 = 0xE800000000000000;
                    break;
                  case 4:
                    v8 = 0xE700000000000000;
                    break;
                  case 5:
                    v8 = 0xE800000000000000;
                    break;
                  case 6:
                    v8 = 0xE800000000000000;
                    break;
                  case 7:
                    v8 = 0xEB00000000646564;
                    break;
                  case 8:
                    goto LABEL_156;
                  case 9:
                    v8 = v73;
                    break;
                  case 0xA:
                    v8 = 0xE400000000000000;
                    break;
                  case 0xB:
                    v8 = 0xE500000000000000;
                    break;
                  case 0xC:
                    v8 = 0xE800000000000000;
                    break;
                  case 0xD:
                    v8 = 0xEB00000000657461;
                    break;
                  case 0xE:
                    v8 = 0xE800000000000000;
                    break;
                  default:
                    break;
                }

                v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v54)
                {
                  goto LABEL_139;
                }

                v21 = (v21 + 1) & v12;
              }

              while (((*(a1 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
            }

            a1 = v79;
            v55 = *v79;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78[0] = *a1;
            v8 = v78;
            v25 = 8;
            goto LABEL_138;
          }

          if (UsoEntity_common_MediaItem.isAddToUnspecifiedPlaylist()())
          {
            v56 = *v79;
            v57 = *(*v79 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v58 = Hasher._finalize()();
            v12 = v56 + 56;
            v59 = -1 << *(v56 + 32);
            v21 = v58 & ~v59;
            if ((*(v56 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              a1 = ~v59;
              while (2)
              {
                v8 = 0xEA00000000007473;
                switch(*(*(v56 + 48) + v21))
                {
                  case 1:
                    v8 = 0xE800000000000000;
                    goto LABEL_135;
                  case 2:
                    v8 = 0xE90000000000006DLL;
                    goto LABEL_135;
                  case 3:
                    v8 = 0xE800000000000000;
                    goto LABEL_135;
                  case 4:
                    v8 = 0xE700000000000000;
                    goto LABEL_135;
                  case 5:
                    v8 = 0xE800000000000000;
                    goto LABEL_135;
                  case 6:
                    v8 = 0xE800000000000000;
                    goto LABEL_135;
                  case 7:
                    v8 = 0xEB00000000646564;
                    goto LABEL_135;
                  case 8:
                    v8 = 0xE900000000000079;
                    goto LABEL_135;
                  case 9:
LABEL_156:

                    goto LABEL_139;
                  case 0xA:
                    v8 = 0xE400000000000000;
                    goto LABEL_135;
                  case 0xB:
                    v8 = 0xE500000000000000;
                    goto LABEL_135;
                  case 0xC:
                    v8 = 0xE800000000000000;
                    goto LABEL_135;
                  case 0xD:
                    v8 = 0xEB00000000657461;
                    goto LABEL_135;
                  case 0xE:
                    v8 = 0xE800000000000000;
                    goto LABEL_135;
                  default:
LABEL_135:
                    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v60)
                    {
                      goto LABEL_139;
                    }

                    v21 = (v21 + 1) & a1;
                    if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
                    {
                      break;
                    }

                    continue;
                }

                break;
              }
            }

            a1 = v79;
            v61 = *v79;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78[0] = *a1;
            v8 = v78;
            v25 = 9;
            goto LABEL_138;
          }

          v8 = v15;
          if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
          {

            v8 = v15;
            if (dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter())
            {
              v12 = v72;
              dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

              v8 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
              a1 = *(v8 - 1);
              if ((*(a1 + 48))(v12, 1, v8) != 1)
              {
                v62 = v12;
                v12 = v71;
                outlined init with copy of MediaUserStateCenter?(v62, v71, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
                v63 = (*(a1 + 88))(v12, v8);
                if (v63 == v70)
                {
                  v64 = 12;
LABEL_149:
                  outlined destroy of MediaUserStateCenter?(v72, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
                  v65 = v64;
                  v8 = v79;
                  specialized Set._Variant.insert(_:)(v78, v65);
                  goto LABEL_150;
                }

                if (v63 == v69)
                {
                  v64 = 10;
                  goto LABEL_149;
                }

                v66 = *(a1 + 8);
                a1 += 8;
                v66(v71, v8);
                v12 = v72;
              }

              outlined destroy of MediaUserStateCenter?(v12, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
            }
          }

LABEL_150:

          if (v14 == v13)
          {
            return result;
          }
        }
      }

      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      result = __CocoaSet.count.getter();
      v13 = result;
    }

    while (result);
  }

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, uint64_t *a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DDFF80](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        closure #2 in closure #1 in AudioUsoIntent.modifiers.getter(&v9, a2);

        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = __CocoaSet.count.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t AudioUsoIntent.__allocating_init(userDialogAct:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSONEncodingOptions();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v64 - v14;
  v16 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v64 - v25;
  v69 = a1;
  v27 = a1;
  v29 = v28;
  v31 = v30;
  outlined init with copy of MediaUserStateCenter?(v27, v15, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  if ((*(v29 + 48))(v15, 1, v31) != 1)
  {
    (*(v29 + 32))(v26, v15, v31);
    if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
    {
      v39 = (*(v2 + 1000))();
      outlined destroy of MediaUserStateCenter?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v29 + 8))(v26, v31);
      swift_beginAccess();
      result = v39;
      *(v39 + 138) = 0;
      return result;
    }

    if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
    {
      v40 = (*(v2 + 1000))();
      outlined destroy of MediaUserStateCenter?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v29 + 8))(v26, v31);
      swift_beginAccess();
      result = v40;
      *(v40 + 138) = 1;
      return result;
    }

    if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
    {
      v41 = (*(v2 + 1000))();
      outlined destroy of MediaUserStateCenter?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v29 + 8))(v26, v31);
      swift_beginAccess();
      result = v41;
      *(v41 + 138) = 2;
      return result;
    }

    if ((Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter() & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.pommes);
      (*(v29 + 16))(v21, v26, v31);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v66 = v45;
        v46 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v70 = v65;
        v64 = v46;
        *v46 = 136315138;
        JSONEncodingOptions.init()();
        _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x277D5DB80]);
        v47 = v31;
        v51 = Message.jsonString(options:)();
        v53 = v52;
        (*(v67 + 8))(v9, v68);
        v54 = *(v29 + 8);
        v54(v21, v47);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v70);

        v56 = v64;
        *(v64 + 1) = v55;
        _os_log_impl(&dword_2232BB000, v44, v66, "AudioUsoIntent#init unexpected userDialogAct %s", v56, 0xCu);
        v57 = v65;
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x223DE0F80](v57, -1, -1);
        MEMORY[0x223DE0F80](v56, -1, -1);

        outlined destroy of MediaUserStateCenter?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        v54(v26, v47);
      }

      else
      {

        outlined destroy of MediaUserStateCenter?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        v48 = *(v29 + 8);
        v48(v21, v31);
        v48(v26, v31);
      }

      return 0;
    }

    v42 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v42 >> 62)
    {
      v58 = v42;
      v59 = __CocoaSet.count.getter();
      v42 = v58;
      if (v59)
      {
        goto LABEL_22;
      }
    }

    else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      if ((v42 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x223DDFF80](0);
        goto LABEL_25;
      }

      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v49 = *(v42 + 32);

LABEL_25:

        v50 = (*(v2 + 1008))(v49);
        outlined destroy of MediaUserStateCenter?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        (*(v29 + 8))(v26, v31);
        return v50;
      }

      __break(1u);
      goto LABEL_34;
    }

    if (one-time initialization token for pommes == -1)
    {
LABEL_28:
      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.pommes);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_2232BB000, v61, v62, "tasks extracted from the userDialogAct is empty", v63, 2u);
        MEMORY[0x223DE0F80](v63, -1, -1);
      }

      outlined destroy of MediaUserStateCenter?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v29 + 8))(v26, v31);
      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_28;
  }

  v32 = outlined destroy of MediaUserStateCenter?(v15, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v33 = (*(v2 + 1000))(v32);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.pommes);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2232BB000, v35, v36, "AudioUsoIntent#init received nil userDialogAct", v37, 2u);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  outlined destroy of MediaUserStateCenter?(v69, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  return v33;
}

unint64_t AudioUsoIntent.UsoNamespace.rawValue.getter(char a1)
{
  result = 0x616C50616964656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6E6547636973756DLL;
      break;
    case 4:
    case 20:
      result = 0xD000000000000013;
      break;
    case 5:
    case 7:
    case 22:
    case 24:
      result = 0xD000000000000014;
      break;
    case 6:
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x7473696C79616C70;
      break;
    case 10:
      result = 0x5474736163646F70;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 1701605234;
      break;
    case 13:
      result = 0x6C646E7542707061;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x54776F6853707061;
      break;
    case 18:
      result = 0x54776F6853707061;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x64695F6D657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AudioUsoIntent.__allocating_init()()
{
  v0 = swift_allocObject();
  AudioUsoIntent.init()();
  return v0;
}

double AudioUsoIntent.init()()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 136) = 529;
  *(v0 + 138) = 4;
  *(v0 + 144) = xmmword_2234D45D0;
  *(v0 + 160) = vdupq_n_s64(1uLL);
  *(v0 + 176) = 0;
  *(v0 + 184) = 7453;
  *(v0 + 192) = xmmword_2234D45D0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 280) = 4;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 1;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 2572;
  *(v0 + 392) = 0;
  *(v0 + 400) = 3;
  *(v0 + 416) = 0;
  *(v0 + 424) = 0;
  *(v0 + 408) = 0;
  *(v0 + 432) = 3;
  *(v0 + 440) = 0;
  *(v0 + 448) = 256;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  return result;
}

uint64_t AudioUsoIntent.__allocating_init(task:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AudioUsoIntent.init(task:)(a1);
  return v2;
}

uint64_t AudioUsoIntent.init(task:)(uint64_t a1)
{
  *(v1 + 16) = 0u;
  v2 = (v1 + 16);
  *(v1 + 136) = 529;
  *(v1 + 128) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 138) = 4;
  *(v1 + 144) = xmmword_2234D45D0;
  *(v1 + 160) = vdupq_n_s64(1uLL);
  *(v1 + 176) = 0;
  *(v1 + 184) = 7453;
  *(v1 + 192) = xmmword_2234D45D0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0;
  *(v1 + 280) = 4;
  *(v1 + 288) = 1;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 1;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 2572;
  *(v1 + 392) = 0;
  *(v1 + 400) = 3;
  *(v1 + 416) = 0;
  *(v1 + 424) = 0;
  *(v1 + 408) = 0;
  *(v1 + 432) = 3;
  *(v1 + 440) = 0;
  *(v1 + 448) = 256;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  if (a1)
  {
    *(v1 + 144) = a1;

    UsoTask.verbString.getter();
    v3 = specialized CommonAudio.Verb.init(rawValue:)();
    swift_beginAccess();
    *(v1 + 136) = v3;
    v4 = UsoTask.baseEntityAsString.getter();
    v6 = v5;
    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.UsoEntity.init(rawValue:), v7);

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    swift_beginAccess();
    *(v1 + 137) = v10;
    static UsoTask_CodegenConverter.convert(task:)();

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_play_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v11 = *v2;
        *v2 = v27;
LABEL_67:

        return v1;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_play_uso_NoEntity();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v12 = *(v1 + 24);
        *(v1 + 24) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_resume_uso_NoEntity();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v13 = *(v1 + 32);
        *(v1 + 32) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_update_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v14 = *(v1 + 40);
        *(v1 + 40) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_summarise_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v15 = *(v1 + 48);
        *(v1 + 48) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_request_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v16 = *(v1 + 56);
        *(v1 + 56) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_subscribe_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v17 = *(v1 + 64);
        *(v1 + 64) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_follow_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v18 = *(v1 + 72);
        *(v1 + 72) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_start_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v19 = *(v1 + 80);
        *(v1 + 80) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_noVerb_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v20 = *(v1 + 88);
        *(v1 + 88) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_noVerb_common_App();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v21 = *(v1 + 96);
        *(v1 + 96) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_like_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v22 = *(v1 + 104);
        *(v1 + 104) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_unlike_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v23 = *(v1 + 112);
        *(v1 + 112) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of MediaUserStateCenter?(&v30, &v28, &_sypSgMd, &_sypSgMR);
    if (*(&v29 + 1))
    {
      type metadata accessor for UsoTask_shuffle_common_MediaItem();
      if (swift_dynamicCast())
      {
        outlined destroy of MediaUserStateCenter?(&v30, &_sypSgMd, &_sypSgMR);
        v24 = *(v1 + 120);
        *(v1 + 120) = v27;
        goto LABEL_67;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
    }

    v28 = v30;
    v29 = v31;
    if (!*(&v31 + 1))
    {
      outlined destroy of MediaUserStateCenter?(&v28, &_sypSgMd, &_sypSgMR);
      return v1;
    }

    type metadata accessor for UsoTask_repeat_common_MediaItem();
    if (swift_dynamicCast())
    {
      v25 = *(v1 + 128);
      *(v1 + 128) = v27;
      goto LABEL_67;
    }
  }

  return v1;
}

uint64_t AudioUsoIntent.referenceMediaItem.getter()
{
  v1 = v0[19];
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in AudioUsoIntent.referenceMediaItem.getter(v0);
    v3 = v0[19];
    v0[19] = v2;

    _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v3);
  }

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(v1);
  return v2;
}

uint64_t closure #1 in AudioUsoIntent.referenceMediaItem.getter(void *a1)
{
  if (a1[2])
  {
    goto LABEL_2;
  }

  if (!a1[3] && !a1[4])
  {
    if (a1[5])
    {
      v2 = a1[5];

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      goto LABEL_3;
    }

    if (!a1[6])
    {
      if (a1[7])
      {
        v3 = a1[7];

        dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
        goto LABEL_3;
      }

      if (a1[8] || a1[9])
      {
        goto LABEL_15;
      }

      if (!a1[10])
      {
        if (a1[11])
        {
          v4 = a1[11];

          dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
          goto LABEL_3;
        }

        if (a1[12])
        {
          return 0;
        }

        if (a1[13] || a1[14])
        {
LABEL_15:

          dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
          goto LABEL_3;
        }

        if (!a1[15] && !a1[16])
        {
          return 0;
        }
      }
    }

LABEL_2:

    dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();
LABEL_3:

    return v5;
  }

  return 0;
}

uint64_t AudioUsoIntent.userEntities.getter()
{
  v1 = v0[20];
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in AudioUsoIntent.userEntities.getter(v0);
    v3 = v0[20];
    v0[20] = v2;

    outlined consume of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(v3);
  }

  outlined copy of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(v1);
  return v2;
}

uint64_t closure #1 in AudioUsoIntent.userEntities.getter(void *a1)
{
  if (!a1[2] && !a1[3] && !a1[4])
  {
    if (a1[5])
    {
      v4 = a1[5];

      v1 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.userEntities.getter();
      goto LABEL_5;
    }

    if (!a1[6])
    {
      if (a1[7])
      {
        v5 = a1[7];

        v1 = dispatch thunk of Uso_VerbTemplate_ReferenceSelect.userEntities.getter();
        goto LABEL_5;
      }

      if (a1[8] || a1[9])
      {
LABEL_14:

        v1 = dispatch thunk of Uso_VerbTemplate_Reference.userEntities.getter();
        goto LABEL_5;
      }

      if (!a1[10])
      {
        if (a1[11] || a1[12])
        {

          v1 = dispatch thunk of Uso_VerbTemplate_NoVerb.userEntities.getter();
          goto LABEL_5;
        }

        if (a1[13] || a1[14])
        {
          goto LABEL_14;
        }

        if (!a1[15] && !a1[16])
        {
          return 0;
        }
      }
    }
  }

  v1 = dispatch thunk of Uso_VerbTemplate_ReferenceControl.userEntities.getter();
LABEL_5:
  v2 = v1;

  return v2;
}

uint64_t AudioUsoIntent.targetMediaItem.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = *(v0 + 40);
    if (v2)
    {
      v3 = *(v0 + 40);

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

      v2 = v6;
      v4 = *(v0 + 168);
    }

    else
    {
      v4 = 1;
    }

    *(v0 + 168) = v2;

    _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v4);
  }

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(v1);
  return v2;
}

uint64_t AudioUsoIntent.rootItems.getter()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.rootItems.getter();
    v2 = *(v0 + 176);
    *(v0 + 176) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.rootItems.getter()
{
  v0 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  if (AudioUsoIntent.referenceMediaItem.getter())
  {

    MEMORY[0x223DDF820](v1);
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v0 = v6;
  }

  if (AudioUsoIntent.targetMediaItem.getter())
  {

    MEMORY[0x223DDF820](v2);
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v6;
  }

  return v0;
}

uint64_t AudioUsoIntent.mediaType.getter()
{
  result = *(v0 + 184);
  if (result == 29)
  {
    result = closure #1 in AudioUsoIntent.mediaType.getter();
    *(v0 + 184) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.mediaType.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  if (AudioUsoIntent.referenceMediaItem.getter())
  {
    if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
    {
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
    }

    else
    {
      v9 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    }

LABEL_11:
    v10 = specialized static CommonAudio.MediaType.from(_:)(v8);

    outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    return v10;
  }

  if (AudioUsoIntent.targetMediaItem.getter())
  {
    if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
    {
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
    }

    else
    {
      v11 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    }

    v8 = v5;
    goto LABEL_11;
  }

  return 28;
}

uint64_t AudioUsoIntent.targetMediaType.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v10 - v5;
  result = *(v0 + 185);
  if (result == 29)
  {
    if (AudioUsoIntent.targetMediaItem.getter())
    {
      if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
      {
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      }

      else
      {
        v8 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
        (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      }

      v9 = specialized static CommonAudio.MediaType.from(_:)(v6);

      outlined destroy of MediaUserStateCenter?(v6, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      result = v9;
    }

    else
    {
      result = 28;
    }

    *(v1 + 185) = result;
  }

  return result;
}

char *AudioUsoIntent.entities.getter()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.entities.getter);
    v2 = *(v0 + 192);
    *(v0 + 192) = v1;
  }

  return v1;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.entities.getter()
{
  v0 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(dispatch thunk of CodeGenBase.usoIdentifiers.getter() + 16);

  result = 0;
  if (v5 && !v6)
  {
    if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AudioUsoIntent.resolvedReference.getter()
{
  v1 = *(v0 + 200);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in AudioUsoIntent.resolvedReference.getter();
    v3 = *(v0 + 200);
    *(v0 + 200) = v2;

    _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v3);
  }

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(v1);
  return v2;
}

uint64_t closure #1 in AudioUsoIntent.resolvedReference.getter()
{
  v0 = AudioUsoIntent.rootItems.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_16:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223DDFF80](v4, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v6 = *(v1 + 8 * v4 + 32);

      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v5, v6);

    ++v4;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  v7 = 0;
LABEL_14:

  return v7;
}

unint64_t AudioUsoIntent.disambiguationEntities.getter()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v2 = AudioUsoIntent.rootItems.getter();
    v1 = specialized Sequence.flatMap<A>(_:)(v2, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.disambiguationEntities.getter, 0);

    v3 = *(v0 + 208);
    *(v0 + 208) = v1;
  }

  return v1;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.disambiguationEntities.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v13 = result;
  v23 = *(result + 16);
  if (!v23)
  {
LABEL_20:

    return 0;
  }

  HIDWORD(v22) = v11;
  v14 = 0;
  v15 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v16 = (v1 + 8);
  while (1)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v5, v15 + *(v1 + 72) * v14, v0);
    v17 = UsoIdentifier.namespace.getter();
    if (!v18)
    {
LABEL_8:
      result = (*v16)(v5, v0);
      goto LABEL_9;
    }

    if (v17 == 1701605234 && v18 == 0xE400000000000000)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (UsoIdentifier.value.getter() == 0x6769626D61736964 && v20 == 0xEE006E6F69746175)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v16)(v5, v0);
    if (v21)
    {
      goto LABEL_23;
    }

LABEL_9:
    if (v23 == ++v14)
    {
      goto LABEL_20;
    }
  }

  (*v16)(v5, v0);
LABEL_23:

  return (v22 & 0x100000000) == 0;
}

uint64_t AudioUsoIntent.apps.getter()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.apps.getter(v0);
    v2 = *(v0 + 216);
    *(v0 + 216) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.apps.getter(uint64_t a1)
{
  if (*(a1 + 96) && (v1 = *(a1 + 96), , dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter(), , v14))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2234D0FE0;
    *(v2 + 32) = v14;
  }

  else
  {
    v3 = AudioUsoIntent.rootItems.getter();
    v4 = v3;
    v15 = MEMORY[0x277D84F90];
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_22:
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v2 = MEMORY[0x277D84F90];
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DDFF80](v7, v4);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v8 = *(v4 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      ++v7;
      if (v10)
      {
        MEMORY[0x223DDF820](v11);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v15;
        v7 = v9;
      }
    }
  }

  return v2;
}

char *AudioUsoIntent.artists.getter()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.artists.getter);
    v2 = *(v0 + 224);
    *(v0 + 224) = v1;
  }

  return v1;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.artists.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v7 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v62 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v66 = &v57 - v21;
  v22 = type metadata accessor for UsoIdentifier();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v67 = v10;
  v65 = v19;
  if (v29)
  {
    v30 = v28;
    v31 = v29;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  v63 = a1;
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v35 = result;
  v36 = *(result + 16);
  if (!v36)
  {

    v46 = v66;
    v45 = v67;
    if (!v33)
    {
LABEL_23:
      LODWORD(v70) = 1;
      goto LABEL_30;
    }

    return 0;
  }

  v59 = v33;
  v60 = v3;
  v61 = v2;
  v37 = 0;
  v70 = result + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v68 = 0x80000002234D9630;
  v69 = 0x80000002234D9670;
  v38 = (v23 + 8);
  while (1)
  {
    if (v37 >= *(v35 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v23 + 16))(v27, v70 + *(v23 + 72) * v37, v22);
    v39 = UsoIdentifier.namespace.getter();
    if (v40)
    {
      if (v39 == 0xD000000000000012 && v40 == v69)
      {

LABEL_25:

        (*v38)(v27, v22);
        goto LABEL_28;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        goto LABEL_25;
      }
    }

    v42 = UsoIdentifier.namespace.getter();
    if (!v43)
    {
      result = (*v38)(v27, v22);
      goto LABEL_9;
    }

    if (v42 == 0xD000000000000012 && v43 == v68)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v38)(v27, v22);
    if (v44)
    {
      goto LABEL_27;
    }

LABEL_9:
    if (v36 == ++v37)
    {

      v3 = v60;
      v2 = v61;
      v46 = v66;
      v45 = v67;
      if (v59)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  (*v38)(v27, v22);
LABEL_27:

LABEL_28:
  v3 = v60;
  v2 = v61;
  v46 = v66;
  v45 = v67;
  if (v59)
  {
    return 0;
  }

  LODWORD(v70) = 0;
LABEL_30:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v46, 1, 1, v2);
  }

  v47 = v65;
  (*(v3 + 104))(v65, *MEMORY[0x277D5EDC0], v2);
  (*(v3 + 56))(v47, 0, 1, v2);
  v48 = *(v64 + 48);
  outlined init with copy of MediaUserStateCenter?(v46, v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v47, v45 + v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v49 = v3;
  v50 = *(v3 + 48);
  if (v50(v45, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v47, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v46, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v50(v45 + v48, 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v70;
    }

LABEL_38:
    outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v51 = v62;
  outlined init with copy of MediaUserStateCenter?(v45, v62, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v50(v45 + v48, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v47, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v46, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v49 + 8))(v51, v2);
    goto LABEL_38;
  }

  v52 = v49;
  v53 = v58;
  (*(v49 + 32))(v58, v45 + v48, v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v54 = v51;
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v52 + 8);
  v56(v53, v2);
  outlined destroy of MediaUserStateCenter?(v47, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v46, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v56(v54, v2);
  outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v70;
  if ((v55 & 1) == 0)
  {
    return 0;
  }

  return result;
}

char *AudioUsoIntent.albums.getter()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.albums.getter);
    v2 = *(v0 + 232);
    *(v0 + 232) = v1;
  }

  return v1;
}

void *AudioUsoIntent.appPlaylistTitles.getter()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appPlaylistTitles.getter();
    v2 = *(v0 + 240);
    *(v0 + 240) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appPlaylistTitles.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v85 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v71 = &v63 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v63 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v73 = &v63 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v72 = &v63 - v26;
  v27 = AudioUsoIntent.rootItems.getter();
  v28 = specialized Sequence.flatMap<A>(_:)(v27, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appPlaylistTitles.getter, 0);

  if (v28 >> 62)
  {
    goto LABEL_56;
  }

  v74 = v28 & 0xFFFFFFFFFFFFFF8;
  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v63 = v28;
  if (v29)
  {
    v30 = 0;
    v69 = v28 + 32;
    v70 = v28 & 0xC000000000000001;
    v84 = 0x80000002234D9E30;
    v86 = v1 + 16;
    v31 = (v1 + 8);
    v75 = (v1 + 32);
    v80 = (v1 + 48);
    v81 = (v1 + 56);
    v64 = MEMORY[0x277D84F90];
    v83 = 0x80000002234D9610;
    v67 = v17;
    v66 = v21;
    v68 = v29;
    while (1)
    {
      if (v70)
      {
        v34 = MEMORY[0x223DDFF80](v30, v63);
        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v30 >= *(v74 + 16))
        {
          goto LABEL_55;
        }

        v33 = *(v69 + 8 * v30);

        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      v79 = v36;
      v82 = v34;
      v37 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v38 = v37;
      v28 = *(v37 + 16);
      if (v28)
      {
        v21 = 0;
        v17 = (v37 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v21 < *(v38 + 16))
        {
          (*(v1 + 16))(v11, &v17[*(v1 + 72) * v21], v0);
          v40 = UsoIdentifier.namespace.getter();
          if (v41)
          {
            if (v40 == 0xD000000000000012 && v41 == v84)
            {

LABEL_19:

              v42 = v72;
              (*v75)(v72, v11, v0);
              v43 = 0;
              v44 = v73;
              goto LABEL_21;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_19;
            }
          }

          ++v21;
          (*v31)(v11, v0);
          if (v28 == v21)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v74 = v28 & 0xFFFFFFFFFFFFFF8;
        v29 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_20:

      v43 = 1;
      v42 = v72;
      v44 = v73;
LABEL_21:
      v45 = *v81;
      (*v81)(v42, v43, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v42, v44, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v46 = *v80;
      v47 = (*v80)(v44, 1, v0);
      v76 = v46;
      v77 = v45;
      if (v47 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v65 = 0;
        v78 = 0;
      }

      else
      {
        v48 = v71;
        (*v75)(v71, v44, v0);
        v65 = UsoIdentifier.value.getter();
        v78 = v49;
        (*v31)(v48, v0);
        outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v50 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v51 = v50;
      v28 = *(v50 + 16);
      if (v28)
      {
        v21 = 0;
        v17 = (v50 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v21 < *(v51 + 16))
        {
          (*(v1 + 16))(v85, &v17[*(v1 + 72) * v21], v0);
          v53 = UsoIdentifier.namespace.getter();
          if (v54)
          {
            if (v53 == 0xD000000000000010 && v54 == v83)
            {

LABEL_33:

              v21 = v66;
              (*v75)(v66, v85, v0);
              v55 = 0;
              v17 = v67;
              goto LABEL_35;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v52)
            {
              goto LABEL_33;
            }
          }

          ++v21;
          (*v31)(v85, v0);
          if (v28 == v21)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_53;
      }

LABEL_34:

      v55 = 1;
      v17 = v67;
      v21 = v66;
LABEL_35:
      v77(v21, v55, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v21, v17, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v76(v17, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v28 = v71;
        (*v75)(v71, v17, v0);
        v77 = UsoIdentifier.value.getter();
        v57 = v56;

        (*v31)(v28, v0);
        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          if (v57)
          {
            v58 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
            }

            v28 = v64[2];
            v59 = v64[3];
            if (v28 >= v59 >> 1)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v28 + 1, 1, v64);
            }

            v60 = v64;
            v64[2] = v28 + 1;
            v61 = &v60[4 * v28];
            v61[4] = v77;
            v61[5] = v57;
            v61[6] = v65;
            v61[7] = v58;
          }

          else
          {
LABEL_40:
          }

          v32 = v68;
          goto LABEL_6;
        }
      }

      v32 = v68;

LABEL_6:
      v30 = v79;
      if (v79 == v32)
      {
        goto LABEL_51;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
LABEL_51:

  return v64;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appPlaylistTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v58 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v53 - v22;
  v24 = type metadata accessor for UsoIdentifier();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v30 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v60 = v20;
  v61 = v23;
  v59 = v7;
  if (v31)
  {
    v32 = v30;
    v33 = v31;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    v35 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v37 = result;
  v64 = *(result + 16);
  if (!v64)
  {

    v44 = v61;
    if (!v35)
    {
LABEL_19:
      LODWORD(v64) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v54 = v35;
  v55 = v3;
  v56 = v11;
  v57 = v2;
  v38 = 0;
  v39 = result + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v63 = 0x80000002234D9610;
  v40 = (v25 + 8);
  while (1)
  {
    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v25 + 16))(v29, v39 + *(v25 + 72) * v38, v24);
    v41 = UsoIdentifier.namespace.getter();
    if (!v42)
    {
      result = (*v40)(v29, v24);
      goto LABEL_9;
    }

    if (v41 == 0xD000000000000010 && v42 == v63)
    {
      break;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v40)(v29, v24);
    if (v43)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v64 == ++v38)
    {

      v11 = v56;
      v2 = v57;
      v3 = v55;
      v44 = v61;
      if (v54)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v40)(v29, v24);
LABEL_21:

  v11 = v56;
  v2 = v57;
  v3 = v55;
  v44 = v61;
  if (v54)
  {
    return 0;
  }

  LODWORD(v64) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v44, 1, 1, v2);
  }

  v45 = v60;
  (*(v3 + 104))(v60, *MEMORY[0x277D5EE18], v2);
  (*(v3 + 56))(v45, 0, 1, v2);
  v46 = *(v59 + 48);
  outlined init with copy of MediaUserStateCenter?(v44, v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v45, &v11[v46], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v47 = *(v3 + 48);
  if (v47(v11, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v47(&v11[v46], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v64;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v48 = v58;
  outlined init with copy of MediaUserStateCenter?(v11, v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v47(&v11[v46], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v48, v2);
    goto LABEL_31;
  }

  v49 = v53;
  (*(v3 + 32))(v53, &v11[v46], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v50 = v48;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v3 + 8);
  v52(v49, v2);
  outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v52(v50, v2);
  outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v64;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *AudioUsoIntent.appShowTitles.getter()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appShowTitles.getter();
    v2 = *(v0 + 248);
    *(v0 + 248) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appShowTitles.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v83 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v71 = &v63 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v63 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v73 = &v63 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v72 = &v63 - v26;
  v27 = AudioUsoIntent.rootItems.getter();
  v28 = specialized Sequence.flatMap<A>(_:)(v27, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appShowTitles.getter, 0);

  if (v28 >> 62)
  {
    goto LABEL_55;
  }

  v74 = v28 & 0xFFFFFFFFFFFFFF8;
  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v63 = v28;
  if (v29)
  {
    v30 = 0;
    v69 = v28 + 32;
    v70 = v28 & 0xC000000000000001;
    v84 = v1 + 16;
    v28 = v1 + 8;
    v75 = (v1 + 32);
    v80 = (v1 + 48);
    v81 = (v1 + 56);
    v64 = MEMORY[0x277D84F90];
    v66 = v21;
    v67 = v17;
    v68 = v29;
    while (1)
    {
      if (v70)
      {
        v82 = MEMORY[0x223DDFF80](v30, v63);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v30 >= *(v74 + 16))
        {
          goto LABEL_54;
        }

        v82 = *(v69 + 8 * v30);

        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_53;
        }
      }

      v79 = v32;
      v33 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v34 = v33;
      v21 = *(v33 + 16);
      if (v21)
      {
        v17 = 0;
        v35 = v33 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
        while (v17 < *(v34 + 16))
        {
          (*(v1 + 16))(v11, v35 + *(v1 + 72) * v17, v0);
          v37 = UsoIdentifier.namespace.getter();
          if (v38)
          {
            if (v37 == 0x54776F6853707061 && v38 == 0xEE006449656C7469)
            {

LABEL_17:

              v39 = v72;
              (*v75)(v72, v11, v0);
              v40 = 0;
              v41 = v73;
              goto LABEL_19;
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
              goto LABEL_17;
            }
          }

          ++v17;
          (*v28)(v11, v0);
          if (v21 == v17)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v74 = v28 & 0xFFFFFFFFFFFFFF8;
        v29 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_18:

      v40 = 1;
      v39 = v72;
      v41 = v73;
LABEL_19:
      v42 = *v81;
      (*v81)(v39, v40, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v39, v41, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v76 = *v80;
      v43 = v76(v41, 1, v0);
      v77 = v42;
      if (v43 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v65 = 0;
        v78 = 0;
      }

      else
      {
        v44 = v71;
        (*v75)(v71, v41, v0);
        v65 = UsoIdentifier.value.getter();
        v78 = v45;
        (*v28)(v44, v0);
        outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v46 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v47 = v46;
      v21 = *(v46 + 16);
      if (v21)
      {
        v17 = 0;
        v48 = v46 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
        while (v17 < *(v47 + 16))
        {
          (*(v1 + 16))(v83, v48 + *(v1 + 72) * v17, v0);
          v50 = UsoIdentifier.namespace.getter();
          if (v51)
          {
            if (v50 == 0x54776F6853707061 && v51 == 0xEC000000656C7469)
            {

LABEL_31:

              v21 = v66;
              (*v75)(v66, v83, v0);
              v52 = 0;
              v17 = v67;
              goto LABEL_33;
            }

            v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v49)
            {
              goto LABEL_31;
            }
          }

          ++v17;
          (*v28)(v83, v0);
          if (v21 == v17)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_52;
      }

LABEL_32:

      v52 = 1;
      v21 = v66;
      v17 = v67;
LABEL_33:
      v77(v21, v52, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v21, v17, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v76(v17, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v30 = v79;
      }

      else
      {
        v53 = v71;
        (*v75)(v71, v17, v0);
        v77 = UsoIdentifier.value.getter();
        v55 = v54;

        (*v28)(v53, v0);
        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          v30 = v79;
          if (v55)
          {
            v56 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
            }

            v58 = v64[2];
            v57 = v64[3];
            if (v58 >= v57 >> 1)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v64);
            }

            v59 = v64;
            v64[2] = v58 + 1;
            v60 = &v59[4 * v58];
            v60[4] = v77;
            v60[5] = v55;
            v60[6] = v65;
            v60[7] = v56;
            v61 = v68;
            v30 = v79;
            goto LABEL_44;
          }
        }

        else
        {
          v30 = v79;
        }
      }

      v61 = v68;
LABEL_44:
      if (v30 == v61)
      {
        goto LABEL_50;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
LABEL_50:

  return v64;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appShowTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v7 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60, v8);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v59 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v53 - v21;
  v23 = type metadata accessor for UsoIdentifier();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v29 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v61 = v19;
  v62 = v22;
  if (v30)
  {
    v31 = v29;
    v32 = v30;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    v34 = v33 == 0;
  }

  else
  {
    v34 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v36 = result;
  v64 = *(result + 16);
  if (!v64)
  {

    v43 = v62;
    if (!v34)
    {
LABEL_19:
      LODWORD(v64) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v55 = v34;
  v56 = v3;
  v57 = v10;
  v58 = v2;
  v37 = 0;
  v38 = result + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v39 = (v24 + 8);
  while (1)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v24 + 16))(v28, v38 + *(v24 + 72) * v37, v23);
    v40 = UsoIdentifier.namespace.getter();
    if (!v41)
    {
      result = (*v39)(v28, v23);
      goto LABEL_9;
    }

    if (v40 == 0x54776F6853707061 && v41 == 0xEC000000656C7469)
    {
      break;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v39)(v28, v23);
    if (v42)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v64 == ++v37)
    {

      v10 = v57;
      v2 = v58;
      v3 = v56;
      v43 = v62;
      if (v55)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v39)(v28, v23);
LABEL_21:

  v10 = v57;
  v2 = v58;
  v3 = v56;
  v43 = v62;
  if (v55)
  {
    return 0;
  }

  LODWORD(v64) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v43, 1, 1, v2);
  }

  v44 = v61;
  (*(v3 + 104))(v61, *MEMORY[0x277D5ED88], v2);
  (*(v3 + 56))(v44, 0, 1, v2);
  v45 = *(v60 + 48);
  outlined init with copy of MediaUserStateCenter?(v43, v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v44, &v10[v45], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v46 = *(v3 + 48);
  if (v46(v10, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v46(&v10[v45], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v64;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v47 = v59;
  outlined init with copy of MediaUserStateCenter?(v10, v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v46(&v10[v45], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v61, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v47, v2);
    goto LABEL_31;
  }

  v48 = &v10[v45];
  v49 = v54;
  (*(v3 + 32))(v54, v48, v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v50 = v47;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v3 + 8);
  v52(v49, v2);
  outlined destroy of MediaUserStateCenter?(v61, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v52(v50, v2);
  outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v64;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *AudioUsoIntent.appAudiobookTitles.getter()
{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 256);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appAudiobookTitles.getter();
    v2 = *(v0 + 256);
    *(v0 + 256) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appAudiobookTitles.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v85 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v71 = &v63 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v63 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v73 = &v63 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v72 = &v63 - v26;
  v27 = AudioUsoIntent.rootItems.getter();
  v28 = specialized Sequence.flatMap<A>(_:)(v27, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appAudiobookTitles.getter, 0);

  if (v28 >> 62)
  {
    goto LABEL_56;
  }

  v74 = v28 & 0xFFFFFFFFFFFFFF8;
  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v63 = v28;
  if (v29)
  {
    v30 = 0;
    v69 = v28 + 32;
    v70 = v28 & 0xC000000000000001;
    v84 = 0x80000002234D9E60;
    v86 = v1 + 16;
    v31 = (v1 + 8);
    v75 = (v1 + 32);
    v80 = (v1 + 48);
    v81 = (v1 + 56);
    v64 = MEMORY[0x277D84F90];
    v83 = 0x80000002234D9650;
    v67 = v17;
    v66 = v21;
    v68 = v29;
    while (1)
    {
      if (v70)
      {
        v34 = MEMORY[0x223DDFF80](v30, v63);
        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v30 >= *(v74 + 16))
        {
          goto LABEL_55;
        }

        v33 = *(v69 + 8 * v30);

        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      v79 = v36;
      v82 = v34;
      v37 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v38 = v37;
      v28 = *(v37 + 16);
      if (v28)
      {
        v21 = 0;
        v17 = (v37 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v21 < *(v38 + 16))
        {
          (*(v1 + 16))(v11, &v17[*(v1 + 72) * v21], v0);
          v40 = UsoIdentifier.namespace.getter();
          if (v41)
          {
            if (v40 == 0xD000000000000013 && v41 == v84)
            {

LABEL_19:

              v42 = v72;
              (*v75)(v72, v11, v0);
              v43 = 0;
              v44 = v73;
              goto LABEL_21;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_19;
            }
          }

          ++v21;
          (*v31)(v11, v0);
          if (v28 == v21)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v74 = v28 & 0xFFFFFFFFFFFFFF8;
        v29 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_20:

      v43 = 1;
      v42 = v72;
      v44 = v73;
LABEL_21:
      v45 = *v81;
      (*v81)(v42, v43, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v42, v44, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v46 = *v80;
      v47 = (*v80)(v44, 1, v0);
      v76 = v46;
      v77 = v45;
      if (v47 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v65 = 0;
        v78 = 0;
      }

      else
      {
        v48 = v71;
        (*v75)(v71, v44, v0);
        v65 = UsoIdentifier.value.getter();
        v78 = v49;
        (*v31)(v48, v0);
        outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v50 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v51 = v50;
      v28 = *(v50 + 16);
      if (v28)
      {
        v21 = 0;
        v17 = (v50 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v21 < *(v51 + 16))
        {
          (*(v1 + 16))(v85, &v17[*(v1 + 72) * v21], v0);
          v53 = UsoIdentifier.namespace.getter();
          if (v54)
          {
            if (v53 == 0xD000000000000011 && v54 == v83)
            {

LABEL_33:

              v21 = v66;
              (*v75)(v66, v85, v0);
              v55 = 0;
              v17 = v67;
              goto LABEL_35;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v52)
            {
              goto LABEL_33;
            }
          }

          ++v21;
          (*v31)(v85, v0);
          if (v28 == v21)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_53;
      }

LABEL_34:

      v55 = 1;
      v17 = v67;
      v21 = v66;
LABEL_35:
      v77(v21, v55, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v21, v17, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v76(v17, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v28 = v71;
        (*v75)(v71, v17, v0);
        v77 = UsoIdentifier.value.getter();
        v57 = v56;

        (*v31)(v28, v0);
        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          if (v57)
          {
            v58 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
            }

            v28 = v64[2];
            v59 = v64[3];
            if (v28 >= v59 >> 1)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v28 + 1, 1, v64);
            }

            v60 = v64;
            v64[2] = v28 + 1;
            v61 = &v60[4 * v28];
            v61[4] = v77;
            v61[5] = v57;
            v61[6] = v65;
            v61[7] = v58;
          }

          else
          {
LABEL_40:
          }

          v32 = v68;
          goto LABEL_6;
        }
      }

      v32 = v68;

LABEL_6:
      v30 = v79;
      if (v79 == v32)
      {
        goto LABEL_51;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
LABEL_51:

  return v64;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appAudiobookTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v58 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v53 - v22;
  v24 = type metadata accessor for UsoIdentifier();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v30 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v60 = v20;
  v61 = v23;
  v59 = v7;
  if (v31)
  {
    v32 = v30;
    v33 = v31;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    v35 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v37 = result;
  v64 = *(result + 16);
  if (!v64)
  {

    v44 = v61;
    if (!v35)
    {
LABEL_19:
      LODWORD(v64) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v54 = v35;
  v55 = v3;
  v56 = v11;
  v57 = v2;
  v38 = 0;
  v39 = result + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v63 = 0x80000002234D9650;
  v40 = (v25 + 8);
  while (1)
  {
    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v25 + 16))(v29, v39 + *(v25 + 72) * v38, v24);
    v41 = UsoIdentifier.namespace.getter();
    if (!v42)
    {
      result = (*v40)(v29, v24);
      goto LABEL_9;
    }

    if (v41 == 0xD000000000000011 && v42 == v63)
    {
      break;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v40)(v29, v24);
    if (v43)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v64 == ++v38)
    {

      v11 = v56;
      v2 = v57;
      v3 = v55;
      v44 = v61;
      if (v54)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v40)(v29, v24);
LABEL_21:

  v11 = v56;
  v2 = v57;
  v3 = v55;
  v44 = v61;
  if (v54)
  {
    return 0;
  }

  LODWORD(v64) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v44, 1, 1, v2);
  }

  v45 = v60;
  (*(v3 + 104))(v60, *MEMORY[0x277D5ED28], v2);
  (*(v3 + 56))(v45, 0, 1, v2);
  v46 = *(v59 + 48);
  outlined init with copy of MediaUserStateCenter?(v44, v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v45, &v11[v46], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v47 = *(v3 + 48);
  if (v47(v11, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v47(&v11[v46], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v64;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v48 = v58;
  outlined init with copy of MediaUserStateCenter?(v11, v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v47(&v11[v46], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v48, v2);
    goto LABEL_31;
  }

  v49 = v53;
  (*(v3 + 32))(v53, &v11[v46], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v50 = v48;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v3 + 8);
  v52(v49, v2);
  outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v52(v50, v2);
  outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v64;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *AudioUsoIntent.appMusicArtistNames.getter()
{
  if (*(v0 + 264))
  {
    v1 = *(v0 + 264);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appMusicArtistNames.getter();
    v2 = *(v0 + 264);
    *(v0 + 264) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appMusicArtistNames.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v85 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v71 = &v63 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v63 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v73 = &v63 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v72 = &v63 - v26;
  v27 = AudioUsoIntent.rootItems.getter();
  v28 = specialized Sequence.flatMap<A>(_:)(v27, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appMusicArtistNames.getter, 0);

  if (v28 >> 62)
  {
    goto LABEL_56;
  }

  v74 = v28 & 0xFFFFFFFFFFFFFF8;
  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v63 = v28;
  if (v29)
  {
    v30 = 0;
    v69 = v28 + 32;
    v70 = v28 & 0xC000000000000001;
    v84 = 0x80000002234D9E80;
    v86 = v1 + 16;
    v31 = (v1 + 8);
    v75 = (v1 + 32);
    v80 = (v1 + 48);
    v81 = (v1 + 56);
    v64 = MEMORY[0x277D84F90];
    v83 = 0x80000002234D9630;
    v67 = v17;
    v66 = v21;
    v68 = v29;
    while (1)
    {
      if (v70)
      {
        v34 = MEMORY[0x223DDFF80](v30, v63);
        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v30 >= *(v74 + 16))
        {
          goto LABEL_55;
        }

        v33 = *(v69 + 8 * v30);

        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      v79 = v36;
      v82 = v34;
      v37 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v38 = v37;
      v28 = *(v37 + 16);
      if (v28)
      {
        v21 = 0;
        v17 = (v37 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v21 < *(v38 + 16))
        {
          (*(v1 + 16))(v11, &v17[*(v1 + 72) * v21], v0);
          v40 = UsoIdentifier.namespace.getter();
          if (v41)
          {
            if (v40 == 0xD000000000000014 && v41 == v84)
            {

LABEL_19:

              v42 = v72;
              (*v75)(v72, v11, v0);
              v43 = 0;
              v44 = v73;
              goto LABEL_21;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_19;
            }
          }

          ++v21;
          (*v31)(v11, v0);
          if (v28 == v21)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v74 = v28 & 0xFFFFFFFFFFFFFF8;
        v29 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_20:

      v43 = 1;
      v42 = v72;
      v44 = v73;
LABEL_21:
      v45 = *v81;
      (*v81)(v42, v43, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v42, v44, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v46 = *v80;
      v47 = (*v80)(v44, 1, v0);
      v76 = v46;
      v77 = v45;
      if (v47 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v65 = 0;
        v78 = 0;
      }

      else
      {
        v48 = v71;
        (*v75)(v71, v44, v0);
        v65 = UsoIdentifier.value.getter();
        v78 = v49;
        (*v31)(v48, v0);
        outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v50 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v51 = v50;
      v28 = *(v50 + 16);
      if (v28)
      {
        v21 = 0;
        v17 = (v50 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v21 < *(v51 + 16))
        {
          (*(v1 + 16))(v85, &v17[*(v1 + 72) * v21], v0);
          v53 = UsoIdentifier.namespace.getter();
          if (v54)
          {
            if (v53 == 0xD000000000000012 && v54 == v83)
            {

LABEL_33:

              v21 = v66;
              (*v75)(v66, v85, v0);
              v55 = 0;
              v17 = v67;
              goto LABEL_35;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v52)
            {
              goto LABEL_33;
            }
          }

          ++v21;
          (*v31)(v85, v0);
          if (v28 == v21)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_53;
      }

LABEL_34:

      v55 = 1;
      v17 = v67;
      v21 = v66;
LABEL_35:
      v77(v21, v55, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v21, v17, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v76(v17, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v28 = v71;
        (*v75)(v71, v17, v0);
        v77 = UsoIdentifier.value.getter();
        v57 = v56;

        (*v31)(v28, v0);
        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          if (v57)
          {
            v58 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
            }

            v28 = v64[2];
            v59 = v64[3];
            if (v28 >= v59 >> 1)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v28 + 1, 1, v64);
            }

            v60 = v64;
            v64[2] = v28 + 1;
            v61 = &v60[4 * v28];
            v61[4] = v77;
            v61[5] = v57;
            v61[6] = v65;
            v61[7] = v58;
          }

          else
          {
LABEL_40:
          }

          v32 = v68;
          goto LABEL_6;
        }
      }

      v32 = v68;

LABEL_6:
      v30 = v79;
      if (v79 == v32)
      {
        goto LABEL_51;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
LABEL_51:

  return v64;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.appMusicArtistNames.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v58 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v53 - v22;
  v24 = type metadata accessor for UsoIdentifier();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v30 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v60 = v20;
  v61 = v23;
  v59 = v7;
  if (v31)
  {
    v32 = v30;
    v33 = v31;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    v35 = 1;
  }

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v37 = result;
  v64 = *(result + 16);
  if (!v64)
  {

    v44 = v61;
    if (!v35)
    {
LABEL_19:
      LODWORD(v64) = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v54 = v35;
  v55 = v3;
  v56 = v11;
  v57 = v2;
  v38 = 0;
  v39 = result + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v63 = 0x80000002234D9630;
  v40 = (v25 + 8);
  while (1)
  {
    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v25 + 16))(v29, v39 + *(v25 + 72) * v38, v24);
    v41 = UsoIdentifier.namespace.getter();
    if (!v42)
    {
      result = (*v40)(v29, v24);
      goto LABEL_9;
    }

    if (v41 == 0xD000000000000012 && v42 == v63)
    {
      break;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v40)(v29, v24);
    if (v43)
    {
      goto LABEL_21;
    }

LABEL_9:
    if (v64 == ++v38)
    {

      v11 = v56;
      v2 = v57;
      v3 = v55;
      v44 = v61;
      if (v54)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  (*v40)(v29, v24);
LABEL_21:

  v11 = v56;
  v2 = v57;
  v3 = v55;
  v44 = v61;
  if (v54)
  {
    return 0;
  }

  LODWORD(v64) = 1;
LABEL_23:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v44, 1, 1, v2);
  }

  v45 = v60;
  (*(v3 + 104))(v60, *MEMORY[0x277D5EDC0], v2);
  (*(v3 + 56))(v45, 0, 1, v2);
  v46 = *(v59 + 48);
  outlined init with copy of MediaUserStateCenter?(v44, v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v45, &v11[v46], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v47 = *(v3 + 48);
  if (v47(v11, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v47(&v11[v46], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v64;
    }

LABEL_31:
    outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v48 = v58;
  outlined init with copy of MediaUserStateCenter?(v11, v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v47(&v11[v46], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v48, v2);
    goto LABEL_31;
  }

  v49 = v53;
  (*(v3 + 32))(v53, &v11[v46], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v50 = v48;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v3 + 8);
  v52(v49, v2);
  outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v52(v50, v2);
  outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v64;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void *AudioUsoIntent.appAudiobookAuthors.getter()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.appAudiobookAuthors.getter();
    v2 = *(v0 + 272);
    *(v0 + 272) = v1;
  }

  return v1;
}

void *closure #1 in AudioUsoIntent.appAudiobookAuthors.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v85 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v71 = &v63 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v63 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v73 = &v63 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v72 = &v63 - v26;
  v27 = AudioUsoIntent.rootItems.getter();
  v28 = specialized Sequence.flatMap<A>(_:)(v27, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.appAudiobookAuthors.getter, 0);

  if (v28 >> 62)
  {
    goto LABEL_56;
  }

  v74 = v28 & 0xFFFFFFFFFFFFFF8;
  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v63 = v28;
  if (v29)
  {
    v30 = 0;
    v69 = v28 + 32;
    v70 = v28 & 0xC000000000000001;
    v84 = 0x80000002234D9EA0;
    v86 = v1 + 16;
    v31 = (v1 + 8);
    v75 = (v1 + 32);
    v80 = (v1 + 48);
    v81 = (v1 + 56);
    v64 = MEMORY[0x277D84F90];
    v83 = 0x80000002234D9670;
    v67 = v17;
    v66 = v21;
    v68 = v29;
    while (1)
    {
      if (v70)
      {
        v34 = MEMORY[0x223DDFF80](v30, v63);
        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v30 >= *(v74 + 16))
        {
          goto LABEL_55;
        }

        v33 = *(v69 + 8 * v30);

        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      v79 = v36;
      v82 = v34;
      v37 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v38 = v37;
      v28 = *(v37 + 16);
      if (v28)
      {
        v21 = 0;
        v17 = (v37 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v21 < *(v38 + 16))
        {
          (*(v1 + 16))(v11, &v17[*(v1 + 72) * v21], v0);
          v40 = UsoIdentifier.namespace.getter();
          if (v41)
          {
            if (v40 == 0xD000000000000014 && v41 == v84)
            {

LABEL_19:

              v42 = v72;
              (*v75)(v72, v11, v0);
              v43 = 0;
              v44 = v73;
              goto LABEL_21;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_19;
            }
          }

          ++v21;
          (*v31)(v11, v0);
          if (v28 == v21)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v74 = v28 & 0xFFFFFFFFFFFFFF8;
        v29 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

LABEL_20:

      v43 = 1;
      v42 = v72;
      v44 = v73;
LABEL_21:
      v45 = *v81;
      (*v81)(v42, v43, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v42, v44, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v46 = *v80;
      v47 = (*v80)(v44, 1, v0);
      v76 = v46;
      v77 = v45;
      if (v47 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v65 = 0;
        v78 = 0;
      }

      else
      {
        v48 = v71;
        (*v75)(v71, v44, v0);
        v65 = UsoIdentifier.value.getter();
        v78 = v49;
        (*v31)(v48, v0);
        outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      v50 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      v51 = v50;
      v28 = *(v50 + 16);
      if (v28)
      {
        v21 = 0;
        v17 = (v50 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
        while (v21 < *(v51 + 16))
        {
          (*(v1 + 16))(v85, &v17[*(v1 + 72) * v21], v0);
          v53 = UsoIdentifier.namespace.getter();
          if (v54)
          {
            if (v53 == 0xD000000000000012 && v54 == v83)
            {

LABEL_33:

              v21 = v66;
              (*v75)(v66, v85, v0);
              v55 = 0;
              v17 = v67;
              goto LABEL_35;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v52)
            {
              goto LABEL_33;
            }
          }

          ++v21;
          (*v31)(v85, v0);
          if (v28 == v21)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_53;
      }

LABEL_34:

      v55 = 1;
      v17 = v67;
      v21 = v66;
LABEL_35:
      v77(v21, v55, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v21, v17, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v76(v17, 1, v0) == 1)
      {

        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v28 = v71;
        (*v75)(v71, v17, v0);
        v77 = UsoIdentifier.value.getter();
        v57 = v56;

        (*v31)(v28, v0);
        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v78)
        {
          if (v57)
          {
            v58 = v78;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
            }

            v28 = v64[2];
            v59 = v64[3];
            if (v28 >= v59 >> 1)
            {
              v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v28 + 1, 1, v64);
            }

            v60 = v64;
            v64[2] = v28 + 1;
            v61 = &v60[4 * v28];
            v61[4] = v77;
            v61[5] = v57;
            v61[6] = v65;
            v61[7] = v58;
          }

          else
          {
LABEL_40:
          }

          v32 = v68;
          goto LABEL_6;
        }
      }

      v32 = v68;

LABEL_6:
      v30 = v79;
      if (v79 == v32)
      {
        goto LABEL_51;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
LABEL_51:

  return v64;
}