uint64_t closure #1 in closure #1 in AudioUsoIntent.appAudiobookAuthors.getter(uint64_t a1)
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
  v63 = 0x80000002234D9670;
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

uint64_t AudioUsoIntent.noun.getter()
{
  result = *(v0 + 280);
  if (result == 4)
  {
    result = closure #1 in AudioUsoIntent.noun.getter(v0);
    *(v0 + 280) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.noun.getter(uint64_t a1)
{
  v45 = type metadata accessor for UsoIdentifier();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v45 - 8, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v7 = AudioUsoIntent.rootItems.getter();
  v8 = v7;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_48:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v10 != v11)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223DDFF80](v11, v8);
      if (__OFADD__(v11, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v13 = *(v8 + 8 * v11 + 32);

      if (__OFADD__(v11, 1))
      {
        goto LABEL_12;
      }
    }

    v14 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v12, v13);

    ++v11;
    if (v14)
    {
      goto LABEL_42;
    }
  }

  v15 = *(v46 + 176);

  v17 = specialized Sequence.flatMap<A>(_:)(v16, v12, closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v18 = v17;
  v47 = v12;
  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v45;
    if (v19)
    {
      goto LABEL_15;
    }

LABEL_50:
    v35 = MEMORY[0x277D84F90];

    if (v35 < 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  v19 = __CocoaSet.count.getter();
  v18 = v17;
  v20 = v45;
  if (!v19)
  {
    goto LABEL_50;
  }

LABEL_15:
  v9 = 0;
  v41 = v18 & 0xFFFFFFFFFFFFFF8;
  v42 = v18 & 0xC000000000000001;
  v38 = v18;
  v39 = v19;
  v40 = v18 + 32;
  v46 = v2 + 16;
  v8 = v2 + 8;
  while (1)
  {
LABEL_17:
    if (v42)
    {
      v21 = MEMORY[0x223DDFF80](v9, v38);
      v22 = __OFADD__(v9++, 1);
      if (v22)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v9 >= *(v41 + 16))
      {
        goto LABEL_47;
      }

      v21 = *(v40 + 8 * v9);

      v22 = __OFADD__(v9++, 1);
      if (v22)
      {
LABEL_41:
        __break(1u);
LABEL_42:

        return 0;
      }
    }

    v23 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v24 = v23;
    v25 = *(v23 + 16);
    if (v25)
    {
      break;
    }

    if (v9 == v19)
    {
      goto LABEL_43;
    }
  }

  v43 = v21;
  v44 = v9;
  v26 = 0;
  v9 = v23 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    (*(v2 + 16))(v6, v9 + *(v2 + 72) * v26, v20);
    v27 = UsoIdentifier.namespace.getter();
    if (!v28)
    {
LABEL_22:
      (*v8)(v6, v20);
      goto LABEL_23;
    }

    if (v27 == 0x616C50616964656DLL && v28 == 0xEF6E756F4E726579)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    UsoIdentifier.value.getter();
    v30 = String.lowercased()();

    v31 = String.lowercased()();
    if (v30._countAndFlagsBits == v31._countAndFlagsBits && v30._object == v31._object)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v45;
    (*v8)(v6, v45);
    if (v32)
    {
      goto LABEL_36;
    }

LABEL_23:
    if (v25 == ++v26)
    {

      goto LABEL_37;
    }
  }

  v20 = v45;
  (*v8)(v6, v45);
LABEL_36:

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v33 = *(v47 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
LABEL_37:
  v19 = v39;
  v9 = v44;
  if (v44 != v39)
  {
    goto LABEL_17;
  }

LABEL_43:
  v35 = v47;

  if (v35 < 0)
  {
LABEL_57:
    v36 = __CocoaSet.count.getter();
    goto LABEL_53;
  }

LABEL_51:
  if ((v35 & 0x4000000000000000) != 0)
  {
    goto LABEL_57;
  }

  v36 = *(v35 + 16);
LABEL_53:

  if (v36)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.noun.getter()
{
  v0 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v29 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v29 - v21;
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v1 + 56))(v22, 1, 1, v0);
  }

  (*(v1 + 104))(v19, *MEMORY[0x277D5EE00], v0);
  (*(v1 + 56))(v19, 0, 1, v0);
  v23 = *(v5 + 48);
  outlined init with copy of MediaUserStateCenter?(v22, v9, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v19, &v9[v23], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v24 = *(v1 + 48);
  if (v24(v9, 1, v0) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v9, v15, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v24(&v9[v23], 1, v0) != 1)
    {
      v26 = v30;
      (*(v1 + 32))(v30, &v9[v23], v0);
      _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v1 + 8);
      v27(v26, v0);
      outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v27(v15, v0);
      outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v25 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v1 + 8))(v15, v0);
    goto LABEL_9;
  }

  outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v24(&v9[v23], 1, v0) != 1)
  {
LABEL_9:
    outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    v25 = 0;
    return v25 & 1;
  }

  outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v25 = 1;
  return v25 & 1;
}

uint64_t AudioUsoIntent.dateTime.getter()
{
  v1 = *(v0 + 288);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in AudioUsoIntent.dateTime.getter();
    v3 = *(v0 + 288);
    *(v0 + 288) = v2;

    _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v3);
  }

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(v1);
  return v2;
}

uint64_t closure #1 in AudioUsoIntent.dateTime.getter()
{
  v0 = AudioUsoIntent.rootItems.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_15:
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
        goto LABEL_15;
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

      v8 = dispatch thunk of UsoEntity_common_MediaItem.dateTime.getter();

      return v8;
    }
  }

  return 0;
}

uint64_t AudioUsoIntent.attributes.getter()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 296);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.attributes.getter(v0);
    v2 = *(v0 + 296);
    *(v0 + 296) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.attributes.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v39 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v38 - v22;
  v42 = MEMORY[0x277D84FA0];
  v24 = AudioUsoIntent.rootItems.getter();
  v25 = specialized Sequence.flatMap<A>(_:)(v24, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.attributes.getter, 0);

  specialized Sequence.forEach(_:)(v25, &v42);

  v40 = a1;
  if (*(a1 + 40) && (v26 = *(a1 + 40), , dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter(), , v41[0]) && (v27 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter(), , v27))
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v23, 1, 1, v2);
  }

  (*(v3 + 104))(v20, *MEMORY[0x277D5EDE0], v2);
  (*(v3 + 56))(v20, 0, 1, v2);
  v28 = *(v7 + 48);
  outlined init with copy of MediaUserStateCenter?(v23, v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v20, &v11[v28], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v29 = *(v3 + 48);
  if (v29(v11, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v20, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v23, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v29(&v11[v28], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_13:
      specialized Set._Variant.insert(_:)(v41, 3);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v30 = v39;
  outlined init with copy of MediaUserStateCenter?(v11, v39, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v29(&v11[v28], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v20, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v23, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v30, v2);
LABEL_11:
    outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_14;
  }

  v31 = v38;
  (*(v3 + 32))(v38, &v11[v28], v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v32 = v30;
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v3 + 8);
  v34(v31, v2);
  outlined destroy of MediaUserStateCenter?(v20, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v23, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v34(v32, v2);
  outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v33)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (*(v40 + 56))
  {
    v35 = *(v40 + 56);

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();

    if (v41[0])
    {
      dispatch thunk of UsoEntity_common_MediaItem.name.getter();
      if (v36)
      {

        specialized Set._Variant.insert(_:)(v41, 11);
      }

      if (dispatch thunk of UsoEntity_common_MediaItem.dateTime.getter())
      {

        specialized Set._Variant.insert(_:)(v41, 13);
      }

      if (dispatch thunk of UsoEntity_common_MediaItem.totalDuration.getter())
      {

        specialized Set._Variant.insert(_:)(v41, 14);
      }
    }
  }

  return v42;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.attributes.getter()
{
  if (!UsoEntity_common_MediaItem.isFromArtist()() && !UsoEntity_common_MediaItem.isFromSong()() && !UsoEntity_common_MediaItem.isFromAlbum()() && !UsoEntity_common_MediaItem.isRecommended()() && !UsoEntity_common_MediaItem.isAffinity()() && !UsoEntity_common_MediaItem.isDiscover()() && !UsoEntity_common_MediaItem.isAddToUnspecifiedPlaylist()())
  {
    result = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

char *AudioUsoIntent.musicTitles.getter()
{
  if (*(v0 + 304))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.musicTitles.getter);
    v2 = *(v0 + 304);
    *(v0 + 304) = v1;
  }

  return v1;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.albums.getter(uint64_t a1, unsigned int *a2)
{
  v37 = a2;
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v36 - v23;
  v25 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v26)
  {
    v27 = v25;
    v28 = v26;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
      {
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      }

      else
      {
        (*(v3 + 56))(v24, 1, 1, v2);
      }

      (*(v3 + 104))(v21, *v37, v2);
      (*(v3 + 56))(v21, 0, 1, v2);
      v31 = *(v7 + 48);
      outlined init with copy of MediaUserStateCenter?(v24, v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v21, &v11[v31], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v32 = *(v3 + 48);
      if (v32(v11, 1, v2) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v24, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v32(&v11[v31], 1, v2) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v30 = 1;
          return v30 & 1;
        }
      }

      else
      {
        outlined init with copy of MediaUserStateCenter?(v11, v17, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v32(&v11[v31], 1, v2) != 1)
        {
          v33 = v36;
          (*(v3 + 32))(v36, &v11[v31], v2);
          _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *(v3 + 8);
          v34(v33, v2);
          outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v24, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v34(v17, v2);
          outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          return v30 & 1;
        }

        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v24, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        (*(v3 + 8))(v17, v2);
      }

      outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
      v30 = 0;
      return v30 & 1;
    }
  }

  v30 = 0;
  return v30 & 1;
}

char *AudioUsoIntent.playlistTitles.getter()
{
  if (*(v0 + 312))
  {
    v1 = *(v0 + 312);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.playlistTitles.getter(v0);
    v2 = *(v0 + 312);
    *(v0 + 312) = v1;
  }

  return v1;
}

char *closure #1 in AudioUsoIntent.playlistTitles.getter(uint64_t a1)
{
  v1 = (*(*a1 + 1544))();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_20:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DDFF80](v5, v2);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_19;
      }

      v7 = *(v2 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v9 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
    v11 = v10;

    ++v5;
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
      v5 = v8;
    }
  }

  return v6;
}

unint64_t AudioUsoIntent.playlistMediaItems.getter()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 320);
  }

  else
  {
    v2 = AudioUsoIntent.rootItems.getter();
    v1 = specialized Sequence.flatMap<A>(_:)(v2, MEMORY[0x277D84F90], specialized closure #1 in closure #1 in AudioUsoIntent.playlistMediaItems.getter, 0);

    v3 = *(v0 + 320);
    *(v0 + 320) = v1;
  }

  return v1;
}

char *AudioUsoIntent.applePlaylistTitles.getter()
{
  if (*(v0 + 328))
  {
    v1 = *(v0 + 328);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, specialized closure #1 in closure #1 in AudioUsoIntent.applePlaylistTitles.getter);
    v2 = *(v0 + 328);
    *(v0 + 328) = v1;
  }

  return v1;
}

uint64_t AudioUsoIntent.appName.getter()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = closure #1 in AudioUsoIntent.appName.getter();
    v4 = *(v0 + 336);
    v5 = *(v0 + 344);
    *(v0 + 336) = v3;
    *(v0 + 344) = v6;

    outlined consume of String??(v4, v5);
  }

  outlined copy of String??(v1, v2);
  return v3;
}

uint64_t closure #1 in AudioUsoIntent.appName.getter()
{
  if (AudioUsoIntent.referenceMediaItem.getter() || (result = AudioUsoIntent.targetMediaItem.getter()) != 0)
  {
    if (dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter())
    {
      v1 = dispatch thunk of UsoEntity_common_App.name.getter();

      return v1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

char *AudioUsoIntent.showTitles.getter()
{
  if (*(v0 + 352))
  {
    v1 = *(v0 + 352);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.showTitles.getter);
    v2 = *(v0 + 352);
    *(v0 + 352) = v1;
  }

  return v1;
}

char *AudioUsoIntent.podcastTitles.getter()
{
  if (*(v0 + 360))
  {
    v1 = *(v0 + 360);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, specialized closure #1 in closure #1 in AudioUsoIntent.podcastTitles.getter);
    v2 = *(v0 + 360);
    *(v0 + 360) = v1;
  }

  return v1;
}

char *AudioUsoIntent.applePodcastTitles.getter()
{
  if (*(v0 + 368))
  {
    v1 = *(v0 + 368);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, specialized closure #1 in closure #1 in AudioUsoIntent.applePodcastTitles.getter);
    v2 = *(v0 + 368);
    *(v0 + 368) = v1;
  }

  return v1;
}

char *AudioUsoIntent.radioStationNames.getter()
{
  if (*(v0 + 376))
  {
    v1 = *(v0 + 376);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.entities.getter(v0, closure #1 in closure #1 in AudioUsoIntent.radioStationNames.getter);
    v2 = *(v0 + 376);
    *(v0 + 376) = v1;
  }

  return v1;
}

uint64_t AudioUsoIntent.decade.getter()
{
  result = *(v0 + 384);
  if (result == 12)
  {
    result = closure #1 in AudioUsoIntent.decade.getter();
    *(v0 + 384) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.decade.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v56 - v13;
  v15 = AudioUsoIntent.rootItems.getter();
  v16 = MEMORY[0x277D84F90];
  v17 = specialized Sequence.flatMap<A>(_:)(v15, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v18 = Array<A>.identifiers(forNamespace:)(1uLL, v17);

  v64 = *(v18 + 16);
  if (v64)
  {
    v21 = 0;
    v63 = v18 + 32;
    v70 = 0x80000002234D9D10;
    v71 = v1 + 16;
    v22 = (v1 + 8);
    v57 = (v1 + 32);
    v60 = (v1 + 48);
    v61 = (v1 + 56);
    v56 = MEMORY[0x277D84F90];
    *&v20 = 136315138;
    v58 = v20;
    v65 = v11;
    v66 = v14;
    v62 = v18;
    while (1)
    {
      if (v21 >= *(v18 + 16))
      {
LABEL_42:
        __break(1u);
        return result;
      }

      v23 = *(v63 + 8 * v21);
      v24 = *(v23 + 16);
      if (v24)
      {
        v69 = v21;
        v25 = v23 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

        v26 = 0;
        while (v26 < *(v23 + 16))
        {
          (*(v1 + 16))(v5, v25 + *(v1 + 72) * v26, v0);
          v28 = UsoIdentifier.namespace.getter();
          if (v29)
          {
            if (v28 == 0xD000000000000012 && v29 == v70)
            {

LABEL_13:
              v14 = v66;
              (*v57)(v66, v5, v0);
              v30 = 0;
              v11 = v65;
LABEL_16:
              v21 = v69;
              goto LABEL_17;
            }

            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v27)
            {
              goto LABEL_13;
            }
          }

          ++v26;
          result = (*v22)(v5, v0);
          if (v24 == v26)
          {
            v30 = 1;
            v11 = v65;
            v14 = v66;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v31 = *(v63 + 8 * v21);

      v30 = 1;
LABEL_17:
      ++v21;
      (*v61)(v14, v30, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v14, v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if ((*v60)(v11, 1, v0) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v67 = 0;
        v32 = 0;
      }

      else
      {
        v67 = UsoIdentifier.value.getter();
        v32 = v33;
        (*v22)(v11, v0);
        if (one-time initialization token for mappingDecade != -1)
        {
          swift_once();
        }

        v34 = static CommonAudio.Decade.mappingDecade;
        if (*(static CommonAudio.Decade.mappingDecade + 16))
        {
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v32);
          if (v36)
          {
            v69 = v21;
            v51 = *(*(v34 + 56) + v35);

            v14 = v66;
            outlined destroy of MediaUserStateCenter?(v66, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
              v56 = result;
            }

            v53 = *(v56 + 2);
            v52 = *(v56 + 3);
            if (v53 >= v52 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v56);
              v56 = result;
            }

            v54 = v56;
            *(v56 + 2) = v53 + 1;
            v54[v53 + 32] = v51;
            v50 = v64;
            v21 = v69;
            goto LABEL_29;
          }
        }
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.pommes);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      v68 = v38;
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v69 = v21;
        v41 = v40;
        v59 = swift_slowAlloc();
        v73 = v32;
        v74 = v59;
        *v41 = v58;
        v72 = v67;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v42 = String.init<A>(describing:)();
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v74);

        *(v41 + 4) = v44;
        v14 = v66;
        v45 = v39;
        v46 = v68;
        _os_log_impl(&dword_2232BB000, v68, v45, "CommonAudio#Decade#from received unregistered decade: %s", v41, 0xCu);
        v47 = v59;
        __swift_destroy_boxed_opaque_existential_1(v59);
        v48 = v47;
        v11 = v65;
        MEMORY[0x223DE0F80](v48, -1, -1);
        v49 = v41;
        v21 = v69;
        MEMORY[0x223DE0F80](v49, -1, -1);
      }

      else
      {

        v11 = v65;
        v14 = v66;
      }

      result = outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v50 = v64;
LABEL_29:
      v18 = v62;
      if (v21 == v50)
      {
        goto LABEL_37;
      }
    }
  }

  v56 = v16;
LABEL_37:

  if (*(v56 + 2))
  {
    v55 = v56[32];
  }

  else
  {
    v55 = 11;
  }

  return v55;
}

uint64_t AudioUsoIntent.sort.getter()
{
  result = *(v0 + 385);
  if (result == 10)
  {
    result = closure #1 in AudioUsoIntent.sort.getter();
    *(v0 + 385) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.sort.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - v8;
  v10 = AudioUsoIntent.rootItems.getter();
  v11 = v10;
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    v10 = __CocoaSet.count.getter();
    v13 = v10;
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v14)
    {
      goto LABEL_44;
    }

    if ((v11 & 0xC000000000000001) == 0)
    {
      if (v14 < *(v12 + 16))
      {
        v16 = *(v11 + 8 * v14 + 32);

        if (__OFADD__(v14, 1))
        {
          break;
        }

        goto LABEL_8;
      }

      __break(1u);
LABEL_30:
      if (v10 == *MEMORY[0x277D5EE70])
      {
        v21 = 1;
        goto LABEL_47;
      }

      if (v10 != *MEMORY[0x277D5EE78])
      {
        if (v10 == *MEMORY[0x277D5EE98])
        {
          v21 = 5;
        }

        else if (v10 == *MEMORY[0x277D5EE80])
        {
          v21 = 2;
        }

        else if (v10 == *MEMORY[0x277D5EEA8])
        {
          v21 = 7;
        }

        else
        {
          if (v10 != *MEMORY[0x277D5EEB0])
          {
            (*(v0 + 8))(v6, v11);
            goto LABEL_46;
          }

          v21 = 6;
        }

LABEL_47:
        outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
        return v21;
      }

LABEL_28:
      v21 = 0;
      goto LABEL_47;
    }

    v16 = MEMORY[0x223DDFF80](v14, v11);
    if (__OFADD__(v14, 1))
    {
      break;
    }

LABEL_8:
    v0 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v15, v16);

    ++v14;
    if (v0)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:

  v17 = dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter();

  if (!v17 || (v18 = dispatch thunk of UsoEntity_common_SearchQualifier.sortDirections.getter(), , !v18))
  {
LABEL_24:

    goto LABEL_45;
  }

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_43:

LABEL_44:

LABEL_45:
    v22 = type metadata accessor for UsoEntity_common_SortDirection.DefinedValues();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
LABEL_46:
    v21 = 9;
    goto LABEL_47;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_43;
  }

LABEL_17:
  if ((v18 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DDFF80](0, v18);
LABEL_20:

    dispatch thunk of CodeGenListEntry.entry.getter();

    if (v23[1])
    {
      dispatch thunk of UsoEntity_common_SortDirection.definedValue.getter();

      v11 = type metadata accessor for UsoEntity_common_SortDirection.DefinedValues();
      v0 = *(v11 - 8);
      if ((*(v0 + 48))(v9, 1, v11) == 1)
      {
        goto LABEL_46;
      }

      outlined init with copy of MediaUserStateCenter?(v9, v6, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_SortDirectionC13DefinedValuesOSgMR);
      LODWORD(v10) = (*(v0 + 88))(v6, v11);
      if (v10 == *MEMORY[0x277D5EE90])
      {
        v21 = 4;
        goto LABEL_47;
      }

      if (v10 == *MEMORY[0x277D5EE88])
      {
        v21 = 3;
        goto LABEL_47;
      }

      if (v10 == *MEMORY[0x277D5EEA0])
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v18 + 32);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in AudioUsoIntent.sort.getter()
{
  result = dispatch thunk of CodeGenGlobalArgs.usoSearchQualifier.getter();
  if (!result)
  {
    return result;
  }

  v1 = dispatch thunk of UsoEntity_common_SearchQualifier.sortDirections.getter();

  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_11:

    return 0;
  }

LABEL_5:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DDFF80](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v2 = *(v1 + 32);
  }

  dispatch thunk of CodeGenListEntry.entry.getter();

  result = v3;
  if (v3)
  {

    return 1;
  }

  return result;
}

uint64_t AudioUsoIntent.modifiers.getter()
{
  if (*(v0 + 392))
  {
    v1 = *(v0 + 392);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
    v2 = AudioUsoIntent.rootItems.getter();
    v3 = specialized Sequence.flatMap<A>(_:)(v2, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.modifiers.getter, 0);

    specialized Sequence.forEach(_:)(v3, &v6);

    v1 = v6;
    v4 = *(v0 + 392);
    *(v0 + 392) = v6;
  }

  return v1;
}

uint64_t closure #2 in closure #1 in AudioUsoIntent.modifiers.getter(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (!UsoEntity_common_MediaItem.isMoreOf()())
  {
    result = UsoEntity_common_MediaItem.isDifferentThan()();
    if ((result & 1) == 0)
    {
      return result;
    }

    v16 = *a2;
    v17 = *(*a2 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v16 + 32);
    v20 = v18 & ~v19;
    if ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (*(*(v16 + 48) + v20) != 1)
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          return result;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_14:
    v23 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a2;
    v14 = 1;
    v15 = v20;
LABEL_15:
    result = specialized _NativeSet.insertNew(_:at:isUnique:)(v14, v15, isUniquelyReferenced_nonNull_native);
    *a2 = v24;
    return result;
  }

  v4 = *a2;
  v5 = *(*a2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_7:
    v12 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a2;
    v14 = 0;
    v15 = v8;
    goto LABEL_15;
  }

  v9 = ~v7;
  while ((*(*(v4 + 48) + v8) & 1) != 0)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return result;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }
}

uint64_t AudioUsoIntent.reference.getter()
{
  result = *(v0 + 400);
  if (result == 3)
  {
    result = closure #1 in AudioUsoIntent.reference.getter();
    *(v0 + 400) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.reference.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v24 - v7;
  v9 = AudioUsoIntent.rootItems.getter();
  v10 = v9;
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_26:
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  do
  {
    if (v12 == v13)
    {
      goto LABEL_13;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223DDFF80](v13, v10);
      if (__OFADD__(v13, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:

LABEL_19:
        v22 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
        (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
        goto LABEL_20;
      }
    }

    else
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v15 = *(v10 + 8 * v13 + 32);

      if (__OFADD__(v13, 1))
      {
        goto LABEL_12;
      }
    }

    v16 = specialized UsoEntity_common_MediaItem.findFirst(options:with:)(v14, v15);

    ++v13;
  }

  while (!v16);

  v17 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

  if (!v17)
  {

    goto LABEL_19;
  }

  dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

  v18 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
LABEL_20:
    v21 = 2;
    goto LABEL_21;
  }

  outlined init with copy of MediaUserStateCenter?(v8, v5, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v20 = (*(v19 + 88))(v5, v18);
  if (v20 == *MEMORY[0x277D5EE48])
  {
    v21 = 1;
    goto LABEL_21;
  }

  if (v20 != *MEMORY[0x277D5EE50])
  {
    (*(v19 + 8))(v5, v18);
    goto LABEL_20;
  }

  v21 = 0;
LABEL_21:
  outlined destroy of MediaUserStateCenter?(v8, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  return v21;
}

uint64_t AudioUsoIntent.genres.getter()
{
  if (*(v0 + 408))
  {
    v1 = *(v0 + 408);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.genres.getter();
    v2 = *(v0 + 408);
    *(v0 + 408) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.genres.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v33 = &v31 - v8;
  v9 = AudioUsoIntent.rootItems.getter();
  v10 = MEMORY[0x277D84F90];
  v11 = specialized Sequence.flatMap<A>(_:)(v9, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v12 = Array<A>.identifiers(forNamespace:)(2uLL, v11);

  v37 = *(v12 + 16);
  if (!v37)
  {
    v16 = v10;
    goto LABEL_23;
  }

  v14 = 0;
  v36 = v12 + 32;
  v39 = v1 + 16;
  v15 = (v1 + 8);
  v32 = (v1 + 32);
  v16 = MEMORY[0x277D84F90];
  v34 = v12;
LABEL_3:
  v35 = v16;
  while (v14 < *(v12 + 16))
  {
    v17 = *(v36 + 8 * v14++);
    v18 = *(v17 + 16);
    if (v18)
    {
      v38 = v14;
      v19 = v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

      v20 = 0;
      while (1)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        (*(v1 + 16))(v6, v19 + *(v1 + 72) * v20, v0);
        v22 = UsoIdentifier.namespace.getter();
        if (v23)
        {
          if (v22 == 0x6E6547636973756DLL && v23 == 0xEA00000000006572)
          {

LABEL_16:
            v24 = v33;
            (*v32)(v33, v6, v0);
            v25 = UsoIdentifier.value.getter();
            v27 = v26;

            (*v15)(v24, v0);
            v16 = v35;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
              v16 = result;
            }

            v29 = *(v16 + 16);
            v28 = *(v16 + 24);
            if (v29 >= v28 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v16);
              v16 = result;
            }

            *(v16 + 16) = v29 + 1;
            v30 = v16 + 16 * v29;
            *(v30 + 32) = v25;
            *(v30 + 40) = v27;
            v14 = v38;
            v12 = v34;
            if (v38 == v37)
            {
LABEL_23:

              return v16;
            }

            goto LABEL_3;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_16;
          }
        }

        ++v20;
        result = (*v15)(v6, v0);
        if (v18 == v20)
        {

          v12 = v34;
          v16 = v35;
          v14 = v38;
          break;
        }
      }
    }

    if (v14 == v37)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t AudioUsoIntent.moods.getter()
{
  if (*(v0 + 416))
  {
    v1 = *(v0 + 416);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.moods.getter();
    v2 = *(v0 + 416);
    *(v0 + 416) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.moods.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v33 = &v31 - v8;
  v9 = AudioUsoIntent.rootItems.getter();
  v10 = MEMORY[0x277D84F90];
  v11 = specialized Sequence.flatMap<A>(_:)(v9, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v12 = Array<A>.identifiers(forNamespace:)(3uLL, v11);

  result = v12;
  v37 = *(v12 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  v14 = 0;
  v36 = v12 + 32;
  v39 = v1 + 16;
  v15 = (v1 + 8);
  v32 = (v1 + 32);
  v34 = v12;
LABEL_3:
  v35 = v10;
  while (v14 < *(result + 16))
  {
    v16 = *(v36 + 8 * v14++);
    v17 = *(v16 + 16);
    if (v17)
    {
      v38 = v14;
      v18 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

      v19 = 0;
      while (1)
      {
        if (v19 >= *(v16 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        (*(v1 + 16))(v6, v18 + *(v1 + 72) * v19, v0);
        v21 = UsoIdentifier.namespace.getter();
        if (v22)
        {
          if (v21 == 0x616C50616964656DLL && v22 == 0xEF646F6F4D726579)
          {

LABEL_16:
            v23 = v33;
            (*v32)(v33, v6, v0);
            v24 = UsoIdentifier.value.getter();
            v26 = v25;

            (*v15)(v23, v0);
            v10 = v35;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
            }

            result = v34;
            v14 = v38;
            v28 = *(v10 + 2);
            v27 = *(v10 + 3);
            if (v28 >= v27 >> 1)
            {
              v30 = v34;
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v10);
              result = v30;
              v14 = v38;
            }

            *(v10 + 2) = v28 + 1;
            v29 = &v10[16 * v28];
            *(v29 + 4) = v24;
            *(v29 + 5) = v26;
            if (v14 == v37)
            {
LABEL_21:

              return v10;
            }

            goto LABEL_3;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_16;
          }
        }

        ++v19;
        result = (*v15)(v6, v0);
        if (v17 == v19)
        {

          result = v34;
          v10 = v35;
          v14 = v38;
          break;
        }
      }
    }

    if (v14 == v37)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t AudioUsoIntent.activities.getter()
{
  if (*(v0 + 424))
  {
    v1 = *(v0 + 424);
  }

  else
  {
    v1 = closure #1 in AudioUsoIntent.activities.getter();
    v2 = *(v0 + 424);
    *(v0 + 424) = v1;
  }

  return v1;
}

uint64_t closure #1 in AudioUsoIntent.activities.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v32 = &v31 - v8;
  v9 = AudioUsoIntent.rootItems.getter();
  v10 = MEMORY[0x277D84F90];
  v11 = specialized Sequence.flatMap<A>(_:)(v9, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v12 = Array<A>.identifiers(forNamespace:)(4uLL, v11);

  v36 = *(v12 + 16);
  if (!v36)
  {
    v16 = v10;
    goto LABEL_23;
  }

  v14 = 0;
  v35 = v12 + 32;
  v38 = 0x80000002234D9D40;
  v39 = v1 + 16;
  v15 = (v1 + 8);
  v31 = (v1 + 32);
  v16 = MEMORY[0x277D84F90];
  v33 = v12;
LABEL_3:
  v34 = v16;
  while (v14 < *(v12 + 16))
  {
    v17 = *(v35 + 8 * v14++);
    v18 = *(v17 + 16);
    if (v18)
    {
      v37 = v14;
      v19 = v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

      v20 = 0;
      while (1)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        (*(v1 + 16))(v6, v19 + *(v1 + 72) * v20, v0);
        v22 = UsoIdentifier.namespace.getter();
        if (v23)
        {
          if (v22 == 0xD000000000000013 && v23 == v38)
          {

LABEL_16:
            v24 = v32;
            (*v31)(v32, v6, v0);
            v25 = UsoIdentifier.value.getter();
            v27 = v26;

            (*v15)(v24, v0);
            v16 = v34;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
              v16 = result;
            }

            v29 = *(v16 + 16);
            v28 = *(v16 + 24);
            if (v29 >= v28 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v16);
              v16 = result;
            }

            *(v16 + 16) = v29 + 1;
            v30 = v16 + 16 * v29;
            *(v30 + 32) = v25;
            *(v30 + 40) = v27;
            v14 = v37;
            v12 = v33;
            if (v37 == v36)
            {
LABEL_23:

              return v16;
            }

            goto LABEL_3;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_16;
          }
        }

        ++v20;
        result = (*v15)(v6, v0);
        if (v18 == v20)
        {

          v12 = v33;
          v16 = v34;
          v14 = v37;
          break;
        }
      }
    }

    if (v14 == v36)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t AudioUsoIntent.radioType.getter()
{
  result = *(v0 + 432);
  if (result == 3)
  {
    result = closure #1 in AudioUsoIntent.radioType.getter();
    *(v0 + 432) = result;
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.radioType.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v43 - v13;
  v15 = AudioUsoIntent.rootItems.getter();
  v16 = MEMORY[0x277D84F90];
  v17 = specialized Sequence.flatMap<A>(_:)(v15, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v18 = Array<A>.identifiers(forNamespace:)(5uLL, v17);

  v52 = *(v18 + 16);
  if (v52)
  {
    v20 = 0;
    v51 = v18 + 32;
    v54 = 0x80000002234D9D60;
    v55 = v1 + 16;
    v21 = (v1 + 8);
    v45 = (v1 + 32);
    v48 = (v1 + 48);
    v49 = (v1 + 56);
    v44 = MEMORY[0x277D84F90];
    v46 = v11;
    v47 = v14;
    v50 = v18;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v53 = v20;
      v22 = *(v51 + 8 * v20);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

        v25 = 0;
        while (v25 < *(v22 + 16))
        {
          (*(v1 + 16))(v5, v24 + *(v1 + 72) * v25, v0);
          v27 = UsoIdentifier.namespace.getter();
          if (v28)
          {
            if (v27 == 0xD000000000000014 && v28 == v54)
            {

LABEL_13:
              v14 = v47;
              (*v45)(v47, v5, v0);
              v29 = 0;
              v11 = v46;
              goto LABEL_16;
            }

            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v26)
            {
              goto LABEL_13;
            }
          }

          ++v25;
          result = (*v21)(v5, v0);
          if (v23 == v25)
          {
            v29 = 1;
            v11 = v46;
            v14 = v47;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v30 = *(v51 + 8 * v20);

      v29 = 1;
LABEL_16:
      (*v49)(v14, v29, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v14, v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v31 = (*v48)(v11, 1, v0);
      v18 = v50;
      if (v31 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      else
      {
        v32 = UsoIdentifier.value.getter();
        v33 = v34;
        (*v21)(v11, v0);
      }

      ++v53;
      v35._countAndFlagsBits = v32;
      v35._object = v33;
      v36 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of closure #1 in AudioUsoIntent.radioType.getter, v35);

      if (!v36)
      {
        break;
      }

      if (v36 == 1)
      {
        v37 = 1;
LABEL_25:
        outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v38 = v44;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
          v38 = result;
        }

        v40 = *(v38 + 2);
        v39 = *(v38 + 3);
        v44 = v38;
        if (v40 >= v39 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v44);
          v44 = result;
        }

        v41 = v44;
        *(v44 + 2) = v40 + 1;
        v41[v40 + 32] = v37;
        v20 = v53;
        v14 = v47;
        if (v53 == v52)
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v20 = v53;
        if (v53 == v52)
        {
          goto LABEL_32;
        }
      }
    }

    v37 = 0;
    goto LABEL_25;
  }

  v44 = v16;
LABEL_32:

  if (*(v44 + 2))
  {
    v42 = v44[32];
  }

  else
  {

    return 2;
  }

  return v42;
}

uint64_t AudioUsoIntent.frequency.getter()
{
  if (*(v0 + 449))
  {
    result = closure #1 in AudioUsoIntent.frequency.getter();
    *(v0 + 440) = result;
    *(v0 + 448) = v2 & 1;
    *(v0 + 449) = 0;
  }

  else
  {
    result = *(v0 + 440);
    v3 = *(v0 + 448);
  }

  return result;
}

uint64_t closure #1 in AudioUsoIntent.frequency.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v54 - v13;
  v15 = AudioUsoIntent.rootItems.getter();
  v16 = MEMORY[0x277D84F90];
  v17 = specialized Sequence.flatMap<A>(_:)(v15, MEMORY[0x277D84F90], closure #1 in closure #1 in AudioUsoIntent.decade.getter, 0);

  v18 = Array<A>.identifiers(forNamespace:)(8uLL, v17);

  v64 = *(v18 + 16);
  if (v64)
  {
    v54 = 0;
    v20 = 0;
    v63 = v18 + 32;
    v67 = 0x80000002234D9DC0;
    v68 = v1 + 16;
    v21 = v1;
    v22 = (v1 + 8);
    v56 = (v21 + 32);
    v58 = v21;
    v60 = (v21 + 48);
    v61 = (v21 + 56);
    v55 = MEMORY[0x277D84F90];
    v69 = v0;
    v57 = v11;
    v62 = v18;
    v59 = v14;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
LABEL_53:
        __break(1u);
        return result;
      }

      v23 = v14;
      v66 = v20;
      v24 = *(v63 + 8 * v20);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v58;
        v27 = v24 + ((*(v58 + 80) + 32) & ~*(v58 + 80));

        v28 = 0;
        while (v28 < *(v24 + 16))
        {
          (*(v26 + 16))(v5, v27 + *(v26 + 72) * v28, v0);
          v30 = UsoIdentifier.namespace.getter();
          if (v31)
          {
            if (v30 == 0xD000000000000015 && v31 == v67)
            {

LABEL_13:
              v0 = v69;
              (*v56)(v23, v5, v69);
              v32 = 0;
LABEL_16:
              v11 = v57;
              goto LABEL_17;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_13;
            }
          }

          ++v28;
          v0 = v69;
          result = (*v22)(v5, v69);
          if (v25 == v28)
          {
            v32 = 1;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_53;
      }

      v32 = 1;
LABEL_17:
      (*v61)(v23, v32, 1, v0);
      outlined init with copy of MediaUserStateCenter?(v23, v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v33 = (*v60)(v11, 1, v0);
      v34 = v62;
      if (v33 == 1)
      {
        v35 = outlined destroy of MediaUserStateCenter?(v11, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v37 = 0;
        v38 = 0xE000000000000000;
      }

      else
      {
        v37 = UsoIdentifier.value.getter();
        v38 = v39;
        v35 = (*v22)(v11, v0);
      }

      v73 = 0;
      MEMORY[0x28223BE20](v35, v36);
      *(&v54 - 2) = &v73;
      v65 = v40;
      if ((v38 & 0x1000000000000000) == 0)
      {
        if ((v38 & 0x2000000000000000) != 0)
        {
          v70 = v37;
          v71 = v38 & 0xFFFFFFFFFFFFFFLL;
          v44 = (v37 >= 0x21u || ((0x100003E01uLL >> v37) & 1) == 0) && (v43 = _swift_stdlib_strtod_clocale()) != 0 && *v43 == 0;
          v0 = v69;
          v18 = v34;
          v72 = v44;

          goto LABEL_34;
        }

        if ((v37 & 0x1000000000000000) != 0)
        {
          v41 = *((v38 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v41 < 0x21 && ((0x100003E01uLL >> v41) & 1) != 0)
          {
            v42 = 0;
            v0 = v69;
            v18 = v34;
          }

          else
          {
            v45 = _swift_stdlib_strtod_clocale();
            v0 = v69;
            v18 = v34;
            if (v45)
            {
              v42 = *v45 == 0;
            }

            else
            {
              v42 = 0;
            }
          }

          v14 = v59;
          v72 = v42;

          goto LABEL_37;
        }
      }

      v52 = v54;
      _StringGuts._slowWithCString<A>(_:)();
      v54 = v52;
      v18 = v62;

      v0 = v69;
LABEL_34:
      v14 = v59;
LABEL_37:
      v20 = v66 + 1;
      v46 = v72;
      result = outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      if (v46)
      {
        v47 = v73;
        result = swift_isUniquelyReferenced_nonNull_native();
        v48 = v11;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
          v55 = result;
        }

        v50 = *(v55 + 2);
        v49 = *(v55 + 3);
        if (v50 >= v49 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v55);
          v55 = result;
        }

        v51 = v55;
        *(v55 + 2) = v50 + 1;
        *&v51[8 * v50 + 32] = v47;
        v11 = v48;
        if (v20 == v64)
        {
          goto LABEL_48;
        }
      }

      else if (v20 == v64)
      {
        goto LABEL_48;
      }
    }
  }

  v55 = v16;
LABEL_48:

  if (*(v55 + 2))
  {
    v53 = *(v55 + 4);
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

uint64_t closure #2 in closure #1 in AudioUsoIntent.noun.getter()
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

  if (!v4)
  {
    return 0;
  }

  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {

    return 0;
  }

  return 1;
}

uint64_t AudioUsoIntent.mediaIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  return v1;
}

uint64_t AudioUsoIntent.mediaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 464);
  *(v2 + 456) = a1;
  *(v2 + 464) = a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioUsoIntent.UsoNamespace(char *a1, char *a2)
{
  v2 = *a2;
  v3 = AudioUsoIntent.UsoNamespace.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AudioUsoIntent.UsoNamespace.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioUsoIntent.UsoNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AudioUsoIntent.UsoNamespace.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AudioUsoIntent.UsoNamespace()
{
  AudioUsoIntent.UsoNamespace.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioUsoIntent.UsoNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AudioUsoIntent.UsoNamespace.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AudioUsoIntent.UsoNamespace@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized AudioUsoIntent.UsoNamespace.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AudioUsoIntent.UsoNamespace@<X0>(unint64_t *a1@<X8>)
{
  result = AudioUsoIntent.UsoNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int AudioUsoIntent.IterationOptions.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](0);
  return Hasher._finalize()();
}

void *AudioUsoIntent.deinit()
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

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[18];

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v0[19]);
  outlined consume of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(v0[20]);
  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v0[21]);
  v17 = v0[22];

  v18 = v0[24];

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v0[25]);
  v19 = v0[26];

  v20 = v0[27];

  v21 = v0[28];

  v22 = v0[29];

  v23 = v0[30];

  v24 = v0[31];

  v25 = v0[32];

  v26 = v0[33];

  v27 = v0[34];

  _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v0[36]);
  v28 = v0[37];

  v29 = v0[38];

  v30 = v0[39];

  v31 = v0[40];

  v32 = v0[41];

  outlined consume of String??(v0[42], v0[43]);
  v33 = v0[44];

  v34 = v0[45];

  v35 = v0[46];

  v36 = v0[47];

  v37 = v0[49];

  v38 = v0[51];

  v39 = v0[52];

  v40 = v0[53];

  v41 = v0[58];

  return v0;
}

uint64_t AudioUsoIntent.__deallocating_deinit()
{
  AudioUsoIntent.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in closure #1 in AudioUsoIntent.playlistMediaItems.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v114 = v2;
  v115 = v3;
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v116 = v97 - v10;
  v112 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v11 = *(v112 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v112, v13);
  v98 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v15 = *(*(v110 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v110, v16);
  v106 = v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v97 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v105 = v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v103 = v97 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v104 = v97 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = v97 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = v97 - v39;
  MEMORY[0x28223BE20](v38, v41);
  v43 = v97 - v42;
  v111 = a1;
  v44 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v45)
  {
    v46 = v44;
    v47 = v45;

    v48 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v48 = v46 & 0xFFFFFFFFFFFFLL;
    }

    v107 = v48 != 0;
  }

  else
  {
    v107 = 0;
  }

  v49 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  v113 = v8;
  v108 = v36;
  if (v49)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v11 + 56))(v43, 1, 1, v112);
  }

  v50 = *MEMORY[0x277D5EE18];
  v51 = v112;
  v100 = *(v11 + 104);
  v101 = v11 + 104;
  v100(v40, v50, v112);
  v99 = *(v11 + 56);
  v99(v40, 0, 1, v51);
  v52 = *(v110 + 48);
  outlined init with copy of MediaUserStateCenter?(v43, v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v40, &v21[v52], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v109 = v11;
  v53 = *(v11 + 48);
  v54 = v53(v21, 1, v51);
  v102 = v53;
  if (v54 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v40, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v53(&v21[v52], 1, v112) == 1)
    {
      v55 = v21;
LABEL_23:
      outlined destroy of MediaUserStateCenter?(v55, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_24:
      LODWORD(v110) = 1;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v56 = v108;
  outlined init with copy of MediaUserStateCenter?(v21, v108, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v53(&v21[v52], 1, v112) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v40, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v109 + 8))(v56, v112);
LABEL_14:
    outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_15;
  }

  v97[1] = v11 + 56;
  v61 = v109;
  v62 = v98;
  v63 = v112;
  (*(v109 + 32))(v98, &v21[v52], v112);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v61 + 8);
  v65(v62, v63);
  outlined destroy of MediaUserStateCenter?(v40, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v65(v108, v63);
  outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v64)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    v57 = v104;
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

    v58 = v106;
    v59 = v103;
    v60 = v99;
  }

  else
  {
    v57 = v104;
    v60 = v99;
    v99(v104, 1, 1, v112);
    v58 = v106;
    v59 = v103;
  }

  v66 = v112;
  v100(v59, *MEMORY[0x277D5ED50], v112);
  v60(v59, 0, 1, v66);
  v67 = *(v110 + 48);
  outlined init with copy of MediaUserStateCenter?(v57, v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v59, v58 + v67, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v68 = v102;
  if (v102(v58, 1, v66) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v57, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v68(v58 + v67, 1, v112) == 1)
    {
      v55 = v58;
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  outlined init with copy of MediaUserStateCenter?(v58, v105, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v68(v58 + v67, 1, v112) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v57, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v109 + 8))(v105, v112);
LABEL_27:
    outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    LODWORD(v110) = 0;
    goto LABEL_29;
  }

  v69 = v109;
  v70 = v105;
  v71 = v98;
  v72 = v112;
  (*(v109 + 32))(v98, v58 + v67, v112);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  LODWORD(v110) = dispatch thunk of static Equatable.== infix(_:_:)();
  v73 = *(v69 + 8);
  v73(v71, v72);
  outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v57, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v73(v70, v72);
  outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_29:
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v75 = result;
  v76 = *(result + 16);
  if (v76)
  {
    v77 = 0;
    v78 = v114;
    v79 = result + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    v112 = "nAppVocPreflightClient";
    v80 = (v115 + 8);
    while (1)
    {
      if (v77 >= *(v75 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      (*(v115 + 16))(v116, v79 + *(v115 + 72) * v77, v78);
      v81 = UsoIdentifier.namespace.getter();
      if (!v82)
      {
        break;
      }

      if (v81 == 0x7473696C79616C70 && v82 == 0xED0000656C746954)
      {
      }

      else
      {
        v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v83 & 1) == 0)
        {
          break;
        }
      }

      UsoIdentifier.appBundleId.getter();
      v84 = String.lowercased()();

      v85 = String.lowercased()();
      if (v84._countAndFlagsBits == v85._countAndFlagsBits && v84._object == v85._object)
      {

        (*v80)(v116, v114);
LABEL_45:
        LODWORD(v116) = 0;
        goto LABEL_46;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v78 = v114;
      result = (*v80)(v116, v114);
      if (v86)
      {
        goto LABEL_45;
      }

LABEL_32:
      if (v76 == ++v77)
      {
        goto LABEL_43;
      }
    }

    v78 = v114;
    result = (*v80)(v116, v114);
    goto LABEL_32;
  }

LABEL_43:
  LODWORD(v116) = 1;
LABEL_46:

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v87 = result;
  v88 = *(result + 16);
  v89 = v114;
  if (v88)
  {
    v90 = 0;
    v91 = result + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    v92 = (v115 + 8);
    while (v90 < *(v87 + 16))
    {
      v93 = v113;
      (*(v115 + 16))(v113, v91 + *(v115 + 72) * v90, v89);
      v94 = UsoIdentifier.namespace.getter();
      if (v95)
      {
        if (v94 == 0xD000000000000010 && v95 == 0x80000002234D9610)
        {

          (*v92)(v113, v114);
LABEL_58:

          return 0;
        }

        v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v89 = v114;
        result = (*v92)(v113, v114);
        if (v96)
        {
          goto LABEL_58;
        }
      }

      else
      {
        result = (*v92)(v93, v89);
      }

      if (v88 == ++v90)
      {
        goto LABEL_56;
      }
    }

LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_56:

    return v107 & v110 & v116;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in AudioUsoIntent.applePlaylistTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v119 = v2;
  v120 = v3;
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v100[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v100[-v10];
  v117 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v12 = *(v117 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v117, v14);
  v103 = &v100[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v16 = *(*(v115 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v115, v17);
  v110 = &v100[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v100[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v109 = &v100[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v26, v28);
  v112 = &v100[-v30];
  v32 = MEMORY[0x28223BE20](v29, v31);
  v108 = &v100[-v33];
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v100[-v36];
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v100[-v40];
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v100[-v43];
  v116 = a1;
  v45 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v46)
  {
    v47 = v45;
    v48 = v46;

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v47 & 0xFFFFFFFFFFFFLL;
    }

    v50 = v49 == 0;
  }

  else
  {
    v50 = 1;
  }

  v114 = v50;
  v51 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  v118 = v8;
  v111 = v37;
  if (v51)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v12 + 56))(v44, 1, 1, v117);
  }

  v52 = *MEMORY[0x277D5EE18];
  v53 = v117;
  v105 = *(v12 + 104);
  v106 = v12 + 104;
  v105(v41, v52, v117);
  v104 = *(v12 + 56);
  v104(v41, 0, 1, v53);
  v54 = *(v115 + 48);
  outlined init with copy of MediaUserStateCenter?(v44, v22, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v41, &v22[v54], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v113 = v12;
  v55 = *(v12 + 48);
  v56 = v55(v22, 1, v53);
  v107 = v55;
  if (v56 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v55(&v22[v54], 1, v117) == 1)
    {
      v57 = v22;
LABEL_23:
      outlined destroy of MediaUserStateCenter?(v57, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_24:
      LODWORD(v115) = 0;
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v58 = v111;
  outlined init with copy of MediaUserStateCenter?(v22, v111, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v55(&v22[v54], 1, v117) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v113 + 8))(v58, v117);
LABEL_14:
    outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_15;
  }

  v102 = v12 + 56;
  v63 = v113;
  v64 = v103;
  v65 = v117;
  (*(v113 + 32))(v103, &v22[v54], v117);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v101 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v63 + 8);
  v66(v64, v65);
  outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v66(v111, v65);
  outlined destroy of MediaUserStateCenter?(v22, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v101)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    v59 = v108;
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();

    v60 = v110;
    v61 = v112;
    v62 = v104;
  }

  else
  {
    v59 = v108;
    v62 = v104;
    v104(v108, 1, 1, v117);
    v60 = v110;
    v61 = v112;
  }

  v67 = v117;
  v105(v61, *MEMORY[0x277D5ED50], v117);
  v62(v61, 0, 1, v67);
  v68 = *(v115 + 48);
  outlined init with copy of MediaUserStateCenter?(v59, v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v61, v60 + v68, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v69 = v107;
  if (v107(v60, 1, v67) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v61, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v69(v60 + v68, 1, v117) == 1)
    {
      v57 = v60;
      goto LABEL_23;
    }
  }

  else
  {
    outlined init with copy of MediaUserStateCenter?(v60, v109, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v69(v60 + v68, 1, v117) != 1)
    {
      v71 = v113;
      v72 = v109;
      v73 = v103;
      v74 = v117;
      (*(v113 + 32))(v103, v60 + v68, v117);
      _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
      v75 = dispatch thunk of static Equatable.== infix(_:_:)();
      v76 = *(v71 + 8);
      v76(v73, v74);
      outlined destroy of MediaUserStateCenter?(v112, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v76(v72, v74);
      outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v70 = v75 ^ 1;
      goto LABEL_29;
    }

    outlined destroy of MediaUserStateCenter?(v61, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v113 + 8))(v109, v117);
  }

  outlined destroy of MediaUserStateCenter?(v60, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v70 = 1;
LABEL_29:
  LODWORD(v115) = v70;
LABEL_30:
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v78 = result;
  v79 = *(result + 16);
  if (v79)
  {
    v80 = 0;
    v81 = v119;
    v82 = result + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v117 = "nAppVocPreflightClient";
    v83 = (v120 + 8);
    while (1)
    {
      if (v80 >= *(v78 + 16))
      {
        __break(1u);
        goto LABEL_64;
      }

      (*(v120 + 16))(v11, v82 + *(v120 + 72) * v80, v81);
      v84 = UsoIdentifier.namespace.getter();
      if (!v85)
      {
        break;
      }

      if (v84 == 0x7473696C79616C70 && v85 == 0xED0000656C746954)
      {
      }

      else
      {
        v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v86 & 1) == 0)
        {
          break;
        }
      }

      UsoIdentifier.appBundleId.getter();
      v87 = String.lowercased()();

      v88 = String.lowercased()();
      if (v87._countAndFlagsBits == v88._countAndFlagsBits && v87._object == v88._object)
      {

        (*v83)(v11, v119);
LABEL_46:
        LODWORD(v117) = 0;
        goto LABEL_47;
      }

      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v81 = v119;
      result = (*v83)(v11, v119);
      if (v89)
      {
        goto LABEL_46;
      }

LABEL_33:
      if (v79 == ++v80)
      {
        goto LABEL_44;
      }
    }

    v81 = v119;
    result = (*v83)(v11, v119);
    goto LABEL_33;
  }

LABEL_44:
  LODWORD(v117) = 1;
LABEL_47:

  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v90 = result;
  v91 = *(result + 16);
  v92 = v119;
  if (v91)
  {
    v93 = 0;
    v94 = result + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v95 = (v120 + 8);
    while (v93 < *(v90 + 16))
    {
      v96 = v118;
      (*(v120 + 16))(v118, v94 + *(v120 + 72) * v93, v92);
      v97 = UsoIdentifier.namespace.getter();
      if (v98)
      {
        if (v97 == 0xD000000000000010 && v98 == 0x80000002234D9610)
        {

          (*v95)(v118, v119);
LABEL_60:

          return 0;
        }

        v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v92 = v119;
        result = (*v95)(v118, v119);
        if (v99)
        {
          goto LABEL_60;
        }
      }

      else
      {
        result = (*v95)(v96, v92);
      }

      if (v91 == ++v93)
      {
        goto LABEL_57;
      }
    }

LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_57:

    return ((v114 | v115 | v117) & 1) == 0;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in AudioUsoIntent.podcastTitles.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62, v8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v65 = &v55 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v64 = &v55 - v20;
  v21 = type metadata accessor for UsoIdentifier();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  if (v28)
  {
    v29 = v27;
    v30 = v28;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v29 & 0xFFFFFFFFFFFFLL;
    }

    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  v63 = a1;
  result = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v34 = result;
  v68 = *(result + 16);
  if (!v68)
  {

LABEL_22:
    v44 = v64;
    v43 = v65;
    if (!v32)
    {
      LODWORD(result) = 1;
      goto LABEL_26;
    }

    return 0;
  }

  v57 = v32;
  v58 = v3;
  v59 = v10;
  v60 = v2;
  v35 = 0;
  v67 = result + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v66 = "nAppVocPreflightClient";
  v36 = (v22 + 8);
  while (1)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v22 + 16))(v26, v67 + *(v22 + 72) * v35, v21);
    v37 = UsoIdentifier.namespace.getter();
    if (!v38)
    {
LABEL_8:
      result = (*v36)(v26, v21);
      goto LABEL_9;
    }

    if (v37 == 0x5474736163646F70 && v38 == 0xEC000000656C7469)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    UsoIdentifier.appBundleId.getter();
    v40 = String.lowercased()();

    v41 = String.lowercased()();
    if (v40._countAndFlagsBits == v41._countAndFlagsBits && v40._object == v41._object)
    {
      break;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v36)(v26, v21);
    if (v42)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v68 == ++v35)
    {

      v10 = v59;
      v2 = v60;
      v3 = v58;
      LOBYTE(v32) = v57;
      goto LABEL_22;
    }
  }

  (*v36)(v26, v21);
LABEL_25:

  result = 0;
  v10 = v59;
  v2 = v60;
  v3 = v58;
  v44 = v64;
  v43 = v65;
  if (v57)
  {
    return result;
  }

LABEL_26:
  LODWORD(v68) = result;
  if (dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter())
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v44, 1, 1, v2);
  }

  (*(v3 + 104))(v43, *MEMORY[0x277D5EE08], v2);
  (*(v3 + 56))(v43, 0, 1, v2);
  v45 = *(v62 + 48);
  outlined init with copy of MediaUserStateCenter?(v44, v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v43, &v10[v45], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v46 = v3;
  v47 = *(v3 + 48);
  if (v47(v10, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v47(&v10[v45], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v68;
    }

LABEL_34:
    outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v48 = v61;
  outlined init with copy of MediaUserStateCenter?(v10, v61, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v47(&v10[v45], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v65, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v46 + 8))(v48, v2);
    goto LABEL_34;
  }

  v49 = v46;
  v50 = &v10[v45];
  v51 = v56;
  (*(v46 + 32))(v56, v50, v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v52 = v48;
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  v54 = *(v49 + 8);
  v54(v51, v2);
  outlined destroy of MediaUserStateCenter?(v65, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v54(v52, v2);
  outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v53)
  {
    return v68;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized closure #1 in closure #1 in AudioUsoIntent.applePodcastTitles.getter(uint64_t a1)
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
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for UsoIdentifier();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v29 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
  v65 = v19;
  v66 = v22;
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
  v70 = *(result + 16);
  if (!v70)
  {

    v45 = v66;
    if (!v34)
    {
LABEL_23:
      v46 = 0;
      goto LABEL_27;
    }

    return 0;
  }

  v59 = v34;
  v60 = v3;
  v61 = v10;
  v62 = v2;
  v37 = 0;
  v69 = result + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v68 = "nAppVocPreflightClient";
  v38 = (v24 + 8);
  while (1)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v24 + 16))(v28, v69 + *(v24 + 72) * v37, v23);
    v39 = UsoIdentifier.namespace.getter();
    if (!v40)
    {
LABEL_8:
      result = (*v38)(v28, v23);
      goto LABEL_9;
    }

    if (v39 == 0x5474736163646F70 && v40 == 0xEC000000656C7469)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    UsoIdentifier.appBundleId.getter();
    v42 = String.lowercased()();

    v43 = String.lowercased()();
    if (v42._countAndFlagsBits == v43._countAndFlagsBits && v42._object == v43._object)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v38)(v28, v23);
    if (v44)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v70 == ++v37)
    {

      v10 = v61;
      v2 = v62;
      v3 = v60;
      v45 = v66;
      if (v59)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  (*v38)(v28, v23);
LABEL_25:

  v10 = v61;
  v2 = v62;
  v3 = v60;
  v45 = v66;
  if (v59)
  {
    return 0;
  }

  v46 = 1;
LABEL_27:
  v47 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  LODWORD(v70) = v46;
  if (v47)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v3 + 56))(v45, 1, 1, v2);
  }

  v48 = v65;
  (*(v3 + 104))(v65, *MEMORY[0x277D5EE08], v2);
  (*(v3 + 56))(v48, 0, 1, v2);
  v49 = *(v64 + 48);
  outlined init with copy of MediaUserStateCenter?(v45, v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v48, &v10[v49], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v50 = *(v3 + 48);
  if (v50(v10, 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v50(&v10[v49], 1, v2) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      return v70;
    }

LABEL_35:
    outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    return 0;
  }

  v51 = v63;
  outlined init with copy of MediaUserStateCenter?(v10, v63, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v50(&v10[v49], 1, v2) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v65, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v3 + 8))(v51, v2);
    goto LABEL_35;
  }

  v52 = &v10[v49];
  v53 = v58;
  (*(v3 + 32))(v58, v52, v2);
  _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
  v54 = v51;
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v3 + 8);
  v56(v53, v2);
  outlined destroy of MediaUserStateCenter?(v65, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v45, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v56(v54, v2);
  outlined destroy of MediaUserStateCenter?(v10, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  result = v70;
  if ((v55 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t outlined consume of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined copy of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

char *closure #1 in AudioUsoIntent.entities.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = AudioUsoIntent.rootItems.getter();
  v4 = specialized Sequence.flatMap<A>(_:)(v3, MEMORY[0x277D84F90], a2, 0);

  if (v4 >> 62)
  {
LABEL_20:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DDFF80](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(v4 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v10 = dispatch thunk of UsoEntity_common_MediaItem.name.getter();
    v12 = v11;

    ++v6;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v7);
      }

      *(v7 + 2) = v14 + 1;
      v15 = &v7[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      v6 = v9;
    }
  }

  return v7;
}

uint64_t specialized AudioUsoIntent.UsoNamespace.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

unint64_t lazy protocol witness table accessor for type AudioUsoIntent.UsoNamespace and conformance AudioUsoIntent.UsoNamespace()
{
  result = lazy protocol witness table cache variable for type AudioUsoIntent.UsoNamespace and conformance AudioUsoIntent.UsoNamespace;
  if (!lazy protocol witness table cache variable for type AudioUsoIntent.UsoNamespace and conformance AudioUsoIntent.UsoNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioUsoIntent.UsoNamespace and conformance AudioUsoIntent.UsoNamespace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioUsoIntent.IterationOptions and conformance AudioUsoIntent.IterationOptions()
{
  result = lazy protocol witness table cache variable for type AudioUsoIntent.IterationOptions and conformance AudioUsoIntent.IterationOptions;
  if (!lazy protocol witness table cache variable for type AudioUsoIntent.IterationOptions and conformance AudioUsoIntent.IterationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioUsoIntent.IterationOptions and conformance AudioUsoIntent.IterationOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioUsoIntent.UsoNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioUsoIntent.UsoNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t _s12SiriNLUTypes0A27_Nlu_External_UserDialogActVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 2;
  }

  else
  {
    return specialized Set.subscript.getter(v3, *(a1 + 36), 0, a1) & 1;
  }
}

void *specialized Collection.first.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy21SiriInformationSearch11CommonAudioV9AttributeOG_10PegasusAPI013Apple_Parsec_d9_V2alpha_hI0Os5NeverOTg504_s10j5API44l1_m1_d1_n1_h18UnderstandingV0E17ef45E4fromACSgAD0G9UsoIntentC_tcfcAA0c1_d1_e1_f1_xi5OAD06g2G0S8N0OXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioAttribute();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v35 = v1;
  v56 = MEMORY[0x277D84F90];
  v48 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v56;
  v12 = v48 + 56;
  v13 = -1 << *(v48 + 32);
  result = _HashTable.startBucket.getter();
  v15 = result;
  v16 = v48;
  v17 = 0;
  v40 = *MEMORY[0x277D395B8];
  v52 = (v4 + 104);
  v44 = *MEMORY[0x277D39590];
  v46 = *MEMORY[0x277D39588];
  v39 = *MEMORY[0x277D395C0];
  v43 = *MEMORY[0x277D39580];
  v38 = *MEMORY[0x277D395A0];
  v42 = *MEMORY[0x277D395B0];
  v45 = *MEMORY[0x277D395C8];
  v37 = *MEMORY[0x277D395A8];
  v53 = v4;
  v51 = v4 + 32;
  v41 = *MEMORY[0x277D39578];
  v47 = v48 + 64;
  v36 = *MEMORY[0x277D39598];
  v49 = v10;
  v50 = v12;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v16 + 32))
  {
    v55 = v17;
    v20 = v15 >> 6;
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_38;
    }

    v21 = *(*(v16 + 48) + v15);
    if (v21 > 6)
    {
      if (*(*(v16 + 48) + v15) <= 8u)
      {
        v22 = v43;
        if (v21 == 7)
        {
          goto LABEL_24;
        }

        v22 = v39;
        if (v21 == 8)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v22 = v46;
        if (v21 == 9)
        {
          goto LABEL_24;
        }

        v22 = v44;
        if (v21 == 10)
        {
          goto LABEL_24;
        }

        v22 = v40;
        if (v21 == 12)
        {
          goto LABEL_24;
        }
      }

LABEL_23:
      v22 = v36;
      goto LABEL_24;
    }

    if (*(*(v16 + 48) + v15) > 1u)
    {
      v22 = v45;
      if (v21 == 2)
      {
        goto LABEL_24;
      }

      v22 = v42;
      if (v21 == 3)
      {
        goto LABEL_24;
      }

      v22 = v38;
      if (v21 == 6)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v22 = v41;
    if (*(*(v16 + 48) + v15))
    {
      v22 = v37;
    }

LABEL_24:
    v54 = *(v16 + 36);
    v23 = v16;
    (*v52)(v9, v22, v3);
    v56 = v11;
    v24 = v3;
    v26 = *(v11 + 16);
    v25 = *(v11 + 24);
    if (v26 >= v25 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
      v11 = v56;
    }

    *(v11 + 16) = v26 + 1;
    v27 = v9;
    result = (*(v53 + 32))(v11 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v26, v9, v24);
    v18 = 1 << *(v23 + 32);
    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    v16 = v23;
    v12 = v50;
    v28 = *(v50 + 8 * v20);
    if ((v28 & (1 << v15)) == 0)
    {
      goto LABEL_40;
    }

    if (v54 != *(v16 + 36))
    {
      goto LABEL_41;
    }

    v3 = v24;
    v29 = v28 & (-2 << (v15 & 0x3F));
    if (v29)
    {
      v18 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v19 = v55;
    }

    else
    {
      v30 = v20 << 6;
      v31 = v20 + 1;
      v32 = (v47 + 8 * v20);
      v19 = v55;
      while (v31 < (v18 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v15, v54, 0);
          v16 = v48;
          v18 = __clz(__rbit64(v33)) + v30;
          goto LABEL_35;
        }
      }

      result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v15, v54, 0);
      v16 = v48;
LABEL_35:
      v3 = v24;
    }

    v17 = v19 + 1;
    v15 = v18;
    v9 = v27;
    if (v17 == v49)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDecade();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v67 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioRadioType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v71 = *(v17 - 8);
  v72 = v17;
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.init()();
  v23 = (*(*a1 + 1160))(v22);
  if (v23[2])
  {
    v24 = v23[4];
    v25 = v23[5];
  }

  v26 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entity.setter();
  v77 = (*(*a1 + 1256))(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v28 = lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v29 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.setter();
  v77 = (*(*a1 + 1280))(v29);
  BidirectionalCollection<>.joined(separator:)();

  v30 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.album.setter();
  v77 = (*(*a1 + 1520))(v30);
  BidirectionalCollection<>.joined(separator:)();

  v31 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.setter();
  (*(*a1 + 1592))(v31);
  v32 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.setter();
  v33 = (*(*a1 + 1472))(v32);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy21SiriInformationSearch11CommonAudioV9AttributeOG_10PegasusAPI013Apple_Parsec_d9_V2alpha_hI0Os5NeverOTg504_s10j5API44l1_m1_d1_n1_h18UnderstandingV0E17ef45E4fromACSgAD0G9UsoIntentC_tcfcAA0c1_d1_e1_f1_xi5OAD06g2G0S8N0OXEfU_Tf1cn_n(v33);

  v34 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.attributes.setter();
  v35 = (*(*a1 + 1880))(v34);
  if (v35 != 2)
  {
    v36 = MEMORY[0x277D395D8];
    if ((v35 & 1) == 0)
    {
      v36 = MEMORY[0x277D395E0];
    }

    (*(v12 + 104))(v16, *v36, v11);
    v35 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.setter();
  }

  v37 = (*(*a1 + 1400))(v35);
  v38 = *(v37 + 16);
  v39 = MEMORY[0x277D84F90];
  v75 = v27;
  v76 = v21;
  v74 = v28;
  if (v38)
  {
    v77 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v40 = v77;
    v41 = (v37 + 40);
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      v77 = v40;
      v45 = *(v40 + 16);
      v44 = *(v40 + 24);

      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v40 = v77;
      }

      *(v40 + 16) = v45 + 1;
      v46 = v40 + 16 * v45;
      *(v46 + 32) = v42;
      *(v46 + 40) = v43;
      v41 += 4;
      --v38;
    }

    while (v38);

    v21 = v76;
    v39 = MEMORY[0x277D84F90];
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v77 = v40;
  BidirectionalCollection<>.joined(separator:)();

  v47 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.setter();
  v48 = (*(*a1 + 1352))(v47);
  v49 = *(v48 + 16);
  if (v49)
  {
    v77 = v39;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v50 = v77;
    v51 = (v48 + 40);
    do
    {
      v52 = *(v51 - 1);
      v53 = *v51;
      v77 = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);

      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
        v50 = v77;
      }

      *(v50 + 16) = v55 + 1;
      v56 = v50 + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v53;
      v51 += 4;
      --v49;
    }

    while (v49);

    v21 = v76;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v77 = v50;
  BidirectionalCollection<>.joined(separator:)();

  v57 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookTitle.setter();
  v58 = (*(*a1 + 1712))(v57);
  if (v58 != 11)
  {
    CommonAudio.Decade.parsecDecade.getter(v58, v67);
    v58 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.setter();
  }

  (*(*a1 + 1808))(v58);
  v59 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genre.setter();
  v60 = (*(*a1 + 1760))(v59);
  v61 = specialized Collection.first.getter(v60);

  if (v61 != 2)
  {
    v62 = MEMORY[0x277D39558];
    if ((v61 & 1) == 0)
    {
      v62 = MEMORY[0x277D39550];
    }

    (*(v69 + 104))(v68, *v62, v70);
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.setter();
  }

  v64 = v71;
  v63 = v72;
  v65 = v73;
  (*(v71 + 32))(v73, v21, v72);
  return (*(v64 + 56))(v65, 0, 1, v63);
}

uint64_t CommonAudio.Attribute.parsecAudioAttribute.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioAttribute();
  v6 = *(*(v5 - 8) + 104);
  if (v4 > 0xC)
  {
    v7 = MEMORY[0x277D39598];
  }

  else
  {
    v7 = qword_2784DA8B8[a1];
  }

  v8 = *v7;

  return v6(a2, v8, v5);
}

uint64_t CommonAudio.Decade.parsecDecade.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDecade();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_2784DA920 + a1);

  return v5(a2, v6, v4);
}

uint64_t CommonAudio.RadioType.parsecRadioType.getter@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 104);
  if (a1)
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  v12 = *v11;

  return v10(a5, v12, v9);
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

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t outlined consume of Set<CommonAudio.Attribute>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t PommesRequestInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

id PommesRequestInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t PommesRequestInstrumentationUtil.mockStream.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*PommesRequestInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PommesRequestInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t PommesRequestInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void PommesRequestInstrumentationUtil.logStartOfPommesRequest(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D5A088]) init];
    if (v7)
    {
      v17 = v7;
      v8 = [objc_allocWithZone(MEMORY[0x277D5A0A8]) init];
      if (v8)
      {
        v9 = v8;
        [v8 setExists_];
        [v17 setStartedOrChanged:v9];
        [v6 setPommesRequestContext:v17];
        v10 = [objc_opt_self() processInfo];
        v11 = NSProcessInfo.isRunningUnitTests.getter();

        if (v11)
        {
          v12 = (*(*v4 + 96))();
        }

        else
        {
          v12 = [objc_opt_self() sharedStream];
        }

        [v12 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v13 = v17;
    }

    else
    {
      v13 = v6;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v17 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v17, v15, "Unable to log start of POMMES request", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

LABEL_15:
}

void PommesRequestInstrumentationUtil.logEndOfPommesRequest(requestId:pommesCandidateId:result:pommesSearchReason:isHandledByPreflight:preflightClientHandlerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v31 = a4;
    v15 = v8;
    v16 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(MEMORY[0x277D5A088]) init];
      if (v18)
      {
        v19 = v18;
        v20 = [objc_allocWithZone(MEMORY[0x277D5A090]) init];
        if (v20)
        {
          v21 = v20;
          [v20 setIsHandledByPreflight_];
          if (a6)
          {
            if (a8)
            {
              v22 = MEMORY[0x223DDF550](a7, a8);
            }

            else
            {
              v22 = 0;
            }

            [v21 setPreflightClientHandlerIdentifier_];
          }

          [v21 setResult_];
          [v21 setPommesSearchReason_];
          [v19 setEnded:v21];
          [v17 setPommesRequestContext:v19];
          v28 = [objc_opt_self() processInfo];
          v29 = NSProcessInfo.isRunningUnitTests.getter();

          if (v29)
          {
            v30 = (*(*v15 + 96))();
          }

          else
          {
            v30 = [objc_opt_self() sharedStream];
          }

          [v30 emitMessage_];
          swift_unknownObjectRelease();

          goto LABEL_23;
        }

        v24 = v17;
      }

      else
      {
        v19 = v17;
        v24 = v31;
      }

      v23 = v19;
    }

    else
    {
      v23 = v31;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);
  v31 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2232BB000, v31, v26, "Unable to log end of POMMES request", v27, 2u);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

LABEL_23:
}

void PommesRequestInstrumentationUtil.logFailedPommesRequest(requestId:pommesCandidateId:failedReason:pommesSearchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D5A088]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D5A098]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setReason_];
        [v11 setPommesSearchReason_];
        [v19 setFailed:v11];
        [v8 setPommesRequestContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log failed POMMES request", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesRequestInstrumentationUtil.logUnableToHandlePommesRequest(requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D5A088]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D5A0B0]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setReason_];
        [v19 setCancelled:v11];
        [v8 setPommesRequestContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log cancelled POMMES request", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesRequestInstrumentationUtil.logPSCScoreReported(requestId:pommesCandidateId:score:parserId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v11 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D5A0E0]) init];
    if (v13)
    {
      v20 = v13;
      [v13 setScore:a6];
      [v20 setClassifierLabel:specialized PommesRequestInstrumentationUtil.classifierLabel(for:)(a4, a5)];
      [v12 setPommesServiceClassifierScoreReported_];
      v14 = [objc_opt_self() processInfo];
      v15 = NSProcessInfo.isRunningUnitTests.getter();

      if (v15)
      {
        v16 = (*(*v7 + 96))();
      }

      else
      {
        v16 = [objc_opt_self() sharedStream];
      }

      [v16 emitMessage_];
      swift_unknownObjectRelease();

      goto LABEL_12;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2232BB000, v20, v18, "Unable to log cancelled PSC score reported", v19, 2u);
    MEMORY[0x223DE0F80](v19, -1, -1);
  }

LABEL_12:
}

uint64_t PommesRequestInstrumentationUtil.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PommesRequestInstrumentationUtil.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t specialized PommesRequestInstrumentationUtil.classifierLabel(for:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD000000000000010 && 0x80000002234D9360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD000000000000024 && 0x80000002234D9380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000018 && 0x80000002234D93B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD000000000000014 && 0x80000002234D93D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

void *SearchToolGlobalRequestXPC.location.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location);
  v2 = v1;
  return v1;
}

uint64_t SearchToolGlobalRequestXPC.searchToolClientId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId + 8);

  return v1;
}

id SearchToolGlobalRequestXPC.__allocating_init(pommesSearchRequest:location:clientEntities:searchToolClientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest] = a1;
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location] = a2;
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities] = a3;
  v12 = &v11[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId];
  *v12 = a4;
  *(v12 + 1) = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id SearchToolGlobalRequestXPC.init(pommesSearchRequest:location:clientEntities:searchToolClientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest] = a1;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location] = a2;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities] = a3;
  v12 = &v5[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId];
  *v12 = a4;
  *(v12 + 1) = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t static SearchToolGlobalRequestXPC.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static SearchToolGlobalRequestXPC.supportsSecureCoding = a1;
  return result;
}

Swift::Void __swiftcall SearchToolGlobalRequestXPC.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest);
  v10 = MEMORY[0x223DDF550](0xD000000000000013, 0x80000002234DBEB0);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location);
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0x223DDF550](0x6E6F697461636F6CLL, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  }

  v32 = v1;
  isa = with.super.isa;
  v14 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities);
  v15 = *(v14 + 16);
  if (v15)
  {
    v17 = v4 + 16;
    v16 = *(v4 + 16);
    v18 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v36 = *(v17 + 56);
    v37 = v16;
    v19 = (v17 - 8);
    v38 = MEMORY[0x277D84F90];
    v34 = v17;
    v35 = v3;
    v16(v8, v18, v3);
    while (1)
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity();
      v20 = Message.serializedData(partial:)();
      v22 = v21;
      (*v19)(v8, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
      }

      v24 = *(v38 + 2);
      v23 = *(v38 + 3);
      if (v24 >= v23 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v38);
      }

      v25 = v38;
      *(v38 + 2) = v24 + 1;
      v26 = &v25[16 * v24];
      *(v26 + 4) = v20;
      *(v26 + 5) = v22;
      v3 = v35;
      v18 += v36;
      if (!--v15)
      {
        break;
      }

      v37(v8, v18, v35);
    }
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = MEMORY[0x223DDF550](0x6E45746E65696C63, 0xEE00736569746974);
  v29 = isa;
  [(objc_class *)isa encodeObject:v27 forKey:v28];

  if (*(v32 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId + 8))
  {
    v30 = MEMORY[0x223DDF550](*(v32 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId));
    v31 = MEMORY[0x223DDF550](0xD000000000000012, 0x80000002234DD5D0);
    [(objc_class *)v29 encodeObject:v30 forKey:v31];
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity)
  {
    type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity);
  }

  return result;
}

id SearchToolGlobalRequestXPC.init(coder:)(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v52 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PommesSearchRequestXPC(0);
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v18)
  {
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.sage);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2232BB000, v23, v24, "Unable to decode search request for SearchToolRequestXPC", v25, 2u);
      MEMORY[0x223DE0F80](v25, -1, -1);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  *&v1[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest] = v18;
  v19 = v18;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v46 = v19;
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location] = NSCoder.decodeObject<A>(of:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2234CF940;
  *(v20 + 32) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  *(v20 + 40) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  NSCoder.decodeObject(of:forKey:)();

  v58 = v14;
  if (!*(&v62 + 1))
  {
    outlined destroy of MediaUserStateCenter?(&v61, &_sypSgMd, &_sypSgMR);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, _sSaySo6NSDataCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v21 = v59;
LABEL_12:
  if (v21 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v47 = ObjectType;
    v48 = v2;
    v49 = a1;
    if (!i)
    {
      break;
    }

    a1 = 0;
    v54 = v21 & 0xFFFFFFFFFFFFFF8;
    v55 = v21 & 0xC000000000000001;
    v53 = (v50 + 56);
    v57 = MEMORY[0x277D84F90];
    v51 = (v50 + 32);
    while (1)
    {
      if (v55)
      {
        v28 = MEMORY[0x223DDFF80](a1, v21);
      }

      else
      {
        if (a1 >= *(v54 + 16))
        {
          goto LABEL_36;
        }

        v28 = *(v21 + 8 * a1 + 32);
      }

      v29 = v28;
      ObjectType = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v2 = v21;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity();
      v30 = v58;
      Message.init(serializedData:extensions:partial:options:)();

      (*v53)(v13, 0, 1, v30);
      v31 = *v51;
      (*v51)(v52, v13, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
      }

      v33 = *(v57 + 2);
      v32 = *(v57 + 3);
      if (v33 >= v32 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v57);
      }

      v35 = v57;
      v34 = v58;
      *(v57 + 2) = v33 + 1;
      v31(&v35[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v33], v52, v34);
      ++a1;
      if (ObjectType == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v57 = MEMORY[0x277D84F90];
LABEL_28:

  v36 = v48;
  *&v48[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities] = v57;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v37 = v49;
  v38 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v38)
  {
    v61 = 0uLL;
    v39 = v38;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v40 = *(&v61 + 1);
    v41 = v61;
    if (!*(&v61 + 1))
    {
      v41 = 0;
    }
  }

  else
  {

    v41 = 0;
    v40 = 0;
  }

  v42 = v47;
  v43 = &v36[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId];
  *v43 = v41;
  *(v43 + 1) = v40;
  v60.receiver = v36;
  v60.super_class = v42;
  v26 = objc_msgSendSuper2(&v60, sel_init);

  return v26;
}

id SearchToolGlobalRequestXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchToolGlobalRequestXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void key path setter for SearchToolGlobalRequestXPCBuilder.pommesSearchRequest : SearchToolGlobalRequestXPCBuilder(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id SearchToolGlobalRequestXPCBuilder.pommesSearchRequest.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void key path setter for SearchToolGlobalRequestXPCBuilder.location : SearchToolGlobalRequestXPCBuilder(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

void *SearchToolGlobalRequestXPCBuilder.location.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t key path setter for SearchToolGlobalRequestXPCBuilder.clientEntities : SearchToolGlobalRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t SearchToolGlobalRequestXPCBuilder.clientEntities.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t key path setter for SearchToolGlobalRequestXPCBuilder.searchToolClientId : SearchToolGlobalRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 48);
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t SearchToolGlobalRequestXPCBuilder.searchToolClientId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void *SearchToolGlobalRequestXPCBuilder.__allocating_init(pommesSearchRequest:)(uint64_t a1)
{
  result = swift_allocObject();
  result[6] = 0;
  result[2] = a1;
  result[3] = 0;
  result[4] = MEMORY[0x277D84F90];
  result[5] = 0;
  return result;
}

void *SearchToolGlobalRequestXPCBuilder.init(pommesSearchRequest:)(uint64_t a1)
{
  v1[6] = 0;
  v1[2] = a1;
  v1[3] = 0;
  v1[4] = MEMORY[0x277D84F90];
  v1[5] = 0;
  return v1;
}

uint64_t SearchToolGlobalRequestXPCBuilder.withLocation(_:)(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v4 = a1;
}

uint64_t SearchToolGlobalRequestXPCBuilder.withClientEntities(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t SearchToolGlobalRequestXPCBuilder.withSearchToolClientId(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

id SearchToolGlobalRequestXPCBuilder.build()()
{
  v1 = (*(*v0 + 112))();
  v2 = (*(*v0 + 136))();
  v3 = (*(*v0 + 160))();
  v4 = (*(*v0 + 184))();
  v6 = v5;
  v7 = type metadata accessor for SearchToolGlobalRequestXPC();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest] = v1;
  *&v8[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location] = v2;
  *&v8[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities] = v3;
  v9 = &v8[OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId];
  *v9 = v4;
  v9[1] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t SearchToolGlobalRequestXPCBuilder.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t SearchToolGlobalRequestXPCBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t UsoTask.isAppLaunchTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v7, v5);
  if (!v6)
  {
    outlined destroy of Any?(v7);
    goto LABEL_5;
  }

  outlined init with copy of Any?(v5, v4);
  type metadata accessor for UsoTask_open_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_start_uso_NoEntity();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_play_uso_NoEntity(), swift_dynamicCast()))
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

      if (v3)
      {
        v1 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        outlined destroy of Any?(v7);
        if (v1)
        {

          v0 = 1;
LABEL_13:
          __swift_destroy_boxed_opaque_existential_1(v4);
          goto LABEL_14;
        }
      }

      else
      {
        outlined destroy of Any?(v7);
      }

      v0 = 0;
      goto LABEL_13;
    }

    outlined destroy of Any?(v7);
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_5:
    v0 = 0;
    goto LABEL_14;
  }

  outlined destroy of Any?(v7);

  __swift_destroy_boxed_opaque_existential_1(v4);
  v0 = 1;
LABEL_14:
  outlined destroy of Any?(v5);
  return v0;
}

uint64_t Siri_Nlu_External_UserParse.firstAppLaunchTask()()
{
  v1 = Siri_Nlu_External_Span.matcherNames.getter();
  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  if (!v0)
  {
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      while (1)
      {
        v4 = 0;
        while ((v2 & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x223DDFF80](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v1;
          }

LABEL_8:
          if (UsoTask.isAppLaunchTask.getter())
          {
            goto LABEL_14;
          }

          ++v4;
          if (v5 == v3)
          {
            goto LABEL_17;
          }
        }

        if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          goto LABEL_17;
        }
      }

      v1 = *(v2 + 8 * v4 + 32);

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  return v1;
}

uint64_t ParkingLocationProfileSliceResolver.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v14 - v4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v11 = *(*(v10 - 8) + 56);
  v11(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
  v11(v5, 1, 1, v10);
  v12 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v5, v8 + v12);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) = 0;
  return v8;
}

uint64_t ParkingLocationProfileSliceResolver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
  v8(v5, 1, 1, v7);
  v9 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v5, v0 + v9);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) = 0;
  return v0;
}

uint64_t ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v82 = &v76 - v9;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v80 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PerformanceUtil.Ticket(0);
  v81 = *(v14 - 1);
  v15 = *(v81 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v18 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v86 = &v76 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27 = a1;
    if (a2)
    {
      v78 = a3;
      v28 = objc_allocWithZone(MEMORY[0x277D474F8]);
      v79 = v27;
      swift_unknownObjectRetain();
      v77 = a2;
      v29 = [v28 init];
      UUID.init()();
      v30 = UUID.uuidString.getter();
      v32 = v31;
      (*(v22 + 8))(v26, v21);
      v33 = MEMORY[0x223DDF550](v30, v32);

      [v29 setAceId_];

      v34 = v29;
      [v34 setRefId_];
      v35 = v86;
      Date.init()();
      v36 = v35 + v14[5];
      *v36 = "SiriInformationSearch/ParkingLocationProfileSliceResolver.swift";
      *(v36 + 8) = 63;
      *(v36 + 16) = 2;
      *(v35 + v14[6]) = 45;
      v37 = v35 + v14[7];
      *v37 = "resolveParkingLocationSlice(serviceHelper:dispatchQueue:)";
      *(v37 + 8) = 57;
      *(v37 + 16) = 2;
      v38 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL);
      v39 = (v35 + v14[8]);
      *v39 = v38;
      v39[1] = v40;
      outlined init with copy of PerformanceUtil.Ticket(v35, v18);
      v41 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v42 = (v15 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      outlined init with take of PerformanceUtil.Ticket(v18, v43 + v41);
      v44 = v77;
      *(v43 + v42) = v77;
      v45 = v85;
      *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v85;
      aBlock[4] = partial apply for closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:);
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_10;
      v46 = _Block_copy(aBlock);
      v47 = v44;

      [v79 handleCommand:v34 completion:v46];
      _Block_release(v46);

      v48 = *(v45 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_semaphore);
      OS_dispatch_semaphore.wait()();
      v49 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
      swift_beginAccess();
      v50 = v45 + v49;
      v51 = v82;
      outlined init with copy of MediaUserStateCenter?(v50, v82, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
      v53 = v83;
      v52 = v84;
      if ((*(v83 + 48))(v51, 1, v84) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v51, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
        v54 = v78;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v55 = v47;
        v56 = type metadata accessor for Logger();
        __swift_project_value_buffer(v56, static Logger.pommes);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_2232BB000, v57, v58, "There was a problem resolving parking location profile slice value", v59, 2u);
          MEMORY[0x223DE0F80](v59, -1, -1);
        }

        v60 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
        _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
        static Message.with(_:)();

        swift_unknownObjectRelease();
        outlined destroy of PerformanceUtil.Ticket(v35);
        return (*(*(v60 - 8) + 56))(v54, 0, 1, v60);
      }

      else
      {
        v72 = v80;
        (*(v53 + 32))(v80, v51, v52);
        v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
        MEMORY[0x28223BE20](v73, v74);
        *(&v76 - 2) = v72;
        _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
        v75 = v78;
        static Message.with(_:)();

        swift_unknownObjectRelease();
        outlined destroy of PerformanceUtil.Ticket(v35);
        (*(*(v73 - 8) + 56))(v75, 0, 1, v73);
        return (*(v53 + 8))(v72, v52);
      }
    }

    v66 = one-time initialization token for pommes;
    swift_unknownObjectRetain();
    if (v66 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.pommes);
    v63 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2232BB000, v63, v68, "Cannot create parking location slice because there is no dispatch queue", v69, 2u);
      MEMORY[0x223DE0F80](v69, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_2232BB000, v63, v64, "Cannot create parking location slice because there is no service helper", v65, 2u);
      MEMORY[0x223DE0F80](v65, -1, -1);
    }
  }

  v70 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v71 = *(*(v70 - 8) + 56);

  return v71(a3, 1, 1, v70);
}

uint64_t closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v20[2] = a5;
  v20[3] = a2;
  v20[4] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13_0;
  v21 = _Block_copy(aBlock);

  v22 = a2;
  v23 = a1;
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DDFBF0](0, v19, v14, v21);
  _Block_release(v21);
  (*(v10 + 8))(v14, v9);
  (*(v15 + 8))(v19, v26);
}

Swift::Int closure #1 in closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(uint64_t a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_10;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2232BB000, v8, v9, "Service helper returned an error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223DE0F80](v11, -1, -1);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  else
  {
    if (a3)
    {
      v16 = a3;
      ParkingLocationProfileSliceResolver.handleAceVehicleEvent(_:)(v16);

      goto LABEL_10;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2232BB000, v8, v20, "Received nil response from service helper", v21, 2u);
      MEMORY[0x223DE0F80](v21, -1, -1);
    }
  }

LABEL_10:
  v17 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_semaphore);
  return OS_dispatch_semaphore.signal()();
}

uint64_t closure #2 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  (*(v4 + 104))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D396F8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2234CF920;
  ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()();
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

uint64_t closure #3 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  (*(v7 + 104))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D396F8]);
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

void ParkingLocationProfileSliceResolver.handleAceVehicleEvent(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v48 - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = objc_opt_self();
  v50 = a1;
  v11 = [v10 aceObjectWithGenericCommand_];
  if (!v11)
  {

LABEL_9:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v20 = a1;
    v50 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v50, v21))
    {
      goto LABEL_34;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51 = v23;
    *v22 = 136315138;
    v24 = v20;
    v25 = [v24 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v51);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_2232BB000, v50, v21, "Received invalid service helper response %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x223DE0F80](v23, -1, -1);
    MEMORY[0x223DE0F80](v22, -1, -1);
    goto LABEL_13;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v31 = [v30 events];
      if (v31)
      {
        v32 = v31;
        type metadata accessor for SALocalSearchVehicleEvent();
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v33 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_18:
            if ((v33 & 0xC000000000000001) != 0)
            {
              v34 = MEMORY[0x223DDFF80](0, v33);
            }

            else
            {
              if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return;
              }

              v34 = *(v33 + 32);
            }

            v35 = v34;

            ParkingLocationProfileSliceResolver.buildParkingLocation(_:)(v35, v7);
            ParkingLocationProfileSliceResolver.buildParkingLocationProfileSlice(_:)(v7);

            outlined destroy of MediaUserStateCenter?(v7, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
            return;
          }
        }

        else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }
      }

      *(v1 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) = 1;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.pommes);
      v38 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2232BB000, v38, v46, "No vehicle event found", v47, 2u);
        MEMORY[0x223DE0F80](v47, -1, -1);
      }

LABEL_33:

      goto LABEL_34;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.pommes);
    v50 = v50;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_33;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v40 = 136315138;
    swift_getObjectType();
    v42 = _typeName(_:qualified:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v51);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_2232BB000, v38, v39, "Service helper response was of type %s, not SALocalSearchVehicleEventSearchCompleted", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x223DE0F80](v41, -1, -1);
    MEMORY[0x223DE0F80](v40, -1, -1);

LABEL_13:
    return;
  }

  v14 = v13;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.pommes);
  v49 = v12;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = [v14 errorCode];

    _os_log_impl(&dword_2232BB000, v16, v17, "Command failed with error code = %ld", v18, 0xCu);
    MEMORY[0x223DE0F80](v18, -1, -1);

LABEL_34:
    v36 = v50;
    goto LABEL_35;
  }

  v36 = v49;
LABEL_35:
}

uint64_t ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()()
{
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) == 1)
  {
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
      _os_log_impl(&dword_2232BB000, v2, v3, "Resolution succeeded but no vehicle event found", v4, 2u);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
  return static Message.with(_:)();
}

uint64_t closure #1 in ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()()
{
  v0 = type metadata accessor for Google_Protobuf_Any();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  (*(v13 + 104))(v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD0]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v4 + 104))(v8, *MEMORY[0x277D39D58], v3);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  Google_Protobuf_Any.init()();
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
}

uint64_t closure #2 in ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  (*(v10 + 104))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD0]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v1 + 104))(v5, *MEMORY[0x277D39D50], v0);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
}

uint64_t ParkingLocationProfileSliceResolver.buildParkingLocationProfileSlice(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a1, v13, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ParkingLocationVSgMR);
    ParkingLocationProfileSliceResolver.buildResolutionStateFailedSliceValue()();
    v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
    swift_beginAccess();
    outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v8, v2 + v21);
    return swift_endAccess();
  }

  else
  {
    (*(v15 + 32))(v19, v13, v14);
    v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
    MEMORY[0x28223BE20](v23, v24);
    *(&v26 - 2) = v19;
    _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
    static Message.with(_:)();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    v25 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
    swift_beginAccess();
    outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSliceValue?(v8, v2 + v25);
    swift_endAccess();
    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t closure #1 in ParkingLocationProfileSliceResolver.buildParkingLocationProfileSlice(_:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v30 = *(v32 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v32, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for Google_Protobuf_Any();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  v31[3] = v22;
  v31[4] = _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ParkingLocation and conformance Apple_Parsec_Siri_V2alpha_ParkingLocation, MEMORY[0x277D39680]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v27, v22);
  defaultAnyTypeURLPrefix.getter();
  v24 = v28;
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  if (v24)
  {

    (*(v17 + 56))(v15, 1, 1, v16);
    Google_Protobuf_Any.init()();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v15, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v17 + 56))(v15, 0, 1, v16);
    (*(v17 + 32))(v21, v15, v16);
  }

  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  (*(v6 + 104))(v10, *MEMORY[0x277D39AD0], v29);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v30 + 104))(v5, *MEMORY[0x277D39D58], v32);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
}

uint64_t ParkingLocationProfileSliceResolver.buildParkingLocation(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 location];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 latitude];
  if (!v5 || (v6 = v5, [v5 floatValue], v8 = v7, v6, (v9 = objc_msgSend(v4, sel_longitude)) == 0))
  {

LABEL_13:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.pommes);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2232BB000, v30, v31, "Missing location in the local search vehicle event", v32, 2u);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    goto LABEL_18;
  }

  v10 = v9;
  [v9 floatValue];
  v12 = v11;

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  v14 = v4;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    v19 = [v14 latitude];
    *(v17 + 4) = v19;
    *v18 = v19;
    *(v17 + 12) = 2112;
    v20 = [v14 longitude];
    *(v17 + 14) = v20;
    v18[1] = v20;
    _os_log_impl(&dword_2232BB000, v15, v16, "Fetched parking location with latlong (%@, %@)", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v18, -1, -1);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  if (v8 != 0.0 || v12 != 0.0)
  {
    if (fabsf(v8) <= 90.0 && fabsf(v12) <= 180.0)
    {
      v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
      MEMORY[0x28223BE20](v36, v37);
      _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ParkingLocation and conformance Apple_Parsec_Siri_V2alpha_ParkingLocation, MEMORY[0x277D39680]);
      static Message.with(_:)();

      return (*(*(v36 - 8) + 56))(a2, 0, 1, v36);
    }

    v21 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v38))
    {
      goto LABEL_27;
    }

    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v8;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v12;
    v24 = "Received latlong out of valid range: (%f, %f)";
    v25 = v38;
    v26 = v21;
    v27 = v23;
    v28 = 22;
    goto LABEL_26;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Received zero for both latlong, treating as error";
    v25 = v22;
    v26 = v21;
    v27 = v23;
    v28 = 2;
LABEL_26:
    _os_log_impl(&dword_2232BB000, v26, v25, v24, v27, v28);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

LABEL_27:

LABEL_18:
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ParkingLocation();
  v34 = *(*(v33 - 8) + 56);

  return v34(a2, 1, 1, v33);
}

uint64_t closure #1 in ParkingLocationProfileSliceResolver.buildParkingLocation(_:)(float a1, float a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = [a4 notes];
  if (v10)
  {
    v12 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = Apple_Parsec_Siri_V2alpha_ParkingLocation.notes.setter();
  }

  MEMORY[0x28223BE20](v10, v11);
  *(&v14 - 4) = a1;
  *(&v14 - 3) = a2;
  _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationBuilderParams and conformance Apple_Parsec_Siri_V2alpha_LocationBuilderParams, MEMORY[0x277D39A80]);
  static Message.with(_:)();
  return Apple_Parsec_Siri_V2alpha_ParkingLocation.location.setter();
}

uint64_t ParkingLocationProfileSliceResolver.deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);

  return v0;
}

uint64_t ParkingLocationProfileSliceResolver.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t type metadata accessor for ParkingLocationProfileSliceResolver()
{
  result = type metadata singleton initialization cache for ParkingLocationProfileSliceResolver;
  if (!type metadata singleton initialization cache for ParkingLocationProfileSliceResolver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ParkingLocationProfileSliceResolver()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t partial apply for closure #1 in closure #1 in ParkingLocationProfileSliceResolver.buildParkingLocation(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.latitude.setter();
  return Apple_Parsec_Siri_V2alpha_LocationBuilderParams.longitude.setter();
}

unint64_t type metadata accessor for SALocalSearchVehicleEvent()
{
  result = lazy cache variable for type metadata for SALocalSearchVehicleEvent;
  if (!lazy cache variable for type metadata for SALocalSearchVehicleEvent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SALocalSearchVehicleEvent);
  }

  return result;
}

uint64_t _s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DataProviderManager.__allocating_init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v37 = a7;
  v38 = a8;
  v35 = a4;
  v36 = a5;
  v41 = a6;
  v42 = a11;
  v29 = a12;
  v40 = a13;
  v33 = a14;
  v34 = a3;
  v30 = a15;
  v31 = a10;
  v18 = swift_allocObject();
  v39 = a16;
  v20 = a16[3];
  v19 = a16[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21, v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = v29;
  v32 = specialized DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(a1, a2, v34, v35, v36, v41, v37, v38, a9, v31, v42, v29, v40, a14, a15, v24, v18, v20, v19);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v32;
}

uint64_t specialized AnyDataProvider.waitForPrepare(timeout:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContinuousClock();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = 1;
  ContinuousClock.init()();
  v20 = &v24;
  v21 = v2;
  v22 = a1;
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  Clock.measure(_:)();
  (*(v5 + 8))(v9, v4);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v15 = Duration.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 96), *(v2 + 104), &v23);
    _os_log_impl(&dword_2232BB000, v11, v12, "Waited %s for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v14, -1, -1);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  return v24;
}

uint64_t key path setter for DataProviderManager.appChecking : DataProviderManager(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of MediaUserStateCenter?(a1, v5, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of PommesAppChecking?(v5, v3 + 144);
  return swift_endAccess();
}

uint64_t DataProviderManager.setServiceHelper(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pMd, &_sSo32AFRequestDispatcherServiceHelper_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2232BB000, v5, v6, "Creating POMMES service helper (underlying: %s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223DE0F80](v8, -1, -1);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for AssistantDataCache();
  v13 = swift_allocObject();
  v14 = closure #1 in variable initialization expression of AssistantDataCache.contactsQueue();
  *(v13 + 144) = 0;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 122) = 0u;
  *(v13 + 16) = v14;
  *(v13 + 24) = a1;
  *(v13 + 32) = v12;
  *(v13 + 40) = &protocol witness table for CNContactStore;
  swift_beginAccess();
  *(v13 + 144) = 0;
  v15 = *(v2 + 128);
  *(v2 + 128) = v13;
  swift_unknownObjectRetain();

  v16 = *(v2 + 136);
  *(v2 + 136) = a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t DataProviderManager.getServiceHelper()()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v12 = *(v1 + 136);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pSgMd, &_sSo32AFRequestDispatcherServiceHelper_pSgMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2232BB000, v3, v4, "Retrieving POMMES service helper (underlying: %s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223DE0F80](v6, -1, -1);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v10 = *(v1 + 136);
  return swift_unknownObjectRetain();
}

uint64_t DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v35 = a7;
  v36 = a8;
  v30 = a10;
  v31 = a2;
  v39 = a6;
  v40 = a11;
  v29 = a12;
  v34 = a14;
  v32 = a15;
  v37 = a16;
  v38 = a13;
  v20 = a16[3];
  v21 = a16[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a16, v20);
  v23 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v22, v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = v29;
  v33 = specialized DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)(a1, v31, a3, a4, a5, v39, v35, v36, a9, v30, v40, v29, v38, a14, a15, v25, v33, v20, v21);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v33;
}

Swift::Void __swiftcall DataProviderManager.prepareForSearchAtPommesRequestStart()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v23 = *(v1 + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch18AssistantDataCacheCSgMd, &_s21SiriInformationSearch18AssistantDataCacheCSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2232BB000, v8, v9, "DataProviderManager scheduling work to prepare for search at POMMES request start (helper: %s)...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223DE0F80](v11, -1, -1);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  Date.init()();
  v15 = &v6[v2[5]];
  *v15 = "SiriInformationSearch/DataProviderManager.swift";
  *(v15 + 1) = 47;
  v15[16] = 2;
  *&v6[v2[6]] = 128;
  v16 = &v6[v2[7]];
  *v16 = "prepareForSearchAtPommesRequestStart()";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v17 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000032);
  v18 = &v6[v2[8]];
  *v18 = v17;
  v18[1] = v19;
  v20 = *(v1 + 128);
  if (v20)
  {
    v21 = *(v1 + 16);
    v22 = *(*v20 + 176);

    v22(v21, 1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v6, 0);
  outlined destroy of PerformanceUtil.Ticket(v6);
}

double closure #1 in DataProviderManager.assistantDataSnapshot.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(*v3 + 120);
    v5 = *(a1 + 128);

    v4(v10, v6);

    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    a2[4] = v11[0];
    *(a2 + 74) = *(v11 + 10);
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 74) = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t DataProviderManager.resolveProfileSlice(to:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v72 = a3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v73 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v74 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v76 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v65 - v19;
  v21 = type metadata accessor for PerformanceUtil.Ticket(0);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v67 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v65 - v33;
  v66 = *(v27 + 16);
  v65 = v27 + 16;
  v66(&v65 - v33, a1, v26);
  v35 = type metadata accessor for PommesSearchRequest(0);
  if (!*(*(a2 + *(v35 + 92)) + 16))
  {
    return (*(v27 + 32))(v72, v34, v26);
  }

  v36 = v35;
  v70 = v27;
  v69 = v34;
  v71 = v26;
  Date.init()();
  v37 = &v25[v21[5]];
  *v37 = "SiriInformationSearch/DataProviderManager.swift";
  *(v37 + 1) = 47;
  v37[16] = 2;
  *&v25[v21[6]] = 161;
  v38 = &v25[v21[7]];
  *v38 = "resolveProfileSlice(to:with:)";
  *(v38 + 1) = 29;
  v38[16] = 2;
  v39 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL);
  v40 = v21[8];
  v68 = v25;
  v41 = &v25[v40];
  *v41 = v39;
  v41[1] = v42;
  v43 = v75;
  v44 = *(v75 + 64);
  outlined init with copy of PommesSearchRequest(a2, v20);
  (*(*(v36 - 8) + 56))(v20, 0, 1, v36);
  v45 = *(v43 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v46 = v81;
  OS_dispatch_queue.sync<A>(execute:)();
  v81 = v46;
  v47 = *(v43 + 136);
  swift_unknownObjectRetain();
  v48 = v74;
  static DispatchTime.now()();
  v49 = v73;
  *v73 = 1;
  v51 = v77;
  v50 = v78;
  (*(v77 + 104))(v49, *MEMORY[0x277D85178], v78);
  v52 = v76;
  MEMORY[0x223DDF450](v48, v49);
  (*(v51 + 8))(v49, v50);
  v53 = v80;
  v54 = *(v79 + 8);
  v54(v48, v80);
  (*(*v44 + 240))(&v83, v20, v82, v47, v45, v52);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v82, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v54(v52, v53);
  outlined destroy of MediaUserStateCenter?(v20, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  if (v83)
  {
    v55 = v71;
    v56 = v69;
    if (*(v83 + 16))
    {
      v57 = v67;
      DataProviderManager.appendProfileSlices(_:to:)(v83, v69, v67);

      v58 = v70;
      v59 = *(v70 + 8);
      v59(v56, v55);
      (*(v58 + 32))(v56, v57, v55);
      v66(v72, v56, v55);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v60 = v68;
      (*(*static PerformanceUtil.shared + 184))(v68, 0);
      outlined destroy of PerformanceUtil.Ticket(v60);
      return (v59)(v56, v55);
    }
  }

  else
  {
    v55 = v71;
    v56 = v69;
  }

  lazy protocol witness table accessor for type PegasusError and conformance PegasusError();
  swift_allocError();
  *v62 = 6;
  swift_willThrow();
  v63 = v70;
  v64 = v68;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v64, 0);
  outlined destroy of PerformanceUtil.Ticket(v64);
  return (*(v63 + 8))(v56, v55);
}

uint64_t DataProviderManager.addAmpStorefront(to:for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v72 = type metadata accessor for DispatchTimeInterval();
  v71 = *(v72 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v72, v9);
  v68 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for DispatchTime();
  v69 = *(v70 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v70, v12);
  v66 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v67 = &v66 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v25 = *(*(Context - 8) + 16);
  v73 = a3;
  v26 = v25(a3, a1, Context);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v28 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v26, v27);
    v64 = v4;
    v65 = a2;
    v74 = a2;
    Date.init()();
    v29 = *(*v28 + 200);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch14MediaUserState_pGSgMd, &_sSay21SiriInformationSearch14MediaUserState_pGSgMR);
    v64 = &v63;
    v65 = v30;
    LOBYTE(v63) = 2;
    v29(v81, 0xD00000000000003FLL, 0x80000002234DD940, 0, v23, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 183, "addAmpStorefront(to:for:)", 25, v63, partial apply for closure #1 in DataProviderManager.addAmpStorefront(to:for:));
    v31 = *(v19 + 8);
    v19 += 8;
    v31(v23, v18);
    v32 = v81[0];
    v33 = *(v4 + 104);
    if (v33)
    {
      v34 = v66;
      static DispatchTime.now()();
      v35 = v68;
      *v68 = 1;
      v36 = v71;
      v37 = v72;
      (*(v71 + 104))(v35, *MEMORY[0x277D85178], v72);
      v38 = v67;
      MEMORY[0x223DDF450](v34, v35);
      (*(v36 + 8))(v35, v37);
      v39 = v69;
      v40 = v70;
      (*(v69 + 8))(v34, v70);
      v41 = *(v39 + 56);
      v23 = (v39 + 56);
      v41(v38, 0, 1, v40);
      v42 = (*(*v33 + 176))(v38);
      outlined destroy of MediaUserStateCenter?(v38, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    }

    else
    {
      v42 = 0;
    }

    v43 = type metadata accessor for PommesSearchRequest(0);
    if (*(v74 + *(v43 + 60)) == 1)
    {
      if (!v42)
      {
        goto LABEL_22;
      }

      v44 = (v74 + *(v43 + 84));
      v45 = v44[1];
      if (v45)
      {
        break;
      }
    }

LABEL_22:
    if (!v32)
    {
      return Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
    }

    v57 = *(v32 + 16);
    if (!v57)
    {
LABEL_28:

      return Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
    }

    a2 = 0;
    v18 = v32 + 32;
    while (a2 < *(v32 + 16))
    {
      outlined init with copy of AppDataProviding(v18, v75);
      v23 = v76;
      v58 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      if ((*(v58 + 32))(v23, v58))
      {

        outlined init with take of PommesAppChecking(v75, &v78);
        v59 = *(&v79 + 1);
        v60 = v80;
        __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
        (*(v60 + 16))(v59, v60);
        __swift_destroy_boxed_opaque_existential_1(&v78);
        return Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      }

      ++a2;
      __swift_destroy_boxed_opaque_existential_1(v75);
      v18 += 40;
      if (v57 == a2)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_40:
    v26 = swift_once();
  }

  v23 = *v44;
  swift_getKeyPath();
  MUXContext.userInfo(where:is:)(v23, v45, v42, v81);

  if (!v81[1])
  {
    goto LABEL_22;
  }

  v83 = v82;
  outlined init with copy of String(&v83, &v78);
  result = outlined destroy of MediaUserStateCenter?(v81, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
  if (!v32)
  {
    goto LABEL_32;
  }

  v47 = *(v32 + 16);
  if (!v47)
  {
LABEL_31:

LABEL_32:
    outlined destroy of String(&v83);
    v78 = 0u;
    v79 = 0u;
    v80 = 0;
LABEL_35:
    outlined init with copy of MediaUserStateCenter?(&v78, v75, &_s21SiriInformationSearch14MediaUserState_pSgMd, &_s21SiriInformationSearch14MediaUserState_pSgMR);
    v61 = v76;
    if (v76)
    {
      v62 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      (*(v62 + 16))(v61, v62);
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(v75, &_s21SiriInformationSearch14MediaUserState_pSgMd, &_s21SiriInformationSearch14MediaUserState_pSgMR);
    }

    Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
    return outlined destroy of MediaUserStateCenter?(&v78, &_s21SiriInformationSearch14MediaUserState_pSgMd, &_s21SiriInformationSearch14MediaUserState_pSgMR);
  }

  v48 = 0;
  v49 = v83;
  v50 = v32 + 32;
  while (v48 < *(v32 + 16))
  {
    outlined init with copy of AppDataProviding(v50, v75);
    v51 = v76;
    v52 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v53 = (*(v52 + 48))(v51, v52);
    if (v54)
    {
      if (v53 == v49 && v54 == *(&v49 + 1))
      {

LABEL_34:

        outlined destroy of String(&v83);
        outlined init with take of PommesAppChecking(v75, &v78);
        goto LABEL_35;
      }

      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v56)
      {
        goto LABEL_34;
      }
    }

    ++v48;
    result = __swift_destroy_boxed_opaque_existential_1(v75);
    v50 += 40;
    if (v47 == v48)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in DataProviderManager.addAmpStorefront(to:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v34 - v23;
  v25 = a1[3];
  outlined init with copy of PommesSearchRequest(a2, &v34 - v23);
  v26 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  v27 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v28 = v35;
  OS_dispatch_queue.sync<A>(execute:)();
  v35 = v28;
  v29 = a1[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v10 = 1;
  (*(v6 + 104))(v10, *MEMORY[0x277D85178], v5);
  MEMORY[0x223DDF450](v16, v10);
  (*(v6 + 8))(v10, v5);
  v30 = *(v36 + 8);
  v31 = v16;
  v32 = v37;
  v30(v31, v37);
  (*(*v25 + 240))(v24, v38, v29, v27, v19);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v38, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v30(v19, v32);
  return outlined destroy of MediaUserStateCenter?(v24, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addAppInfoSlice(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v28 = type metadata accessor for Date();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + 16);
  v29 = v18;
  v19 = v17(v16, a1);
  if (one-time initialization token for shared != -1)
  {
    v19 = swift_once();
  }

  v27 = &v27;
  v21 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v19, v20);
  v25 = v3;
  v26 = a2;
  Date.init()();
  v22 = *(*v21 + 200);
  v25 = &v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMd, &_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMR);
  LOBYTE(v24) = 2;
  v22(&v31, 0xD000000000000043, 0x80000002234DD9A0, 0, v10, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 215, "addAppInfoSlice(to:for:)", 24, v24, partial apply for closure #1 in DataProviderManager.addAppInfoSlice(to:for:));
  (*(v6 + 8))(v10, v28);
  if (!v31)
  {
    return (*(v12 + 32))(v30, v16, v29);
  }

  DataProviderManager.appendProfileSlices(_:to:)(v31, v16, v30);

  return (*(v12 + 8))(v16, v29);
}

uint64_t closure #1 in DataProviderManager.addAppInfoSlice(to:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v34 - v23;
  v25 = a1[5];
  outlined init with copy of PommesSearchRequest(a2, &v34 - v23);
  v26 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  v27 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v28 = v35;
  OS_dispatch_queue.sync<A>(execute:)();
  v35 = v28;
  v29 = a1[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v10 = 1;
  (*(v6 + 104))(v10, *MEMORY[0x277D85178], v5);
  MEMORY[0x223DDF450](v16, v10);
  (*(v6 + 8))(v10, v5);
  v30 = *(v36 + 8);
  v31 = v16;
  v32 = v37;
  v30(v31, v37);
  (*(*v25 + 240))(v24, v38, v29, v27, v19);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v38, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v30(v19, v32);
  return outlined destroy of MediaUserStateCenter?(v24, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addNavigationAppInfoSlice(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v28 = type metadata accessor for Date();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + 16);
  v29 = v18;
  v19 = v17(v16, a1);
  if (one-time initialization token for shared != -1)
  {
    v19 = swift_once();
  }

  v27 = &v27;
  v21 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v19, v20);
  v25 = v3;
  v26 = a2;
  Date.init()();
  v22 = *(*v21 + 200);
  v25 = &v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMd, &_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMR);
  LOBYTE(v24) = 2;
  v22(&v31, 0xD000000000000052, 0x80000002234DDA10, 0, v10, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 241, "addNavigationAppInfoSlice(to:for:)", 34, v24, partial apply for closure #1 in DataProviderManager.addNavigationAppInfoSlice(to:for:));
  (*(v6 + 8))(v10, v28);
  if (!v31)
  {
    return (*(v12 + 32))(v30, v16, v29);
  }

  DataProviderManager.appendProfileSlices(_:to:)(v31, v16, v30);

  return (*(v12 + 8))(v16, v29);
}

uint64_t closure #1 in DataProviderManager.addNavigationAppInfoSlice(to:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v29 - v19;
  v21 = a1[6];
  outlined init with copy of PommesSearchRequest(a2, &v29 - v19);
  v22 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);
  v23 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v30 = v3;
  v24 = a1[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  if (one-time initialization token for timeout != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for DispatchTimeInterval();
  v26 = __swift_project_value_buffer(v25, static PreferredNavigationAppDataProvider.timeout);
  MEMORY[0x223DDF450](v12, v26);
  v27 = *(v7 + 8);
  v27(v12, v6);
  (*(*v21 + 240))(v20, v31, v24, v23, v15);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v31, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v27(v15, v6);
  return outlined destroy of MediaUserStateCenter?(v20, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addSiriKitAppInfoSlice(to:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v22 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    v9 = swift_once();
  }

  v20[1] = v20;
  v13 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v9, v10);
  v18 = v3;
  v19 = a2;
  Date.init()();
  v14 = *(*v13 + 200);
  v18 = &v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMd, &_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGSgMR);
  LOBYTE(v17) = 2;
  v14(&v23, 0xD00000000000004ALL, 0x80000002234DDAA0, 0, v12, "SiriInformationSearch/DataProviderManager.swift", 47, 2, 269, "addSiriKitAppInfoSlice(to:for:)", 31, v17, partial apply for closure #1 in DataProviderManager.addSiriKitAppInfoSlice(to:for:));
  (*(v6 + 8))(v12, v5);
  if (v23)
  {
    DataProviderManager.appendProfileSlices(_:to:)(v23, v22, v21);
  }

  else
  {
    v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
    return (*(*(v16 - 8) + 16))(v21, v22, v16);
  }
}

uint64_t closure #1 in DataProviderManager.addSiriKitAppInfoSlice(to:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v34 - v23;
  v25 = a1[7];
  outlined init with copy of PommesSearchRequest(a2, &v34 - v23);
  v26 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  v27 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v28 = v35;
  OS_dispatch_queue.sync<A>(execute:)();
  v35 = v28;
  v29 = a1[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v10 = 1;
  (*(v6 + 104))(v10, *MEMORY[0x277D85178], v5);
  MEMORY[0x223DDF450](v16, v10);
  (*(v6 + 8))(v10, v5);
  v30 = *(v36 + 8);
  v31 = v16;
  v32 = v37;
  v30(v31, v37);
  (*(*v25 + 240))(v24, v38, v29, v27, v19);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v38, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v30(v19, v32);
  return outlined destroy of MediaUserStateCenter?(v24, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addMarketplaceInfo(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59, v8);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v52 - v28;
  v56 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  v55 = *(v56 - 8);
  v30 = *(v55 + 64);
  v32 = MEMORY[0x28223BE20](v56, v31);
  v52 = &v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v53 = &v52 - v35;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v37 = *(*(v36 - 8) + 16);
  v54 = a2;
  v37(a2, a1, v36);
  v38 = v3[9];
  v39 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
  v40 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v41 = v3[17];
  swift_unknownObjectRetain();
  static DispatchTime.now()();
  *v10 = 1;
  v42 = v59;
  (*(v6 + 104))(v10, *MEMORY[0x277D85178], v59);
  MEMORY[0x223DDF450](v16, v10);
  (*(v6 + 8))(v10, v42);
  v43 = v58;
  v44 = *(v57 + 8);
  v44(v16, v58);
  (*(*v38 + 240))(v24, v61, v41, v40, v19);
  swift_unknownObjectRelease();
  outlined destroy of MediaUserStateCenter?(v61, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  v45 = v43;
  v46 = v55;
  v44(v19, v45);
  v47 = v24;
  v48 = v56;
  outlined destroy of MediaUserStateCenter?(v47, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  if ((*(v46 + 48))(v29, 1, v48) == 1)
  {
    return outlined destroy of MediaUserStateCenter?(v29, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  }

  v50 = v53;
  (*(v46 + 32))(v53, v29, v48);
  (*(v46 + 16))(v52, v50, v48);
  v51 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
  Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.setter();
  v51(v60, 0);
  return (*(v46 + 8))(v50, v48);
}

uint64_t DataProviderManager.addUIScale(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 128);
  if (v5 && (v6 = *(*v5 + 120), v7 = , v6(v21, v7), , v21[3]) && (v8 = v21[7], v9 = v22, outlined destroy of MediaUserStateCenter?(v21, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR), (v9 & 1) == 0))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v8;
      _os_log_impl(&dword_2232BB000, v17, v18, "Adding UI scale %f to Pegasus query context", v19, 0xCu);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
    (*(*(Context - 8) + 16))(a2, a1, Context);
    return Apple_Parsec_Search_PegasusQueryContext.uiScale.setter();
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
      _os_log_impl(&dword_2232BB000, v11, v12, "No UI scale available from assistant data cache.", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    v14 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
    return (*(*(v14 - 8) + 16))(a2, a1, v14);
  }
}

void DataProviderManager.addTemperatureUnit(to:)()
{
  v1 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 128);
  if (v7)
  {
    v8 = *(*v7 + 120);

    v8(v30, v9);

    if (v30[3])
    {
      v11 = v30[9];
      v10 = v30[10];

      outlined destroy of MediaUserStateCenter?(v30, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
      if (v10)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.pommes);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v29 = v16;
          *v15 = 136315138;
          *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v29);
          _os_log_impl(&dword_2232BB000, v13, v14, "Adding temperatureUnit %s to Pegasus query context", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x223DE0F80](v16, -1, -1);
          MEMORY[0x223DE0F80](v15, -1, -1);
        }

        v17 = *MEMORY[0x277D47C28];
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v11 && v10 == v18)
        {
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0)
          {
            v25 = *MEMORY[0x277D47C30];
            if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v11 && v10 == v26)
            {

              v24 = MEMORY[0x277D38C10];
            }

            else
            {
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v24 = MEMORY[0x277D38C20];
              if (v27)
              {
                v24 = MEMORY[0x277D38C10];
              }
            }

            goto LABEL_18;
          }
        }

        v24 = MEMORY[0x277D38C18];
LABEL_18:
        (*(v2 + 104))(v6, *v24, v1);
        Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
        return;
      }
    }
  }

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
    _os_log_impl(&dword_2232BB000, v20, v21, "No temperatureUnit available from assistant data cache.", v22, 2u);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }
}

void DataProviderManager.addMuxSettings(to:for:)(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v4 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for DispatchTime();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v63 - v28;
  v30 = *(v2 + 104);
  if (v30)
  {
    static DispatchTime.now()();
    *v18 = 1;
    (*(v14 + 104))(v18, *MEMORY[0x277D85178], v13);
    MEMORY[0x223DDF450](v24, v18);
    (*(v14 + 8))(v18, v13);
    (*(v20 + 8))(v24, v19);
    (*(v20 + 56))(v29, 0, 1, v19);
    v30 = (*(*v30 + 176))(v29);
    outlined destroy of MediaUserStateCenter?(v29, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  }

  v31 = type metadata accessor for PommesSearchRequest(0);
  if (*(a2 + *(v31 + 60)) == 1)
  {
    if (v30)
    {
      v32 = v31;
      swift_getKeyPath();
      MUXContext.userInfo(where:is:)(*(a2 + *(v32 + 84)), *(a2 + *(v32 + 84) + 8), v30, v70);

      if (v71)
      {
        v33 = v72;
        outlined destroy of MediaUserStateCenter?(v70, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
        v34 = [v33 temperatureUnit];
        if (!v34)
        {
          goto LABEL_22;
        }

        v35 = v34;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.pommes);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v69 = v43;
          *v42 = 136315138;
          *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v69);
          _os_log_impl(&dword_2232BB000, v40, v41, "Adding temperatureUnit %s to Pegasus query context from mux context", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x223DE0F80](v43, -1, -1);
          MEMORY[0x223DE0F80](v42, -1, -1);
        }

        v44 = *MEMORY[0x277D47C28];
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v36 && v45 == v38)
        {
        }

        else
        {
          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v50 & 1) == 0)
          {
            v60 = *MEMORY[0x277D47C30];
            if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v36 && v61 == v38)
            {

              v51 = MEMORY[0x277D38C10];
            }

            else
            {
              v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v51 = MEMORY[0x277D38C20];
              if (v62)
              {
                v51 = MEMORY[0x277D38C10];
              }
            }

            goto LABEL_21;
          }
        }

        v51 = MEMORY[0x277D38C18];
LABEL_21:
        (*(v63 + 104))(v12, *v51, v64);
        Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
LABEL_22:
        v52 = [v33 twentyFourHourTimeDisplay];
        if (v52)
        {
          v53 = v52;
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          __swift_project_value_buffer(v54, static Logger.pommes);
          v47 = v53;
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 67109120;
            *(v57 + 4) = [v47 BOOLValue];

            _os_log_impl(&dword_2232BB000, v55, v56, "Adding twentyFourHourMode %{BOOL}d to Pegasus query context from mux context", v57, 8u);
            MEMORY[0x223DE0F80](v57, -1, -1);
          }

          else
          {

            v55 = v47;
          }

          v58 = [v47 BOOLValue];
          v59 = MEMORY[0x277D38C00];
          if (!v58)
          {
            v59 = MEMORY[0x277D38C08];
          }

          (*(v66 + 104))(v65, *v59, v67);
          Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
        }

        else
        {
          v47 = v33;
        }

        goto LABEL_32;
      }
    }
  }

  else
  {
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.pommes);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2232BB000, v47, v48, "Unable to get mux settings for user", v49, 2u);
    MEMORY[0x223DE0F80](v49, -1, -1);
  }

LABEL_32:
}

Swift::Bool __swiftcall DataProviderManager.userContentAllowed()()
{
  v1 = *(v0 + 128);
  if (v1 && (v2 = *(*v1 + 120), v3 = , v2(v10, v3), , v10[3]))
  {
    v4 = v11;
    outlined destroy of MediaUserStateCenter?(v10, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2232BB000, v6, v7, "No allowUserGeneratedContent BOOLean available from assistant data cache.", v8, 2u);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }

    v4 = 1;
  }

  return v4 & 1;
}

uint64_t DataProviderManager.getQueueState()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29[1] = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = (v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = v29 - v22;
  v24 = *(v1 + 32);
  v25 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  memset(v30, 0, 90);
  v26 = *(v2 + 16);
  static DispatchTime.now()();
  *v8 = 1;
  (*(v4 + 104))(v8, *MEMORY[0x277D85178], v3);
  MEMORY[0x223DDF450](v15, v8);
  (*(v4 + 8))(v8, v3);
  v27 = *(v10 + 8);
  v27(v15, v9);
  (*(*v24 + 240))(v23, v30, 0, v26, v18);
  v27(v18, v9);
  return outlined destroy of MediaUserStateCenter?(v23, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
}

uint64_t DataProviderManager.addProviderData(to:searchRequest:queryContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v43 = a3;
  v44 = a4;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v37 - v16;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v19 = *(v18 - 8);
  v39 = v18;
  v40 = v19;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v42 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v37 - v25;
  (*(v27 + 16))(v37 - v25, a1);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v38 = a2;
  DataProviderManager.addDeviceState(to:searchRequest:)(v17, a2, v14);
  v41 = v9;
  v45 = v9[1];
  v45(v17, v8);
  v28 = v9[4];
  v28(v17, v14, v8);
  v29 = a2;
  v30 = v5;
  DataProviderManager.addRestrictions(to:searchRequest:queryContext:)(v17, v29, v43, v14);
  v31 = v45;
  v45(v17, v8);
  v28(v17, v14, v8);
  v37[1] = v30;
  DataProviderManager.addPerson(to:)(v17, v14);
  v31(v17, v8);
  v28(v17, v14, v8);
  v32 = v42;
  DataProviderManager.addAmpState(to:searchRequest:)(v26, v38, v42);
  v34 = v39;
  v33 = v40;
  v35 = *(v40 + 8);
  v35(v26, v39);
  (*(v33 + 32))(v26, v32, v34);
  DataProviderManager.addQueueState(to:)(v26, v44);
  v35(v26, v34);
  (v41[2])(v14, v17, v8);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.setter();
  return (v45)(v17, v8);
}

uint64_t DataProviderManager.addRestrictions(to:searchRequest:queryContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v228 = a3;
  v241 = a2;
  *&v245 = a1;
  v242 = type metadata accessor for DeviceRestrictions();
  v240 = *(v242 - 8);
  v6 = *(v240 + 64);
  v8 = MEMORY[0x28223BE20](v242, v7);
  v243 = v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v247 = v226 - v11;
  v227 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions();
  v12 = *(*(v227 - 8) + 64);
  MEMORY[0x28223BE20](v227, v13);
  v226[1] = v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState();
  v234 = *(v15 - 8);
  v235 = v15;
  v16 = *(v234 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v233 = v226 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Restriction();
  v246 = *(v248 - 8);
  v19 = *(v246 + 64);
  v21 = MEMORY[0x28223BE20](v248, v20);
  v239 = v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v238 = v226 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v230 = v226 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v229 = v226 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v236 = v226 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v232 = v226 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v231 = v226 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v226[0] = v226 - v42;
  v43 = type metadata accessor for DispatchTimeInterval();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v48 = (v226 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for DispatchTime();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49, v52);
  v54 = v226 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8, v57);
  v59 = v226 - v58;
  v60 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v61 = *(*(v60 - 8) + 16);
  v244 = a4;
  v61(a4, v245, v60);
  *&v245 = v4;
  v62 = *(v4 + 104);
  if (v62)
  {
    static DispatchTime.now()();
    *v48 = 1;
    (*(v44 + 104))(v48, *MEMORY[0x277D85178], v43);
    MEMORY[0x223DDF450](v54, v48);
    (*(v44 + 8))(v48, v43);
    (*(v50 + 8))(v54, v49);
    (*(v50 + 56))(v59, 0, 1, v49);
    v62 = (*(*v62 + 176))(v59);
    outlined destroy of MediaUserStateCenter?(v59, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  }

  v63 = type metadata accessor for PommesSearchRequest(0);
  v64 = v241;
  v65 = v242;
  v66 = *(v241 + *(v63 + 60));
  p_superclass = &OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil.superclass;
  v68 = v245;
  v237 = v63;
  if (v66 == 1)
  {
    if (v62)
    {
      v69 = v63;
      swift_getKeyPath();
      MUXContext.userInfo(where:is:)(*(v64 + *(v69 + 84)), *(v64 + *(v69 + 84) + 8), v62, v250);

      if (v250[1])
      {
        v70 = v250[6];
        outlined destroy of MediaUserStateCenter?(v250, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
        if ([v70 mediaPlayerExplicitContentDisallowed])
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          __swift_project_value_buffer(v71, static Logger.pommes);
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_2232BB000, v72, v73, "Restrictions: explicit content disallowed via HomeSettings. Adding .audioExplicitContentDisabled", v74, 2u);
            MEMORY[0x223DE0F80](v74, -1, -1);
          }

          lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360]);
          static Message.with(_:)();
          v75 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
          v77 = v76;
          v78 = *v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v77 = v78;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
            *v77 = v78;
          }

          v81 = v78[2];
          v80 = v78[3];
          if (v81 >= v80 >> 1)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80 > 1, v81 + 1, 1, v78);
            *v77 = v78;
          }

          v64 = v241;
          v78[2] = v81 + 1;
          (*(v246 + 32))(v78 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v81, v226[0], v248);
          v75(v255, 0);

          v65 = v242;
          p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
          goto LABEL_37;
        }
      }
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    __swift_project_value_buffer(v98, static Logger.pommes);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v83, v84))
    {
LABEL_36:

      goto LABEL_37;
    }

    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "Restrictions: skipping .audioExplicitContentDisabled for MUX device";
LABEL_35:
    _os_log_impl(&dword_2232BB000, v83, v84, v86, v85, 2u);
    MEMORY[0x223DE0F80](v85, -1, -1);
    goto LABEL_36;
  }

  if ([*(v68 + 120) allowExplicitContent])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.pommes);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v83, v84))
    {
      goto LABEL_36;
    }

    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "Restrictions: skipping .audioExplicitContentDisabled";
    goto LABEL_35;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static Logger.pommes);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_2232BB000, v88, v89, "Restrictions: explicit content disallowed. Adding .audioExplicitContentDisabled", v90, 2u);
    MEMORY[0x223DE0F80](v90, -1, -1);
  }

  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360]);
  static Message.with(_:)();
  v91 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  *v93 = v94;
  if ((v95 & 1) == 0)
  {
    v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
    *v93 = v94;
  }

  v97 = v94[2];
  v96 = v94[3];
  if (v97 >= v96 >> 1)
  {
    v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v96 > 1, v97 + 1, 1, v94);
    *v93 = v94;
  }

  p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
  v94[2] = v97 + 1;
  (*(v246 + 32))(v94 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v97, v231, v248);
  v91(v255, 0);
  v64 = v241;
  v68 = v245;
LABEL_37:
  v99 = [*(v68 + 120) isInRestrictedSharingMode];
  v100 = p_superclass[476];
  if (v99)
  {
    if (v100 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    __swift_project_value_buffer(v101, static Logger.pommes);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_2232BB000, v102, v103, "Restrictions: in restricted sharing mode. Adding .personalInformationDisabled", v104, 2u);
      MEMORY[0x223DE0F80](v104, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360]);
    static Message.with(_:)();
    v105 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
    v107 = v106;
    v108 = *v106;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    *v107 = v108;
    if ((v109 & 1) == 0)
    {
      v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v108[2] + 1, 1, v108);
      *v107 = v108;
    }

    v111 = v108[2];
    v110 = v108[3];
    if (v111 >= v110 >> 1)
    {
      v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110 > 1, v111 + 1, 1, v108);
      *v107 = v108;
    }

    v108[2] = v111 + 1;
    (*(v246 + 32))(v108 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v111, v232, v248);
    v105(v255, 0);
    p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
    v68 = v245;
  }

  else
  {
    if (v100 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    __swift_project_value_buffer(v112, static Logger.pommes);
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_2232BB000, v113, v114, "Restrictions: skipping .personalInformationDisabled", v115, 2u);
      MEMORY[0x223DE0F80](v115, -1, -1);
    }
  }

  v116 = v233;
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.getter();
  v117 = Apple_Parsec_Siri_V2alpha_DeviceState.isLockedWithPasscode.getter();
  (*(v234 + 8))(v116, v235);
  v118 = p_superclass[476];
  if (v117)
  {
    if (v118 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    __swift_project_value_buffer(v119, static Logger.pommes);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_2232BB000, v120, v121, "Restrictions: device is locked. Adding .personalInformationDisabled", v122, 2u);
      MEMORY[0x223DE0F80](v122, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360]);
    static Message.with(_:)();
    v123 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
    v125 = v124;
    v126 = *v124;
    v127 = swift_isUniquelyReferenced_nonNull_native();
    *v125 = v126;
    if ((v127 & 1) == 0)
    {
      v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126[2] + 1, 1, v126);
      *v125 = v126;
    }

    v129 = v126[2];
    v128 = v126[3];
    if (v129 >= v128 >> 1)
    {
      v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v128 > 1, v129 + 1, 1, v126);
      *v125 = v126;
    }

    v126[2] = v129 + 1;
    (*(v246 + 32))(v126 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v129, v236, v248);
    v123(v255, 0);
    p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
    v68 = v245;
    v130 = *(v245 + 128);
    if (!v130)
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v118 != -1)
    {
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    __swift_project_value_buffer(v131, static Logger.pommes);
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_2232BB000, v132, v133, "Restrictions: skipping .personalInformationDisabled because device is unlocked.", v134, 2u);
      MEMORY[0x223DE0F80](v134, -1, -1);
    }

    v130 = *(v68 + 128);
    if (!v130)
    {
LABEL_70:
      if (p_superclass[476] != -1)
      {
        swift_once();
      }

      v138 = type metadata accessor for Logger();
      __swift_project_value_buffer(v138, static Logger.pommes);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_2232BB000, v139, v140, "Restrictions: skipping .siriWebSearchContentDisabled", v141, 2u);
        MEMORY[0x223DE0F80](v141, -1, -1);
      }

      v142 = *(v68 + 128);
      if (v142)
      {
        goto LABEL_75;
      }

LABEL_96:
      if (p_superclass[476] != -1)
      {
        swift_once();
      }

      v169 = type metadata accessor for Logger();
      __swift_project_value_buffer(v169, static Logger.pommes);
      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&dword_2232BB000, v170, v171, "Restrictions: skipping .siriExplicitLanguageDisallowed", v172, 2u);
        MEMORY[0x223DE0F80](v172, -1, -1);
      }

      v157 = *(v68 + 128);
      if (!v157)
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    }
  }

  v135 = *(*v130 + 120);

  v135(v251, v136);

  if (!v251[3])
  {
    goto LABEL_70;
  }

  v137 = v252;
  outlined destroy of MediaUserStateCenter?(v251, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  if (v137)
  {
    goto LABEL_70;
  }

  if (p_superclass[476] != -1)
  {
    swift_once();
  }

  v158 = type metadata accessor for Logger();
  __swift_project_value_buffer(v158, static Logger.pommes);
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    *v161 = 0;
    _os_log_impl(&dword_2232BB000, v159, v160, "Restrictions: web search content disallowed. Adding .siriWebSearchContentDisabled", v161, 2u);
    MEMORY[0x223DE0F80](v161, -1, -1);
  }

  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360]);
  static Message.with(_:)();
  v162 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
  v164 = v163;
  v165 = *v163;
  v166 = swift_isUniquelyReferenced_nonNull_native();
  *v164 = v165;
  if ((v166 & 1) == 0)
  {
    v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v165[2] + 1, 1, v165);
    *v164 = v165;
  }

  v168 = v165[2];
  v167 = v165[3];
  if (v168 >= v167 >> 1)
  {
    v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v167 > 1, v168 + 1, 1, v165);
    *v164 = v165;
  }

  v165[2] = v168 + 1;
  (*(v246 + 32))(v165 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v168, v229, v248);
  v162(v255, 0);
  p_superclass = &OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil.superclass;
  v68 = v245;
  v142 = *(v245 + 128);
  if (!v142)
  {
    goto LABEL_96;
  }

LABEL_75:
  v143 = *(*v142 + 120);

  v143(v253, v144);

  if (!v253[3])
  {
    goto LABEL_96;
  }

  v145 = v254;
  outlined destroy of MediaUserStateCenter?(v253, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  if ((v145 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (p_superclass[476] != -1)
  {
    swift_once();
  }

  v146 = type metadata accessor for Logger();
  __swift_project_value_buffer(v146, static Logger.pommes);
  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    *v149 = 0;
    _os_log_impl(&dword_2232BB000, v147, v148, "Restrictions: explicit language disallowed. Adding .siriExplicitLanguageDisallowed", v149, 2u);
    MEMORY[0x223DE0F80](v149, -1, -1);
  }

  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360]);
  static Message.with(_:)();
  v150 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
  v152 = v151;
  v153 = *v151;
  v154 = swift_isUniquelyReferenced_nonNull_native();
  *v152 = v153;
  if ((v154 & 1) == 0)
  {
    v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v153[2] + 1, 1, v153);
    *v152 = v153;
  }

  v156 = v153[2];
  v155 = v153[3];
  if (v156 >= v155 >> 1)
  {
    v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v155 > 1, v156 + 1, 1, v153);
    *v152 = v153;
  }

  v153[2] = v156 + 1;
  (*(v246 + 32))(v153 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v156, v230, v248);
  v150(v255, 0);
  p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
  v157 = *(v245 + 128);
  if (!v157)
  {
    goto LABEL_103;
  }

LABEL_101:
  v173 = *(*v157 + 120);

  v173(v255, v174);

  if (!v255[3] || (v245 = v256, v175 = v257, outlined destroy of MediaUserStateCenter?(v255, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR), (v175 & 1) != 0))
  {
LABEL_103:
    if (p_superclass[476] != -1)
    {
      swift_once();
    }

    v176 = type metadata accessor for Logger();
    __swift_project_value_buffer(v176, static Logger.pommes);
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      _os_log_impl(&dword_2232BB000, v177, v178, "Restrictions: skipping media content rating restrictions", v179, 2u);
      MEMORY[0x223DE0F80](v179, -1, -1);
    }

    goto LABEL_108;
  }

  if (p_superclass[476] != -1)
  {
    swift_once();
  }

  v220 = type metadata accessor for Logger();
  __swift_project_value_buffer(v220, static Logger.pommes);
  v221 = Logger.logObject.getter();
  v222 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v221, v222))
  {
    v223 = swift_slowAlloc();
    *v223 = 0;
    _os_log_impl(&dword_2232BB000, v221, v222, "Restrictions: adding media content rating restrictions", v223, 2u);
    MEMORY[0x223DE0F80](v223, -1, -1);
  }

  MEMORY[0x28223BE20](v224, v225);
  v226[-4] = v228;
  *&v226[-3] = v245;
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions and conformance Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions, MEMORY[0x277D39D48]);
  static Message.with(_:)();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.setter();
LABEL_108:
  v180 = *(v64 + *(v237 + 52));
  if (v180)
  {
    v181 = *(v180 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions);
  }

  DeviceRestrictions.init(aceValue:)();
  v182 = v243;
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x277D61DC0]);
  v183 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v184 = *(v240 + 8);
  v184(v182, v65);
  v185 = p_superclass[476];
  if (v183)
  {
    if (v185 != -1)
    {
      swift_once();
    }

    v186 = type metadata accessor for Logger();
    __swift_project_value_buffer(v186, static Logger.pommes);
    v187 = Logger.logObject.getter();
    v188 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      *v189 = 0;
      _os_log_impl(&dword_2232BB000, v187, v188, "Restrictions: Stark mode. Adding .restrictionPrimaryDisplayDisabled (.advancedCar)", v189, 2u);
      MEMORY[0x223DE0F80](v189, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360]);
    static Message.with(_:)();
    v190 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
    v192 = v191;
    v193 = *v191;
    v194 = swift_isUniquelyReferenced_nonNull_native();
    *v192 = v193;
    if ((v194 & 1) == 0)
    {
      v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v193[2] + 1, 1, v193);
      *v192 = v193;
    }

    v196 = v193[2];
    v195 = v193[3];
    if (v196 >= v195 >> 1)
    {
      v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v195 > 1, v196 + 1, 1, v193);
      *v192 = v193;
    }

    v193[2] = v196 + 1;
    (*(v246 + 32))(v193 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v196, v238, v248);
    v190(v249, 0);
    v65 = v242;
    p_superclass = (&OBJC_METACLASS____TtC21SiriInformationSearch26PegasusInstrumentationUtil + 8);
  }

  else
  {
    if (v185 != -1)
    {
      swift_once();
    }

    v197 = type metadata accessor for Logger();
    __swift_project_value_buffer(v197, static Logger.pommes);
    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      *v200 = 0;
      _os_log_impl(&dword_2232BB000, v198, v199, "Restrictions: skipping .restrictionPrimaryDisplayDisabled (.advancedCar)", v200, 2u);
      MEMORY[0x223DE0F80](v200, -1, -1);
    }
  }

  v201 = v243;
  static DeviceRestrictions.carDNDMode.getter();
  v202 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v184(v201, v65);
  v203 = p_superclass[476];
  if (v202)
  {
    if (v203 != -1)
    {
      swift_once();
    }

    v204 = type metadata accessor for Logger();
    __swift_project_value_buffer(v204, static Logger.pommes);
    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      *v207 = 0;
      _os_log_impl(&dword_2232BB000, v205, v206, "Restrictions: car DND mode. Adding .restrictionPrimaryDisplayDisabled (.carDnd)", v207, 2u);
      MEMORY[0x223DE0F80](v207, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Restriction and conformance Apple_Parsec_Siri_V2alpha_Restriction, MEMORY[0x277D39360]);
    static Message.with(_:)();
    v208 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.modify();
    v210 = v209;
    v211 = *v209;
    v212 = swift_isUniquelyReferenced_nonNull_native();
    *v210 = v211;
    if ((v212 & 1) == 0)
    {
      v211 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v211[2] + 1, 1, v211);
      *v210 = v211;
    }

    v214 = v211[2];
    v213 = v211[3];
    if (v214 >= v213 >> 1)
    {
      v211 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v213 > 1, v214 + 1, 1, v211);
      *v210 = v211;
    }

    v211[2] = v214 + 1;
    (*(v246 + 32))(v211 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v214, v239, v248);
    v208(v249, 0);
  }

  else
  {
    if (v203 != -1)
    {
      swift_once();
    }

    v215 = type metadata accessor for Logger();
    __swift_project_value_buffer(v215, static Logger.pommes);
    v216 = Logger.logObject.getter();
    v217 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      *v218 = 0;
      _os_log_impl(&dword_2232BB000, v216, v217, "Restrictions: skipping .restrictionPrimaryDisplayDisabled (.carDnd)", v218, 2u);
      MEMORY[0x223DE0F80](v218, -1, -1);
    }
  }

  return (v184)(v247, v65);
}

uint64_t closure #6 in DataProviderManager.addRestrictions(to:searchRequest:queryContext:)(uint64_t a1, unsigned int *a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RestrictionCategory();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v7, *a2);
  return MEMORY[0x223DDA780](v7);
}

uint64_t closure #9 in DataProviderManager.addRestrictions(to:searchRequest:queryContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
  result = MEMORY[0x223DDBC10](v6);
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = MEMORY[0x223DDBC50](a3);
  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a4 <= 0x7FFFFFFF)
  {
    return Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions.tvRestriction.setter();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in DataProviderManager.addRestrictions(to:searchRequest:queryContext:)(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RestrictionReason();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RestrictionCategory();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v15, *a2);
  MEMORY[0x223DDA780](v15);
  (*(v6 + 104))(v10, *a3, v5);
  return Apple_Parsec_Siri_V2alpha_Restriction.reason.setter();
}

uint64_t DataProviderManager.addPerson(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = v27 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = v27 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  result = OS_dispatch_queue.sync<A>(execute:)();
  v20 = v32;
  if (v32)
  {

    outlined destroy of MediaUserStateCenter?(v31, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
    if (*(v20 + 16))
    {
      v21 = *(v20 + 96);
      v29[3] = *(v20 + 80);
      v29[4] = v21;
      v29[5] = *(v20 + 112);
      v30 = *(v20 + 128);
      v22 = *(v20 + 48);
      v29[0] = *(v20 + 32);
      v29[1] = v22;
      v29[2] = *(v20 + 64);
      outlined init with copy of AssistantDataSnapshot.MeCard(v29, &v28);

      v27[1] = a2;
      MEMORY[0x28223BE20](v23, v24);
      v27[-2] = v29;
      lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0]);
      static Message.with(_:)();
      outlined destroy of AssistantDataSnapshot.MeCard(v29);
      v25 = (*(v6 + 32))(v16, v13, v5);
      MEMORY[0x28223BE20](v25, v26);
      v27[-2] = v16;
      static Message.with(_:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusContext.person.setter();
      return (*(v6 + 8))(v16, v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in DataProviderManager.addPerson(to:)()
{
  Apple_Parsec_Siri_V2alpha_Person.givenName.getter();
  Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
  Apple_Parsec_Siri_V2alpha_Person.nickname.getter();
  return Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
}

uint64_t DataProviderManager.addDeviceState(to:searchRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a2;
  v162 = a1;
  v163 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v147 = &v137 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v161 = &v137 - v10;
  v170 = type metadata accessor for SiriVoiceGender();
  v173 = *(v170 - 8);
  v11 = v173[8];
  v13 = MEMORY[0x28223BE20](v170, v12);
  v157 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v137 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v155 = &v137 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v168 = &v137 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v167 = &v137 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v166 = &v137 - v29;
  v154 = type metadata accessor for DispatchTimeInterval();
  v153 = *(v154 - 8);
  v30 = *(v153 + 64);
  MEMORY[0x28223BE20](v154, v31);
  v150 = (&v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = type metadata accessor for DispatchTime();
  v151 = *(v152 - 8);
  v33 = *(v151 + 64);
  v35 = MEMORY[0x28223BE20](v152, v34);
  v142 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v149 = &v137 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8, v41);
  v146 = &v137 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_CarPlaySessionDataVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_CarPlaySessionDataVSgMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8, v45);
  v144 = &v137 - v46;
  v145 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
  v143 = *(v145 - 8);
  v47 = *(v143 + 64);
  v49 = MEMORY[0x28223BE20](v145, v48);
  v140 = &v137 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v51);
  v141 = &v137 - v52;
  v148 = type metadata accessor for DeviceRestrictions();
  v164 = *(v148 - 8);
  v53 = *(v164 + 64);
  v55 = MEMORY[0x28223BE20](v148, v54);
  v57 = &v137 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v58);
  v172 = &v137 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8, v62);
  v64 = &v137 - v63;
  v65 = type metadata accessor for InputOrigin();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65, v68);
  v70 = &v137 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState();
  v159 = *(v160 - 8);
  v71 = *(v159 + 64);
  v73 = MEMORY[0x28223BE20](v160, v72);
  v158 = &v137 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73, v75);
  v77 = &v137 - v76;
  Apple_Parsec_Siri_V2alpha_DeviceState.init()();
  v78 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(v171 + v78[14], v64, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if ((*(v66 + 48))(v64, 1, v65) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v64, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  }

  else
  {
    (*(v66 + 32))(v70, v64, v65);
    InputOrigin.rawValue.getter();
    Apple_Parsec_Siri_V2alpha_DeviceState.inputOrigin.setter();
    (*(v66 + 8))(v70, v65);
  }

  v79 = *(v171 + v78[13]);
  v156 = v18;
  v80 = v172;
  v165 = v78;
  if (v79)
  {
    v81 = *(v79 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree);

    Apple_Parsec_Siri_V2alpha_DeviceState.isEyesFree.setter();
    v82 = *(v79 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled);
    Apple_Parsec_Siri_V2alpha_DeviceState.isTextToSpeechEnabled.setter();
    v83 = *(v79 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled);
    Apple_Parsec_Siri_V2alpha_DeviceState.isVoiceTriggerEnabled.setter();
    v84 = *(v79 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions);

    DeviceRestrictions.init(aceValue:)();
    static DeviceRestrictions.carDNDMode.getter();
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x277D61DC0]);
    v85 = v148;
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v86 = v164 + 8;
    v87 = *(v164 + 8);
    v87(v57, v85);
    Apple_Parsec_Siri_V2alpha_DeviceState.isCarDnd.setter();
    static DeviceRestrictions.starkMode.getter();
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v87(v57, v85);
    Apple_Parsec_Siri_V2alpha_DeviceState.isCarplay.setter();
    if (Apple_Parsec_Siri_V2alpha_DeviceState.isCarplay.getter())
    {
      v139 = v87;
      v164 = v86;
      v88 = v169;
      v138 = v169[12];
      v89 = v146;
      outlined init with copy of PommesSearchRequest(v171, v146);
      (*(*(v78 - 1) + 56))(v89, 0, 1, v78);
      v137 = v88[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
      OS_dispatch_queue.sync<A>(execute:)();
      v90 = v88[17];
      swift_unknownObjectRetain();
      v91 = v142;
      static DispatchTime.now()();
      v92 = v150;
      *v150 = 1;
      v93 = v153;
      v94 = v154;
      (*(v153 + 104))(v92, *MEMORY[0x277D85178], v154);
      v95 = v149;
      MEMORY[0x223DDF450](v91, v92);
      (*(v93 + 8))(v92, v94);
      v96 = *(v151 + 8);
      v97 = v152;
      v96(v91, v152);
      v98 = v144;
      v99 = v146;
      (*(*v138 + 240))(v146, v178, v90, v137, v95);
      swift_unknownObjectRelease();
      outlined destroy of MediaUserStateCenter?(v178, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
      v96(v95, v97);
      outlined destroy of MediaUserStateCenter?(v99, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
      v100 = v143;
      v101 = v145;
      if ((*(v143 + 48))(v98, 1, v145) == 1)
      {
        v139(v172, v148);

        outlined destroy of MediaUserStateCenter?(v98, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_CarPlaySessionDataVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_CarPlaySessionDataVSgMR);
      }

      else
      {
        v102 = v141;
        (*(v100 + 32))(v141, v98, v101);
        (*(v100 + 16))(v140, v102, v101);
        Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.setter();

        (*(v100 + 8))(v102, v101);
        v139(v172, v148);
      }

      v78 = v165;
    }

    else
    {
      v87(v80, v85);
    }
  }

  v103 = *(v171 + v78[15]);
  Apple_Parsec_Siri_V2alpha_DeviceState.isMultiUser.setter();
  v104 = v169[14];
  v172 = SiriEnvironment.currentDevice.getter();
  if ((Apple_Parsec_Siri_V2alpha_DeviceState.isCarplay.getter() & 1) == 0)
  {
    MKBGetDeviceLockState();
  }

  Apple_Parsec_Siri_V2alpha_DeviceState.isLockedWithPasscode.setter();
  dispatch thunk of CurrentDevice.siriVoiceGender.getter();
  v105 = v173[13];
  v105(v167, *MEMORY[0x277D61B68], v170);
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type SiriVoiceGender and conformance SiriVoiceGender, MEMORY[0x277D61B78]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v176 == v174 && v177 == v175)
  {
    v106 = v77;
  }

  else
  {
    v106 = v77;
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v107 = v173 + 1;
  v108 = v173[1];
  v109 = v170;
  v108(v167, v170);
  v173 = v107;
  v108(v166, v109);

  Apple_Parsec_Siri_V2alpha_DeviceState.isVoiceGenderFemale.setter();
  dispatch thunk of CurrentDevice.siriVoiceGender.getter();
  v110 = v155;
  v105(v155, *MEMORY[0x277D61B60], v109);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v176 != v174 || v177 != v175)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v111 = v170;
  v108(v110, v170);
  v108(v168, v111);

  Apple_Parsec_Siri_V2alpha_DeviceState.isVoiceGenderMale.setter();
  v112 = v156;
  dispatch thunk of CurrentDevice.siriVoiceGender.getter();
  v113 = v157;
  v105(v157, *MEMORY[0x277D61B70], v111);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v176 != v174 || v177 != v175)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v114 = v161;
  v115 = v113;
  v116 = v170;
  v108(v115, v170);
  v108(v112, v116);

  Apple_Parsec_Siri_V2alpha_DeviceState.isVoiceGenderUnknown.setter();
  dispatch thunk of CurrentDevice.deviceClass.getter();
  v117 = type metadata accessor for DeviceClass();
  v118 = *(v117 - 8);
  if ((*(v118 + 48))(v114, 1, v117) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v114, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    v119 = v165;
  }

  else
  {
    object = DeviceClass.stringValue()().value._object;
    (*(v118 + 8))(v114, v117);
    v119 = v165;
    if (object)
    {
      Apple_Parsec_Siri_V2alpha_DeviceState.deviceName.setter();
    }
  }

  v121 = v169[13];
  if (!v121)
  {
    if (*(v171 + v119[21] + 8))
    {
      goto LABEL_34;
    }

LABEL_33:

    goto LABEL_34;
  }

  v122 = v149;
  static DispatchTime.now()();
  v123 = v150;
  *v150 = 1;
  v124 = v153;
  v125 = v154;
  (*(v153 + 104))(v123, *MEMORY[0x277D85178], v154);
  v126 = v147;
  MEMORY[0x223DDF450](v122, v123);
  (*(v124 + 8))(v123, v125);
  v127 = v151;
  v128 = v152;
  (*(v151 + 8))(v122, v152);
  (*(v127 + 56))(v126, 0, 1, v128);
  v129 = (*(*v121 + 176))(v126);
  outlined destroy of MediaUserStateCenter?(v126, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v130 = (v171 + v119[21]);
  v131 = v130[1];
  if (!v131)
  {
    goto LABEL_33;
  }

  if (v129)
  {
    v132 = *v130;
    swift_getKeyPath();
    MUXContext.userInfo(where:is:)(v132, v131, v129, &v176);

    if (v177)
    {

      outlined destroy of MediaUserStateCenter?(&v176, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
      Apple_Parsec_Siri_V2alpha_DeviceState.companionName.setter();
    }
  }

LABEL_34:
  v133 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  (*(*(v133 - 8) + 16))(v163, v162, v133);
  v134 = v159;
  v135 = v160;
  (*(v159 + 16))(v158, v106, v160);
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.setter();

  return (*(v134 + 8))(v106, v135);
}