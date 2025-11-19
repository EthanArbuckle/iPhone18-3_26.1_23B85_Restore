uint64_t WholeHomeAudioPreflightClient.isPlayEverywhereTask(pommesTask:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v82 = a3;
  v81 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v83 = &v76 - v9;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UsoEntity_common_UserEntity.DefinedValues();
  v101 = *(v16 - 8);
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v87 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
  v20 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100, v21);
  v89 = &v76 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v99 = &v76 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v102 = &v76 - v33;
  if (one-time initialization token for pommes != -1)
  {
LABEL_54:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v86 = __swift_project_value_buffer(v34, static Logger.pommes);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v37 = os_log_type_enabled(v35, v36);
  v90 = v28;
  v84 = v4;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v103[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000002234DBFC0, v103);
    _os_log_impl(&dword_2232BB000, v35, v36, "Checking %s...", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x223DE0F80](v39, -1, -1);
    MEMORY[0x223DE0F80](v38, -1, -1);
  }

  v28 = v99;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v103[3])
  {
LABEL_24:
    outlined destroy of MediaUserStateCenter?(v103, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_play_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v40 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_2836988C0, a1);
  v76 = 0;

  v80 = v10;
  v79 = v11;
  v78 = v15;
  if (v40 >> 62)
  {
    v41 = __CocoaSet.count.getter();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = a1;
  v10 = v102;
  v42 = v89;
  if (!v41)
  {
LABEL_25:

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "No everywhere user entity in the USO graph";
      goto LABEL_27;
    }

LABEL_28:

    return 0;
  }

  v11 = 0;
  v97 = v40 & 0xFFFFFFFFFFFFFF8;
  v98 = v40 & 0xC000000000000001;
  v95 = *MEMORY[0x277D5E230];
  v93 = (v101 + 56);
  v94 = (v101 + 104);
  v92 = (v101 + 48);
  v85 = (v101 + 32);
  v88 = (v101 + 8);
  v4 = &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd;
  a1 = &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR;
  v91 = v41;
  v96 = v40;
  while (1)
  {
    if (v98)
    {
      MEMORY[0x223DDFF80](v11, v40);
      v44 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      if (v11 >= *(v97 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      v43 = *(v40 + 8 * v11 + 32);

      v44 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_23;
      }
    }

    v101 = v44;
    dispatch thunk of UsoEntity_common_UserEntity.definedValue.getter();
    (*v94)(v28, v95, v16);
    (*v93)(v28, 0, 1, v16);
    v45 = *(v100 + 48);
    outlined init with copy of MediaUserStateCenter?(v10, v42, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined init with copy of MediaUserStateCenter?(v28, v42 + v45, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v15 = v28;
    v46 = *v92;
    if ((*v92)(v42, 1, v16) == 1)
    {
      break;
    }

    v15 = v90;
    outlined init with copy of MediaUserStateCenter?(v42, v90, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    if (v46(v42 + v45, 1, v16) == 1)
    {

      v28 = v99;
      outlined destroy of MediaUserStateCenter?(v99, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v102, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      (*v88)(v15, v16);
      goto LABEL_11;
    }

    v47 = v87;
    (*v85)(v87, v42 + v45, v16);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_UserEntity.DefinedValues and conformance UsoEntity_common_UserEntity.DefinedValues, MEMORY[0x277D5E248]);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();

    v49 = v15;
    v15 = v16;
    v50 = *v88;
    (*v88)(v47, v16);
    v28 = v99;
    outlined destroy of MediaUserStateCenter?(v99, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v102, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v50(v49, v16);
    v42 = v89;
    outlined destroy of MediaUserStateCenter?(v89, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    if (v48)
    {
      goto LABEL_31;
    }

LABEL_12:
    ++v11;
    v10 = v102;
    v40 = v96;
    if (v101 == v91)
    {
      goto LABEL_25;
    }
  }

  outlined destroy of MediaUserStateCenter?(v28, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v102, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  if (v46(v42 + v45, 1, v16) != 1)
  {
LABEL_11:
    outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
    goto LABEL_12;
  }

  outlined destroy of MediaUserStateCenter?(v42, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
LABEL_31:

  v57 = v84;
  v58 = v83;
  (*(*v84 + 96))(v56);
  v59 = v79;
  v60 = v80;
  if ((*(v79 + 48))(v58, 1, v80) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v58, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMR);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_28;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "No currently playing media type";
LABEL_27:
    _os_log_impl(&dword_2232BB000, v51, v52, v54, v53, 2u);
    MEMORY[0x223DE0F80](v53, -1, -1);
    goto LABEL_28;
  }

  v61 = v78;
  (*(v59 + 32))(v78, v58, v60);
  v62 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_2836988E8, v77);

  if (v62 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v82;
  if (!result)
  {

    goto LABEL_46;
  }

  if ((v62 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DDFF80](0, v62);
LABEL_40:

    v65 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();

    if (v65)
    {
      if ((*(*v57 + 104))(v61, v65))
      {

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v103[0] = v69;
          *v68 = 136315394;
          *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000002234DBFC0, v103);
          *(v68 + 12) = 2080;
          *(v68 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v63, v103);
          _os_log_impl(&dword_2232BB000, v66, v67, "Task passed test %s:\n%s", v68, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE0F80](v69, -1, -1);
          MEMORY[0x223DE0F80](v68, -1, -1);
        }

        (*(v59 + 8))(v61, v60);
        return 1;
      }

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_2232BB000, v73, v74, "Queue and USO media types do not match", v75, 2u);
        MEMORY[0x223DE0F80](v75, -1, -1);
      }

LABEL_52:
      (*(v59 + 8))(v61, v60);
      return 0;
    }

LABEL_46:
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2232BB000, v70, v71, "Could not get a media item type from the referenced media item", v72, 2u);
      MEMORY[0x223DE0F80](v72, -1, -1);
    }

    goto LABEL_52;
  }

  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v64 = *(v62 + 32);

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t WholeHomeAudioPreflightClient.isPlayMusicFromTask(pommesTask:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for pommes != -1)
  {
LABEL_31:
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
    v26[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000002234DBFF0, v26);
    _os_log_impl(&dword_2232BB000, v7, v8, "Checking %s...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v26[3])
  {
    outlined destroy of MediaUserStateCenter?(v26, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_play_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = a2;

  v11 = MEMORY[0x277D84F90];
  v12 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_283698938, a1);

  v25 = a3;
  a2 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  a3 = v12 & 0xC000000000000001;
  do
  {
    if (v13 == v14)
    {

      return 0;
    }

    if (a3)
    {
      MEMORY[0x223DDFF80](v14, v12);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v15 = *(v12 + 8 * v14 + 32);

      if (__OFADD__(v14, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    v16 = dispatch thunk of UsoEntity_common_UserEntity.associatedUserEntities.getter();
    if (!v16)
    {
      v16 = v11;
    }

    if (v16 >> 62)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v14;
  }

  while (!v17);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000002234DBFF0, v26);
    *(v22 + 12) = 2080;
    *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);
    _os_log_impl(&dword_2232BB000, v19, v20, "Task passed test %s:\n%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v23, -1, -1);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  return 1;
}

uint64_t WholeHomeAudioPreflightClient.isUpdateLocationTask(pommesTask:)(unint64_t a1, uint64_t a2, char *a3)
{
  v127 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v115 = *(v127 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v127, v7);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v10 = *(*(v131 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v131, v11);
  v128 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v126 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v129 = &v104 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v132 = &v104 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v104 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v125 = &v104 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v130 = &v104 - v36;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_88;
  }

LABEL_2:
  v37 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v37, static Logger.pommes);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = os_log_type_enabled(v39, v40);
  v124 = v31;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v133[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000002234DC020, v133);
    _os_log_impl(&dword_2232BB000, v39, v40, "Checking %s...", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x223DE0F80](v43, -1, -1);
    MEMORY[0x223DE0F80](v42, -1, -1);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v133[3])
  {
    goto LABEL_18;
  }

  type metadata accessor for UsoTask_update_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v109 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF910;
  v45 = *MEMORY[0x277D5F578];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v46;
  v47 = *MEMORY[0x277D5F588];
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v48;
  v49 = *MEMORY[0x277D5F570];
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v50;
  v51 = UsoTask.codeGenUserEntities.getter();
  v52 = v51;
  v110 = a1;
  v113 = v9;
  v114 = v21;
  v108 = a3;
  v106 = a2;
  v123 = inited + 32;
  if (v51 >> 62)
  {
    v53 = __CocoaSet.count.getter();
    if (!v53)
    {
LABEL_90:

      swift_setDeallocating();
      swift_arrayDestroy();
      return 0;
    }
  }

  else
  {
    v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v53)
    {
      goto LABEL_90;
    }
  }

  v54 = 0;
  v31 = 0;
  v21 = (v52 & 0xC000000000000001);
  a3 = (v52 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v21)
    {
      a1 = MEMORY[0x223DDFF80](v54, v52);
      a2 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:
        outlined destroy of MediaUserStateCenter?(v133, &_sypSgMd, &_sypSgMR);
        return 0;
      }
    }

    else
    {
      if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        swift_once();
        goto LABEL_2;
      }

      a1 = *(v52 + 8 * v54 + 32);

      a2 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_17;
      }
    }

    v133[0] = a1;
    v9 = closure #1 in WholeHomeAudioPreflightClient.isUpdateLocationTask(pommesTask:)(v133, inited);

    if (v9)
    {
      break;
    }

    ++v54;
    if (a2 == v53)
    {
      goto LABEL_90;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  a1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_283698960, v110);

  v105 = 0;
  if (a1 >> 62)
  {
    goto LABEL_94;
  }

  v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  a2 = v127;
  a3 = v129;
  v21 = v132;
  v56 = v125;
  if (v55)
  {
    v31 = 0;
    v123 = a1 & 0xC000000000000001;
    v122 = a1 & 0xFFFFFFFFFFFFFF8;
    v57 = (v115 + 56);
    LODWORD(v120) = *MEMORY[0x277D5EE00];
    v119 = (v115 + 104);
    v107 = (v115 + 32);
    v112 = (v115 + 8);
    v121 = a1;
    v117 = v55;
    v116 = v115 + 56;
    v118 = (v115 + 48);
    v9 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd;
    while (1)
    {
      if (v123)
      {
        MEMORY[0x223DDFF80](v31, a1);
        a3 = v130;
      }

      else
      {
        a3 = v130;
        if (v31 >= *(v122 + 16))
        {
          goto LABEL_87;
        }

        v60 = *(a1 + 8 * v31 + 32);
      }

      v21 = (v31 + 1);
      a1 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_86;
      }

      v61 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
      v127 = v31 + 1;
      if (v61)
      {
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      }

      else
      {
        (*v57)(a3, 1, 1, a2);
      }

      (*v119)(v56, v120, a2);
      (*v57)(v56, 0, 1, a2);
      v62 = *(v131 + 48);
      v63 = v126;
      outlined init with copy of MediaUserStateCenter?(a3, v126, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v56, v63 + v62, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v64 = a3;
      v65 = *v118;
      if ((*v118)(v63, 1, a2) == 1)
      {
        break;
      }

      v66 = v124;
      outlined init with copy of MediaUserStateCenter?(v63, v124, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v67 = v65(v63 + v62, 1, a2);
      a1 = v121;
      if (v67 == 1)
      {

        v68 = v125;
        outlined destroy of MediaUserStateCenter?(v125, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v130, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v69 = v66;
        v56 = v68;
        (*v112)(v69, a2);
        a3 = v129;
        v59 = v63;
LABEL_24:
        outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
        goto LABEL_25;
      }

      v70 = v113;
      (*v107)(v113, v63 + v62, a2);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
      LODWORD(v111) = dispatch thunk of static Equatable.== infix(_:_:)();

      v71 = *v112;
      (*v112)(v70, a2);
      v72 = v125;
      outlined destroy of MediaUserStateCenter?(v125, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v130, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v73 = v66;
      v56 = v72;
      v71(v73, a2);
      outlined destroy of MediaUserStateCenter?(v63, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      a3 = v129;
      if (v111)
      {
        goto LABEL_82;
      }

LABEL_25:
      ++v31;
      v21 = v132;
      v57 = v116;
      if (v127 == v117)
      {
        goto LABEL_39;
      }
    }

    outlined destroy of MediaUserStateCenter?(v56, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v64, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    v58 = v65(v63 + v62, 1, a2) == 1;
    a3 = v129;
    v59 = v63;
    a1 = v121;
    if (v58)
    {
      outlined destroy of MediaUserStateCenter?(v63, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_82:

      return 0;
    }

    goto LABEL_24;
  }

LABEL_39:

  v74 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_283698988, v110);

  v111 = v74;
  if (v74 >> 62)
  {
    v31 = __CocoaSet.count.getter();
  }

  else
  {
    v31 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {
LABEL_76:

    v98 = v108;

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v133[0] = v102;
      *v101 = 136315394;
      *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000002234DC020, v133);
      *(v101 + 12) = 2080;
      *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v98, v133);
      _os_log_impl(&dword_2232BB000, v99, v100, "Task passed test %s:\n%s", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v102, -1, -1);
      MEMORY[0x223DE0F80](v101, -1, -1);
    }

    return 1;
  }

  v75 = 0;
  v76 = v111 & 0xC000000000000001;
  v116 = v111 & 0xFFFFFFFFFFFFFF8;
  v112 = (v111 + 32);
  v9 = v115 + 56;
  LODWORD(v123) = *MEMORY[0x277D5EE18];
  v122 = v115 + 104;
  v121 = (v115 + 48);
  v117 = (v115 + 32);
  v119 = (v115 + 8);
  v107 = v31;
  v105 = v111 & 0xC000000000000001;
  v120 = v115 + 56;
  while (1)
  {
    if (v76)
    {
      v78 = MEMORY[0x223DDFF80](v75, v111);
      v79 = __OFADD__(v75++, 1);
      if (v79)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v75 >= *(v116 + 16))
      {
        goto LABEL_93;
      }

      v77 = v112[v75];

      v79 = __OFADD__(v75++, 1);
      if (v79)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v55 = __CocoaSet.count.getter();
        goto LABEL_21;
      }
    }

    v118 = v78;
    v80 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
    if (v80)
    {
      break;
    }

LABEL_44:

    if (v75 == v31)
    {
      goto LABEL_76;
    }
  }

  v81 = v80;
  v82 = v80 & 0xFFFFFFFFFFFFFF8;
  v115 = v75;
  if (!(v80 >> 62))
  {
    v83 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v84 = a3;
    if (v83)
    {
      goto LABEL_51;
    }

    goto LABEL_43;
  }

  v83 = __CocoaSet.count.getter();
  v84 = a3;
  if (!v83)
  {
LABEL_43:
    a3 = v84;

    v31 = v107;
    v75 = v115;
    v76 = v105;
    goto LABEL_44;
  }

LABEL_51:
  v85 = 0;
  v127 = v81 & 0xC000000000000001;
  v125 = v82;
  v124 = v83;
  v126 = v81;
  while (1)
  {
    if (v127)
    {
      MEMORY[0x223DDFF80](v85, v81);
      a3 = (v85 + 1);
      if (__OFADD__(v85, 1))
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v85 >= *(v82 + 16))
      {
        goto LABEL_85;
      }

      v87 = *(v81 + 8 * v85 + 32);

      a3 = (v85 + 1);
      if (__OFADD__(v85, 1))
      {
        goto LABEL_84;
      }
    }

    v88 = dispatch thunk of CodeGenListEntry.entryAsExpression.getter();
    v130 = a3;
    if (v88 && (dispatch thunk of CodeGenExpression.operand.getter(), , v133[0]) && (v89 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter(), , v89))
    {
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
    }

    else
    {
      (*v9)(v21, 1, 1, a2);
    }

    (*v122)(v84, v123, a2);
    (*v9)(v84, 0, 1, a2);
    v90 = *(v131 + 48);
    v91 = v21;
    v31 = v21;
    v92 = v128;
    a1 = a2;
    outlined init with copy of MediaUserStateCenter?(v91, v128, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined init with copy of MediaUserStateCenter?(v84, v92 + v90, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    a3 = v84;
    v93 = *v121;
    if ((*v121)(v92, 1, a2) == 1)
    {
      break;
    }

    v31 = v114;
    a3 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR;
    outlined init with copy of MediaUserStateCenter?(v92, v114, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v93(v92 + v90, 1, a2) == 1)
    {

      v84 = v129;
      outlined destroy of MediaUserStateCenter?(v129, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v132, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      (*v119)(v31, a2);
      v86 = v92;
      v9 = v120;
      goto LABEL_53;
    }

    v94 = v113;
    (*v117)(v113, v92 + v90, a2);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30]);
    v95 = dispatch thunk of static Equatable.== infix(_:_:)();

    v96 = v31;
    v31 = v119;
    v97 = *v119;
    (*v119)(v94, a2);
    v84 = v129;
    outlined destroy of MediaUserStateCenter?(v129, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v132, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    v97(v96, a2);
    outlined destroy of MediaUserStateCenter?(v92, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    v9 = v120;
    if (v95)
    {
      goto LABEL_80;
    }

LABEL_54:
    ++v85;
    v21 = v132;
    v81 = v126;
    v82 = v125;
    if (v130 == v124)
    {
      goto LABEL_43;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v31, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v58 = v93(v92 + v90, 1, a2) == 1;
  v86 = v92;
  v9 = v120;
  v84 = a3;
  if (!v58)
  {
LABEL_53:
    outlined destroy of MediaUserStateCenter?(v86, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_54;
  }

  outlined destroy of MediaUserStateCenter?(v92, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_80:

  return 0;
}

uint64_t closure #1 in WholeHomeAudioPreflightClient.isUpdateLocationTask(pommesTask:)(uint64_t *a1, uint64_t a2)
{
  v84 = a2;
  v4 = type metadata accessor for ListOperators();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v78 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UsoEntity_common_UserEntity.DefinedValues();
  v8 = *(v77 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v77, v10);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
  v12 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75, v13);
  v76 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v82 = &v71 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v83 = &v71 - v24;
  v25 = type metadata accessor for UsoIdentifier();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v32 = dispatch thunk of CodeGenListEntry.entryAsExpression.getter();
  v81 = v31;
  v90 = v2;
  if (!v32)
  {
    goto LABEL_20;
  }

  dispatch thunk of CodeGenExpression.operand.getter();

  if (!v89[0])
  {
    goto LABEL_20;
  }

  v33 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v33)
  {
    goto LABEL_20;
  }

  v88 = *(v33 + 16);
  if (!v88)
  {

LABEL_20:
    LODWORD(v88) = 0;
LABEL_21:
    v47 = dispatch thunk of CodeGenListEntry.entryAsExpression.getter();
    v49 = v76;
    v48 = v77;
    v50 = v82;
    v51 = v83;
    if (v47 && (dispatch thunk of CodeGenExpression.operand.getter(), , v89[0]))
    {
      dispatch thunk of UsoEntity_common_UserEntity.definedValue.getter();
    }

    else
    {
      (*(v8 + 56))(v51, 1, 1, v48);
    }

    (*(v8 + 104))(v50, *MEMORY[0x277D5E238], v48);
    (*(v8 + 56))(v50, 0, 1, v48);
    v52 = *(v75 + 48);
    outlined init with copy of MediaUserStateCenter?(v51, v49, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined init with copy of MediaUserStateCenter?(v50, v49 + v52, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v53 = v8;
    v54 = *(v8 + 48);
    if (v54(v49, 1, v48) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v50, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v51, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      if (v54(v49 + v52, 1, v48) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
        v55 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      v56 = v74;
      outlined init with copy of MediaUserStateCenter?(v49, v74, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      if (v54(v49 + v52, 1, v48) != 1)
      {
        v57 = v49 + v52;
        v58 = v73;
        (*(v53 + 32))(v73, v57, v48);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_UserEntity.DefinedValues and conformance UsoEntity_common_UserEntity.DefinedValues, MEMORY[0x277D5E248]);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *(v53 + 8);
        v59(v58, v48);
        outlined destroy of MediaUserStateCenter?(v82, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v83, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
        v59(v56, v48);
        outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
LABEL_32:
        if (dispatch thunk of CodeGenListEntry.entryAsExpression.getter())
        {
          v60 = dispatch thunk of CodeGenExpression.operatorAsString.getter();
          v62 = v61;
        }

        else
        {
          v60 = 0;
          v62 = 0;
        }

        v63 = v78;
        v64 = v79;
        v65 = v80;
        (*(v79 + 104))(v78, *MEMORY[0x277D5E478], v80);
        v66 = ListOperators.rawValue.getter();
        v68 = v67;
        (*(v64 + 8))(v63, v65);
        if (v62)
        {
          if (v60 == v66 && v62 == v68)
          {

LABEL_41:
            v69 = v88 | v55;
            return v69 & 1;
          }

          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v69 = 0;
          if (v70)
          {
            goto LABEL_41;
          }
        }

        else
        {

          v69 = 0;
        }

        return v69 & 1;
      }

      outlined destroy of MediaUserStateCenter?(v82, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v83, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      (*(v53 + 8))(v56, v48);
    }

    outlined destroy of MediaUserStateCenter?(v49, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
    v55 = 0;
    goto LABEL_32;
  }

  v72 = v8;
  v35 = 0;
  v36 = *MEMORY[0x277D5F528];
  v86 = v33 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v87 = v36;
  v85 = v26 + 16;
  v37 = (v26 + 8);
  while (v35 < *(v33 + 16))
  {
    (*(v26 + 16))(v30, v86 + *(v26 + 72) * v35, v25);
    v38 = UsoIdentifier.namespace.getter();
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v40)
    {

LABEL_7:
      result = (*v37)(v30, v25);
      goto LABEL_8;
    }

    if (v38 == v41 && v40 == v42)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v89[0] = UsoIdentifier.value.getter();
    v89[1] = v44;
    MEMORY[0x28223BE20](v89[0], v44);
    *(&v71 - 2) = v89;
    v45 = v90;
    v46 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v71 - 4), v84);
    v90 = v45;
    (*v37)(v30, v25);

    if (v46)
    {

      LODWORD(v88) = 1;
LABEL_18:
      v8 = v72;
      goto LABEL_21;
    }

LABEL_8:
    if (v88 == ++v35)
    {

      LODWORD(v88) = 0;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t WholeHomeAudioPreflightClient.isMultiLocationPlayTask(pommesTask:)(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v64 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  v11 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76, v12);
  v14 = v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v67 = v58 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v77 = v58 - v25;
  if (one-time initialization token for pommes != -1)
  {
LABEL_38:
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v62 = __swift_project_value_buffer(v26, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v66 = v20;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v80[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000002234DC050, v80);
    _os_log_impl(&dword_2232BB000, v27, v28, "Checking %s...", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x223DE0F80](v31, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v80[3])
  {
LABEL_27:
    outlined destroy of MediaUserStateCenter?(v80, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_play_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v20 = v7;

  v7 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_2836989B0, a1);

  v61 = a3;
  v60 = a2;
  v59 = a1;
  v58[1] = 0;
  if (v7 >> 62)
  {
    v32 = __CocoaSet.count.getter();
  }

  else
  {
    v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v77;
  a3 = v67;
  if (!v32)
  {
LABEL_28:

    return 0;
  }

  v34 = v14;
  a2 = 0;
  v74 = v7 & 0xFFFFFFFFFFFFFF8;
  v75 = v7 & 0xC000000000000001;
  v69 = (v20 + 56);
  v72 = *MEMORY[0x277D5EE50];
  v70 = (v20 + 48);
  v71 = (v20 + 104);
  v63 = (v20 + 32);
  v65 = (v20 + 8);
  a1 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR;
  v73 = v7;
  v68 = v32;
  while (1)
  {
    if (v75)
    {
      v37 = MEMORY[0x223DDFF80](a2, v7);
      v38 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      if (a2 >= *(v74 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v36 = *(v7 + 8 * a2 + 32);

      v38 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_26;
      }
    }

    v78 = v38;
    v79 = v37;
    if (dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter())
    {
      dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

      v39 = v69;
    }

    else
    {
      v39 = v69;
      (*v69)(v33, 1, 1, v6);
    }

    v20 = a3;
    (*v71)(a3, v72, v6);
    (*v39)(a3, 0, 1, v6);
    v40 = *(v76 + 48);
    outlined init with copy of MediaUserStateCenter?(v33, v34, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    outlined init with copy of MediaUserStateCenter?(a3, v34 + v40, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v41 = v33;
    v14 = v70;
    v42 = *v70;
    if ((*v70)(v34, 1, v6) == 1)
    {
      break;
    }

    v43 = v66;
    outlined init with copy of MediaUserStateCenter?(v34, v66, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    if (v42(v34 + v40, 1, v6) == 1)
    {

      v44 = v67;
      outlined destroy of MediaUserStateCenter?(v67, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v77, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v45 = v43;
      v20 = v44;
      (*v65)(v45, v6);
      v7 = v73;
      goto LABEL_11;
    }

    v46 = v64;
    (*v63)(v64, v34 + v40, v6);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x277D5EE58]);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();

    v47 = *v65;
    (*v65)(v46, v6);
    v48 = v43;
    v20 = v67;
    outlined destroy of MediaUserStateCenter?(v67, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v77, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v47(v48, v6);
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    v7 = v73;
    if (v14)
    {
      goto LABEL_31;
    }

LABEL_12:
    a3 = v20;
    ++a2;
    v33 = v77;
    if (v78 == v68)
    {
      goto LABEL_28;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v35 = v42(v34 + v40, 1, v6);
  v7 = v73;
  if (v35 != 1)
  {
LABEL_11:
    outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_12;
  }

  outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
LABEL_31:

  v50 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_2836989D8, v59);

  v51 = v50 >> 62 ? __CocoaSet.count.getter() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v61;
  v53 = v60;

  if (v51 < 2)
  {
    return 0;
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v80[0] = v57;
    *v56 = 136315394;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000002234DC050, v80);
    *(v56 + 12) = 2080;
    *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, v80);
    _os_log_impl(&dword_2232BB000, v54, v55, "Task passed test %s:\n%s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v57, -1, -1);
    MEMORY[0x223DE0F80](v56, -1, -1);
  }

  return 1;
}

uint64_t WholeHomeAudioPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = 0;
  v133 = *v1;
  v132 = type metadata accessor for PommesSearchReason();
  v130 = *(v132 - 8);
  v4 = *(v130 + 64);
  MEMORY[0x28223BE20](v132, v5);
  v129 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v128 = (&v127 - v10);
  *&v157 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v161 = *(v157 - 8);
  v11 = *(v161 + 8);
  MEMORY[0x28223BE20](v157, v12);
  v14 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v15 = *(v156 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v156, v17);
  v155 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Siri_Nlu_External_UserParse();
  v25 = *(v141 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v141, v27);
  v140 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySb21SiriInformationSearch13PommesUsoTaskVcGMd, &_ss23_ContiguousArrayStorageCySb21SiriInformationSearch13PommesUsoTaskVcGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D1AE0;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WholeHomeAudioPreflightClient.handle(pommesSearchRequest:);
  *(v30 + 24) = v1;
  *(inited + 32) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool);
  v134 = inited + 32;
  *(inited + 40) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #4 in implicit closure #3 in WholeHomeAudioPreflightClient.handle(pommesSearchRequest:);
  *(v31 + 24) = v1;
  *(inited + 48) = thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool)partial apply;
  *(inited + 56) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #6 in implicit closure #5 in WholeHomeAudioPreflightClient.handle(pommesSearchRequest:);
  *(v32 + 24) = v1;
  *(inited + 64) = thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool)partial apply;
  *(inited + 72) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #8 in implicit closure #7 in WholeHomeAudioPreflightClient.handle(pommesSearchRequest:);
  *(v33 + 24) = v1;
  *(inited + 80) = thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool)partial apply;
  *(inited + 88) = v33;
  v127 = type metadata accessor for PommesSearchRequest(0);
  v34 = *(v127 + 76);
  v131 = a1;
  v35 = *(a1 + v34);
  *&v164 = MEMORY[0x277D84F90];
  v36 = *(v35 + 16);
  v145 = inited;
  v136 = v36;
  if (!v36)
  {
    swift_retain_n();
    v81 = MEMORY[0x277D84F90];
LABEL_42:
    v161 = v81;
    v82 = *(v81 + 16);
    if (!v82)
    {
LABEL_69:

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
      swift_arrayDestroy();
      return 1;
    }

    v83 = 0;
    v84 = (v161 + 48);
    *&v80 = 136315138;
    v157 = v80;
    v158 = v82;
    while (1)
    {
      if (v83 >= *(v161 + 2))
      {
        goto LABEL_81;
      }

      v3 = *(v84 - 2);
      v85 = *(v84 - 1);
      v86 = *v84;
      static UsoTask_CodegenConverter.convert(task:)();
      outlined init with copy of MediaUserStateCenter?(&v164, &v162, &_sypSgMd, &_sypSgMR);
      if (*(&v163 + 1))
      {
        type metadata accessor for UsoTask_play_common_MediaItem();
        if (swift_dynamicCast())
        {

          outlined destroy of MediaUserStateCenter?(&v164, &_sypSgMd, &_sypSgMR);
          goto LABEL_54;
        }
      }

      else
      {
        outlined destroy of MediaUserStateCenter?(&v162, &_sypSgMd, &_sypSgMR);
      }

      v162 = v164;
      v163 = v165;
      if (!*(&v165 + 1))
      {
        outlined destroy of MediaUserStateCenter?(&v162, &_sypSgMd, &_sypSgMR);
        goto LABEL_45;
      }

      type metadata accessor for UsoTask_update_common_MediaItem();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_54:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      v88 = __swift_project_value_buffer(v87, static Logger.pommes);

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();

      v160 = v3;

      v91 = os_log_type_enabled(v89, v90);
      v159 = v88;
      if (v91)
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v164 = v93;
        *v92 = v157;

        v94 = v85;
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v164);

        *(v92 + 4) = v95;
        _os_log_impl(&dword_2232BB000, v89, v90, "Checking task:\n%s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x223DE0F80](v93, -1, -1);
        v96 = v92;
        v82 = v158;
        MEMORY[0x223DE0F80](v96, -1, -1);
      }

      else
      {

        v94 = v85;
      }

      v97 = v145;
      v99 = v145[4];
      v98 = v145[5];
      v100 = v160;
      *&v164 = v160;
      *(&v164 + 1) = v94;
      *&v165 = v86;

      v99(&v162, &v164);

      if (v162)
      {
        goto LABEL_72;
      }

      v102 = v97[6];
      v101 = v97[7];
      *&v164 = v100;
      *(&v164 + 1) = v94;
      *&v165 = v86;

      v102(&v162, &v164);

      if (v162)
      {
        goto LABEL_72;
      }

      v104 = v97[8];
      v103 = v97[9];
      *&v164 = v100;
      *(&v164 + 1) = v94;
      *&v165 = v86;

      v104(&v162, &v164);

      if (v162)
      {
        goto LABEL_72;
      }

      v3 = v97[10];
      v105 = v97[11];
      *&v164 = v100;
      *(&v164 + 1) = v94;
      *&v165 = v86;

      (v3)(&v162, &v164);

      if (v162)
      {
LABEL_72:

        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
        swift_arrayDestroy();
        v117 = v131;
        v118 = (v131 + *(v127 + 32));
        v119 = *v118;
        v120 = v118[1];
        v121 = v128;
        PommesSearchRequest.pommesCandidateId.getter(v128);
        v122 = type metadata accessor for PommesCandidateId();
        (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
        v123 = v129;
        default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v129);
        v124 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v117, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v119, v120, v121, v123, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001DLL, 0x80000002234D2AE0);
        (*(v130 + 8))(v123, v132);
        outlined destroy of MediaUserStateCenter?(v121, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
        result = v124;
        if (v124)
        {
          return result;
        }

        v108 = Logger.logObject.getter();
        v125 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v108, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_2232BB000, v108, v125, "WholeHomeAudioPreflightClient#ignore could not build PommesResponse with given parameters", v126, 2u);
          MEMORY[0x223DE0F80](v126, -1, -1);
        }

        goto LABEL_67;
      }

LABEL_45:
      ++v83;
      v84 += 3;
      if (v82 == v83)
      {
        goto LABEL_69;
      }
    }
  }

  v139 = v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v138 = v25 + 16;
  v152 = v20 + 16;
  v151 = (v15 + 8);
  v153 = v161 + 8;
  v150 = (v20 + 8);
  v137 = (v25 + 8);
  v37 = v35;
  swift_retain_n();
  v38 = 0;
  v39 = v25;
  v144 = v14;
  v143 = v19;
  v148 = v24;
  v147 = v20;
  v146 = v25;
  v135 = v37;
  while (1)
  {
    v142 = v38;
    if (v38 >= *(v37 + 16))
    {
      break;
    }

    (*(v39 + 16))(v140, v139 + *(v39 + 72) * v38, v141);
    v40 = Siri_Nlu_External_Span.matcherNames.getter();
    v41 = v40;
    v154 = *(v40 + 16);
    if (v154)
    {
      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      v149 = v40;
      while (1)
      {
        if (v42 >= *(v41 + 16))
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v161 = v43;
        v46 = v41 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
        v47 = *(v20 + 72);
        v160 = v42;
        (*(v20 + 16))(v24, v46 + v47 * v42, v19);
        v48 = v155;
        Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
        Siri_Nlu_External_UserStatedTask.task.getter();
        (*v151)(v48, v156);
        v49 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
        if (v3)
        {

          (*v153)(v14, v157);
          (*v150)(v24, v19);

          (*v137)(v140, v141);

          if (one-time initialization token for pommes != -1)
          {
            goto LABEL_83;
          }

          goto LABEL_65;
        }

        v50 = v49;
        (*v153)(v14, v157);
        v51 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
        v53 = v52;
        v54 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
        if (v54 >> 62)
        {
          v67 = v54;
          v55 = __CocoaSet.count.getter();
          v54 = v67;
          if (!v55)
          {
LABEL_25:

            v24 = v148;
            (*v150)(v148, v19);
            v56 = MEMORY[0x277D84F90];
            goto LABEL_26;
          }
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v55)
          {
            goto LABEL_25;
          }
        }

        v159 = 0;
        v3 = v54;
        *&v162 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55 & ~(v55 >> 63), 0);
        if (v55 < 0)
        {
          goto LABEL_78;
        }

        v158 = v50;
        v56 = v162;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v57 = 0;
          do
          {
            v58 = MEMORY[0x223DDFF80](v57, v3);
            *&v162 = v56;
            v60 = *(v56 + 16);
            v59 = *(v56 + 24);

            if (v60 >= v59 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
              v56 = v162;
            }

            ++v57;
            *(v56 + 16) = v60 + 1;
            v61 = (v56 + 24 * v60);
            v61[4] = v58;
            v61[5] = v51;
            v61[6] = v53;
          }

          while (v55 != v57);
        }

        else
        {
          v62 = (v3 + 32);
          do
          {
            v63 = *v62;
            *&v162 = v56;
            v65 = *(v56 + 16);
            v64 = *(v56 + 24);

            if (v65 >= v64 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
              v56 = v162;
            }

            *(v56 + 16) = v65 + 1;
            v66 = (v56 + 24 * v65);
            v66[4] = v63;
            v66[5] = v51;
            v66[6] = v53;
            ++v62;
            --v55;
          }

          while (v55);
        }

        v24 = v148;
        v19 = v143;
        (*v150)(v148, v143);
        v14 = v144;
        v3 = v159;
LABEL_26:
        v68 = *(v56 + 16);
        v69 = *(v161 + 2);
        v70 = v69 + v68;
        v20 = v147;
        if (__OFADD__(v69, v68))
        {
          goto LABEL_76;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v161;
        if (!isUniquelyReferenced_nonNull_native || v70 > *(v161 + 3) >> 1)
        {
          if (v69 <= v70)
          {
            v73 = v69 + v68;
          }

          else
          {
            v73 = v69;
          }

          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v73, 1, v161);
        }

        v39 = v146;
        if (*(v56 + 16))
        {
          if ((*(v72 + 3) >> 1) - *(v72 + 2) < v68)
          {
            goto LABEL_79;
          }

          v74 = v72;
          swift_arrayInitWithCopy();

          v43 = v74;
          v45 = v160;
          if (v68)
          {
            v75 = *(v74 + 2);
            v76 = __OFADD__(v75, v68);
            v77 = v75 + v68;
            if (v76)
            {
              goto LABEL_80;
            }

            *(v74 + 2) = v77;
          }
        }

        else
        {
          v44 = v72;

          v43 = v44;
          v45 = v160;
          if (v68)
          {
            goto LABEL_77;
          }
        }

        v42 = v45 + 1;
        v41 = v149;
        if (v42 == v154)
        {
          goto LABEL_39;
        }
      }
    }

    v43 = MEMORY[0x277D84F90];
LABEL_39:
    v78 = v142 + 1;
    v79 = v43;

    (*v137)(v140, v141);
    specialized Array.append<A>(contentsOf:)(v79);
    v38 = v78;
    v37 = v135;
    if (v78 == v136)
    {
      v81 = v164;
      goto LABEL_42;
    }
  }

LABEL_82:
  __break(1u);
LABEL_83:
  swift_once();
LABEL_65:
  v106 = type metadata accessor for Logger();
  __swift_project_value_buffer(v106, static Logger.pommes);
  v107 = v3;
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *&v164 = v111;
    *v110 = 136315138;
    *&v162 = v3;
    v112 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v113 = String.init<A>(describing:)();
    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, &v164);

    *(v110 + 4) = v115;
    _os_log_impl(&dword_2232BB000, v108, v109, "ConversionUtils.convertUserDialogActToTasks error: %s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x223DE0F80](v111, -1, -1);
    MEMORY[0x223DE0F80](v110, -1, -1);

LABEL_67:
  }

  else
  {
  }

  return 1;
}

uint64_t WholeHomeAudioPreflightClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WholeHomeAudioPreflightClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PommesUsoTask) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1], a1[2]);
  *a2 = result & 1;
  return result;
}

unint64_t CommonAudio.Verb.rawValue.getter(char a1)
{
  result = 2036427888;
  switch(a1)
  {
    case 1:
      result = 0x6269726373627573;
      break;
    case 2:
      result = 0x776F6C6C6F66;
      break;
    case 3:
      result = 1701538156;
      break;
    case 4:
      result = 0x656C6666756873;
      break;
    case 5:
      result = 0x746165706572;
      break;
    case 6:
      result = 0x656D75736572;
      break;
    case 7:
      result = 0x657461647075;
      break;
    case 8:
      result = 0x736972616D6D7573;
      break;
    case 9:
      result = 0x7472617473;
      break;
    case 10:
      result = 0x656B696C6E75;
      break;
    case 11:
      result = 0x74736575716572;
      break;
    case 12:
      result = 0x6E696D7265746564;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 6579297;
      break;
    case 15:
      result = 0x656C62616E65;
      break;
    case 16:
      result = 0x656C6261736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Verb@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized CommonAudio.Verb.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Verb@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.Verb.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CommonAudio.UsoEntity.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E456F4E5F6F7375;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.UsoEntity(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x6E456F4E5F6F7375;
  }

  if (v3)
  {
    v5 = 0xEC00000079746974;
  }

  else
  {
    v5 = 0x80000002234D92F0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6E456F4E5F6F7375;
  }

  if (*a2)
  {
    v7 = 0x80000002234D92F0;
  }

  else
  {
    v7 = 0xEC00000079746974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.UsoEntity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.UsoEntity()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.UsoEntity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.UsoEntity(unint64_t *a1@<X8>)
{
  v2 = 0x80000002234D92F0;
  v3 = 0x6E456F4E5F6F7375;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEC00000079746974;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t CommonAudio.Attribute.rawValue.getter(char a1)
{
  result = 0x697472416D6F7266;
  switch(a1)
  {
    case 1:
      result = 0x676E6F536D6F7266;
      break;
    case 2:
      result = 0x75626C416D6F7266;
      break;
    case 3:
      result = 0x7478654E79616C70;
      break;
    case 4:
      result = 0x776F4E79616C70;
      break;
    case 5:
      result = 0x7473614C79616C70;
      break;
    case 6:
      result = 0x7974696E69666661;
      break;
    case 7:
      result = 0x6E656D6D6F636572;
      break;
    case 8:
      result = 0x7265766F63736964;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 1954047342;
      break;
    case 11:
      result = 0x64656D616ELL;
      break;
    case 12:
      result = 0x73756F6976657270;
      break;
    case 13:
      result = 0x44657361656C6572;
      break;
    case 14:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Attribute@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Attribute.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Attribute@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.Attribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CommonAudio.Modifier.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E65726566666964;
  }

  else
  {
    return 0x664F65726F6DLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Modifier(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E65726566666964;
  }

  else
  {
    v4 = 0x664F65726F6DLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xED00006E61685474;
  }

  if (*a2)
  {
    v6 = 0x6E65726566666964;
  }

  else
  {
    v6 = 0x664F65726F6DLL;
  }

  if (*a2)
  {
    v7 = 0xED00006E61685474;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Modifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Modifier()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Modifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Modifier(uint64_t *a1@<X8>)
{
  v2 = 0x664F65726F6DLL;
  if (*v1)
  {
    v2 = 0x6E65726566666964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006E61685474;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CommonAudio.Noun.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7972617262696CLL;
  }

  if (a1 == 1)
  {
    return 0x317374616562;
  }

  return 0xD000000000000011;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Noun(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x317374616562;
  v5 = 0x80000002234D9B30;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000002234D9B30;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7972617262696CLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x317374616562;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Noun()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Noun()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Noun()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Noun@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Noun.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Noun(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x317374616562;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000002234D9B30;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972617262696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t CommonAudio.RadioType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 28001;
  }

  else
  {
    return 28006;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.RadioType(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 28001;
  }

  else
  {
    v2 = 28006;
  }

  if (*a2)
  {
    v3 = 28001;
  }

  else
  {
    v3 = 28006;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.RadioType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.RadioType()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.RadioType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.RadioType(uint64_t *a1@<X8>)
{
  v2 = 28006;
  if (*v1)
  {
    v2 = 28001;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t CommonAudio.Confirmation.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7562617;
  v2 = 0x6C65636E6163;
  if (a1 != 2)
  {
    v2 = 0x6F666E4965726F6DLL;
  }

  if (a1)
  {
    v1 = 28526;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Confirmation(_BYTE *a1, _BYTE *a2)
{
  v2 = 7562617;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x6C65636E6163;
  if (v3 != 2)
  {
    v6 = 0x6F666E4965726F6DLL;
    v5 = 0xE800000000000000;
  }

  v7 = 28526;
  if (*a1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v7 = 7562617;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE300000000000000;
  v11 = 0xE600000000000000;
  v12 = 0x6C65636E6163;
  if (*a2 != 2)
  {
    v12 = 0x6F666E4965726F6DLL;
    v11 = 0xE800000000000000;
  }

  if (*a2)
  {
    v2 = 28526;
    v10 = 0xE200000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Confirmation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Confirmation()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Confirmation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Confirmation@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Confirmation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Confirmation(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (*v1 != 2)
  {
    v5 = 0x6F666E4965726F6DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t one-time initialization function for mappingDecade()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch11CommonAudioV6DecadeOTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingDecade);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SiriInformationSearch11CommonAudioV6DecadeOtMd, &_sSS_21SiriInformationSearch11CommonAudioV6DecadeOtMR);
  result = swift_arrayDestroy();
  static CommonAudio.Decade.mappingDecade = v0;
  return result;
}

uint64_t *CommonAudio.Decade.mappingDecade.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingDecade != -1)
  {
    swift_once();
  }

  return &static CommonAudio.Decade.mappingDecade;
}

unint64_t one-time initialization function for mappingToStartYear()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV6DecadeO_SiTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingToStartYear);
  static CommonAudio.Decade.mappingToStartYear = result;
  return result;
}

uint64_t *CommonAudio.Decade.mappingToStartYear.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingToStartYear != -1)
  {
    swift_once();
  }

  return &static CommonAudio.Decade.mappingToStartYear;
}

uint64_t CommonAudio.Decade.releaseDate.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for Calendar.Identifier();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v55 - v25;
  v27 = type metadata accessor for DateComponents();
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27, v29);
  MEMORY[0x28223BE20](v30, v31);
  v35 = &v55 - v32;
  if (one-time initialization token for mappingToStartYear != -1)
  {
    v67 = v33;
    v68 = &v55 - v32;
    v54 = v34;
    swift_once();
    v33 = v67;
    v35 = v68;
    v34 = v54;
  }

  v36 = static CommonAudio.Decade.mappingToStartYear;
  if (!*(static CommonAudio.Decade.mappingToStartYear + 16))
  {
    return 0;
  }

  v67 = v33;
  v68 = v35;
  v66 = v34;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  v56 = v27;
  v57 = v10;
  v58 = v7;
  v39 = *(*(v36 + 56) + 8 * v37);
  v65 = *MEMORY[0x277CC9830];
  v64 = v17[13];
  v64(v21);
  Calendar.init(identifier:)();
  v40 = v17[1];
  v62 = v17 + 1;
  v63 = v40;
  v40(v21, v16);
  v59 = type metadata accessor for Calendar();
  v41 = *(v59 - 8);
  v60 = *(v41 + 56);
  v61 = v41 + 56;
  v60(v26, 0, 1, v59);
  v42 = type metadata accessor for TimeZone();
  v43 = *(*(v42 - 8) + 56);
  v43(v15, 1, 1, v42);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  (v64)(v21, v65, v16);
  Calendar.init(identifier:)();
  v63(v21, v16);
  v60(v26, 0, 1, v59);
  result = (v43)(v15, 1, 1, v42);
  if (__OFADD__(v39, 9))
  {
    __break(1u);
  }

  else
  {
    v45 = v66;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    type metadata accessor for INDateComponentsRange();
    v46 = v67;
    v47 = *(v67 + 16);
    v48 = v56;
    v49 = v57;
    v47(v57, v68, v56);
    v50 = *(v46 + 56);
    v50(v49, 0, 1, v48);
    v51 = v58;
    v47(v58, v45, v48);
    v50(v51, 0, 1, v48);
    v52 = INDateComponentsRange.__allocating_init(start:end:)(v49, v51);
    v53 = *(v46 + 8);
    v53(v45, v48);
    v53(v68, v48);
    return v52;
  }

  return result;
}

id INDateComponentsRange.__allocating_init(start:end:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  isa = 0;
  if (v6(a1, 1, v4) != 1)
  {
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDateComponents:isa endDateComponents:v8];

  return v9;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Decade(char *a1, char *a2)
{
  v2 = *a2;
  v3 = CommonAudio.Decade.rawValue.getter(*a1);
  if (v3 == CommonAudio.Decade.rawValue.getter(v2))
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Decade()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CommonAudio.Decade.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Decade()
{
  CommonAudio.Decade.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Decade()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CommonAudio.Decade.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Decade@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Decade.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Decade@<X0>(uint64_t *a1@<X8>)
{
  result = CommonAudio.Decade.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

unint64_t one-time initialization function for mappingMediaSortOrder()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV4SortO_So07INMediaH5OrderVTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingMediaSortOrder);
  static CommonAudio.Sort.mappingMediaSortOrder = result;
  return result;
}

uint64_t *CommonAudio.Sort.mappingMediaSortOrder.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingMediaSortOrder != -1)
  {
    swift_once();
  }

  return &static CommonAudio.Sort.mappingMediaSortOrder;
}

uint64_t CommonAudio.Sort.sortOrder.getter(unsigned __int8 a1)
{
  if (one-time initialization token for mappingMediaSortOrder != -1)
  {
    swift_once();
  }

  v2 = static CommonAudio.Sort.mappingMediaSortOrder;
  if (*(static CommonAudio.Sort.mappingMediaSortOrder + 16))
  {
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v4)
    {
      return *(*(v2 + 56) + 8 * v3);
    }
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
    v14 = v10;
    *v9 = 136315138;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v7, v8, "CommonAudio#Sort#sortOrder recieved unregistered decade: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  return 0;
}

uint64_t CommonAudio.Sort.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x72616C75706F70;
    v6 = 1953719650;
    if (a1 != 2)
    {
      v6 = 0x7473726F77;
    }

    if (a1)
    {
      v5 = 0x616C75706F706E75;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74736574746F68;
    v2 = 0x6572636F6964656DLL;
    if (a1 != 7)
    {
      v2 = 0x7473657461657267;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x74736577656ELL;
    if (a1 != 4)
    {
      v3 = 0x747365646C6FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.Sort@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CommonAudio.Sort.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Sort@<X0>(uint64_t *a1@<X8>)
{
  result = CommonAudio.Sort.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CommonAudio.UsoEntity.init(rawValue:)(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t CommonAudio.Reference.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x696E696665646E69;
  }

  else
  {
    return 0x6574696E69666564;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Reference(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x696E696665646E69;
  }

  else
  {
    v4 = 0x6574696E69666564;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v6 = 0x696E696665646E69;
  }

  else
  {
    v6 = 0x6574696E69666564;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006574;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Reference()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Reference()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Reference()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.UsoEntity@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.Reference(uint64_t *a1@<X8>)
{
  v2 = 0x6574696E69666564;
  if (*v1)
  {
    v2 = 0x696E696665646E69;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t one-time initialization function for mappingMediaType()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0D17InformationSearch11CommonAudioV0iK0OSgtGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0D17InformationSearch11CommonAudioV0iK0OSgtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234D2BB0;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = *MEMORY[0x277D5EDA0];
  v7 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = *(v0 + 48);
  v8(v4 + v1, *MEMORY[0x277D5EDC0], v7);
  *(v4 + v1 + v9) = 1;
  v10 = *(v0 + 48);
  v8(v4 + 2 * v1, *MEMORY[0x277D5EDB8], v7);
  *(v4 + 2 * v1 + v10) = 2;
  v11 = *(v0 + 48);
  v8(v4 + 3 * v1, *MEMORY[0x277D5EE18], v7);
  *(v4 + 3 * v1 + v11) = 3;
  v12 = *(v0 + 48);
  v8(v4 + 4 * v1, *MEMORY[0x277D5EE10], v7);
  *(v4 + 4 * v1 + v12) = 4;
  v13 = *(v0 + 48);
  v8(v4 + 5 * v1, *MEMORY[0x277D5ED68], v7);
  *(v4 + 5 * v1 + v13) = 5;
  v14 = *(v0 + 48);
  v8(v4 + 6 * v1, *MEMORY[0x277D5ED30], v7);
  *(v4 + 6 * v1 + v14) = 6;
  v15 = *(v0 + 48);
  v8(v4 + 7 * v1, *MEMORY[0x277D5ED90], v7);
  *(v4 + 7 * v1 + v15) = 7;
  v16 = *(v0 + 48);
  v8(v4 + 8 * v1, *MEMORY[0x277D5EDF8], v7);
  *(v4 + 8 * v1 + v16) = 8;
  v17 = *(v0 + 48);
  v8(v4 + 9 * v1, *MEMORY[0x277D5EE08], v7);
  *(v4 + 9 * v1 + v17) = 9;
  v18 = *(v0 + 48);
  v8(v4 + 10 * v1, *MEMORY[0x277D5ED38], v7);
  *(v4 + 10 * v1 + v18) = 10;
  v19 = *(v0 + 48);
  v8(v4 + 11 * v1, *MEMORY[0x277D5EDB0], v7);
  *(v4 + 11 * v1 + v19) = 11;
  v20 = *(v0 + 48);
  v8(v4 + 12 * v1, *MEMORY[0x277D5ED80], v7);
  *(v4 + 12 * v1 + v20) = 12;
  v21 = *(v0 + 48);
  v8(v4 + 13 * v1, *MEMORY[0x277D5EDD8], v7);
  *(v4 + 13 * v1 + v21) = 13;
  v22 = *(v0 + 48);
  v8(v4 + 14 * v1, *MEMORY[0x277D5ED98], v7);
  *(v4 + 14 * v1 + v22) = 14;
  v23 = *(v0 + 48);
  v8(v4 + 15 * v1, *MEMORY[0x277D5EE20], v7);
  *(v4 + 15 * v1 + v23) = 15;
  v24 = *(v0 + 48);
  v8(v4 + 16 * v1, *MEMORY[0x277D5ED78], v7);
  *(v4 + 16 * v1 + v24) = 16;
  v25 = *(v0 + 48);
  v8(v4 + 17 * v1, *MEMORY[0x277D5ED88], v7);
  *(v4 + 17 * v1 + v25) = 17;
  v26 = *(v0 + 48);
  v8(v4 + 18 * v1, *MEMORY[0x277D5ED48], v7);
  *(v4 + 18 * v1 + v26) = 18;
  v27 = *(v0 + 48);
  v8(v4 + 19 * v1, *MEMORY[0x277D5ED70], v7);
  *(v4 + 19 * v1 + v27) = 19;
  v28 = *(v0 + 48);
  v8(v4 + 20 * v1, *MEMORY[0x277D5EDC8], v7);
  *(v4 + 20 * v1 + v28) = 20;
  v29 = *(v0 + 48);
  v8(v4 + 21 * v1, *MEMORY[0x277D5EDF0], v7);
  *(v4 + 21 * v1 + v29) = 21;
  v30 = *(v0 + 48);
  v8(v4 + 22 * v1, *MEMORY[0x277D5ED58], v7);
  *(v4 + 22 * v1 + v30) = 22;
  v31 = *(v0 + 48);
  v8(v4 + 23 * v1, *MEMORY[0x277D5EDD0], v7);
  *(v4 + 23 * v1 + v31) = 23;
  v32 = *(v0 + 48);
  v8(v4 + 24 * v1, *MEMORY[0x277D5ED40], v7);
  *(v4 + 24 * v1 + v32) = 24;
  v33 = *(v0 + 48);
  v8(v4 + 25 * v1, *MEMORY[0x277D5EDA8], v7);
  *(v4 + 25 * v1 + v33) = 25;
  v34 = *(v0 + 48);
  v8(v4 + 26 * v1, *MEMORY[0x277D5ED28], v7);
  *(v4 + 26 * v1 + v34) = 26;
  v35 = *(v0 + 48);
  v8(v4 + 27 * v1, *MEMORY[0x277D5ED50], v7);
  *(v4 + 27 * v1 + v35) = 27;
  v36 = *(v0 + 48);
  v8(v4 + 28 * v1, *MEMORY[0x277D5EDE0], v7);
  *(v4 + 28 * v1 + v36) = 28;
  v37 = *(v0 + 48);
  v8(v4 + 29 * v1, *MEMORY[0x277D5EE00], v7);
  *(v4 + 29 * v1 + v37) = 28;
  v38 = *(v0 + 48);
  v8(v4 + 30 * v1, *MEMORY[0x277D5ED60], v7);
  *(v4 + 30 * v1 + v38) = 28;
  v39 = v4 + 31 * v1;
  v40 = *(v0 + 48);
  v8(v39, *MEMORY[0x277D5EE28], v7);
  *(v39 + v40) = 28;
  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0C17InformationSearch11CommonAudioV0hJ0OSgTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static CommonAudio.MediaType.mappingMediaType = v41;
  return result;
}

uint64_t *CommonAudio.MediaType.mappingMediaType.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingMediaType != -1)
  {
    swift_once();
  }

  return &static CommonAudio.MediaType.mappingMediaType;
}

unint64_t one-time initialization function for mappingMediaItemType()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV9MediaTypeO_So011INMediaItemI0VTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingMediaItemType);
  static CommonAudio.MediaType.mappingMediaItemType = result;
  return result;
}

uint64_t *CommonAudio.MediaType.mappingMediaItemType.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingMediaItemType != -1)
  {
    swift_once();
  }

  return &static CommonAudio.MediaType.mappingMediaItemType;
}

unint64_t one-time initialization function for mappingStationMediaItemType()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV9MediaTypeO_So011INMediaItemI0VTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for mappingStationMediaItemType);
  static CommonAudio.MediaType.mappingStationMediaItemType = result;
  return result;
}

uint64_t *CommonAudio.MediaType.mappingStationMediaItemType.unsafeMutableAddressor()
{
  if (one-time initialization token for mappingStationMediaItemType != -1)
  {
    swift_once();
  }

  return &static CommonAudio.MediaType.mappingStationMediaItemType;
}

uint64_t static CommonAudio.Decade.mappingDecade.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t CommonAudio.MediaType.stationMediaItemType.getter(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    v7 = a1;
    v8 = a3;
    swift_once();
    a3 = v8;
    a1 = v7;
  }

  v3 = *a3;
  if (*(*a3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

unint64_t CommonAudio.MediaType.rawValue.getter(char a1)
{
  result = 0x65726E6567;
  switch(a1)
  {
    case 1:
      result = 0x747369747261;
      break;
    case 2:
      result = 0x6F65646976;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0x6E6F6974617473;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6F68536F69646172;
      break;
    case 7:
      result = 1735290739;
      break;
    case 8:
      result = 0x5573656E755469;
      break;
    case 9:
      result = 0x74736163646F70;
      break;
    case 10:
      result = 0x646956636973756DLL;
      break;
    case 11:
      result = 0x636973756DLL;
      break;
    case 12:
      result = 1937204590;
      break;
    case 13:
      result = 0x776F68537674;
      break;
    case 14:
      result = 0x6D75626C61;
      break;
    case 15:
      result = 0x656E6F74676E6972;
      break;
    case 16:
      result = 28780;
      break;
    case 17:
      result = 2003789939;
      break;
    case 18:
      result = 0x6174536F69646172;
      break;
    case 19:
      result = 28773;
      break;
    case 20:
      result = 0x656C676E6973;
      break;
    case 21:
      result = 0x65646F73697065;
      break;
    case 22:
      result = 0x5374736163646F70;
      break;
    case 23:
      result = 0x73646E756F73;
      break;
    case 24:
      result = 0x74616C69706D6F63;
      break;
    case 25:
      result = 0x6569766F6DLL;
      break;
    case 26:
      result = 0x6F6F426F69647561;
      break;
    case 27:
      result = 0x616C50636973756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CommonAudio.Verb(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CommonAudio.Verb(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CommonAudio.Verb(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CommonAudio.Verb(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CommonAudio.MediaType@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized CommonAudio.MediaType.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CommonAudio.MediaType@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.MediaType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized CommonAudio.Verb.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t specialized static CommonAudio.Decade.from(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (one-time initialization token for mappingDecade != -1)
    {
      swift_once();
    }

    v4 = static CommonAudio.Decade.mappingDecade;
    if (*(static CommonAudio.Decade.mappingDecade + 16))
    {
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v6)
      {
        return *(*(v4 + 56) + v5);
      }
    }
  }

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
    v16 = v12;
    *v11 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2232BB000, v9, v10, "CommonAudio#Decade#from received unregistered decade: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return 11;
}

unint64_t specialized CommonAudio.Attribute.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Attribute.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CommonAudio.Noun.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Noun.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CommonAudio.Confirmation.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Confirmation.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t type metadata accessor for INDateComponentsRange()
{
  result = lazy cache variable for type metadata for INDateComponentsRange;
  if (!lazy cache variable for type metadata for INDateComponentsRange)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INDateComponentsRange);
  }

  return result;
}

unint64_t specialized CommonAudio.Decade.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Decade.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CommonAudio.Sort.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CommonAudio.Sort.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static CommonAudio.MediaType.from(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UsoEntity_common_MediaItemType.DefinedValues?(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of UsoEntity_common_MediaItemType.DefinedValues?(v14);
  }

  else
  {
    (*(v16 + 32))(v20, v14, v15);
    if (one-time initialization token for mappingMediaType != -1)
    {
      swift_once();
    }

    v21 = static CommonAudio.MediaType.mappingMediaType;
    if (*(static CommonAudio.MediaType.mappingMediaType + 16))
    {
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if (v23)
      {
        v24 = *(*(v21 + 56) + v22);
        (*(v16 + 8))(v20, v15);
        return v24;
      }
    }

    (*(v16 + 8))(v20, v15);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.pommes);
  outlined init with copy of UsoEntity_common_MediaItemType.DefinedValues?(a1, v11);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    outlined init with copy of UsoEntity_common_MediaItemType.DefinedValues?(v11, v7);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    outlined destroy of UsoEntity_common_MediaItemType.DefinedValues?(v11);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v36);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_2232BB000, v27, v28, "CommonAudio#MediaType#from recieved unregistered type: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x223DE0F80](v30, -1, -1);
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  else
  {

    outlined destroy of UsoEntity_common_MediaItemType.DefinedValues?(v11);
  }

  return 28;
}

uint64_t specialized CommonAudio.MediaType.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Verb and conformance CommonAudio.Verb()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Verb and conformance CommonAudio.Verb;
  if (!lazy protocol witness table cache variable for type CommonAudio.Verb and conformance CommonAudio.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Verb and conformance CommonAudio.Verb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.UsoEntity and conformance CommonAudio.UsoEntity()
{
  result = lazy protocol witness table cache variable for type CommonAudio.UsoEntity and conformance CommonAudio.UsoEntity;
  if (!lazy protocol witness table cache variable for type CommonAudio.UsoEntity and conformance CommonAudio.UsoEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.UsoEntity and conformance CommonAudio.UsoEntity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Attribute and conformance CommonAudio.Attribute()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Attribute and conformance CommonAudio.Attribute;
  if (!lazy protocol witness table cache variable for type CommonAudio.Attribute and conformance CommonAudio.Attribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Attribute and conformance CommonAudio.Attribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Modifier and conformance CommonAudio.Modifier()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Modifier and conformance CommonAudio.Modifier;
  if (!lazy protocol witness table cache variable for type CommonAudio.Modifier and conformance CommonAudio.Modifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Modifier and conformance CommonAudio.Modifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Noun and conformance CommonAudio.Noun()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Noun and conformance CommonAudio.Noun;
  if (!lazy protocol witness table cache variable for type CommonAudio.Noun and conformance CommonAudio.Noun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Noun and conformance CommonAudio.Noun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.RadioType and conformance CommonAudio.RadioType()
{
  result = lazy protocol witness table cache variable for type CommonAudio.RadioType and conformance CommonAudio.RadioType;
  if (!lazy protocol witness table cache variable for type CommonAudio.RadioType and conformance CommonAudio.RadioType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.RadioType and conformance CommonAudio.RadioType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Confirmation and conformance CommonAudio.Confirmation()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Confirmation and conformance CommonAudio.Confirmation;
  if (!lazy protocol witness table cache variable for type CommonAudio.Confirmation and conformance CommonAudio.Confirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Confirmation and conformance CommonAudio.Confirmation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Decade and conformance CommonAudio.Decade()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Decade and conformance CommonAudio.Decade;
  if (!lazy protocol witness table cache variable for type CommonAudio.Decade and conformance CommonAudio.Decade)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Decade and conformance CommonAudio.Decade);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Sort and conformance CommonAudio.Sort()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Sort and conformance CommonAudio.Sort;
  if (!lazy protocol witness table cache variable for type CommonAudio.Sort and conformance CommonAudio.Sort)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Sort and conformance CommonAudio.Sort);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.Reference and conformance CommonAudio.Reference()
{
  result = lazy protocol witness table cache variable for type CommonAudio.Reference and conformance CommonAudio.Reference;
  if (!lazy protocol witness table cache variable for type CommonAudio.Reference and conformance CommonAudio.Reference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.Reference and conformance CommonAudio.Reference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommonAudio.MediaType and conformance CommonAudio.MediaType()
{
  result = lazy protocol witness table cache variable for type CommonAudio.MediaType and conformance CommonAudio.MediaType;
  if (!lazy protocol witness table cache variable for type CommonAudio.MediaType and conformance CommonAudio.MediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommonAudio.MediaType and conformance CommonAudio.MediaType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonAudio.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonAudio.Verb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonAudio.Attribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonAudio.Attribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonAudio.Decade(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonAudio.Decade(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonAudio.MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonAudio.MediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of UsoEntity_common_MediaItemType.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UsoEntity_common_MediaItemType.DefinedValues?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int DisableSearchPreflightClientError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DisableSearchPreflightClientError()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisableSearchPreflightClientError()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](0);
  return Hasher._finalize()();
}

id DisableSearchPreflightClient.shouldDisableSearchViaPreflight.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x223DDF550](0xD000000000000019, 0x80000002234DC0E0);
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t DisableSearchPreflightClient.handle(pommesSearchRequest:)()
{
  if ((*(*v0 + 80))())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pommes);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2232BB000, v2, v3, "DisableSearchPreflightClient#handle POMMES SEARCH DISABLED VIA PREFLIGHT CLIENT", v4, 2u);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }

    lazy protocol witness table accessor for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError();
    swift_allocError();
    return 0;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "DisableSearchPreflightClient#handle no conclusive result, ignoring", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    return 1;
  }
}

unint64_t lazy protocol witness table accessor for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError()
{
  result = lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError;
  if (!lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError;
  if (!lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableSearchPreflightClientError and conformance DisableSearchPreflightClientError);
  }

  return result;
}

uint64_t MediaItemRankingSignals.artist.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MediaItemRankingSignals.__allocating_init(artist:isInLibrary:isExplicitContent:isDownloaded:isPlayable:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 33) = a4;
  *(result + 34) = a5;
  *(result + 35) = a6;
  return result;
}

uint64_t MediaItemRankingSignals.init(artist:isInLibrary:isExplicitContent:isDownloaded:isPlayable:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 33) = a4;
  *(v6 + 34) = a5;
  *(v6 + 35) = a6;
  return v6;
}

uint64_t MediaItemRankingSignals.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MediaItemRankingSignals.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t MPMediaLibrary.mediaItemRankingSignals(for:iTunesAltDSID:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v9 = objc_opt_self();
    v10 = MEMORY[0x223DDF550](a3, a4);
    v11 = [v9 specificAccountWithAltDSID_];

    v12 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0x223DDF550](a1, a2);
      v15 = [v13 entityWithSiriSyncIdentifier_];

      if (v15)
      {

LABEL_6:
        v17 = MPMediaLibrary.mediaItemRankingSignals(for:)(v15);

        return v17;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.pommes);

      v25 = v13;
      v20 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v38 = v28;
        *v27 = 136315650;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v38);
        *(v27 + 12) = 2080;
        *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
        *(v27 + 22) = 2080;
        v29 = [v25 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v38);

        *(v27 + 24) = v33;
        _os_log_impl(&dword_2232BB000, v20, v26, "unable to find user's mediaEntity for iTunesAltDSID %s siriSyncId %s userMediaLibrary : %s ", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v28, -1, -1);
        MEMORY[0x223DE0F80](v27, -1, -1);

        goto LABEL_21;
      }
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
        v23 = swift_slowAlloc();
        v38 = v23;
        *v22 = 136315138;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v38);
        _os_log_impl(&dword_2232BB000, v20, v21, "unable to find user's library for iTunesAltDSID %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x223DE0F80](v23, -1, -1);
        MEMORY[0x223DE0F80](v22, -1, -1);
      }
    }

    goto LABEL_21;
  }

  v16 = MEMORY[0x223DDF550](a1, a2);
  v15 = [v4 entityWithSiriSyncIdentifier_];

  if (v15)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v36 = 136315138;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
    _os_log_impl(&dword_2232BB000, v11, v35, "unable to find mediaEntity for siriSyncId %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x223DE0F80](v37, -1, -1);
    MEMORY[0x223DE0F80](v36, -1, -1);
  }

LABEL_21:

  return 0;
}

uint64_t MPMediaLibrary.mediaItemRankingSignals(for:)(void *a1)
{
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v9 = v1;
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *&v100 = v11;
  *(&v100 + 1) = v13;
  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DC140);
  v14 = v100;
  Date.init()();
  v15 = &v8[v4[7]];
  *v15 = "SiriInformationSearch/MediaLibrary.swift";
  *(v15 + 1) = 40;
  v15[16] = 2;
  *&v8[v4[8]] = 75;
  v16 = &v8[v4[9]];
  *v16 = "mediaItemRankingSignals(for:)";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v17 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v14);
  v19 = v18;

  v20 = &v8[v4[10]];
  *v20 = v17;
  v20[1] = v19;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = *MEMORY[0x277CD5788];
    v24 = a1;
    if ([v22 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
    }

    v100 = v98;
    v101 = v99;
    if (*(&v99 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v29 = v96;
        v30 = [v96 BOOLValue];

        goto LABEL_13;
      }
    }

    else
    {
      outlined destroy of Any?(&v100);
    }

    v30 = 1;
LABEL_13:
    if ([v22 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
    }

    v100 = v98;
    v101 = v99;
    if (*(&v99 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v31 = v96;
        v32 = [v96 BOOLValue];

        goto LABEL_21;
      }
    }

    else
    {
      outlined destroy of Any?(&v100);
    }

    v32 = 0;
LABEL_21:
    if ([v22 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
    }

    v100 = v98;
    v101 = v99;
    if (*(&v99 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v33 = v96;
        v34 = [v96 BOOLValue];

        goto LABEL_29;
      }
    }

    else
    {
      outlined destroy of Any?(&v100);
    }

    v34 = 0;
LABEL_29:
    if ([v22 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
    }

    v100 = v98;
    v101 = v99;
    if (*(&v99 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v35 = v96;
        v36 = [v96 BOOLValue];

LABEL_37:
        v37 = [v22 artist];
        if (v37)
        {
          v38 = v37;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

LABEL_86:
          type metadata accessor for MediaItemRankingSignals();
          v62 = swift_allocObject();
          *(v62 + 16) = v39;
          *(v62 + 24) = v41;
          *(v62 + 32) = v30;
          *(v62 + 33) = v32;
          *(v62 + 34) = v34;
          *(v62 + 35) = v36;
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          __swift_project_value_buffer(v69, static Logger.pommes);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *&v98 = v94;
            *v72 = 136316162;
            v73 = *(v62 + 24);
            *&v100 = *(v62 + 16);
            *(&v100 + 1) = v73;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            v74 = String.init<A>(describing:)();
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v98);

            *(v72 + 4) = v76;
            *(v72 + 12) = 2080;
            v77 = *(v62 + 32);
            v95 = v8;
            v93 = v71;
            if (v77)
            {
              v78 = 1702195828;
            }

            else
            {
              v78 = 0x65736C6166;
            }

            if (v77)
            {
              v79 = 0xE400000000000000;
            }

            else
            {
              v79 = 0xE500000000000000;
            }

            v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v98);

            *(v72 + 14) = v80;
            *(v72 + 22) = 2080;
            if (*(v62 + 33))
            {
              v81 = 1702195828;
            }

            else
            {
              v81 = 0x65736C6166;
            }

            if (*(v62 + 33))
            {
              v82 = 0xE400000000000000;
            }

            else
            {
              v82 = 0xE500000000000000;
            }

            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v98);

            *(v72 + 24) = v83;
            *(v72 + 32) = 2080;
            if (*(v62 + 34))
            {
              v84 = 1702195828;
            }

            else
            {
              v84 = 0x65736C6166;
            }

            if (*(v62 + 34))
            {
              v85 = 0xE400000000000000;
            }

            else
            {
              v85 = 0xE500000000000000;
            }

            v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v98);

            *(v72 + 34) = v86;
            *(v72 + 42) = 2080;
            if (*(v62 + 35))
            {
              v87 = 1702195828;
            }

            else
            {
              v87 = 0x65736C6166;
            }

            v8 = v95;
            if (*(v62 + 35))
            {
              v88 = 0xE400000000000000;
            }

            else
            {
              v88 = 0xE500000000000000;
            }

            v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v98);

            *(v72 + 44) = v89;
            _os_log_impl(&dword_2232BB000, v70, v93, "MPMediaLibrary#mediaItemRankingSignals with siriSyncId mediaItemRankingSignals\n{\n    artist: %s\n    isInLibrary: %s\n    isExplicitContent: %s\n    isDownloaded: %s\n    isPlayable: %s\n}", v72, 0x34u);
            v90 = v94;
            swift_arrayDestroy();
            MEMORY[0x223DE0F80](v90, -1, -1);
            MEMORY[0x223DE0F80](v72, -1, -1);
          }

          v64 = one-time initialization token for shared;
          v63 = v62;
          goto LABEL_115;
        }

LABEL_40:
        v39 = 0;
        v41 = 0;
        goto LABEL_86;
      }
    }

    else
    {
      outlined destroy of Any?(&v100);
    }

    v36 = 1;
    goto LABEL_37;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27 = *MEMORY[0x277CD5920];
    v28 = a1;
    if ([v26 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
    }

    v100 = v98;
    v101 = v99;
    if (*(&v99 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v46 = v96;
        v47 = [v96 BOOLValue];

        v30 = v47 ^ 1;
LABEL_50:
        v48 = [v26 items];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
        v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v49 >> 62)
        {
          v50 = __CocoaSet.count.getter();
        }

        else
        {
          v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v34 = 0;
        v32 = 0;
        v39 = 0;
        v41 = 0;
        v36 = v50 != 0;
        goto LABEL_86;
      }
    }

    else
    {
      outlined destroy of Any?(&v100);
    }

    v30 = 1;
    goto LABEL_50;
  }

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (v42)
  {
    v43 = v42;
    v44 = objc_opt_self();
    v45 = a1;

    v30 = [v43 count] > 0;
    if ([v43 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
    }

    v100 = v98;
    v101 = v99;
    if (*(&v99 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v65 = v96;
        v36 = [v96 BOOLValue];

        goto LABEL_64;
      }
    }

    else
    {
      outlined destroy of Any?(&v100);
    }

    v36 = 1;
LABEL_64:
    v66 = [v43 groupingType];
    if (v66 > 2)
    {
      if (v66 == 3)
      {
        v67 = [v43 valueForProperty_];
        goto LABEL_74;
      }

      if (v66 == 4)
      {
        v67 = [v43 valueForProperty_];
        goto LABEL_74;
      }
    }

    else
    {
      if (v66 == 1)
      {
        v67 = [v43 valueForProperty_];
        goto LABEL_74;
      }

      if (v66 == 2)
      {
        v67 = [v43 valueForProperty_];
LABEL_74:
        if (v67)
        {
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
        }

        else
        {

          v98 = 0u;
          v99 = 0u;
        }

        v100 = v98;
        v101 = v99;
        if (*(&v99 + 1))
        {
          v68 = swift_dynamicCast();
          if (v68)
          {
            v39 = v96;
          }

          else
          {
            v39 = 0;
          }

          if (v68)
          {
            v41 = v97;
          }

          else
          {
            v41 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v100);
          v39 = 0;
          v41 = 0;
        }

        v34 = 0;
        v32 = 0;
        goto LABEL_86;
      }
    }

    v34 = 0;
    v32 = 0;
    goto LABEL_40;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.pommes);
  v52 = a1;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v100 = v56;
    *v55 = 136315138;
    v57 = [v52 debugDescription];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v100);

    *(v55 + 4) = v61;
    _os_log_impl(&dword_2232BB000, v53, v54, "MPMediaItem not of any supported types %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x223DE0F80](v56, -1, -1);
    MEMORY[0x223DE0F80](v55, -1, -1);
  }

  v62 = 0;
  v63 = 0;
  v64 = one-time initialization token for shared;
LABEL_115:
  if (v64 != -1)
  {
    swift_once();
    v63 = v62;
  }

  (*(*static PerformanceUtil.shared + 184))(v8, 1);
  outlined destroy of PerformanceUtil.Ticket(v8);
  return v63;
}

uint64_t specialized MPMediaLibrary.mediaItemRankingSignals(for:entityType:)(uint64_t a1)
{
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v171 = 0;
  *(&v171 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v9 = v1;
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *&v171 = v11;
  *(&v171 + 1) = v13;
  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DC140);
  v14 = v171;
  Date.init()();
  v15 = &v8[v4[7]];
  *v15 = "SiriInformationSearch/MediaLibrary.swift";
  *(v15 + 1) = 40;
  v15[16] = 2;
  *&v8[v4[8]] = 166;
  v16 = &v8[v4[9]];
  *v16 = "mediaItemRankingSignals(for:entityType:)";
  *(v16 + 1) = 40;
  v16[16] = 2;
  v17 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v14);
  v19 = v18;

  v20 = &v8[v4[10]];
  *v20 = v17;
  v20[1] = v19;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.pommes);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2232BB000, v23, v24, "MPMediaLibrary#mediaItemRankingSignals with persistentID reached beginning", v25, 2u);
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

  v26 = [v9 itemWithPersistentID_];
  v166 = v22;
  if (v26)
  {
    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v171 = v31;
      *v30 = 136315138;
      v32 = v27;
      v33 = [v32 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v27;
      v36 = v8;
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v38, &v171);
      v8 = v36;
      v27 = v35;

      *(v30 + 4) = v39;
      _os_log_impl(&dword_2232BB000, v28, v29, "MPMediaLibrary#mediaItemRankingSignals with PersistentID mpMediaItem: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DE0F80](v31, -1, -1);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }

    if ([v27 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v42 = v167;
        v43 = [v167 BOOLValue];

        goto LABEL_19;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v43 = 1;
LABEL_19:
    if ([v27 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v44 = v167;
        v45 = [v167 BOOLValue];

        goto LABEL_27;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v45 = 0;
LABEL_27:
    if ([v27 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v46 = v167;
        v47 = [v167 BOOLValue];

        goto LABEL_35;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v47 = 0;
LABEL_35:
    if ([v27 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v48 = v167;
        v49 = [v167 BOOLValue];

        goto LABEL_43;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v49 = 1;
LABEL_43:
    v50 = [v27 artist];
    if (v50)
    {
      v51 = v50;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
    }

    else
    {

      v52 = 0;
      v54 = 0;
    }

LABEL_130:
    type metadata accessor for MediaItemRankingSignals();
    v135 = swift_allocObject();
    *(v135 + 16) = v52;
    *(v135 + 24) = v54;
    *(v135 + 32) = v43;
    *(v135 + 33) = v45;
    *(v135 + 34) = v47;
    *(v135 + 35) = v49;
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v166 = v8;
      v143 = v142;
      v165 = swift_slowAlloc();
      *&v169 = v165;
      *v143 = 136316162;
      *&v171 = v52;
      *(&v171 + 1) = v54;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v144 = String.init<A>(describing:)();
      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, &v169);

      *(v143 + 4) = v146;
      *(v143 + 12) = 2080;
      v163 = v49;
      v164 = v141;
      if (v43)
      {
        v147 = 1702195828;
      }

      else
      {
        v147 = 0x65736C6166;
      }

      if (v43)
      {
        v148 = 0xE400000000000000;
      }

      else
      {
        v148 = 0xE500000000000000;
      }

      v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v148, &v169);

      *(v143 + 14) = v149;
      *(v143 + 22) = 2080;
      if (v45)
      {
        v150 = 1702195828;
      }

      else
      {
        v150 = 0x65736C6166;
      }

      v162 = v140;
      if (v45)
      {
        v151 = 0xE400000000000000;
      }

      else
      {
        v151 = 0xE500000000000000;
      }

      v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, &v169);

      *(v143 + 24) = v152;
      *(v143 + 32) = 2080;
      if (v47)
      {
        v153 = 1702195828;
      }

      else
      {
        v153 = 0x65736C6166;
      }

      if (v47)
      {
        v154 = 0xE400000000000000;
      }

      else
      {
        v154 = 0xE500000000000000;
      }

      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &v169);

      *(v143 + 34) = v155;
      *(v143 + 42) = 2080;
      if (v163)
      {
        v156 = 1702195828;
      }

      else
      {
        v156 = 0x65736C6166;
      }

      if (v163)
      {
        v157 = 0xE400000000000000;
      }

      else
      {
        v157 = 0xE500000000000000;
      }

      v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, &v169);

      *(v143 + 44) = v158;
      v140 = v162;
      _os_log_impl(&dword_2232BB000, v162, v164, "MPMediaLibrary#mediaItemRankingSignals with PersistentID mediaItemRankingSignals\n{\n    artist: %s\n    isInLibrary: %s\n    isExplicitContent: %s\n    isDownloaded: %s\n    isPlayable: %s\n}", v143, 0x34u);
      v159 = v165;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v159, -1, -1);
      v160 = v143;
      v8 = v166;
      MEMORY[0x223DE0F80](v160, -1, -1);
    }

    v137 = one-time initialization token for shared;
    v136 = v135;
    goto LABEL_157;
  }

  v40 = [v9 playlistWithPersistentID_];
  if (v40)
  {
    v41 = v40;
    if ([v40 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v74 = v167;
        v75 = [v167 BOOLValue];

        v43 = v75 ^ 1;
LABEL_57:
        v76 = [v41 items];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
        v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v77 >> 62)
        {
          v78 = __CocoaSet.count.getter();
        }

        else
        {
          v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v47 = 0;
        v45 = 0;
        v52 = 0;
        v54 = 0;
        v49 = v78 != 0;
        goto LABEL_130;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v43 = 1;
    goto LABEL_57;
  }

  v55 = [v9 collectionWithPersistentID:a1 groupingType:1];
  if (v55)
  {
    v56 = v55;
    v57 = [objc_opt_self() persistentIDPropertyForGroupingType_];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    *&v171 = [v56 persistentID];
    v61 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v62 = MEMORY[0x223DDF550](v58, v60);

    v63 = [objc_opt_self() predicateWithValue:v61 forProperty:v62];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_2234D0FE0;
    *(v64 + 32) = v63;
    v65 = v63;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16MPMediaPredicateC_Tt0g5Tf4g_n(v64);
    swift_setDeallocating();
    v66 = *(v64 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v67 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v69 = [v67 initWithFilterPredicates_];

    [v69 setGroupingType_];
    v70 = [v69 items];
    if (v70)
    {
      v71 = v70;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
      v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v72 >> 62)
      {
        v73 = __CocoaSet.count.getter();
      }

      else
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v73 > 0;
    }

    else
    {
      v43 = 0;
    }

    if ([v56 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v95 = v167;
        v96 = [v167 BOOLValue];

LABEL_74:
        v97 = [v56 valueForProperty_];
LABEL_118:
        if (v97)
        {
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
        }

        else
        {

          v169 = 0u;
          v170 = 0u;
        }

        v49 = v96;
        v171 = v169;
        v172 = v170;
        if (*(&v170 + 1))
        {
          v139 = swift_dynamicCast();
          if (v139)
          {
            v52 = v167;
          }

          else
          {
            v52 = 0;
          }

          if (v139)
          {
            v54 = v168;
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v171);
          v52 = 0;
          v54 = 0;
        }

        v47 = 0;
        v45 = 0;
        goto LABEL_130;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v96 = 1;
    goto LABEL_74;
  }

  v79 = [v9 collectionWithPersistentID:a1 groupingType:3];
  if (v79)
  {
    v56 = v79;
    v80 = [objc_opt_self() persistentIDPropertyForGroupingType_];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    *&v171 = [v56 persistentID];
    v84 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v85 = MEMORY[0x223DDF550](v81, v83);

    v86 = [objc_opt_self() predicateWithValue:v84 forProperty:v85];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_2234D0FE0;
    *(v87 + 32) = v86;
    v65 = v86;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16MPMediaPredicateC_Tt0g5Tf4g_n(v87);
    swift_setDeallocating();
    v88 = *(v87 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v89 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject();
    v90 = Set._bridgeToObjectiveC()().super.isa;

    v69 = [v89 initWithFilterPredicates_];

    [v69 setGroupingType_];
    v91 = [v69 items];
    if (v91)
    {
      v92 = v91;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
      v93 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v93 >> 62)
      {
        v94 = __CocoaSet.count.getter();
      }

      else
      {
        v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v94 > 0;
    }

    else
    {
      v43 = 0;
    }

    if ([v56 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v114 = v167;
        v96 = [v167 BOOLValue];

LABEL_89:
        v97 = [v56 valueForProperty_];
        goto LABEL_118;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v96 = 1;
    goto LABEL_89;
  }

  v98 = [v9 collectionWithPersistentID:a1 groupingType:2];
  if (v98)
  {
    v56 = v98;
    v99 = [objc_opt_self() persistentIDPropertyForGroupingType_];
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    *&v171 = [v56 persistentID];
    v103 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v104 = MEMORY[0x223DDF550](v100, v102);

    v105 = [objc_opt_self() predicateWithValue:v103 forProperty:v104];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_2234D0FE0;
    *(v106 + 32) = v105;
    v65 = v105;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16MPMediaPredicateC_Tt0g5Tf4g_n(v106);
    swift_setDeallocating();
    v107 = *(v106 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v108 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject();
    v109 = Set._bridgeToObjectiveC()().super.isa;

    v69 = [v108 initWithFilterPredicates_];

    [v69 setGroupingType_];
    v110 = [v69 items];
    if (v110)
    {
      v111 = v110;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
      v112 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v112 >> 62)
      {
        v113 = __CocoaSet.count.getter();
      }

      else
      {
        v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v113 > 0;
    }

    else
    {
      v43 = 0;
    }

    if ([v56 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v131 = v167;
        v96 = [v167 BOOLValue];

LABEL_104:
        v97 = [v56 valueForProperty_];
        goto LABEL_118;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v96 = 1;
    goto LABEL_104;
  }

  v115 = [v9 collectionWithPersistentID:a1 groupingType:4];
  if (v115)
  {
    v56 = v115;
    v116 = [objc_opt_self() persistentIDPropertyForGroupingType_];
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;

    *&v171 = [v56 persistentID];
    v120 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v121 = MEMORY[0x223DDF550](v117, v119);

    v122 = [objc_opt_self() predicateWithValue:v120 forProperty:v121];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_2234D0FE0;
    *(v123 + 32) = v122;
    v65 = v122;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16MPMediaPredicateC_Tt0g5Tf4g_n(v123);
    swift_setDeallocating();
    v124 = *(v123 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v125 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject();
    v126 = Set._bridgeToObjectiveC()().super.isa;

    v69 = [v125 initWithFilterPredicates_];

    [v69 setGroupingType_];
    v127 = [v69 items];
    if (v127)
    {
      v128 = v127;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for MPMediaItem, 0x277CD5DE0);
      v129 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v129 >> 62)
      {
        v130 = __CocoaSet.count.getter();
      }

      else
      {
        v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v130 > 0;
    }

    else
    {
      v43 = 0;
    }

    if ([v56 valueForProperty_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v169 = 0u;
      v170 = 0u;
    }

    v171 = v169;
    v172 = v170;
    if (*(&v170 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v138 = v167;
        v96 = [v167 BOOLValue];

LABEL_117:
        v97 = [v56 valueForProperty_];
        goto LABEL_118;
      }
    }

    else
    {
      outlined destroy of Any?(&v171);
    }

    v96 = 1;
    goto LABEL_117;
  }

  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 134217984;
    *(v134 + 4) = a1;
    _os_log_impl(&dword_2232BB000, v132, v133, "MPMediaItem not found for persistentID %llu", v134, 0xCu);
    MEMORY[0x223DE0F80](v134, -1, -1);
  }

  v135 = 0;
  v136 = 0;
  v137 = one-time initialization token for shared;
LABEL_157:
  if (v137 != -1)
  {
    swift_once();
    v136 = v135;
  }

  (*(*static PerformanceUtil.shared + 184))(v8, 1);
  outlined destroy of PerformanceUtil.Ticket(v8);
  return v136;
}

unint64_t lazy protocol witness table accessor for type MPMediaPredicate and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MPMediaPredicate and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MPMediaPredicate and conformance NSObject)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for MPMediaPredicate, 0x277CD5E28);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPMediaPredicate and conformance NSObject);
  }

  return result;
}

uint64_t PommesAppStatus.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriInformationSearch::PommesAppStatus __swiftcall PommesAppStatus.init(bundleID:isLocked:isHidden:)(SiriInformationSearch::PommesAppStatus bundleID, Swift::Bool isLocked, Swift::Bool isHidden)
{
  *v3 = bundleID.bundleID;
  *(v3 + 16) = isLocked;
  *(v3 + 17) = isHidden;
  bundleID.isLocked = isLocked;
  return bundleID;
}

void PommesAppStatus.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 bundleIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  LOBYTE(v4) = [a1 isLocked];
  v8 = [a1 isHidden];

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 17) = v8;
}

uint64_t static PommesAppStatus.available(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

SiriInformationSearch::PommesAppStatus __swiftcall PommesSystemAppChecking.appStatus(bundleID:)(Swift::String bundleID)
{
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  v37 = v1;
  v4 = type metadata accessor for AppProtectionFeatures();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v38);
    _os_log_impl(&dword_2232BB000, v11, v12, "AVAILABILITY: Checking bundle ID %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223DE0F80](v14, -1, -1);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  (*(v5 + 104))(v9, *MEMORY[0x277CEBE20], v4);
  v15 = AppProtectionFeatures.enabled.getter();
  (*(v5 + 8))(v9, v4);
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = MEMORY[0x223DDF550](countAndFlagsBits, object);
    v18 = [v16 applicationWithBundleIdentifier_];

    v19 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315650;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v38);
      *(v22 + 12) = 1024;
      *(v22 + 14) = [v19 isLocked];
      *(v22 + 18) = 1024;
      *(v22 + 20) = [v19 isHidden];

      _os_log_impl(&dword_2232BB000, v20, v21, "AVAILABILITY: app %s is…\n    locked: %{BOOL}d\n    hidden: %{BOOL}d", v22, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223DE0F80](v23, -1, -1);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }

    else
    {
    }

    v31 = [v19 bundleIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    LOBYTE(v31) = [v19 isLocked];
    v35 = [v19 isHidden];

    v36 = v37;
    *v37 = v32;
    v36[1] = v34;
    *(v36 + 16) = v31;
    *(v36 + 17) = v35;
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2232BB000, v24, v25, "AVAILABILITY: core functionality not enabled", v26, 2u);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }

    v27 = v37;
    *v37 = countAndFlagsBits;
    v27[1] = object;
    *(v27 + 8) = 0;
  }

  result.bundleID._object = v29;
  result.bundleID._countAndFlagsBits = v28;
  result.isLocked = v30;
  result.isHidden = HIBYTE(v30);
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PommesAppStatus(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for PommesAppStatus(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CallContactPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v89 = *v1;
  v3 = type metadata accessor for PommesSearchReason();
  v87 = *(v3 - 8);
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v86 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v85 = (&v83 - v10);
  v11 = type metadata accessor for UsoIdentifier();
  v105 = *(v11 - 8);
  v12 = *(v105 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v104 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserParse();
  v96 = *(v15 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for PommesSearchRequest(0);
  v20 = *(v84 + 76);
  v88 = a1;
  v21 = *(a1 + v20);
  v91 = *(v21 + 16);
  if (!v91)
  {
LABEL_62:
    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_89;
    }

    goto LABEL_63;
  }

  v22 = 0;
  v23 = 0;
  v95 = v96 + 16;
  v99 = v105 + 16;
  v100 = (v105 + 8);
  v94 = (v96 + 8);
  v101 = v11;
  v93 = v15;
  v92 = v19;
  v83 = v3;
  v90 = v21;
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_88;
    }

    v24 = v21 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v25 = *(v96 + 72);
    v97 = v22;
    (*(v96 + 16))(v19, v24 + v25 * v22, v15);
    v26 = Siri_Nlu_External_Span.matcherNames.getter();
    v27 = specialized Sequence.flatMap<A>(_:)(v26);
    v98 = v23;
    if (v23)
    {
      (*v94)(v19, v15);

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, static Logger.pommes);
      v74 = v98;
      v75 = v98;
      v59 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v107 = v78;
        *v77 = 136315138;
        *&v106[0] = v74;
        v79 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v80 = String.init<A>(describing:)();
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v107);

        *(v77 + 4) = v82;
        _os_log_impl(&dword_2232BB000, v59, v76, "ConversionUtils.convertUserDialogActToTasks error: %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x223DE0F80](v78, -1, -1);
        MEMORY[0x223DE0F80](v77, -1, -1);

        goto LABEL_71;
      }

      return 1;
    }

    v28 = v27;

    if (!(v28 >> 62))
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        break;
      }

      goto LABEL_49;
    }

    v29 = __CocoaSet.count.getter();
    if (v29)
    {
      break;
    }

LABEL_49:

    v19 = v92;
    v15 = v93;
    (*v94)(v92, v93);
LABEL_50:
    v23 = v98;
    v22 = v97 + 1;
    v21 = v90;
    if (v97 + 1 == v91)
    {
      goto LABEL_62;
    }
  }

  v30 = 0;
  while ((v28 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x223DDFF80](v30, v28);
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_79;
    }

LABEL_13:
    static UsoTask_CodegenConverter.convert(task:)();
    v106[0] = v107;
    v106[1] = v108;
    if (*(&v108 + 1))
    {
      type metadata accessor for UsoTask_call_common_PhoneCall();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_9;
      }

      v33 = v98;
      v34 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_PhoneCallC_Tt3g5(MEMORY[0x277D84F90], byte_283695610, v31);

      v35 = specialized Sequence.flatMap<A>(_:)(v34);
      v98 = v33;

      if (v35 >> 62)
      {
        v36 = __CocoaSet.count.getter();
        if (v36)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
LABEL_21:
          v37 = 0;
          v102 = v35 & 0xFFFFFFFFFFFFFF8;
          v103 = v35 & 0xC000000000000001;
          v38 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v103)
            {
              MEMORY[0x223DDFF80](v37, v35);
              v40 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
                goto LABEL_81;
              }
            }

            else
            {
              if (v37 >= *(v102 + 16))
              {
                goto LABEL_82;
              }

              v39 = *(v35 + 8 * v37 + 32);

              v40 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
                goto LABEL_81;
              }
            }

            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v107)
            {
              v41 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

              if (v41)
              {
                v42 = v41;
              }

              else
              {
                v42 = MEMORY[0x277D84F90];
              }
            }

            else
            {

              v42 = MEMORY[0x277D84F90];
            }

            v43 = *(v42 + 16);
            v44 = v38[2];
            v45 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              goto LABEL_83;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v45 <= v38[3] >> 1)
            {
              if (!*(v42 + 16))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v44 <= v45)
              {
                v47 = v44 + v43;
              }

              else
              {
                v47 = v44;
              }

              v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v47, 1, v38);
              if (!*(v42 + 16))
              {
LABEL_22:

                if (v43)
                {
                  goto LABEL_84;
                }

                goto LABEL_23;
              }
            }

            v48 = v38[2];
            if ((v38[3] >> 1) - v48 < v43)
            {
              goto LABEL_85;
            }

            v49 = v38 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v48;
            swift_arrayInitWithCopy();

            if (v43)
            {
              v50 = v38[2];
              v51 = __OFADD__(v50, v43);
              v52 = v50 + v43;
              if (v51)
              {
                goto LABEL_87;
              }

              v38[2] = v52;
            }

LABEL_23:
            ++v37;
            if (v40 == v36)
            {
              goto LABEL_54;
            }
          }
        }
      }

      v38 = MEMORY[0x277D84F90];
LABEL_54:

      v53 = 0;
      v54 = v38[2];
      v55 = v101;
      while (1)
      {
        if (v54 == v53)
        {
          v19 = v92;
          v15 = v93;
          (*v94)(v92, v93);

          goto LABEL_50;
        }

        if (v53 >= v38[2])
        {
          goto LABEL_86;
        }

        (*(v105 + 16))(v104, v38 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v53, v55);
        if (UsoIdentifier.appBundleId.getter() == 0x73746361746E6F43 && v57 == 0xE800000000000000)
        {
          break;
        }

        ++v53;
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v100)(v104, v55);
        if (v56)
        {
          goto LABEL_65;
        }
      }

      (*v100)(v104, v55);
LABEL_65:
      (*v94)(v92, v93);

      v63 = v88;
      v64 = (v88 + *(v84 + 32));
      v65 = *v64;
      v66 = v64[1];
      v67 = v85;
      PommesSearchRequest.pommesCandidateId.getter(v85);
      v68 = type metadata accessor for PommesCandidateId();
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      v69 = v86;
      default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v86);
      v70 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v63, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v65, v66, v67, v69, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001ALL, 0x80000002234D3670);
      (*(v87 + 8))(v69, v83);
      outlined destroy of MediaUserStateCenter?(v67, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      result = v70;
      if (!v70)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        __swift_project_value_buffer(v72, static Logger.pommes);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          v62 = "CallContactPreflightClient#ignore could not build PommesResponse with given parameters";
LABEL_70:
          _os_log_impl(&dword_2232BB000, v59, v60, v62, v61, 2u);
          MEMORY[0x223DE0F80](v61, -1, -1);
        }

        goto LABEL_71;
      }

      return result;
    }

    outlined destroy of MediaUserStateCenter?(v106, &_sypSgMd, &_sypSgMR);
LABEL_9:
    ++v30;
    if (v32 == v29)
    {
      goto LABEL_49;
    }
  }

  if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_80;
  }

  v31 = *(v28 + 8 * v30 + 32);

  v32 = v30 + 1;
  if (!__OFADD__(v30, 1))
  {
    goto LABEL_13;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  swift_once();
LABEL_63:
  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.pommes);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "PhoneCallPreflightClient#handle no conclusive result, ignoring";
    goto LABEL_70;
  }

LABEL_71:

  return 1;
}

uint64_t lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OfflineMusicPlaybackPreflightClient.__allocating_init(networkAvailabilityProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t OfflineMusicPlaybackPreflightClient.makeAudioUnderstanding(pommesSearchRequest:)@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v91 = &v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v93 = &v91 - v8;
  v95 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v94 = *(v95 - 8);
  v9 = *(v94 + 64);
  v11 = MEMORY[0x28223BE20](v95, v10);
  v92 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v98 = &v91 - v14;
  v111 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v15 = *(v111 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v111, v17);
  v116 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v115 = &v91 - v21;
  v114 = type metadata accessor for Siri_Nlu_External_Parser();
  v22 = *(v114 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v114, v24);
  v113 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Siri_Nlu_External_UserParse();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v112 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v96 = &v91 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v91 - v37;
  MEMORY[0x28223BE20](v36, v39);
  v97 = &v91 - v40;
  v41 = PommesSearchRequest.userParses.getter();
  v110 = *(v41 + 16);
  if (v110)
  {
    v42 = 0;
    v106 = (v22 + 8);
    v107 = v27 + 16;
    v105 = *MEMORY[0x277D5DA68];
    v103 = (v15 + 8);
    v104 = (v15 + 104);
    v102 = (v27 + 32);
    v100 = (v27 + 8);
    v43 = MEMORY[0x277D84F90];
    v101 = v26;
    v44 = v27;
    v108 = v41;
    v109 = v27;
    while (v42 < *(v41 + 16))
    {
      v118 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v117 = *(v44 + 72);
      (*(v44 + 16))(v38, v41 + v118 + v117 * v42, v26);
      v45 = v113;
      Siri_Nlu_External_UserParse.parser.getter();
      v46 = v115;
      Siri_Nlu_External_Parser.parserID.getter();
      (*v106)(v45, v114);
      v47 = v26;
      v48 = v116;
      v49 = v111;
      (*v104)(v116, v105, v111);
      lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88]);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v51 = *v103;
      (*v103)(v48, v49);
      v51(v46, v49);
      if (v50)
      {
        (*v100)(v38, v47);
        v26 = v47;
      }

      else
      {
        v52 = *v102;
        (*v102)(v112, v38, v47);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 16) + 1, 1);
          v43 = v119;
        }

        v55 = *(v43 + 16);
        v54 = *(v43 + 24);
        if (v55 >= v54 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1);
          v43 = v119;
        }

        *(v43 + 16) = v55 + 1;
        v56 = v43 + v118 + v55 * v117;
        v26 = v101;
        v52(v56, v112, v101);
      }

      v44 = v109;
      ++v42;
      v41 = v108;
      if (v110 == v42)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v43 = MEMORY[0x277D84F90];
  v44 = v27;
LABEL_13:

  if (!*(v43 + 16))
  {

    if (one-time initialization token for pommes == -1)
    {
LABEL_23:
      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.pommes);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_2232BB000, v77, v78, "OfflineMusicPlaybackPreflightClient makeAudioUnderstanding : userParse not present", v79, 2u);
        MEMORY[0x223DE0F80](v79, -1, -1);
      }

      goto LABEL_37;
    }

LABEL_40:
    swift_once();
    goto LABEL_23;
  }

  v57 = v96;
  (*(v44 + 16))(v96, v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v26);

  v58 = v97;
  (*(v44 + 32))(v97, v57, v26);
  v59 = Siri_Nlu_External_Span.matcherNames.getter();
  if (!*(v59 + 16))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.pommes);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_2232BB000, v81, v82, "OfflineMusicPlaybackPreflightClient makeAudioUnderstanding : userParse.userDialogAct not present", v83, 2u);
      MEMORY[0x223DE0F80](v83, -1, -1);
    }

    goto LABEL_36;
  }

  v60 = v94;
  v61 = *(v94 + 16);
  v62 = v92;
  v63 = v95;
  v61(v92, v59 + ((*(v94 + 80) + 32) & ~*(v94 + 80)), v95);

  v64 = v98;
  (*(v60 + 32))(v98, v62, v63);
  type metadata accessor for AudioUsoIntent();
  v65 = v93;
  v61(v93, v64, v63);
  (*(v60 + 56))(v65, 0, 1, v63);
  if (!AudioUsoIntent.__allocating_init(userDialogAct:)(v65))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    __swift_project_value_buffer(v84, static Logger.pommes);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_2232BB000, v85, v86, "OfflineMusicPlaybackPreflightClient makeAudioUnderstanding : could not create AudioUsoIntent from userDialogAct", v87, 2u);
      MEMORY[0x223DE0F80](v87, -1, -1);
    }

    (*(v60 + 8))(v98, v63);
LABEL_36:
    (*(v44 + 8))(v58, v26);
LABEL_37:
    v88 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
    return (*(*(v88 - 8) + 56))(v99, 1, 1, v88);
  }

  v67 = v91;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.init(from:)(v66, v91);
  v68 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v67, 1, v68) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v67, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.pommes);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_2232BB000, v71, v72, "OfflineMusicPlaybackPreflightClient makeAudioUnderstanding : could not create AudioUnderstanding from AudioUsoIntent", v73, 2u);
      v74 = v73;
      v58 = v97;
      MEMORY[0x223DE0F80](v74, -1, -1);
    }

    (*(v60 + 8))(v98, v63);
    (*(v44 + 8))(v58, v26);
    return (*(v69 + 56))(v99, 1, 1, v68);
  }

  else
  {

    (*(v60 + 8))(v98, v63);
    (*(v44 + 8))(v58, v26);
    v89 = v67;
    v90 = v99;
    (*(v69 + 32))(v99, v89, v68);
    return (*(v69 + 56))(v90, 0, 1, v68);
  }
}

void closure #1 in OfflineMusicPlaybackPreflightClient.clientSearch(audioUnderstanding:clientSignals:requestId:pommesCandidateId:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    (*(*a3 + 144))(a4, a5, a6, 1);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.pommes);
    v9 = a1;
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 1);
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315138;
      v20[3] = a1;
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2232BB000, oslog, v10, "Local client search failed : %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x223DE0F80](v12, -1, -1);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(*a3 + 136))(a4, a5, a6);
    swift_beginAccess();
    v18 = *(a7 + 16);
    *(a7 + 16) = a1;
  }
}

uint64_t OfflineMusicPlaybackPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v228 = a1;
  v213 = *v1;
  v2 = type metadata accessor for PommesSearchReason();
  v214 = *(v2 - 8);
  v215 = v2;
  v3 = *(v214 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v212 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_MultiUserContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v210 = &v186 - v9;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v211 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v208 = &v186 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v206 = *(v18 - 8);
  v19 = *(v206 + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v207 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v22;
  MEMORY[0x28223BE20](v21, v23);
  v221 = (&v186 - v24);
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v218 = *(v25 - 8);
  v219 = v25;
  v26 = *(v218 + 64);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v209 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v225 = &v186 - v31;
  v227 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v217 = *(v227 - 8);
  v32 = *(v217 + 64);
  MEMORY[0x28223BE20](v227, v33);
  v226 = &v186 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8, v37);
  v224 = &v186 - v38;
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v222 = *(v39 - 8);
  v223 = v39;
  v40 = *(v222 + 64);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v216 = &v186 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v220 = &v186 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8, v48);
  v50 = &v186 - v49;
  v51 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v52 = *(v51 - 1);
  v53 = *(v52 + 64);
  v55 = MEMORY[0x28223BE20](v51, v54);
  v205 = &v186 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v55, v57);
  v60 = &v186 - v59;
  MEMORY[0x28223BE20](v58, v61);
  v63 = &v186 - v62;
  v64 = type metadata accessor for Siri_Nlu_External_UserParse();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64, v67);
  v69 = &v186 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = &type metadata for FeatureFlag;
  v232 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v70 = swift_allocObject();
  v230 = v70;
  *(v70 + 16) = 1;
  *(v70 + 24) = 0;
  *(v70 + 32) = 0;
  *(v70 + 40) = 0;
  *(v70 + 48) = 3;
  v71 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v230);
  if ((v71 & 1) == 0)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    __swift_project_value_buffer(v102, static Logger.pommes);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v103, v104))
    {
      goto LABEL_28;
    }

    v105 = swift_slowAlloc();
    *v105 = 0;
    v106 = "OfflineMusicPlaybackPreflightClient : IGNORED feature flag not enabled";
    goto LABEL_27;
  }

  v72 = v1[2];
  if (dispatch thunk of NetworkAvailability.isAvailable.getter())
  {
    if ((specialized OfflineMusicPlaybackPreflightClient.userDefaultOverride.getter() & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      __swift_project_value_buffer(v108, static Logger.pommes);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v103, v104))
      {
        goto LABEL_28;
      }

      v105 = swift_slowAlloc();
      *v105 = 0;
      v106 = "OfflineMusicPlaybackPreflightClient : IGNORED network is available";
      goto LABEL_27;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.pommes);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v202 = v52;
      v77 = v63;
      v78 = v51;
      v79 = v76;
      *v76 = 0;
      _os_log_impl(&dword_2232BB000, v74, v75, "OfflineMusicPlaybackPreflightClient : User default override network availability check", v76, 2u);
      v80 = v79;
      v51 = v78;
      v63 = v77;
      v52 = v202;
      MEMORY[0x223DE0F80](v80, -1, -1);
    }
  }

  v81 = type metadata accessor for PommesSearchRequest(0);
  v82 = *(v228 + *(v81 + 76));
  if (!*(v82 + 16))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    __swift_project_value_buffer(v107, static Logger.pommes);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v103, v104))
    {
      goto LABEL_28;
    }

    v105 = swift_slowAlloc();
    *v105 = 0;
    v106 = "OfflineMusicPlaybackPreflightClient : IGNORED No salient parses";
LABEL_27:
    _os_log_impl(&dword_2232BB000, v103, v104, v106, v105, 2u);
    MEMORY[0x223DE0F80](v105, -1, -1);
LABEL_28:

    return 1;
  }

  v83 = v65;
  v196 = v81;
  (*(v65 + 16))(v69, v82 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v64);
  v84 = Siri_Nlu_External_Span.matcherNames.getter();
  if (!*(v84 + 16))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    __swift_project_value_buffer(v110, static Logger.pommes);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_2232BB000, v111, v112, "OfflineMusicPlaybackPreflightClient : IGNORED No UDA found for the top salient parse", v113, 2u);
      MEMORY[0x223DE0F80](v113, -1, -1);
    }

    (*(v65 + 8))(v69, v64);
    return 1;
  }

  v198 = v64;
  v201 = v69;
  v202 = v52;
  v85 = v52 + 16;
  v86 = *(v52 + 16);
  v86(v63, v84 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v51);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  v88 = __swift_project_value_buffer(v87, static Logger.pommes);
  v203 = v63;
  v86(v60, v63, v51);
  v199 = v88;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.debug.getter();
  v91 = os_log_type_enabled(v89, v90);
  v195 = v85;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v194 = v92;
    v200 = swift_slowAlloc();
    v229 = v200;
    *v92 = 136315138;
    type metadata accessor for SiriNLUTypesPrintUtils();
    v231 = v51;
    v232 = lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x277D5DB80]);
    v93 = __swift_allocate_boxed_opaque_existential_1(&v230);
    v86(v93, v60, v51);
    v94 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
    v96 = v95;
    v97 = v202;
    v197 = *(v202 + 8);
    (v197)(v60, v51);
    __swift_destroy_boxed_opaque_existential_1(&v230);
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, &v229);

    v99 = v194;
    *(v194 + 4) = v98;
    v100 = v99;
    _os_log_impl(&dword_2232BB000, v89, v90, "OfflineMusicPlaybackPreflightClient : found userDialogAct: %s", v99, 0xCu);
    v101 = v200;
    __swift_destroy_boxed_opaque_existential_1(v200);
    MEMORY[0x223DE0F80](v101, -1, -1);
    MEMORY[0x223DE0F80](v100, -1, -1);
  }

  else
  {

    v97 = v202;
    v197 = *(v202 + 8);
    (v197)(v60, v51);
  }

  v114 = v227;
  type metadata accessor for AudioUsoIntent();
  v194 = v86;
  v86(v50, v203, v51);
  v115 = *(v97 + 56);
  v200 = v51;
  v115(v50, 0, 1, v51);
  v116 = AudioUsoIntent.__allocating_init(userDialogAct:)(v50);
  v117 = v201;
  v118 = v226;
  if (!v116)
  {
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v124 = v83;
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_2232BB000, v127, v128, "OfflineMusicPlaybackPreflightClient : IGNORED unable to convert UserDialogAct to AudioUsoIntent", v129, 2u);
      MEMORY[0x223DE0F80](v129, -1, -1);

LABEL_62:
      (v197)(v203, v200);
      (*(v124 + 8))(v117, v198);
      return 1;
    }

LABEL_64:
    (v197)(v203, v200);
    (*(v83 + 8))(v117, v198);
    return 1;
  }

  v119 = v116;
  v120 = (*(*v116 + 904))();
  v121 = v224;
  if (v120 == 17)
  {
    goto LABEL_38;
  }

  if (CommonAudio.Verb.rawValue.getter(v120) == 2036427888 && v130 == 0xE400000000000000)
  {
  }

  else
  {
    v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v132 & 1) == 0)
    {
LABEL_38:
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = v83;
        v125 = swift_slowAlloc();
        *v125 = 0;
        v126 = "OfflineMusicPlaybackPreflightClient : IGNORED non-play verb";
LABEL_61:
        _os_log_impl(&dword_2232BB000, v122, v123, v126, v125, 2u);
        MEMORY[0x223DE0F80](v125, -1, -1);

        goto LABEL_62;
      }

      goto LABEL_63;
    }
  }

  v133 = (*(*v119 + 928))(v131);
  if (v133 == 2)
  {
LABEL_49:
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = v83;
      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = "OfflineMusicPlaybackPreflightClient : IGNORED baseEntity is not a commonMediaItem";
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  if (v133)
  {
    v134 = 0x80000002234D92F0;
  }

  else
  {
    v134 = 0xEC00000079746974;
  }

  if (0x80000002234D92F0 == v134 && (v133 & 1) != 0)
  {
  }

  else
  {
    v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v135 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  OfflineMusicPlaybackPreflightClient.makeAudioUnderstanding(pommesSearchRequest:)(v121);
  v137 = v222;
  v136 = v223;
  if ((*(v222 + 48))(v121, 1, v223) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v121, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = v83;
      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = "OfflineMusicPlaybackPreflightClient : IGNORED couldn't handle since AudioUnderstanding could not be built";
      goto LABEL_61;
    }

LABEL_63:

    goto LABEL_64;
  }

  v193 = v119;
  v197 = v83;
  v138 = v220;
  (*(v137 + 32))(v220, v121, v136);
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&dword_2232BB000, v139, v140, "OfflineMusicPlaybackPreflightClient : HANDLING request", v141, 2u);
    MEMORY[0x223DE0F80](v141, -1, -1);
  }

  Apple_Parsec_Siri_V2alpha_ClientSignals.init()();
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.librarySearchTerms.getter();
  Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.setter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.init()();
  v142 = *(v222 + 16);
  v189 = v222 + 16;
  v190 = v142;
  v142(v216, v138, v223);
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.understanding.setter();
  v143 = (v228 + *(v196 + 32));
  v144 = *v143;
  v224 = v143[1];
  v145 = v224;
  v146 = v221;
  PommesSearchRequest.pommesCandidateId.getter(v221);
  v192 = type metadata accessor for PommesCandidateId();
  v147 = *(v192 - 8);
  v191 = *(v147 + 56);
  v196 = v147 + 56;
  v148 = v146;
  v191(v146, 0, 1, v192);
  v149 = swift_allocObject();
  v186 = v149;
  *(v149 + 16) = MEMORY[0x277D84F90];
  v187 = (v149 + 16);
  type metadata accessor for AnalyticsComponentIdGenerator();
  v150 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v151 = v118;
  v152 = swift_allocObject();
  *(v152 + 16) = 0;
  *(v152 + 24) = v150;
  v153 = [objc_opt_self() indexMatcher];
  type metadata accessor for MusicDomain();
  v154 = swift_allocObject();
  v155 = specialized MusicDomain.init(spanMatcher:)(v153, v154);
  v188 = v144;
  v156 = v148;
  OnDeviceSearchInstrumentationUtil.logStartOnDeviceSearch(requestId:pommesCandidateId:indexType:)(v144, v145, v148, 1);
  v157 = v217;
  v158 = v208;
  (*(v217 + 16))(v208, v151, v114);
  (*(v157 + 56))(v158, 0, 1, v114);
  v159 = v207;
  outlined init with copy of PommesCandidateId?(v156, v207);
  v160 = (*(v206 + 80) + 40) & ~*(v206 + 80);
  v161 = (v204 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
  v162 = v138;
  v163 = swift_allocObject();
  v163[2] = v152;
  v163[3] = v144;
  v163[4] = v224;
  outlined init with take of PommesCandidateId?(v159, v163 + v160);
  *(v163 + v161) = v186;
  v164 = *(*v155 + 136);

  v165 = v162;
  v164(v162, v158, partial apply for closure #1 in OfflineMusicPlaybackPreflightClient.clientSearch(audioUnderstanding:clientSignals:requestId:pommesCandidateId:), v163);

  outlined destroy of MediaUserStateCenter?(v158, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  outlined destroy of MediaUserStateCenter?(v221, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v166 = v187;
  swift_beginAccess();
  v167 = *v166;

  v190(v216, v165, v223);
  Apple_Parsec_Siri_V2alpha_PlaybackSignals.init()();
  (*(v218 + 16))(v209, v225, v219);
  v194(v205, v203, v200);
  v168 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext();
  (*(*(v168 - 8) + 56))(v210, 1, 1, v168);
  v169 = objc_allocWithZone(type metadata accessor for AudioExperience());
  v170 = AudioExperience.init(serverAudioResults:audioUnderstanding:playbackSignals:internalSignals:pegasusAudioType:launchID:systemExtensionBundleID:boltProxiedBundleID:shouldPerformAppSelection:audioClientComponent:pluginId:queryConfidence:userDialogAct:isGlideEligible:networkAvailableAtRequest:matchingSpans:multiUserContext:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_2234D0FE0;
  *(v171 + 32) = v170;
  v172 = v170;
  v173 = v221;
  v174 = v228;
  PommesSearchRequest.pommesCandidateId.getter(v221);
  v191(v173, 0, 1, v192);
  v175 = v220;
  v176 = v212;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v212);
  v177 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v174, v171, v167, v188, v224, v173, v176, 0x616964656DLL, 0xE500000000000000, 0xD000000000000023, 0x80000002234D36F0);

  (*(v214 + 8))(v176, v215);
  outlined destroy of MediaUserStateCenter?(v173, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (!v177)
  {
    v178 = v172;
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.error.getter();
    v181 = os_log_type_enabled(v179, v180);
    v182 = v197;
    v183 = v198;
    v184 = v202;
    if (v181)
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_2232BB000, v179, v180, "OfflineMusicPlaybackPreflightClient#ignore could not build PommesResponse with given parameters", v185, 2u);
      MEMORY[0x223DE0F80](v185, -1, -1);
    }

    (*(v218 + 8))(v225, v219);
    (*(v217 + 8))(v226, v227);
    (*(v222 + 8))(v220, v223);
    (*(v184 + 8))(v203, v200);
    (*(v182 + 8))(v201, v183);
    return 1;
  }

  (*(v218 + 8))(v225, v219);
  (*(v217 + 8))(v226, v227);
  (*(v222 + 8))(v175, v223);
  (*(v202 + 8))(v203, v200);
  (*(v197 + 8))(v201, v198);
  return v177;
}

uint64_t OfflineMusicPlaybackPreflightClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t OfflineMusicPlaybackPreflightClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of PommesCandidateId?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in OfflineMusicPlaybackPreflightClient.clientSearch(audioUnderstanding:clientSignals:requestId:pommesCandidateId:)(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in OfflineMusicPlaybackPreflightClient.clientSearch(audioUnderstanding:clientSignals:requestId:pommesCandidateId:)(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t specialized OfflineMusicPlaybackPreflightClient.userDefaultOverride.getter()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234DC2C0);
      v5 = [v3 BOOLForKey_];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for timeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static PreferredNavigationAppDataProvider.timeout);
  *__swift_project_value_buffer(v0, static PreferredNavigationAppDataProvider.timeout) = 50;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t PreferredNavigationAppDataProvider.timeout.unsafeMutableAddressor()
{
  if (one-time initialization token for timeout != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static PreferredNavigationAppDataProvider.timeout);
}

uint64_t static PreferredNavigationAppDataProvider.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for timeout != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static PreferredNavigationAppDataProvider.timeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PreferredNavigationAppDataProvider.__allocating_init(appDataProvider:preferences:carPlayAppHistoryController:carPlaySessionStatus:foregroundAppProvider:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 64) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0;
  *(v10 + 80) = 0u;
  outlined init with take of DomainWarmupHandling(a1, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  *(v10 + 72) = a4;
  swift_beginAccess();
  outlined assign with take of ForegroundAppProvider?(a5, v10 + 80);
  swift_endAccess();
  return v10;
}

uint64_t PreferredNavigationAppDataProvider.init(appDataProvider:preferences:carPlayAppHistoryController:carPlaySessionStatus:foregroundAppProvider:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  outlined init with take of DomainWarmupHandling(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  swift_beginAccess();
  outlined assign with take of ForegroundAppProvider?(a5, v5 + 80);
  swift_endAccess();
  return v5;
}

uint64_t static PreferredNavigationAppDataProvider.make(appDataProvider:preferences:)(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return specialized static PreferredNavigationAppDataProvider.make(appDataProvider:preferences:)(v6, a2, v2, v4, v5);
}

uint64_t PreferredNavigationAppDataProvider.prepare(dispatchQueue:)()
{
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = v1;
  if (!v1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
    v2 = *(v0 + 72);
  }

  *(v0 + 72) = v3;
  v4 = v1;

  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v0 + 80, &v6, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  if (v7)
  {
    outlined init with take of DomainWarmupHandling(&v6, v8);
  }

  else
  {
    v9 = &type metadata for RunningBoardForegroundAppProvider;
    v10 = &protocol witness table for RunningBoardForegroundAppProvider;
  }

  swift_beginAccess();
  outlined assign with take of ForegroundAppProvider?(v8, v0 + 80);
  return swift_endAccess();
}

uint64_t PreferredNavigationAppDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v73 = *(v0 - 8);
  *&v74 = v0;
  v1 = *(v73 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v72 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v75 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v67 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Google_Protobuf_Any();
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v65 = *(v17 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v70 = *(v22 - 8);
  v71 = v22;
  v23 = *(v70 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v64 - v34;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v78 = *(v36 - 8);
  v79 = v36;
  v37 = *(v78 + 64);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = PreferredNavigationAppDataProvider.getUserPreferredNavigationApp()();
  if (!v42)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.pommes);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_14;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "PreferredNavigationAppDataProvider#fetch No user preferred navigation app found, returning nil";
    goto LABEL_13;
  }

  if (v41 == 0x6C7070612E6D6F63 && v42 == 0xEE007370614D2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_14;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "PreferredNavigationAppDataProvider#fetch No user preferred third-party navigation app found, returning nil";
LABEL_13:
    _os_log_impl(&dword_2232BB000, v44, v45, v47, v46, 2u);
    MEMORY[0x223DE0F80](v46, -1, -1);
LABEL_14:

    return 0;
  }

  Apple_Parsec_Siri_V2alpha_AppInfo.init()();
  Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.setter();
  v50 = v79;
  v80[3] = v79;
  v80[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
  (*(v78 + 16))(boxed_opaque_existential_1, v40, v50);
  defaultAnyTypeURLPrefix.getter();
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  v52 = v66;
  (*(v66 + 56))(v35, 0, 1, v12);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
  (*(v65 + 104))(v21, *MEMORY[0x277D39AE8], v17);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  outlined init with copy of MediaUserStateCenter?(v35, v32, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v53 = *(v52 + 48);
  if (v53(v32, 1, v12) == 1)
  {
    Google_Protobuf_Any.init()();
    if (v53(v32, 1, v12) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v32, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v52 + 32))(v16, v32, v12);
  }

  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  (*(v68 + 104))(v67, *MEMORY[0x277D39D58], v69);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  v54 = v75;
  Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
  (*(v73 + 104))(v72, *MEMORY[0x277D39708], v74);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v55 = v70;
  v56 = *(v70 + 72);
  v57 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v58 = swift_allocObject();
  v74 = xmmword_2234CF920;
  *(v58 + 16) = xmmword_2234CF920;
  v59 = v71;
  (*(v55 + 16))(v58 + v57, v26, v71);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
  v60 = v76;
  v61 = *(v76 + 72);
  v62 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v74;
  (*(v60 + 32))(v63 + v62, v54, v77);
  (*(v55 + 8))(v26, v59);
  outlined destroy of MediaUserStateCenter?(v35, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  (*(v78 + 8))(v40, v79);
  return v63;
}

uint64_t PreferredNavigationAppDataProvider.getUserPreferredNavigationApp()()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v5, v8);
  v10 = aBlock - v9 + 16;
  v11 = *(v0 + 72);
  if (v11)
  {
    v12 = [v11 currentSession];
    if (v12)
    {

      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      v14 = dispatch_semaphore_create(0);
      v15 = *(v0 + 64);
      if (v15)
      {
        v16 = *(v0 + 64);
        v17 = v16;
      }

      else
      {
        v17 = [objc_allocWithZone(MEMORY[0x277CF8FE8]) init];
        v16 = 0;
        v15 = *(v0 + 64);
      }

      v49 = v0;
      *(v0 + 64) = v17;
      v18 = v16;
      v19 = v17;

      v20 = swift_allocObject();
      *(v20 + 16) = v13;
      *(v20 + 24) = v14;
      v52 = partial apply for closure #1 in PreferredNavigationAppDataProvider.getUserPreferredNavigationApp();
      v53 = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ();
      v51 = &block_descriptor_7;
      v21 = _Block_copy(aBlock);

      v22 = v14;

      [v19 fetchDockAppForCategory:8 completion:v21];
      _Block_release(v21);

      static DispatchTime.now()();
      if (one-time initialization token for timeout != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for DispatchTimeInterval();
      v24 = __swift_project_value_buffer(v23, static PreferredNavigationAppDataProvider.timeout);
      MEMORY[0x223DDF450](v7, v24);
      v25 = *(v2 + 8);
      v25(v7, v1);
      MEMORY[0x223DDFC40](v10);
      v25(v10, v1);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static Logger.pommes);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_2232BB000, v27, v28, "PreferredNavigationAppDataProvider#fetch timed out waiting for CarPlay dock app", v29, 2u);
          MEMORY[0x223DE0F80](v29, -1, -1);
        }
      }

      swift_beginAccess();
      v30 = *(v13 + 24);
      if (v30)
      {
        v31 = *(v13 + 16);
        v32 = one-time initialization token for pommes;
        v33 = *(v13 + 24);

        if (v32 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.pommes);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          aBlock[0] = v38;
          *v37 = 136315138;
          *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, aBlock);
          _os_log_impl(&dword_2232BB000, v35, v36, "PreferredNavigationAppDataProvider#fetch from CarPlay dock app bundle id: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x223DE0F80](v38, -1, -1);
          MEMORY[0x223DE0F80](v37, -1, -1);
        }

        return v31;
      }

      v0 = v49;
    }
  }

  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v0 + 80, aBlock, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  if (v51)
  {
    outlined init with copy of AppDataProviding(aBlock, v54);
    outlined destroy of MediaUserStateCenter?(aBlock, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
    v39 = v55;
    v40 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v31 = (*(v40 + 8))(v39, v40);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(v54);
    if (v42)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.pommes);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 136315138;
        *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v42, aBlock);
        _os_log_impl(&dword_2232BB000, v44, v45, "PreferredNavigationAppDataProvider#fetch from foreground app bundle id: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x223DE0F80](v47, -1, -1);
        MEMORY[0x223DE0F80](v46, -1, -1);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(aBlock, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
    return 0;
  }

  return v31;
}

Swift::Int closure #1 in PreferredNavigationAppDataProvider.getUserPreferredNavigationApp()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    v7 = *(a4 + 24);
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v10 = a3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      if (a3)
      {
        v15 = a3;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_2232BB000, v11, v12, "PreferredNavigationAppDataProvider#fetch failed from CarPlay dock with error: %@", v13, 0xCu);
      outlined destroy of MediaUserStateCenter?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE0F80](v14, -1, -1);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t PreferredNavigationAppDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  outlined destroy of MediaUserStateCenter?(v0 + 80, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  return v0;
}

uint64_t PreferredNavigationAppDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  outlined destroy of MediaUserStateCenter?(v0 + 80, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance PreferredNavigationAppDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 224))();
  *a1 = result;
  return result;
}

uint64_t specialized static PreferredNavigationAppDataProvider.make(appDataProvider:preferences:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  outlined init with copy of AppDataProviding(v16, v15);
  type metadata accessor for PreferredNavigationAppDataProvider();
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v9 = swift_allocObject();
  *(v9 + 64) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0;
  *(v9 + 80) = 0u;
  outlined init with take of DomainWarmupHandling(v15, v9 + 16);
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 56) = a2;
  swift_beginAccess();
  v10 = a2;
  outlined assign with take of ForegroundAppProvider?(v13, v9 + 80);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v11 = specialized AnyDataProvider.init<A>(provider:)(v9);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo);
  }

  return result;
}

uint64_t dispatch thunk of PreferredNavigationAppDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 224);
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

id AudioCacheHandler.makeCacheable(pommesResponse:)(void *a1)
{
  v48 = a1;
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v55 = *(v66 - 8);
  v1 = *(v55 + 64);
  v3 = MEMORY[0x28223BE20](v66, v2);
  v65 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v54 = &v47 - v6;
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch thunk of PommesResponse.experiences.getter();
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_23;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (1)
    {
      v14 = MEMORY[0x277D84F90];
      v69 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v13 < 0)
      {
        break;
      }

      v16 = 0;
      v17 = v12 & 0xC000000000000001;
      v50 = v12 & 0xFFFFFFFFFFFFFF8;
      v49 = v12 + 32;
      v63 = (v55 + 8);
      v64 = v55 + 16;
      v62 = (v55 + 32);
      v52 = v13;
      v53 = v12;
      v51 = v12 & 0xC000000000000001;
      while (1)
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17)
        {
          v24 = MEMORY[0x223DDFF80]();
        }

        else
        {
          if (v16 >= *(v50 + 16))
          {
            goto LABEL_22;
          }

          v24 = *(v49 + 8 * v16);
        }

        v25 = v24;
        dispatch thunk of Experience.associatedEntities.setter();
        v26 = type metadata accessor for AudioExperience();
        v27 = swift_dynamicCastClass();
        if (v27)
        {
          v28 = v27;
          v59 = v26;
          v61 = v22;
          v68 = v27;
          v60 = v25;
          v29 = dispatch thunk of AudioExperience.serverAudioResults.getter();
          v30 = *(v29 + 16);
          if (v30)
          {
            v58 = v28;
            v67 = v14;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
            v31 = v66;
            v32 = v67;
            v33 = (*(v55 + 80) + 32) & ~*(v55 + 80);
            v57 = v29;
            v34 = v29 + v33;
            v35 = *(v55 + 72);
            v36 = *(v55 + 16);
            v37 = v54;
            do
            {
              v38 = v65;
              v36(v65, v34, v31);
              v36(v37, v38, v31);
              Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.setter();
              v31 = v66;
              (*v63)(v38, v66);
              v67 = v32;
              v40 = *(v32 + 16);
              v39 = *(v32 + 24);
              if (v40 >= v39 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1);
                v31 = v66;
                v32 = v67;
              }

              *(v32 + 16) = v40 + 1;
              (*v62)(v32 + v33 + v40 * v35, v37, v31);
              v34 += v35;
              --v30;
            }

            while (v30);

            v13 = v52;
            v12 = v53;
            v14 = MEMORY[0x277D84F90];
            v17 = v51;
          }

          else
          {

            v32 = v14;
          }

          dispatch thunk of Experience.pluginIdentifier.getter();
          dispatch thunk of Experience.queryConfidence.getter();
          v18 = Experience.userDialogAct.getter();
          MEMORY[0x28223BE20](v18, v19);
          *(&v47 - 2) = v32;
          *(&v47 - 1) = &v68;
          v20 = objc_allocWithZone(v59);
          AudioExperience.init(pluginId:queryConfidence:userDialogAct:builder:)();

          v21 = v68;

          v22 = v61;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = *(v69 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 = v22;
        if (v22 == v13)
        {

          v41 = v69;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v13 = __CocoaSet.count.getter();
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    v41 = MEMORY[0x277D84F90];
LABEL_25:
    v42 = type metadata accessor for PommesResponse();
    MEMORY[0x28223BE20](v42, v43);
    v44 = v48;
    *(&v47 - 2) = v41;
    *(&v47 - 1) = v44;
    v45 = PommesResponse.__allocating_init(_:)();

    if (v45)
    {
      return v45;
    }

    else
    {
      v46 = v48;

      return v46;
    }
  }

  return result;
}

uint64_t closure #2 in closure #1 in AudioCacheHandler.makeCacheable(pommesResponse:)(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v34 - v17;

  AudioExperience.Builder.serverAudioResults.setter();
  v19 = *a3;
  AudioExperience.audioUnderstanding.getter();

  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  AudioExperience.Builder.audioUnderstanding.setter();
  v21 = *a3;
  AudioExperience.playbackSignals.getter();

  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  AudioExperience.Builder.playbackSignals.setter();
  v23 = *a3;
  dispatch thunk of AudioExperience.internalSignals.getter();

  AudioExperience.Builder.internalSignals.setter();
  v24 = *a3;
  AudioExperience.pegasusAudioType.getter();

  AudioExperience.Builder.pegasusAudioType.setter();
  v25 = *a3;
  AudioExperience.launchID.getter();

  AudioExperience.Builder.launchID.setter();
  v26 = *a3;
  AudioExperience.systemExtensionBundleID.getter();

  AudioExperience.Builder.systemExtensionBundleID.setter();
  v27 = *a3;
  AudioExperience.boltProxiedBundleID.getter();

  AudioExperience.Builder.boltProxiedBundleID.setter();
  v28 = *a3;
  AudioExperience.shouldPerformAppSelection.getter();

  AudioExperience.Builder.shouldPerformAppSelection.setter();
  v29 = *a3;
  AudioExperience.audioClientComponent.getter();

  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
  AudioExperience.Builder.audioClientComponent.setter();
  v31 = *a3;
  dispatch thunk of AudioExperience.isGlideEligible.getter();

  AudioExperience.Builder.isGlideEligible.setter();
  v32 = *a3;
  dispatch thunk of AudioExperience.networkAvailableAtRequest.getter();

  return AudioExperience.Builder.networkAvailableAtRequest.setter();
}

uint64_t closure #2 in AudioCacheHandler.makeCacheable(pommesResponse:)()
{
  v0 = type metadata accessor for PommesSearchReason();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);

  PommesResponse.Builder.experiences.setter();
  dispatch thunk of PommesResponse.clientResults.getter();
  PommesResponse.Builder.clientResults.setter();
  PommesResponse.conversationContext.getter();
  PommesResponse.Builder.conversationContext.setter();
  PommesResponse.metadataDomainName.getter();
  PommesResponse.Builder.metadataDomainName.setter();
  dispatch thunk of PommesResponse.renderedTexts.getter();
  PommesResponse.Builder.renderedTexts.setter();
  dispatch thunk of PommesResponse.redactedRenderedTexts.getter();
  PommesResponse.Builder.redactedRenderedTexts.setter();
  dispatch thunk of PommesResponse.pegasusDomainFlowStepLog.getter();
  PommesResponse.Builder.pegasusDomainFlowStepLog.setter();
  dispatch thunk of PommesResponse.pegasusDomainUserSensitiveTier1Log.getter();
  PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter();
  dispatch thunk of PommesResponse.listenAfterSpeaking.getter();
  PommesResponse.Builder.listenAfterSpeaking.setter();
  PommesResponse.requestId.getter();
  PommesResponse.Builder.requestId.setter();
  PommesResponse.pommesCandidateId.getter();
  PommesResponse.Builder.pommesCandidateId.setter();
  PommesResponse.isHandledByPreflight.getter();
  PommesResponse.Builder.isHandledByPreflight.setter();
  PommesResponse.preflightClientHandlerIdentifier.getter();
  PommesResponse.Builder.preflightClientHandlerIdentifier.setter();
  dispatch thunk of PommesResponse.taskStepLogs.getter();
  PommesResponse.Builder.taskStepLogs.setter();
  dispatch thunk of PommesResponse.userSensitiveTier1Logs.getter();
  PommesResponse.Builder.userSensitiveTier1Logs.setter();
  dispatch thunk of PommesResponse.searchReason.getter();
  PommesResponse.Builder.searchReason.setter();
  PommesResponse.searchRequestUtterance.getter();
  PommesResponse.Builder.searchRequestUtterance.setter();
  PommesResponse.sharedUserId.getter();
  return PommesResponse.Builder.sharedUserId.setter();
}

uint64_t partial apply for closure #2 in AudioCacheHandler.makeCacheable(pommesResponse:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #2 in AudioCacheHandler.makeCacheable(pommesResponse:)();
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v36 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v33 = &v29 - v18;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest() - 8);
  v30 = v12;
  v34 = (v12 + 32);
  v35 = (v12 + 48);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v22 = MEMORY[0x277D84F90];
  v23 = *(v20 + 72);
  v31 = v11;
  v32 = a1;
  v29 = v23;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v35)(v10, 1, v11) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
    }

    else
    {
      v24 = v33;
      v25 = *v34;
      (*v34)(v33);
      (v25)(v36, v24, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR, MEMORY[0x277D39460]);
      }

      v27 = v22[2];
      v26 = v22[3];
      if (v27 >= v26 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR, MEMORY[0x277D39460]);
      }

      v22[2] = v27 + 1;
      v11 = v31;
      (v25)(v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, v36, v31);
      a1 = v32;
      v23 = v29;
    }

    v21 += v23;
    if (!--v19)
    {
      return v22;
    }
  }

  return v22;
}

{
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v36 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v33 = &v29 - v18;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState() - 8);
  v30 = v12;
  v34 = (v12 + 32);
  v35 = (v12 + 48);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v22 = MEMORY[0x277D84F90];
  v23 = *(v20 + 72);
  v31 = v11;
  v32 = a1;
  v29 = v23;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v35)(v10, 1, v11) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
    }

    else
    {
      v24 = v33;
      v25 = *v34;
      (*v34)(v33);
      (v25)(v36, v24, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR, MEMORY[0x277D39768]);
      }

      v27 = v22[2];
      v26 = v22[3];
      if (v27 >= v26 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR, MEMORY[0x277D39768]);
      }

      v22[2] = v27 + 1;
      v11 = v31;
      (v25)(v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, v36, v31);
      a1 = v32;
      v23 = v29;
    }

    v21 += v23;
    if (!--v19)
    {
      return v22;
    }
  }

  return v22;
}

void *specialized Sequence.compactMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  return specialized Sequence.compactMap<A>(_:)(a1, a2, a3, MEMORY[0x277D396B0]);
}

{
  return specialized Sequence.compactMap<A>(_:)(a1, a2, a3, MEMORY[0x277D38D48]);
}

void *specialized Sequence.compactMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = 0;
    do
    {
      v15 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v17, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v15;
        }

        if (v17)
        {
          break;
        }

        if (v9 == v6)
        {
          return v15;
        }
      }

      MEMORY[0x223DDF820](result);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v18;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t static ICMediaUserStateCenter.sharedStateCenter.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() shared];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserStateCenter, 0x277D7FB20);
  a1[3] = result;
  a1[4] = &protocol witness table for ICMediaUserStateCenter;
  *a1 = v2;
  return result;
}

uint64_t createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSONEncodingOptions();
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = *(v106 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v98 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v100 = &v87 - v21;
  v97 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v101 = *(v97 - 8);
  v22 = *(v101 + 64);
  MEMORY[0x28223BE20](v97, v23);
  v96 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v25 = *(v99 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v99, v27);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v32 = *(a1 + 16)) != 0)
  {
    v94 = v11;
    MEMORY[0x28223BE20](v28, v29);
    *(&v87 - 32) = a4 & 1;
    *(&v87 - 3) = a2;
    *(&v87 - 16) = a3 & 1;
    v33 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:), (&v87 - 6), a1);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.pommes);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    v92 = v36;
    if (os_log_type_enabled(v35, v36))
    {
      v88 = v35;
      v93 = v33;
      v89 = v10;
      v90 = a5;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v91 = v37;
      *v37 = 136315394;
      v40 = *(v25 + 16);
      v39 = v25 + 16;
      v103 = v40;
      v87 = v38;
      v108[0] = v38;
      v41 = a1 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
      v102 = *(v39 + 56);
      v106 += 8;
      v104 = v39;
      v42 = (v39 - 8);
      v43 = MEMORY[0x277D84F90];
      v45 = v99;
      v44 = v100;
      (v40)(v31, v41, v99);
      while (1)
      {
        JSONEncodingOptions.init()();
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState, MEMORY[0x277D39450]);
        v46 = Message.jsonString(options:)();
        v48 = v47;
        v105 = *v106;
        v105(v44, v107);
        (*v42)(v31, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
        }

        v50 = *(v43 + 2);
        v49 = *(v43 + 3);
        if (v50 >= v49 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v43);
        }

        *(v43 + 2) = v50 + 1;
        v51 = &v43[16 * v50];
        *(v51 + 4) = v46;
        *(v51 + 5) = v48;
        v45 = v99;
        v44 = v100;
        v41 += v102;
        if (!--v32)
        {
          break;
        }

        (v103)(v31, v41, v99);
      }

      v60 = MEMORY[0x223DDF850](v43, MEMORY[0x277D837D0]);
      v62 = v61;

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v108);

      v64 = v91;
      *(v91 + 1) = v63;
      *(v64 + 6) = 2080;
      v65 = v93[2];
      if (v65)
      {
        v104 = *(v101 + 16);
        v66 = v93 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v103 = *(v101 + 72);
        v101 += 16;
        v67 = (v101 - 8);
        v102 = MEMORY[0x277D84F90];
        v69 = v97;
        v68 = v98;
        v70 = v96;
        v71 = v105;
        v104(v96, v66, v97);
        while (1)
        {
          JSONEncodingOptions.init()();
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
          v72 = Message.jsonString(options:)();
          v74 = v73;
          v71(v68, v107);
          (*v67)(v70, v69);
          v75 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
          }

          v77 = *(v75 + 2);
          v76 = *(v75 + 3);
          if (v77 >= v76 >> 1)
          {
            v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v75);
          }

          *(v75 + 2) = v77 + 1;
          v102 = v75;
          v78 = &v75[16 * v77];
          *(v78 + 4) = v72;
          *(v78 + 5) = v74;
          v69 = v97;
          v68 = v98;
          v70 = v96;
          v71 = v105;
          v66 = &v103[v66];
          if (!--v65)
          {
            break;
          }

          v104(v96, v66, v97);
        }
      }

      else
      {
        v102 = MEMORY[0x277D84F90];
      }

      v79 = MEMORY[0x223DDF850](v102, MEMORY[0x277D837D0]);
      v81 = v80;

      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v108);

      v83 = v91;
      *(v91 + 14) = v82;
      v84 = v88;
      _os_log_impl(&dword_2232BB000, v88, v92, "createAmpUserStateSlice successfully created the AMP user state ampUserStates:%s sliceValues:%s", v83, 0x16u);
      v85 = v87;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v85, -1, -1);
      MEMORY[0x223DE0F80](v83, -1, -1);

      v10 = v89;
      a5 = v90;
      v59 = v94;
    }

    else
    {

      v59 = v94;
    }

    Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
    (*(v59 + 104))(v95, *MEMORY[0x277D396E8], v10);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
    v86 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    return (*(*(v86 - 8) + 56))(a5, 0, 1, v86);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.pommes);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2232BB000, v53, v54, "createAmpUserStateSlice failed to create the AMP user state", v55, 2u);
      MEMORY[0x223DE0F80](v55, -1, -1);
    }

    v56 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    v57 = *(*(v56 - 8) + 56);

    return v57(a5, 1, 1, v56);
  }
}

uint64_t createAmpUsersStateSlice(mediaUserStates:resolution:isPostResolution:muxUserInfo:isMultiUserRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v30 = a3;
  v31 = a5;
  v32 = a2;
  v29 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v18 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + 32;
    v21 = (v17 + 48);
    v34 = v17;
    v35 = (v17 + 32);
    v22 = MEMORY[0x277D84F90];
    v33 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      outlined init with copy of AppDataProviding(v20, v36);
      createAMPUserState(mediaUserState:muxUserInfo:)(v36, a4, v12);
      __swift_destroy_boxed_opaque_existential_1(v36);
      if ((*v21)(v12, 1, v13) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
      }

      else
      {
        v23 = *v35;
        (*v35)(v18, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR, MEMORY[0x277D39450]);
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR, MEMORY[0x277D39450]);
        }

        v22[2] = v25 + 1;
        v26 = v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25;
        v18 = v33;
        v23(v26, v33, v13);
      }

      v20 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v22, v32, v30 & 1, v31 & 1, v29);
}

id ICMusicUserState.userToken.getter()
{
  result = [v0 libraryAuthTokenStatus];
  if (result)
  {
    v2 = result;
    v3 = [result token];

    if (v3)
    {
      v4 = [v3 token];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id ICMusicUserState.lastError.getter()
{
  v1 = [v0 libraryAuthTokenStatus];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 lastError];

  return v3;
}

uint64_t ICMusicUserState.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v17 - v7;
  v9 = [v2 libraryAuthTokenStatus];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 lastUpdatedDate];

    if (v11)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    }

    else
    {
      v16 = type metadata accessor for Date();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    }

    return outlined init with take of PommesSearchReason?(v8, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}